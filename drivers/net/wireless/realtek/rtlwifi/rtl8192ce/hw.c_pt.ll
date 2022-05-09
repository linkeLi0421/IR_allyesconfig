; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c"
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
%struct.rtl_hal_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtl_mod_params = type { i64, i8, i32, i8, i8, i8, i8, i8, i32, i8, i8, i32 }
%struct.rtl_intf_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtl_pci = type { ptr, i8, i8, i8, i8, i8, i8, [9 x %struct.rtl8192_tx_ring], [9 x i32], i32, [2 x %struct.rtl8192_rx_ring], i32, i16, i32, i8, [4 x i32], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i16, i16, i8, i8, i8 }
%struct.rtl8192_tx_ring = type { ptr, i32, i32, i32, %struct.sk_buff_head, ptr, i32, i16, i16 }
%struct.rtl8192_rx_ring = type { ptr, i32, i32, [512 x ptr], ptr, i16 }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.rtl_sta_info = type <{ %struct.list_head, [9 x %struct.rtl_tid_data], %struct.rssi_sta, i8, i16, i8, i8, [6 x i8] }>
%struct.rssi_sta = type { i32, i32 }

@rtl92ce_get_hw_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013rtl8192ce: switch case %#x not processed\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtl92ce_get_hw_reg\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c\00", [44 x i8] zeroinitializer }, align 32
@rtl92ce_get_hw_reg._entry_ptr = internal global ptr @rtl92ce_get_hw_reg._entry, section ".printk_index", align 4
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HW_VAR_SLOT_TIME %x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Set HW_VAR_AMPDU_MIN_SPACE: %#x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Set HW_VAR_SHORTGI_DENSITY: %#x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Set HW_VAR_AMPDU_FACTOR: %#x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"HW_VAR_ACM_CTRL acm set failed: eACI is %d\0A\00", [52 x i8] zeroinitializer }, align 32
@rtl92ce_set_hw_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.8, ptr @.str.2, i32 347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtl92ce_set_hw_reg\00", [45 x i8] zeroinitializer }, align 32
@rtl92ce_set_hw_reg._entry_ptr = internal global ptr @rtl92ce_set_hw_reg._entry, section ".printk_index", align 4
@.str.9 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"SetHwReg8190pci(): [HW_VAR_ACM_CTRL] Write 0x%X\0A\00", [47 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rtl92ce_set_hw_reg._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str.2, i32 533, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013rtl8192ce: switch case %d not processed\0A\00", [53 x i8] zeroinitializer }, align 32
@rtl92ce_set_hw_reg._entry_ptr.12 = internal global ptr @rtl92ce_set_hw_reg._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"PairwiseEncAlgorithm = %d GroupEncAlgorithm = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"not open hw encryption\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"The SECR-value %x\0A\00", [45 x i8] zeroinitializer }, align 32
@rtl92ce_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 942, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013rtl8192ce: Init MAC failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rtl92ce_hw_init\00", [16 x i8] zeroinitializer }, align 32
@rtl92ce_hw_init._entry_ptr = internal global ptr @rtl92ce_hw_init._entry, section ".printk_index", align 4
@.str.18 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to download FW. Init HW without FW now..\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PA BIAS path A\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PA BIAS path B\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"under 1.5V\0A\00", [20 x i8] zeroinitializer }, align 32
@rtl92ce_set_qos.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rtl8192ce: invalid aci: %d !\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"beacon_interval:%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"add_msr:%x, rm_msr:%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"VersionID = 0x%4x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Boot from EEPROM\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Boot from EFUSE\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Autoload OK\0A\00", [19 x i8] zeroinitializer }, align 32
@rtl92ce_read_eeprom_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 1750, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013rtl8192ce: Autoload ERR!!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rtl92ce_read_eeprom_info\00", [39 x i8] zeroinitializer }, align 32
@rtl92ce_read_eeprom_info._entry_ptr = internal global ptr @rtl92ce_read_eeprom_info._entry, section ".printk_index", align 4
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"GPIOChangeRF  - HW Radio ON, RF ON\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"GPIOChangeRF  - HW Radio OFF, RF OFF\0A\00", [58 x i8] zeroinitializer }, align 32
@rtl92ce_set_key.cam_const_addr = internal global { [4 x [6 x i8]], [40 x i8] } { [4 x [6 x i8]] [[6 x i8] zeroinitializer, [6 x i8] c"\00\00\00\00\00\01", [6 x i8] c"\00\00\00\00\00\02", [6 x i8] c"\00\00\00\00\00\03"], [40 x i8] zeroinitializer }, align 32
@rtl92ce_set_key.cam_const_broad = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\FF\FF\FF\FF\FF\FF", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clear_all\0A\00", [21 x i8] zeroinitializer }, align 32
@rtl92ce_set_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.34, ptr @.str.2, i32 2122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rtl92ce_set_key\00", [16 x i8] zeroinitializer }, align 32
@rtl92ce_set_key._entry_ptr = internal global ptr @rtl92ce_set_key._entry, section ".printk_index", align 4
@rtl92ce_set_key._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 2140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013rtl8192ce: Can not find free hw security cam entry\0A\00", [42 x i8] zeroinitializer }, align 32
@rtl92ce_set_key._entry_ptr.37 = internal global ptr @rtl92ce_set_key._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"delete one entry, entry_id is %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"The insert KEY length is %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"The insert KEY is %x %x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"add one entry\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Pairwise Key content\00", [43 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"set Pairwise key\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"set group key\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reg0xec:%x:%x\0A\00", [17 x i8] zeroinitializer }, align 32
@_rtl92ce_llt_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 555, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013rtl8192ce: Failed to polling write LLT done at address %d!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"_rtl92ce_llt_write\00", [45 x i8] zeroinitializer }, align 32
@_rtl92ce_llt_write._entry_ptr = internal global ptr @_rtl92ce_llt_write._entry, section ".printk_index", align 4
@.str.48 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Set Network type to NO LINK!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Set Network type to Ad Hoc!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Set Network type to STA!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Set Network type to AP!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Set Network type to Mesh Point!\0A\00", [63 x i8] zeroinitializer }, align 32
@_rtl92ce_set_media_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 1170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013rtl8192ce: Network type %d not supported!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"_rtl92ce_set_media_status\00", [38 x i8] zeroinitializer }, align 32
@_rtl92ce_set_media_status._entry_ptr = internal global ptr @_rtl92ce_set_media_status._entry, section ".printk_index", align 4
@.str.55 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Set HW_VAR_MEDIA_STATUS: No such media status(%x).\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"B_CHIP_92C\00", [21 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"B_CHIP_88C\00", [21 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"A_CHIP_92C\00", [21 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"A_CHIP_88C\00", [21 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"A_CUT_92C_1T2R\00", [17 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"A_CUT_92C\00", [22 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"A_CUT_88C\00", [22 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"B_CUT_92C_1T2R\00", [17 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"B_CUT_92C\00", [22 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"B_CUT_88C\00", [22 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Unknown. Bug?\00", [18 x i8] zeroinitializer }, align 32
@_rtl92ce_read_chip_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 1107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016rtl8192ce: Chip Version ID: %s\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"_rtl92ce_read_chip_version\00", [37 x i8] zeroinitializer }, align 32
@_rtl92ce_read_chip_version._entry_ptr = internal global ptr @_rtl92ce_read_chip_version._entry, section ".printk_index", align 4
@_rtl92ce_read_chip_version._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.2, i32 1121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013rtl8192ce: ERROR RF_Type is set!!\0A\00", [59 x i8] zeroinitializer }, align 32
@_rtl92ce_read_chip_version._entry_ptr.71 = internal global ptr @_rtl92ce_read_chip_version._entry.69, section ".printk_index", align 4
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Chip RF Type: %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RF_2T2R\00", [24 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RF_1T1R\00", [24 x i8] zeroinitializer }, align 32
@__const._rtl92ce_read_adapter_info.params = private unnamed_addr constant [10 x i32] [i32 33065, i32 10, i32 12, i32 14, i32 16, i32 22, i32 117, i32 126, i32 127, i32 11], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.75 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RF(%d) EEPROM CCK Area(%d) = 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"RF(%d) EEPROM HT40 1S Area(%d) = 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"RF(%d) EEPROM HT40 2S Diff Area(%d) = 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"RF(%d)-Ch(%d) [CCK / HT40_1S / HT40_2S] = [0x%x / 0x%x / 0x%x]\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"RF-%d pwrgroup_ht20[%d] = 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"RF-%d pwrgroup_ht40[%d] = 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RF-A Ht20 to HT40 Diff[%d] = 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"RF-A Legacy to Ht40 Diff[%d] = 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RF-B Ht20 to HT40 Diff[%d] = 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"RF-B Legacy to HT40 Diff[%d] = 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"eeprom_regulatory = 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"TSSI_A = 0x%x, TSSI_B = 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"thermalmeter = 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"RT Customized ID: 0x%02X\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ratr_bitmap :%x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Rate_index:%x, ratr_val:%x, %5phC\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%x\0A\00", [28 x i8] zeroinitializer }, align 32
@switch.table.rtl92ce_read_eeprom_info = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\06\00\05\07\08", [27 x i8] zeroinitializer }, align 32
@switch.table.rtl92ce_set_key = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 2, i32 1, i32 4, i32 5], [44 x i8] zeroinitializer }, align 32
@switch.table.rtl8192ce_read_bt_coexist_info_from_hwpg = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\06\00\05\07\08", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 40, i64 44, i64 65, i64 84, i64 86, i64 92]
@__sancov_gen_cov_switch_values.92 = internal global [29 x i64] [i64 27, i64 8, i64 0, i64 2, i64 3, i64 14, i64 18, i64 19, i64 27, i64 28, i64 29, i64 30, i64 32, i64 33, i64 44, i64 53, i64 56, i64 57, i64 60, i64 61, i64 62, i64 64, i64 65, i64 68, i64 72, i64 82, i64 84, i64 87, i64 94]
@__sancov_gen_cov_switch_values.93 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.94 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 268435456]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 7]
@__sancov_gen_cov_switch_values.97 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.98 = internal global [5 x i64] [i64 3, i64 2, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.99 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.100 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 1, i64 16, i64 17, i64 48, i64 49, i64 51, i64 112, i64 113, i64 115]
@__sancov_gen_cov_switch_values.101 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.102 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 4, i64 13]
@__sancov_gen_cov_switch_values.103 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.104 = internal global [7 x i64] [i64 5, i64 16, i64 1, i64 2, i64 4, i64 16, i64 32]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.107 = internal global [6 x i64] [i64 4, i64 16, i64 2, i64 4, i64 16, i64 32]
@__sancov_gen_cov_switch_values.108 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 7]
@__sancov_gen_cov_switch_values.109 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 7]
@__sancov_gen_cov_switch_values.110 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 7]
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 121, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 186, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 226, i32 5 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 241, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 290, i32 5 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 329, i32 6 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 346, i32 6 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 352, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 533, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 883, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 889, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 905, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 942, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 949, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1016, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1021, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1030, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1269, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1396, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1409, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1735, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1739, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1742, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1746, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1750, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 2034, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 2041, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant [15 x i8] c"cam_const_addr\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 2078, i32 12 }
@___asan_gen_.222 = private unnamed_addr constant [16 x i8] c"cam_const_broad\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 2084, i32 12 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 2093, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 2121, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 2140, i32 7 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 2153, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 2161, i32 4 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 2164, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 2169, i32 4 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 2172, i32 5 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 2178, i32 5 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 2187, i32 5 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 693, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 554, i32 4 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1144, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1149, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1155, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1161, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1166, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1170, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1193, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1073, i32 15 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1076, i32 15 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1079, i32 15 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1082, i32 15 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1085, i32 15 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1088, i32 15 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1091, i32 15 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1094, i32 15 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1097, i32 15 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1100, i32 15 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1103, i32 15 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1107, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1121, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1125, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1463, i32 4 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1470, i32 4 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1477, i32 4 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1511, i32 4 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1552, i32 4 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1556, i32 4 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1597, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1601, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1605, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1609, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1617, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1627, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1641, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1717, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1965, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1970, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.406 = private constant [55 x i8] c"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1842, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant [38 x i8] c"switch.table.rtl92ce_read_eeprom_info\00", align 1
@___asan_gen_.409 = private unnamed_addr constant [29 x i8] c"switch.table.rtl92ce_set_key\00", align 1
@___asan_gen_.410 = private unnamed_addr constant [54 x i8] c"switch.table.rtl8192ce_read_bt_coexist_info_from_hwpg\00", align 1
@llvm.compiler.used = appending global [113 x ptr] [ptr @_rtl92ce_llt_write._entry, ptr @_rtl92ce_llt_write._entry_ptr, ptr @_rtl92ce_read_chip_version._entry, ptr @_rtl92ce_read_chip_version._entry.69, ptr @_rtl92ce_read_chip_version._entry_ptr, ptr @_rtl92ce_read_chip_version._entry_ptr.71, ptr @_rtl92ce_set_media_status._entry, ptr @_rtl92ce_set_media_status._entry_ptr, ptr @rtl92ce_get_hw_reg._entry, ptr @rtl92ce_get_hw_reg._entry_ptr, ptr @rtl92ce_hw_init._entry, ptr @rtl92ce_hw_init._entry_ptr, ptr @rtl92ce_read_eeprom_info._entry, ptr @rtl92ce_read_eeprom_info._entry_ptr, ptr @rtl92ce_set_hw_reg._entry, ptr @rtl92ce_set_hw_reg._entry.10, ptr @rtl92ce_set_hw_reg._entry_ptr, ptr @rtl92ce_set_hw_reg._entry_ptr.12, ptr @rtl92ce_set_key._entry, ptr @rtl92ce_set_key._entry.35, ptr @rtl92ce_set_key._entry_ptr, ptr @rtl92ce_set_key._entry_ptr.37, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @rtl92ce_set_key.cam_const_addr, ptr @rtl92ce_set_key.cam_const_broad, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @switch.table.rtl92ce_read_eeprom_info, ptr @switch.table.rtl92ce_set_key, ptr @switch.table.rtl8192ce_read_bt_coexist_info_from_hwpg], section "llvm.metadata"
@0 = internal global [102 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92ce_get_hw_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92ce_set_hw_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92ce_set_hw_reg._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92ce_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92ce_read_eeprom_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92ce_set_key.cam_const_addr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92ce_set_key.cam_const_broad to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92ce_set_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92ce_set_key._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92ce_llt_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92ce_set_media_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92ce_read_chip_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92ce_read_chip_version._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl92ce_read_eeprom_info to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl92ce_set_key to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl8192ce_read_bt_coexist_info_from_hwpg to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ce_get_hw_reg(ptr noundef %hw, i8 noundef zeroext %variable, ptr nocapture noundef writeonly %val) local_unnamed_addr #0 align 64 {
entry:
  %rfstate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
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
    i8 92, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %receive_config = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 3
  %3 = ptrtoint ptr %receive_config to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %receive_config, align 4
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %val, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %rfpwr_state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 24
  %6 = ptrtoint ptr %rfpwr_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rfpwr_state, align 4
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %val, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rfstate) #8
  %9 = ptrtoint ptr %rfstate to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %rfstate, align 4, !annotation !199
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
  call void %15(ptr noundef %hw, i8 noundef zeroext 40, ptr noundef nonnull %rfstate) #8
  %16 = ptrtoint ptr %rfstate to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rfstate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp = icmp eq i32 %17, 2
  br i1 %cmp, label %sw.bb5.if.end9_crit_edge, label %if.else

sw.bb5.if.end9_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.else:                                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %18 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read32_sync.i, align 4
  %call.i = call i32 %19(ptr noundef %1, i32 noundef 1544) #8
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
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rfstate) #8
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %fw_current_inpsmode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 13
  %21 = ptrtoint ptr %fw_current_inpsmode to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %fw_current_inpsmode, align 1, !range !200
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %val, align 1
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i32 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %24 = ptrtoint ptr %read32_sync.i32 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read32_sync.i32, align 4
  %call.i33 = tail call i32 %25(ptr noundef %1, i32 noundef 1380) #8
  %26 = ptrtoint ptr %read32_sync.i32 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read32_sync.i32, align 4
  %call.i35 = tail call i32 %27(ptr noundef %1, i32 noundef 1376) #8
  %tsf.sroa.5.0.insert.ext = zext i32 %call.i33 to i64
  %tsf.sroa.0.0.insert.ext = zext i32 %call.i35 to i64
  %tsf.sroa.0.0.insert.shift = shl nuw i64 %tsf.sroa.0.0.insert.ext, 32
  %tsf.sroa.0.0.insert.insert = or i64 %tsf.sroa.0.0.insert.shift, %tsf.sroa.5.0.insert.ext
  %28 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %tsf.sroa.0.0.insert.insert, ptr %val, align 8
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %variable to i32
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb12, %sw.bb10, %if.end9, %sw.bb4, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ce_set_hw_reg(ptr noundef %hw, i8 noundef zeroext %variable, ptr noundef %val) local_unnamed_addr #0 align 64 {
entry:
  %e_aci = alloca i8, align 1
  %regtoset_normal = alloca [4 x i8], align 4
  %regtoset_bt = alloca [4 x i8], align 4
  %e_aci180 = alloca i8, align 1
  %rpwm_val330 = alloca i8, align 1
  %fw_pwrmode = alloca i8, align 1
  %fw_current_inps = alloca i8, align 1
  %array = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = zext i8 %variable to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.92)
  switch i8 %variable, label %do.end360 [
    i8 0, label %for.cond.preheader
    i8 2, label %sw.bb11
    i8 3, label %for.cond31.preheader
    i8 14, label %sw.bb43
    i8 18, label %sw.bb48
    i8 19, label %sw.bb60
    i8 28, label %sw.bb71
    i8 29, label %sw.bb92
    i8 30, label %sw.bb102
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
    i8 61, label %sw.bb261
    i8 65, label %sw.bb273
    i8 62, label %sw.bb275
    i8 64, label %sw.bb303
    i8 82, label %sw.bb304
    i8 84, label %sw.bb313
    i8 68, label %sw.bb327
    i8 94, label %sw.bb353
  ]

for.cond31.preheader:                             ; preds = %entry
  %write8_async.i584 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %cfg.i585 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %read8_sync.i588 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %val, align 1
  %5 = ptrtoint ptr %write8_async.i584 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write8_async.i584, align 4
  tail call void %6(ptr noundef %1, i32 noundef 1560, i8 noundef zeroext %4) #8
  %7 = ptrtoint ptr %cfg.i585 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cfg.i585, align 8
  %write_readback.i586 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %write_readback.i586 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %write_readback.i586, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i587 = icmp eq i8 %10, 0
  br i1 %tobool.not.i587, label %for.cond31.preheader.rtl_write_byte.exit591_crit_edge, label %if.then.i590

for.cond31.preheader.rtl_write_byte.exit591_crit_edge: ; preds = %for.cond31.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit591

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
  tail call void %14(ptr noundef %1, i32 noundef 1552, i8 noundef zeroext %12) #8
  %15 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %write_readback.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %for.cond.preheader.rtl_write_byte.exit_crit_edge, label %if.then.i

for.cond.preheader.rtl_write_byte.exit_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %20(ptr noundef %1, i32 noundef 1552) #8
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %for.cond.preheader.rtl_write_byte.exit_crit_edge
  %arrayidx.1 = getelementptr i8, ptr %val, i32 1
  %21 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.1, align 1
  %23 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write8_async.i, align 4
  tail call void %24(ptr noundef %1, i32 noundef 1553, i8 noundef zeroext %22) #8
  %25 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cfg.i, align 8
  %write_readback.i.1 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %write_readback.i.1 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %write_readback.i.1, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i.1 = icmp eq i8 %28, 0
  br i1 %tobool.not.i.1, label %rtl_write_byte.exit.rtl_write_byte.exit.1_crit_edge, label %if.then.i.1

rtl_write_byte.exit.rtl_write_byte.exit.1_crit_edge: ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit.1

if.then.i.1:                                      ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read8_sync.i, align 4
  %call.i.1 = tail call zeroext i8 %30(ptr noundef %1, i32 noundef 1553) #8
  br label %rtl_write_byte.exit.1

rtl_write_byte.exit.1:                            ; preds = %if.then.i.1, %rtl_write_byte.exit.rtl_write_byte.exit.1_crit_edge
  %arrayidx.2 = getelementptr i8, ptr %val, i32 2
  %31 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.2, align 1
  %33 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write8_async.i, align 4
  tail call void %34(ptr noundef %1, i32 noundef 1554, i8 noundef zeroext %32) #8
  %35 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cfg.i, align 8
  %write_readback.i.2 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %write_readback.i.2 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %write_readback.i.2, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i.2 = icmp eq i8 %38, 0
  br i1 %tobool.not.i.2, label %rtl_write_byte.exit.1.rtl_write_byte.exit.2_crit_edge, label %if.then.i.2

rtl_write_byte.exit.1.rtl_write_byte.exit.2_crit_edge: ; preds = %rtl_write_byte.exit.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit.2

if.then.i.2:                                      ; preds = %rtl_write_byte.exit.1
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read8_sync.i, align 4
  %call.i.2 = tail call zeroext i8 %40(ptr noundef %1, i32 noundef 1554) #8
  br label %rtl_write_byte.exit.2

rtl_write_byte.exit.2:                            ; preds = %if.then.i.2, %rtl_write_byte.exit.1.rtl_write_byte.exit.2_crit_edge
  %arrayidx.3 = getelementptr i8, ptr %val, i32 3
  %41 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.3, align 1
  %43 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write8_async.i, align 4
  tail call void %44(ptr noundef %1, i32 noundef 1555, i8 noundef zeroext %42) #8
  %45 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cfg.i, align 8
  %write_readback.i.3 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %write_readback.i.3 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %write_readback.i.3, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i.3 = icmp eq i8 %48, 0
  br i1 %tobool.not.i.3, label %rtl_write_byte.exit.2.rtl_write_byte.exit.3_crit_edge, label %if.then.i.3

rtl_write_byte.exit.2.rtl_write_byte.exit.3_crit_edge: ; preds = %rtl_write_byte.exit.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit.3

if.then.i.3:                                      ; preds = %rtl_write_byte.exit.2
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %read8_sync.i, align 4
  %call.i.3 = tail call zeroext i8 %50(ptr noundef %1, i32 noundef 1555) #8
  br label %rtl_write_byte.exit.3

rtl_write_byte.exit.3:                            ; preds = %if.then.i.3, %rtl_write_byte.exit.2.rtl_write_byte.exit.3_crit_edge
  %arrayidx.4 = getelementptr i8, ptr %val, i32 4
  %51 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.4, align 1
  %53 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write8_async.i, align 4
  tail call void %54(ptr noundef %1, i32 noundef 1556, i8 noundef zeroext %52) #8
  %55 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cfg.i, align 8
  %write_readback.i.4 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %write_readback.i.4 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %write_readback.i.4, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i.4 = icmp eq i8 %58, 0
  br i1 %tobool.not.i.4, label %rtl_write_byte.exit.3.rtl_write_byte.exit.4_crit_edge, label %if.then.i.4

rtl_write_byte.exit.3.rtl_write_byte.exit.4_crit_edge: ; preds = %rtl_write_byte.exit.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit.4

if.then.i.4:                                      ; preds = %rtl_write_byte.exit.3
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %read8_sync.i, align 4
  %call.i.4 = tail call zeroext i8 %60(ptr noundef %1, i32 noundef 1556) #8
  br label %rtl_write_byte.exit.4

rtl_write_byte.exit.4:                            ; preds = %if.then.i.4, %rtl_write_byte.exit.3.rtl_write_byte.exit.4_crit_edge
  %arrayidx.5 = getelementptr i8, ptr %val, i32 5
  %61 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.5, align 1
  %63 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write8_async.i, align 4
  tail call void %64(ptr noundef %1, i32 noundef 1557, i8 noundef zeroext %62) #8
  %65 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cfg.i, align 8
  %write_readback.i.5 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %write_readback.i.5 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %write_readback.i.5, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.not.i.5 = icmp eq i8 %68, 0
  br i1 %tobool.not.i.5, label %rtl_write_byte.exit.4.sw.epilog364_crit_edge, label %if.then.i.5

rtl_write_byte.exit.4.sw.epilog364_crit_edge:     ; preds = %rtl_write_byte.exit.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog364

if.then.i.5:                                      ; preds = %rtl_write_byte.exit.4
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %read8_sync.i, align 4
  %call.i.5 = tail call zeroext i8 %70(ptr noundef %1, i32 noundef 1557) #8
  br label %sw.epilog364

sw.bb11:                                          ; preds = %entry
  %71 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %val, align 2
  %73 = and i16 %72, 350
  %74 = or i16 %73, 1
  %conv19 = trunc i16 %74 to i8
  %write8_async.i560 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %75 = ptrtoint ptr %write8_async.i560 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %write8_async.i560, align 4
  tail call void %76(ptr noundef %1, i32 noundef 1088, i8 noundef zeroext %conv19) #8
  %cfg.i561 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %77 = ptrtoint ptr %cfg.i561 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cfg.i561, align 8
  %write_readback.i562 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %write_readback.i562 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %write_readback.i562, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool.not.i563 = icmp eq i8 %80, 0
  br i1 %tobool.not.i563, label %sw.bb11.rtl_write_byte.exit567_crit_edge, label %if.then.i566

sw.bb11.rtl_write_byte.exit567_crit_edge:         ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit567

if.then.i566:                                     ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i564 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %81 = ptrtoint ptr %read8_sync.i564 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %read8_sync.i564, align 4
  %call.i565 = tail call zeroext i8 %82(ptr noundef %1, i32 noundef 1088) #8
  br label %rtl_write_byte.exit567

rtl_write_byte.exit567:                           ; preds = %if.then.i566, %sw.bb11.rtl_write_byte.exit567_crit_edge
  %83 = lshr i16 %73, 8
  %conv22 = trunc i16 %83 to i8
  %84 = ptrtoint ptr %write8_async.i560 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %write8_async.i560, align 4
  tail call void %85(ptr noundef %1, i32 noundef 1089, i8 noundef zeroext %conv22) #8
  %86 = ptrtoint ptr %cfg.i561 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %cfg.i561, align 8
  %write_readback.i570 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %write_readback.i570 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %write_readback.i570, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool.not.i571 = icmp eq i8 %89, 0
  br i1 %tobool.not.i571, label %rtl_write_byte.exit567.rtl_write_byte.exit575_crit_edge, label %if.then.i574

rtl_write_byte.exit567.rtl_write_byte.exit575_crit_edge: ; preds = %rtl_write_byte.exit567
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit575

if.then.i574:                                     ; preds = %rtl_write_byte.exit567
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i572 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %90 = ptrtoint ptr %read8_sync.i572 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %read8_sync.i572, align 4
  %call.i573 = tail call zeroext i8 %91(ptr noundef %1, i32 noundef 1089) #8
  br label %rtl_write_byte.exit575

rtl_write_byte.exit575:                           ; preds = %if.then.i574, %rtl_write_byte.exit567.rtl_write_byte.exit575_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %cmp24931.not = icmp eq i16 %73, 0
  br i1 %cmp24931.not, label %rtl_write_byte.exit575.while.end_crit_edge, label %rtl_write_byte.exit575.while.body_crit_edge

rtl_write_byte.exit575.while.body_crit_edge:      ; preds = %rtl_write_byte.exit575
  br label %while.body

rtl_write_byte.exit575.while.end_crit_edge:       ; preds = %rtl_write_byte.exit575
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %rtl_write_byte.exit575.while.body_crit_edge
  %rate_cfg.0933 = phi i16 [ %92, %while.body.while.body_crit_edge ], [ %74, %rtl_write_byte.exit575.while.body_crit_edge ]
  %rate_index.0932 = phi i8 [ %inc29, %while.body.while.body_crit_edge ], [ 0, %rtl_write_byte.exit575.while.body_crit_edge ]
  %92 = lshr i16 %rate_cfg.0933, 1
  %inc29 = add nuw nsw i8 %rate_index.0932, 1
  %cmp24 = icmp ugt i16 %rate_cfg.0933, 3
  br i1 %cmp24, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %rtl_write_byte.exit575.while.end_crit_edge
  %rate_index.0.lcssa = phi i8 [ 0, %rtl_write_byte.exit575.while.end_crit_edge ], [ %inc29, %while.body.while.end_crit_edge ]
  %93 = ptrtoint ptr %write8_async.i560 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %write8_async.i560, align 4
  tail call void %94(ptr noundef %1, i32 noundef 1152, i8 noundef zeroext %rate_index.0.lcssa) #8
  %95 = ptrtoint ptr %cfg.i561 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cfg.i561, align 8
  %write_readback.i578 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %write_readback.i578 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %write_readback.i578, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool.not.i579 = icmp eq i8 %98, 0
  br i1 %tobool.not.i579, label %while.end.sw.epilog364_crit_edge, label %if.then.i582

while.end.sw.epilog364_crit_edge:                 ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog364

if.then.i582:                                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i580 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %99 = ptrtoint ptr %read8_sync.i580 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %read8_sync.i580, align 4
  %call.i581 = tail call zeroext i8 %100(ptr noundef %1, i32 noundef 1152) #8
  br label %sw.epilog364

if.then.i590:                                     ; preds = %for.cond31.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %101 = ptrtoint ptr %read8_sync.i588 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %read8_sync.i588, align 4
  %call.i589 = tail call zeroext i8 %102(ptr noundef %1, i32 noundef 1560) #8
  br label %rtl_write_byte.exit591

rtl_write_byte.exit591:                           ; preds = %if.then.i590, %for.cond31.preheader.rtl_write_byte.exit591_crit_edge
  %arrayidx39.1 = getelementptr i8, ptr %val, i32 1
  %103 = ptrtoint ptr %arrayidx39.1 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx39.1, align 1
  %105 = ptrtoint ptr %write8_async.i584 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %write8_async.i584, align 4
  tail call void %106(ptr noundef %1, i32 noundef 1561, i8 noundef zeroext %104) #8
  %107 = ptrtoint ptr %cfg.i585 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %cfg.i585, align 8
  %write_readback.i586.1 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %write_readback.i586.1 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %write_readback.i586.1, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool.not.i587.1 = icmp eq i8 %110, 0
  br i1 %tobool.not.i587.1, label %rtl_write_byte.exit591.rtl_write_byte.exit591.1_crit_edge, label %if.then.i590.1

rtl_write_byte.exit591.rtl_write_byte.exit591.1_crit_edge: ; preds = %rtl_write_byte.exit591
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit591.1

if.then.i590.1:                                   ; preds = %rtl_write_byte.exit591
  call void @__sanitizer_cov_trace_pc() #10
  %111 = ptrtoint ptr %read8_sync.i588 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %read8_sync.i588, align 4
  %call.i589.1 = tail call zeroext i8 %112(ptr noundef %1, i32 noundef 1561) #8
  br label %rtl_write_byte.exit591.1

rtl_write_byte.exit591.1:                         ; preds = %if.then.i590.1, %rtl_write_byte.exit591.rtl_write_byte.exit591.1_crit_edge
  %arrayidx39.2 = getelementptr i8, ptr %val, i32 2
  %113 = ptrtoint ptr %arrayidx39.2 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx39.2, align 1
  %115 = ptrtoint ptr %write8_async.i584 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %write8_async.i584, align 4
  tail call void %116(ptr noundef %1, i32 noundef 1562, i8 noundef zeroext %114) #8
  %117 = ptrtoint ptr %cfg.i585 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %cfg.i585, align 8
  %write_readback.i586.2 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %write_readback.i586.2 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %write_readback.i586.2, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool.not.i587.2 = icmp eq i8 %120, 0
  br i1 %tobool.not.i587.2, label %rtl_write_byte.exit591.1.rtl_write_byte.exit591.2_crit_edge, label %if.then.i590.2

rtl_write_byte.exit591.1.rtl_write_byte.exit591.2_crit_edge: ; preds = %rtl_write_byte.exit591.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit591.2

if.then.i590.2:                                   ; preds = %rtl_write_byte.exit591.1
  call void @__sanitizer_cov_trace_pc() #10
  %121 = ptrtoint ptr %read8_sync.i588 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %read8_sync.i588, align 4
  %call.i589.2 = tail call zeroext i8 %122(ptr noundef %1, i32 noundef 1562) #8
  br label %rtl_write_byte.exit591.2

rtl_write_byte.exit591.2:                         ; preds = %if.then.i590.2, %rtl_write_byte.exit591.1.rtl_write_byte.exit591.2_crit_edge
  %arrayidx39.3 = getelementptr i8, ptr %val, i32 3
  %123 = ptrtoint ptr %arrayidx39.3 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx39.3, align 1
  %125 = ptrtoint ptr %write8_async.i584 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %write8_async.i584, align 4
  tail call void %126(ptr noundef %1, i32 noundef 1563, i8 noundef zeroext %124) #8
  %127 = ptrtoint ptr %cfg.i585 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %cfg.i585, align 8
  %write_readback.i586.3 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %write_readback.i586.3 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %write_readback.i586.3, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool.not.i587.3 = icmp eq i8 %130, 0
  br i1 %tobool.not.i587.3, label %rtl_write_byte.exit591.2.rtl_write_byte.exit591.3_crit_edge, label %if.then.i590.3

rtl_write_byte.exit591.2.rtl_write_byte.exit591.3_crit_edge: ; preds = %rtl_write_byte.exit591.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit591.3

if.then.i590.3:                                   ; preds = %rtl_write_byte.exit591.2
  call void @__sanitizer_cov_trace_pc() #10
  %131 = ptrtoint ptr %read8_sync.i588 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %read8_sync.i588, align 4
  %call.i589.3 = tail call zeroext i8 %132(ptr noundef %1, i32 noundef 1563) #8
  br label %rtl_write_byte.exit591.3

rtl_write_byte.exit591.3:                         ; preds = %if.then.i590.3, %rtl_write_byte.exit591.2.rtl_write_byte.exit591.3_crit_edge
  %arrayidx39.4 = getelementptr i8, ptr %val, i32 4
  %133 = ptrtoint ptr %arrayidx39.4 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx39.4, align 1
  %135 = ptrtoint ptr %write8_async.i584 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %write8_async.i584, align 4
  tail call void %136(ptr noundef %1, i32 noundef 1564, i8 noundef zeroext %134) #8
  %137 = ptrtoint ptr %cfg.i585 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %cfg.i585, align 8
  %write_readback.i586.4 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %write_readback.i586.4 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %write_readback.i586.4, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool.not.i587.4 = icmp eq i8 %140, 0
  br i1 %tobool.not.i587.4, label %rtl_write_byte.exit591.3.rtl_write_byte.exit591.4_crit_edge, label %if.then.i590.4

rtl_write_byte.exit591.3.rtl_write_byte.exit591.4_crit_edge: ; preds = %rtl_write_byte.exit591.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit591.4

if.then.i590.4:                                   ; preds = %rtl_write_byte.exit591.3
  call void @__sanitizer_cov_trace_pc() #10
  %141 = ptrtoint ptr %read8_sync.i588 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %read8_sync.i588, align 4
  %call.i589.4 = tail call zeroext i8 %142(ptr noundef %1, i32 noundef 1564) #8
  br label %rtl_write_byte.exit591.4

rtl_write_byte.exit591.4:                         ; preds = %if.then.i590.4, %rtl_write_byte.exit591.3.rtl_write_byte.exit591.4_crit_edge
  %arrayidx39.5 = getelementptr i8, ptr %val, i32 5
  %143 = ptrtoint ptr %arrayidx39.5 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx39.5, align 1
  %145 = ptrtoint ptr %write8_async.i584 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %write8_async.i584, align 4
  tail call void %146(ptr noundef %1, i32 noundef 1565, i8 noundef zeroext %144) #8
  %147 = ptrtoint ptr %cfg.i585 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %cfg.i585, align 8
  %write_readback.i586.5 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %148, i32 0, i32 1
  %149 = ptrtoint ptr %write_readback.i586.5 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %write_readback.i586.5, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool.not.i587.5 = icmp eq i8 %150, 0
  br i1 %tobool.not.i587.5, label %rtl_write_byte.exit591.4.sw.epilog364_crit_edge, label %if.then.i590.5

rtl_write_byte.exit591.4.sw.epilog364_crit_edge:  ; preds = %rtl_write_byte.exit591.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog364

if.then.i590.5:                                   ; preds = %rtl_write_byte.exit591.4
  call void @__sanitizer_cov_trace_pc() #10
  %151 = ptrtoint ptr %read8_sync.i588 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %read8_sync.i588, align 4
  %call.i589.5 = tail call zeroext i8 %152(ptr noundef %1, i32 noundef 1565) #8
  br label %sw.epilog364

sw.bb43:                                          ; preds = %entry
  %153 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %val, align 1
  %write8_async.i592 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %155 = ptrtoint ptr %write8_async.i592 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %write8_async.i592, align 4
  tail call void %156(ptr noundef %1, i32 noundef 1301, i8 noundef zeroext %154) #8
  %cfg.i593 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %157 = ptrtoint ptr %cfg.i593 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %cfg.i593, align 8
  %write_readback.i594 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %158, i32 0, i32 1
  %159 = ptrtoint ptr %write_readback.i594 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %write_readback.i594, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool.not.i595 = icmp eq i8 %160, 0
  br i1 %tobool.not.i595, label %sw.bb43.rtl_write_byte.exit599_crit_edge, label %if.then.i598

sw.bb43.rtl_write_byte.exit599_crit_edge:         ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit599

if.then.i598:                                     ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i596 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %161 = ptrtoint ptr %read8_sync.i596 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %read8_sync.i596, align 4
  %call.i597 = tail call zeroext i8 %162(ptr noundef %1, i32 noundef 1301) #8
  br label %rtl_write_byte.exit599

rtl_write_byte.exit599:                           ; preds = %if.then.i598, %sw.bb43.rtl_write_byte.exit599_crit_edge
  %arrayidx45 = getelementptr i8, ptr %val, i32 1
  %163 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %arrayidx45, align 1
  %165 = ptrtoint ptr %write8_async.i592 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %write8_async.i592, align 4
  tail call void %166(ptr noundef %1, i32 noundef 1303, i8 noundef zeroext %164) #8
  %167 = ptrtoint ptr %cfg.i593 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %cfg.i593, align 8
  %write_readback.i602 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %168, i32 0, i32 1
  %169 = ptrtoint ptr %write_readback.i602 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %write_readback.i602, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %170)
  %tobool.not.i603 = icmp eq i8 %170, 0
  br i1 %tobool.not.i603, label %rtl_write_byte.exit599.rtl_write_byte.exit607_crit_edge, label %if.then.i606

rtl_write_byte.exit599.rtl_write_byte.exit607_crit_edge: ; preds = %rtl_write_byte.exit599
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit607

if.then.i606:                                     ; preds = %rtl_write_byte.exit599
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i604 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %171 = ptrtoint ptr %read8_sync.i604 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %read8_sync.i604, align 4
  %call.i605 = tail call zeroext i8 %172(ptr noundef %1, i32 noundef 1303) #8
  br label %rtl_write_byte.exit607

rtl_write_byte.exit607:                           ; preds = %if.then.i606, %rtl_write_byte.exit599.rtl_write_byte.exit607_crit_edge
  %173 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %val, align 1
  %175 = ptrtoint ptr %write8_async.i592 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %write8_async.i592, align 4
  tail call void %176(ptr noundef %1, i32 noundef 1065, i8 noundef zeroext %174) #8
  %177 = ptrtoint ptr %cfg.i593 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %cfg.i593, align 8
  %write_readback.i610 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %178, i32 0, i32 1
  %179 = ptrtoint ptr %write_readback.i610 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %write_readback.i610, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %180)
  %tobool.not.i611 = icmp eq i8 %180, 0
  br i1 %tobool.not.i611, label %rtl_write_byte.exit607.rtl_write_byte.exit615_crit_edge, label %if.then.i614

rtl_write_byte.exit607.rtl_write_byte.exit615_crit_edge: ; preds = %rtl_write_byte.exit607
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit615

if.then.i614:                                     ; preds = %rtl_write_byte.exit607
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i612 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %181 = ptrtoint ptr %read8_sync.i612 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %read8_sync.i612, align 4
  %call.i613 = tail call zeroext i8 %182(ptr noundef %1, i32 noundef 1065) #8
  br label %rtl_write_byte.exit615

rtl_write_byte.exit615:                           ; preds = %if.then.i614, %rtl_write_byte.exit607.rtl_write_byte.exit615_crit_edge
  %183 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %val, align 1
  %185 = ptrtoint ptr %write8_async.i592 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %write8_async.i592, align 4
  tail call void %186(ptr noundef %1, i32 noundef 1595, i8 noundef zeroext %184) #8
  %187 = ptrtoint ptr %cfg.i593 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %cfg.i593, align 8
  %write_readback.i618 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %188, i32 0, i32 1
  %189 = ptrtoint ptr %write_readback.i618 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %write_readback.i618, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %190)
  %tobool.not.i619 = icmp eq i8 %190, 0
  br i1 %tobool.not.i619, label %rtl_write_byte.exit615.rtl_write_byte.exit623_crit_edge, label %if.then.i622

rtl_write_byte.exit615.rtl_write_byte.exit623_crit_edge: ; preds = %rtl_write_byte.exit615
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit623

if.then.i622:                                     ; preds = %rtl_write_byte.exit615
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i620 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %191 = ptrtoint ptr %read8_sync.i620 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %read8_sync.i620, align 4
  %call.i621 = tail call zeroext i8 %192(ptr noundef %1, i32 noundef 1595) #8
  br label %rtl_write_byte.exit623

rtl_write_byte.exit623:                           ; preds = %if.then.i622, %rtl_write_byte.exit615.rtl_write_byte.exit623_crit_edge
  %ht_enable = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 38
  %193 = ptrtoint ptr %ht_enable to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %ht_enable, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %194)
  %tobool.not = icmp eq i8 %194, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %rtl_write_byte.exit623
  %write16_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %195 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %write16_async.i, align 4
  tail call void %196(ptr noundef %1, i32 noundef 1598, i16 noundef zeroext 3598) #8
  %197 = ptrtoint ptr %cfg.i593 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %cfg.i593, align 8
  %write_readback.i625 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %198, i32 0, i32 1
  %199 = ptrtoint ptr %write_readback.i625 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %write_readback.i625, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %200)
  %tobool.not.i626 = icmp eq i8 %200, 0
  br i1 %tobool.not.i626, label %if.then.sw.epilog364_crit_edge, label %if.then.i628

if.then.sw.epilog364_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog364

if.then.i628:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %201 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %read16_sync.i, align 4
  %call.i627 = tail call zeroext i16 %202(ptr noundef %1, i32 noundef 1598) #8
  br label %sw.epilog364

if.else:                                          ; preds = %rtl_write_byte.exit623
  %203 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %val, align 2
  %write16_async.i629 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %205 = ptrtoint ptr %write16_async.i629 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %write16_async.i629, align 4
  tail call void %206(ptr noundef %1, i32 noundef 1598, i16 noundef zeroext %204) #8
  %207 = ptrtoint ptr %cfg.i593 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %cfg.i593, align 8
  %write_readback.i631 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %208, i32 0, i32 1
  %209 = ptrtoint ptr %write_readback.i631 to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %write_readback.i631, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %210)
  %tobool.not.i632 = icmp eq i8 %210, 0
  br i1 %tobool.not.i632, label %if.else.sw.epilog364_crit_edge, label %if.then.i635

if.else.sw.epilog364_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog364

if.then.i635:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i633 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %211 = ptrtoint ptr %read16_sync.i633 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %read16_sync.i633, align 4
  %call.i634 = tail call zeroext i16 %212(ptr noundef %1, i32 noundef 1598) #8
  br label %sw.epilog364

sw.bb48:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %e_aci) #8
  %213 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %val, align 1
  %conv50 = zext i8 %214 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 32, i32 noundef 4, ptr noundef nonnull @.str.3, i32 noundef %conv50) #8
  %215 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %val, align 1
  %write8_async.i637 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %217 = ptrtoint ptr %write8_async.i637 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %write8_async.i637, align 4
  tail call void %218(ptr noundef %1, i32 noundef 1307, i8 noundef zeroext %216) #8
  %cfg.i638 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %219 = ptrtoint ptr %cfg.i638 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %cfg.i638, align 8
  %write_readback.i639 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %220, i32 0, i32 1
  %221 = ptrtoint ptr %write_readback.i639 to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %write_readback.i639, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %222)
  %tobool.not.i640 = icmp eq i8 %222, 0
  br i1 %tobool.not.i640, label %sw.bb48.rtl_write_byte.exit644_crit_edge, label %if.then.i643

sw.bb48.rtl_write_byte.exit644_crit_edge:         ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit644

if.then.i643:                                     ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i641 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %223 = ptrtoint ptr %read8_sync.i641 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %read8_sync.i641, align 4
  %call.i642 = tail call zeroext i8 %224(ptr noundef %1, i32 noundef 1307) #8
  br label %rtl_write_byte.exit644

rtl_write_byte.exit644:                           ; preds = %if.then.i643, %sw.bb48.rtl_write_byte.exit644_crit_edge
  %225 = ptrtoint ptr %e_aci to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 0, ptr %e_aci, align 1
  br label %for.body56

for.body56:                                       ; preds = %for.body56.for.body56_crit_edge, %rtl_write_byte.exit644
  %226 = ptrtoint ptr %cfg.i638 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %cfg.i638, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %227, i32 0, i32 4
  %228 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %ops, align 4
  %set_hw_reg = getelementptr inbounds %struct.rtl_hal_ops, ptr %229, i32 0, i32 20
  %230 = ptrtoint ptr %set_hw_reg to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %set_hw_reg, align 4
  call void %231(ptr noundef %hw, i8 noundef zeroext 32, ptr noundef nonnull %e_aci) #8
  %232 = ptrtoint ptr %e_aci to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %e_aci, align 1
  %inc58 = add i8 %233, 1
  store i8 %inc58, ptr %e_aci, align 1
  %cmp54 = icmp ult i8 %inc58, 4
  br i1 %cmp54, label %for.body56.for.body56_crit_edge, label %for.end59

for.body56.for.body56_crit_edge:                  ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body56

for.end59:                                        ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %e_aci) #8
  br label %sw.epilog364

sw.bb60:                                          ; preds = %entry
  %234 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %235)
  %tobool61.not = icmp eq i8 %235, 0
  %cur_40_prime_sc = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 46
  %236 = ptrtoint ptr %cur_40_prime_sc to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %cur_40_prime_sc, align 1
  %shl = shl i8 %237, 5
  %238 = or i8 %shl, -128
  %spec.select = select i1 %tobool61.not, i8 %shl, i8 %238
  %write8_async.i645 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %239 = ptrtoint ptr %write8_async.i645 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %write8_async.i645, align 4
  tail call void %240(ptr noundef %1, i32 noundef 1090, i8 noundef zeroext %spec.select) #8
  %cfg.i646 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %241 = ptrtoint ptr %cfg.i646 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %cfg.i646, align 8
  %write_readback.i647 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %242, i32 0, i32 1
  %243 = ptrtoint ptr %write_readback.i647 to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %write_readback.i647, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %244)
  %tobool.not.i648 = icmp eq i8 %244, 0
  br i1 %tobool.not.i648, label %sw.bb60.sw.epilog364_crit_edge, label %if.then.i651

sw.bb60.sw.epilog364_crit_edge:                   ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog364

if.then.i651:                                     ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i649 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %245 = ptrtoint ptr %read8_sync.i649 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %read8_sync.i649, align 4
  %call.i650 = tail call zeroext i8 %246(ptr noundef %1, i32 noundef 1090) #8
  br label %sw.epilog364

sw.bb71:                                          ; preds = %entry
  %247 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %248)
  %cmp73 = icmp ult i8 %248, 8
  br i1 %cmp73, label %if.end81, label %sw.bb71.sw.epilog364_crit_edge

sw.bb71.sw.epilog364_crit_edge:                   ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog364

if.end81:                                         ; preds = %sw.bb71
  %min_space_cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 55
  %249 = ptrtoint ptr %min_space_cfg to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %min_space_cfg, align 4
  %251 = and i8 %250, -8
  %or85555 = or i8 %251, %248
  store i8 %or85555, ptr %min_space_cfg, align 4
  %252 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 %248, ptr %val, align 1
  %253 = load i8, ptr %min_space_cfg, align 4
  %conv89 = zext i8 %253 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 32, i32 noundef 4, ptr noundef nonnull @.str.4, i32 noundef %conv89) #8
  %254 = ptrtoint ptr %min_space_cfg to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %min_space_cfg, align 4
  %write8_async.i653 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %256 = ptrtoint ptr %write8_async.i653 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %write8_async.i653, align 4
  tail call void %257(ptr noundef %1, i32 noundef 1116, i8 noundef zeroext %255) #8
  %cfg.i654 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %258 = ptrtoint ptr %cfg.i654 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %cfg.i654, align 8
  %write_readback.i655 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %259, i32 0, i32 1
  %260 = ptrtoint ptr %write_readback.i655 to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %write_readback.i655, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %261)
  %tobool.not.i656 = icmp eq i8 %261, 0
  br i1 %tobool.not.i656, label %if.end81.sw.epilog364_crit_edge, label %if.then.i659

if.end81.sw.epilog364_crit_edge:                  ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog364

if.then.i659:                                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i657 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %262 = ptrtoint ptr %read8_sync.i657 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %read8_sync.i657, align 4
  %call.i658 = tail call zeroext i8 %263(ptr noundef %1, i32 noundef 1116) #8
  br label %sw.epilog364

sw.bb92:                                          ; preds = %entry
  %264 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %val, align 1
  %shl94 = shl i8 %265, 3
  %min_space_cfg95 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 55
  %266 = ptrtoint ptr %min_space_cfg95 to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %min_space_cfg95, align 4
  %or97 = or i8 %shl94, %267
  store i8 %or97, ptr %min_space_cfg95, align 4
  %conv100 = zext i8 %or97 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 32, i32 noundef 4, ptr noundef nonnull @.str.5, i32 noundef %conv100) #8
  %268 = ptrtoint ptr %min_space_cfg95 to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %min_space_cfg95, align 4
  %write8_async.i661 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %270 = ptrtoint ptr %write8_async.i661 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %write8_async.i661, align 4
  tail call void %271(ptr noundef %1, i32 noundef 1116, i8 noundef zeroext %269) #8
  %cfg.i662 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %272 = ptrtoint ptr %cfg.i662 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %cfg.i662, align 8
  %write_readback.i663 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %273, i32 0, i32 1
  %274 = ptrtoint ptr %write_readback.i663 to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %write_readback.i663, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %275)
  %tobool.not.i664 = icmp eq i8 %275, 0
  br i1 %tobool.not.i664, label %sw.bb92.sw.epilog364_crit_edge, label %if.then.i667

sw.bb92.sw.epilog364_crit_edge:                   ; preds = %sw.bb92
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog364

if.then.i667:                                     ; preds = %sw.bb92
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i665 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %276 = ptrtoint ptr %read8_sync.i665 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %read8_sync.i665, align 4
  %call.i666 = tail call zeroext i8 %277(ptr noundef %1, i32 noundef 1116) #8
  br label %sw.epilog364

sw.bb102:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regtoset_normal) #8
  %278 = ptrtoint ptr %regtoset_normal to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 1101558457, ptr %regtoset_normal, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regtoset_bt) #8
  %279 = ptrtoint ptr %regtoset_bt to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 829702807, ptr %regtoset_bt, align 4
  %bt_coexistence = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 9
  %280 = ptrtoint ptr %bt_coexistence to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %bt_coexistence, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %281)
  %tobool104.not = icmp eq i8 %281, 0
  br i1 %tobool104.not, label %sw.bb102.if.else111_crit_edge, label %land.lhs.true

sw.bb102.if.else111_crit_edge:                    ; preds = %sw.bb102
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else111

land.lhs.true:                                    ; preds = %sw.bb102
  %bt_coexist_type = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 11
  %282 = ptrtoint ptr %bt_coexist_type to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %bt_coexist_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %283)
  %cmp107 = icmp eq i8 %283, 3
  br i1 %cmp107, label %land.lhs.true.if.end113_crit_edge, label %land.lhs.true.if.else111_crit_edge

land.lhs.true.if.else111_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else111

land.lhs.true.if.end113_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113

if.else111:                                       ; preds = %land.lhs.true.if.else111_crit_edge, %sw.bb102.if.else111_crit_edge
  br label %if.end113

if.end113:                                        ; preds = %if.else111, %land.lhs.true.if.end113_crit_edge
  %p_regtoset.0 = phi ptr [ %regtoset_normal, %if.else111 ], [ %regtoset_bt, %land.lhs.true.if.end113_crit_edge ]
  %284 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %285)
  %cmp115 = icmp ult i8 %285, 4
  br i1 %cmp115, label %if.then117, label %if.end113.if.end178_crit_edge

if.end113.if.end178_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end178

if.then117:                                       ; preds = %if.end113
  %conv114 = zext i8 %285 to i32
  %shl120 = shl nuw nsw i32 4, %conv114
  %conv121 = trunc i32 %shl120 to i8
  %conv122 = and i32 %shl120, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv122)
  %cmp123.not = icmp eq i32 %conv122, 0
  %spec.store.select = select i1 %cmp123.not, i8 %conv121, i8 15
  %conv136 = zext i8 %spec.store.select to i32
  %shl137 = shl nuw nsw i32 %conv136, 4
  %write8_async.i669 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %cfg.i670 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %read8_sync.i673 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %286 = ptrtoint ptr %p_regtoset.0 to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %p_regtoset.0, align 4
  %conv134 = zext i8 %287 to i32
  %and135 = and i32 %conv134, 240
  call void @__sanitizer_cov_trace_cmp4(i32 %and135, i32 %shl137)
  %cmp138 = icmp ugt i32 %and135, %shl137
  br i1 %cmp138, label %if.then140, label %if.then117.if.end151_crit_edge

if.then117.if.end151_crit_edge:                   ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end151

if.then140:                                       ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #10
  %and144 = and i32 %conv134, 15
  %or147 = or i32 %and144, %shl137
  %conv148 = trunc i32 %or147 to i8
  %288 = ptrtoint ptr %p_regtoset.0 to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 %conv148, ptr %p_regtoset.0, align 4
  br label %if.end151

if.end151:                                        ; preds = %if.then140, %if.then117.if.end151_crit_edge
  %289 = ptrtoint ptr %p_regtoset.0 to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %p_regtoset.0, align 4
  %291 = and i8 %290, 15
  call void @__sanitizer_cov_trace_cmp1(i8 %291, i8 %spec.store.select)
  %cmp157 = icmp ugt i8 %291, %spec.store.select
  br i1 %cmp157, label %if.then159, label %if.end151.if.end169_crit_edge

if.end151.if.end169_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end169

if.then159:                                       ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #10
  %and163 = and i8 %290, -16
  %or165 = or i8 %and163, %spec.store.select
  %292 = ptrtoint ptr %p_regtoset.0 to i32
  call void @__asan_store1_noabort(i32 %292)
  store i8 %or165, ptr %p_regtoset.0, align 4
  br label %if.end169

if.end169:                                        ; preds = %if.then159, %if.end151.if.end169_crit_edge
  %293 = ptrtoint ptr %p_regtoset.0 to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %p_regtoset.0, align 4
  %295 = ptrtoint ptr %write8_async.i669 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %write8_async.i669, align 4
  tail call void %296(ptr noundef %1, i32 noundef 1112, i8 noundef zeroext %294) #8
  %297 = ptrtoint ptr %cfg.i670 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %cfg.i670, align 8
  %write_readback.i671 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %298, i32 0, i32 1
  %299 = ptrtoint ptr %write_readback.i671 to i32
  call void @__asan_load1_noabort(i32 %299)
  %300 = load i8, ptr %write_readback.i671, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %300)
  %tobool.not.i672 = icmp eq i8 %300, 0
  br i1 %tobool.not.i672, label %if.end169.rtl_write_byte.exit676_crit_edge, label %if.then.i675

if.end169.rtl_write_byte.exit676_crit_edge:       ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit676

if.then.i675:                                     ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #10
  %301 = ptrtoint ptr %read8_sync.i673 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %read8_sync.i673, align 4
  %call.i674 = tail call zeroext i8 %302(ptr noundef %1, i32 noundef 1112) #8
  br label %rtl_write_byte.exit676

rtl_write_byte.exit676:                           ; preds = %if.then.i675, %if.end169.rtl_write_byte.exit676_crit_edge
  %arrayidx133.1 = getelementptr i8, ptr %p_regtoset.0, i32 1
  %303 = ptrtoint ptr %arrayidx133.1 to i32
  call void @__asan_load1_noabort(i32 %303)
  %304 = load i8, ptr %arrayidx133.1, align 1
  %conv134.1 = zext i8 %304 to i32
  %and135.1 = and i32 %conv134.1, 240
  call void @__sanitizer_cov_trace_cmp4(i32 %and135.1, i32 %shl137)
  %cmp138.1 = icmp ugt i32 %and135.1, %shl137
  br i1 %cmp138.1, label %if.then140.1, label %rtl_write_byte.exit676.if.end151.1_crit_edge

rtl_write_byte.exit676.if.end151.1_crit_edge:     ; preds = %rtl_write_byte.exit676
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end151.1

if.then140.1:                                     ; preds = %rtl_write_byte.exit676
  call void @__sanitizer_cov_trace_pc() #10
  %and144.1 = and i32 %conv134.1, 15
  %or147.1 = or i32 %and144.1, %shl137
  %conv148.1 = trunc i32 %or147.1 to i8
  %305 = ptrtoint ptr %arrayidx133.1 to i32
  call void @__asan_store1_noabort(i32 %305)
  store i8 %conv148.1, ptr %arrayidx133.1, align 1
  br label %if.end151.1

if.end151.1:                                      ; preds = %if.then140.1, %rtl_write_byte.exit676.if.end151.1_crit_edge
  %306 = ptrtoint ptr %arrayidx133.1 to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %arrayidx133.1, align 1
  %308 = and i8 %307, 15
  call void @__sanitizer_cov_trace_cmp1(i8 %308, i8 %spec.store.select)
  %cmp157.1 = icmp ugt i8 %308, %spec.store.select
  br i1 %cmp157.1, label %if.then159.1, label %if.end151.1.if.end169.1_crit_edge

if.end151.1.if.end169.1_crit_edge:                ; preds = %if.end151.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end169.1

if.then159.1:                                     ; preds = %if.end151.1
  call void @__sanitizer_cov_trace_pc() #10
  %and163.1 = and i8 %307, -16
  %or165.1 = or i8 %and163.1, %spec.store.select
  %309 = ptrtoint ptr %arrayidx133.1 to i32
  call void @__asan_store1_noabort(i32 %309)
  store i8 %or165.1, ptr %arrayidx133.1, align 1
  br label %if.end169.1

if.end169.1:                                      ; preds = %if.then159.1, %if.end151.1.if.end169.1_crit_edge
  %310 = ptrtoint ptr %arrayidx133.1 to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %arrayidx133.1, align 1
  %312 = ptrtoint ptr %write8_async.i669 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %write8_async.i669, align 4
  tail call void %313(ptr noundef %1, i32 noundef 1113, i8 noundef zeroext %311) #8
  %314 = ptrtoint ptr %cfg.i670 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %cfg.i670, align 8
  %write_readback.i671.1 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %315, i32 0, i32 1
  %316 = ptrtoint ptr %write_readback.i671.1 to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %write_readback.i671.1, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %317)
  %tobool.not.i672.1 = icmp eq i8 %317, 0
  br i1 %tobool.not.i672.1, label %if.end169.1.rtl_write_byte.exit676.1_crit_edge, label %if.then.i675.1

if.end169.1.rtl_write_byte.exit676.1_crit_edge:   ; preds = %if.end169.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit676.1

if.then.i675.1:                                   ; preds = %if.end169.1
  call void @__sanitizer_cov_trace_pc() #10
  %318 = ptrtoint ptr %read8_sync.i673 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %read8_sync.i673, align 4
  %call.i674.1 = tail call zeroext i8 %319(ptr noundef %1, i32 noundef 1113) #8
  br label %rtl_write_byte.exit676.1

rtl_write_byte.exit676.1:                         ; preds = %if.then.i675.1, %if.end169.1.rtl_write_byte.exit676.1_crit_edge
  %arrayidx133.2 = getelementptr i8, ptr %p_regtoset.0, i32 2
  %320 = ptrtoint ptr %arrayidx133.2 to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %arrayidx133.2, align 2
  %conv134.2 = zext i8 %321 to i32
  %and135.2 = and i32 %conv134.2, 240
  call void @__sanitizer_cov_trace_cmp4(i32 %and135.2, i32 %shl137)
  %cmp138.2 = icmp ugt i32 %and135.2, %shl137
  br i1 %cmp138.2, label %if.then140.2, label %rtl_write_byte.exit676.1.if.end151.2_crit_edge

rtl_write_byte.exit676.1.if.end151.2_crit_edge:   ; preds = %rtl_write_byte.exit676.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end151.2

if.then140.2:                                     ; preds = %rtl_write_byte.exit676.1
  call void @__sanitizer_cov_trace_pc() #10
  %and144.2 = and i32 %conv134.2, 15
  %or147.2 = or i32 %and144.2, %shl137
  %conv148.2 = trunc i32 %or147.2 to i8
  %322 = ptrtoint ptr %arrayidx133.2 to i32
  call void @__asan_store1_noabort(i32 %322)
  store i8 %conv148.2, ptr %arrayidx133.2, align 2
  br label %if.end151.2

if.end151.2:                                      ; preds = %if.then140.2, %rtl_write_byte.exit676.1.if.end151.2_crit_edge
  %323 = ptrtoint ptr %arrayidx133.2 to i32
  call void @__asan_load1_noabort(i32 %323)
  %324 = load i8, ptr %arrayidx133.2, align 2
  %325 = and i8 %324, 15
  call void @__sanitizer_cov_trace_cmp1(i8 %325, i8 %spec.store.select)
  %cmp157.2 = icmp ugt i8 %325, %spec.store.select
  br i1 %cmp157.2, label %if.then159.2, label %if.end151.2.if.end169.2_crit_edge

if.end151.2.if.end169.2_crit_edge:                ; preds = %if.end151.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end169.2

if.then159.2:                                     ; preds = %if.end151.2
  call void @__sanitizer_cov_trace_pc() #10
  %and163.2 = and i8 %324, -16
  %or165.2 = or i8 %and163.2, %spec.store.select
  %326 = ptrtoint ptr %arrayidx133.2 to i32
  call void @__asan_store1_noabort(i32 %326)
  store i8 %or165.2, ptr %arrayidx133.2, align 2
  br label %if.end169.2

if.end169.2:                                      ; preds = %if.then159.2, %if.end151.2.if.end169.2_crit_edge
  %327 = ptrtoint ptr %arrayidx133.2 to i32
  call void @__asan_load1_noabort(i32 %327)
  %328 = load i8, ptr %arrayidx133.2, align 2
  %329 = ptrtoint ptr %write8_async.i669 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %write8_async.i669, align 4
  tail call void %330(ptr noundef %1, i32 noundef 1114, i8 noundef zeroext %328) #8
  %331 = ptrtoint ptr %cfg.i670 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %cfg.i670, align 8
  %write_readback.i671.2 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %332, i32 0, i32 1
  %333 = ptrtoint ptr %write_readback.i671.2 to i32
  call void @__asan_load1_noabort(i32 %333)
  %334 = load i8, ptr %write_readback.i671.2, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %334)
  %tobool.not.i672.2 = icmp eq i8 %334, 0
  br i1 %tobool.not.i672.2, label %if.end169.2.rtl_write_byte.exit676.2_crit_edge, label %if.then.i675.2

if.end169.2.rtl_write_byte.exit676.2_crit_edge:   ; preds = %if.end169.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit676.2

if.then.i675.2:                                   ; preds = %if.end169.2
  call void @__sanitizer_cov_trace_pc() #10
  %335 = ptrtoint ptr %read8_sync.i673 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %read8_sync.i673, align 4
  %call.i674.2 = tail call zeroext i8 %336(ptr noundef %1, i32 noundef 1114) #8
  br label %rtl_write_byte.exit676.2

rtl_write_byte.exit676.2:                         ; preds = %if.then.i675.2, %if.end169.2.rtl_write_byte.exit676.2_crit_edge
  %arrayidx133.3 = getelementptr i8, ptr %p_regtoset.0, i32 3
  %337 = ptrtoint ptr %arrayidx133.3 to i32
  call void @__asan_load1_noabort(i32 %337)
  %338 = load i8, ptr %arrayidx133.3, align 1
  %conv134.3 = zext i8 %338 to i32
  %and135.3 = and i32 %conv134.3, 240
  call void @__sanitizer_cov_trace_cmp4(i32 %and135.3, i32 %shl137)
  %cmp138.3 = icmp ugt i32 %and135.3, %shl137
  br i1 %cmp138.3, label %if.then140.3, label %rtl_write_byte.exit676.2.if.end151.3_crit_edge

rtl_write_byte.exit676.2.if.end151.3_crit_edge:   ; preds = %rtl_write_byte.exit676.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end151.3

if.then140.3:                                     ; preds = %rtl_write_byte.exit676.2
  call void @__sanitizer_cov_trace_pc() #10
  %and144.3 = and i32 %conv134.3, 15
  %or147.3 = or i32 %and144.3, %shl137
  %conv148.3 = trunc i32 %or147.3 to i8
  %339 = ptrtoint ptr %arrayidx133.3 to i32
  call void @__asan_store1_noabort(i32 %339)
  store i8 %conv148.3, ptr %arrayidx133.3, align 1
  br label %if.end151.3

if.end151.3:                                      ; preds = %if.then140.3, %rtl_write_byte.exit676.2.if.end151.3_crit_edge
  %340 = ptrtoint ptr %arrayidx133.3 to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %arrayidx133.3, align 1
  %342 = and i8 %341, 15
  call void @__sanitizer_cov_trace_cmp1(i8 %342, i8 %spec.store.select)
  %cmp157.3 = icmp ugt i8 %342, %spec.store.select
  br i1 %cmp157.3, label %if.then159.3, label %if.end151.3.if.end169.3_crit_edge

if.end151.3.if.end169.3_crit_edge:                ; preds = %if.end151.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end169.3

if.then159.3:                                     ; preds = %if.end151.3
  call void @__sanitizer_cov_trace_pc() #10
  %and163.3 = and i8 %341, -16
  %or165.3 = or i8 %and163.3, %spec.store.select
  %343 = ptrtoint ptr %arrayidx133.3 to i32
  call void @__asan_store1_noabort(i32 %343)
  store i8 %or165.3, ptr %arrayidx133.3, align 1
  br label %if.end169.3

if.end169.3:                                      ; preds = %if.then159.3, %if.end151.3.if.end169.3_crit_edge
  %344 = ptrtoint ptr %arrayidx133.3 to i32
  call void @__asan_load1_noabort(i32 %344)
  %345 = load i8, ptr %arrayidx133.3, align 1
  %346 = ptrtoint ptr %write8_async.i669 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %write8_async.i669, align 4
  tail call void %347(ptr noundef %1, i32 noundef 1115, i8 noundef zeroext %345) #8
  %348 = ptrtoint ptr %cfg.i670 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %cfg.i670, align 8
  %write_readback.i671.3 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %349, i32 0, i32 1
  %350 = ptrtoint ptr %write_readback.i671.3 to i32
  call void @__asan_load1_noabort(i32 %350)
  %351 = load i8, ptr %write_readback.i671.3, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %351)
  %tobool.not.i672.3 = icmp eq i8 %351, 0
  br i1 %tobool.not.i672.3, label %if.end169.3.rtl_write_byte.exit676.3_crit_edge, label %if.then.i675.3

if.end169.3.rtl_write_byte.exit676.3_crit_edge:   ; preds = %if.end169.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit676.3

if.then.i675.3:                                   ; preds = %if.end169.3
  call void @__sanitizer_cov_trace_pc() #10
  %352 = ptrtoint ptr %read8_sync.i673 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %read8_sync.i673, align 4
  %call.i674.3 = tail call zeroext i8 %353(ptr noundef %1, i32 noundef 1115) #8
  br label %rtl_write_byte.exit676.3

rtl_write_byte.exit676.3:                         ; preds = %if.then.i675.3, %if.end169.3.rtl_write_byte.exit676.3_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 32, i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef %conv136) #8
  br label %if.end178

if.end178:                                        ; preds = %rtl_write_byte.exit676.3, %if.end113.if.end178_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regtoset_bt) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regtoset_normal) #8
  br label %sw.epilog364

sw.bb179:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %e_aci180) #8
  %354 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %354)
  %355 = load i8, ptr %val, align 1
  %356 = ptrtoint ptr %e_aci180 to i32
  call void @__asan_store1_noabort(i32 %356)
  store i8 %355, ptr %e_aci180, align 1
  tail call void @rtl92c_dm_init_edca_turbo(ptr noundef %hw) #8
  %acm_method = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 4
  %357 = ptrtoint ptr %acm_method to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %acm_method, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %358)
  %cmp181.not = icmp eq i32 %358, 2
  br i1 %cmp181.not, label %sw.bb179.if.end187_crit_edge, label %if.then183

sw.bb179.if.end187_crit_edge:                     ; preds = %sw.bb179
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end187

if.then183:                                       ; preds = %sw.bb179
  call void @__sanitizer_cov_trace_pc() #10
  %cfg184 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %359 = ptrtoint ptr %cfg184 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %cfg184, align 8
  %ops185 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %360, i32 0, i32 4
  %361 = ptrtoint ptr %ops185 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %ops185, align 4
  %set_hw_reg186 = getelementptr inbounds %struct.rtl_hal_ops, ptr %362, i32 0, i32 20
  %363 = ptrtoint ptr %set_hw_reg186 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %set_hw_reg186, align 4
  call void %364(ptr noundef %hw, i8 noundef zeroext 33, ptr noundef nonnull %e_aci180) #8
  br label %if.end187

if.end187:                                        ; preds = %if.then183, %sw.bb179.if.end187_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %e_aci180) #8
  br label %sw.epilog364

sw.bb188:                                         ; preds = %entry
  %365 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %365)
  %366 = load i8, ptr %val, align 1
  %aifs = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 60, i32 0, i32 2
  %367 = ptrtoint ptr %aifs to i32
  call void @__asan_load1_noabort(i32 %367)
  %bf.load = load i8, ptr %aifs, align 1
  %read8_sync.i677 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %368 = ptrtoint ptr %read8_sync.i677 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %read8_sync.i677, align 4
  %call.i678 = tail call zeroext i8 %369(ptr noundef %1, i32 noundef 1472) #8
  %acm_method192 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 4
  %370 = ptrtoint ptr %acm_method192 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %acm_method192, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %371)
  %cmp193 = icmp ne i32 %371, 2
  %cond = zext i1 %cmp193 to i8
  %or195 = or i8 %call.i678, %cond
  %372 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %372)
  %tobool197.not = icmp eq i8 %372, 0
  br i1 %tobool197.not, label %if.else213, label %if.then198

if.then198:                                       ; preds = %sw.bb188
  %373 = zext i8 %366 to i64
  call void @__sanitizer_cov_trace_switch(i64 %373, ptr @__sancov_gen_cov_switch_values.93)
  switch i8 %366, label %sw.default [
    i8 0, label %sw.bb200
    i8 2, label %sw.bb204
    i8 3, label %sw.bb208
  ]

sw.bb200:                                         ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #10
  %374 = or i8 %or195, 2
  br label %if.end231

sw.bb204:                                         ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #10
  %375 = or i8 %or195, 4
  br label %if.end231

sw.bb208:                                         ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #10
  %376 = or i8 %or195, 8
  br label %if.end231

sw.default:                                       ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef 1) #8
  br label %if.end231

if.else213:                                       ; preds = %sw.bb188
  %377 = zext i8 %366 to i64
  call void @__sanitizer_cov_trace_switch(i64 %377, ptr @__sancov_gen_cov_switch_values.94)
  switch i8 %366, label %do.end [
    i8 0, label %sw.bb215
    i8 2, label %sw.bb219
    i8 3, label %sw.bb223
  ]

sw.bb215:                                         ; preds = %if.else213
  call void @__sanitizer_cov_trace_pc() #10
  %378 = and i8 %or195, -3
  br label %if.end231

sw.bb219:                                         ; preds = %if.else213
  call void @__sanitizer_cov_trace_pc() #10
  %379 = and i8 %or195, -5
  br label %if.end231

sw.bb223:                                         ; preds = %if.else213
  call void @__sanitizer_cov_trace_pc() #10
  %380 = and i8 %or195, -9
  br label %if.end231

do.end:                                           ; preds = %if.else213
  call void @__sanitizer_cov_trace_pc() #10
  %conv214 = zext i8 %366 to i32
  %call229 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv214) #11
  br label %if.end231

if.end231:                                        ; preds = %do.end, %sw.bb223, %sw.bb219, %sw.bb215, %sw.default, %sw.bb208, %sw.bb204, %sw.bb200
  %acm_ctrl.0 = phi i8 [ %or195, %sw.default ], [ %376, %sw.bb208 ], [ %375, %sw.bb204 ], [ %374, %sw.bb200 ], [ %or195, %do.end ], [ %380, %sw.bb223 ], [ %379, %sw.bb219 ], [ %378, %sw.bb215 ]
  %conv232 = zext i8 %acm_ctrl.0 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 33554432, i32 noundef 5, ptr noundef nonnull @.str.9, i32 noundef %conv232) #8
  %write8_async.i679 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %381 = ptrtoint ptr %write8_async.i679 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %write8_async.i679, align 4
  tail call void %382(ptr noundef %1, i32 noundef 1472, i8 noundef zeroext %acm_ctrl.0) #8
  %cfg.i680 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %383 = ptrtoint ptr %cfg.i680 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %cfg.i680, align 8
  %write_readback.i681 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %384, i32 0, i32 1
  %385 = ptrtoint ptr %write_readback.i681 to i32
  call void @__asan_load1_noabort(i32 %385)
  %386 = load i8, ptr %write_readback.i681, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %386)
  %tobool.not.i682 = icmp eq i8 %386, 0
  br i1 %tobool.not.i682, label %if.end231.sw.epilog364_crit_edge, label %if.then.i685

if.end231.sw.epilog364_crit_edge:                 ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog364

if.then.i685:                                     ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #10
  %387 = ptrtoint ptr %read8_sync.i677 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %read8_sync.i677, align 4
  %call.i684 = tail call zeroext i8 %388(ptr noundef %1, i32 noundef 1472) #8
  br label %sw.epilog364

sw.bb233:                                         ; preds = %entry
  %389 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %val, align 4
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %391 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %write32_async.i, align 4
  tail call void %392(ptr noundef %1, i32 noundef 1544, i32 noundef %390) #8
  %cfg.i687 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %393 = ptrtoint ptr %cfg.i687 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %cfg.i687, align 8
  %write_readback.i688 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %394, i32 0, i32 1
  %395 = ptrtoint ptr %write_readback.i688 to i32
  call void @__asan_load1_noabort(i32 %395)
  %396 = load i8, ptr %write_readback.i688, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %396)
  %tobool.not.i689 = icmp eq i8 %396, 0
  br i1 %tobool.not.i689, label %sw.bb233.rtl_write_dword.exit_crit_edge, label %if.then.i691

sw.bb233.rtl_write_dword.exit_crit_edge:          ; preds = %sw.bb233
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit

if.then.i691:                                     ; preds = %sw.bb233
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %397 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %read32_sync.i, align 4
  %call.i690 = tail call i32 %398(ptr noundef %1, i32 noundef 1544) #8
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i691, %sw.bb233.rtl_write_dword.exit_crit_edge
  %399 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %val, align 4
  %receive_config = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 3
  %401 = ptrtoint ptr %receive_config to i32
  call void @__asan_store4_noabort(i32 %401)
  store i32 %400, ptr %receive_config, align 4
  br label %sw.epilog364

sw.bb236:                                         ; preds = %entry
  %402 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %402)
  %403 = load i8, ptr %val, align 1
  %conv238 = zext i8 %403 to i32
  %shl239 = shl nuw nsw i32 %conv238, 8
  %or242 = or i32 %shl239, %conv238
  %conv243 = trunc i32 %or242 to i16
  %write16_async.i692 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %404 = ptrtoint ptr %write16_async.i692 to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %write16_async.i692, align 4
  tail call void %405(ptr noundef %1, i32 noundef 1066, i16 noundef zeroext %conv243) #8
  %cfg.i693 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %406 = ptrtoint ptr %cfg.i693 to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %cfg.i693, align 8
  %write_readback.i694 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %407, i32 0, i32 1
  %408 = ptrtoint ptr %write_readback.i694 to i32
  call void @__asan_load1_noabort(i32 %408)
  %409 = load i8, ptr %write_readback.i694, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %409)
  %tobool.not.i695 = icmp eq i8 %409, 0
  br i1 %tobool.not.i695, label %sw.bb236.sw.epilog364_crit_edge, label %if.then.i698

sw.bb236.sw.epilog364_crit_edge:                  ; preds = %sw.bb236
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog364

if.then.i698:                                     ; preds = %sw.bb236
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i696 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %410 = ptrtoint ptr %read16_sync.i696 to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %read16_sync.i696, align 4
  %call.i697 = tail call zeroext i16 %411(ptr noundef %1, i32 noundef 1066) #8
  br label %sw.epilog364

sw.bb244:                                         ; preds = %entry
  %write8_async.i700 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %412 = ptrtoint ptr %write8_async.i700 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %write8_async.i700, align 4
  tail call void %413(ptr noundef %1, i32 noundef 1363, i8 noundef zeroext 3) #8
  %cfg.i701 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %414 = ptrtoint ptr %cfg.i701 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %cfg.i701, align 8
  %write_readback.i702 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %415, i32 0, i32 1
  %416 = ptrtoint ptr %write_readback.i702 to i32
  call void @__asan_load1_noabort(i32 %416)
  %417 = load i8, ptr %write_readback.i702, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %417)
  %tobool.not.i703 = icmp eq i8 %417, 0
  br i1 %tobool.not.i703, label %sw.bb244.sw.epilog364_crit_edge, label %if.then.i706

sw.bb244.sw.epilog364_crit_edge:                  ; preds = %sw.bb244
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog364

if.then.i706:                                     ; preds = %sw.bb244
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i704 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %418 = ptrtoint ptr %read8_sync.i704 to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %read8_sync.i704, align 4
  %call.i705 = tail call zeroext i8 %419(ptr noundef %1, i32 noundef 1363) #8
  br label %sw.epilog364

sw.bb245:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %420 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %420)
  %421 = load i16, ptr %val, align 2
  %efuse_usedbytes = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 5
  %422 = ptrtoint ptr %efuse_usedbytes to i32
  call void @__asan_store2_noabort(i32 %422)
  store i16 %421, ptr %efuse_usedbytes, align 4
  br label %sw.epilog364

sw.bb246:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %423 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %423)
  %424 = load i8, ptr %val, align 1
  %efuse_usedpercentage = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 6
  %425 = ptrtoint ptr %efuse_usedpercentage to i32
  call void @__asan_store1_noabort(i32 %425)
  store i8 %424, ptr %efuse_usedpercentage, align 2
  br label %sw.epilog364

sw.bb247:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %426 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %val, align 4
  %call248 = tail call zeroext i1 @rtl92c_phy_set_io_cmd(ptr noundef %hw, i32 noundef %427) #8
  br label %sw.epilog364

sw.bb249:                                         ; preds = %entry
  %428 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %428)
  %429 = load i8, ptr %val, align 1
  %write8_async.i708 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %430 = ptrtoint ptr %write8_async.i708 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %write8_async.i708, align 4
  tail call void %431(ptr noundef %1, i32 noundef 1664, i8 noundef zeroext %429) #8
  %cfg.i709 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %432 = ptrtoint ptr %cfg.i709 to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %cfg.i709, align 8
  %write_readback.i710 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %433, i32 0, i32 1
  %434 = ptrtoint ptr %write_readback.i710 to i32
  call void @__asan_load1_noabort(i32 %434)
  %435 = load i8, ptr %write_readback.i710, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %435)
  %tobool.not.i711 = icmp eq i8 %435, 0
  br i1 %tobool.not.i711, label %sw.bb249.sw.epilog364_crit_edge, label %if.then.i714

sw.bb249.sw.epilog364_crit_edge:                  ; preds = %sw.bb249
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog364

if.then.i714:                                     ; preds = %sw.bb249
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i712 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %436 = ptrtoint ptr %read8_sync.i712 to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %read8_sync.i712, align 4
  %call.i713 = tail call zeroext i8 %437(ptr noundef %1, i32 noundef 1664) #8
  br label %sw.epilog364

sw.bb250:                                         ; preds = %entry
  %read8_sync.i716 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %438 = ptrtoint ptr %read8_sync.i716 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %read8_sync.i716, align 4
  %call.i717 = tail call zeroext i8 %439(ptr noundef %1, i32 noundef 865) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %440 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %440(i32 noundef 214748) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i717)
  %tobool254.not = icmp sgt i8 %call.i717, -1
  %441 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %441)
  %442 = load i8, ptr %val, align 1
  br i1 %tobool254.not, label %if.else256, label %if.then255

if.then255:                                       ; preds = %sw.bb250
  %write8_async.i718 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %443 = ptrtoint ptr %write8_async.i718 to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %write8_async.i718, align 4
  tail call void %444(ptr noundef %1, i32 noundef 865, i8 noundef zeroext %442) #8
  %cfg.i719 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %445 = ptrtoint ptr %cfg.i719 to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %cfg.i719, align 8
  %write_readback.i720 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %446, i32 0, i32 1
  %447 = ptrtoint ptr %write_readback.i720 to i32
  call void @__asan_load1_noabort(i32 %447)
  %448 = load i8, ptr %write_readback.i720, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %448)
  %tobool.not.i721 = icmp eq i8 %448, 0
  br i1 %tobool.not.i721, label %if.then255.sw.epilog364_crit_edge, label %if.then.i724

if.then255.sw.epilog364_crit_edge:                ; preds = %if.then255
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog364

if.then.i724:                                     ; preds = %if.then255
  call void @__sanitizer_cov_trace_pc() #10
  %449 = ptrtoint ptr %read8_sync.i716 to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %read8_sync.i716, align 4
  %call.i723 = tail call zeroext i8 %450(ptr noundef %1, i32 noundef 865) #8
  br label %sw.epilog364

if.else256:                                       ; preds = %sw.bb250
  %451 = or i8 %442, -128
  %write8_async.i726 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %452 = ptrtoint ptr %write8_async.i726 to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %write8_async.i726, align 4
  tail call void %453(ptr noundef %1, i32 noundef 865, i8 noundef zeroext %451) #8
  %cfg.i727 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %454 = ptrtoint ptr %cfg.i727 to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %cfg.i727, align 8
  %write_readback.i728 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %455, i32 0, i32 1
  %456 = ptrtoint ptr %write_readback.i728 to i32
  call void @__asan_load1_noabort(i32 %456)
  %457 = load i8, ptr %write_readback.i728, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %457)
  %tobool.not.i729 = icmp eq i8 %457, 0
  br i1 %tobool.not.i729, label %if.else256.sw.epilog364_crit_edge, label %if.then.i732

if.else256.sw.epilog364_crit_edge:                ; preds = %if.else256
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog364

if.then.i732:                                     ; preds = %if.else256
  call void @__sanitizer_cov_trace_pc() #10
  %458 = ptrtoint ptr %read8_sync.i716 to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %read8_sync.i716, align 4
  %call.i731 = tail call zeroext i8 %459(ptr noundef %1, i32 noundef 865) #8
  br label %sw.epilog364

sw.bb261:                                         ; preds = %entry
  %460 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %460)
  %461 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %461)
  %cmp263.not = icmp eq i8 %461, 0
  br i1 %cmp263.not, label %sw.bb261.if.end272_crit_edge, label %land.lhs.true265

sw.bb261.if.end272_crit_edge:                     ; preds = %sw.bb261
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end272

land.lhs.true265:                                 ; preds = %sw.bb261
  %version = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 13
  %462 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load i32, ptr %version, align 4
  %and266 = and i32 %463, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and266)
  %cmp267 = icmp eq i32 %and266, 1
  br i1 %cmp267, label %land.lhs.true265.if.end272_crit_edge, label %if.then271

land.lhs.true265.if.end272_crit_edge:             ; preds = %land.lhs.true265
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end272

if.then271:                                       ; preds = %land.lhs.true265
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rtl92c_dm_rf_saving(ptr noundef %hw, i8 noundef zeroext 1) #8
  br label %if.end272

if.end272:                                        ; preds = %if.then271, %land.lhs.true265.if.end272_crit_edge, %sw.bb261.if.end272_crit_edge
  %464 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %464)
  %465 = load i8, ptr %val, align 1
  tail call void @rtl92c_set_fw_pwrmode_cmd(ptr noundef %hw, i8 noundef zeroext %465) #8
  br label %sw.epilog364

sw.bb273:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %466 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %466)
  %467 = load i8, ptr %val, align 1, !range !200
  %fw_current_inpsmode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 13
  %468 = ptrtoint ptr %fw_current_inpsmode to i32
  call void @__asan_store1_noabort(i32 %468)
  store i8 %467, ptr %fw_current_inpsmode, align 1
  br label %sw.epilog364

sw.bb275:                                         ; preds = %entry
  %469 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %469)
  %470 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %470)
  %cmp277 = icmp eq i8 %470, 1
  br i1 %cmp277, label %if.then279, label %sw.bb275.if.end302_crit_edge

sw.bb275.if.end302_crit_edge:                     ; preds = %sw.bb275
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end302

if.then279:                                       ; preds = %sw.bb275
  %cfg280 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %471 = ptrtoint ptr %cfg280 to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %cfg280, align 8
  %ops281 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %472, i32 0, i32 4
  %473 = ptrtoint ptr %ops281 to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %ops281, align 4
  %set_hw_reg282 = getelementptr inbounds %struct.rtl_hal_ops, ptr %474, i32 0, i32 20
  %475 = ptrtoint ptr %set_hw_reg282 to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %set_hw_reg282, align 4
  tail call void %476(ptr noundef %hw, i8 noundef zeroext 82, ptr noundef null) #8
  %read8_sync.i734 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %477 = ptrtoint ptr %read8_sync.i734 to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %read8_sync.i734, align 4
  %call.i735 = tail call zeroext i8 %478(ptr noundef %1, i32 noundef 257) #8
  %or285 = or i8 %call.i735, 1
  %write8_async.i736 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %479 = ptrtoint ptr %write8_async.i736 to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %write8_async.i736, align 4
  tail call void %480(ptr noundef %1, i32 noundef 257, i8 noundef zeroext %or285) #8
  %481 = ptrtoint ptr %cfg280 to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %cfg280, align 8
  %write_readback.i738 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %482, i32 0, i32 1
  %483 = ptrtoint ptr %write_readback.i738 to i32
  call void @__asan_load1_noabort(i32 %483)
  %484 = load i8, ptr %write_readback.i738, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %484)
  %tobool.not.i739 = icmp eq i8 %484, 0
  br i1 %tobool.not.i739, label %if.then279.rtl_write_byte.exit743_crit_edge, label %if.then.i742

if.then279.rtl_write_byte.exit743_crit_edge:      ; preds = %if.then279
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit743

if.then.i742:                                     ; preds = %if.then279
  call void @__sanitizer_cov_trace_pc() #10
  %485 = ptrtoint ptr %read8_sync.i734 to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load ptr, ptr %read8_sync.i734, align 4
  %call.i741 = tail call zeroext i8 %486(ptr noundef %1, i32 noundef 257) #8
  br label %rtl_write_byte.exit743

rtl_write_byte.exit743:                           ; preds = %if.then.i742, %if.then279.rtl_write_byte.exit743_crit_edge
  %487 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i = getelementptr inbounds %struct.rtl_priv, ptr %488, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %489 = ptrtoint ptr %reg_bcn_ctrl_val.i to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load i32, ptr %reg_bcn_ctrl_val.i, align 4
  %and.i = and i32 %490, -9
  store i32 %and.i, ptr %reg_bcn_ctrl_val.i, align 4
  %conv6.i = trunc i32 %and.i to i8
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %488, i32 0, i32 13, i32 5
  %491 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %492(ptr noundef %488, i32 noundef 1360, i8 noundef zeroext %conv6.i) #8
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %488, i32 0, i32 32
  %493 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %494, i32 0, i32 1
  %495 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %495)
  %496 = load i8, ptr %write_readback.i.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %496)
  %tobool.not.i.i = icmp eq i8 %496, 0
  br i1 %tobool.not.i.i, label %rtl_write_byte.exit743._rtl92ce_set_bcn_ctrl_reg.exit_crit_edge, label %if.then.i.i

rtl_write_byte.exit743._rtl92ce_set_bcn_ctrl_reg.exit_crit_edge: ; preds = %rtl_write_byte.exit743
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ce_set_bcn_ctrl_reg.exit

if.then.i.i:                                      ; preds = %rtl_write_byte.exit743
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %488, i32 0, i32 13, i32 9
  %497 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = tail call zeroext i8 %498(ptr noundef %488, i32 noundef 1360) #8
  br label %_rtl92ce_set_bcn_ctrl_reg.exit

_rtl92ce_set_bcn_ctrl_reg.exit:                   ; preds = %if.then.i.i, %rtl_write_byte.exit743._rtl92ce_set_bcn_ctrl_reg.exit_crit_edge
  %499 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i745 = getelementptr inbounds %struct.rtl_priv, ptr %500, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %501 = ptrtoint ptr %reg_bcn_ctrl_val.i745 to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load i32, ptr %reg_bcn_ctrl_val.i745, align 4
  %or.i = or i32 %502, 16
  store i32 %or.i, ptr %reg_bcn_ctrl_val.i745, align 4
  %conv6.i746 = trunc i32 %or.i to i8
  %write8_async.i.i747 = getelementptr inbounds %struct.rtl_priv, ptr %500, i32 0, i32 13, i32 5
  %503 = ptrtoint ptr %write8_async.i.i747 to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load ptr, ptr %write8_async.i.i747, align 4
  tail call void %504(ptr noundef %500, i32 noundef 1360, i8 noundef zeroext %conv6.i746) #8
  %cfg.i.i748 = getelementptr inbounds %struct.rtl_priv, ptr %500, i32 0, i32 32
  %505 = ptrtoint ptr %cfg.i.i748 to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %cfg.i.i748, align 8
  %write_readback.i.i749 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %506, i32 0, i32 1
  %507 = ptrtoint ptr %write_readback.i.i749 to i32
  call void @__asan_load1_noabort(i32 %507)
  %508 = load i8, ptr %write_readback.i.i749, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %508)
  %tobool.not.i.i750 = icmp eq i8 %508, 0
  br i1 %tobool.not.i.i750, label %_rtl92ce_set_bcn_ctrl_reg.exit._rtl92ce_set_bcn_ctrl_reg.exit754_crit_edge, label %if.then.i.i753

_rtl92ce_set_bcn_ctrl_reg.exit._rtl92ce_set_bcn_ctrl_reg.exit754_crit_edge: ; preds = %_rtl92ce_set_bcn_ctrl_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ce_set_bcn_ctrl_reg.exit754

if.then.i.i753:                                   ; preds = %_rtl92ce_set_bcn_ctrl_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i751 = getelementptr inbounds %struct.rtl_priv, ptr %500, i32 0, i32 13, i32 9
  %509 = ptrtoint ptr %read8_sync.i.i751 to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %read8_sync.i.i751, align 4
  %call.i.i752 = tail call zeroext i8 %510(ptr noundef %500, i32 noundef 1360) #8
  br label %_rtl92ce_set_bcn_ctrl_reg.exit754

_rtl92ce_set_bcn_ctrl_reg.exit754:                ; preds = %if.then.i.i753, %_rtl92ce_set_bcn_ctrl_reg.exit._rtl92ce_set_bcn_ctrl_reg.exit754_crit_edge
  %511 = ptrtoint ptr %read8_sync.i734 to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load ptr, ptr %read8_sync.i734, align 4
  %call.i756 = tail call zeroext i8 %512(ptr noundef %1, i32 noundef 1058) #8
  %513 = and i8 %call.i756, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %513)
  %tobool290.not = icmp eq i8 %513, 0
  %and294 = and i8 %call.i756, -65
  %514 = ptrtoint ptr %write8_async.i736 to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %write8_async.i736, align 4
  tail call void %515(ptr noundef %1, i32 noundef 1058, i8 noundef zeroext %and294) #8
  %516 = ptrtoint ptr %cfg280 to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %cfg280, align 8
  %write_readback.i759 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %517, i32 0, i32 1
  %518 = ptrtoint ptr %write_readback.i759 to i32
  call void @__asan_load1_noabort(i32 %518)
  %519 = load i8, ptr %write_readback.i759, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %519)
  %tobool.not.i760 = icmp eq i8 %519, 0
  br i1 %tobool.not.i760, label %_rtl92ce_set_bcn_ctrl_reg.exit754.rtl_write_byte.exit764_crit_edge, label %if.then.i763

_rtl92ce_set_bcn_ctrl_reg.exit754.rtl_write_byte.exit764_crit_edge: ; preds = %_rtl92ce_set_bcn_ctrl_reg.exit754
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit764

if.then.i763:                                     ; preds = %_rtl92ce_set_bcn_ctrl_reg.exit754
  call void @__sanitizer_cov_trace_pc() #10
  %520 = ptrtoint ptr %read8_sync.i734 to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %read8_sync.i734, align 4
  %call.i762 = tail call zeroext i8 %521(ptr noundef %1, i32 noundef 1058) #8
  br label %rtl_write_byte.exit764

rtl_write_byte.exit764:                           ; preds = %if.then.i763, %_rtl92ce_set_bcn_ctrl_reg.exit754.rtl_write_byte.exit764_crit_edge
  tail call void @rtl92c_set_fw_rsvdpagepkt(ptr noundef %hw, ptr noundef null) #8
  %522 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i766 = getelementptr inbounds %struct.rtl_priv, ptr %523, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %524 = ptrtoint ptr %reg_bcn_ctrl_val.i766 to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load i32, ptr %reg_bcn_ctrl_val.i766, align 4
  %or.i767 = or i32 %525, 8
  store i32 %or.i767, ptr %reg_bcn_ctrl_val.i766, align 4
  %conv6.i768 = trunc i32 %or.i767 to i8
  %write8_async.i.i769 = getelementptr inbounds %struct.rtl_priv, ptr %523, i32 0, i32 13, i32 5
  %526 = ptrtoint ptr %write8_async.i.i769 to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %write8_async.i.i769, align 4
  tail call void %527(ptr noundef %523, i32 noundef 1360, i8 noundef zeroext %conv6.i768) #8
  %cfg.i.i770 = getelementptr inbounds %struct.rtl_priv, ptr %523, i32 0, i32 32
  %528 = ptrtoint ptr %cfg.i.i770 to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %cfg.i.i770, align 8
  %write_readback.i.i771 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %529, i32 0, i32 1
  %530 = ptrtoint ptr %write_readback.i.i771 to i32
  call void @__asan_load1_noabort(i32 %530)
  %531 = load i8, ptr %write_readback.i.i771, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %531)
  %tobool.not.i.i772 = icmp eq i8 %531, 0
  br i1 %tobool.not.i.i772, label %rtl_write_byte.exit764._rtl92ce_set_bcn_ctrl_reg.exit776_crit_edge, label %if.then.i.i775

rtl_write_byte.exit764._rtl92ce_set_bcn_ctrl_reg.exit776_crit_edge: ; preds = %rtl_write_byte.exit764
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ce_set_bcn_ctrl_reg.exit776

if.then.i.i775:                                   ; preds = %rtl_write_byte.exit764
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i773 = getelementptr inbounds %struct.rtl_priv, ptr %523, i32 0, i32 13, i32 9
  %532 = ptrtoint ptr %read8_sync.i.i773 to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %read8_sync.i.i773, align 4
  %call.i.i774 = tail call zeroext i8 %533(ptr noundef %523, i32 noundef 1360) #8
  br label %_rtl92ce_set_bcn_ctrl_reg.exit776

_rtl92ce_set_bcn_ctrl_reg.exit776:                ; preds = %if.then.i.i775, %rtl_write_byte.exit764._rtl92ce_set_bcn_ctrl_reg.exit776_crit_edge
  %534 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i778 = getelementptr inbounds %struct.rtl_priv, ptr %535, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %536 = ptrtoint ptr %reg_bcn_ctrl_val.i778 to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load i32, ptr %reg_bcn_ctrl_val.i778, align 4
  %and.i779 = and i32 %537, -17
  store i32 %and.i779, ptr %reg_bcn_ctrl_val.i778, align 4
  %conv6.i780 = trunc i32 %and.i779 to i8
  %write8_async.i.i781 = getelementptr inbounds %struct.rtl_priv, ptr %535, i32 0, i32 13, i32 5
  %538 = ptrtoint ptr %write8_async.i.i781 to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %write8_async.i.i781, align 4
  tail call void %539(ptr noundef %535, i32 noundef 1360, i8 noundef zeroext %conv6.i780) #8
  %cfg.i.i782 = getelementptr inbounds %struct.rtl_priv, ptr %535, i32 0, i32 32
  %540 = ptrtoint ptr %cfg.i.i782 to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %cfg.i.i782, align 8
  %write_readback.i.i783 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %541, i32 0, i32 1
  %542 = ptrtoint ptr %write_readback.i.i783 to i32
  call void @__asan_load1_noabort(i32 %542)
  %543 = load i8, ptr %write_readback.i.i783, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %543)
  %tobool.not.i.i784 = icmp eq i8 %543, 0
  br i1 %tobool.not.i.i784, label %_rtl92ce_set_bcn_ctrl_reg.exit776._rtl92ce_set_bcn_ctrl_reg.exit788_crit_edge, label %if.then.i.i787

_rtl92ce_set_bcn_ctrl_reg.exit776._rtl92ce_set_bcn_ctrl_reg.exit788_crit_edge: ; preds = %_rtl92ce_set_bcn_ctrl_reg.exit776
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ce_set_bcn_ctrl_reg.exit788

if.then.i.i787:                                   ; preds = %_rtl92ce_set_bcn_ctrl_reg.exit776
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i785 = getelementptr inbounds %struct.rtl_priv, ptr %535, i32 0, i32 13, i32 9
  %544 = ptrtoint ptr %read8_sync.i.i785 to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %read8_sync.i.i785, align 4
  %call.i.i786 = tail call zeroext i8 %545(ptr noundef %535, i32 noundef 1360) #8
  br label %_rtl92ce_set_bcn_ctrl_reg.exit788

_rtl92ce_set_bcn_ctrl_reg.exit788:                ; preds = %if.then.i.i787, %_rtl92ce_set_bcn_ctrl_reg.exit776._rtl92ce_set_bcn_ctrl_reg.exit788_crit_edge
  br i1 %tobool290.not, label %_rtl92ce_set_bcn_ctrl_reg.exit788.if.end298_crit_edge, label %if.then297

_rtl92ce_set_bcn_ctrl_reg.exit788.if.end298_crit_edge: ; preds = %_rtl92ce_set_bcn_ctrl_reg.exit788
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end298

if.then297:                                       ; preds = %_rtl92ce_set_bcn_ctrl_reg.exit788
  %546 = ptrtoint ptr %write8_async.i736 to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load ptr, ptr %write8_async.i736, align 4
  tail call void %547(ptr noundef %1, i32 noundef 1058, i8 noundef zeroext %call.i756) #8
  %548 = ptrtoint ptr %cfg280 to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load ptr, ptr %cfg280, align 8
  %write_readback.i791 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %549, i32 0, i32 1
  %550 = ptrtoint ptr %write_readback.i791 to i32
  call void @__asan_load1_noabort(i32 %550)
  %551 = load i8, ptr %write_readback.i791, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %551)
  %tobool.not.i792 = icmp eq i8 %551, 0
  br i1 %tobool.not.i792, label %if.then297.if.end298_crit_edge, label %if.then.i795

if.then297.if.end298_crit_edge:                   ; preds = %if.then297
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end298

if.then.i795:                                     ; preds = %if.then297
  call void @__sanitizer_cov_trace_pc() #10
  %552 = ptrtoint ptr %read8_sync.i734 to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %read8_sync.i734, align 4
  %call.i794 = tail call zeroext i8 %553(ptr noundef %1, i32 noundef 1058) #8
  br label %if.end298

if.end298:                                        ; preds = %if.then.i795, %if.then297.if.end298_crit_edge, %_rtl92ce_set_bcn_ctrl_reg.exit788.if.end298_crit_edge
  %554 = and i8 %call.i735, -2
  %555 = ptrtoint ptr %write8_async.i736 to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load ptr, ptr %write8_async.i736, align 4
  tail call void %556(ptr noundef %1, i32 noundef 257, i8 noundef zeroext %554) #8
  %557 = ptrtoint ptr %cfg280 to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load ptr, ptr %cfg280, align 8
  %write_readback.i799 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %558, i32 0, i32 1
  %559 = ptrtoint ptr %write_readback.i799 to i32
  call void @__asan_load1_noabort(i32 %559)
  %560 = load i8, ptr %write_readback.i799, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %560)
  %tobool.not.i800 = icmp eq i8 %560, 0
  br i1 %tobool.not.i800, label %if.end298.if.end302_crit_edge, label %if.then.i803

if.end298.if.end302_crit_edge:                    ; preds = %if.end298
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end302

if.then.i803:                                     ; preds = %if.end298
  call void @__sanitizer_cov_trace_pc() #10
  %561 = ptrtoint ptr %read8_sync.i734 to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load ptr, ptr %read8_sync.i734, align 4
  %call.i802 = tail call zeroext i8 %562(ptr noundef %1, i32 noundef 257) #8
  br label %if.end302

if.end302:                                        ; preds = %if.then.i803, %if.end298.if.end302_crit_edge, %sw.bb275.if.end302_crit_edge
  %563 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %563)
  %564 = load i8, ptr %val, align 1
  tail call void @rtl92c_set_fw_joinbss_report_cmd(ptr noundef %hw, i8 noundef zeroext %564) #8
  br label %sw.epilog364

sw.bb303:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %565 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %565)
  %566 = load i8, ptr %val, align 1
  tail call void @rtl92c_set_p2p_ps_offload_cmd(ptr noundef %hw, i8 noundef zeroext %566) #8
  br label %sw.epilog364

sw.bb304:                                         ; preds = %entry
  %read16_sync.i805 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %567 = ptrtoint ptr %read16_sync.i805 to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load ptr, ptr %read16_sync.i805, align 4
  %call.i806 = tail call zeroext i16 %568(ptr noundef %1, i32 noundef 1704) #8
  %569 = and i16 %call.i806, -16384
  %assoc_id = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 52
  %570 = ptrtoint ptr %assoc_id to i32
  call void @__asan_load2_noabort(i32 %570)
  %571 = load i16, ptr %assoc_id, align 2
  %or311554 = or i16 %569, %571
  %write16_async.i807 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %572 = ptrtoint ptr %write16_async.i807 to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load ptr, ptr %write16_async.i807, align 4
  tail call void %573(ptr noundef %1, i32 noundef 1704, i16 noundef zeroext %or311554) #8
  %cfg.i808 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %574 = ptrtoint ptr %cfg.i808 to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load ptr, ptr %cfg.i808, align 8
  %write_readback.i809 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %575, i32 0, i32 1
  %576 = ptrtoint ptr %write_readback.i809 to i32
  call void @__asan_load1_noabort(i32 %576)
  %577 = load i8, ptr %write_readback.i809, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %577)
  %tobool.not.i810 = icmp eq i8 %577, 0
  br i1 %tobool.not.i810, label %sw.bb304.sw.epilog364_crit_edge, label %if.then.i813

sw.bb304.sw.epilog364_crit_edge:                  ; preds = %sw.bb304
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog364

if.then.i813:                                     ; preds = %sw.bb304
  call void @__sanitizer_cov_trace_pc() #10
  %578 = ptrtoint ptr %read16_sync.i805 to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load ptr, ptr %read16_sync.i805, align 4
  %call.i812 = tail call zeroext i16 %579(ptr noundef %1, i32 noundef 1704) #8
  br label %sw.epilog364

sw.bb313:                                         ; preds = %entry
  %580 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %580)
  %581 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %581)
  %tobool315.not = icmp eq i8 %581, 0
  br i1 %tobool315.not, label %if.end326.critedge, label %if.then316

if.then316:                                       ; preds = %sw.bb313
  %read8_sync.i.i816 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %582 = ptrtoint ptr %read8_sync.i.i816 to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load ptr, ptr %read8_sync.i.i816, align 4
  %call.i.i817 = tail call zeroext i8 %583(ptr noundef %1, i32 noundef 1058) #8
  %584 = and i8 %call.i.i817, -65
  %write8_async.i.i818 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %585 = ptrtoint ptr %write8_async.i.i818 to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load ptr, ptr %write8_async.i.i818, align 4
  tail call void %586(ptr noundef %1, i32 noundef 1058, i8 noundef zeroext %584) #8
  %cfg.i.i819 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %587 = ptrtoint ptr %cfg.i.i819 to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load ptr, ptr %cfg.i.i819, align 8
  %write_readback.i.i820 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %588, i32 0, i32 1
  %589 = ptrtoint ptr %write_readback.i.i820 to i32
  call void @__asan_load1_noabort(i32 %589)
  %590 = load i8, ptr %write_readback.i.i820, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %590)
  %tobool.not.i.i821 = icmp eq i8 %590, 0
  br i1 %tobool.not.i.i821, label %if.then316.rtl_write_byte.exit.i_crit_edge, label %if.then.i.i822

if.then316.rtl_write_byte.exit.i_crit_edge:       ; preds = %if.then316
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit.i

if.then.i.i822:                                   ; preds = %if.then316
  call void @__sanitizer_cov_trace_pc() #10
  %591 = ptrtoint ptr %read8_sync.i.i816 to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load ptr, ptr %read8_sync.i.i816, align 4
  %call.i13.i = tail call zeroext i8 %592(ptr noundef %1, i32 noundef 1058) #8
  br label %rtl_write_byte.exit.i

rtl_write_byte.exit.i:                            ; preds = %if.then.i.i822, %if.then316.rtl_write_byte.exit.i_crit_edge
  %593 = ptrtoint ptr %write8_async.i.i818 to i32
  call void @__asan_load4_noabort(i32 %593)
  %594 = load ptr, ptr %write8_async.i.i818, align 4
  tail call void %594(ptr noundef %1, i32 noundef 1345, i8 noundef zeroext 100) #8
  %595 = ptrtoint ptr %cfg.i.i819 to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load ptr, ptr %cfg.i.i819, align 8
  %write_readback.i16.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %596, i32 0, i32 1
  %597 = ptrtoint ptr %write_readback.i16.i to i32
  call void @__asan_load1_noabort(i32 %597)
  %598 = load i8, ptr %write_readback.i16.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %598)
  %tobool.not.i17.i = icmp eq i8 %598, 0
  br i1 %tobool.not.i17.i, label %rtl_write_byte.exit.i.rtl_write_byte.exit21.i_crit_edge, label %if.then.i20.i

rtl_write_byte.exit.i.rtl_write_byte.exit21.i_crit_edge: ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit21.i

if.then.i20.i:                                    ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %599 = ptrtoint ptr %read8_sync.i.i816 to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load ptr, ptr %read8_sync.i.i816, align 4
  %call.i19.i = tail call zeroext i8 %600(ptr noundef %1, i32 noundef 1345) #8
  br label %rtl_write_byte.exit21.i

rtl_write_byte.exit21.i:                          ; preds = %if.then.i20.i, %rtl_write_byte.exit.i.rtl_write_byte.exit21.i_crit_edge
  %601 = ptrtoint ptr %read8_sync.i.i816 to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load ptr, ptr %read8_sync.i.i816, align 4
  %call.i23.i = tail call zeroext i8 %602(ptr noundef %1, i32 noundef 1346) #8
  %603 = and i8 %call.i23.i, -2
  %604 = ptrtoint ptr %write8_async.i.i818 to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load ptr, ptr %write8_async.i.i818, align 4
  tail call void %605(ptr noundef %1, i32 noundef 1346, i8 noundef zeroext %603) #8
  %606 = ptrtoint ptr %cfg.i.i819 to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load ptr, ptr %cfg.i.i819, align 8
  %write_readback.i26.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %607, i32 0, i32 1
  %608 = ptrtoint ptr %write_readback.i26.i to i32
  call void @__asan_load1_noabort(i32 %608)
  %609 = load i8, ptr %write_readback.i26.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %609)
  %tobool.not.i27.i = icmp eq i8 %609, 0
  br i1 %tobool.not.i27.i, label %rtl_write_byte.exit21.i._rtl92ce_stop_tx_beacon.exit_crit_edge, label %if.then.i30.i

rtl_write_byte.exit21.i._rtl92ce_stop_tx_beacon.exit_crit_edge: ; preds = %rtl_write_byte.exit21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ce_stop_tx_beacon.exit

if.then.i30.i:                                    ; preds = %rtl_write_byte.exit21.i
  call void @__sanitizer_cov_trace_pc() #10
  %610 = ptrtoint ptr %read8_sync.i.i816 to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load ptr, ptr %read8_sync.i.i816, align 4
  %call.i29.i = tail call zeroext i8 %611(ptr noundef %1, i32 noundef 1346) #8
  br label %_rtl92ce_stop_tx_beacon.exit

_rtl92ce_stop_tx_beacon.exit:                     ; preds = %if.then.i30.i, %rtl_write_byte.exit21.i._rtl92ce_stop_tx_beacon.exit_crit_edge
  %612 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i824 = getelementptr inbounds %struct.rtl_priv, ptr %613, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %614 = ptrtoint ptr %reg_bcn_ctrl_val.i824 to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load i32, ptr %reg_bcn_ctrl_val.i824, align 4
  %and.i825 = and i32 %615, -9
  store i32 %and.i825, ptr %reg_bcn_ctrl_val.i824, align 4
  %conv6.i826 = trunc i32 %and.i825 to i8
  %write8_async.i.i827 = getelementptr inbounds %struct.rtl_priv, ptr %613, i32 0, i32 13, i32 5
  %616 = ptrtoint ptr %write8_async.i.i827 to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load ptr, ptr %write8_async.i.i827, align 4
  tail call void %617(ptr noundef %613, i32 noundef 1360, i8 noundef zeroext %conv6.i826) #8
  %cfg.i.i828 = getelementptr inbounds %struct.rtl_priv, ptr %613, i32 0, i32 32
  %618 = ptrtoint ptr %cfg.i.i828 to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load ptr, ptr %cfg.i.i828, align 8
  %write_readback.i.i829 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %619, i32 0, i32 1
  %620 = ptrtoint ptr %write_readback.i.i829 to i32
  call void @__asan_load1_noabort(i32 %620)
  %621 = load i8, ptr %write_readback.i.i829, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %621)
  %tobool.not.i.i830 = icmp eq i8 %621, 0
  br i1 %tobool.not.i.i830, label %_rtl92ce_stop_tx_beacon.exit._rtl92ce_set_bcn_ctrl_reg.exit835_crit_edge, label %if.then.i.i833

_rtl92ce_stop_tx_beacon.exit._rtl92ce_set_bcn_ctrl_reg.exit835_crit_edge: ; preds = %_rtl92ce_stop_tx_beacon.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ce_set_bcn_ctrl_reg.exit835

if.then.i.i833:                                   ; preds = %_rtl92ce_stop_tx_beacon.exit
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i831 = getelementptr inbounds %struct.rtl_priv, ptr %613, i32 0, i32 13, i32 9
  %622 = ptrtoint ptr %read8_sync.i.i831 to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load ptr, ptr %read8_sync.i.i831, align 4
  %call.i.i832 = tail call zeroext i8 %623(ptr noundef %613, i32 noundef 1360) #8
  br label %_rtl92ce_set_bcn_ctrl_reg.exit835

_rtl92ce_set_bcn_ctrl_reg.exit835:                ; preds = %if.then.i.i833, %_rtl92ce_stop_tx_beacon.exit._rtl92ce_set_bcn_ctrl_reg.exit835_crit_edge
  %tsf.c = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 49
  %624 = ptrtoint ptr %tsf.c to i32
  call void @__asan_load8_noabort(i32 %624)
  %625 = load i64, ptr %tsf.c, align 8
  %conv319.c = trunc i64 %625 to i32
  %write32_async.i836 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %626 = ptrtoint ptr %write32_async.i836 to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load ptr, ptr %write32_async.i836, align 4
  tail call void %627(ptr noundef %1, i32 noundef 1376, i32 noundef %conv319.c) #8
  %628 = ptrtoint ptr %cfg.i.i819 to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load ptr, ptr %cfg.i.i819, align 8
  %write_readback.i838 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %629, i32 0, i32 1
  %630 = ptrtoint ptr %write_readback.i838 to i32
  call void @__asan_load1_noabort(i32 %630)
  %631 = load i8, ptr %write_readback.i838, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %631)
  %tobool.not.i839 = icmp eq i8 %631, 0
  br i1 %tobool.not.i839, label %_rtl92ce_set_bcn_ctrl_reg.exit835.rtl_write_dword.exit843_crit_edge, label %if.then.i842

_rtl92ce_set_bcn_ctrl_reg.exit835.rtl_write_dword.exit843_crit_edge: ; preds = %_rtl92ce_set_bcn_ctrl_reg.exit835
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit843

if.then.i842:                                     ; preds = %_rtl92ce_set_bcn_ctrl_reg.exit835
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i840 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %632 = ptrtoint ptr %read32_sync.i840 to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load ptr, ptr %read32_sync.i840, align 4
  %call.i841 = tail call i32 %633(ptr noundef %1, i32 noundef 1376) #8
  br label %rtl_write_dword.exit843

rtl_write_dword.exit843:                          ; preds = %if.then.i842, %_rtl92ce_set_bcn_ctrl_reg.exit835.rtl_write_dword.exit843_crit_edge
  %634 = ptrtoint ptr %tsf.c to i32
  call void @__asan_load8_noabort(i32 %634)
  %635 = load i64, ptr %tsf.c, align 8
  %shr321.c = lshr i64 %635, 32
  %conv323.c = trunc i64 %shr321.c to i32
  %636 = ptrtoint ptr %write32_async.i836 to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load ptr, ptr %write32_async.i836, align 4
  tail call void %637(ptr noundef %1, i32 noundef 1380, i32 noundef %conv323.c) #8
  %638 = ptrtoint ptr %cfg.i.i819 to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load ptr, ptr %cfg.i.i819, align 8
  %write_readback.i846 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %639, i32 0, i32 1
  %640 = ptrtoint ptr %write_readback.i846 to i32
  call void @__asan_load1_noabort(i32 %640)
  %641 = load i8, ptr %write_readback.i846, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %641)
  %tobool.not.i847 = icmp eq i8 %641, 0
  br i1 %tobool.not.i847, label %rtl_write_dword.exit843.rtl_write_dword.exit851_crit_edge, label %if.then.i850

rtl_write_dword.exit843.rtl_write_dword.exit851_crit_edge: ; preds = %rtl_write_dword.exit843
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit851

if.then.i850:                                     ; preds = %rtl_write_dword.exit843
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i848 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %642 = ptrtoint ptr %read32_sync.i848 to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load ptr, ptr %read32_sync.i848, align 4
  %call.i849 = tail call i32 %643(ptr noundef %1, i32 noundef 1380) #8
  br label %rtl_write_dword.exit851

rtl_write_dword.exit851:                          ; preds = %if.then.i850, %rtl_write_dword.exit843.rtl_write_dword.exit851_crit_edge
  %644 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %644)
  %645 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i853 = getelementptr inbounds %struct.rtl_priv, ptr %645, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %646 = ptrtoint ptr %reg_bcn_ctrl_val.i853 to i32
  call void @__asan_load4_noabort(i32 %646)
  %647 = load i32, ptr %reg_bcn_ctrl_val.i853, align 4
  %or.i854 = or i32 %647, 8
  store i32 %or.i854, ptr %reg_bcn_ctrl_val.i853, align 4
  %conv6.i855 = trunc i32 %or.i854 to i8
  %write8_async.i.i856 = getelementptr inbounds %struct.rtl_priv, ptr %645, i32 0, i32 13, i32 5
  %648 = ptrtoint ptr %write8_async.i.i856 to i32
  call void @__asan_load4_noabort(i32 %648)
  %649 = load ptr, ptr %write8_async.i.i856, align 4
  tail call void %649(ptr noundef %645, i32 noundef 1360, i8 noundef zeroext %conv6.i855) #8
  %cfg.i.i857 = getelementptr inbounds %struct.rtl_priv, ptr %645, i32 0, i32 32
  %650 = ptrtoint ptr %cfg.i.i857 to i32
  call void @__asan_load4_noabort(i32 %650)
  %651 = load ptr, ptr %cfg.i.i857, align 8
  %write_readback.i.i858 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %651, i32 0, i32 1
  %652 = ptrtoint ptr %write_readback.i.i858 to i32
  call void @__asan_load1_noabort(i32 %652)
  %653 = load i8, ptr %write_readback.i.i858, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %653)
  %tobool.not.i.i859 = icmp eq i8 %653, 0
  br i1 %tobool.not.i.i859, label %rtl_write_dword.exit851._rtl92ce_set_bcn_ctrl_reg.exit864_crit_edge, label %if.then.i.i862

rtl_write_dword.exit851._rtl92ce_set_bcn_ctrl_reg.exit864_crit_edge: ; preds = %rtl_write_dword.exit851
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ce_set_bcn_ctrl_reg.exit864

if.then.i.i862:                                   ; preds = %rtl_write_dword.exit851
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i860 = getelementptr inbounds %struct.rtl_priv, ptr %645, i32 0, i32 13, i32 9
  %654 = ptrtoint ptr %read8_sync.i.i860 to i32
  call void @__asan_load4_noabort(i32 %654)
  %655 = load ptr, ptr %read8_sync.i.i860, align 4
  %call.i.i861 = tail call zeroext i8 %655(ptr noundef %645, i32 noundef 1360) #8
  br label %_rtl92ce_set_bcn_ctrl_reg.exit864

_rtl92ce_set_bcn_ctrl_reg.exit864:                ; preds = %if.then.i.i862, %rtl_write_dword.exit851._rtl92ce_set_bcn_ctrl_reg.exit864_crit_edge
  %656 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %656)
  %657 = load ptr, ptr %priv, align 8
  %read8_sync.i.i866 = getelementptr inbounds %struct.rtl_priv, ptr %657, i32 0, i32 13, i32 9
  %658 = ptrtoint ptr %read8_sync.i.i866 to i32
  call void @__asan_load4_noabort(i32 %658)
  %659 = load ptr, ptr %read8_sync.i.i866, align 4
  %call.i.i867 = tail call zeroext i8 %659(ptr noundef %657, i32 noundef 1058) #8
  %660 = or i8 %call.i.i867, 64
  %write8_async.i.i868 = getelementptr inbounds %struct.rtl_priv, ptr %657, i32 0, i32 13, i32 5
  %661 = ptrtoint ptr %write8_async.i.i868 to i32
  call void @__asan_load4_noabort(i32 %661)
  %662 = load ptr, ptr %write8_async.i.i868, align 4
  tail call void %662(ptr noundef %657, i32 noundef 1058, i8 noundef zeroext %660) #8
  %cfg.i.i869 = getelementptr inbounds %struct.rtl_priv, ptr %657, i32 0, i32 32
  %663 = ptrtoint ptr %cfg.i.i869 to i32
  call void @__asan_load4_noabort(i32 %663)
  %664 = load ptr, ptr %cfg.i.i869, align 8
  %write_readback.i.i870 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %664, i32 0, i32 1
  %665 = ptrtoint ptr %write_readback.i.i870 to i32
  call void @__asan_load1_noabort(i32 %665)
  %666 = load i8, ptr %write_readback.i.i870, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %666)
  %tobool.not.i.i871 = icmp eq i8 %666, 0
  br i1 %tobool.not.i.i871, label %_rtl92ce_set_bcn_ctrl_reg.exit864.rtl_write_byte.exit.i876_crit_edge, label %if.then.i.i873

_rtl92ce_set_bcn_ctrl_reg.exit864.rtl_write_byte.exit.i876_crit_edge: ; preds = %_rtl92ce_set_bcn_ctrl_reg.exit864
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit.i876

if.then.i.i873:                                   ; preds = %_rtl92ce_set_bcn_ctrl_reg.exit864
  call void @__sanitizer_cov_trace_pc() #10
  %667 = ptrtoint ptr %read8_sync.i.i866 to i32
  call void @__asan_load4_noabort(i32 %667)
  %668 = load ptr, ptr %read8_sync.i.i866, align 4
  %call.i13.i872 = tail call zeroext i8 %668(ptr noundef %657, i32 noundef 1058) #8
  br label %rtl_write_byte.exit.i876

rtl_write_byte.exit.i876:                         ; preds = %if.then.i.i873, %_rtl92ce_set_bcn_ctrl_reg.exit864.rtl_write_byte.exit.i876_crit_edge
  %669 = ptrtoint ptr %write8_async.i.i868 to i32
  call void @__asan_load4_noabort(i32 %669)
  %670 = load ptr, ptr %write8_async.i.i868, align 4
  tail call void %670(ptr noundef %657, i32 noundef 1345, i8 noundef zeroext -1) #8
  %671 = ptrtoint ptr %cfg.i.i869 to i32
  call void @__asan_load4_noabort(i32 %671)
  %672 = load ptr, ptr %cfg.i.i869, align 8
  %write_readback.i16.i874 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %672, i32 0, i32 1
  %673 = ptrtoint ptr %write_readback.i16.i874 to i32
  call void @__asan_load1_noabort(i32 %673)
  %674 = load i8, ptr %write_readback.i16.i874, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %674)
  %tobool.not.i17.i875 = icmp eq i8 %674, 0
  br i1 %tobool.not.i17.i875, label %rtl_write_byte.exit.i876.rtl_write_byte.exit21.i882_crit_edge, label %if.then.i20.i878

rtl_write_byte.exit.i876.rtl_write_byte.exit21.i882_crit_edge: ; preds = %rtl_write_byte.exit.i876
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit21.i882

if.then.i20.i878:                                 ; preds = %rtl_write_byte.exit.i876
  call void @__sanitizer_cov_trace_pc() #10
  %675 = ptrtoint ptr %read8_sync.i.i866 to i32
  call void @__asan_load4_noabort(i32 %675)
  %676 = load ptr, ptr %read8_sync.i.i866, align 4
  %call.i19.i877 = tail call zeroext i8 %676(ptr noundef %657, i32 noundef 1345) #8
  br label %rtl_write_byte.exit21.i882

rtl_write_byte.exit21.i882:                       ; preds = %if.then.i20.i878, %rtl_write_byte.exit.i876.rtl_write_byte.exit21.i882_crit_edge
  %677 = ptrtoint ptr %read8_sync.i.i866 to i32
  call void @__asan_load4_noabort(i32 %677)
  %678 = load ptr, ptr %read8_sync.i.i866, align 4
  %call.i23.i879 = tail call zeroext i8 %678(ptr noundef %657, i32 noundef 1346) #8
  %679 = or i8 %call.i23.i879, 1
  %680 = ptrtoint ptr %write8_async.i.i868 to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load ptr, ptr %write8_async.i.i868, align 4
  tail call void %681(ptr noundef %657, i32 noundef 1346, i8 noundef zeroext %679) #8
  %682 = ptrtoint ptr %cfg.i.i869 to i32
  call void @__asan_load4_noabort(i32 %682)
  %683 = load ptr, ptr %cfg.i.i869, align 8
  %write_readback.i26.i880 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %683, i32 0, i32 1
  %684 = ptrtoint ptr %write_readback.i26.i880 to i32
  call void @__asan_load1_noabort(i32 %684)
  %685 = load i8, ptr %write_readback.i26.i880, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %685)
  %tobool.not.i27.i881 = icmp eq i8 %685, 0
  br i1 %tobool.not.i27.i881, label %rtl_write_byte.exit21.i882.sw.epilog364_crit_edge, label %if.then.i30.i884

rtl_write_byte.exit21.i882.sw.epilog364_crit_edge: ; preds = %rtl_write_byte.exit21.i882
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog364

if.then.i30.i884:                                 ; preds = %rtl_write_byte.exit21.i882
  call void @__sanitizer_cov_trace_pc() #10
  %686 = ptrtoint ptr %read8_sync.i.i866 to i32
  call void @__asan_load4_noabort(i32 %686)
  %687 = load ptr, ptr %read8_sync.i.i866, align 4
  %call.i29.i883 = tail call zeroext i8 %687(ptr noundef %657, i32 noundef 1346) #8
  br label %sw.epilog364

if.end326.critedge:                               ; preds = %sw.bb313
  %reg_bcn_ctrl_val.i886 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %688 = ptrtoint ptr %reg_bcn_ctrl_val.i886 to i32
  call void @__asan_load4_noabort(i32 %688)
  %689 = load i32, ptr %reg_bcn_ctrl_val.i886, align 4
  %and.i887 = and i32 %689, -9
  store i32 %and.i887, ptr %reg_bcn_ctrl_val.i886, align 4
  %conv6.i888 = trunc i32 %and.i887 to i8
  %write8_async.i.i889 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %690 = ptrtoint ptr %write8_async.i.i889 to i32
  call void @__asan_load4_noabort(i32 %690)
  %691 = load ptr, ptr %write8_async.i.i889, align 4
  tail call void %691(ptr noundef %1, i32 noundef 1360, i8 noundef zeroext %conv6.i888) #8
  %cfg.i.i890 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %692 = ptrtoint ptr %cfg.i.i890 to i32
  call void @__asan_load4_noabort(i32 %692)
  %693 = load ptr, ptr %cfg.i.i890, align 8
  %write_readback.i.i891 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %693, i32 0, i32 1
  %694 = ptrtoint ptr %write_readback.i.i891 to i32
  call void @__asan_load1_noabort(i32 %694)
  %695 = load i8, ptr %write_readback.i.i891, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %695)
  %tobool.not.i.i892 = icmp eq i8 %695, 0
  br i1 %tobool.not.i.i892, label %if.end326.critedge._rtl92ce_set_bcn_ctrl_reg.exit897_crit_edge, label %if.then.i.i895

if.end326.critedge._rtl92ce_set_bcn_ctrl_reg.exit897_crit_edge: ; preds = %if.end326.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ce_set_bcn_ctrl_reg.exit897

if.then.i.i895:                                   ; preds = %if.end326.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i893 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %696 = ptrtoint ptr %read8_sync.i.i893 to i32
  call void @__asan_load4_noabort(i32 %696)
  %697 = load ptr, ptr %read8_sync.i.i893, align 4
  %call.i.i894 = tail call zeroext i8 %697(ptr noundef %1, i32 noundef 1360) #8
  br label %_rtl92ce_set_bcn_ctrl_reg.exit897

_rtl92ce_set_bcn_ctrl_reg.exit897:                ; preds = %if.then.i.i895, %if.end326.critedge._rtl92ce_set_bcn_ctrl_reg.exit897_crit_edge
  %tsf.c556 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 49
  %698 = ptrtoint ptr %tsf.c556 to i32
  call void @__asan_load8_noabort(i32 %698)
  %699 = load i64, ptr %tsf.c556, align 8
  %conv319.c557 = trunc i64 %699 to i32
  %write32_async.i898 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %700 = ptrtoint ptr %write32_async.i898 to i32
  call void @__asan_load4_noabort(i32 %700)
  %701 = load ptr, ptr %write32_async.i898, align 4
  tail call void %701(ptr noundef %1, i32 noundef 1376, i32 noundef %conv319.c557) #8
  %702 = ptrtoint ptr %cfg.i.i890 to i32
  call void @__asan_load4_noabort(i32 %702)
  %703 = load ptr, ptr %cfg.i.i890, align 8
  %write_readback.i900 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %703, i32 0, i32 1
  %704 = ptrtoint ptr %write_readback.i900 to i32
  call void @__asan_load1_noabort(i32 %704)
  %705 = load i8, ptr %write_readback.i900, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %705)
  %tobool.not.i901 = icmp eq i8 %705, 0
  br i1 %tobool.not.i901, label %_rtl92ce_set_bcn_ctrl_reg.exit897.rtl_write_dword.exit905_crit_edge, label %if.then.i904

_rtl92ce_set_bcn_ctrl_reg.exit897.rtl_write_dword.exit905_crit_edge: ; preds = %_rtl92ce_set_bcn_ctrl_reg.exit897
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit905

if.then.i904:                                     ; preds = %_rtl92ce_set_bcn_ctrl_reg.exit897
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i902 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %706 = ptrtoint ptr %read32_sync.i902 to i32
  call void @__asan_load4_noabort(i32 %706)
  %707 = load ptr, ptr %read32_sync.i902, align 4
  %call.i903 = tail call i32 %707(ptr noundef %1, i32 noundef 1376) #8
  br label %rtl_write_dword.exit905

rtl_write_dword.exit905:                          ; preds = %if.then.i904, %_rtl92ce_set_bcn_ctrl_reg.exit897.rtl_write_dword.exit905_crit_edge
  %708 = ptrtoint ptr %tsf.c556 to i32
  call void @__asan_load8_noabort(i32 %708)
  %709 = load i64, ptr %tsf.c556, align 8
  %shr321.c558 = lshr i64 %709, 32
  %conv323.c559 = trunc i64 %shr321.c558 to i32
  %710 = ptrtoint ptr %write32_async.i898 to i32
  call void @__asan_load4_noabort(i32 %710)
  %711 = load ptr, ptr %write32_async.i898, align 4
  tail call void %711(ptr noundef %1, i32 noundef 1380, i32 noundef %conv323.c559) #8
  %712 = ptrtoint ptr %cfg.i.i890 to i32
  call void @__asan_load4_noabort(i32 %712)
  %713 = load ptr, ptr %cfg.i.i890, align 8
  %write_readback.i908 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %713, i32 0, i32 1
  %714 = ptrtoint ptr %write_readback.i908 to i32
  call void @__asan_load1_noabort(i32 %714)
  %715 = load i8, ptr %write_readback.i908, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %715)
  %tobool.not.i909 = icmp eq i8 %715, 0
  br i1 %tobool.not.i909, label %rtl_write_dword.exit905.rtl_write_dword.exit913_crit_edge, label %if.then.i912

rtl_write_dword.exit905.rtl_write_dword.exit913_crit_edge: ; preds = %rtl_write_dword.exit905
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit913

if.then.i912:                                     ; preds = %rtl_write_dword.exit905
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i910 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %716 = ptrtoint ptr %read32_sync.i910 to i32
  call void @__asan_load4_noabort(i32 %716)
  %717 = load ptr, ptr %read32_sync.i910, align 4
  %call.i911 = tail call i32 %717(ptr noundef %1, i32 noundef 1380) #8
  br label %rtl_write_dword.exit913

rtl_write_dword.exit913:                          ; preds = %if.then.i912, %rtl_write_dword.exit905.rtl_write_dword.exit913_crit_edge
  %718 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %718)
  %719 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i915 = getelementptr inbounds %struct.rtl_priv, ptr %719, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %720 = ptrtoint ptr %reg_bcn_ctrl_val.i915 to i32
  call void @__asan_load4_noabort(i32 %720)
  %721 = load i32, ptr %reg_bcn_ctrl_val.i915, align 4
  %or.i916 = or i32 %721, 8
  store i32 %or.i916, ptr %reg_bcn_ctrl_val.i915, align 4
  %conv6.i917 = trunc i32 %or.i916 to i8
  %write8_async.i.i918 = getelementptr inbounds %struct.rtl_priv, ptr %719, i32 0, i32 13, i32 5
  %722 = ptrtoint ptr %write8_async.i.i918 to i32
  call void @__asan_load4_noabort(i32 %722)
  %723 = load ptr, ptr %write8_async.i.i918, align 4
  tail call void %723(ptr noundef %719, i32 noundef 1360, i8 noundef zeroext %conv6.i917) #8
  %cfg.i.i919 = getelementptr inbounds %struct.rtl_priv, ptr %719, i32 0, i32 32
  %724 = ptrtoint ptr %cfg.i.i919 to i32
  call void @__asan_load4_noabort(i32 %724)
  %725 = load ptr, ptr %cfg.i.i919, align 8
  %write_readback.i.i920 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %725, i32 0, i32 1
  %726 = ptrtoint ptr %write_readback.i.i920 to i32
  call void @__asan_load1_noabort(i32 %726)
  %727 = load i8, ptr %write_readback.i.i920, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %727)
  %tobool.not.i.i921 = icmp eq i8 %727, 0
  br i1 %tobool.not.i.i921, label %rtl_write_dword.exit913.sw.epilog364_crit_edge, label %if.then.i.i924

rtl_write_dword.exit913.sw.epilog364_crit_edge:   ; preds = %rtl_write_dword.exit913
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog364

if.then.i.i924:                                   ; preds = %rtl_write_dword.exit913
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i922 = getelementptr inbounds %struct.rtl_priv, ptr %719, i32 0, i32 13, i32 9
  %728 = ptrtoint ptr %read8_sync.i.i922 to i32
  call void @__asan_load4_noabort(i32 %728)
  %729 = load ptr, ptr %read8_sync.i.i922, align 4
  %call.i.i923 = tail call zeroext i8 %729(ptr noundef %719, i32 noundef 1360) #8
  br label %sw.epilog364

sw.bb327:                                         ; preds = %entry
  %730 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %730)
  %731 = load i8, ptr %val, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %731)
  %tobool328.not = icmp eq i8 %731, 0
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rpwm_val330) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fw_pwrmode) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fw_current_inps) #8
  br i1 %tobool328.not, label %if.else342, label %if.then332

if.then332:                                       ; preds = %sw.bb327
  call void @__sanitizer_cov_trace_pc() #10
  %732 = ptrtoint ptr %rpwm_val330 to i32
  call void @__asan_store1_noabort(i32 %732)
  store i8 2, ptr %rpwm_val330, align 1
  %733 = ptrtoint ptr %fw_current_inps to i32
  call void @__asan_store1_noabort(i32 %733)
  store i8 1, ptr %fw_current_inps, align 1
  %cfg333 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %734 = ptrtoint ptr %cfg333 to i32
  call void @__asan_load4_noabort(i32 %734)
  %735 = load ptr, ptr %cfg333, align 8
  %ops334 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %735, i32 0, i32 4
  %736 = ptrtoint ptr %ops334 to i32
  call void @__asan_load4_noabort(i32 %736)
  %737 = load ptr, ptr %ops334, align 4
  %set_hw_reg335 = getelementptr inbounds %struct.rtl_hal_ops, ptr %737, i32 0, i32 20
  %738 = ptrtoint ptr %set_hw_reg335 to i32
  call void @__asan_load4_noabort(i32 %738)
  %739 = load ptr, ptr %set_hw_reg335, align 4
  call void %739(ptr noundef %hw, i8 noundef zeroext 65, ptr noundef nonnull %fw_current_inps) #8
  %740 = ptrtoint ptr %cfg333 to i32
  call void @__asan_load4_noabort(i32 %740)
  %741 = load ptr, ptr %cfg333, align 8
  %ops337 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %741, i32 0, i32 4
  %742 = ptrtoint ptr %ops337 to i32
  call void @__asan_load4_noabort(i32 %742)
  %743 = load ptr, ptr %ops337, align 4
  %set_hw_reg338 = getelementptr inbounds %struct.rtl_hal_ops, ptr %743, i32 0, i32 20
  %744 = ptrtoint ptr %set_hw_reg338 to i32
  call void @__asan_load4_noabort(i32 %744)
  %745 = load ptr, ptr %set_hw_reg338, align 4
  %fwctrl_psmode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 11
  call void %745(ptr noundef %hw, i8 noundef zeroext 61, ptr noundef %fwctrl_psmode) #8
  %746 = ptrtoint ptr %cfg333 to i32
  call void @__asan_load4_noabort(i32 %746)
  %747 = load ptr, ptr %cfg333, align 8
  %ops340 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %747, i32 0, i32 4
  %748 = ptrtoint ptr %ops340 to i32
  call void @__asan_load4_noabort(i32 %748)
  %749 = load ptr, ptr %ops340, align 4
  %set_hw_reg341 = getelementptr inbounds %struct.rtl_hal_ops, ptr %749, i32 0, i32 20
  %750 = ptrtoint ptr %set_hw_reg341 to i32
  call void @__asan_load4_noabort(i32 %750)
  %751 = load ptr, ptr %set_hw_reg341, align 4
  call void %751(ptr noundef %hw, i8 noundef zeroext 60, ptr noundef nonnull %rpwm_val330) #8
  br label %if.end352

if.else342:                                       ; preds = %sw.bb327
  call void @__sanitizer_cov_trace_pc() #10
  %752 = ptrtoint ptr %rpwm_val330 to i32
  call void @__asan_store1_noabort(i32 %752)
  store i8 12, ptr %rpwm_val330, align 1
  %753 = ptrtoint ptr %fw_pwrmode to i32
  call void @__asan_store1_noabort(i32 %753)
  store i8 0, ptr %fw_pwrmode, align 1
  %754 = ptrtoint ptr %fw_current_inps to i32
  call void @__asan_store1_noabort(i32 %754)
  store i8 0, ptr %fw_current_inps, align 1
  %cfg343 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %755 = ptrtoint ptr %cfg343 to i32
  call void @__asan_load4_noabort(i32 %755)
  %756 = load ptr, ptr %cfg343, align 8
  %ops344 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %756, i32 0, i32 4
  %757 = ptrtoint ptr %ops344 to i32
  call void @__asan_load4_noabort(i32 %757)
  %758 = load ptr, ptr %ops344, align 4
  %set_hw_reg345 = getelementptr inbounds %struct.rtl_hal_ops, ptr %758, i32 0, i32 20
  %759 = ptrtoint ptr %set_hw_reg345 to i32
  call void @__asan_load4_noabort(i32 %759)
  %760 = load ptr, ptr %set_hw_reg345, align 4
  call void %760(ptr noundef %hw, i8 noundef zeroext 60, ptr noundef nonnull %rpwm_val330) #8
  %761 = ptrtoint ptr %cfg343 to i32
  call void @__asan_load4_noabort(i32 %761)
  %762 = load ptr, ptr %cfg343, align 8
  %ops347 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %762, i32 0, i32 4
  %763 = ptrtoint ptr %ops347 to i32
  call void @__asan_load4_noabort(i32 %763)
  %764 = load ptr, ptr %ops347, align 4
  %set_hw_reg348 = getelementptr inbounds %struct.rtl_hal_ops, ptr %764, i32 0, i32 20
  %765 = ptrtoint ptr %set_hw_reg348 to i32
  call void @__asan_load4_noabort(i32 %765)
  %766 = load ptr, ptr %set_hw_reg348, align 4
  call void %766(ptr noundef %hw, i8 noundef zeroext 61, ptr noundef nonnull %fw_pwrmode) #8
  %767 = ptrtoint ptr %cfg343 to i32
  call void @__asan_load4_noabort(i32 %767)
  %768 = load ptr, ptr %cfg343, align 8
  %ops350 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %768, i32 0, i32 4
  %769 = ptrtoint ptr %ops350 to i32
  call void @__asan_load4_noabort(i32 %769)
  %770 = load ptr, ptr %ops350, align 4
  %set_hw_reg351 = getelementptr inbounds %struct.rtl_hal_ops, ptr %770, i32 0, i32 20
  %771 = ptrtoint ptr %set_hw_reg351 to i32
  call void @__asan_load4_noabort(i32 %771)
  %772 = load ptr, ptr %set_hw_reg351, align 4
  call void %772(ptr noundef %hw, i8 noundef zeroext 65, ptr noundef nonnull %fw_current_inps) #8
  br label %if.end352

if.end352:                                        ; preds = %if.else342, %if.then332
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fw_current_inps) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fw_pwrmode) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rpwm_val330) #8
  br label %sw.epilog364

sw.bb353:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %array) #8
  %773 = getelementptr inbounds [2 x i8], ptr %array, i32 0, i32 1
  %774 = ptrtoint ptr %array to i32
  call void @__asan_store1_noabort(i32 %774)
  store i8 -1, ptr %array, align 1
  %775 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %775)
  %776 = load i8, ptr %val, align 1
  %777 = ptrtoint ptr %773 to i32
  call void @__asan_store1_noabort(i32 %777)
  store i8 %776, ptr %773, align 1
  call void @rtl92c_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 48, i32 noundef 2, ptr noundef nonnull %array) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %array) #8
  br label %sw.epilog364

do.end360:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %variable to i32
  %call363 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %conv) #11
  br label %sw.epilog364

sw.epilog364:                                     ; preds = %do.end360, %sw.bb353, %if.end352, %if.then.i.i924, %rtl_write_dword.exit913.sw.epilog364_crit_edge, %if.then.i30.i884, %rtl_write_byte.exit21.i882.sw.epilog364_crit_edge, %if.then.i813, %sw.bb304.sw.epilog364_crit_edge, %sw.bb303, %if.end302, %sw.bb273, %if.end272, %if.then.i732, %if.else256.sw.epilog364_crit_edge, %if.then.i724, %if.then255.sw.epilog364_crit_edge, %if.then.i714, %sw.bb249.sw.epilog364_crit_edge, %sw.bb247, %sw.bb246, %sw.bb245, %if.then.i706, %sw.bb244.sw.epilog364_crit_edge, %if.then.i698, %sw.bb236.sw.epilog364_crit_edge, %rtl_write_dword.exit, %if.then.i685, %if.end231.sw.epilog364_crit_edge, %if.end187, %if.end178, %if.then.i667, %sw.bb92.sw.epilog364_crit_edge, %if.then.i659, %if.end81.sw.epilog364_crit_edge, %sw.bb71.sw.epilog364_crit_edge, %if.then.i651, %sw.bb60.sw.epilog364_crit_edge, %for.end59, %if.then.i635, %if.else.sw.epilog364_crit_edge, %if.then.i628, %if.then.sw.epilog364_crit_edge, %if.then.i590.5, %rtl_write_byte.exit591.4.sw.epilog364_crit_edge, %if.then.i582, %while.end.sw.epilog364_crit_edge, %if.then.i.5, %rtl_write_byte.exit.4.sw.epilog364_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92c_dm_init_edca_turbo(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92c_phy_set_io_cmd(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92c_dm_rf_saving(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92c_set_fw_pwrmode_cmd(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92c_set_fw_rsvdpagepkt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92c_set_fw_joinbss_report_cmd(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92c_set_p2p_ps_offload_cmd(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92c_fill_h2c_cmd(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ce_enable_hw_security_config(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %sec_reg_value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sec_reg_value) #8
  %pairwise_enc_algorithm = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 3
  %2 = ptrtoint ptr %pairwise_enc_algorithm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pairwise_enc_algorithm, align 4
  %group_enc_algorithm = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 4
  %4 = ptrtoint ptr %group_enc_algorithm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %group_enc_algorithm, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.13, i32 noundef %3, i32 noundef %5) #8
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
  %11 = load i8, ptr %sw_crypto, align 8, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %sec = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 16
  %12 = ptrtoint ptr %sec to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %sec, align 8, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool3.not = icmp eq i8 %13, 0
  br i1 %tobool3.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 3, ptr noundef nonnull @.str.14) #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %use_defaultkey = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 2
  %14 = ptrtoint ptr %use_defaultkey to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %use_defaultkey, align 2, !range !200
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
  tail call void %19(ptr noundef %1, i32 noundef 257, i8 noundef zeroext 2) #8
  %20 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cfg, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %write_readback.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i, label %if.end.rtl_write_byte.exit_crit_edge, label %if.then.i

if.end.rtl_write_byte.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %24 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %25(ptr noundef %1, i32 noundef 257) #8
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %if.end.rtl_write_byte.exit_crit_edge
  %26 = ptrtoint ptr %sec_reg_value to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %sec_reg_value, align 1
  %conv15 = zext i8 %27 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 4, ptr noundef nonnull @.str.15, i32 noundef %conv15) #8
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
  call void %33(ptr noundef %hw, i8 noundef zeroext 27, ptr noundef nonnull %sec_reg_value) #8
  br label %cleanup

cleanup:                                          ; preds = %rtl_write_byte.exit, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sec_reg_value) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl92ce_hw_init(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mac80211 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9
  %being_init_adapter = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 2
  %2 = ptrtoint ptr %being_init_adapter to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %being_init_adapter, align 4
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !201
  tail call void @trace_hardirqs_on() #8
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !202
  %fw_ready = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 38
  %4 = ptrtoint ptr %fw_ready to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %fw_ready, align 2
  %intf_ops = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 33
  %5 = ptrtoint ptr %intf_ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %intf_ops, align 4
  %disable_aspm = getelementptr inbounds %struct.rtl_intf_ops, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %disable_aspm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %disable_aspm, align 4
  tail call void %8(ptr noundef %hw) #8
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 8
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 13, i32 5
  %11 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %12(ptr noundef %10, i32 noundef 28, i8 noundef zeroext 0) #8
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 32
  %13 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %write_readback.i.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i.i, label %entry.rtl_write_byte.exit.i_crit_edge, label %if.then.i.i

entry.rtl_write_byte.exit.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 13, i32 9
  %17 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = tail call zeroext i8 %18(ptr noundef %10, i32 noundef 28) #8
  br label %rtl_write_byte.exit.i

rtl_write_byte.exit.i:                            ; preds = %if.then.i.i, %entry.rtl_write_byte.exit.i_crit_edge
  %bt_coexistence.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 49, i32 9
  %19 = ptrtoint ptr %bt_coexistence.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bt_coexistence.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i, label %rtl_write_byte.exit.i.if.end.i_crit_edge, label %if.then.i

rtl_write_byte.exit.i.if.end.i_crit_edge:         ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %rtl_write_byte.exit.i
  %read32_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 13, i32 11
  %21 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i187.i = tail call i32 %22(ptr noundef %10, i32 noundef 4) #8
  %or.i = or i32 %call.i187.i, -1744830464
  %write32_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 13, i32 7
  %23 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %24(ptr noundef %10, i32 noundef 4, i32 noundef %or.i) #8
  %25 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i189.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %write_readback.i189.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %write_readback.i189.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i190.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i190.i, label %if.then.i.if.end.i_crit_edge, label %if.then.i193.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i193.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i192.i = tail call i32 %30(ptr noundef %10, i32 noundef 4) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i193.i, %if.then.i.if.end.i_crit_edge, %rtl_write_byte.exit.i.if.end.i_crit_edge
  %31 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %32(ptr noundef %10, i32 noundef 17, i8 noundef zeroext 43) #8
  %33 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i196.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %write_readback.i196.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %write_readback.i196.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i197.i = icmp eq i8 %36, 0
  br i1 %tobool.not.i197.i, label %if.end.i.rtl_write_byte.exit201.i_crit_edge, label %if.then.i200.i

if.end.i.rtl_write_byte.exit201.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit201.i

if.then.i200.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i198.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 13, i32 9
  %37 = ptrtoint ptr %read8_sync.i198.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read8_sync.i198.i, align 4
  %call.i199.i = tail call zeroext i8 %38(ptr noundef %10, i32 noundef 17) #8
  br label %rtl_write_byte.exit201.i

rtl_write_byte.exit201.i:                         ; preds = %if.then.i200.i, %if.end.i.rtl_write_byte.exit201.i_crit_edge
  %39 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %40(ptr noundef %10, i32 noundef 36, i8 noundef zeroext 15) #8
  %41 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i204.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %write_readback.i204.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %write_readback.i204.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i205.i = icmp eq i8 %44, 0
  br i1 %tobool.not.i205.i, label %rtl_write_byte.exit201.i.rtl_write_byte.exit209.i_crit_edge, label %if.then.i208.i

rtl_write_byte.exit201.i.rtl_write_byte.exit209.i_crit_edge: ; preds = %rtl_write_byte.exit201.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit209.i

if.then.i208.i:                                   ; preds = %rtl_write_byte.exit201.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i206.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 13, i32 9
  %45 = ptrtoint ptr %read8_sync.i206.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %read8_sync.i206.i, align 4
  %call.i207.i = tail call zeroext i8 %46(ptr noundef %10, i32 noundef 36) #8
  br label %rtl_write_byte.exit209.i

rtl_write_byte.exit209.i:                         ; preds = %if.then.i208.i, %rtl_write_byte.exit201.i.rtl_write_byte.exit209.i_crit_edge
  %47 = ptrtoint ptr %bt_coexistence.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %bt_coexistence.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool7.not.i = icmp eq i8 %48, 0
  br i1 %tobool7.not.i, label %rtl_write_byte.exit209.i.if.end10.i_crit_edge, label %if.then8.i

rtl_write_byte.exit209.i.if.end10.i_crit_edge:    ; preds = %rtl_write_byte.exit209.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

if.then8.i:                                       ; preds = %rtl_write_byte.exit209.i
  %read32_sync.i210.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 13, i32 11
  %49 = ptrtoint ptr %read32_sync.i210.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %read32_sync.i210.i, align 4
  %call.i211.i = tail call i32 %50(ptr noundef %10, i32 noundef 36) #8
  %and.i = and i32 %call.i211.i, -149505
  %write32_async.i212.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 13, i32 7
  %51 = ptrtoint ptr %write32_async.i212.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write32_async.i212.i, align 4
  tail call void %52(ptr noundef %10, i32 noundef 36, i32 noundef %and.i) #8
  %53 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i214.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %write_readback.i214.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %write_readback.i214.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i215.i = icmp eq i8 %56, 0
  br i1 %tobool.not.i215.i, label %if.then8.i.if.end10.i_crit_edge, label %if.then.i218.i

if.then8.i.if.end10.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

if.then.i218.i:                                   ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %read32_sync.i210.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %read32_sync.i210.i, align 4
  %call.i217.i = tail call i32 %58(ptr noundef %10, i32 noundef 36) #8
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then.i218.i, %if.then8.i.if.end10.i_crit_edge, %rtl_write_byte.exit209.i.if.end10.i_crit_edge
  %read8_sync.i220.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 13, i32 9
  %59 = ptrtoint ptr %read8_sync.i220.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %read8_sync.i220.i, align 4
  %call.i221.i = tail call zeroext i8 %60(ptr noundef %10, i32 noundef 5) #8
  %61 = or i8 %call.i221.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 429496) #8
  %63 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %64(ptr noundef %10, i32 noundef 5, i8 noundef zeroext %61) #8
  %65 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i224.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %write_readback.i224.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %write_readback.i224.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.not.i225.i = icmp eq i8 %68, 0
  br i1 %tobool.not.i225.i, label %if.end10.i.rtl_write_byte.exit229.i_crit_edge, label %if.then.i228.i

if.end10.i.rtl_write_byte.exit229.i_crit_edge:    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit229.i

if.then.i228.i:                                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %read8_sync.i220.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %read8_sync.i220.i, align 4
  %call.i227.i = tail call zeroext i8 %70(ptr noundef %10, i32 noundef 5) #8
  br label %rtl_write_byte.exit229.i

rtl_write_byte.exit229.i:                         ; preds = %if.then.i228.i, %if.end10.i.rtl_write_byte.exit229.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %71(i32 noundef 429496) #8
  %72 = ptrtoint ptr %read8_sync.i220.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %read8_sync.i220.i, align 4
  %call.i231.i = tail call zeroext i8 %73(ptr noundef %10, i32 noundef 5) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %74(i32 noundef 429496) #8
  %read32_sync.i232.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 13, i32 11
  %75 = ptrtoint ptr %read32_sync.i232.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %read32_sync.i232.i, align 4
  %call.i233.i = tail call i32 %76(ptr noundef %10, i32 noundef 236) #8
  %conv16.i = zext i8 %call.i231.i to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %10, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.45, i32 noundef %call.i233.i, i32 noundef %conv16.i) #8
  %77 = and i8 %call.i231.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool19.not454.not.i = icmp eq i8 %77, 0
  br i1 %tobool19.not454.not.i, label %rtl_write_byte.exit229.i.while.end.i_crit_edge, label %rtl_write_byte.exit229.i.while.body.i_crit_edge

rtl_write_byte.exit229.i.while.body.i_crit_edge:  ; preds = %rtl_write_byte.exit229.i
  br label %while.body.i

rtl_write_byte.exit229.i.while.end.i_crit_edge:   ; preds = %rtl_write_byte.exit229.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %rtl_write_byte.exit229.i.while.body.i_crit_edge
  %retry.0455.i = phi i16 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %rtl_write_byte.exit229.i.while.body.i_crit_edge ]
  %inc.i = add nuw nsw i16 %retry.0455.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %78(i32 noundef 10737400) #8
  %79 = ptrtoint ptr %read8_sync.i220.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %read8_sync.i220.i, align 4
  %call.i235.i = tail call zeroext i8 %80(ptr noundef %10, i32 noundef 5) #8
  %81 = ptrtoint ptr %read32_sync.i232.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %read32_sync.i232.i, align 4
  %call.i237.i = tail call i32 %82(ptr noundef %10, i32 noundef 236) #8
  %conv24.i = zext i8 %call.i235.i to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %10, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.45, i32 noundef %call.i237.i, i32 noundef %conv24.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %83(i32 noundef 10737400) #8
  %84 = and i8 %call.i235.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool19.not.i = icmp ne i8 %84, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 999, i16 %retry.0455.i)
  %cmp.i = icmp ult i16 %retry.0455.i, 999
  %or.cond.i = select i1 %tobool19.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %rtl_write_byte.exit229.i.while.end.i_crit_edge
  %retry.0.lcssa.i = phi i16 [ 0, %rtl_write_byte.exit229.i.while.end.i_crit_edge ], [ %inc.i, %while.body.i.while.end.i_crit_edge ]
  %write16_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 13, i32 6
  %85 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %86(ptr noundef %10, i32 noundef 4, i16 noundef zeroext 4114) #8
  %87 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i239.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %write_readback.i239.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %write_readback.i239.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool.not.i240.i = icmp eq i8 %90, 0
  br i1 %tobool.not.i240.i, label %while.end.i.rtl_write_word.exit.i_crit_edge, label %if.then.i242.i

while.end.i.rtl_write_word.exit.i_crit_edge:      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit.i

if.then.i242.i:                                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 13, i32 10
  %91 = ptrtoint ptr %read16_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %read16_sync.i.i, align 4
  %call.i241.i = tail call zeroext i16 %92(ptr noundef %10, i32 noundef 4) #8
  br label %rtl_write_word.exit.i

rtl_write_word.exit.i:                            ; preds = %if.then.i242.i, %while.end.i.rtl_write_word.exit.i_crit_edge
  %93 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %94(ptr noundef %10, i32 noundef 1, i8 noundef zeroext -126) #8
  %95 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i245.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %write_readback.i245.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %write_readback.i245.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool.not.i246.i = icmp eq i8 %98, 0
  br i1 %tobool.not.i246.i, label %rtl_write_word.exit.i.rtl_write_byte.exit250.i_crit_edge, label %if.then.i249.i

rtl_write_word.exit.i.rtl_write_byte.exit250.i_crit_edge: ; preds = %rtl_write_word.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit250.i

if.then.i249.i:                                   ; preds = %rtl_write_word.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %99 = ptrtoint ptr %read8_sync.i220.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %read8_sync.i220.i, align 4
  %call.i248.i = tail call zeroext i8 %100(ptr noundef %10, i32 noundef 1) #8
  br label %rtl_write_byte.exit250.i

rtl_write_byte.exit250.i:                         ; preds = %if.then.i249.i, %rtl_write_word.exit.i.rtl_write_byte.exit250.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %101 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %101(i32 noundef 429496) #8
  %102 = ptrtoint ptr %bt_coexistence.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %bt_coexistence.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool27.not.i = icmp eq i8 %103, 0
  br i1 %tobool27.not.i, label %rtl_write_byte.exit250.i.if.end33.i_crit_edge, label %if.then28.i

rtl_write_byte.exit250.i.if.end33.i_crit_edge:    ; preds = %rtl_write_byte.exit250.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i

if.then28.i:                                      ; preds = %rtl_write_byte.exit250.i
  %104 = ptrtoint ptr %read8_sync.i220.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %read8_sync.i220.i, align 4
  %call.i252.i = tail call zeroext i8 %105(ptr noundef %10, i32 noundef 38) #8
  %106 = and i8 %call.i252.i, -3
  %107 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %108(ptr noundef %10, i32 noundef 38, i8 noundef zeroext %106) #8
  %109 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i255.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %write_readback.i255.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %write_readback.i255.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool.not.i256.i = icmp eq i8 %112, 0
  br i1 %tobool.not.i256.i, label %if.then28.i.if.end33.i_crit_edge, label %if.then.i259.i

if.then28.i.if.end33.i_crit_edge:                 ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i

if.then.i259.i:                                   ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #10
  %113 = ptrtoint ptr %read8_sync.i220.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %read8_sync.i220.i, align 4
  %call.i258.i = tail call zeroext i8 %114(ptr noundef %10, i32 noundef 38) #8
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then.i259.i, %if.then28.i.if.end33.i_crit_edge, %rtl_write_byte.exit250.i.if.end33.i_crit_edge
  %115 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %116(ptr noundef %10, i32 noundef 256, i16 noundef zeroext 767) #8
  %117 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i263.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %write_readback.i263.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %write_readback.i263.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool.not.i264.i = icmp eq i8 %120, 0
  br i1 %tobool.not.i264.i, label %if.end33.i.rtl_write_word.exit268.i_crit_edge, label %if.then.i267.i

if.end33.i.rtl_write_word.exit268.i_crit_edge:    ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit268.i

if.then.i267.i:                                   ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i265.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 13, i32 10
  %121 = ptrtoint ptr %read16_sync.i265.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %read16_sync.i265.i, align 4
  %call.i266.i = tail call zeroext i16 %122(ptr noundef %10, i32 noundef 256) #8
  br label %rtl_write_word.exit268.i

rtl_write_word.exit268.i:                         ; preds = %if.then.i267.i, %if.end33.i.rtl_write_word.exit268.i_crit_edge
  %123 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %priv, align 8
  %write16_async.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %124, i32 0, i32 13, i32 6
  %125 = ptrtoint ptr %write16_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %write16_async.i.i.i, align 4
  tail call void %126(ptr noundef %124, i32 noundef 532, i16 noundef zeroext 0) #8
  %cfg.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %124, i32 0, i32 32
  %127 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %write_readback.i.i.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %write_readback.i.i.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool.not.i.i.i = icmp eq i8 %130, 0
  br i1 %tobool.not.i.i.i, label %rtl_write_word.exit268.i.rtl_write_word.exit.i.i_crit_edge, label %if.then.i.i.i

rtl_write_word.exit268.i.rtl_write_word.exit.i.i_crit_edge: ; preds = %rtl_write_word.exit268.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit.i.i

if.then.i.i.i:                                    ; preds = %rtl_write_word.exit268.i
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %124, i32 0, i32 13, i32 10
  %131 = ptrtoint ptr %read16_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %read16_sync.i.i.i, align 4
  %call.i.i.i = tail call zeroext i16 %132(ptr noundef %124, i32 noundef 532) #8
  br label %rtl_write_word.exit.i.i

rtl_write_word.exit.i.i:                          ; preds = %if.then.i.i.i, %rtl_write_word.exit268.i.rtl_write_word.exit.i.i_crit_edge
  %write32_async.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %124, i32 0, i32 13, i32 7
  %133 = ptrtoint ptr %write32_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %write32_async.i.i.i, align 4
  tail call void %134(ptr noundef %124, i32 noundef 512, i32 noundef -2135942103) #8
  %135 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i82.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %136, i32 0, i32 1
  %137 = ptrtoint ptr %write_readback.i82.i.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %write_readback.i82.i.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %tobool.not.i83.i.i = icmp eq i8 %138, 0
  br i1 %tobool.not.i83.i.i, label %rtl_write_word.exit.i.i.rtl_write_dword.exit.i.i_crit_edge, label %if.then.i85.i.i

rtl_write_word.exit.i.i.rtl_write_dword.exit.i.i_crit_edge: ; preds = %rtl_write_word.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit.i.i

if.then.i85.i.i:                                  ; preds = %rtl_write_word.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %124, i32 0, i32 13, i32 11
  %139 = ptrtoint ptr %read32_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %read32_sync.i.i.i, align 4
  %call.i84.i.i = tail call i32 %140(ptr noundef %124, i32 noundef 512) #8
  br label %rtl_write_dword.exit.i.i

rtl_write_dword.exit.i.i:                         ; preds = %if.then.i85.i.i, %rtl_write_word.exit.i.i.rtl_write_dword.exit.i.i_crit_edge
  %141 = ptrtoint ptr %write32_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %write32_async.i.i.i, align 4
  tail call void %142(ptr noundef %124, i32 noundef 276, i32 noundef 671023350) #8
  %143 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i88.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %144, i32 0, i32 1
  %145 = ptrtoint ptr %write_readback.i88.i.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %write_readback.i88.i.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %tobool.not.i89.i.i = icmp eq i8 %146, 0
  br i1 %tobool.not.i89.i.i, label %rtl_write_dword.exit.i.i.rtl_write_dword.exit93.i.i_crit_edge, label %if.then.i92.i.i

rtl_write_dword.exit.i.i.rtl_write_dword.exit93.i.i_crit_edge: ; preds = %rtl_write_dword.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit93.i.i

if.then.i92.i.i:                                  ; preds = %rtl_write_dword.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i90.i.i = getelementptr inbounds %struct.rtl_priv, ptr %124, i32 0, i32 13, i32 11
  %147 = ptrtoint ptr %read32_sync.i90.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %read32_sync.i90.i.i, align 4
  %call.i91.i.i = tail call i32 %148(ptr noundef %124, i32 noundef 276) #8
  br label %rtl_write_dword.exit93.i.i

rtl_write_dword.exit93.i.i:                       ; preds = %if.then.i92.i.i, %rtl_write_dword.exit.i.i.rtl_write_dword.exit93.i.i_crit_edge
  %write8_async.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %124, i32 0, i32 13, i32 5
  %149 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %150(ptr noundef %124, i32 noundef 521, i8 noundef zeroext -10) #8
  %151 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i95.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %152, i32 0, i32 1
  %153 = ptrtoint ptr %write_readback.i95.i.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %write_readback.i95.i.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %154)
  %tobool.not.i96.i.i = icmp eq i8 %154, 0
  br i1 %tobool.not.i96.i.i, label %rtl_write_dword.exit93.i.i.rtl_write_byte.exit.i.i_crit_edge, label %if.then.i98.i.i

rtl_write_dword.exit93.i.i.rtl_write_byte.exit.i.i_crit_edge: ; preds = %rtl_write_dword.exit93.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit.i.i

if.then.i98.i.i:                                  ; preds = %rtl_write_dword.exit93.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %124, i32 0, i32 13, i32 9
  %155 = ptrtoint ptr %read8_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %read8_sync.i.i.i, align 4
  %call.i97.i.i = tail call zeroext i8 %156(ptr noundef %124, i32 noundef 521) #8
  br label %rtl_write_byte.exit.i.i

rtl_write_byte.exit.i.i:                          ; preds = %if.then.i98.i.i, %rtl_write_dword.exit93.i.i.rtl_write_byte.exit.i.i_crit_edge
  %157 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %158(ptr noundef %124, i32 noundef 1060, i8 noundef zeroext -10) #8
  %159 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i101.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %160, i32 0, i32 1
  %161 = ptrtoint ptr %write_readback.i101.i.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %write_readback.i101.i.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %162)
  %tobool.not.i102.i.i = icmp eq i8 %162, 0
  br i1 %tobool.not.i102.i.i, label %rtl_write_byte.exit.i.i.rtl_write_byte.exit106.i.i_crit_edge, label %if.then.i105.i.i

rtl_write_byte.exit.i.i.rtl_write_byte.exit106.i.i_crit_edge: ; preds = %rtl_write_byte.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit106.i.i

if.then.i105.i.i:                                 ; preds = %rtl_write_byte.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i103.i.i = getelementptr inbounds %struct.rtl_priv, ptr %124, i32 0, i32 13, i32 9
  %163 = ptrtoint ptr %read8_sync.i103.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %read8_sync.i103.i.i, align 4
  %call.i104.i.i = tail call zeroext i8 %164(ptr noundef %124, i32 noundef 1060) #8
  br label %rtl_write_byte.exit106.i.i

rtl_write_byte.exit106.i.i:                       ; preds = %if.then.i105.i.i, %rtl_write_byte.exit.i.i.rtl_write_byte.exit106.i.i_crit_edge
  %165 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %166(ptr noundef %124, i32 noundef 1061, i8 noundef zeroext -10) #8
  %167 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i109.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %168, i32 0, i32 1
  %169 = ptrtoint ptr %write_readback.i109.i.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %write_readback.i109.i.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %170)
  %tobool.not.i110.i.i = icmp eq i8 %170, 0
  br i1 %tobool.not.i110.i.i, label %rtl_write_byte.exit106.i.i.rtl_write_byte.exit114.i.i_crit_edge, label %if.then.i113.i.i

rtl_write_byte.exit106.i.i.rtl_write_byte.exit114.i.i_crit_edge: ; preds = %rtl_write_byte.exit106.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit114.i.i

if.then.i113.i.i:                                 ; preds = %rtl_write_byte.exit106.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i111.i.i = getelementptr inbounds %struct.rtl_priv, ptr %124, i32 0, i32 13, i32 9
  %171 = ptrtoint ptr %read8_sync.i111.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %read8_sync.i111.i.i, align 4
  %call.i112.i.i = tail call zeroext i8 %172(ptr noundef %124, i32 noundef 1061) #8
  br label %rtl_write_byte.exit114.i.i

rtl_write_byte.exit114.i.i:                       ; preds = %if.then.i113.i.i, %rtl_write_byte.exit106.i.i.rtl_write_byte.exit114.i.i_crit_edge
  %173 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %174(ptr noundef %124, i32 noundef 1117, i8 noundef zeroext -10) #8
  %175 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i117.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %176, i32 0, i32 1
  %177 = ptrtoint ptr %write_readback.i117.i.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %write_readback.i117.i.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %178)
  %tobool.not.i118.i.i = icmp eq i8 %178, 0
  br i1 %tobool.not.i118.i.i, label %rtl_write_byte.exit114.i.i.rtl_write_byte.exit122.i.i_crit_edge, label %if.then.i121.i.i

rtl_write_byte.exit114.i.i.rtl_write_byte.exit122.i.i_crit_edge: ; preds = %rtl_write_byte.exit114.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit122.i.i

if.then.i121.i.i:                                 ; preds = %rtl_write_byte.exit114.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i119.i.i = getelementptr inbounds %struct.rtl_priv, ptr %124, i32 0, i32 13, i32 9
  %179 = ptrtoint ptr %read8_sync.i119.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %read8_sync.i119.i.i, align 4
  %call.i120.i.i = tail call zeroext i8 %180(ptr noundef %124, i32 noundef 1117) #8
  br label %rtl_write_byte.exit122.i.i

rtl_write_byte.exit122.i.i:                       ; preds = %if.then.i121.i.i, %rtl_write_byte.exit114.i.i.rtl_write_byte.exit122.i.i_crit_edge
  %181 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %182(ptr noundef %124, i32 noundef 260, i8 noundef zeroext 17) #8
  %183 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i125.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %184, i32 0, i32 1
  %185 = ptrtoint ptr %write_readback.i125.i.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %write_readback.i125.i.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %186)
  %tobool.not.i126.i.i = icmp eq i8 %186, 0
  br i1 %tobool.not.i126.i.i, label %rtl_write_byte.exit122.i.i.rtl_write_byte.exit130.i.i_crit_edge, label %if.then.i129.i.i

rtl_write_byte.exit122.i.i.rtl_write_byte.exit130.i.i_crit_edge: ; preds = %rtl_write_byte.exit122.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit130.i.i

if.then.i129.i.i:                                 ; preds = %rtl_write_byte.exit122.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i127.i.i = getelementptr inbounds %struct.rtl_priv, ptr %124, i32 0, i32 13, i32 9
  %187 = ptrtoint ptr %read8_sync.i127.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %read8_sync.i127.i.i, align 4
  %call.i128.i.i = tail call zeroext i8 %188(ptr noundef %124, i32 noundef 260) #8
  br label %rtl_write_byte.exit130.i.i

rtl_write_byte.exit130.i.i:                       ; preds = %if.then.i129.i.i, %rtl_write_byte.exit122.i.i.rtl_write_byte.exit130.i.i_crit_edge
  %189 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %190(ptr noundef %124, i32 noundef 1551, i8 noundef zeroext 4) #8
  %191 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i133.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %192, i32 0, i32 1
  %193 = ptrtoint ptr %write_readback.i133.i.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %write_readback.i133.i.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %194)
  %tobool.not.i134.i.i = icmp eq i8 %194, 0
  br i1 %tobool.not.i134.i.i, label %rtl_write_byte.exit130.i.i.for.body.i.i.preheader_crit_edge, label %if.then.i137.i.i

rtl_write_byte.exit130.i.i.for.body.i.i.preheader_crit_edge: ; preds = %rtl_write_byte.exit130.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.preheader

if.then.i137.i.i:                                 ; preds = %rtl_write_byte.exit130.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i135.i.i = getelementptr inbounds %struct.rtl_priv, ptr %124, i32 0, i32 13, i32 9
  %195 = ptrtoint ptr %read8_sync.i135.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %read8_sync.i135.i.i, align 4
  %call.i136.i.i = tail call zeroext i8 %196(ptr noundef %124, i32 noundef 1551) #8
  br label %for.body.i.i.preheader

for.body.i.i.preheader:                           ; preds = %if.then.i137.i.i, %rtl_write_byte.exit130.i.i.for.body.i.i.preheader_crit_edge
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.i.i.preheader
  %indvars.iv.i.i = phi i32 [ %add.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.i.preheader ]
  %add.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %197 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %priv, align 8
  %and.i.i.i = shl nuw nsw i32 %indvars.iv.i.i, 8
  %or.i.i.i = or i32 %add.i.i, %and.i.i.i
  %or2.i.i.i = or i32 %or.i.i.i, 1073741824
  %write32_async.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %198, i32 0, i32 13, i32 7
  %199 = ptrtoint ptr %write32_async.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %write32_async.i.i.i.i, align 4
  tail call void %200(ptr noundef %198, i32 noundef 480, i32 noundef %or2.i.i.i) #8
  %cfg.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %198, i32 0, i32 32
  %201 = ptrtoint ptr %cfg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %cfg.i.i.i.i, align 8
  %write_readback.i.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %202, i32 0, i32 1
  %203 = ptrtoint ptr %write_readback.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %write_readback.i.i.i.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %204)
  %tobool.not.i.i.i.i = icmp eq i8 %204, 0
  br i1 %tobool.not.i.i.i.i, label %for.body.i.i.rtl_write_dword.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

for.body.i.i.rtl_write_dword.exit.i.i.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %198, i32 0, i32 13, i32 11
  %205 = ptrtoint ptr %read32_sync.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %read32_sync.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %206(ptr noundef %198, i32 noundef 480) #8
  br label %rtl_write_dword.exit.i.i.i

rtl_write_dword.exit.i.i.i:                       ; preds = %if.then.i.i.i.i, %for.body.i.i.rtl_write_dword.exit.i.i.i_crit_edge
  %read32_sync.i16.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %198, i32 0, i32 13, i32 11
  %207 = ptrtoint ptr %read32_sync.i16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %read32_sync.i16.i.i.i, align 4
  %call.i1718.i.i.i = tail call i32 %208(ptr noundef %198, i32 noundef 480) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i1718.i.i.i)
  %cmp19.i.i.i = icmp ult i32 %call.i1718.i.i.i, 1073741824
  br i1 %cmp19.i.i.i, label %rtl_write_dword.exit.i.i.i.for.inc.i.i_crit_edge, label %rtl_write_dword.exit.i.i.i.if.end.i.i.i_crit_edge

rtl_write_dword.exit.i.i.i.if.end.i.i.i_crit_edge: ; preds = %rtl_write_dword.exit.i.i.i
  br label %if.end.i.i.i

rtl_write_dword.exit.i.i.i.for.inc.i.i_crit_edge: ; preds = %rtl_write_dword.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

do.body.i.i.i:                                    ; preds = %if.end.i.i.i
  %inc.i.i.i = add nuw nsw i32 %count.020.i.i.i, 1
  %209 = ptrtoint ptr %read32_sync.i16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %read32_sync.i16.i.i.i, align 4
  %call.i17.i.i.i = tail call i32 %210(ptr noundef %198, i32 noundef 480) #8
  %cmp.i.i.i = icmp ult i32 %call.i17.i.i.i, 1073741824
  br i1 %cmp.i.i.i, label %do.body.i.i.i.for.inc.i.i_crit_edge, label %do.body.i.i.i.if.end.i.i.i_crit_edge

do.body.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

do.body.i.i.i.for.inc.i.i_crit_edge:              ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.end.i.i.i:                                     ; preds = %do.body.i.i.i.if.end.i.i.i_crit_edge, %rtl_write_dword.exit.i.i.i.if.end.i.i.i_crit_edge
  %count.020.i.i.i = phi i32 [ %inc.i.i.i, %do.body.i.i.i.if.end.i.i.i_crit_edge ], [ 0, %rtl_write_dword.exit.i.i.i.if.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %count.020.i.i.i)
  %exitcond.i.i.i = icmp eq i32 %count.020.i.i.i, 21
  br i1 %exitcond.i.i.i, label %if.end.i.i.i.do.end13_crit_edge, label %do.body.i.i.i

if.end.i.i.i.do.end13_crit_edge:                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13

for.inc.i.i:                                      ; preds = %do.body.i.i.i.for.inc.i.i_crit_edge, %rtl_write_dword.exit.i.i.i.for.inc.i.i_crit_edge
  %exitcond.not.i.i = icmp eq i32 %add.i.i, 245
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  %211 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %priv, align 8
  %write32_async.i.i140.i.i = getelementptr inbounds %struct.rtl_priv, ptr %212, i32 0, i32 13, i32 7
  %213 = ptrtoint ptr %write32_async.i.i140.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %write32_async.i.i140.i.i, align 4
  tail call void %214(ptr noundef %212, i32 noundef 480, i32 noundef 1073804799) #8
  %cfg.i.i141.i.i = getelementptr inbounds %struct.rtl_priv, ptr %212, i32 0, i32 32
  %215 = ptrtoint ptr %cfg.i.i141.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %cfg.i.i141.i.i, align 8
  %write_readback.i.i142.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %216, i32 0, i32 1
  %217 = ptrtoint ptr %write_readback.i.i142.i.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %write_readback.i.i142.i.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %218)
  %tobool.not.i.i143.i.i = icmp eq i8 %218, 0
  br i1 %tobool.not.i.i143.i.i, label %for.end.i.i.rtl_write_dword.exit.i150.i.i_crit_edge, label %if.then.i.i146.i.i

for.end.i.i.rtl_write_dword.exit.i150.i.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit.i150.i.i

if.then.i.i146.i.i:                               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i.i144.i.i = getelementptr inbounds %struct.rtl_priv, ptr %212, i32 0, i32 13, i32 11
  %219 = ptrtoint ptr %read32_sync.i.i144.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %read32_sync.i.i144.i.i, align 4
  %call.i.i145.i.i = tail call i32 %220(ptr noundef %212, i32 noundef 480) #8
  br label %rtl_write_dword.exit.i150.i.i

rtl_write_dword.exit.i150.i.i:                    ; preds = %if.then.i.i146.i.i, %for.end.i.i.rtl_write_dword.exit.i150.i.i_crit_edge
  %read32_sync.i16.i147.i.i = getelementptr inbounds %struct.rtl_priv, ptr %212, i32 0, i32 13, i32 11
  %221 = ptrtoint ptr %read32_sync.i16.i147.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %read32_sync.i16.i147.i.i, align 4
  %call.i1718.i148.i.i = tail call i32 %222(ptr noundef %212, i32 noundef 480) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i1718.i148.i.i)
  %cmp19.i149.i.i = icmp ult i32 %call.i1718.i148.i.i, 1073741824
  br i1 %cmp19.i149.i.i, label %rtl_write_dword.exit.i150.i.i.for.body21.i.i.preheader_crit_edge, label %rtl_write_dword.exit.i150.i.i.if.end.i157.i.i_crit_edge

rtl_write_dword.exit.i150.i.i.if.end.i157.i.i_crit_edge: ; preds = %rtl_write_dword.exit.i150.i.i
  br label %if.end.i157.i.i

rtl_write_dword.exit.i150.i.i.for.body21.i.i.preheader_crit_edge: ; preds = %rtl_write_dword.exit.i150.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body21.i.i.preheader

for.body21.i.i.preheader:                         ; preds = %do.body.i154.i.i.for.body21.i.i.preheader_crit_edge, %rtl_write_dword.exit.i150.i.i.for.body21.i.i.preheader_crit_edge
  br label %for.body21.i.i

do.body.i154.i.i:                                 ; preds = %if.end.i157.i.i
  %inc.i151.i.i = add nuw nsw i32 %count.020.i155.i.i, 1
  %223 = ptrtoint ptr %read32_sync.i16.i147.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %read32_sync.i16.i147.i.i, align 4
  %call.i17.i152.i.i = tail call i32 %224(ptr noundef %212, i32 noundef 480) #8
  %cmp.i153.i.i = icmp ult i32 %call.i17.i152.i.i, 1073741824
  br i1 %cmp.i153.i.i, label %do.body.i154.i.i.for.body21.i.i.preheader_crit_edge, label %do.body.i154.i.i.if.end.i157.i.i_crit_edge

do.body.i154.i.i.if.end.i157.i.i_crit_edge:       ; preds = %do.body.i154.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i157.i.i

do.body.i154.i.i.for.body21.i.i.preheader_crit_edge: ; preds = %do.body.i154.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body21.i.i.preheader

if.end.i157.i.i:                                  ; preds = %do.body.i154.i.i.if.end.i157.i.i_crit_edge, %rtl_write_dword.exit.i150.i.i.if.end.i157.i.i_crit_edge
  %count.020.i155.i.i = phi i32 [ %inc.i151.i.i, %do.body.i154.i.i.if.end.i157.i.i_crit_edge ], [ 0, %rtl_write_dword.exit.i150.i.i.if.end.i157.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %count.020.i155.i.i)
  %exitcond.i156.i.i = icmp eq i32 %count.020.i155.i.i, 21
  br i1 %exitcond.i156.i.i, label %if.end.i157.i.i.do.end13_crit_edge, label %do.body.i154.i.i

if.end.i157.i.i.do.end13_crit_edge:               ; preds = %if.end.i157.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13

for.body21.i.i:                                   ; preds = %for.inc31.i.i.for.body21.i.i_crit_edge, %for.body21.i.i.preheader
  %indvars.iv220.i.i = phi i32 [ %add24.i.i, %for.inc31.i.i.for.body21.i.i_crit_edge ], [ 246, %for.body21.i.i.preheader ]
  %add24.i.i = add nuw nsw i32 %indvars.iv220.i.i, 1
  %225 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %priv, align 8
  %and.i163.i.i = shl nuw nsw i32 %indvars.iv220.i.i, 8
  %or.i166.i.i = or i32 %add24.i.i, %and.i163.i.i
  %or2.i167.i.i = or i32 %or.i166.i.i, 1073741824
  %write32_async.i.i168.i.i = getelementptr inbounds %struct.rtl_priv, ptr %226, i32 0, i32 13, i32 7
  %227 = ptrtoint ptr %write32_async.i.i168.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %write32_async.i.i168.i.i, align 4
  tail call void %228(ptr noundef %226, i32 noundef 480, i32 noundef %or2.i167.i.i) #8
  %cfg.i.i169.i.i = getelementptr inbounds %struct.rtl_priv, ptr %226, i32 0, i32 32
  %229 = ptrtoint ptr %cfg.i.i169.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %cfg.i.i169.i.i, align 8
  %write_readback.i.i170.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %230, i32 0, i32 1
  %231 = ptrtoint ptr %write_readback.i.i170.i.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %write_readback.i.i170.i.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %232)
  %tobool.not.i.i171.i.i = icmp eq i8 %232, 0
  br i1 %tobool.not.i.i171.i.i, label %for.body21.i.i.rtl_write_dword.exit.i178.i.i_crit_edge, label %if.then.i.i174.i.i

for.body21.i.i.rtl_write_dword.exit.i178.i.i_crit_edge: ; preds = %for.body21.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit.i178.i.i

if.then.i.i174.i.i:                               ; preds = %for.body21.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i.i172.i.i = getelementptr inbounds %struct.rtl_priv, ptr %226, i32 0, i32 13, i32 11
  %233 = ptrtoint ptr %read32_sync.i.i172.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %read32_sync.i.i172.i.i, align 4
  %call.i.i173.i.i = tail call i32 %234(ptr noundef %226, i32 noundef 480) #8
  br label %rtl_write_dword.exit.i178.i.i

rtl_write_dword.exit.i178.i.i:                    ; preds = %if.then.i.i174.i.i, %for.body21.i.i.rtl_write_dword.exit.i178.i.i_crit_edge
  %read32_sync.i16.i175.i.i = getelementptr inbounds %struct.rtl_priv, ptr %226, i32 0, i32 13, i32 11
  %235 = ptrtoint ptr %read32_sync.i16.i175.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %read32_sync.i16.i175.i.i, align 4
  %call.i1718.i176.i.i = tail call i32 %236(ptr noundef %226, i32 noundef 480) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i1718.i176.i.i)
  %cmp19.i177.i.i = icmp ult i32 %call.i1718.i176.i.i, 1073741824
  br i1 %cmp19.i177.i.i, label %rtl_write_dword.exit.i178.i.i.for.inc31.i.i_crit_edge, label %rtl_write_dword.exit.i178.i.i.if.end.i185.i.i_crit_edge

rtl_write_dword.exit.i178.i.i.if.end.i185.i.i_crit_edge: ; preds = %rtl_write_dword.exit.i178.i.i
  br label %if.end.i185.i.i

rtl_write_dword.exit.i178.i.i.for.inc31.i.i_crit_edge: ; preds = %rtl_write_dword.exit.i178.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc31.i.i

do.body.i182.i.i:                                 ; preds = %if.end.i185.i.i
  %inc.i179.i.i = add nuw nsw i32 %count.020.i183.i.i, 1
  %237 = ptrtoint ptr %read32_sync.i16.i175.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %read32_sync.i16.i175.i.i, align 4
  %call.i17.i180.i.i = tail call i32 %238(ptr noundef %226, i32 noundef 480) #8
  %cmp.i181.i.i = icmp ult i32 %call.i17.i180.i.i, 1073741824
  br i1 %cmp.i181.i.i, label %do.body.i182.i.i.for.inc31.i.i_crit_edge, label %do.body.i182.i.i.if.end.i185.i.i_crit_edge

do.body.i182.i.i.if.end.i185.i.i_crit_edge:       ; preds = %do.body.i182.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i185.i.i

do.body.i182.i.i.for.inc31.i.i_crit_edge:         ; preds = %do.body.i182.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc31.i.i

if.end.i185.i.i:                                  ; preds = %do.body.i182.i.i.if.end.i185.i.i_crit_edge, %rtl_write_dword.exit.i178.i.i.if.end.i185.i.i_crit_edge
  %count.020.i183.i.i = phi i32 [ %inc.i179.i.i, %do.body.i182.i.i.if.end.i185.i.i_crit_edge ], [ 0, %rtl_write_dword.exit.i178.i.i.if.end.i185.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %count.020.i183.i.i)
  %exitcond.i184.i.i = icmp eq i32 %count.020.i183.i.i, 21
  br i1 %exitcond.i184.i.i, label %if.end.i185.i.i.do.end13_crit_edge, label %do.body.i182.i.i

if.end.i185.i.i.do.end13_crit_edge:               ; preds = %if.end.i185.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13

for.inc31.i.i:                                    ; preds = %do.body.i182.i.i.for.inc31.i.i_crit_edge, %rtl_write_dword.exit.i178.i.i.for.inc31.i.i_crit_edge
  %exitcond222.not.i.i = icmp eq i32 %add24.i.i, 255
  br i1 %exitcond222.not.i.i, label %for.end33.i.i, label %for.inc31.i.i.for.body21.i.i_crit_edge

for.inc31.i.i.for.body21.i.i_crit_edge:           ; preds = %for.inc31.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body21.i.i

for.end33.i.i:                                    ; preds = %for.inc31.i.i
  %239 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %priv, align 8
  %write32_async.i.i191.i.i = getelementptr inbounds %struct.rtl_priv, ptr %240, i32 0, i32 13, i32 7
  %241 = ptrtoint ptr %write32_async.i.i191.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %write32_async.i.i191.i.i, align 4
  tail call void %242(ptr noundef %240, i32 noundef 480, i32 noundef 1073807350) #8
  %cfg.i.i192.i.i = getelementptr inbounds %struct.rtl_priv, ptr %240, i32 0, i32 32
  %243 = ptrtoint ptr %cfg.i.i192.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %cfg.i.i192.i.i, align 8
  %write_readback.i.i193.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %244, i32 0, i32 1
  %245 = ptrtoint ptr %write_readback.i.i193.i.i to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %write_readback.i.i193.i.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %246)
  %tobool.not.i.i194.i.i = icmp eq i8 %246, 0
  br i1 %tobool.not.i.i194.i.i, label %for.end33.i.i.rtl_write_dword.exit.i201.i.i_crit_edge, label %if.then.i.i197.i.i

for.end33.i.i.rtl_write_dword.exit.i201.i.i_crit_edge: ; preds = %for.end33.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit.i201.i.i

if.then.i.i197.i.i:                               ; preds = %for.end33.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i.i195.i.i = getelementptr inbounds %struct.rtl_priv, ptr %240, i32 0, i32 13, i32 11
  %247 = ptrtoint ptr %read32_sync.i.i195.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %read32_sync.i.i195.i.i, align 4
  %call.i.i196.i.i = tail call i32 %248(ptr noundef %240, i32 noundef 480) #8
  br label %rtl_write_dword.exit.i201.i.i

rtl_write_dword.exit.i201.i.i:                    ; preds = %if.then.i.i197.i.i, %for.end33.i.i.rtl_write_dword.exit.i201.i.i_crit_edge
  %read32_sync.i16.i198.i.i = getelementptr inbounds %struct.rtl_priv, ptr %240, i32 0, i32 13, i32 11
  %249 = ptrtoint ptr %read32_sync.i16.i198.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %read32_sync.i16.i198.i.i, align 4
  %call.i1718.i199.i.i = tail call i32 %250(ptr noundef %240, i32 noundef 480) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i1718.i199.i.i)
  %cmp19.i200.i.i = icmp ult i32 %call.i1718.i199.i.i, 1073741824
  br i1 %cmp19.i200.i.i, label %rtl_write_dword.exit.i201.i.i.if.end36.i_crit_edge, label %rtl_write_dword.exit.i201.i.i.if.end.i208.i.i_crit_edge

rtl_write_dword.exit.i201.i.i.if.end.i208.i.i_crit_edge: ; preds = %rtl_write_dword.exit.i201.i.i
  br label %if.end.i208.i.i

rtl_write_dword.exit.i201.i.i.if.end36.i_crit_edge: ; preds = %rtl_write_dword.exit.i201.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36.i

do.body.i205.i.i:                                 ; preds = %if.end.i208.i.i
  %inc.i202.i.i = add nuw nsw i32 %count.020.i206.i.i, 1
  %251 = ptrtoint ptr %read32_sync.i16.i198.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %read32_sync.i16.i198.i.i, align 4
  %call.i17.i203.i.i = tail call i32 %252(ptr noundef %240, i32 noundef 480) #8
  %cmp.i204.i.i = icmp ult i32 %call.i17.i203.i.i, 1073741824
  br i1 %cmp.i204.i.i, label %do.body.i205.i.i.if.end36.i_crit_edge, label %do.body.i205.i.i.if.end.i208.i.i_crit_edge

do.body.i205.i.i.if.end.i208.i.i_crit_edge:       ; preds = %do.body.i205.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i208.i.i

do.body.i205.i.i.if.end36.i_crit_edge:            ; preds = %do.body.i205.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36.i

if.end.i208.i.i:                                  ; preds = %do.body.i205.i.i.if.end.i208.i.i_crit_edge, %rtl_write_dword.exit.i201.i.i.if.end.i208.i.i_crit_edge
  %count.020.i206.i.i = phi i32 [ %inc.i202.i.i, %do.body.i205.i.i.if.end.i208.i.i_crit_edge ], [ 0, %rtl_write_dword.exit.i201.i.i.if.end.i208.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %count.020.i206.i.i)
  %exitcond.i207.i.i = icmp eq i32 %count.020.i206.i.i, 21
  br i1 %exitcond.i207.i.i, label %if.end.i208.i.i.do.end13_crit_edge, label %do.body.i205.i.i

if.end.i208.i.i.do.end13_crit_edge:               ; preds = %if.end.i208.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13

if.end36.i:                                       ; preds = %do.body.i205.i.i.if.end36.i_crit_edge, %rtl_write_dword.exit.i201.i.i.if.end36.i_crit_edge
  %write32_async.i269.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 13, i32 7
  %253 = ptrtoint ptr %write32_async.i269.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %write32_async.i269.i, align 4
  tail call void %254(ptr noundef %10, i32 noundef 292, i32 noundef -1) #8
  %255 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i271.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %256, i32 0, i32 1
  %257 = ptrtoint ptr %write_readback.i271.i to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %write_readback.i271.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %258)
  %tobool.not.i272.i = icmp eq i8 %258, 0
  br i1 %tobool.not.i272.i, label %if.end36.i.rtl_write_dword.exit276.i_crit_edge, label %if.then.i275.i

if.end36.i.rtl_write_dword.exit276.i_crit_edge:   ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit276.i

if.then.i275.i:                                   ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  %259 = ptrtoint ptr %read32_sync.i232.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %read32_sync.i232.i, align 4
  %call.i274.i = tail call i32 %260(ptr noundef %10, i32 noundef 292) #8
  br label %rtl_write_dword.exit276.i

rtl_write_dword.exit276.i:                        ; preds = %if.then.i275.i, %if.end36.i.rtl_write_dword.exit276.i_crit_edge
  %261 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %262(ptr noundef %10, i32 noundef 300, i8 noundef zeroext -1) #8
  %263 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i279.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %264, i32 0, i32 1
  %265 = ptrtoint ptr %write_readback.i279.i to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %write_readback.i279.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %266)
  %tobool.not.i280.i = icmp eq i8 %266, 0
  br i1 %tobool.not.i280.i, label %rtl_write_dword.exit276.i.rtl_write_byte.exit284.i_crit_edge, label %if.then.i283.i

rtl_write_dword.exit276.i.rtl_write_byte.exit284.i_crit_edge: ; preds = %rtl_write_dword.exit276.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit284.i

if.then.i283.i:                                   ; preds = %rtl_write_dword.exit276.i
  call void @__sanitizer_cov_trace_pc() #10
  %267 = ptrtoint ptr %read8_sync.i220.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %read8_sync.i220.i, align 4
  %call.i282.i = tail call zeroext i8 %268(ptr noundef %10, i32 noundef 300) #8
  br label %rtl_write_byte.exit284.i

rtl_write_byte.exit284.i:                         ; preds = %if.then.i283.i, %rtl_write_dword.exit276.i.rtl_write_byte.exit284.i_crit_edge
  %269 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %270(ptr noundef %10, i32 noundef 278, i16 noundef zeroext 10239) #8
  %271 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i287.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %272, i32 0, i32 1
  %273 = ptrtoint ptr %write_readback.i287.i to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %write_readback.i287.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %274)
  %tobool.not.i288.i = icmp eq i8 %274, 0
  br i1 %tobool.not.i288.i, label %rtl_write_byte.exit284.i.rtl_write_word.exit292.i_crit_edge, label %if.then.i291.i

rtl_write_byte.exit284.i.rtl_write_word.exit292.i_crit_edge: ; preds = %rtl_write_byte.exit284.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit292.i

if.then.i291.i:                                   ; preds = %rtl_write_byte.exit284.i
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i289.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 13, i32 10
  %275 = ptrtoint ptr %read16_sync.i289.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %read16_sync.i289.i, align 4
  %call.i290.i = tail call zeroext i16 %276(ptr noundef %10, i32 noundef 278) #8
  br label %rtl_write_word.exit292.i

rtl_write_word.exit292.i:                         ; preds = %if.then.i291.i, %rtl_write_byte.exit284.i.rtl_write_word.exit292.i_crit_edge
  %read16_sync.i293.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 13, i32 10
  %277 = ptrtoint ptr %read16_sync.i293.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %read16_sync.i293.i, align 4
  %call.i294.i = tail call zeroext i16 %278(ptr noundef %10, i32 noundef 268) #8
  %279 = and i16 %call.i294.i, 14
  %280 = or i16 %279, -2191
  %281 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %282(ptr noundef %10, i32 noundef 268, i16 noundef zeroext %280) #8
  %283 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i297.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %284, i32 0, i32 1
  %285 = ptrtoint ptr %write_readback.i297.i to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %write_readback.i297.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %286)
  %tobool.not.i298.i = icmp eq i8 %286, 0
  br i1 %tobool.not.i298.i, label %rtl_write_word.exit292.i.rtl_write_word.exit302.i_crit_edge, label %if.then.i301.i

rtl_write_word.exit292.i.rtl_write_word.exit302.i_crit_edge: ; preds = %rtl_write_word.exit292.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit302.i

if.then.i301.i:                                   ; preds = %rtl_write_word.exit292.i
  call void @__sanitizer_cov_trace_pc() #10
  %287 = ptrtoint ptr %read16_sync.i293.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %read16_sync.i293.i, align 4
  %call.i300.i = tail call zeroext i16 %288(ptr noundef %10, i32 noundef 268) #8
  br label %rtl_write_word.exit302.i

rtl_write_word.exit302.i:                         ; preds = %if.then.i301.i, %rtl_write_word.exit292.i.rtl_write_word.exit302.i_crit_edge
  %289 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %290(ptr noundef %10, i32 noundef 1057, i8 noundef zeroext 31) #8
  %291 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i305.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %292, i32 0, i32 1
  %293 = ptrtoint ptr %write_readback.i305.i to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %write_readback.i305.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %294)
  %tobool.not.i306.i = icmp eq i8 %294, 0
  br i1 %tobool.not.i306.i, label %rtl_write_word.exit302.i.rtl_write_byte.exit310.i_crit_edge, label %if.then.i309.i

rtl_write_word.exit302.i.rtl_write_byte.exit310.i_crit_edge: ; preds = %rtl_write_word.exit302.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit310.i

if.then.i309.i:                                   ; preds = %rtl_write_word.exit302.i
  call void @__sanitizer_cov_trace_pc() #10
  %295 = ptrtoint ptr %read8_sync.i220.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %read8_sync.i220.i, align 4
  %call.i308.i = tail call zeroext i8 %296(ptr noundef %10, i32 noundef 1057) #8
  br label %rtl_write_byte.exit310.i

rtl_write_byte.exit310.i:                         ; preds = %if.then.i309.i, %rtl_write_word.exit302.i.rtl_write_byte.exit310.i_crit_edge
  %receive_config.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 3
  %297 = ptrtoint ptr %receive_config.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %receive_config.i, align 4
  %299 = ptrtoint ptr %write32_async.i269.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %write32_async.i269.i, align 4
  tail call void %300(ptr noundef %10, i32 noundef 1544, i32 noundef %298) #8
  %301 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i313.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %302, i32 0, i32 1
  %303 = ptrtoint ptr %write_readback.i313.i to i32
  call void @__asan_load1_noabort(i32 %303)
  %304 = load i8, ptr %write_readback.i313.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %304)
  %tobool.not.i314.i = icmp eq i8 %304, 0
  br i1 %tobool.not.i314.i, label %rtl_write_byte.exit310.i.rtl_write_dword.exit318.i_crit_edge, label %if.then.i317.i

rtl_write_byte.exit310.i.rtl_write_dword.exit318.i_crit_edge: ; preds = %rtl_write_byte.exit310.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit318.i

if.then.i317.i:                                   ; preds = %rtl_write_byte.exit310.i
  call void @__sanitizer_cov_trace_pc() #10
  %305 = ptrtoint ptr %read32_sync.i232.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %read32_sync.i232.i, align 4
  %call.i316.i = tail call i32 %306(ptr noundef %10, i32 noundef 1544) #8
  br label %rtl_write_dword.exit318.i

rtl_write_dword.exit318.i:                        ; preds = %if.then.i317.i, %rtl_write_byte.exit310.i.rtl_write_dword.exit318.i_crit_edge
  %transmit_config.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 1, i32 8, i32 2, i32 3
  %307 = ptrtoint ptr %transmit_config.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %transmit_config.i, align 4
  %309 = ptrtoint ptr %write32_async.i269.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %write32_async.i269.i, align 4
  tail call void %310(ptr noundef %10, i32 noundef 1540, i32 noundef %308) #8
  %311 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i321.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %312, i32 0, i32 1
  %313 = ptrtoint ptr %write_readback.i321.i to i32
  call void @__asan_load1_noabort(i32 %313)
  %314 = load i8, ptr %write_readback.i321.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %314)
  %tobool.not.i322.i = icmp eq i8 %314, 0
  br i1 %tobool.not.i322.i, label %rtl_write_dword.exit318.i.rtl_write_dword.exit326.i_crit_edge, label %if.then.i325.i

rtl_write_dword.exit318.i.rtl_write_dword.exit326.i_crit_edge: ; preds = %rtl_write_dword.exit318.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit326.i

if.then.i325.i:                                   ; preds = %rtl_write_dword.exit318.i
  call void @__sanitizer_cov_trace_pc() #10
  %315 = ptrtoint ptr %read32_sync.i232.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %read32_sync.i232.i, align 4
  %call.i324.i = tail call i32 %316(ptr noundef %10, i32 noundef 1540) #8
  br label %rtl_write_dword.exit326.i

rtl_write_dword.exit326.i:                        ; preds = %if.then.i325.i, %rtl_write_dword.exit318.i.rtl_write_dword.exit326.i_crit_edge
  %317 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %318(ptr noundef %10, i32 noundef 1232, i8 noundef zeroext 0) #8
  %319 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i329.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %320, i32 0, i32 1
  %321 = ptrtoint ptr %write_readback.i329.i to i32
  call void @__asan_load1_noabort(i32 %321)
  %322 = load i8, ptr %write_readback.i329.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %322)
  %tobool.not.i330.i = icmp eq i8 %322, 0
  br i1 %tobool.not.i330.i, label %rtl_write_dword.exit326.i.rtl_write_byte.exit334.i_crit_edge, label %if.then.i333.i

rtl_write_dword.exit326.i.rtl_write_byte.exit334.i_crit_edge: ; preds = %rtl_write_dword.exit326.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit334.i

if.then.i333.i:                                   ; preds = %rtl_write_dword.exit326.i
  call void @__sanitizer_cov_trace_pc() #10
  %323 = ptrtoint ptr %read8_sync.i220.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %read8_sync.i220.i, align 4
  %call.i332.i = tail call zeroext i8 %324(ptr noundef %10, i32 noundef 1232) #8
  br label %rtl_write_byte.exit334.i

rtl_write_byte.exit334.i:                         ; preds = %if.then.i333.i, %rtl_write_dword.exit326.i.rtl_write_byte.exit334.i_crit_edge
  %dma.i = getelementptr %struct.rtl_priv, ptr %10, i32 1, i32 7, i32 5, i32 0, i32 0, i32 3
  %325 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %dma.i, align 4
  %327 = ptrtoint ptr %write32_async.i269.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %write32_async.i269.i, align 4
  tail call void %328(ptr noundef %10, i32 noundef 776, i32 noundef %326) #8
  %329 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i337.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %330, i32 0, i32 1
  %331 = ptrtoint ptr %write_readback.i337.i to i32
  call void @__asan_load1_noabort(i32 %331)
  %332 = load i8, ptr %write_readback.i337.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %332)
  %tobool.not.i338.i = icmp eq i8 %332, 0
  br i1 %tobool.not.i338.i, label %rtl_write_byte.exit334.i.rtl_write_dword.exit342.i_crit_edge, label %if.then.i341.i

rtl_write_byte.exit334.i.rtl_write_dword.exit342.i_crit_edge: ; preds = %rtl_write_byte.exit334.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit342.i

if.then.i341.i:                                   ; preds = %rtl_write_byte.exit334.i
  call void @__sanitizer_cov_trace_pc() #10
  %333 = ptrtoint ptr %read32_sync.i232.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %read32_sync.i232.i, align 4
  %call.i340.i = tail call i32 %334(ptr noundef %10, i32 noundef 776) #8
  br label %rtl_write_dword.exit342.i

rtl_write_dword.exit342.i:                        ; preds = %if.then.i341.i, %rtl_write_byte.exit334.i.rtl_write_dword.exit342.i_crit_edge
  %dma49.i = getelementptr %struct.rtl_priv, ptr %10, i32 1, i32 7, i32 9, i32 0, i32 0, i32 1
  %335 = ptrtoint ptr %dma49.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %dma49.i, align 4
  %337 = ptrtoint ptr %write32_async.i269.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %write32_async.i269.i, align 4
  tail call void %338(ptr noundef %10, i32 noundef 792, i32 noundef %336) #8
  %339 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i345.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %340, i32 0, i32 1
  %341 = ptrtoint ptr %write_readback.i345.i to i32
  call void @__asan_load1_noabort(i32 %341)
  %342 = load i8, ptr %write_readback.i345.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %342)
  %tobool.not.i346.i = icmp eq i8 %342, 0
  br i1 %tobool.not.i346.i, label %rtl_write_dword.exit342.i.rtl_write_dword.exit350.i_crit_edge, label %if.then.i349.i

rtl_write_dword.exit342.i.rtl_write_dword.exit350.i_crit_edge: ; preds = %rtl_write_dword.exit342.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit350.i

if.then.i349.i:                                   ; preds = %rtl_write_dword.exit342.i
  call void @__sanitizer_cov_trace_pc() #10
  %343 = ptrtoint ptr %read32_sync.i232.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %read32_sync.i232.i, align 4
  %call.i348.i = tail call i32 %344(ptr noundef %10, i32 noundef 792) #8
  br label %rtl_write_dword.exit350.i

rtl_write_dword.exit350.i:                        ; preds = %if.then.i349.i, %rtl_write_dword.exit342.i.rtl_write_dword.exit350.i_crit_edge
  %dma55.i = getelementptr %struct.rtl_priv, ptr %10, i32 1, i32 7, i32 3, i32 0, i32 0, i32 4
  %345 = ptrtoint ptr %dma55.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %dma55.i, align 4
  %347 = ptrtoint ptr %write32_async.i269.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %write32_async.i269.i, align 4
  tail call void %348(ptr noundef %10, i32 noundef 800, i32 noundef %346) #8
  %349 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i353.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %350, i32 0, i32 1
  %351 = ptrtoint ptr %write_readback.i353.i to i32
  call void @__asan_load1_noabort(i32 %351)
  %352 = load i8, ptr %write_readback.i353.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %352)
  %tobool.not.i354.i = icmp eq i8 %352, 0
  br i1 %tobool.not.i354.i, label %rtl_write_dword.exit350.i.rtl_write_dword.exit358.i_crit_edge, label %if.then.i357.i

rtl_write_dword.exit350.i.rtl_write_dword.exit358.i_crit_edge: ; preds = %rtl_write_dword.exit350.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit358.i

if.then.i357.i:                                   ; preds = %rtl_write_dword.exit350.i
  call void @__sanitizer_cov_trace_pc() #10
  %353 = ptrtoint ptr %read32_sync.i232.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %read32_sync.i232.i, align 4
  %call.i356.i = tail call i32 %354(ptr noundef %10, i32 noundef 800) #8
  br label %rtl_write_dword.exit358.i

rtl_write_dword.exit358.i:                        ; preds = %if.then.i357.i, %rtl_write_dword.exit350.i.rtl_write_dword.exit358.i_crit_edge
  %dma61.i = getelementptr %struct.rtl_priv, ptr %10, i32 1, i32 7, i32 2, i32 1, i32 4, i32 1
  %355 = ptrtoint ptr %dma61.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %dma61.i, align 4
  %357 = ptrtoint ptr %write32_async.i269.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %write32_async.i269.i, align 4
  tail call void %358(ptr noundef %10, i32 noundef 808, i32 noundef %356) #8
  %359 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i361.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %360, i32 0, i32 1
  %361 = ptrtoint ptr %write_readback.i361.i to i32
  call void @__asan_load1_noabort(i32 %361)
  %362 = load i8, ptr %write_readback.i361.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %362)
  %tobool.not.i362.i = icmp eq i8 %362, 0
  br i1 %tobool.not.i362.i, label %rtl_write_dword.exit358.i.rtl_write_dword.exit366.i_crit_edge, label %if.then.i365.i

rtl_write_dword.exit358.i.rtl_write_dword.exit366.i_crit_edge: ; preds = %rtl_write_dword.exit358.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit366.i

if.then.i365.i:                                   ; preds = %rtl_write_dword.exit358.i
  call void @__sanitizer_cov_trace_pc() #10
  %363 = ptrtoint ptr %read32_sync.i232.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %read32_sync.i232.i, align 4
  %call.i364.i = tail call i32 %364(ptr noundef %10, i32 noundef 808) #8
  br label %rtl_write_dword.exit366.i

rtl_write_dword.exit366.i:                        ; preds = %if.then.i365.i, %rtl_write_dword.exit358.i.rtl_write_dword.exit366.i_crit_edge
  %dma67.i = getelementptr %struct.rtl_priv, ptr %10, i32 1, i32 7, i32 1, i32 1, i32 4, i32 2
  %365 = ptrtoint ptr %dma67.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %dma67.i, align 4
  %367 = ptrtoint ptr %write32_async.i269.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %write32_async.i269.i, align 4
  tail call void %368(ptr noundef %10, i32 noundef 816, i32 noundef %366) #8
  %369 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i369.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %370, i32 0, i32 1
  %371 = ptrtoint ptr %write_readback.i369.i to i32
  call void @__asan_load1_noabort(i32 %371)
  %372 = load i8, ptr %write_readback.i369.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %372)
  %tobool.not.i370.i = icmp eq i8 %372, 0
  br i1 %tobool.not.i370.i, label %rtl_write_dword.exit366.i.rtl_write_dword.exit374.i_crit_edge, label %if.then.i373.i

rtl_write_dword.exit366.i.rtl_write_dword.exit374.i_crit_edge: ; preds = %rtl_write_dword.exit366.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit374.i

if.then.i373.i:                                   ; preds = %rtl_write_dword.exit366.i
  call void @__sanitizer_cov_trace_pc() #10
  %373 = ptrtoint ptr %read32_sync.i232.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %read32_sync.i232.i, align 4
  %call.i372.i = tail call i32 %374(ptr noundef %10, i32 noundef 816) #8
  br label %rtl_write_dword.exit374.i

rtl_write_dword.exit374.i:                        ; preds = %if.then.i373.i, %rtl_write_dword.exit366.i.rtl_write_dword.exit374.i_crit_edge
  %dma73.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 1, i32 7, i32 0, i32 1, i32 4, i32 6
  %375 = ptrtoint ptr %dma73.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %dma73.i, align 4
  %377 = ptrtoint ptr %write32_async.i269.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %write32_async.i269.i, align 4
  tail call void %378(ptr noundef %10, i32 noundef 824, i32 noundef %376) #8
  %379 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i377.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %380, i32 0, i32 1
  %381 = ptrtoint ptr %write_readback.i377.i to i32
  call void @__asan_load1_noabort(i32 %381)
  %382 = load i8, ptr %write_readback.i377.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %382)
  %tobool.not.i378.i = icmp eq i8 %382, 0
  br i1 %tobool.not.i378.i, label %rtl_write_dword.exit374.i.rtl_write_dword.exit382.i_crit_edge, label %if.then.i381.i

rtl_write_dword.exit374.i.rtl_write_dword.exit382.i_crit_edge: ; preds = %rtl_write_dword.exit374.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit382.i

if.then.i381.i:                                   ; preds = %rtl_write_dword.exit374.i
  call void @__sanitizer_cov_trace_pc() #10
  %383 = ptrtoint ptr %read32_sync.i232.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %read32_sync.i232.i, align 4
  %call.i380.i = tail call i32 %384(ptr noundef %10, i32 noundef 824) #8
  br label %rtl_write_dword.exit382.i

rtl_write_dword.exit382.i:                        ; preds = %if.then.i381.i, %rtl_write_dword.exit374.i.rtl_write_dword.exit382.i_crit_edge
  %dma79.i = getelementptr %struct.rtl_priv, ptr %10, i32 1, i32 7, i32 11
  %385 = ptrtoint ptr %dma79.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %dma79.i, align 4
  %387 = ptrtoint ptr %write32_async.i269.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %write32_async.i269.i, align 4
  tail call void %388(ptr noundef %10, i32 noundef 784, i32 noundef %386) #8
  %389 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i385.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %390, i32 0, i32 1
  %391 = ptrtoint ptr %write_readback.i385.i to i32
  call void @__asan_load1_noabort(i32 %391)
  %392 = load i8, ptr %write_readback.i385.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %392)
  %tobool.not.i386.i = icmp eq i8 %392, 0
  br i1 %tobool.not.i386.i, label %rtl_write_dword.exit382.i.rtl_write_dword.exit390.i_crit_edge, label %if.then.i389.i

rtl_write_dword.exit382.i.rtl_write_dword.exit390.i_crit_edge: ; preds = %rtl_write_dword.exit382.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit390.i

if.then.i389.i:                                   ; preds = %rtl_write_dword.exit382.i
  call void @__sanitizer_cov_trace_pc() #10
  %393 = ptrtoint ptr %read32_sync.i232.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %read32_sync.i232.i, align 4
  %call.i388.i = tail call i32 %394(ptr noundef %10, i32 noundef 784) #8
  br label %rtl_write_dword.exit390.i

rtl_write_dword.exit390.i:                        ; preds = %if.then.i389.i, %rtl_write_dword.exit382.i.rtl_write_dword.exit390.i_crit_edge
  %dma84.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 1, i32 8, i32 2, i32 4, i32 1
  %395 = ptrtoint ptr %dma84.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load i32, ptr %dma84.i, align 4
  %397 = ptrtoint ptr %write32_async.i269.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %write32_async.i269.i, align 4
  tail call void %398(ptr noundef %10, i32 noundef 832, i32 noundef %396) #8
  %399 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i393.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %400, i32 0, i32 1
  %401 = ptrtoint ptr %write_readback.i393.i to i32
  call void @__asan_load1_noabort(i32 %401)
  %402 = load i8, ptr %write_readback.i393.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %402)
  %tobool.not.i394.i = icmp eq i8 %402, 0
  br i1 %tobool.not.i394.i, label %rtl_write_dword.exit390.i.rtl_write_dword.exit398.i_crit_edge, label %if.then.i397.i

rtl_write_dword.exit390.i.rtl_write_dword.exit398.i_crit_edge: ; preds = %rtl_write_dword.exit390.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit398.i

if.then.i397.i:                                   ; preds = %rtl_write_dword.exit390.i
  call void @__sanitizer_cov_trace_pc() #10
  %403 = ptrtoint ptr %read32_sync.i232.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %read32_sync.i232.i, align 4
  %call.i396.i = tail call i32 %404(ptr noundef %10, i32 noundef 832) #8
  br label %rtl_write_dword.exit398.i

rtl_write_dword.exit398.i:                        ; preds = %if.then.i397.i, %rtl_write_dword.exit390.i.rtl_write_dword.exit398.i_crit_edge
  %version.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 10, i32 13
  %405 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %version.i, align 4
  %and88.i = and i32 %406, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and88.i)
  %cmp89.i = icmp eq i32 %and88.i, 1
  %407 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %write8_async.i.i, align 4
  br i1 %cmp89.i, label %if.then93.i, label %if.else.i

if.then93.i:                                      ; preds = %rtl_write_dword.exit398.i
  tail call void %408(ptr noundef %10, i32 noundef 771, i8 noundef zeroext 119) #8
  %409 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i401.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %410, i32 0, i32 1
  %411 = ptrtoint ptr %write_readback.i401.i to i32
  call void @__asan_load1_noabort(i32 %411)
  %412 = load i8, ptr %write_readback.i401.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %412)
  %tobool.not.i402.i = icmp eq i8 %412, 0
  br i1 %tobool.not.i402.i, label %if.then93.i.if.end94.i_crit_edge, label %if.then93.i.if.end94.sink.split.i_crit_edge

if.then93.i.if.end94.sink.split.i_crit_edge:      ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94.sink.split.i

if.then93.i.if.end94.i_crit_edge:                 ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94.i

if.else.i:                                        ; preds = %rtl_write_dword.exit398.i
  tail call void %408(ptr noundef %10, i32 noundef 771, i8 noundef zeroext 34) #8
  %413 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i409.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %414, i32 0, i32 1
  %415 = ptrtoint ptr %write_readback.i409.i to i32
  call void @__asan_load1_noabort(i32 %415)
  %416 = load i8, ptr %write_readback.i409.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %416)
  %tobool.not.i410.i = icmp eq i8 %416, 0
  br i1 %tobool.not.i410.i, label %if.else.i.if.end94.i_crit_edge, label %if.else.i.if.end94.sink.split.i_crit_edge

if.else.i.if.end94.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94.sink.split.i

if.else.i.if.end94.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94.i

if.end94.sink.split.i:                            ; preds = %if.else.i.if.end94.sink.split.i_crit_edge, %if.then93.i.if.end94.sink.split.i_crit_edge
  %417 = ptrtoint ptr %read8_sync.i220.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %read8_sync.i220.i, align 4
  %call.i412.i = tail call zeroext i8 %418(ptr noundef %10, i32 noundef 771) #8
  br label %if.end94.i

if.end94.i:                                       ; preds = %if.end94.sink.split.i, %if.else.i.if.end94.i_crit_edge, %if.then93.i.if.end94.i_crit_edge
  %419 = ptrtoint ptr %write32_async.i269.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %write32_async.i269.i, align 4
  tail call void %420(ptr noundef %10, i32 noundef 772, i32 noundef 0) #8
  %421 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i417.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %422, i32 0, i32 1
  %423 = ptrtoint ptr %write_readback.i417.i to i32
  call void @__asan_load1_noabort(i32 %423)
  %424 = load i8, ptr %write_readback.i417.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %424)
  %tobool.not.i418.i = icmp eq i8 %424, 0
  br i1 %tobool.not.i418.i, label %if.end94.i.rtl_write_dword.exit422.i_crit_edge, label %if.then.i421.i

if.end94.i.rtl_write_dword.exit422.i_crit_edge:   ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit422.i

if.then.i421.i:                                   ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #10
  %425 = ptrtoint ptr %read32_sync.i232.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %read32_sync.i232.i, align 4
  %call.i420.i = tail call i32 %426(ptr noundef %10, i32 noundef 772) #8
  br label %rtl_write_dword.exit422.i

rtl_write_dword.exit422.i:                        ; preds = %if.then.i421.i, %if.end94.i.rtl_write_dword.exit422.i_crit_edge
  %427 = ptrtoint ptr %read8_sync.i220.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %read8_sync.i220.i, align 4
  %call.i424.i = tail call zeroext i8 %428(ptr noundef %10, i32 noundef 1536) #8
  %429 = and i8 %call.i424.i, -65
  %430 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %431(ptr noundef %10, i32 noundef 1536, i8 noundef zeroext %429) #8
  %432 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i427.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %433, i32 0, i32 1
  %434 = ptrtoint ptr %write_readback.i427.i to i32
  call void @__asan_load1_noabort(i32 %434)
  %435 = load i8, ptr %write_readback.i427.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %435)
  %tobool.not.i428.i = icmp eq i8 %435, 0
  br i1 %tobool.not.i428.i, label %rtl_write_dword.exit422.i.do.body.i.preheader_crit_edge, label %if.then.i431.i

rtl_write_dword.exit422.i.do.body.i.preheader_crit_edge: ; preds = %rtl_write_dword.exit422.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.preheader

if.then.i431.i:                                   ; preds = %rtl_write_dword.exit422.i
  call void @__sanitizer_cov_trace_pc() #10
  %436 = ptrtoint ptr %read8_sync.i220.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %read8_sync.i220.i, align 4
  %call.i430.i = tail call zeroext i8 %437(ptr noundef %10, i32 noundef 1536) #8
  br label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %if.then.i431.i, %rtl_write_dword.exit422.i.do.body.i.preheader_crit_edge
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.i.preheader
  %retry.1.i = phi i16 [ %inc99.i, %do.body.i.do.body.i_crit_edge ], [ %retry.0.lcssa.i, %do.body.i.preheader ]
  %inc99.i = add nuw nsw i16 %retry.1.i, 1
  %438 = ptrtoint ptr %read8_sync.i220.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %read8_sync.i220.i, align 4
  %call.i434.i = tail call zeroext i8 %439(ptr noundef %10, i32 noundef 1536) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 198, i16 %retry.1.i)
  %cmp102.i = icmp ugt i16 %retry.1.i, 198
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i434.i)
  %tobool107.not.i = icmp sgt i8 %call.i434.i, -1
  %or.cond186.i = select i1 %cmp102.i, i1 true, i1 %tobool107.not.i
  br i1 %or.cond186.i, label %do.end.i, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  %440 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %priv, align 8
  %dev.i.i = getelementptr inbounds %struct.rtl_priv, ptr %441, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1
  %sw_led0.i.i = getelementptr inbounds %struct.rtl_priv, ptr %441, i32 0, i32 18, i32 1
  %up_first_time.i.i = getelementptr inbounds %struct.rtl_pci, ptr %dev.i.i, i32 0, i32 3
  %442 = ptrtoint ptr %up_first_time.i.i to i32
  call void @__asan_load1_noabort(i32 %442)
  %443 = load i8, ptr %up_first_time.i.i, align 2, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %443)
  %tobool.not.i436.i = icmp eq i8 %443, 0
  br i1 %tobool.not.i436.i, label %if.end.i.i, label %do.end.i._rtl92ce_gen_refresh_led_state.exit.i_crit_edge

do.end.i._rtl92ce_gen_refresh_led_state.exit.i_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ce_gen_refresh_led_state.exit.i

if.end.i.i:                                       ; preds = %do.end.i
  %rfoff_reason.i.i = getelementptr inbounds %struct.rtl_priv, ptr %441, i32 0, i32 21, i32 18
  %444 = ptrtoint ptr %rfoff_reason.i.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %rfoff_reason.i.i, align 4
  %446 = zext i32 %445 to i64
  call void @__sanitizer_cov_trace_switch(i64 %446, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %445, label %if.else8.i.i [
    i32 268435456, label %if.then4.i.i
    i32 0, label %if.then7.i.i
  ]

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rtl92ce_sw_led_on(ptr noundef %hw, ptr noundef %sw_led0.i.i) #8
  br label %_rtl92ce_gen_refresh_led_state.exit.i

if.then7.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rtl92ce_sw_led_on(ptr noundef %hw, ptr noundef %sw_led0.i.i) #8
  br label %_rtl92ce_gen_refresh_led_state.exit.i

if.else8.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rtl92ce_sw_led_off(ptr noundef %hw, ptr noundef %sw_led0.i.i) #8
  br label %_rtl92ce_gen_refresh_led_state.exit.i

_rtl92ce_gen_refresh_led_state.exit.i:            ; preds = %if.else8.i.i, %if.then7.i.i, %if.then4.i.i, %do.end.i._rtl92ce_gen_refresh_led_state.exit.i_crit_edge
  %447 = ptrtoint ptr %write32_async.i269.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %write32_async.i269.i, align 4
  tail call void %448(ptr noundef %10, i32 noundef 448, i32 noundef 0) #8
  %449 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i439.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %450, i32 0, i32 1
  %451 = ptrtoint ptr %write_readback.i439.i to i32
  call void @__asan_load1_noabort(i32 %451)
  %452 = load i8, ptr %write_readback.i439.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %452)
  %tobool.not.i440.i = icmp eq i8 %452, 0
  br i1 %tobool.not.i440.i, label %_rtl92ce_gen_refresh_led_state.exit.i.if.end_crit_edge, label %if.then.i443.i

_rtl92ce_gen_refresh_led_state.exit.i.if.end_crit_edge: ; preds = %_rtl92ce_gen_refresh_led_state.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i443.i:                                   ; preds = %_rtl92ce_gen_refresh_led_state.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %453 = ptrtoint ptr %read32_sync.i232.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %read32_sync.i232.i, align 4
  %call.i442.i = tail call i32 %454(ptr noundef %10, i32 noundef 448) #8
  br label %if.end

do.end13:                                         ; preds = %if.end.i208.i.i.do.end13_crit_edge, %if.end.i185.i.i.do.end13_crit_edge, %if.end.i157.i.i.do.end13_crit_edge, %if.end.i.i.i.do.end13_crit_edge
  %.sink.i.i = phi i32 [ 255, %if.end.i208.i.i.do.end13_crit_edge ], [ %indvars.iv220.i.i, %if.end.i185.i.i.do.end13_crit_edge ], [ 245, %if.end.i157.i.i.do.end13_crit_edge ], [ %indvars.iv.i.i, %if.end.i.i.i.do.end13_crit_edge ]
  %call7.i209.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %.sink.i.i) #11
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #11
  br label %do.body113

if.end:                                           ; preds = %if.then.i443.i, %_rtl92ce_gen_refresh_led_state.exit.i.if.end_crit_edge
  %call16 = tail call i32 @rtl92c_download_fw(ptr noundef %hw) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.18) #8
  br label %do.body113

if.end19:                                         ; preds = %if.end
  %455 = ptrtoint ptr %fw_ready to i32
  call void @__asan_store1_noabort(i32 %455)
  store i8 1, ptr %fw_ready, align 2
  %last_hmeboxnum = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 37
  %456 = ptrtoint ptr %last_hmeboxnum to i32
  call void @__asan_store1_noabort(i32 %456)
  store i8 0, ptr %last_hmeboxnum, align 1
  %call21 = tail call zeroext i1 @rtl92c_phy_mac_config(ptr noundef %hw) #8
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %457 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %read32_sync.i, align 4
  %call.i = tail call i32 %458(ptr noundef %1, i32 noundef 1544) #8
  %receive_config = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 3
  %and = and i32 %call.i, -769
  %459 = ptrtoint ptr %receive_config to i32
  call void @__asan_store4_noabort(i32 %459)
  store i32 %and, ptr %receive_config, align 4
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %460 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %write32_async.i, align 4
  tail call void %461(ptr noundef %1, i32 noundef 1544, i32 noundef %and) #8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %462 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %463, i32 0, i32 1
  %464 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %464)
  %465 = load i8, ptr %write_readback.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %465)
  %tobool.not.i222 = icmp eq i8 %465, 0
  br i1 %tobool.not.i222, label %if.end19.rtl_write_dword.exit_crit_edge, label %if.then.i225

if.end19.rtl_write_dword.exit_crit_edge:          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit

if.then.i225:                                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %466 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %read32_sync.i, align 4
  %call.i224 = tail call i32 %467(ptr noundef %1, i32 noundef 1544) #8
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i225, %if.end19.rtl_write_dword.exit_crit_edge
  %call25 = tail call zeroext i1 @rtl92c_phy_bb_config(ptr noundef %hw) #8
  %rf_mode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 3
  %468 = ptrtoint ptr %rf_mode to i32
  call void @__asan_store1_noabort(i32 %468)
  store i8 0, ptr %rf_mode, align 4
  %call26 = tail call zeroext i1 @rtl92c_phy_rf_config(ptr noundef %hw) #8
  %version = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 13
  %469 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load i32, ptr %version, align 4
  %471 = and i32 %470, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %471)
  %472 = icmp ne i32 %471, 32
  %and37 = and i32 %470, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and37)
  %cmp38 = icmp eq i32 %and37, 1
  %or.cond220 = or i1 %472, %cmp38
  br i1 %or.cond220, label %if.else, label %if.then44

if.then44:                                        ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #10
  %473 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %priv, align 8
  %cfg.i228 = getelementptr inbounds %struct.rtl_priv, ptr %474, i32 0, i32 32
  %475 = ptrtoint ptr %cfg.i228 to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %cfg.i228, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %476, i32 0, i32 4
  %477 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %ops.i, align 4
  %set_rfreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %478, i32 0, i32 48
  %479 = ptrtoint ptr %set_rfreg.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %set_rfreg.i, align 4
  tail call void %480(ptr noundef %hw, i32 noundef 0, i32 noundef 26, i32 noundef -1, i32 noundef 197205) #8
  %481 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %priv, align 8
  %cfg.i230 = getelementptr inbounds %struct.rtl_priv, ptr %482, i32 0, i32 32
  %483 = ptrtoint ptr %cfg.i230 to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %cfg.i230, align 8
  %ops.i231 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %484, i32 0, i32 4
  %485 = ptrtoint ptr %ops.i231 to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load ptr, ptr %ops.i231, align 4
  %set_rfreg.i232 = getelementptr inbounds %struct.rtl_hal_ops, ptr %486, i32 0, i32 48
  %487 = ptrtoint ptr %set_rfreg.i232 to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %set_rfreg.i232, align 4
  tail call void %488(ptr noundef %hw, i32 noundef 0, i32 noundef 27, i32 noundef -1, i32 noundef 330240) #8
  br label %if.end60

if.else:                                          ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %471)
  %489 = icmp eq i32 %471, 96
  br i1 %489, label %if.then58, label %if.else.if.end60_crit_edge

if.else.if.end60_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.then58:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %490 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %priv, align 8
  %cfg.i234 = getelementptr inbounds %struct.rtl_priv, ptr %491, i32 0, i32 32
  %492 = ptrtoint ptr %cfg.i234 to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %cfg.i234, align 8
  %ops.i235 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %493, i32 0, i32 4
  %494 = ptrtoint ptr %ops.i235 to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %ops.i235, align 4
  %set_rfreg.i236 = getelementptr inbounds %struct.rtl_hal_ops, ptr %495, i32 0, i32 48
  %496 = ptrtoint ptr %set_rfreg.i236 to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %set_rfreg.i236, align 4
  tail call void %497(ptr noundef %hw, i32 noundef 0, i32 noundef 12, i32 noundef -1, i32 noundef 562350) #8
  %498 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load ptr, ptr %priv, align 8
  %cfg.i238 = getelementptr inbounds %struct.rtl_priv, ptr %499, i32 0, i32 32
  %500 = ptrtoint ptr %cfg.i238 to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %cfg.i238, align 8
  %ops.i239 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %501, i32 0, i32 4
  %502 = ptrtoint ptr %ops.i239 to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %ops.i239, align 4
  %set_rfreg.i240 = getelementptr inbounds %struct.rtl_hal_ops, ptr %503, i32 0, i32 48
  %504 = ptrtoint ptr %set_rfreg.i240 to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load ptr, ptr %set_rfreg.i240, align 4
  tail call void %505(ptr noundef %hw, i32 noundef 0, i32 noundef 10, i32 noundef -1, i32 noundef 110385) #8
  %506 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %priv, align 8
  %cfg.i242 = getelementptr inbounds %struct.rtl_priv, ptr %507, i32 0, i32 32
  %508 = ptrtoint ptr %cfg.i242 to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %cfg.i242, align 8
  %ops.i243 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %509, i32 0, i32 4
  %510 = ptrtoint ptr %ops.i243 to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %ops.i243, align 4
  %set_rfreg.i244 = getelementptr inbounds %struct.rtl_hal_ops, ptr %511, i32 0, i32 48
  %512 = ptrtoint ptr %set_rfreg.i244 to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %set_rfreg.i244, align 4
  tail call void %513(ptr noundef %hw, i32 noundef 0, i32 noundef 21, i32 noundef -1, i32 noundef 586789) #8
  %514 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %priv, align 8
  %cfg.i246 = getelementptr inbounds %struct.rtl_priv, ptr %515, i32 0, i32 32
  %516 = ptrtoint ptr %cfg.i246 to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %cfg.i246, align 8
  %ops.i247 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %517, i32 0, i32 4
  %518 = ptrtoint ptr %ops.i247 to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %ops.i247, align 4
  %set_rfreg.i248 = getelementptr inbounds %struct.rtl_hal_ops, ptr %519, i32 0, i32 48
  %520 = ptrtoint ptr %set_rfreg.i248 to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %set_rfreg.i248, align 4
  tail call void %521(ptr noundef %hw, i32 noundef 0, i32 noundef 38, i32 noundef -1, i32 noundef 324096) #8
  %522 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %priv, align 8
  %cfg.i250 = getelementptr inbounds %struct.rtl_priv, ptr %523, i32 0, i32 32
  %524 = ptrtoint ptr %cfg.i250 to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %cfg.i250, align 8
  %ops.i251 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %525, i32 0, i32 4
  %526 = ptrtoint ptr %ops.i251 to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %ops.i251, align 4
  %set_rfreg.i252 = getelementptr inbounds %struct.rtl_hal_ops, ptr %527, i32 0, i32 48
  %528 = ptrtoint ptr %set_rfreg.i252 to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %set_rfreg.i252, align 4
  tail call void %529(ptr noundef %hw, i32 noundef 0, i32 noundef 30, i32 noundef -1, i32 noundef 278611) #8
  %530 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %priv, align 8
  %cfg.i254 = getelementptr inbounds %struct.rtl_priv, ptr %531, i32 0, i32 32
  %532 = ptrtoint ptr %cfg.i254 to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %cfg.i254, align 8
  %ops.i255 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %533, i32 0, i32 4
  %534 = ptrtoint ptr %ops.i255 to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load ptr, ptr %ops.i255, align 4
  %set_rfreg.i256 = getelementptr inbounds %struct.rtl_hal_ops, ptr %535, i32 0, i32 48
  %536 = ptrtoint ptr %set_rfreg.i256 to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %set_rfreg.i256, align 4
  tail call void %537(ptr noundef %hw, i32 noundef 0, i32 noundef 31, i32 noundef -1, i32 noundef 524801) #8
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %if.else.if.end60_crit_edge, %if.then44
  %538 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %priv, align 8
  %cfg.i258 = getelementptr inbounds %struct.rtl_priv, ptr %539, i32 0, i32 32
  %540 = ptrtoint ptr %cfg.i258 to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %cfg.i258, align 8
  %ops.i259 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %541, i32 0, i32 4
  %542 = ptrtoint ptr %ops.i259 to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %ops.i259, align 4
  %get_rfreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %543, i32 0, i32 47
  %544 = ptrtoint ptr %get_rfreg.i to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %get_rfreg.i, align 4
  %call.i260 = tail call i32 %545(ptr noundef %hw, i32 noundef 0, i32 noundef 24, i32 noundef 1048575) #8
  %rfreg_chnlval = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 52
  %546 = ptrtoint ptr %rfreg_chnlval to i32
  call void @__asan_store4_noabort(i32 %546)
  store i32 %call.i260, ptr %rfreg_chnlval, align 4
  %547 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load ptr, ptr %priv, align 8
  %cfg.i262 = getelementptr inbounds %struct.rtl_priv, ptr %548, i32 0, i32 32
  %549 = ptrtoint ptr %cfg.i262 to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load ptr, ptr %cfg.i262, align 8
  %ops.i263 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %550, i32 0, i32 4
  %551 = ptrtoint ptr %ops.i263 to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load ptr, ptr %ops.i263, align 4
  %get_rfreg.i264 = getelementptr inbounds %struct.rtl_hal_ops, ptr %552, i32 0, i32 47
  %553 = ptrtoint ptr %get_rfreg.i264 to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load ptr, ptr %get_rfreg.i264, align 4
  %call.i265 = tail call i32 %554(ptr noundef %hw, i32 noundef 1, i32 noundef 24, i32 noundef 1048575) #8
  %arrayidx64 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 52, i32 1
  %555 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store4_noabort(i32 %555)
  store i32 %call.i265, ptr %arrayidx64, align 4
  %556 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load ptr, ptr %priv, align 8
  %cfg.i267 = getelementptr inbounds %struct.rtl_priv, ptr %557, i32 0, i32 32
  %558 = ptrtoint ptr %cfg.i267 to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %cfg.i267, align 8
  %ops.i268 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %559, i32 0, i32 4
  %560 = ptrtoint ptr %ops.i268 to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load ptr, ptr %ops.i268, align 4
  %set_bbreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %561, i32 0, i32 46
  %562 = ptrtoint ptr %set_bbreg.i to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load ptr, ptr %set_bbreg.i, align 4
  tail call void %563(ptr noundef %hw, i32 noundef 2048, i32 noundef 16777216, i32 noundef 1) #8
  %564 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load ptr, ptr %priv, align 8
  %cfg.i270 = getelementptr inbounds %struct.rtl_priv, ptr %565, i32 0, i32 32
  %566 = ptrtoint ptr %cfg.i270 to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load ptr, ptr %cfg.i270, align 8
  %ops.i271 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %567, i32 0, i32 4
  %568 = ptrtoint ptr %ops.i271 to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load ptr, ptr %ops.i271, align 4
  %set_bbreg.i272 = getelementptr inbounds %struct.rtl_hal_ops, ptr %569, i32 0, i32 46
  %570 = ptrtoint ptr %set_bbreg.i272 to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load ptr, ptr %set_bbreg.i272, align 4
  tail call void %571(ptr noundef %hw, i32 noundef 2048, i32 noundef 33554432, i32 noundef 1) #8
  %572 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load ptr, ptr %priv, align 8
  %cfg.i274 = getelementptr inbounds %struct.rtl_priv, ptr %573, i32 0, i32 32
  %574 = ptrtoint ptr %cfg.i274 to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load ptr, ptr %cfg.i274, align 8
  %ops.i275 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %575, i32 0, i32 4
  %576 = ptrtoint ptr %ops.i275 to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load ptr, ptr %ops.i275, align 4
  %set_bbreg.i276 = getelementptr inbounds %struct.rtl_hal_ops, ptr %577, i32 0, i32 46
  %578 = ptrtoint ptr %set_bbreg.i276 to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load ptr, ptr %set_bbreg.i276, align 4
  tail call void %579(ptr noundef %hw, i32 noundef 2180, i32 noundef 1024, i32 noundef 1) #8
  %580 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load ptr, ptr %priv, align 8
  %write8_async.i.i278 = getelementptr inbounds %struct.rtl_priv, ptr %581, i32 0, i32 13, i32 5
  %582 = ptrtoint ptr %write8_async.i.i278 to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load ptr, ptr %write8_async.i.i278, align 4
  tail call void %583(ptr noundef %581, i32 noundef 1152, i8 noundef zeroext 8) #8
  %cfg.i.i279 = getelementptr inbounds %struct.rtl_priv, ptr %581, i32 0, i32 32
  %584 = ptrtoint ptr %cfg.i.i279 to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load ptr, ptr %cfg.i.i279, align 8
  %write_readback.i.i280 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %585, i32 0, i32 1
  %586 = ptrtoint ptr %write_readback.i.i280 to i32
  call void @__asan_load1_noabort(i32 %586)
  %587 = load i8, ptr %write_readback.i.i280, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %587)
  %tobool.not.i.i281 = icmp eq i8 %587, 0
  br i1 %tobool.not.i.i281, label %if.end60.rtl_write_byte.exit.i285_crit_edge, label %if.then.i.i284

if.end60.rtl_write_byte.exit.i285_crit_edge:      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit.i285

if.then.i.i284:                                   ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i282 = getelementptr inbounds %struct.rtl_priv, ptr %581, i32 0, i32 13, i32 9
  %588 = ptrtoint ptr %read8_sync.i.i282 to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load ptr, ptr %read8_sync.i.i282, align 4
  %call.i.i283 = tail call zeroext i8 %589(ptr noundef %581, i32 noundef 1152) #8
  br label %rtl_write_byte.exit.i285

rtl_write_byte.exit.i285:                         ; preds = %if.then.i.i284, %if.end60.rtl_write_byte.exit.i285_crit_edge
  %590 = ptrtoint ptr %write8_async.i.i278 to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load ptr, ptr %write8_async.i.i278, align 4
  tail call void %591(ptr noundef %581, i32 noundef 1539, i8 noundef zeroext 4) #8
  %592 = ptrtoint ptr %cfg.i.i279 to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load ptr, ptr %cfg.i.i279, align 8
  %write_readback.i78.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %593, i32 0, i32 1
  %594 = ptrtoint ptr %write_readback.i78.i to i32
  call void @__asan_load1_noabort(i32 %594)
  %595 = load i8, ptr %write_readback.i78.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %595)
  %tobool.not.i79.i = icmp eq i8 %595, 0
  br i1 %tobool.not.i79.i, label %rtl_write_byte.exit.i285.rtl_write_byte.exit83.i_crit_edge, label %if.then.i82.i

rtl_write_byte.exit.i285.rtl_write_byte.exit83.i_crit_edge: ; preds = %rtl_write_byte.exit.i285
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit83.i

if.then.i82.i:                                    ; preds = %rtl_write_byte.exit.i285
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i80.i = getelementptr inbounds %struct.rtl_priv, ptr %581, i32 0, i32 13, i32 9
  %596 = ptrtoint ptr %read8_sync.i80.i to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load ptr, ptr %read8_sync.i80.i, align 4
  %call.i81.i = tail call zeroext i8 %597(ptr noundef %581, i32 noundef 1539) #8
  br label %rtl_write_byte.exit83.i

rtl_write_byte.exit83.i:                          ; preds = %if.then.i82.i, %rtl_write_byte.exit.i285.rtl_write_byte.exit83.i_crit_edge
  %write32_async.i.i286 = getelementptr inbounds %struct.rtl_priv, ptr %581, i32 0, i32 13, i32 7
  %598 = ptrtoint ptr %write32_async.i.i286 to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load ptr, ptr %write32_async.i.i286, align 4
  tail call void %599(ptr noundef %581, i32 noundef 1088, i32 noundef 4095) #8
  %600 = ptrtoint ptr %cfg.i.i279 to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load ptr, ptr %cfg.i.i279, align 8
  %write_readback.i85.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %601, i32 0, i32 1
  %602 = ptrtoint ptr %write_readback.i85.i to i32
  call void @__asan_load1_noabort(i32 %602)
  %603 = load i8, ptr %write_readback.i85.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %603)
  %tobool.not.i86.i = icmp eq i8 %603, 0
  br i1 %tobool.not.i86.i, label %rtl_write_byte.exit83.i.rtl_write_dword.exit.i_crit_edge, label %if.then.i88.i

rtl_write_byte.exit83.i.rtl_write_dword.exit.i_crit_edge: ; preds = %rtl_write_byte.exit83.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit.i

if.then.i88.i:                                    ; preds = %rtl_write_byte.exit83.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i.i287 = getelementptr inbounds %struct.rtl_priv, ptr %581, i32 0, i32 13, i32 11
  %604 = ptrtoint ptr %read32_sync.i.i287 to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load ptr, ptr %read32_sync.i.i287, align 4
  %call.i87.i = tail call i32 %605(ptr noundef %581, i32 noundef 1088) #8
  br label %rtl_write_dword.exit.i

rtl_write_dword.exit.i:                           ; preds = %if.then.i88.i, %rtl_write_byte.exit83.i.rtl_write_dword.exit.i_crit_edge
  %606 = ptrtoint ptr %write8_async.i.i278 to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load ptr, ptr %write8_async.i.i278, align 4
  tail call void %607(ptr noundef %581, i32 noundef 1307, i8 noundef zeroext 9) #8
  %608 = ptrtoint ptr %cfg.i.i279 to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load ptr, ptr %cfg.i.i279, align 8
  %write_readback.i91.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %609, i32 0, i32 1
  %610 = ptrtoint ptr %write_readback.i91.i to i32
  call void @__asan_load1_noabort(i32 %610)
  %611 = load i8, ptr %write_readback.i91.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %611)
  %tobool.not.i92.i = icmp eq i8 %611, 0
  br i1 %tobool.not.i92.i, label %rtl_write_dword.exit.i.rtl_write_byte.exit96.i_crit_edge, label %if.then.i95.i

rtl_write_dword.exit.i.rtl_write_byte.exit96.i_crit_edge: ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit96.i

if.then.i95.i:                                    ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i93.i = getelementptr inbounds %struct.rtl_priv, ptr %581, i32 0, i32 13, i32 9
  %612 = ptrtoint ptr %read8_sync.i93.i to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load ptr, ptr %read8_sync.i93.i, align 4
  %call.i94.i = tail call zeroext i8 %613(ptr noundef %581, i32 noundef 1307) #8
  br label %rtl_write_byte.exit96.i

rtl_write_byte.exit96.i:                          ; preds = %if.then.i95.i, %rtl_write_dword.exit.i.rtl_write_byte.exit96.i_crit_edge
  %614 = ptrtoint ptr %write8_async.i.i278 to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load ptr, ptr %write8_async.i.i278, align 4
  tail call void %615(ptr noundef %581, i32 noundef 1116, i8 noundef zeroext 0) #8
  %616 = ptrtoint ptr %cfg.i.i279 to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load ptr, ptr %cfg.i.i279, align 8
  %write_readback.i99.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %617, i32 0, i32 1
  %618 = ptrtoint ptr %write_readback.i99.i to i32
  call void @__asan_load1_noabort(i32 %618)
  %619 = load i8, ptr %write_readback.i99.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %619)
  %tobool.not.i100.i = icmp eq i8 %619, 0
  br i1 %tobool.not.i100.i, label %rtl_write_byte.exit96.i.rtl_write_byte.exit104.i_crit_edge, label %if.then.i103.i

rtl_write_byte.exit96.i.rtl_write_byte.exit104.i_crit_edge: ; preds = %rtl_write_byte.exit96.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit104.i

if.then.i103.i:                                   ; preds = %rtl_write_byte.exit96.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i101.i = getelementptr inbounds %struct.rtl_priv, ptr %581, i32 0, i32 13, i32 9
  %620 = ptrtoint ptr %read8_sync.i101.i to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load ptr, ptr %read8_sync.i101.i, align 4
  %call.i102.i = tail call zeroext i8 %621(ptr noundef %581, i32 noundef 1116) #8
  br label %rtl_write_byte.exit104.i

rtl_write_byte.exit104.i:                         ; preds = %if.then.i103.i, %rtl_write_byte.exit96.i.rtl_write_byte.exit104.i_crit_edge
  %write16_async.i.i288 = getelementptr inbounds %struct.rtl_priv, ptr %581, i32 0, i32 13, i32 6
  %622 = ptrtoint ptr %write16_async.i.i288 to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load ptr, ptr %write16_async.i.i288, align 4
  tail call void %623(ptr noundef %581, i32 noundef 1056, i16 noundef zeroext 8064) #8
  %624 = ptrtoint ptr %cfg.i.i279 to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load ptr, ptr %cfg.i.i279, align 8
  %write_readback.i106.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %625, i32 0, i32 1
  %626 = ptrtoint ptr %write_readback.i106.i to i32
  call void @__asan_load1_noabort(i32 %626)
  %627 = load i8, ptr %write_readback.i106.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %627)
  %tobool.not.i107.i = icmp eq i8 %627, 0
  br i1 %tobool.not.i107.i, label %rtl_write_byte.exit104.i.rtl_write_word.exit.i290_crit_edge, label %if.then.i109.i

rtl_write_byte.exit104.i.rtl_write_word.exit.i290_crit_edge: ; preds = %rtl_write_byte.exit104.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit.i290

if.then.i109.i:                                   ; preds = %rtl_write_byte.exit104.i
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i.i289 = getelementptr inbounds %struct.rtl_priv, ptr %581, i32 0, i32 13, i32 10
  %628 = ptrtoint ptr %read16_sync.i.i289 to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load ptr, ptr %read16_sync.i.i289, align 4
  %call.i108.i = tail call zeroext i16 %629(ptr noundef %581, i32 noundef 1056) #8
  br label %rtl_write_word.exit.i290

rtl_write_word.exit.i290:                         ; preds = %if.then.i109.i, %rtl_write_byte.exit104.i.rtl_write_word.exit.i290_crit_edge
  %630 = ptrtoint ptr %write16_async.i.i288 to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load ptr, ptr %write16_async.i.i288, align 4
  tail call void %631(ptr noundef %581, i32 noundef 1066, i16 noundef zeroext 1799) #8
  %632 = ptrtoint ptr %cfg.i.i279 to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load ptr, ptr %cfg.i.i279, align 8
  %write_readback.i112.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %633, i32 0, i32 1
  %634 = ptrtoint ptr %write_readback.i112.i to i32
  call void @__asan_load1_noabort(i32 %634)
  %635 = load i8, ptr %write_readback.i112.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %635)
  %tobool.not.i113.i = icmp eq i8 %635, 0
  br i1 %tobool.not.i113.i, label %rtl_write_word.exit.i290.rtl_write_word.exit117.i_crit_edge, label %if.then.i116.i

rtl_write_word.exit.i290.rtl_write_word.exit117.i_crit_edge: ; preds = %rtl_write_word.exit.i290
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit117.i

if.then.i116.i:                                   ; preds = %rtl_write_word.exit.i290
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i114.i = getelementptr inbounds %struct.rtl_priv, ptr %581, i32 0, i32 13, i32 10
  %636 = ptrtoint ptr %read16_sync.i114.i to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load ptr, ptr %read16_sync.i114.i, align 4
  %call.i115.i = tail call zeroext i16 %637(ptr noundef %581, i32 noundef 1066) #8
  br label %rtl_write_word.exit117.i

rtl_write_word.exit117.i:                         ; preds = %if.then.i116.i, %rtl_write_word.exit.i290.rtl_write_word.exit117.i_crit_edge
  %638 = ptrtoint ptr %write32_async.i.i286 to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load ptr, ptr %write32_async.i.i286, align 4
  tail call void %639(ptr noundef %581, i32 noundef 1228, i32 noundef 33630210) #8
  %640 = ptrtoint ptr %cfg.i.i279 to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load ptr, ptr %cfg.i.i279, align 8
  %write_readback.i120.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %641, i32 0, i32 1
  %642 = ptrtoint ptr %write_readback.i120.i to i32
  call void @__asan_load1_noabort(i32 %642)
  %643 = load i8, ptr %write_readback.i120.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %643)
  %tobool.not.i121.i = icmp eq i8 %643, 0
  br i1 %tobool.not.i121.i, label %rtl_write_word.exit117.i.rtl_write_dword.exit125.i_crit_edge, label %if.then.i124.i

rtl_write_word.exit117.i.rtl_write_dword.exit125.i_crit_edge: ; preds = %rtl_write_word.exit117.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit125.i

if.then.i124.i:                                   ; preds = %rtl_write_word.exit117.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i122.i = getelementptr inbounds %struct.rtl_priv, ptr %581, i32 0, i32 13, i32 11
  %644 = ptrtoint ptr %read32_sync.i122.i to i32
  call void @__asan_load4_noabort(i32 %644)
  %645 = load ptr, ptr %read32_sync.i122.i, align 4
  %call.i123.i = tail call i32 %645(ptr noundef %581, i32 noundef 1228) #8
  br label %rtl_write_dword.exit125.i

rtl_write_dword.exit125.i:                        ; preds = %if.then.i124.i, %rtl_write_word.exit117.i.rtl_write_dword.exit125.i_crit_edge
  %646 = ptrtoint ptr %write8_async.i.i278 to i32
  call void @__asan_load4_noabort(i32 %646)
  %647 = load ptr, ptr %write8_async.i.i278, align 4
  tail call void %647(ptr noundef %581, i32 noundef 1059, i8 noundef zeroext -1) #8
  %648 = ptrtoint ptr %cfg.i.i279 to i32
  call void @__asan_load4_noabort(i32 %648)
  %649 = load ptr, ptr %cfg.i.i279, align 8
  %write_readback.i128.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %649, i32 0, i32 1
  %650 = ptrtoint ptr %write_readback.i128.i to i32
  call void @__asan_load1_noabort(i32 %650)
  %651 = load i8, ptr %write_readback.i128.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %651)
  %tobool.not.i129.i = icmp eq i8 %651, 0
  br i1 %tobool.not.i129.i, label %rtl_write_dword.exit125.i.rtl_write_byte.exit133.i_crit_edge, label %if.then.i132.i

rtl_write_dword.exit125.i.rtl_write_byte.exit133.i_crit_edge: ; preds = %rtl_write_dword.exit125.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit133.i

if.then.i132.i:                                   ; preds = %rtl_write_dword.exit125.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i130.i = getelementptr inbounds %struct.rtl_priv, ptr %581, i32 0, i32 13, i32 9
  %652 = ptrtoint ptr %read8_sync.i130.i to i32
  call void @__asan_load4_noabort(i32 %652)
  %653 = load ptr, ptr %read8_sync.i130.i, align 4
  %call.i131.i = tail call zeroext i8 %653(ptr noundef %581, i32 noundef 1059) #8
  br label %rtl_write_byte.exit133.i

rtl_write_byte.exit133.i:                         ; preds = %if.then.i132.i, %rtl_write_dword.exit125.i.rtl_write_byte.exit133.i_crit_edge
  %654 = ptrtoint ptr %write32_async.i.i286 to i32
  call void @__asan_load4_noabort(i32 %654)
  %655 = load ptr, ptr %write32_async.i.i286, align 4
  tail call void %655(ptr noundef %581, i32 noundef 1072, i32 noundef 16777216) #8
  %656 = ptrtoint ptr %cfg.i.i279 to i32
  call void @__asan_load4_noabort(i32 %656)
  %657 = load ptr, ptr %cfg.i.i279, align 8
  %write_readback.i136.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %657, i32 0, i32 1
  %658 = ptrtoint ptr %write_readback.i136.i to i32
  call void @__asan_load1_noabort(i32 %658)
  %659 = load i8, ptr %write_readback.i136.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %659)
  %tobool.not.i137.i = icmp eq i8 %659, 0
  br i1 %tobool.not.i137.i, label %rtl_write_byte.exit133.i.rtl_write_dword.exit141.i_crit_edge, label %if.then.i140.i

rtl_write_byte.exit133.i.rtl_write_dword.exit141.i_crit_edge: ; preds = %rtl_write_byte.exit133.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit141.i

if.then.i140.i:                                   ; preds = %rtl_write_byte.exit133.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i138.i = getelementptr inbounds %struct.rtl_priv, ptr %581, i32 0, i32 13, i32 11
  %660 = ptrtoint ptr %read32_sync.i138.i to i32
  call void @__asan_load4_noabort(i32 %660)
  %661 = load ptr, ptr %read32_sync.i138.i, align 4
  %call.i139.i = tail call i32 %661(ptr noundef %581, i32 noundef 1072) #8
  br label %rtl_write_dword.exit141.i

rtl_write_dword.exit141.i:                        ; preds = %if.then.i140.i, %rtl_write_byte.exit133.i.rtl_write_dword.exit141.i_crit_edge
  %662 = ptrtoint ptr %write32_async.i.i286 to i32
  call void @__asan_load4_noabort(i32 %662)
  %663 = load ptr, ptr %write32_async.i.i286, align 4
  tail call void %663(ptr noundef %581, i32 noundef 1076, i32 noundef 117835012) #8
  %664 = ptrtoint ptr %cfg.i.i279 to i32
  call void @__asan_load4_noabort(i32 %664)
  %665 = load ptr, ptr %cfg.i.i279, align 8
  %write_readback.i144.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %665, i32 0, i32 1
  %666 = ptrtoint ptr %write_readback.i144.i to i32
  call void @__asan_load1_noabort(i32 %666)
  %667 = load i8, ptr %write_readback.i144.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %667)
  %tobool.not.i145.i = icmp eq i8 %667, 0
  br i1 %tobool.not.i145.i, label %rtl_write_dword.exit141.i.rtl_write_dword.exit149.i_crit_edge, label %if.then.i148.i

rtl_write_dword.exit141.i.rtl_write_dword.exit149.i_crit_edge: ; preds = %rtl_write_dword.exit141.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit149.i

if.then.i148.i:                                   ; preds = %rtl_write_dword.exit141.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i146.i = getelementptr inbounds %struct.rtl_priv, ptr %581, i32 0, i32 13, i32 11
  %668 = ptrtoint ptr %read32_sync.i146.i to i32
  call void @__asan_load4_noabort(i32 %668)
  %669 = load ptr, ptr %read32_sync.i146.i, align 4
  %call.i147.i = tail call i32 %669(ptr noundef %581, i32 noundef 1076) #8
  br label %rtl_write_dword.exit149.i

rtl_write_dword.exit149.i:                        ; preds = %if.then.i148.i, %rtl_write_dword.exit141.i.rtl_write_dword.exit149.i_crit_edge
  %670 = ptrtoint ptr %write32_async.i.i286 to i32
  call void @__asan_load4_noabort(i32 %670)
  %671 = load ptr, ptr %write32_async.i.i286, align 4
  tail call void %671(ptr noundef %581, i32 noundef 1080, i32 noundef 16777216) #8
  %672 = ptrtoint ptr %cfg.i.i279 to i32
  call void @__asan_load4_noabort(i32 %672)
  %673 = load ptr, ptr %cfg.i.i279, align 8
  %write_readback.i152.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %673, i32 0, i32 1
  %674 = ptrtoint ptr %write_readback.i152.i to i32
  call void @__asan_load1_noabort(i32 %674)
  %675 = load i8, ptr %write_readback.i152.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %675)
  %tobool.not.i153.i = icmp eq i8 %675, 0
  br i1 %tobool.not.i153.i, label %rtl_write_dword.exit149.i.rtl_write_dword.exit157.i_crit_edge, label %if.then.i156.i

rtl_write_dword.exit149.i.rtl_write_dword.exit157.i_crit_edge: ; preds = %rtl_write_dword.exit149.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit157.i

if.then.i156.i:                                   ; preds = %rtl_write_dword.exit149.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i154.i = getelementptr inbounds %struct.rtl_priv, ptr %581, i32 0, i32 13, i32 11
  %676 = ptrtoint ptr %read32_sync.i154.i to i32
  call void @__asan_load4_noabort(i32 %676)
  %677 = load ptr, ptr %read32_sync.i154.i, align 4
  %call.i155.i = tail call i32 %677(ptr noundef %581, i32 noundef 1080) #8
  br label %rtl_write_dword.exit157.i

rtl_write_dword.exit157.i:                        ; preds = %if.then.i156.i, %rtl_write_dword.exit149.i.rtl_write_dword.exit157.i_crit_edge
  %678 = ptrtoint ptr %write32_async.i.i286 to i32
  call void @__asan_load4_noabort(i32 %678)
  %679 = load ptr, ptr %write32_async.i.i286, align 4
  tail call void %679(ptr noundef %581, i32 noundef 1084, i32 noundef 117835012) #8
  %680 = ptrtoint ptr %cfg.i.i279 to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load ptr, ptr %cfg.i.i279, align 8
  %write_readback.i160.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %681, i32 0, i32 1
  %682 = ptrtoint ptr %write_readback.i160.i to i32
  call void @__asan_load1_noabort(i32 %682)
  %683 = load i8, ptr %write_readback.i160.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %683)
  %tobool.not.i161.i = icmp eq i8 %683, 0
  br i1 %tobool.not.i161.i, label %rtl_write_dword.exit157.i.rtl_write_dword.exit165.i_crit_edge, label %if.then.i164.i

rtl_write_dword.exit157.i.rtl_write_dword.exit165.i_crit_edge: ; preds = %rtl_write_dword.exit157.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit165.i

if.then.i164.i:                                   ; preds = %rtl_write_dword.exit157.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i162.i = getelementptr inbounds %struct.rtl_priv, ptr %581, i32 0, i32 13, i32 11
  %684 = ptrtoint ptr %read32_sync.i162.i to i32
  call void @__asan_load4_noabort(i32 %684)
  %685 = load ptr, ptr %read32_sync.i162.i, align 4
  %call.i163.i = tail call i32 %685(ptr noundef %581, i32 noundef 1084) #8
  br label %rtl_write_dword.exit165.i

rtl_write_dword.exit165.i:                        ; preds = %if.then.i164.i, %rtl_write_dword.exit157.i.rtl_write_dword.exit165.i_crit_edge
  %bt_coexistence.i291 = getelementptr inbounds %struct.rtl_priv, ptr %581, i32 0, i32 49, i32 9
  %686 = ptrtoint ptr %bt_coexistence.i291 to i32
  call void @__asan_load1_noabort(i32 %686)
  %687 = load i8, ptr %bt_coexistence.i291, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %687)
  %tobool.not.i292 = icmp eq i8 %687, 0
  br i1 %tobool.not.i292, label %rtl_write_dword.exit165.i.if.else.i295_crit_edge, label %land.lhs.true.i

rtl_write_dword.exit165.i.if.else.i295_crit_edge: ; preds = %rtl_write_dword.exit165.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i295

land.lhs.true.i:                                  ; preds = %rtl_write_dword.exit165.i
  %bt_coexist_type.i = getelementptr inbounds %struct.rtl_priv, ptr %581, i32 0, i32 49, i32 11
  %688 = ptrtoint ptr %bt_coexist_type.i to i32
  call void @__asan_load1_noabort(i32 %688)
  %689 = load i8, ptr %bt_coexist_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %689)
  %cmp.i293 = icmp eq i8 %689, 3
  br i1 %cmp.i293, label %if.then.i294, label %land.lhs.true.i.if.else.i295_crit_edge

land.lhs.true.i.if.else.i295_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i295

if.then.i294:                                     ; preds = %land.lhs.true.i
  %690 = ptrtoint ptr %write32_async.i.i286 to i32
  call void @__asan_load4_noabort(i32 %690)
  %691 = load ptr, ptr %write32_async.i.i286, align 4
  tail call void %691(ptr noundef %581, i32 noundef 1112, i32 noundef -1757252559) #8
  %692 = ptrtoint ptr %cfg.i.i279 to i32
  call void @__asan_load4_noabort(i32 %692)
  %693 = load ptr, ptr %cfg.i.i279, align 8
  %write_readback.i168.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %693, i32 0, i32 1
  %694 = ptrtoint ptr %write_readback.i168.i to i32
  call void @__asan_load1_noabort(i32 %694)
  %695 = load i8, ptr %write_readback.i168.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %695)
  %tobool.not.i169.i = icmp eq i8 %695, 0
  br i1 %tobool.not.i169.i, label %if.then.i294.if.end.i296_crit_edge, label %if.then.i294.if.end.sink.split.i_crit_edge

if.then.i294.if.end.sink.split.i_crit_edge:       ; preds = %if.then.i294
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.sink.split.i

if.then.i294.if.end.i296_crit_edge:               ; preds = %if.then.i294
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i296

if.else.i295:                                     ; preds = %land.lhs.true.i.if.else.i295_crit_edge, %rtl_write_dword.exit165.i.if.else.i295_crit_edge
  %696 = ptrtoint ptr %write32_async.i.i286 to i32
  call void @__asan_load4_noabort(i32 %696)
  %697 = load ptr, ptr %write32_async.i.i286, align 4
  tail call void %697(ptr noundef %581, i32 noundef 1112, i32 noundef -1183668159) #8
  %698 = ptrtoint ptr %cfg.i.i279 to i32
  call void @__asan_load4_noabort(i32 %698)
  %699 = load ptr, ptr %cfg.i.i279, align 8
  %write_readback.i176.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %699, i32 0, i32 1
  %700 = ptrtoint ptr %write_readback.i176.i to i32
  call void @__asan_load1_noabort(i32 %700)
  %701 = load i8, ptr %write_readback.i176.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %701)
  %tobool.not.i177.i = icmp eq i8 %701, 0
  br i1 %tobool.not.i177.i, label %if.else.i295.if.end.i296_crit_edge, label %if.else.i295.if.end.sink.split.i_crit_edge

if.else.i295.if.end.sink.split.i_crit_edge:       ; preds = %if.else.i295
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.sink.split.i

if.else.i295.if.end.i296_crit_edge:               ; preds = %if.else.i295
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i296

if.end.sink.split.i:                              ; preds = %if.else.i295.if.end.sink.split.i_crit_edge, %if.then.i294.if.end.sink.split.i_crit_edge
  %read32_sync.i178.i = getelementptr inbounds %struct.rtl_priv, ptr %581, i32 0, i32 13, i32 11
  %702 = ptrtoint ptr %read32_sync.i178.i to i32
  call void @__asan_load4_noabort(i32 %702)
  %703 = load ptr, ptr %read32_sync.i178.i, align 4
  %call.i179.i = tail call i32 %703(ptr noundef %581, i32 noundef 1112) #8
  br label %if.end.i296

if.end.i296:                                      ; preds = %if.end.sink.split.i, %if.else.i295.if.end.i296_crit_edge, %if.then.i294.if.end.i296_crit_edge
  %704 = ptrtoint ptr %write8_async.i.i278 to i32
  call void @__asan_load4_noabort(i32 %704)
  %705 = load ptr, ptr %write8_async.i.i278, align 4
  tail call void %705(ptr noundef %581, i32 noundef 1370, i8 noundef zeroext 2) #8
  %706 = ptrtoint ptr %cfg.i.i279 to i32
  call void @__asan_load4_noabort(i32 %706)
  %707 = load ptr, ptr %cfg.i.i279, align 8
  %write_readback.i184.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %707, i32 0, i32 1
  %708 = ptrtoint ptr %write_readback.i184.i to i32
  call void @__asan_load1_noabort(i32 %708)
  %709 = load i8, ptr %write_readback.i184.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %709)
  %tobool.not.i185.i = icmp eq i8 %709, 0
  br i1 %tobool.not.i185.i, label %if.end.i296.rtl_write_byte.exit189.i_crit_edge, label %if.then.i188.i

if.end.i296.rtl_write_byte.exit189.i_crit_edge:   ; preds = %if.end.i296
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit189.i

if.then.i188.i:                                   ; preds = %if.end.i296
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i186.i = getelementptr inbounds %struct.rtl_priv, ptr %581, i32 0, i32 13, i32 9
  %710 = ptrtoint ptr %read8_sync.i186.i to i32
  call void @__asan_load4_noabort(i32 %710)
  %711 = load ptr, ptr %read8_sync.i186.i, align 4
  %call.i187.i297 = tail call zeroext i8 %711(ptr noundef %581, i32 noundef 1370) #8
  br label %rtl_write_byte.exit189.i

rtl_write_byte.exit189.i:                         ; preds = %if.then.i188.i, %if.end.i296.rtl_write_byte.exit189.i_crit_edge
  %712 = ptrtoint ptr %write8_async.i.i278 to i32
  call void @__asan_load4_noabort(i32 %712)
  %713 = load ptr, ptr %write8_async.i.i278, align 4
  tail call void %713(ptr noundef %581, i32 noundef 1373, i8 noundef zeroext -1) #8
  %714 = ptrtoint ptr %cfg.i.i279 to i32
  call void @__asan_load4_noabort(i32 %714)
  %715 = load ptr, ptr %cfg.i.i279, align 8
  %write_readback.i192.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %715, i32 0, i32 1
  %716 = ptrtoint ptr %write_readback.i192.i to i32
  call void @__asan_load1_noabort(i32 %716)
  %717 = load i8, ptr %write_readback.i192.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %717)
  %tobool.not.i193.i = icmp eq i8 %717, 0
  br i1 %tobool.not.i193.i, label %rtl_write_byte.exit189.i.rtl_write_byte.exit197.i_crit_edge, label %if.then.i196.i

rtl_write_byte.exit189.i.rtl_write_byte.exit197.i_crit_edge: ; preds = %rtl_write_byte.exit189.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit197.i

if.then.i196.i:                                   ; preds = %rtl_write_byte.exit189.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i194.i = getelementptr inbounds %struct.rtl_priv, ptr %581, i32 0, i32 13, i32 9
  %718 = ptrtoint ptr %read8_sync.i194.i to i32
  call void @__asan_load4_noabort(i32 %718)
  %719 = load ptr, ptr %read8_sync.i194.i, align 4
  %call.i195.i = tail call zeroext i8 %719(ptr noundef %581, i32 noundef 1373) #8
  br label %rtl_write_byte.exit197.i

rtl_write_byte.exit197.i:                         ; preds = %if.then.i196.i, %rtl_write_byte.exit189.i.rtl_write_byte.exit197.i_crit_edge
  %reg_bcn_ctrl_val.i = getelementptr inbounds %struct.rtl_priv, ptr %581, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %720 = ptrtoint ptr %reg_bcn_ctrl_val.i to i32
  call void @__asan_store4_noabort(i32 %720)
  store i32 31, ptr %reg_bcn_ctrl_val.i, align 4
  %721 = ptrtoint ptr %write8_async.i.i278 to i32
  call void @__asan_load4_noabort(i32 %721)
  %722 = load ptr, ptr %write8_async.i.i278, align 4
  tail call void %722(ptr noundef %581, i32 noundef 1360, i8 noundef zeroext 31) #8
  %723 = ptrtoint ptr %cfg.i.i279 to i32
  call void @__asan_load4_noabort(i32 %723)
  %724 = load ptr, ptr %cfg.i.i279, align 8
  %write_readback.i200.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %724, i32 0, i32 1
  %725 = ptrtoint ptr %write_readback.i200.i to i32
  call void @__asan_load1_noabort(i32 %725)
  %726 = load i8, ptr %write_readback.i200.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %726)
  %tobool.not.i201.i = icmp eq i8 %726, 0
  br i1 %tobool.not.i201.i, label %rtl_write_byte.exit197.i.rtl_write_byte.exit205.i_crit_edge, label %if.then.i204.i

rtl_write_byte.exit197.i.rtl_write_byte.exit205.i_crit_edge: ; preds = %rtl_write_byte.exit197.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit205.i

if.then.i204.i:                                   ; preds = %rtl_write_byte.exit197.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i202.i = getelementptr inbounds %struct.rtl_priv, ptr %581, i32 0, i32 13, i32 9
  %727 = ptrtoint ptr %read8_sync.i202.i to i32
  call void @__asan_load4_noabort(i32 %727)
  %728 = load ptr, ptr %read8_sync.i202.i, align 4
  %call.i203.i = tail call zeroext i8 %728(ptr noundef %581, i32 noundef 1360) #8
  br label %rtl_write_byte.exit205.i

rtl_write_byte.exit205.i:                         ; preds = %if.then.i204.i, %rtl_write_byte.exit197.i.rtl_write_byte.exit205.i_crit_edge
  %729 = ptrtoint ptr %write8_async.i.i278 to i32
  call void @__asan_load4_noabort(i32 %729)
  %730 = load ptr, ptr %write8_async.i.i278, align 4
  tail call void %730(ptr noundef %581, i32 noundef 1345, i8 noundef zeroext -1) #8
  %731 = ptrtoint ptr %cfg.i.i279 to i32
  call void @__asan_load4_noabort(i32 %731)
  %732 = load ptr, ptr %cfg.i.i279, align 8
  %write_readback.i208.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %732, i32 0, i32 1
  %733 = ptrtoint ptr %write_readback.i208.i to i32
  call void @__asan_load1_noabort(i32 %733)
  %734 = load i8, ptr %write_readback.i208.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %734)
  %tobool.not.i209.i = icmp eq i8 %734, 0
  br i1 %tobool.not.i209.i, label %rtl_write_byte.exit205.i.rtl_write_byte.exit213.i_crit_edge, label %if.then.i212.i

rtl_write_byte.exit205.i.rtl_write_byte.exit213.i_crit_edge: ; preds = %rtl_write_byte.exit205.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit213.i

if.then.i212.i:                                   ; preds = %rtl_write_byte.exit205.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i210.i = getelementptr inbounds %struct.rtl_priv, ptr %581, i32 0, i32 13, i32 9
  %735 = ptrtoint ptr %read8_sync.i210.i to i32
  call void @__asan_load4_noabort(i32 %735)
  %736 = load ptr, ptr %read8_sync.i210.i, align 4
  %call.i211.i298 = tail call zeroext i8 %736(ptr noundef %581, i32 noundef 1345) #8
  br label %rtl_write_byte.exit213.i

rtl_write_byte.exit213.i:                         ; preds = %if.then.i212.i, %rtl_write_byte.exit205.i.rtl_write_byte.exit213.i_crit_edge
  %737 = ptrtoint ptr %write8_async.i.i278 to i32
  call void @__asan_load4_noabort(i32 %737)
  %738 = load ptr, ptr %write8_async.i.i278, align 4
  tail call void %738(ptr noundef %581, i32 noundef 1345, i8 noundef zeroext -1) #8
  %739 = ptrtoint ptr %cfg.i.i279 to i32
  call void @__asan_load4_noabort(i32 %739)
  %740 = load ptr, ptr %cfg.i.i279, align 8
  %write_readback.i216.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %740, i32 0, i32 1
  %741 = ptrtoint ptr %write_readback.i216.i to i32
  call void @__asan_load1_noabort(i32 %741)
  %742 = load i8, ptr %write_readback.i216.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %742)
  %tobool.not.i217.i = icmp eq i8 %742, 0
  br i1 %tobool.not.i217.i, label %rtl_write_byte.exit213.i.rtl_write_byte.exit221.i_crit_edge, label %if.then.i220.i

rtl_write_byte.exit213.i.rtl_write_byte.exit221.i_crit_edge: ; preds = %rtl_write_byte.exit213.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit221.i

if.then.i220.i:                                   ; preds = %rtl_write_byte.exit213.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i218.i = getelementptr inbounds %struct.rtl_priv, ptr %581, i32 0, i32 13, i32 9
  %743 = ptrtoint ptr %read8_sync.i218.i to i32
  call void @__asan_load4_noabort(i32 %743)
  %744 = load ptr, ptr %read8_sync.i218.i, align 4
  %call.i219.i = tail call zeroext i8 %744(ptr noundef %581, i32 noundef 1345) #8
  br label %rtl_write_byte.exit221.i

rtl_write_byte.exit221.i:                         ; preds = %if.then.i220.i, %rtl_write_byte.exit213.i.rtl_write_byte.exit221.i_crit_edge
  %745 = ptrtoint ptr %write8_async.i.i278 to i32
  call void @__asan_load4_noabort(i32 %745)
  %746 = load ptr, ptr %write8_async.i.i278, align 4
  tail call void %746(ptr noundef %581, i32 noundef 1298, i8 noundef zeroext 28) #8
  %747 = ptrtoint ptr %cfg.i.i279 to i32
  call void @__asan_load4_noabort(i32 %747)
  %748 = load ptr, ptr %cfg.i.i279, align 8
  %write_readback.i224.i299 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %748, i32 0, i32 1
  %749 = ptrtoint ptr %write_readback.i224.i299 to i32
  call void @__asan_load1_noabort(i32 %749)
  %750 = load i8, ptr %write_readback.i224.i299, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %750)
  %tobool.not.i225.i300 = icmp eq i8 %750, 0
  br i1 %tobool.not.i225.i300, label %rtl_write_byte.exit221.i.rtl_write_byte.exit229.i303_crit_edge, label %if.then.i228.i302

rtl_write_byte.exit221.i.rtl_write_byte.exit229.i303_crit_edge: ; preds = %rtl_write_byte.exit221.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit229.i303

if.then.i228.i302:                                ; preds = %rtl_write_byte.exit221.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i226.i = getelementptr inbounds %struct.rtl_priv, ptr %581, i32 0, i32 13, i32 9
  %751 = ptrtoint ptr %read8_sync.i226.i to i32
  call void @__asan_load4_noabort(i32 %751)
  %752 = load ptr, ptr %read8_sync.i226.i, align 4
  %call.i227.i301 = tail call zeroext i8 %752(ptr noundef %581, i32 noundef 1298) #8
  br label %rtl_write_byte.exit229.i303

rtl_write_byte.exit229.i303:                      ; preds = %if.then.i228.i302, %rtl_write_byte.exit221.i.rtl_write_byte.exit229.i303_crit_edge
  %753 = ptrtoint ptr %write8_async.i.i278 to i32
  call void @__asan_load4_noabort(i32 %753)
  %754 = load ptr, ptr %write8_async.i.i278, align 4
  tail call void %754(ptr noundef %581, i32 noundef 1306, i8 noundef zeroext 22) #8
  %755 = ptrtoint ptr %cfg.i.i279 to i32
  call void @__asan_load4_noabort(i32 %755)
  %756 = load ptr, ptr %cfg.i.i279, align 8
  %write_readback.i232.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %756, i32 0, i32 1
  %757 = ptrtoint ptr %write_readback.i232.i to i32
  call void @__asan_load1_noabort(i32 %757)
  %758 = load i8, ptr %write_readback.i232.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %758)
  %tobool.not.i233.i = icmp eq i8 %758, 0
  br i1 %tobool.not.i233.i, label %rtl_write_byte.exit229.i303.rtl_write_byte.exit237.i_crit_edge, label %if.then.i236.i

rtl_write_byte.exit229.i303.rtl_write_byte.exit237.i_crit_edge: ; preds = %rtl_write_byte.exit229.i303
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit237.i

if.then.i236.i:                                   ; preds = %rtl_write_byte.exit229.i303
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i234.i = getelementptr inbounds %struct.rtl_priv, ptr %581, i32 0, i32 13, i32 9
  %759 = ptrtoint ptr %read8_sync.i234.i to i32
  call void @__asan_load4_noabort(i32 %759)
  %760 = load ptr, ptr %read8_sync.i234.i, align 4
  %call.i235.i304 = tail call zeroext i8 %760(ptr noundef %581, i32 noundef 1306) #8
  br label %rtl_write_byte.exit237.i

rtl_write_byte.exit237.i:                         ; preds = %if.then.i236.i, %rtl_write_byte.exit229.i303.rtl_write_byte.exit237.i_crit_edge
  %761 = ptrtoint ptr %bt_coexistence.i291 to i32
  call void @__asan_load1_noabort(i32 %761)
  %762 = load i8, ptr %bt_coexistence.i291, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %762)
  %tobool11.not.i = icmp eq i8 %762, 0
  br i1 %tobool11.not.i, label %rtl_write_byte.exit237.i.if.else19.i_crit_edge, label %land.lhs.true12.i

rtl_write_byte.exit237.i.if.else19.i_crit_edge:   ; preds = %rtl_write_byte.exit237.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else19.i

land.lhs.true12.i:                                ; preds = %rtl_write_byte.exit237.i
  %bt_coexist_type14.i = getelementptr inbounds %struct.rtl_priv, ptr %581, i32 0, i32 49, i32 11
  %763 = ptrtoint ptr %bt_coexist_type14.i to i32
  call void @__asan_load1_noabort(i32 %763)
  %764 = load i8, ptr %bt_coexist_type14.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %764)
  %cmp16.i = icmp eq i8 %764, 3
  br i1 %cmp16.i, label %if.then18.i, label %land.lhs.true12.i.if.else19.i_crit_edge

land.lhs.true12.i.if.else19.i_crit_edge:          ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else19.i

if.then18.i:                                      ; preds = %land.lhs.true12.i
  %765 = ptrtoint ptr %write16_async.i.i288 to i32
  call void @__asan_load4_noabort(i32 %765)
  %766 = load ptr, ptr %write16_async.i.i288, align 4
  tail call void %766(ptr noundef %581, i32 noundef 1350, i16 noundef zeroext 32) #8
  %767 = ptrtoint ptr %cfg.i.i279 to i32
  call void @__asan_load4_noabort(i32 %767)
  %768 = load ptr, ptr %cfg.i.i279, align 8
  %write_readback.i240.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %768, i32 0, i32 1
  %769 = ptrtoint ptr %write_readback.i240.i to i32
  call void @__asan_load1_noabort(i32 %769)
  %770 = load i8, ptr %write_readback.i240.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %770)
  %tobool.not.i241.i = icmp eq i8 %770, 0
  br i1 %tobool.not.i241.i, label %if.then18.i.rtl_write_word.exit245.i_crit_edge, label %if.then.i244.i

if.then18.i.rtl_write_word.exit245.i_crit_edge:   ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit245.i

if.then.i244.i:                                   ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i242.i = getelementptr inbounds %struct.rtl_priv, ptr %581, i32 0, i32 13, i32 10
  %771 = ptrtoint ptr %read16_sync.i242.i to i32
  call void @__asan_load4_noabort(i32 %771)
  %772 = load ptr, ptr %read16_sync.i242.i, align 4
  %call.i243.i = tail call zeroext i16 %772(ptr noundef %581, i32 noundef 1350) #8
  br label %rtl_write_word.exit245.i

rtl_write_word.exit245.i:                         ; preds = %if.then.i244.i, %if.then18.i.rtl_write_word.exit245.i_crit_edge
  %773 = ptrtoint ptr %write16_async.i.i288 to i32
  call void @__asan_load4_noabort(i32 %773)
  %774 = load ptr, ptr %write16_async.i.i288, align 4
  tail call void %774(ptr noundef %581, i32 noundef 1224, i16 noundef zeroext 1026) #8
  %775 = ptrtoint ptr %cfg.i.i279 to i32
  call void @__asan_load4_noabort(i32 %775)
  %776 = load ptr, ptr %cfg.i.i279, align 8
  %write_readback.i248.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %776, i32 0, i32 1
  %777 = ptrtoint ptr %write_readback.i248.i to i32
  call void @__asan_load1_noabort(i32 %777)
  %778 = load i8, ptr %write_readback.i248.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %778)
  %tobool.not.i249.i = icmp eq i8 %778, 0
  br i1 %tobool.not.i249.i, label %rtl_write_word.exit245.i.if.end20.i_crit_edge, label %rtl_write_word.exit245.i.if.end20.sink.split.i_crit_edge

rtl_write_word.exit245.i.if.end20.sink.split.i_crit_edge: ; preds = %rtl_write_word.exit245.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.sink.split.i

rtl_write_word.exit245.i.if.end20.i_crit_edge:    ; preds = %rtl_write_word.exit245.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i

if.else19.i:                                      ; preds = %land.lhs.true12.i.if.else19.i_crit_edge, %rtl_write_byte.exit237.i.if.else19.i_crit_edge
  %779 = ptrtoint ptr %write16_async.i.i288 to i32
  call void @__asan_load4_noabort(i32 %779)
  %780 = load ptr, ptr %write16_async.i.i288, align 4
  tail call void %780(ptr noundef %581, i32 noundef 1350, i16 noundef zeroext 32) #8
  %781 = ptrtoint ptr %cfg.i.i279 to i32
  call void @__asan_load4_noabort(i32 %781)
  %782 = load ptr, ptr %cfg.i.i279, align 8
  %write_readback.i256.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %782, i32 0, i32 1
  %783 = ptrtoint ptr %write_readback.i256.i to i32
  call void @__asan_load1_noabort(i32 %783)
  %784 = load i8, ptr %write_readback.i256.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %784)
  %tobool.not.i257.i = icmp eq i8 %784, 0
  br i1 %tobool.not.i257.i, label %if.else19.i.rtl_write_word.exit261.i_crit_edge, label %if.then.i260.i

if.else19.i.rtl_write_word.exit261.i_crit_edge:   ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit261.i

if.then.i260.i:                                   ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i258.i = getelementptr inbounds %struct.rtl_priv, ptr %581, i32 0, i32 13, i32 10
  %785 = ptrtoint ptr %read16_sync.i258.i to i32
  call void @__asan_load4_noabort(i32 %785)
  %786 = load ptr, ptr %read16_sync.i258.i, align 4
  %call.i259.i = tail call zeroext i16 %786(ptr noundef %581, i32 noundef 1350) #8
  br label %rtl_write_word.exit261.i

rtl_write_word.exit261.i:                         ; preds = %if.then.i260.i, %if.else19.i.rtl_write_word.exit261.i_crit_edge
  %787 = ptrtoint ptr %write16_async.i.i288 to i32
  call void @__asan_load4_noabort(i32 %787)
  %788 = load ptr, ptr %write16_async.i.i288, align 4
  tail call void %788(ptr noundef %581, i32 noundef 1350, i16 noundef zeroext 32) #8
  %789 = ptrtoint ptr %cfg.i.i279 to i32
  call void @__asan_load4_noabort(i32 %789)
  %790 = load ptr, ptr %cfg.i.i279, align 8
  %write_readback.i264.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %790, i32 0, i32 1
  %791 = ptrtoint ptr %write_readback.i264.i to i32
  call void @__asan_load1_noabort(i32 %791)
  %792 = load i8, ptr %write_readback.i264.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %792)
  %tobool.not.i265.i = icmp eq i8 %792, 0
  br i1 %tobool.not.i265.i, label %rtl_write_word.exit261.i.if.end20.i_crit_edge, label %rtl_write_word.exit261.i.if.end20.sink.split.i_crit_edge

rtl_write_word.exit261.i.if.end20.sink.split.i_crit_edge: ; preds = %rtl_write_word.exit261.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.sink.split.i

rtl_write_word.exit261.i.if.end20.i_crit_edge:    ; preds = %rtl_write_word.exit261.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i

if.end20.sink.split.i:                            ; preds = %rtl_write_word.exit261.i.if.end20.sink.split.i_crit_edge, %rtl_write_word.exit245.i.if.end20.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 1224, %rtl_write_word.exit245.i.if.end20.sink.split.i_crit_edge ], [ 1350, %rtl_write_word.exit261.i.if.end20.sink.split.i_crit_edge ]
  %read16_sync.i266.i = getelementptr inbounds %struct.rtl_priv, ptr %581, i32 0, i32 13, i32 10
  %793 = ptrtoint ptr %read16_sync.i266.i to i32
  call void @__asan_load4_noabort(i32 %793)
  %794 = load ptr, ptr %read16_sync.i266.i, align 4
  %call.i267.i = tail call zeroext i16 %794(ptr noundef %581, i32 noundef %.sink.i) #8
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.end20.sink.split.i, %rtl_write_word.exit261.i.if.end20.i_crit_edge, %rtl_write_word.exit245.i.if.end20.i_crit_edge
  %795 = ptrtoint ptr %bt_coexistence.i291 to i32
  call void @__asan_load1_noabort(i32 %795)
  %796 = load i8, ptr %bt_coexistence.i291, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %796)
  %tobool24.not.i = icmp eq i8 %796, 0
  br i1 %tobool24.not.i, label %if.end20.i.if.else32.i_crit_edge, label %land.lhs.true25.i

if.end20.i.if.else32.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else32.i

land.lhs.true25.i:                                ; preds = %if.end20.i
  %bt_coexist_type27.i = getelementptr inbounds %struct.rtl_priv, ptr %581, i32 0, i32 49, i32 11
  %797 = ptrtoint ptr %bt_coexist_type27.i to i32
  call void @__asan_load1_noabort(i32 %797)
  %798 = load i8, ptr %bt_coexist_type27.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %798)
  %cmp29.i = icmp eq i8 %798, 3
  br i1 %cmp29.i, label %if.then31.i, label %land.lhs.true25.i.if.else32.i_crit_edge

land.lhs.true25.i.if.else32.i_crit_edge:          ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else32.i

if.then31.i:                                      ; preds = %land.lhs.true25.i
  %799 = ptrtoint ptr %write32_async.i.i286 to i32
  call void @__asan_load4_noabort(i32 %799)
  %800 = load ptr, ptr %write32_async.i.i286, align 4
  tail call void %800(ptr noundef %581, i32 noundef 1120, i32 noundef 50882150) #8
  %801 = ptrtoint ptr %cfg.i.i279 to i32
  call void @__asan_load4_noabort(i32 %801)
  %802 = load ptr, ptr %cfg.i.i279, align 8
  %write_readback.i272.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %802, i32 0, i32 1
  %803 = ptrtoint ptr %write_readback.i272.i to i32
  call void @__asan_load1_noabort(i32 %803)
  %804 = load i8, ptr %write_readback.i272.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %804)
  %tobool.not.i273.i = icmp eq i8 %804, 0
  br i1 %tobool.not.i273.i, label %if.then31.i.if.end33.i305_crit_edge, label %if.then31.i.if.end33.sink.split.i_crit_edge

if.then31.i.if.end33.sink.split.i_crit_edge:      ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.sink.split.i

if.then31.i.if.end33.i305_crit_edge:              ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i305

if.else32.i:                                      ; preds = %land.lhs.true25.i.if.else32.i_crit_edge, %if.end20.i.if.else32.i_crit_edge
  %805 = ptrtoint ptr %write32_async.i.i286 to i32
  call void @__asan_load4_noabort(i32 %805)
  %806 = load ptr, ptr %write32_async.i.i286, align 4
  tail call void %806(ptr noundef %581, i32 noundef 1120, i32 noundef 550502) #8
  %807 = ptrtoint ptr %cfg.i.i279 to i32
  call void @__asan_load4_noabort(i32 %807)
  %808 = load ptr, ptr %cfg.i.i279, align 8
  %write_readback.i280.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %808, i32 0, i32 1
  %809 = ptrtoint ptr %write_readback.i280.i to i32
  call void @__asan_load1_noabort(i32 %809)
  %810 = load i8, ptr %write_readback.i280.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %810)
  %tobool.not.i281.i = icmp eq i8 %810, 0
  br i1 %tobool.not.i281.i, label %if.else32.i.if.end33.i305_crit_edge, label %if.else32.i.if.end33.sink.split.i_crit_edge

if.else32.i.if.end33.sink.split.i_crit_edge:      ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.sink.split.i

if.else32.i.if.end33.i305_crit_edge:              ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i305

if.end33.sink.split.i:                            ; preds = %if.else32.i.if.end33.sink.split.i_crit_edge, %if.then31.i.if.end33.sink.split.i_crit_edge
  %read32_sync.i282.i = getelementptr inbounds %struct.rtl_priv, ptr %581, i32 0, i32 13, i32 11
  %811 = ptrtoint ptr %read32_sync.i282.i to i32
  call void @__asan_load4_noabort(i32 %811)
  %812 = load ptr, ptr %read32_sync.i282.i, align 4
  %call.i283.i = tail call i32 %812(ptr noundef %581, i32 noundef 1120) #8
  br label %if.end33.i305

if.end33.i305:                                    ; preds = %if.end33.sink.split.i, %if.else32.i.if.end33.i305_crit_edge, %if.then31.i.if.end33.i305_crit_edge
  %813 = ptrtoint ptr %write8_async.i.i278 to i32
  call void @__asan_load4_noabort(i32 %813)
  %814 = load ptr, ptr %write8_async.i.i278, align 4
  tail call void %814(ptr noundef %581, i32 noundef 1600, i8 noundef zeroext 64) #8
  %815 = ptrtoint ptr %cfg.i.i279 to i32
  call void @__asan_load4_noabort(i32 %815)
  %816 = load ptr, ptr %cfg.i.i279, align 8
  %write_readback.i288.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %816, i32 0, i32 1
  %817 = ptrtoint ptr %write_readback.i288.i to i32
  call void @__asan_load1_noabort(i32 %817)
  %818 = load i8, ptr %write_readback.i288.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %818)
  %tobool.not.i289.i = icmp eq i8 %818, 0
  br i1 %tobool.not.i289.i, label %if.end33.i305.rtl_write_byte.exit293.i_crit_edge, label %if.then.i292.i

if.end33.i305.rtl_write_byte.exit293.i_crit_edge: ; preds = %if.end33.i305
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit293.i

if.then.i292.i:                                   ; preds = %if.end33.i305
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i290.i = getelementptr inbounds %struct.rtl_priv, ptr %581, i32 0, i32 13, i32 9
  %819 = ptrtoint ptr %read8_sync.i290.i to i32
  call void @__asan_load4_noabort(i32 %819)
  %820 = load ptr, ptr %read8_sync.i290.i, align 4
  %call.i291.i = tail call zeroext i8 %820(ptr noundef %581, i32 noundef 1600) #8
  br label %rtl_write_byte.exit293.i

rtl_write_byte.exit293.i:                         ; preds = %if.then.i292.i, %if.end33.i305.rtl_write_byte.exit293.i_crit_edge
  %821 = ptrtoint ptr %write16_async.i.i288 to i32
  call void @__asan_load4_noabort(i32 %821)
  %822 = load ptr, ptr %write16_async.i.i288, align 4
  tail call void %822(ptr noundef %581, i32 noundef 1064, i16 noundef zeroext 4112) #8
  %823 = ptrtoint ptr %cfg.i.i279 to i32
  call void @__asan_load4_noabort(i32 %823)
  %824 = load ptr, ptr %cfg.i.i279, align 8
  %write_readback.i296.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %824, i32 0, i32 1
  %825 = ptrtoint ptr %write_readback.i296.i to i32
  call void @__asan_load1_noabort(i32 %825)
  %826 = load i8, ptr %write_readback.i296.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %826)
  %tobool.not.i297.i = icmp eq i8 %826, 0
  br i1 %tobool.not.i297.i, label %rtl_write_byte.exit293.i.rtl_write_word.exit301.i_crit_edge, label %if.then.i300.i

rtl_write_byte.exit293.i.rtl_write_word.exit301.i_crit_edge: ; preds = %rtl_write_byte.exit293.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit301.i

if.then.i300.i:                                   ; preds = %rtl_write_byte.exit293.i
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i298.i = getelementptr inbounds %struct.rtl_priv, ptr %581, i32 0, i32 13, i32 10
  %827 = ptrtoint ptr %read16_sync.i298.i to i32
  call void @__asan_load4_noabort(i32 %827)
  %828 = load ptr, ptr %read16_sync.i298.i, align 4
  %call.i299.i = tail call zeroext i16 %828(ptr noundef %581, i32 noundef 1064) #8
  br label %rtl_write_word.exit301.i

rtl_write_word.exit301.i:                         ; preds = %if.then.i300.i, %rtl_write_byte.exit293.i.rtl_write_word.exit301.i_crit_edge
  %829 = ptrtoint ptr %write16_async.i.i288 to i32
  call void @__asan_load4_noabort(i32 %829)
  %830 = load ptr, ptr %write16_async.i.i288, align 4
  tail call void %830(ptr noundef %581, i32 noundef 1594, i16 noundef zeroext 4112) #8
  %831 = ptrtoint ptr %cfg.i.i279 to i32
  call void @__asan_load4_noabort(i32 %831)
  %832 = load ptr, ptr %cfg.i.i279, align 8
  %write_readback.i304.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %832, i32 0, i32 1
  %833 = ptrtoint ptr %write_readback.i304.i to i32
  call void @__asan_load1_noabort(i32 %833)
  %834 = load i8, ptr %write_readback.i304.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %834)
  %tobool.not.i305.i = icmp eq i8 %834, 0
  br i1 %tobool.not.i305.i, label %rtl_write_word.exit301.i.rtl_write_word.exit309.i_crit_edge, label %if.then.i308.i

rtl_write_word.exit301.i.rtl_write_word.exit309.i_crit_edge: ; preds = %rtl_write_word.exit301.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit309.i

if.then.i308.i:                                   ; preds = %rtl_write_word.exit301.i
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i306.i = getelementptr inbounds %struct.rtl_priv, ptr %581, i32 0, i32 13, i32 10
  %835 = ptrtoint ptr %read16_sync.i306.i to i32
  call void @__asan_load4_noabort(i32 %835)
  %836 = load ptr, ptr %read16_sync.i306.i, align 4
  %call.i307.i = tail call zeroext i16 %836(ptr noundef %581, i32 noundef 1594) #8
  br label %rtl_write_word.exit309.i

rtl_write_word.exit309.i:                         ; preds = %if.then.i308.i, %rtl_write_word.exit301.i.rtl_write_word.exit309.i_crit_edge
  %837 = ptrtoint ptr %write16_async.i.i288 to i32
  call void @__asan_load4_noabort(i32 %837)
  %838 = load ptr, ptr %write16_async.i.i288, align 4
  tail call void %838(ptr noundef %581, i32 noundef 1300, i16 noundef zeroext 4112) #8
  %839 = ptrtoint ptr %cfg.i.i279 to i32
  call void @__asan_load4_noabort(i32 %839)
  %840 = load ptr, ptr %cfg.i.i279, align 8
  %write_readback.i312.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %840, i32 0, i32 1
  %841 = ptrtoint ptr %write_readback.i312.i to i32
  call void @__asan_load1_noabort(i32 %841)
  %842 = load i8, ptr %write_readback.i312.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %842)
  %tobool.not.i313.i = icmp eq i8 %842, 0
  br i1 %tobool.not.i313.i, label %rtl_write_word.exit309.i.rtl_write_word.exit317.i_crit_edge, label %if.then.i316.i

rtl_write_word.exit309.i.rtl_write_word.exit317.i_crit_edge: ; preds = %rtl_write_word.exit309.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit317.i

if.then.i316.i:                                   ; preds = %rtl_write_word.exit309.i
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i314.i = getelementptr inbounds %struct.rtl_priv, ptr %581, i32 0, i32 13, i32 10
  %843 = ptrtoint ptr %read16_sync.i314.i to i32
  call void @__asan_load4_noabort(i32 %843)
  %844 = load ptr, ptr %read16_sync.i314.i, align 4
  %call.i315.i = tail call zeroext i16 %844(ptr noundef %581, i32 noundef 1300) #8
  br label %rtl_write_word.exit317.i

rtl_write_word.exit317.i:                         ; preds = %if.then.i316.i, %rtl_write_word.exit309.i.rtl_write_word.exit317.i_crit_edge
  %845 = ptrtoint ptr %write16_async.i.i288 to i32
  call void @__asan_load4_noabort(i32 %845)
  %846 = load ptr, ptr %write16_async.i.i288, align 4
  tail call void %846(ptr noundef %581, i32 noundef 1302, i16 noundef zeroext 4112) #8
  %847 = ptrtoint ptr %cfg.i.i279 to i32
  call void @__asan_load4_noabort(i32 %847)
  %848 = load ptr, ptr %cfg.i.i279, align 8
  %write_readback.i320.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %848, i32 0, i32 1
  %849 = ptrtoint ptr %write_readback.i320.i to i32
  call void @__asan_load1_noabort(i32 %849)
  %850 = load i8, ptr %write_readback.i320.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %850)
  %tobool.not.i321.i = icmp eq i8 %850, 0
  br i1 %tobool.not.i321.i, label %rtl_write_word.exit317.i.rtl_write_word.exit325.i_crit_edge, label %if.then.i324.i

rtl_write_word.exit317.i.rtl_write_word.exit325.i_crit_edge: ; preds = %rtl_write_word.exit317.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit325.i

if.then.i324.i:                                   ; preds = %rtl_write_word.exit317.i
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i322.i = getelementptr inbounds %struct.rtl_priv, ptr %581, i32 0, i32 13, i32 10
  %851 = ptrtoint ptr %read16_sync.i322.i to i32
  call void @__asan_load4_noabort(i32 %851)
  %852 = load ptr, ptr %read16_sync.i322.i, align 4
  %call.i323.i = tail call zeroext i16 %852(ptr noundef %581, i32 noundef 1302) #8
  br label %rtl_write_word.exit325.i

rtl_write_word.exit325.i:                         ; preds = %if.then.i324.i, %rtl_write_word.exit317.i.rtl_write_word.exit325.i_crit_edge
  %853 = ptrtoint ptr %write32_async.i.i286 to i32
  call void @__asan_load4_noabort(i32 %853)
  %854 = load ptr, ptr %write32_async.i.i286, align 4
  tail call void %854(ptr noundef %581, i32 noundef 1568, i32 noundef -1) #8
  %855 = ptrtoint ptr %cfg.i.i279 to i32
  call void @__asan_load4_noabort(i32 %855)
  %856 = load ptr, ptr %cfg.i.i279, align 8
  %write_readback.i328.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %856, i32 0, i32 1
  %857 = ptrtoint ptr %write_readback.i328.i to i32
  call void @__asan_load1_noabort(i32 %857)
  %858 = load i8, ptr %write_readback.i328.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %858)
  %tobool.not.i329.i = icmp eq i8 %858, 0
  br i1 %tobool.not.i329.i, label %rtl_write_word.exit325.i.rtl_write_dword.exit333.i_crit_edge, label %if.then.i332.i

rtl_write_word.exit325.i.rtl_write_dword.exit333.i_crit_edge: ; preds = %rtl_write_word.exit325.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit333.i

if.then.i332.i:                                   ; preds = %rtl_write_word.exit325.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i330.i = getelementptr inbounds %struct.rtl_priv, ptr %581, i32 0, i32 13, i32 11
  %859 = ptrtoint ptr %read32_sync.i330.i to i32
  call void @__asan_load4_noabort(i32 %859)
  %860 = load ptr, ptr %read32_sync.i330.i, align 4
  %call.i331.i = tail call i32 %860(ptr noundef %581, i32 noundef 1568) #8
  br label %rtl_write_dword.exit333.i

rtl_write_dword.exit333.i:                        ; preds = %if.then.i332.i, %rtl_write_word.exit325.i.rtl_write_dword.exit333.i_crit_edge
  %861 = ptrtoint ptr %write32_async.i.i286 to i32
  call void @__asan_load4_noabort(i32 %861)
  %862 = load ptr, ptr %write32_async.i.i286, align 4
  tail call void %862(ptr noundef %581, i32 noundef 1572, i32 noundef -1) #8
  %863 = ptrtoint ptr %cfg.i.i279 to i32
  call void @__asan_load4_noabort(i32 %863)
  %864 = load ptr, ptr %cfg.i.i279, align 8
  %write_readback.i336.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %864, i32 0, i32 1
  %865 = ptrtoint ptr %write_readback.i336.i to i32
  call void @__asan_load1_noabort(i32 %865)
  %866 = load i8, ptr %write_readback.i336.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %866)
  %tobool.not.i337.i = icmp eq i8 %866, 0
  br i1 %tobool.not.i337.i, label %rtl_write_dword.exit333.i._rtl92ce_hw_configure.exit_crit_edge, label %if.then.i340.i

rtl_write_dword.exit333.i._rtl92ce_hw_configure.exit_crit_edge: ; preds = %rtl_write_dword.exit333.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ce_hw_configure.exit

if.then.i340.i:                                   ; preds = %rtl_write_dword.exit333.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i338.i = getelementptr inbounds %struct.rtl_priv, ptr %581, i32 0, i32 13, i32 11
  %867 = ptrtoint ptr %read32_sync.i338.i to i32
  call void @__asan_load4_noabort(i32 %867)
  %868 = load ptr, ptr %read32_sync.i338.i, align 4
  %call.i339.i = tail call i32 %868(ptr noundef %581, i32 noundef 1572) #8
  br label %_rtl92ce_hw_configure.exit

_rtl92ce_hw_configure.exit:                       ; preds = %if.then.i340.i, %rtl_write_dword.exit333.i._rtl92ce_hw_configure.exit_crit_edge
  tail call void @rtl_cam_reset_all_entry(ptr noundef %hw) #8
  tail call void @rtl92ce_enable_hw_security_config(ptr noundef %hw)
  %rfpwr_state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 24
  %869 = ptrtoint ptr %rfpwr_state to i32
  call void @__asan_store4_noabort(i32 %869)
  store i32 0, ptr %rfpwr_state, align 4
  %870 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %870)
  %871 = load ptr, ptr %cfg.i, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %871, i32 0, i32 4
  %872 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %872)
  %873 = load ptr, ptr %ops, align 4
  %set_hw_reg = getelementptr inbounds %struct.rtl_hal_ops, ptr %873, i32 0, i32 20
  %874 = ptrtoint ptr %set_hw_reg to i32
  call void @__asan_load4_noabort(i32 %874)
  %875 = load ptr, ptr %set_hw_reg, align 4
  tail call void %875(ptr noundef %hw, i8 noundef zeroext 0, ptr noundef %mac80211) #8
  %876 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %876)
  %877 = load ptr, ptr %priv, align 8
  %write8_async.i.i307 = getelementptr inbounds %struct.rtl_priv, ptr %877, i32 0, i32 13, i32 5
  %878 = ptrtoint ptr %write8_async.i.i307 to i32
  call void @__asan_load4_noabort(i32 %878)
  %879 = load ptr, ptr %write8_async.i.i307, align 4
  tail call void %879(ptr noundef %877, i32 noundef 843, i8 noundef zeroext -109) #8
  %cfg.i.i308 = getelementptr inbounds %struct.rtl_priv, ptr %877, i32 0, i32 32
  %880 = ptrtoint ptr %cfg.i.i308 to i32
  call void @__asan_load4_noabort(i32 %880)
  %881 = load ptr, ptr %cfg.i.i308, align 8
  %write_readback.i.i309 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %881, i32 0, i32 1
  %882 = ptrtoint ptr %write_readback.i.i309 to i32
  call void @__asan_load1_noabort(i32 %882)
  %883 = load i8, ptr %write_readback.i.i309, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %883)
  %tobool.not.i.i310 = icmp eq i8 %883, 0
  br i1 %tobool.not.i.i310, label %_rtl92ce_hw_configure.exit.rtl_write_byte.exit.i315_crit_edge, label %if.then.i.i313

_rtl92ce_hw_configure.exit.rtl_write_byte.exit.i315_crit_edge: ; preds = %_rtl92ce_hw_configure.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit.i315

if.then.i.i313:                                   ; preds = %_rtl92ce_hw_configure.exit
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i311 = getelementptr inbounds %struct.rtl_priv, ptr %877, i32 0, i32 13, i32 9
  %884 = ptrtoint ptr %read8_sync.i.i311 to i32
  call void @__asan_load4_noabort(i32 %884)
  %885 = load ptr, ptr %read8_sync.i.i311, align 4
  %call.i.i312 = tail call zeroext i8 %885(ptr noundef %877, i32 noundef 843) #8
  br label %rtl_write_byte.exit.i315

rtl_write_byte.exit.i315:                         ; preds = %if.then.i.i313, %_rtl92ce_hw_configure.exit.rtl_write_byte.exit.i315_crit_edge
  %write16_async.i.i314 = getelementptr inbounds %struct.rtl_priv, ptr %877, i32 0, i32 13, i32 6
  %886 = ptrtoint ptr %write16_async.i.i314 to i32
  call void @__asan_load4_noabort(i32 %886)
  %887 = load ptr, ptr %write16_async.i.i314, align 4
  tail call void %887(ptr noundef %877, i32 noundef 848, i16 noundef zeroext -30964) #8
  %888 = ptrtoint ptr %cfg.i.i308 to i32
  call void @__asan_load4_noabort(i32 %888)
  %889 = load ptr, ptr %cfg.i.i308, align 8
  %write_readback.i10.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %889, i32 0, i32 1
  %890 = ptrtoint ptr %write_readback.i10.i to i32
  call void @__asan_load1_noabort(i32 %890)
  %891 = load i8, ptr %write_readback.i10.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %891)
  %tobool.not.i11.i = icmp eq i8 %891, 0
  br i1 %tobool.not.i11.i, label %rtl_write_byte.exit.i315.rtl_write_word.exit.i317_crit_edge, label %if.then.i13.i

rtl_write_byte.exit.i315.rtl_write_word.exit.i317_crit_edge: ; preds = %rtl_write_byte.exit.i315
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit.i317

if.then.i13.i:                                    ; preds = %rtl_write_byte.exit.i315
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i.i316 = getelementptr inbounds %struct.rtl_priv, ptr %877, i32 0, i32 13, i32 10
  %892 = ptrtoint ptr %read16_sync.i.i316 to i32
  call void @__asan_load4_noabort(i32 %892)
  %893 = load ptr, ptr %read16_sync.i.i316, align 4
  %call.i12.i = tail call zeroext i16 %893(ptr noundef %877, i32 noundef 848) #8
  br label %rtl_write_word.exit.i317

rtl_write_word.exit.i317:                         ; preds = %if.then.i13.i, %rtl_write_byte.exit.i315.rtl_write_word.exit.i317_crit_edge
  %894 = ptrtoint ptr %write8_async.i.i307 to i32
  call void @__asan_load4_noabort(i32 %894)
  %895 = load ptr, ptr %write8_async.i.i307, align 4
  tail call void %895(ptr noundef %877, i32 noundef 850, i8 noundef zeroext 1) #8
  %896 = ptrtoint ptr %cfg.i.i308 to i32
  call void @__asan_load4_noabort(i32 %896)
  %897 = load ptr, ptr %cfg.i.i308, align 8
  %write_readback.i16.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %897, i32 0, i32 1
  %898 = ptrtoint ptr %write_readback.i16.i to i32
  call void @__asan_load1_noabort(i32 %898)
  %899 = load i8, ptr %write_readback.i16.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %899)
  %tobool.not.i17.i = icmp eq i8 %899, 0
  br i1 %tobool.not.i17.i, label %rtl_write_word.exit.i317.rtl_write_byte.exit21.i_crit_edge, label %if.then.i20.i

rtl_write_word.exit.i317.rtl_write_byte.exit21.i_crit_edge: ; preds = %rtl_write_word.exit.i317
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit21.i

if.then.i20.i:                                    ; preds = %rtl_write_word.exit.i317
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i18.i = getelementptr inbounds %struct.rtl_priv, ptr %877, i32 0, i32 13, i32 9
  %900 = ptrtoint ptr %read8_sync.i18.i to i32
  call void @__asan_load4_noabort(i32 %900)
  %901 = load ptr, ptr %read8_sync.i18.i, align 4
  %call.i19.i = tail call zeroext i8 %901(ptr noundef %877, i32 noundef 850) #8
  br label %rtl_write_byte.exit21.i

rtl_write_byte.exit21.i:                          ; preds = %if.then.i20.i, %rtl_write_word.exit.i317.rtl_write_byte.exit21.i_crit_edge
  %support_backdoor.i = getelementptr inbounds %struct.rtl_priv, ptr %877, i32 0, i32 21, i32 6
  %902 = ptrtoint ptr %support_backdoor.i to i32
  call void @__asan_load1_noabort(i32 %902)
  %903 = load i8, ptr %support_backdoor.i, align 2, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %903)
  %tobool.not.i318 = icmp eq i8 %903, 0
  %904 = ptrtoint ptr %write8_async.i.i307 to i32
  call void @__asan_load4_noabort(i32 %904)
  %905 = load ptr, ptr %write8_async.i.i307, align 4
  br i1 %tobool.not.i318, label %if.else.i320, label %if.then.i319

if.then.i319:                                     ; preds = %rtl_write_byte.exit21.i
  tail call void %905(ptr noundef %877, i32 noundef 841, i8 noundef zeroext 27) #8
  %906 = ptrtoint ptr %cfg.i.i308 to i32
  call void @__asan_load4_noabort(i32 %906)
  %907 = load ptr, ptr %cfg.i.i308, align 8
  %write_readback.i24.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %907, i32 0, i32 1
  %908 = ptrtoint ptr %write_readback.i24.i to i32
  call void @__asan_load1_noabort(i32 %908)
  %909 = load i8, ptr %write_readback.i24.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %909)
  %tobool.not.i25.i = icmp eq i8 %909, 0
  br i1 %tobool.not.i25.i, label %if.then.i319.if.end.i322_crit_edge, label %if.then.i319.if.end.sink.split.i321_crit_edge

if.then.i319.if.end.sink.split.i321_crit_edge:    ; preds = %if.then.i319
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.sink.split.i321

if.then.i319.if.end.i322_crit_edge:               ; preds = %if.then.i319
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i322

if.else.i320:                                     ; preds = %rtl_write_byte.exit21.i
  tail call void %905(ptr noundef %877, i32 noundef 841, i8 noundef zeroext 3) #8
  %910 = ptrtoint ptr %cfg.i.i308 to i32
  call void @__asan_load4_noabort(i32 %910)
  %911 = load ptr, ptr %cfg.i.i308, align 8
  %write_readback.i32.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %911, i32 0, i32 1
  %912 = ptrtoint ptr %write_readback.i32.i to i32
  call void @__asan_load1_noabort(i32 %912)
  %913 = load i8, ptr %write_readback.i32.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %913)
  %tobool.not.i33.i = icmp eq i8 %913, 0
  br i1 %tobool.not.i33.i, label %if.else.i320.if.end.i322_crit_edge, label %if.else.i320.if.end.sink.split.i321_crit_edge

if.else.i320.if.end.sink.split.i321_crit_edge:    ; preds = %if.else.i320
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.sink.split.i321

if.else.i320.if.end.i322_crit_edge:               ; preds = %if.else.i320
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i322

if.end.sink.split.i321:                           ; preds = %if.else.i320.if.end.sink.split.i321_crit_edge, %if.then.i319.if.end.sink.split.i321_crit_edge
  %read8_sync.i34.i = getelementptr inbounds %struct.rtl_priv, ptr %877, i32 0, i32 13, i32 9
  %914 = ptrtoint ptr %read8_sync.i34.i to i32
  call void @__asan_load4_noabort(i32 %914)
  %915 = load ptr, ptr %read8_sync.i34.i, align 4
  %call.i35.i = tail call zeroext i8 %915(ptr noundef %877, i32 noundef 841) #8
  br label %if.end.i322

if.end.i322:                                      ; preds = %if.end.sink.split.i321, %if.else.i320.if.end.i322_crit_edge, %if.then.i319.if.end.i322_crit_edge
  %916 = ptrtoint ptr %write16_async.i.i314 to i32
  call void @__asan_load4_noabort(i32 %916)
  %917 = load ptr, ptr %write16_async.i.i314, align 4
  tail call void %917(ptr noundef %877, i32 noundef 848, i16 noundef zeroext 10008) #8
  %918 = ptrtoint ptr %cfg.i.i308 to i32
  call void @__asan_load4_noabort(i32 %918)
  %919 = load ptr, ptr %cfg.i.i308, align 8
  %write_readback.i40.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %919, i32 0, i32 1
  %920 = ptrtoint ptr %write_readback.i40.i to i32
  call void @__asan_load1_noabort(i32 %920)
  %921 = load i8, ptr %write_readback.i40.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %921)
  %tobool.not.i41.i = icmp eq i8 %921, 0
  br i1 %tobool.not.i41.i, label %if.end.i322.rtl_write_word.exit45.i_crit_edge, label %if.then.i44.i

if.end.i322.rtl_write_word.exit45.i_crit_edge:    ; preds = %if.end.i322
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit45.i

if.then.i44.i:                                    ; preds = %if.end.i322
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i42.i = getelementptr inbounds %struct.rtl_priv, ptr %877, i32 0, i32 13, i32 10
  %922 = ptrtoint ptr %read16_sync.i42.i to i32
  call void @__asan_load4_noabort(i32 %922)
  %923 = load ptr, ptr %read16_sync.i42.i, align 4
  %call.i43.i = tail call zeroext i16 %923(ptr noundef %877, i32 noundef 848) #8
  br label %rtl_write_word.exit45.i

rtl_write_word.exit45.i:                          ; preds = %if.then.i44.i, %if.end.i322.rtl_write_word.exit45.i_crit_edge
  %924 = ptrtoint ptr %write8_async.i.i307 to i32
  call void @__asan_load4_noabort(i32 %924)
  %925 = load ptr, ptr %write8_async.i.i307, align 4
  tail call void %925(ptr noundef %877, i32 noundef 850, i8 noundef zeroext 1) #8
  %926 = ptrtoint ptr %cfg.i.i308 to i32
  call void @__asan_load4_noabort(i32 %926)
  %927 = load ptr, ptr %cfg.i.i308, align 8
  %write_readback.i48.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %927, i32 0, i32 1
  %928 = ptrtoint ptr %write_readback.i48.i to i32
  call void @__asan_load1_noabort(i32 %928)
  %929 = load i8, ptr %write_readback.i48.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %929)
  %tobool.not.i49.i = icmp eq i8 %929, 0
  br i1 %tobool.not.i49.i, label %rtl_write_word.exit45.i._rtl92ce_enable_aspm_back_door.exit_crit_edge, label %if.then.i52.i

rtl_write_word.exit45.i._rtl92ce_enable_aspm_back_door.exit_crit_edge: ; preds = %rtl_write_word.exit45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ce_enable_aspm_back_door.exit

if.then.i52.i:                                    ; preds = %rtl_write_word.exit45.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i50.i = getelementptr inbounds %struct.rtl_priv, ptr %877, i32 0, i32 13, i32 9
  %930 = ptrtoint ptr %read8_sync.i50.i to i32
  call void @__asan_load4_noabort(i32 %930)
  %931 = load ptr, ptr %read8_sync.i50.i, align 4
  %call.i51.i = tail call zeroext i8 %931(ptr noundef %877, i32 noundef 850) #8
  br label %_rtl92ce_enable_aspm_back_door.exit

_rtl92ce_enable_aspm_back_door.exit:              ; preds = %if.then.i52.i, %rtl_write_word.exit45.i._rtl92ce_enable_aspm_back_door.exit_crit_edge
  %932 = ptrtoint ptr %intf_ops to i32
  call void @__asan_load4_noabort(i32 %932)
  %933 = load ptr, ptr %intf_ops, align 4
  %enable_aspm = getelementptr inbounds %struct.rtl_intf_ops, ptr %933, i32 0, i32 9
  %934 = ptrtoint ptr %enable_aspm to i32
  call void @__asan_load4_noabort(i32 %934)
  %935 = load ptr, ptr %enable_aspm, align 4
  tail call void %935(ptr noundef %hw) #8
  tail call void @rtl8192ce_bt_hw_init(ptr noundef %hw)
  %936 = ptrtoint ptr %rfpwr_state to i32
  call void @__asan_load4_noabort(i32 %936)
  %937 = load i32, ptr %rfpwr_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %937)
  %cmp68 = icmp eq i32 %937, 0
  br i1 %cmp68, label %if.then70, label %_rtl92ce_enable_aspm_back_door.exit.if.end76_crit_edge

_rtl92ce_enable_aspm_back_door.exit.if.end76_crit_edge: ; preds = %_rtl92ce_enable_aspm_back_door.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

if.then70:                                        ; preds = %_rtl92ce_enable_aspm_back_door.exit
  tail call void @rtl92c_phy_set_rfpath_switch(ptr noundef %hw, i1 noundef zeroext true) #8
  %iqk_initialized = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 31
  %938 = ptrtoint ptr %iqk_initialized to i32
  call void @__asan_load1_noabort(i32 %938)
  %939 = load i8, ptr %iqk_initialized, align 4, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %939)
  %tobool71.not = icmp eq i8 %939, 0
  br i1 %tobool71.not, label %if.else73, label %if.then72

if.then72:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rtl92c_phy_iq_calibrate(ptr noundef %hw, i1 noundef zeroext true) #8
  br label %if.end75

if.else73:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rtl92c_phy_iq_calibrate(ptr noundef %hw, i1 noundef zeroext false) #8
  %940 = ptrtoint ptr %iqk_initialized to i32
  call void @__asan_store1_noabort(i32 %940)
  store i8 1, ptr %iqk_initialized, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.else73, %if.then72
  tail call void @rtl92c_dm_check_txpower_tracking(ptr noundef %hw) #8
  tail call void @rtl92c_phy_lc_calibrate(ptr noundef %hw) #8
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %_rtl92ce_enable_aspm_back_door.exit.if.end76_crit_edge
  %941 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %941)
  %942 = load i32, ptr %version, align 4
  %and78 = and i32 %942, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and78)
  %cmp79 = icmp ne i32 %and78, 1
  %call85 = tail call zeroext i8 @efuse_read_1byte(ptr noundef %hw, i16 noundef zeroext 506) #8
  %conv86 = zext i8 %call85 to i32
  %and87 = and i32 %conv86, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %if.then89, label %if.end76.if.end90_crit_edge

if.end76.if.end90_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90

if.then89:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  %943 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %943)
  %944 = load ptr, ptr %priv, align 8
  %cfg.i324 = getelementptr inbounds %struct.rtl_priv, ptr %944, i32 0, i32 32
  %945 = ptrtoint ptr %cfg.i324 to i32
  call void @__asan_load4_noabort(i32 %945)
  %946 = load ptr, ptr %cfg.i324, align 8
  %ops.i325 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %946, i32 0, i32 4
  %947 = ptrtoint ptr %ops.i325 to i32
  call void @__asan_load4_noabort(i32 %947)
  %948 = load ptr, ptr %ops.i325, align 4
  %set_rfreg.i326 = getelementptr inbounds %struct.rtl_hal_ops, ptr %948, i32 0, i32 48
  %949 = ptrtoint ptr %set_rfreg.i326 to i32
  call void @__asan_load4_noabort(i32 %949)
  %950 = load ptr, ptr %set_rfreg.i326, align 4
  tail call void %950(ptr noundef %hw, i32 noundef 0, i32 noundef 21, i32 noundef 15, i32 noundef 5) #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.19) #8
  br label %if.end90

if.end90:                                         ; preds = %if.then89, %if.end76.if.end90_crit_edge
  %and92 = and i32 %conv86, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp ne i32 %and92, 0
  %brmerge = select i1 %tobool93.not, i1 true, i1 %cmp79
  br i1 %brmerge, label %if.end90.if.end98_crit_edge, label %if.then97

if.end90.if.end98_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98

if.then97:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  %951 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %951)
  %952 = load ptr, ptr %priv, align 8
  %cfg.i328 = getelementptr inbounds %struct.rtl_priv, ptr %952, i32 0, i32 32
  %953 = ptrtoint ptr %cfg.i328 to i32
  call void @__asan_load4_noabort(i32 %953)
  %954 = load ptr, ptr %cfg.i328, align 8
  %ops.i329 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %954, i32 0, i32 4
  %955 = ptrtoint ptr %ops.i329 to i32
  call void @__asan_load4_noabort(i32 %955)
  %956 = load ptr, ptr %ops.i329, align 4
  %set_rfreg.i330 = getelementptr inbounds %struct.rtl_hal_ops, ptr %956, i32 0, i32 48
  %957 = ptrtoint ptr %set_rfreg.i330 to i32
  call void @__asan_load4_noabort(i32 %957)
  %958 = load ptr, ptr %set_rfreg.i330, align 4
  tail call void %958(ptr noundef %hw, i32 noundef 1, i32 noundef 21, i32 noundef 15, i32 noundef 5) #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.20) #8
  br label %if.end98

if.end98:                                         ; preds = %if.then97, %if.end90.if.end98_crit_edge
  %and100 = and i32 %conv86, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %if.then102, label %if.end98.if.end112_crit_edge

if.end98.if.end112_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end112

if.then102:                                       ; preds = %if.end98
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %959 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %959)
  %960 = load ptr, ptr %read8_sync.i, align 4
  %call.i331 = tail call zeroext i8 %960(ptr noundef %1, i32 noundef 22) #8
  %961 = and i8 %call.i331, 15
  %or = or i8 %961, -128
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %962 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %962)
  %963 = load ptr, ptr %write8_async.i, align 4
  tail call void %963(ptr noundef %1, i32 noundef 22, i8 noundef zeroext %or) #8
  %964 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %964)
  %965 = load ptr, ptr %cfg.i, align 8
  %write_readback.i333 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %965, i32 0, i32 1
  %966 = ptrtoint ptr %write_readback.i333 to i32
  call void @__asan_load1_noabort(i32 %966)
  %967 = load i8, ptr %write_readback.i333, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %967)
  %tobool.not.i334 = icmp eq i8 %967, 0
  br i1 %tobool.not.i334, label %if.then102.rtl_write_byte.exit_crit_edge, label %if.then.i337

if.then102.rtl_write_byte.exit_crit_edge:         ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit

if.then.i337:                                     ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #10
  %968 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %968)
  %969 = load ptr, ptr %read8_sync.i, align 4
  %call.i336 = tail call zeroext i8 %969(ptr noundef %1, i32 noundef 22) #8
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i337, %if.then102.rtl_write_byte.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %970 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %970(i32 noundef 2147480) #8
  %971 = or i8 %961, -112
  %972 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %972)
  %973 = load ptr, ptr %write8_async.i, align 4
  tail call void %973(ptr noundef %1, i32 noundef 22, i8 noundef zeroext %971) #8
  %974 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %974)
  %975 = load ptr, ptr %cfg.i, align 8
  %write_readback.i341 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %975, i32 0, i32 1
  %976 = ptrtoint ptr %write_readback.i341 to i32
  call void @__asan_load1_noabort(i32 %976)
  %977 = load i8, ptr %write_readback.i341, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %977)
  %tobool.not.i342 = icmp eq i8 %977, 0
  br i1 %tobool.not.i342, label %rtl_write_byte.exit.rtl_write_byte.exit347_crit_edge, label %if.then.i345

rtl_write_byte.exit.rtl_write_byte.exit347_crit_edge: ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit347

if.then.i345:                                     ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #10
  %978 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %978)
  %979 = load ptr, ptr %read8_sync.i, align 4
  %call.i344 = tail call zeroext i8 %979(ptr noundef %1, i32 noundef 22) #8
  br label %rtl_write_byte.exit347

rtl_write_byte.exit347:                           ; preds = %if.then.i345, %rtl_write_byte.exit.rtl_write_byte.exit347_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.21) #8
  br label %if.end112

if.end112:                                        ; preds = %rtl_write_byte.exit347, %if.end98.if.end112_crit_edge
  tail call void @rtl92c_dm_init(ptr noundef %hw) #8
  br label %do.body113

do.body113:                                       ; preds = %if.end112, %if.then18, %do.end13
  %err.0 = phi i32 [ 1, %if.then18 ], [ 0, %if.end112 ], [ 1, %do.end13 ]
  %and.i348 = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i348)
  %tobool121.not = icmp eq i32 %and.i348, 0
  br i1 %tobool121.not, label %if.then122, label %do.body113.do.body124_crit_edge

do.body113.do.body124_crit_edge:                  ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body124

if.then122:                                       ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_on() #8
  br label %do.body124

do.body124:                                       ; preds = %if.then122, %do.body113.do.body124_crit_edge
  %980 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !201
  %and.i.i = and i32 %980, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool132.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool132.not, label %if.then136, label %do.body124.do.end139_crit_edge, !prof !203

do.body124.do.end139_crit_edge:                   ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end139

if.then136:                                       ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end139

do.end139:                                        ; preds = %if.then136, %do.body124.do.end139_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %3) #8, !srcloc !204
  %981 = ptrtoint ptr %being_init_adapter to i32
  call void @__asan_store1_noabort(i32 %981)
  store i8 0, ptr %being_init_adapter, align 4
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl92c_download_fw(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92c_phy_mac_config(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92c_phy_bb_config(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92c_phy_rf_config(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_cam_reset_all_entry(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8192ce_bt_hw_init(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
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
  br i1 %tobool.not, label %entry.if.end40_crit_edge, label %land.lhs.true

entry.if.end40_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

land.lhs.true:                                    ; preds = %entry
  %bt_coexist_type = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 11
  %4 = ptrtoint ptr %bt_coexist_type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bt_coexist_type, align 1
  %.off = add i8 %5, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.then, label %land.lhs.true.if.end40_crit_edge

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then:                                          ; preds = %land.lhs.true
  %bt_ant_isolation = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 14
  %6 = ptrtoint ptr %bt_ant_isolation to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bt_ant_isolation, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool10.not = icmp eq i8 %7, 0
  br i1 %tobool10.not, label %if.then.if.end_crit_edge, label %if.then11

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then11:                                        ; preds = %if.then
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %8 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write8_async.i, align 4
  tail call void %9(ptr noundef %1, i32 noundef 64, i8 noundef zeroext -96) #8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %10 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %write_readback.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %if.then11.if.end_crit_edge, label %if.then.i

if.then11.if.end_crit_edge:                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %14 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %15(ptr noundef %1, i32 noundef 64) #8
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then11.if.end_crit_edge, %if.then.if.end_crit_edge
  %read8_sync.i62 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %16 = ptrtoint ptr %read8_sync.i62 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read8_sync.i62, align 4
  %call.i63 = tail call zeroext i8 %17(ptr noundef %1, i32 noundef 1277) #8
  %18 = and i8 %call.i63, 1
  %19 = ptrtoint ptr %bt_ant_isolation to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bt_ant_isolation, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp18 = icmp eq i8 %20, 1
  %cond = select i1 %cmp18, i8 0, i8 2
  %or = or i8 %cond, %18
  %bt_service = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 16
  %21 = ptrtoint ptr %bt_service to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bt_service, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp22 = icmp eq i8 %22, 0
  %cond24 = select i1 %cmp22, i8 0, i8 4
  %or25 = or i8 %or, %cond24
  %write8_async.i64 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %23 = ptrtoint ptr %write8_async.i64 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write8_async.i64, align 4
  tail call void %24(ptr noundef %1, i32 noundef 1277, i8 noundef zeroext %or25) #8
  %cfg.i65 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %25 = ptrtoint ptr %cfg.i65 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cfg.i65, align 8
  %write_readback.i66 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %write_readback.i66 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %write_readback.i66, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i67 = icmp eq i8 %28, 0
  br i1 %tobool.not.i67, label %if.end.rtl_write_byte.exit71_crit_edge, label %if.then.i70

if.end.rtl_write_byte.exit71_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit71

if.then.i70:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %read8_sync.i62 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read8_sync.i62, align 4
  %call.i69 = tail call zeroext i8 %30(ptr noundef %1, i32 noundef 1277) #8
  br label %rtl_write_byte.exit71

rtl_write_byte.exit71:                            ; preds = %if.then.i70, %if.end.rtl_write_byte.exit71_crit_edge
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %31 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write32_async.i, align 4
  tail call void %32(ptr noundef %1, i32 noundef 1732, i32 noundef -1431659862) #8
  %33 = ptrtoint ptr %cfg.i65 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cfg.i65, align 8
  %write_readback.i73 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %write_readback.i73 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %write_readback.i73, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i74 = icmp eq i8 %36, 0
  br i1 %tobool.not.i74, label %rtl_write_byte.exit71.rtl_write_dword.exit_crit_edge, label %if.then.i76

rtl_write_byte.exit71.rtl_write_dword.exit_crit_edge: ; preds = %rtl_write_byte.exit71
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit

if.then.i76:                                      ; preds = %rtl_write_byte.exit71
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %37 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read32_sync.i, align 4
  %call.i75 = tail call i32 %38(ptr noundef %1, i32 noundef 1732) #8
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i76, %rtl_write_byte.exit71.rtl_write_dword.exit_crit_edge
  %39 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write32_async.i, align 4
  tail call void %40(ptr noundef %1, i32 noundef 1736, i32 noundef -4390848) #8
  %41 = ptrtoint ptr %cfg.i65 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cfg.i65, align 8
  %write_readback.i79 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %write_readback.i79 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %write_readback.i79, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i80 = icmp eq i8 %44, 0
  br i1 %tobool.not.i80, label %rtl_write_dword.exit.rtl_write_dword.exit84_crit_edge, label %if.then.i83

rtl_write_dword.exit.rtl_write_dword.exit84_crit_edge: ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit84

if.then.i83:                                      ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i81 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %45 = ptrtoint ptr %read32_sync.i81 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %read32_sync.i81, align 4
  %call.i82 = tail call i32 %46(ptr noundef %1, i32 noundef 1736) #8
  br label %rtl_write_dword.exit84

rtl_write_dword.exit84:                           ; preds = %if.then.i83, %rtl_write_dword.exit.rtl_write_dword.exit84_crit_edge
  %47 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write32_async.i, align 4
  tail call void %48(ptr noundef %1, i32 noundef 1740, i32 noundef 1073741840) #8
  %49 = ptrtoint ptr %cfg.i65 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cfg.i65, align 8
  %write_readback.i87 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %write_readback.i87 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %write_readback.i87, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i88 = icmp eq i8 %52, 0
  br i1 %tobool.not.i88, label %rtl_write_dword.exit84.rtl_write_dword.exit92_crit_edge, label %if.then.i91

rtl_write_dword.exit84.rtl_write_dword.exit92_crit_edge: ; preds = %rtl_write_dword.exit84
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit92

if.then.i91:                                      ; preds = %rtl_write_dword.exit84
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i89 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %53 = ptrtoint ptr %read32_sync.i89 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %read32_sync.i89, align 4
  %call.i90 = tail call i32 %54(ptr noundef %1, i32 noundef 1740) #8
  br label %rtl_write_dword.exit92

rtl_write_dword.exit92:                           ; preds = %if.then.i91, %rtl_write_dword.exit84.rtl_write_dword.exit92_crit_edge
  %rf_type = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 4
  %55 = ptrtoint ptr %rf_type to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %rf_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %cmp28 = icmp eq i8 %56, 0
  br i1 %cmp28, label %if.then30, label %rtl_write_dword.exit92.if.end40_crit_edge

rtl_write_dword.exit92.if.end40_crit_edge:        ; preds = %rtl_write_dword.exit92
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then30:                                        ; preds = %rtl_write_dword.exit92
  %57 = ptrtoint ptr %read8_sync.i62 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %read8_sync.i62, align 4
  %call.i94 = tail call zeroext i8 %58(ptr noundef %1, i32 noundef 3076) #8
  %59 = and i8 %call.i94, -3
  %60 = ptrtoint ptr %write8_async.i64 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write8_async.i64, align 4
  tail call void %61(ptr noundef %1, i32 noundef 3076, i8 noundef zeroext %59) #8
  %62 = ptrtoint ptr %cfg.i65 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cfg.i65, align 8
  %write_readback.i97 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %write_readback.i97 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %write_readback.i97, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool.not.i98 = icmp eq i8 %65, 0
  br i1 %tobool.not.i98, label %if.then30.rtl_write_byte.exit102_crit_edge, label %if.then.i101

if.then30.rtl_write_byte.exit102_crit_edge:       ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit102

if.then.i101:                                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %read8_sync.i62 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %read8_sync.i62, align 4
  %call.i100 = tail call zeroext i8 %67(ptr noundef %1, i32 noundef 3076) #8
  br label %rtl_write_byte.exit102

rtl_write_byte.exit102:                           ; preds = %if.then.i101, %if.then30.rtl_write_byte.exit102_crit_edge
  %68 = ptrtoint ptr %read8_sync.i62 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %read8_sync.i62, align 4
  %call.i104 = tail call zeroext i8 %69(ptr noundef %1, i32 noundef 3332) #8
  %70 = and i8 %call.i104, -3
  %71 = ptrtoint ptr %write8_async.i64 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %write8_async.i64, align 4
  tail call void %72(ptr noundef %1, i32 noundef 3332, i8 noundef zeroext %70) #8
  %73 = ptrtoint ptr %cfg.i65 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %cfg.i65, align 8
  %write_readback.i107 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %write_readback.i107 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %write_readback.i107, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool.not.i108 = icmp eq i8 %76, 0
  br i1 %tobool.not.i108, label %rtl_write_byte.exit102.if.end40_crit_edge, label %if.then.i111

rtl_write_byte.exit102.if.end40_crit_edge:        ; preds = %rtl_write_byte.exit102
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then.i111:                                     ; preds = %rtl_write_byte.exit102
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %read8_sync.i62 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %read8_sync.i62, align 4
  %call.i110 = tail call zeroext i8 %78(ptr noundef %1, i32 noundef 3332) #8
  br label %if.end40

if.end40:                                         ; preds = %if.then.i111, %rtl_write_byte.exit102.if.end40_crit_edge, %rtl_write_dword.exit92.if.end40_crit_edge, %land.lhs.true.if.end40_crit_edge, %entry.if.end40_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92c_phy_set_rfpath_switch(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92c_phy_iq_calibrate(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92c_dm_check_txpower_tracking(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92c_phy_lc_calibrate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @efuse_read_1byte(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92c_dm_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ce_set_check_bssid(ptr noundef %hw, i1 noundef zeroext %check_bssid) local_unnamed_addr #0 align 64 {
entry:
  %reg_rcr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_rcr) #8
  %2 = ptrtoint ptr %reg_rcr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg_rcr, align 4, !annotation !199
  %rfpwr_state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 24
  %3 = ptrtoint ptr %rfpwr_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rfpwr_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  call void %10(ptr noundef %hw, i8 noundef zeroext 44, ptr noundef nonnull %reg_rcr) #8
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
  call void %19(ptr noundef %hw, i8 noundef zeroext 44, ptr noundef nonnull %reg_rcr) #8
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
  call void %25(ptr noundef %21, i32 noundef 1360, i8 noundef zeroext %conv6.i) #8
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %21, i32 0, i32 32
  %26 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %write_readback.i.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i.i = icmp eq i8 %29, 0
  br i1 %tobool.not.i.i, label %if.then1.cleanup_crit_edge, label %if.then.i.i

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %21, i32 0, i32 13, i32 9
  %30 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = call zeroext i8 %31(ptr noundef %21, i32 noundef 1360) #8
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
  call void %38(ptr noundef %34, i32 noundef 1360, i8 noundef zeroext %conv6.i23) #8
  %cfg.i.i25 = getelementptr inbounds %struct.rtl_priv, ptr %34, i32 0, i32 32
  %39 = ptrtoint ptr %cfg.i.i25 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cfg.i.i25, align 8
  %write_readback.i.i26 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %write_readback.i.i26 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %write_readback.i.i26, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i.i27 = icmp eq i8 %42, 0
  br i1 %tobool.not.i.i27, label %if.then5._rtl92ce_set_bcn_ctrl_reg.exit31_crit_edge, label %if.then.i.i30

if.then5._rtl92ce_set_bcn_ctrl_reg.exit31_crit_edge: ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ce_set_bcn_ctrl_reg.exit31

if.then.i.i30:                                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i28 = getelementptr inbounds %struct.rtl_priv, ptr %34, i32 0, i32 13, i32 9
  %43 = ptrtoint ptr %read8_sync.i.i28 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %read8_sync.i.i28, align 4
  %call.i.i29 = call zeroext i8 %44(ptr noundef %34, i32 noundef 1360) #8
  br label %_rtl92ce_set_bcn_ctrl_reg.exit31

_rtl92ce_set_bcn_ctrl_reg.exit31:                 ; preds = %if.then.i.i30, %if.then5._rtl92ce_set_bcn_ctrl_reg.exit31_crit_edge
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
  call void %50(ptr noundef %hw, i8 noundef zeroext 44, ptr noundef nonnull %reg_rcr) #8
  br label %cleanup

cleanup:                                          ; preds = %_rtl92ce_set_bcn_ctrl_reg.exit31, %if.then.i.i, %if.then1.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_rcr) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl92ce_set_network_type(ptr noundef %hw, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  %reg_rcr.i12 = alloca i32, align 4
  %reg_rcr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call = tail call fastcc i32 @_rtl92ce_set_media_status(ptr noundef %hw, i32 noundef %type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  %4 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %type, label %if.then4 [
    i32 3, label %if.then1.cleanup_crit_edge
    i32 7, label %if.then1.cleanup_crit_edge21
  ]

if.then1.cleanup_crit_edge21:                     ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then4:                                         ; preds = %if.then1
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_rcr.i) #8
  %7 = ptrtoint ptr %reg_rcr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %reg_rcr.i, align 4, !annotation !199
  %rfpwr_state.i = getelementptr inbounds %struct.rtl_priv, ptr %6, i32 0, i32 21, i32 24
  %8 = ptrtoint ptr %rfpwr_state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rfpwr_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then4.rtl92ce_set_check_bssid.exit_crit_edge

if.then4.rtl92ce_set_check_bssid.exit_crit_edge:  ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl92ce_set_check_bssid.exit

if.end.i:                                         ; preds = %if.then4
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %6, i32 0, i32 32
  %10 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 4
  %get_hw_reg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %13, i32 0, i32 19
  %14 = ptrtoint ptr %get_hw_reg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_hw_reg.i, align 4
  call void %15(ptr noundef %hw, i8 noundef zeroext 44, ptr noundef nonnull %reg_rcr.i) #8
  %16 = ptrtoint ptr %reg_rcr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reg_rcr.i, align 4
  %or.i = or i32 %17, 192
  store i32 %or.i, ptr %reg_rcr.i, align 4
  %18 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cfg.i, align 8
  %ops3.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %ops3.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops3.i, align 4
  %set_hw_reg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %21, i32 0, i32 20
  %22 = ptrtoint ptr %set_hw_reg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set_hw_reg.i, align 4
  call void %23(ptr noundef %hw, i8 noundef zeroext 44, ptr noundef nonnull %reg_rcr.i) #8
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i.i = getelementptr inbounds %struct.rtl_priv, ptr %25, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %26 = ptrtoint ptr %reg_bcn_ctrl_val.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %reg_bcn_ctrl_val.i.i, align 4
  %and.i.i = and i32 %27, -17
  store i32 %and.i.i, ptr %reg_bcn_ctrl_val.i.i, align 4
  %conv6.i.i = trunc i32 %and.i.i to i8
  %write8_async.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %25, i32 0, i32 13, i32 5
  %28 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write8_async.i.i.i, align 4
  call void %29(ptr noundef %25, i32 noundef 1360, i8 noundef zeroext %conv6.i.i) #8
  %cfg.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %25, i32 0, i32 32
  %30 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %write_readback.i.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %write_readback.i.i.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i.i.i = icmp eq i8 %33, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.rtl92ce_set_check_bssid.exit_crit_edge, label %if.then.i.i.i

if.end.i.rtl92ce_set_check_bssid.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl92ce_set_check_bssid.exit

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %25, i32 0, i32 13, i32 9
  %34 = ptrtoint ptr %read8_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read8_sync.i.i.i, align 4
  %call.i.i.i = call zeroext i8 %35(ptr noundef %25, i32 noundef 1360) #8
  br label %rtl92ce_set_check_bssid.exit

rtl92ce_set_check_bssid.exit:                     ; preds = %if.then.i.i.i, %if.end.i.rtl92ce_set_check_bssid.exit_crit_edge, %if.then4.rtl92ce_set_check_bssid.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_rcr.i) #8
  br label %cleanup

if.else:                                          ; preds = %if.end
  %36 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_rcr.i12) #8
  %38 = ptrtoint ptr %reg_rcr.i12 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %reg_rcr.i12, align 4, !annotation !199
  %rfpwr_state.i14 = getelementptr inbounds %struct.rtl_priv, ptr %37, i32 0, i32 21, i32 24
  %39 = ptrtoint ptr %rfpwr_state.i14 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rfpwr_state.i14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.not.i15 = icmp eq i32 %40, 0
  br i1 %cmp.not.i15, label %if.end.i19, label %if.else.rtl92ce_set_check_bssid.exit20_crit_edge

if.else.rtl92ce_set_check_bssid.exit20_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl92ce_set_check_bssid.exit20

if.end.i19:                                       ; preds = %if.else
  %cfg.i16 = getelementptr inbounds %struct.rtl_priv, ptr %37, i32 0, i32 32
  %41 = ptrtoint ptr %cfg.i16 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cfg.i16, align 8
  %ops.i17 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %ops.i17 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops.i17, align 4
  %get_hw_reg.i18 = getelementptr inbounds %struct.rtl_hal_ops, ptr %44, i32 0, i32 19
  %45 = ptrtoint ptr %get_hw_reg.i18 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %get_hw_reg.i18, align 4
  call void %46(ptr noundef %hw, i8 noundef zeroext 44, ptr noundef nonnull %reg_rcr.i12) #8
  %47 = ptrtoint ptr %reg_rcr.i12 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %reg_rcr.i12, align 4
  %and.i = and i32 %48, -193
  store i32 %and.i, ptr %reg_rcr.i12, align 4
  %49 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i22.i = getelementptr inbounds %struct.rtl_priv, ptr %50, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %51 = ptrtoint ptr %reg_bcn_ctrl_val.i22.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %reg_bcn_ctrl_val.i22.i, align 4
  %or.i.i = or i32 %52, 16
  store i32 %or.i.i, ptr %reg_bcn_ctrl_val.i22.i, align 4
  %conv6.i23.i = trunc i32 %or.i.i to i8
  %write8_async.i.i24.i = getelementptr inbounds %struct.rtl_priv, ptr %50, i32 0, i32 13, i32 5
  %53 = ptrtoint ptr %write8_async.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write8_async.i.i24.i, align 4
  call void %54(ptr noundef %50, i32 noundef 1360, i8 noundef zeroext %conv6.i23.i) #8
  %cfg.i.i25.i = getelementptr inbounds %struct.rtl_priv, ptr %50, i32 0, i32 32
  %55 = ptrtoint ptr %cfg.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cfg.i.i25.i, align 8
  %write_readback.i.i26.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %write_readback.i.i26.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %write_readback.i.i26.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i.i27.i = icmp eq i8 %58, 0
  br i1 %tobool.not.i.i27.i, label %if.end.i19._rtl92ce_set_bcn_ctrl_reg.exit31.i_crit_edge, label %if.then.i.i30.i

if.end.i19._rtl92ce_set_bcn_ctrl_reg.exit31.i_crit_edge: ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ce_set_bcn_ctrl_reg.exit31.i

if.then.i.i30.i:                                  ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i28.i = getelementptr inbounds %struct.rtl_priv, ptr %50, i32 0, i32 13, i32 9
  %59 = ptrtoint ptr %read8_sync.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %read8_sync.i.i28.i, align 4
  %call.i.i29.i = call zeroext i8 %60(ptr noundef %50, i32 noundef 1360) #8
  br label %_rtl92ce_set_bcn_ctrl_reg.exit31.i

_rtl92ce_set_bcn_ctrl_reg.exit31.i:               ; preds = %if.then.i.i30.i, %if.end.i19._rtl92ce_set_bcn_ctrl_reg.exit31.i_crit_edge
  %61 = ptrtoint ptr %cfg.i16 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cfg.i16, align 8
  %ops7.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %62, i32 0, i32 4
  %63 = ptrtoint ptr %ops7.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ops7.i, align 4
  %set_hw_reg8.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %64, i32 0, i32 20
  %65 = ptrtoint ptr %set_hw_reg8.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %set_hw_reg8.i, align 4
  call void %66(ptr noundef %hw, i8 noundef zeroext 44, ptr noundef nonnull %reg_rcr.i12) #8
  br label %rtl92ce_set_check_bssid.exit20

rtl92ce_set_check_bssid.exit20:                   ; preds = %_rtl92ce_set_bcn_ctrl_reg.exit31.i, %if.else.rtl92ce_set_check_bssid.exit20_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_rcr.i12) #8
  br label %cleanup

cleanup:                                          ; preds = %rtl92ce_set_check_bssid.exit20, %rtl92ce_set_check_bssid.exit, %if.then1.cleanup_crit_edge, %if.then1.cleanup_crit_edge21, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ 0, %if.then1.cleanup_crit_edge ], [ 0, %if.then1.cleanup_crit_edge21 ], [ 0, %rtl92ce_set_check_bssid.exit ], [ 0, %rtl92ce_set_check_bssid.exit20 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_rtl92ce_set_media_status(ptr noundef %hw, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %2 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %3(ptr noundef %1, i32 noundef 258) #8
  %4 = and i8 %call.i, -4
  %5 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %type, label %do.end [
    i32 0, label %entry.land.lhs.true_crit_edge
    i32 1, label %sw.bb2
    i32 2, label %sw.bb3
    i32 3, label %if.end.thread128
    i32 7, label %sw.bb5
  ]

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %type) #11
  br label %cleanup

if.end.thread128:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.51) #8
  br label %if.then25

land.lhs.true:                                    ; preds = %sw.bb5, %sw.bb3, %sw.bb2, %entry.land.lhs.true_crit_edge
  %.str.52.sink = phi ptr [ @.str.52, %sw.bb5 ], [ @.str.50, %sw.bb3 ], [ @.str.49, %sw.bb2 ], [ @.str.48, %entry.land.lhs.true_crit_edge ]
  %ledaction.0.ph = phi i32 [ 3, %sw.bb5 ], [ 2, %sw.bb3 ], [ 3, %sw.bb2 ], [ 3, %entry.land.lhs.true_crit_edge ]
  %mode.0.ph = phi i8 [ 1, %sw.bb5 ], [ 2, %sw.bb3 ], [ 1, %sw.bb2 ], [ 0, %entry.land.lhs.true_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 5, ptr noundef nonnull %.str.52.sink) #8
  %link_state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 10
  %6 = ptrtoint ptr %link_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %link_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp9 = icmp ult i32 %7, 2
  br i1 %cmp9, label %land.lhs.true.if.then17_crit_edge, label %if.end

land.lhs.true.if.then17_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

if.end:                                           ; preds = %land.lhs.true
  %trunc = trunc i8 %mode.0.ph to i2
  %8 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.98)
  switch i2 %trunc, label %if.else26 [
    i2 0, label %if.end.if.then17_crit_edge
    i2 -2, label %if.end.if.then17_crit_edge133
    i2 1, label %if.end.if.then25_crit_edge
  ]

if.end.if.then25_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then25

if.end.if.then17_crit_edge133:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

if.end.if.then17_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

if.then17:                                        ; preds = %if.end.if.then17_crit_edge, %if.end.if.then17_crit_edge133, %land.lhs.true.if.then17_crit_edge
  %mode.1127 = phi i8 [ %mode.0.ph, %if.end.if.then17_crit_edge ], [ %mode.0.ph, %if.end.if.then17_crit_edge133 ], [ 0, %land.lhs.true.if.then17_crit_edge ]
  %ledaction.1125 = phi i32 [ %ledaction.0.ph, %if.end.if.then17_crit_edge ], [ %ledaction.0.ph, %if.end.if.then17_crit_edge133 ], [ 3, %land.lhs.true.if.then17_crit_edge ]
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 8
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 13, i32 9
  %11 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = tail call zeroext i8 %12(ptr noundef %10, i32 noundef 1058) #8
  %13 = and i8 %call.i.i, -65
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 13, i32 5
  %14 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %15(ptr noundef %10, i32 noundef 1058, i8 noundef zeroext %13) #8
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 32
  %16 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %write_readback.i.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i.i, label %if.then17.rtl_write_byte.exit.i_crit_edge, label %if.then.i.i

if.then17.rtl_write_byte.exit.i_crit_edge:        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit.i

if.then.i.i:                                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i13.i = tail call zeroext i8 %21(ptr noundef %10, i32 noundef 1058) #8
  br label %rtl_write_byte.exit.i

rtl_write_byte.exit.i:                            ; preds = %if.then.i.i, %if.then17.rtl_write_byte.exit.i_crit_edge
  %22 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %23(ptr noundef %10, i32 noundef 1345, i8 noundef zeroext 100) #8
  %24 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i16.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %write_readback.i16.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %write_readback.i16.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i17.i = icmp eq i8 %27, 0
  br i1 %tobool.not.i17.i, label %rtl_write_byte.exit.i.rtl_write_byte.exit21.i_crit_edge, label %if.then.i20.i

rtl_write_byte.exit.i.rtl_write_byte.exit21.i_crit_edge: ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit21.i

if.then.i20.i:                                    ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i19.i = tail call zeroext i8 %29(ptr noundef %10, i32 noundef 1345) #8
  br label %rtl_write_byte.exit21.i

rtl_write_byte.exit21.i:                          ; preds = %if.then.i20.i, %rtl_write_byte.exit.i.rtl_write_byte.exit21.i_crit_edge
  %30 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i23.i = tail call zeroext i8 %31(ptr noundef %10, i32 noundef 1346) #8
  %32 = and i8 %call.i23.i, -2
  %33 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %34(ptr noundef %10, i32 noundef 1346, i8 noundef zeroext %32) #8
  %35 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i26.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %write_readback.i26.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %write_readback.i26.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i27.i = icmp eq i8 %38, 0
  br i1 %tobool.not.i27.i, label %rtl_write_byte.exit21.i._rtl92ce_stop_tx_beacon.exit_crit_edge, label %if.then.i30.i

rtl_write_byte.exit21.i._rtl92ce_stop_tx_beacon.exit_crit_edge: ; preds = %rtl_write_byte.exit21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ce_stop_tx_beacon.exit

if.then.i30.i:                                    ; preds = %rtl_write_byte.exit21.i
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i29.i = tail call zeroext i8 %40(ptr noundef %10, i32 noundef 1346) #8
  br label %_rtl92ce_stop_tx_beacon.exit

_rtl92ce_stop_tx_beacon.exit:                     ; preds = %if.then.i30.i, %rtl_write_byte.exit21.i._rtl92ce_stop_tx_beacon.exit_crit_edge
  %41 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i.i = getelementptr inbounds %struct.rtl_priv, ptr %42, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %43 = ptrtoint ptr %reg_bcn_ctrl_val.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %reg_bcn_ctrl_val.i.i, align 4
  %and.i.i = and i32 %44, -3
  store i32 %and.i.i, ptr %reg_bcn_ctrl_val.i.i, align 4
  %conv6.i.i = trunc i32 %and.i.i to i8
  %write8_async.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %42, i32 0, i32 13, i32 5
  %45 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %46(ptr noundef %42, i32 noundef 1360, i8 noundef zeroext %conv6.i.i) #8
  %cfg.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %42, i32 0, i32 32
  %47 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %write_readback.i.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %write_readback.i.i.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i.i.i = icmp eq i8 %50, 0
  br i1 %tobool.not.i.i.i, label %_rtl92ce_stop_tx_beacon.exit.if.end29_crit_edge, label %if.then.i.i.i

_rtl92ce_stop_tx_beacon.exit.if.end29_crit_edge:  ; preds = %_rtl92ce_stop_tx_beacon.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then.i.i.i:                                    ; preds = %_rtl92ce_stop_tx_beacon.exit
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %42, i32 0, i32 13, i32 9
  %51 = ptrtoint ptr %read8_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %read8_sync.i.i.i, align 4
  %call.i.i.i = tail call zeroext i8 %52(ptr noundef %42, i32 noundef 1360) #8
  br label %if.end29

if.then25:                                        ; preds = %if.end.if.then25_crit_edge, %if.end.thread128
  %mode.1132 = phi i8 [ 3, %if.end.thread128 ], [ 1, %if.end.if.then25_crit_edge ]
  %ledaction.1131 = phi i32 [ 2, %if.end.thread128 ], [ %ledaction.0.ph, %if.end.if.then25_crit_edge ]
  %53 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %priv, align 8
  %read8_sync.i.i70 = getelementptr inbounds %struct.rtl_priv, ptr %54, i32 0, i32 13, i32 9
  %55 = ptrtoint ptr %read8_sync.i.i70 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %read8_sync.i.i70, align 4
  %call.i.i71 = tail call zeroext i8 %56(ptr noundef %54, i32 noundef 1058) #8
  %57 = or i8 %call.i.i71, 64
  %write8_async.i.i72 = getelementptr inbounds %struct.rtl_priv, ptr %54, i32 0, i32 13, i32 5
  %58 = ptrtoint ptr %write8_async.i.i72 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %write8_async.i.i72, align 4
  tail call void %59(ptr noundef %54, i32 noundef 1058, i8 noundef zeroext %57) #8
  %cfg.i.i73 = getelementptr inbounds %struct.rtl_priv, ptr %54, i32 0, i32 32
  %60 = ptrtoint ptr %cfg.i.i73 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cfg.i.i73, align 8
  %write_readback.i.i74 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %write_readback.i.i74 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %write_readback.i.i74, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i.i75 = icmp eq i8 %63, 0
  br i1 %tobool.not.i.i75, label %if.then25.rtl_write_byte.exit.i80_crit_edge, label %if.then.i.i77

if.then25.rtl_write_byte.exit.i80_crit_edge:      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit.i80

if.then.i.i77:                                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %read8_sync.i.i70 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %read8_sync.i.i70, align 4
  %call.i13.i76 = tail call zeroext i8 %65(ptr noundef %54, i32 noundef 1058) #8
  br label %rtl_write_byte.exit.i80

rtl_write_byte.exit.i80:                          ; preds = %if.then.i.i77, %if.then25.rtl_write_byte.exit.i80_crit_edge
  %66 = ptrtoint ptr %write8_async.i.i72 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %write8_async.i.i72, align 4
  tail call void %67(ptr noundef %54, i32 noundef 1345, i8 noundef zeroext -1) #8
  %68 = ptrtoint ptr %cfg.i.i73 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cfg.i.i73, align 8
  %write_readback.i16.i78 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %write_readback.i16.i78 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %write_readback.i16.i78, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool.not.i17.i79 = icmp eq i8 %71, 0
  br i1 %tobool.not.i17.i79, label %rtl_write_byte.exit.i80.rtl_write_byte.exit21.i86_crit_edge, label %if.then.i20.i82

rtl_write_byte.exit.i80.rtl_write_byte.exit21.i86_crit_edge: ; preds = %rtl_write_byte.exit.i80
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit21.i86

if.then.i20.i82:                                  ; preds = %rtl_write_byte.exit.i80
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %read8_sync.i.i70 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %read8_sync.i.i70, align 4
  %call.i19.i81 = tail call zeroext i8 %73(ptr noundef %54, i32 noundef 1345) #8
  br label %rtl_write_byte.exit21.i86

rtl_write_byte.exit21.i86:                        ; preds = %if.then.i20.i82, %rtl_write_byte.exit.i80.rtl_write_byte.exit21.i86_crit_edge
  %74 = ptrtoint ptr %read8_sync.i.i70 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %read8_sync.i.i70, align 4
  %call.i23.i83 = tail call zeroext i8 %75(ptr noundef %54, i32 noundef 1346) #8
  %76 = or i8 %call.i23.i83, 1
  %77 = ptrtoint ptr %write8_async.i.i72 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %write8_async.i.i72, align 4
  tail call void %78(ptr noundef %54, i32 noundef 1346, i8 noundef zeroext %76) #8
  %79 = ptrtoint ptr %cfg.i.i73 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cfg.i.i73, align 8
  %write_readback.i26.i84 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %write_readback.i26.i84 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %write_readback.i26.i84, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool.not.i27.i85 = icmp eq i8 %82, 0
  br i1 %tobool.not.i27.i85, label %rtl_write_byte.exit21.i86._rtl92ce_resume_tx_beacon.exit_crit_edge, label %if.then.i30.i88

rtl_write_byte.exit21.i86._rtl92ce_resume_tx_beacon.exit_crit_edge: ; preds = %rtl_write_byte.exit21.i86
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ce_resume_tx_beacon.exit

if.then.i30.i88:                                  ; preds = %rtl_write_byte.exit21.i86
  call void @__sanitizer_cov_trace_pc() #10
  %83 = ptrtoint ptr %read8_sync.i.i70 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %read8_sync.i.i70, align 4
  %call.i29.i87 = tail call zeroext i8 %84(ptr noundef %54, i32 noundef 1346) #8
  br label %_rtl92ce_resume_tx_beacon.exit

_rtl92ce_resume_tx_beacon.exit:                   ; preds = %if.then.i30.i88, %rtl_write_byte.exit21.i86._rtl92ce_resume_tx_beacon.exit_crit_edge
  %85 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i.i90 = getelementptr inbounds %struct.rtl_priv, ptr %86, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %87 = ptrtoint ptr %reg_bcn_ctrl_val.i.i90 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %reg_bcn_ctrl_val.i.i90, align 4
  %or.i.i = or i32 %88, 2
  store i32 %or.i.i, ptr %reg_bcn_ctrl_val.i.i90, align 4
  %conv6.i.i91 = trunc i32 %or.i.i to i8
  %write8_async.i.i.i92 = getelementptr inbounds %struct.rtl_priv, ptr %86, i32 0, i32 13, i32 5
  %89 = ptrtoint ptr %write8_async.i.i.i92 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %write8_async.i.i.i92, align 4
  tail call void %90(ptr noundef %86, i32 noundef 1360, i8 noundef zeroext %conv6.i.i91) #8
  %cfg.i.i.i93 = getelementptr inbounds %struct.rtl_priv, ptr %86, i32 0, i32 32
  %91 = ptrtoint ptr %cfg.i.i.i93 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %cfg.i.i.i93, align 8
  %write_readback.i.i.i94 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %write_readback.i.i.i94 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %write_readback.i.i.i94, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool.not.i.i.i95 = icmp eq i8 %94, 0
  br i1 %tobool.not.i.i.i95, label %_rtl92ce_resume_tx_beacon.exit.if.end29_crit_edge, label %if.then.i.i.i98

_rtl92ce_resume_tx_beacon.exit.if.end29_crit_edge: ; preds = %_rtl92ce_resume_tx_beacon.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then.i.i.i98:                                  ; preds = %_rtl92ce_resume_tx_beacon.exit
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i.i96 = getelementptr inbounds %struct.rtl_priv, ptr %86, i32 0, i32 13, i32 9
  %95 = ptrtoint ptr %read8_sync.i.i.i96 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %read8_sync.i.i.i96, align 4
  %call.i.i.i97 = tail call zeroext i8 %96(ptr noundef %86, i32 noundef 1360) #8
  br label %if.end29

if.else26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.55, i32 noundef 2) #8
  br label %if.end29

if.end29:                                         ; preds = %if.else26, %if.then.i.i.i98, %_rtl92ce_resume_tx_beacon.exit.if.end29_crit_edge, %if.then.i.i.i, %_rtl92ce_stop_tx_beacon.exit.if.end29_crit_edge
  %mode.1126 = phi i8 [ 0, %if.else26 ], [ %mode.1127, %_rtl92ce_stop_tx_beacon.exit.if.end29_crit_edge ], [ %mode.1127, %if.then.i.i.i ], [ %mode.1132, %_rtl92ce_resume_tx_beacon.exit.if.end29_crit_edge ], [ %mode.1132, %if.then.i.i.i98 ]
  %ledaction.1124 = phi i32 [ %ledaction.0.ph, %if.else26 ], [ %ledaction.1125, %_rtl92ce_stop_tx_beacon.exit.if.end29_crit_edge ], [ %ledaction.1125, %if.then.i.i.i ], [ %ledaction.1131, %_rtl92ce_resume_tx_beacon.exit.if.end29_crit_edge ], [ %ledaction.1131, %if.then.i.i.i98 ]
  %or67 = or i8 %mode.1126, %4
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %97 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %write8_async.i, align 4
  tail call void %98(ptr noundef %1, i32 noundef 258, i8 noundef zeroext %or67) #8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %99 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %write_readback.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool.not.i = icmp eq i8 %102, 0
  br i1 %tobool.not.i, label %if.end29.rtl_write_byte.exit_crit_edge, label %if.then.i

if.end29.rtl_write_byte.exit_crit_edge:           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %103 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %read8_sync.i, align 4
  %call.i100 = tail call zeroext i8 %104(ptr noundef %1, i32 noundef 258) #8
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %if.end29.rtl_write_byte.exit_crit_edge
  %105 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %cfg.i, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %106, i32 0, i32 4
  %107 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ops, align 4
  %led_control = getelementptr inbounds %struct.rtl_hal_ops, ptr %108, i32 0, i32 36
  %109 = ptrtoint ptr %led_control to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %led_control, align 4
  tail call void %110(ptr noundef %hw, i32 noundef %ledaction.1124) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %mode.1126)
  %cmp34 = icmp eq i8 %mode.1126, 3
  %111 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %write8_async.i, align 4
  br i1 %cmp34, label %if.then36, label %if.else37

if.then36:                                        ; preds = %rtl_write_byte.exit
  tail call void %112(ptr noundef %1, i32 noundef 1297, i8 noundef zeroext 0) #8
  %113 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %cfg.i, align 8
  %write_readback.i103 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %write_readback.i103 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %write_readback.i103, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool.not.i104 = icmp eq i8 %116, 0
  br i1 %tobool.not.i104, label %if.then36.cleanup_crit_edge, label %if.then.i107

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i107:                                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  %117 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %read8_sync.i, align 4
  %call.i106 = tail call zeroext i8 %118(ptr noundef %1, i32 noundef 1297) #8
  br label %cleanup

if.else37:                                        ; preds = %rtl_write_byte.exit
  tail call void %112(ptr noundef %1, i32 noundef 1297, i8 noundef zeroext 102) #8
  %119 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %cfg.i, align 8
  %write_readback.i111 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %write_readback.i111 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %write_readback.i111, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool.not.i112 = icmp eq i8 %122, 0
  br i1 %tobool.not.i112, label %if.else37.cleanup_crit_edge, label %if.then.i115

if.else37.cleanup_crit_edge:                      ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i115:                                     ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #10
  %123 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %read8_sync.i, align 4
  %call.i114 = tail call zeroext i8 %124(ptr noundef %1, i32 noundef 1297) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i115, %if.else37.cleanup_crit_edge, %if.then.i107, %if.then36.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 1, %do.end ], [ 0, %if.then36.cleanup_crit_edge ], [ 0, %if.then.i107 ], [ 0, %if.else37.cleanup_crit_edge ], [ 0, %if.then.i115 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ce_set_qos(ptr noundef %hw, i32 noundef %aci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void @rtl92c_dm_init_edca_turbo(ptr noundef %hw) #8
  %2 = zext i32 %aci to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %aci, label %land.end [
    i32 1, label %sw.bb
    i32 0, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %3 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write32_async.i, align 4
  tail call void %4(ptr noundef %1, i32 noundef 1292, i32 noundef 42063) #8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %5 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %write_readback.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %sw.bb.sw.epilog_crit_edge, label %if.then.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %9 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read32_sync.i, align 4
  %call.i = tail call i32 %10(ptr noundef %1, i32 noundef 1292) #8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %write32_async.i42 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %11 = ptrtoint ptr %write32_async.i42 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write32_async.i42, align 4
  tail call void %12(ptr noundef %1, i32 noundef 1284, i32 noundef 6177570) #8
  %cfg.i43 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %13 = ptrtoint ptr %cfg.i43 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cfg.i43, align 8
  %write_readback.i44 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %write_readback.i44 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %write_readback.i44, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i45 = icmp eq i8 %16, 0
  br i1 %tobool.not.i45, label %sw.bb1.sw.epilog_crit_edge, label %if.then.i48

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then.i48:                                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i46 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %17 = ptrtoint ptr %read32_sync.i46 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read32_sync.i46, align 4
  %call.i47 = tail call i32 %18(ptr noundef %1, i32 noundef 1284) #8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %write32_async.i50 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %19 = ptrtoint ptr %write32_async.i50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write32_async.i50, align 4
  tail call void %20(ptr noundef %1, i32 noundef 1280, i32 noundef 3093026) #8
  %cfg.i51 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %21 = ptrtoint ptr %cfg.i51 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cfg.i51, align 8
  %write_readback.i52 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %write_readback.i52 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %write_readback.i52, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i53 = icmp eq i8 %24, 0
  br i1 %tobool.not.i53, label %sw.bb2.sw.epilog_crit_edge, label %if.then.i56

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then.i56:                                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i54 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %25 = ptrtoint ptr %read32_sync.i54 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read32_sync.i54, align 4
  %call.i55 = tail call i32 %26(ptr noundef %1, i32 noundef 1280) #8
  br label %sw.epilog

land.end:                                         ; preds = %entry
  %.b41 = load i1, ptr @rtl92ce_set_qos.__already_done, align 1
  br i1 %.b41, label %land.end.sw.epilog_crit_edge, label %if.then, !prof !205

land.end.sw.epilog_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rtl92ce_set_qos.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1269, i32 noundef 9, ptr noundef nonnull @.str.22, i32 noundef %aci) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %land.end.sw.epilog_crit_edge, %if.then.i56, %sw.bb2.sw.epilog_crit_edge, %if.then.i48, %sw.bb1.sw.epilog_crit_edge, %if.then.i, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ce_enable_interrupt(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %5(ptr noundef %1, i32 noundef 288, i32 noundef %3) #8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %6 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %write_readback.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %entry.rtl_write_dword.exit_crit_edge, label %if.then.i

entry.rtl_write_dword.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %10 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read32_sync.i, align 4
  %call.i = tail call i32 %11(ptr noundef %1, i32 noundef 288) #8
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i, %entry.rtl_write_dword.exit_crit_edge
  %arrayidx4 = getelementptr %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 6
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx4, align 4
  %14 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write32_async.i, align 4
  tail call void %15(ptr noundef %1, i32 noundef 296, i32 noundef %13) #8
  %16 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cfg.i, align 8
  %write_readback.i12 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %write_readback.i12 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %write_readback.i12, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i13 = icmp eq i8 %19, 0
  br i1 %tobool.not.i13, label %rtl_write_dword.exit.rtl_write_dword.exit17_crit_edge, label %if.then.i16

rtl_write_dword.exit.rtl_write_dword.exit17_crit_edge: ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit17

if.then.i16:                                      ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i14 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %20 = ptrtoint ptr %read32_sync.i14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read32_sync.i14, align 4
  %call.i15 = tail call i32 %21(ptr noundef %1, i32 noundef 296) #8
  br label %rtl_write_dword.exit17

rtl_write_dword.exit17:                           ; preds = %if.then.i16, %rtl_write_dword.exit.rtl_write_dword.exit17_crit_edge
  %irq_enabled = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1, i32 1
  %22 = ptrtoint ptr %irq_enabled to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %irq_enabled, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ce_disable_interrupt(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %2 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write32_async.i, align 4
  tail call void %3(ptr noundef %1, i32 noundef 288, i32 noundef 0) #8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %write_readback.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %entry.rtl_write_dword.exit_crit_edge, label %if.then.i

entry.rtl_write_dword.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %8 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read32_sync.i, align 4
  %call.i = tail call i32 %9(ptr noundef %1, i32 noundef 288) #8
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i, %entry.rtl_write_dword.exit_crit_edge
  %10 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write32_async.i, align 4
  tail call void %11(ptr noundef %1, i32 noundef 296, i32 noundef 0) #8
  %12 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cfg.i, align 8
  %write_readback.i7 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %write_readback.i7 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %write_readback.i7, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i8 = icmp eq i8 %15, 0
  br i1 %tobool.not.i8, label %rtl_write_dword.exit.rtl_write_dword.exit12_crit_edge, label %if.then.i11

rtl_write_dword.exit.rtl_write_dword.exit12_crit_edge: ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit12

if.then.i11:                                      ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i9 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %16 = ptrtoint ptr %read32_sync.i9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read32_sync.i9, align 4
  %call.i10 = tail call i32 %17(ptr noundef %1, i32 noundef 296) #8
  br label %rtl_write_dword.exit12

rtl_write_dword.exit12:                           ; preds = %if.then.i11, %rtl_write_dword.exit.rtl_write_dword.exit12_crit_edge
  %irq_enabled = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1, i32 1
  %18 = ptrtoint ptr %irq_enabled to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %irq_enabled, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ce_card_disable(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %call = tail call fastcc i32 @_rtl92ce_set_media_status(ptr noundef %hw, i32 noundef 0)
  %driver_is_goingto_unload = getelementptr inbounds %struct.rtl_pci, ptr %dev, i32 0, i32 2
  %3 = ptrtoint ptr %driver_is_goingto_unload to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %driver_is_goingto_unload, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %12(ptr noundef %hw, i32 noundef 7) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %cur_ps_level = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 19
  %13 = ptrtoint ptr %cur_ps_level to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cur_ps_level, align 4
  %or = or i32 %14, 8
  store i32 %or, ptr %cur_ps_level, align 4
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv, align 8
  %intf_ops.i = getelementptr inbounds %struct.rtl_priv, ptr %16, i32 0, i32 33
  %17 = ptrtoint ptr %intf_ops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %intf_ops.i, align 4
  %enable_aspm.i = getelementptr inbounds %struct.rtl_intf_ops, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %enable_aspm.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %enable_aspm.i, align 4
  tail call void %20(ptr noundef %hw) #8
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %16, i32 0, i32 13, i32 5
  %21 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %22(ptr noundef %16, i32 noundef 1314, i8 noundef zeroext -1) #8
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %16, i32 0, i32 32
  %23 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %write_readback.i.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i.i, label %if.end.rtl_write_byte.exit.i_crit_edge, label %if.then.i.i

if.end.rtl_write_byte.exit.i_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %16, i32 0, i32 13, i32 9
  %27 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = tail call zeroext i8 %28(ptr noundef %16, i32 noundef 1314) #8
  br label %rtl_write_byte.exit.i

rtl_write_byte.exit.i:                            ; preds = %if.then.i.i, %if.end.rtl_write_byte.exit.i_crit_edge
  %29 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %priv, align 8
  %cfg.i71.i = getelementptr inbounds %struct.rtl_priv, ptr %30, i32 0, i32 32
  %31 = ptrtoint ptr %cfg.i71.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cfg.i71.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.i.i, align 4
  %set_rfreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %34, i32 0, i32 48
  %35 = ptrtoint ptr %set_rfreg.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %set_rfreg.i.i, align 4
  tail call void %36(ptr noundef %hw, i32 noundef 0, i32 noundef 0, i32 noundef 1048575, i32 noundef 0) #8
  %37 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %38(ptr noundef %16, i32 noundef 31, i8 noundef zeroext 0) #8
  %39 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i74.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %write_readback.i74.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %write_readback.i74.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i75.i = icmp eq i8 %42, 0
  br i1 %tobool.not.i75.i, label %rtl_write_byte.exit.i.rtl_write_byte.exit79.i_crit_edge, label %if.then.i78.i

rtl_write_byte.exit.i.rtl_write_byte.exit79.i_crit_edge: ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit79.i

if.then.i78.i:                                    ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i76.i = getelementptr inbounds %struct.rtl_priv, ptr %16, i32 0, i32 13, i32 9
  %43 = ptrtoint ptr %read8_sync.i76.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %read8_sync.i76.i, align 4
  %call.i77.i = tail call zeroext i8 %44(ptr noundef %16, i32 noundef 31) #8
  br label %rtl_write_byte.exit79.i

rtl_write_byte.exit79.i:                          ; preds = %if.then.i78.i, %rtl_write_byte.exit.i.rtl_write_byte.exit79.i_crit_edge
  %45 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %46(ptr noundef %16, i32 noundef 1536, i8 noundef zeroext 64) #8
  %47 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i82.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %write_readback.i82.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %write_readback.i82.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i83.i = icmp eq i8 %50, 0
  br i1 %tobool.not.i83.i, label %rtl_write_byte.exit79.i.rtl_write_byte.exit87.i_crit_edge, label %if.then.i86.i

rtl_write_byte.exit79.i.rtl_write_byte.exit87.i_crit_edge: ; preds = %rtl_write_byte.exit79.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit87.i

if.then.i86.i:                                    ; preds = %rtl_write_byte.exit79.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i84.i = getelementptr inbounds %struct.rtl_priv, ptr %16, i32 0, i32 13, i32 9
  %51 = ptrtoint ptr %read8_sync.i84.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %read8_sync.i84.i, align 4
  %call.i85.i = tail call zeroext i8 %52(ptr noundef %16, i32 noundef 1536) #8
  br label %rtl_write_byte.exit87.i

rtl_write_byte.exit87.i:                          ; preds = %if.then.i86.i, %rtl_write_byte.exit79.i.rtl_write_byte.exit87.i_crit_edge
  %53 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %54(ptr noundef %16, i32 noundef 2, i8 noundef zeroext -30) #8
  %55 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i90.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %write_readback.i90.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %write_readback.i90.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i91.i = icmp eq i8 %58, 0
  br i1 %tobool.not.i91.i, label %rtl_write_byte.exit87.i.rtl_write_byte.exit95.i_crit_edge, label %if.then.i94.i

rtl_write_byte.exit87.i.rtl_write_byte.exit95.i_crit_edge: ; preds = %rtl_write_byte.exit87.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit95.i

if.then.i94.i:                                    ; preds = %rtl_write_byte.exit87.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i92.i = getelementptr inbounds %struct.rtl_priv, ptr %16, i32 0, i32 13, i32 9
  %59 = ptrtoint ptr %read8_sync.i92.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %read8_sync.i92.i, align 4
  %call.i93.i = tail call zeroext i8 %60(ptr noundef %16, i32 noundef 2) #8
  br label %rtl_write_byte.exit95.i

rtl_write_byte.exit95.i:                          ; preds = %if.then.i94.i, %rtl_write_byte.exit87.i.rtl_write_byte.exit95.i_crit_edge
  %61 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %62(ptr noundef %16, i32 noundef 2, i8 noundef zeroext -32) #8
  %63 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i98.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %write_readback.i98.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %write_readback.i98.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.not.i99.i = icmp eq i8 %66, 0
  br i1 %tobool.not.i99.i, label %rtl_write_byte.exit95.i.rtl_write_byte.exit103.i_crit_edge, label %if.then.i102.i

rtl_write_byte.exit95.i.rtl_write_byte.exit103.i_crit_edge: ; preds = %rtl_write_byte.exit95.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit103.i

if.then.i102.i:                                   ; preds = %rtl_write_byte.exit95.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i100.i = getelementptr inbounds %struct.rtl_priv, ptr %16, i32 0, i32 13, i32 9
  %67 = ptrtoint ptr %read8_sync.i100.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %read8_sync.i100.i, align 4
  %call.i101.i = tail call zeroext i8 %68(ptr noundef %16, i32 noundef 2) #8
  br label %rtl_write_byte.exit103.i

rtl_write_byte.exit103.i:                         ; preds = %if.then.i102.i, %rtl_write_byte.exit95.i.rtl_write_byte.exit103.i_crit_edge
  %read8_sync.i104.i = getelementptr inbounds %struct.rtl_priv, ptr %16, i32 0, i32 13, i32 9
  %69 = ptrtoint ptr %read8_sync.i104.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %read8_sync.i104.i, align 4
  %call.i105.i = tail call zeroext i8 %70(ptr noundef %16, i32 noundef 128) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i105.i)
  %tobool.not.i = icmp sgt i8 %call.i105.i, -1
  br i1 %tobool.not.i, label %rtl_write_byte.exit103.i.if.end.i_crit_edge, label %if.then.i

rtl_write_byte.exit103.i.if.end.i_crit_edge:      ; preds = %rtl_write_byte.exit103.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %rtl_write_byte.exit103.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rtl92c_firmware_selfreset(ptr noundef %hw) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %rtl_write_byte.exit103.i.if.end.i_crit_edge
  %71 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %72(ptr noundef %16, i32 noundef 3, i8 noundef zeroext 81) #8
  %73 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i108.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %write_readback.i108.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %write_readback.i108.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool.not.i109.i = icmp eq i8 %76, 0
  br i1 %tobool.not.i109.i, label %if.end.i.rtl_write_byte.exit113.i_crit_edge, label %if.then.i112.i

if.end.i.rtl_write_byte.exit113.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit113.i

if.then.i112.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %read8_sync.i104.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %read8_sync.i104.i, align 4
  %call.i111.i = tail call zeroext i8 %78(ptr noundef %16, i32 noundef 3) #8
  br label %rtl_write_byte.exit113.i

rtl_write_byte.exit113.i:                         ; preds = %if.then.i112.i, %if.end.i.rtl_write_byte.exit113.i_crit_edge
  %79 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %80(ptr noundef %16, i32 noundef 128, i8 noundef zeroext 0) #8
  %81 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i116.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %write_readback.i116.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %write_readback.i116.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool.not.i117.i = icmp eq i8 %84, 0
  br i1 %tobool.not.i117.i, label %rtl_write_byte.exit113.i.rtl_write_byte.exit121.i_crit_edge, label %if.then.i120.i

rtl_write_byte.exit113.i.rtl_write_byte.exit121.i_crit_edge: ; preds = %rtl_write_byte.exit113.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit121.i

if.then.i120.i:                                   ; preds = %rtl_write_byte.exit113.i
  call void @__sanitizer_cov_trace_pc() #10
  %85 = ptrtoint ptr %read8_sync.i104.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %read8_sync.i104.i, align 4
  %call.i119.i = tail call zeroext i8 %86(ptr noundef %16, i32 noundef 128) #8
  br label %rtl_write_byte.exit121.i

rtl_write_byte.exit121.i:                         ; preds = %if.then.i120.i, %rtl_write_byte.exit113.i.rtl_write_byte.exit121.i_crit_edge
  %write32_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %16, i32 0, i32 13, i32 7
  %87 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %88(ptr noundef %16, i32 noundef 68, i32 noundef 0) #8
  %89 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i123.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %write_readback.i123.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %write_readback.i123.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool.not.i124.i = icmp eq i8 %92, 0
  br i1 %tobool.not.i124.i, label %rtl_write_byte.exit121.i.rtl_write_dword.exit.i_crit_edge, label %if.then.i126.i

rtl_write_byte.exit121.i.rtl_write_dword.exit.i_crit_edge: ; preds = %rtl_write_byte.exit121.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit.i

if.then.i126.i:                                   ; preds = %rtl_write_byte.exit121.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %16, i32 0, i32 13, i32 11
  %93 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i125.i = tail call i32 %94(ptr noundef %16, i32 noundef 68) #8
  br label %rtl_write_dword.exit.i

rtl_write_dword.exit.i:                           ; preds = %if.then.i126.i, %rtl_write_byte.exit121.i.rtl_write_dword.exit.i_crit_edge
  %95 = ptrtoint ptr %read8_sync.i104.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %read8_sync.i104.i, align 4
  %call.i128.i = tail call zeroext i8 %96(ptr noundef %16, i32 noundef 68) #8
  %bt_coexistence.i = getelementptr inbounds %struct.rtl_priv, ptr %16, i32 0, i32 49, i32 9
  %97 = ptrtoint ptr %bt_coexistence.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %bt_coexistence.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool4.not.i = icmp eq i8 %98, 0
  br i1 %tobool4.not.i, label %rtl_write_dword.exit.i.if.else.i_crit_edge, label %land.lhs.true.i

rtl_write_dword.exit.i.if.else.i_crit_edge:       ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %rtl_write_dword.exit.i
  %bt_coexist_type.i = getelementptr inbounds %struct.rtl_priv, ptr %16, i32 0, i32 49, i32 11
  %99 = ptrtoint ptr %bt_coexist_type.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %bt_coexist_type.i, align 1
  %.off.i = add i8 %100, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 2
  br i1 %switch.i, label %if.then13.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then13.i:                                      ; preds = %land.lhs.true.i
  %conv14.i = zext i8 %call.i128.i to i32
  %shl.i = shl nuw nsw i32 %conv14.i, 8
  %or.i = or i32 %shl.i, 15925248
  %101 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %102(ptr noundef %16, i32 noundef 68, i32 noundef %or.i) #8
  %103 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i131.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %write_readback.i131.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %write_readback.i131.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool.not.i132.i = icmp eq i8 %106, 0
  br i1 %tobool.not.i132.i, label %if.then13.i.if.end18.i_crit_edge, label %if.then13.i.if.end18.sink.split.i_crit_edge

if.then13.i.if.end18.sink.split.i_crit_edge:      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.sink.split.i

if.then13.i.if.end18.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %rtl_write_dword.exit.i.if.else.i_crit_edge
  %conv15.i = zext i8 %call.i128.i to i32
  %shl16.i = shl nuw nsw i32 %conv15.i, 8
  %or17.i = or i32 %shl16.i, 16711680
  %107 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %108(ptr noundef %16, i32 noundef 68, i32 noundef %or17.i) #8
  %109 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i139.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %write_readback.i139.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %write_readback.i139.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool.not.i140.i = icmp eq i8 %112, 0
  br i1 %tobool.not.i140.i, label %if.else.i.if.end18.i_crit_edge, label %if.else.i.if.end18.sink.split.i_crit_edge

if.else.i.if.end18.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.sink.split.i

if.else.i.if.end18.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i

if.end18.sink.split.i:                            ; preds = %if.else.i.if.end18.sink.split.i_crit_edge, %if.then13.i.if.end18.sink.split.i_crit_edge
  %read32_sync.i141.i = getelementptr inbounds %struct.rtl_priv, ptr %16, i32 0, i32 13, i32 11
  %113 = ptrtoint ptr %read32_sync.i141.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %read32_sync.i141.i, align 4
  %call.i142.i = tail call i32 %114(ptr noundef %16, i32 noundef 68) #8
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.end18.sink.split.i, %if.else.i.if.end18.i_crit_edge, %if.then13.i.if.end18.i_crit_edge
  %write16_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %16, i32 0, i32 13, i32 6
  %115 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %116(ptr noundef %16, i32 noundef 66, i16 noundef zeroext 1936) #8
  %117 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i146.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %write_readback.i146.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %write_readback.i146.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool.not.i147.i = icmp eq i8 %120, 0
  br i1 %tobool.not.i147.i, label %if.end18.i.rtl_write_word.exit.i_crit_edge, label %if.then.i149.i

if.end18.i.rtl_write_word.exit.i_crit_edge:       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit.i

if.then.i149.i:                                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %16, i32 0, i32 13, i32 10
  %121 = ptrtoint ptr %read16_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %read16_sync.i.i, align 4
  %call.i148.i = tail call zeroext i16 %122(ptr noundef %16, i32 noundef 66) #8
  br label %rtl_write_word.exit.i

rtl_write_word.exit.i:                            ; preds = %if.then.i149.i, %if.end18.i.rtl_write_word.exit.i_crit_edge
  %123 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %124(ptr noundef %16, i32 noundef 76, i16 noundef zeroext -32640) #8
  %125 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i152.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %126, i32 0, i32 1
  %127 = ptrtoint ptr %write_readback.i152.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %write_readback.i152.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool.not.i153.i = icmp eq i8 %128, 0
  br i1 %tobool.not.i153.i, label %rtl_write_word.exit.i.rtl_write_word.exit157.i_crit_edge, label %if.then.i156.i

rtl_write_word.exit.i.rtl_write_word.exit157.i_crit_edge: ; preds = %rtl_write_word.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit157.i

if.then.i156.i:                                   ; preds = %rtl_write_word.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i154.i = getelementptr inbounds %struct.rtl_priv, ptr %16, i32 0, i32 13, i32 10
  %129 = ptrtoint ptr %read16_sync.i154.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %read16_sync.i154.i, align 4
  %call.i155.i = tail call zeroext i16 %130(ptr noundef %16, i32 noundef 76) #8
  br label %rtl_write_word.exit157.i

rtl_write_word.exit157.i:                         ; preds = %if.then.i156.i, %rtl_write_word.exit.i.rtl_write_word.exit157.i_crit_edge
  %131 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %132(ptr noundef %16, i32 noundef 40, i8 noundef zeroext -128) #8
  %133 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i160.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %134, i32 0, i32 1
  %135 = ptrtoint ptr %write_readback.i160.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %write_readback.i160.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool.not.i161.i = icmp eq i8 %136, 0
  br i1 %tobool.not.i161.i, label %rtl_write_word.exit157.i.rtl_write_byte.exit165.i_crit_edge, label %if.then.i164.i

rtl_write_word.exit157.i.rtl_write_byte.exit165.i_crit_edge: ; preds = %rtl_write_word.exit157.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit165.i

if.then.i164.i:                                   ; preds = %rtl_write_word.exit157.i
  call void @__sanitizer_cov_trace_pc() #10
  %137 = ptrtoint ptr %read8_sync.i104.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %read8_sync.i104.i, align 4
  %call.i163.i = tail call zeroext i8 %138(ptr noundef %16, i32 noundef 40) #8
  br label %rtl_write_byte.exit165.i

rtl_write_byte.exit165.i:                         ; preds = %if.then.i164.i, %rtl_write_word.exit157.i.rtl_write_byte.exit165.i_crit_edge
  %version.i = getelementptr inbounds %struct.rtl_priv, ptr %16, i32 0, i32 10, i32 13
  %139 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %version.i, align 4
  %141 = and i32 %140, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %141)
  %142 = icmp eq i32 %141, 96
  br i1 %142, label %rtl_write_byte.exit165.i.if.end30.i_crit_edge, label %if.then29.i

rtl_write_byte.exit165.i.if.end30.i_crit_edge:    ; preds = %rtl_write_byte.exit165.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.i

if.then29.i:                                      ; preds = %rtl_write_byte.exit165.i
  %143 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %144(ptr noundef %16, i32 noundef 17, i8 noundef zeroext 35) #8
  %145 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i168.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %146, i32 0, i32 1
  %147 = ptrtoint ptr %write_readback.i168.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %write_readback.i168.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool.not.i169.i = icmp eq i8 %148, 0
  br i1 %tobool.not.i169.i, label %if.then29.i.if.end30.i_crit_edge, label %if.then.i172.i

if.then29.i.if.end30.i_crit_edge:                 ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.i

if.then.i172.i:                                   ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #10
  %149 = ptrtoint ptr %read8_sync.i104.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %read8_sync.i104.i, align 4
  %call.i171.i = tail call zeroext i8 %150(ptr noundef %16, i32 noundef 17) #8
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then.i172.i, %if.then29.i.if.end30.i_crit_edge, %rtl_write_byte.exit165.i.if.end30.i_crit_edge
  %151 = ptrtoint ptr %bt_coexistence.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %bt_coexistence.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %tobool33.not.i = icmp eq i8 %152, 0
  br i1 %tobool33.not.i, label %if.else37.i, label %if.then34.i

if.then34.i:                                      ; preds = %if.end30.i
  %read32_sync.i174.i = getelementptr inbounds %struct.rtl_priv, ptr %16, i32 0, i32 13, i32 11
  %153 = ptrtoint ptr %read32_sync.i174.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %read32_sync.i174.i, align 4
  %call.i175.i = tail call i32 %154(ptr noundef %16, i32 noundef 36) #8
  %or36.i = or i32 %call.i175.i, 58869760
  %155 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %156(ptr noundef %16, i32 noundef 36, i32 noundef %or36.i) #8
  %157 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i178.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %158, i32 0, i32 1
  %159 = ptrtoint ptr %write_readback.i178.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %write_readback.i178.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool.not.i179.i = icmp eq i8 %160, 0
  br i1 %tobool.not.i179.i, label %if.then34.i.if.end38.i_crit_edge, label %if.then34.i.if.end38.sink.split.i_crit_edge

if.then34.i.if.end38.sink.split.i_crit_edge:      ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.sink.split.i

if.then34.i.if.end38.i_crit_edge:                 ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.i

if.else37.i:                                      ; preds = %if.end30.i
  %161 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %162(ptr noundef %16, i32 noundef 36, i32 noundef 14) #8
  %163 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i186.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %164, i32 0, i32 1
  %165 = ptrtoint ptr %write_readback.i186.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %write_readback.i186.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %166)
  %tobool.not.i187.i = icmp eq i8 %166, 0
  br i1 %tobool.not.i187.i, label %if.else37.i.if.end38.i_crit_edge, label %if.then.i190.i

if.else37.i.if.end38.i_crit_edge:                 ; preds = %if.else37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.i

if.then.i190.i:                                   ; preds = %if.else37.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i188.i = getelementptr inbounds %struct.rtl_priv, ptr %16, i32 0, i32 13, i32 11
  br label %if.end38.sink.split.i

if.end38.sink.split.i:                            ; preds = %if.then.i190.i, %if.then34.i.if.end38.sink.split.i_crit_edge
  %read32_sync.i188.sink.i = phi ptr [ %read32_sync.i188.i, %if.then.i190.i ], [ %read32_sync.i174.i, %if.then34.i.if.end38.sink.split.i_crit_edge ]
  %167 = ptrtoint ptr %read32_sync.i188.sink.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %read32_sync.i188.sink.i, align 4
  %call.i189.i = tail call i32 %168(ptr noundef %16, i32 noundef 36) #8
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.end38.sink.split.i, %if.else37.i.if.end38.i_crit_edge, %if.then34.i.if.end38.i_crit_edge
  %169 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %170(ptr noundef %16, i32 noundef 28, i8 noundef zeroext 14) #8
  %171 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i194.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %172, i32 0, i32 1
  %173 = ptrtoint ptr %write_readback.i194.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %write_readback.i194.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %174)
  %tobool.not.i195.i = icmp eq i8 %174, 0
  br i1 %tobool.not.i195.i, label %if.end38.i.rtl_write_byte.exit199.i_crit_edge, label %if.then.i198.i

if.end38.i.rtl_write_byte.exit199.i_crit_edge:    ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit199.i

if.then.i198.i:                                   ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  %175 = ptrtoint ptr %read8_sync.i104.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %read8_sync.i104.i, align 4
  %call.i197.i = tail call zeroext i8 %176(ptr noundef %16, i32 noundef 28) #8
  br label %rtl_write_byte.exit199.i

rtl_write_byte.exit199.i:                         ; preds = %if.then.i198.i, %if.end38.i.rtl_write_byte.exit199.i_crit_edge
  %177 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %178(ptr noundef %16, i32 noundef 5, i8 noundef zeroext 16) #8
  %179 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i202.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %180, i32 0, i32 1
  %181 = ptrtoint ptr %write_readback.i202.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %write_readback.i202.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %182)
  %tobool.not.i203.i = icmp eq i8 %182, 0
  br i1 %tobool.not.i203.i, label %rtl_write_byte.exit199.i._rtl92ce_poweroff_adapter.exit_crit_edge, label %if.then.i206.i

rtl_write_byte.exit199.i._rtl92ce_poweroff_adapter.exit_crit_edge: ; preds = %rtl_write_byte.exit199.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ce_poweroff_adapter.exit

if.then.i206.i:                                   ; preds = %rtl_write_byte.exit199.i
  call void @__sanitizer_cov_trace_pc() #10
  %183 = ptrtoint ptr %read8_sync.i104.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %read8_sync.i104.i, align 4
  %call.i205.i = tail call zeroext i8 %184(ptr noundef %16, i32 noundef 5) #8
  br label %_rtl92ce_poweroff_adapter.exit

_rtl92ce_poweroff_adapter.exit:                   ; preds = %if.then.i206.i, %rtl_write_byte.exit199.i._rtl92ce_poweroff_adapter.exit_crit_edge
  %iqk_initialized = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 31
  %185 = ptrtoint ptr %iqk_initialized to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 0, ptr %iqk_initialized, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ce_interrupt_recognized(ptr nocapture noundef readonly %hw, ptr nocapture noundef writeonly %intvec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %2 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read32_sync.i, align 4
  %call.i = tail call i32 %3(ptr noundef %1, i32 noundef 292) #8
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
  tail call void %8(ptr noundef %1, i32 noundef 292, i32 noundef %and) #8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %9 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %write_readback.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %entry.rtl_write_dword.exit_crit_edge, label %if.then.i

entry.rtl_write_dword.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read32_sync.i, align 4
  %call.i8 = tail call i32 %14(ptr noundef %1, i32 noundef 292) #8
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i, %entry.rtl_write_dword.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ce_set_beacon_related_registers(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %5(ptr noundef %1, i32 noundef 288, i32 noundef 0) #8
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %6 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %write_readback.i.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i.i, label %entry.rtl_write_dword.exit.i_crit_edge, label %if.then.i.i

entry.rtl_write_dword.exit.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %10 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i.i = tail call i32 %11(ptr noundef %1, i32 noundef 288) #8
  br label %rtl_write_dword.exit.i

rtl_write_dword.exit.i:                           ; preds = %if.then.i.i, %entry.rtl_write_dword.exit.i_crit_edge
  %12 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %13(ptr noundef %1, i32 noundef 296, i32 noundef 0) #8
  %14 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i7.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %write_readback.i7.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %write_readback.i7.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i8.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i8.i, label %rtl_write_dword.exit.i.rtl92ce_disable_interrupt.exit_crit_edge, label %if.then.i11.i

rtl_write_dword.exit.i.rtl92ce_disable_interrupt.exit_crit_edge: ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl92ce_disable_interrupt.exit

if.then.i11.i:                                    ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i9.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %18 = ptrtoint ptr %read32_sync.i9.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read32_sync.i9.i, align 4
  %call.i10.i = tail call i32 %19(ptr noundef %1, i32 noundef 296) #8
  br label %rtl92ce_disable_interrupt.exit

rtl92ce_disable_interrupt.exit:                   ; preds = %if.then.i11.i, %rtl_write_dword.exit.i.rtl92ce_disable_interrupt.exit_crit_edge
  %irq_enabled.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1, i32 1
  %20 = ptrtoint ptr %irq_enabled.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %irq_enabled.i, align 4
  %write16_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %21 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write16_async.i, align 4
  tail call void %22(ptr noundef %1, i32 noundef 1370, i16 noundef zeroext 2) #8
  %23 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %write_readback.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i, label %rtl92ce_disable_interrupt.exit.rtl_write_word.exit_crit_edge, label %if.then.i

rtl92ce_disable_interrupt.exit.rtl_write_word.exit_crit_edge: ; preds = %rtl92ce_disable_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit

if.then.i:                                        ; preds = %rtl92ce_disable_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %27 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read16_sync.i, align 4
  %call.i = tail call zeroext i16 %28(ptr noundef %1, i32 noundef 1370) #8
  br label %rtl_write_word.exit

rtl_write_word.exit:                              ; preds = %if.then.i, %rtl92ce_disable_interrupt.exit.rtl_write_word.exit_crit_edge
  %29 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write16_async.i, align 4
  tail call void %30(ptr noundef %1, i32 noundef 1364, i16 noundef zeroext %conv) #8
  %31 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i12 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %write_readback.i12 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %write_readback.i12, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i13 = icmp eq i8 %34, 0
  br i1 %tobool.not.i13, label %rtl_write_word.exit.rtl_write_word.exit17_crit_edge, label %if.then.i16

rtl_write_word.exit.rtl_write_word.exit17_crit_edge: ; preds = %rtl_write_word.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit17

if.then.i16:                                      ; preds = %rtl_write_word.exit
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i14 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %35 = ptrtoint ptr %read16_sync.i14 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read16_sync.i14, align 4
  %call.i15 = tail call zeroext i16 %36(ptr noundef %1, i32 noundef 1364) #8
  br label %rtl_write_word.exit17

rtl_write_word.exit17:                            ; preds = %if.then.i16, %rtl_write_word.exit.rtl_write_word.exit17_crit_edge
  %37 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write16_async.i, align 4
  tail call void %38(ptr noundef %1, i32 noundef 1296, i16 noundef zeroext 26127) #8
  %39 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i20 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %write_readback.i20 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %write_readback.i20, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i21 = icmp eq i8 %42, 0
  br i1 %tobool.not.i21, label %rtl_write_word.exit17.rtl_write_word.exit25_crit_edge, label %if.then.i24

rtl_write_word.exit17.rtl_write_word.exit25_crit_edge: ; preds = %rtl_write_word.exit17
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit25

if.then.i24:                                      ; preds = %rtl_write_word.exit17
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i22 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %43 = ptrtoint ptr %read16_sync.i22 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %read16_sync.i22, align 4
  %call.i23 = tail call zeroext i16 %44(ptr noundef %1, i32 noundef 1296) #8
  br label %rtl_write_word.exit25

rtl_write_word.exit25:                            ; preds = %if.then.i24, %rtl_write_word.exit17.rtl_write_word.exit25_crit_edge
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %45 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write8_async.i, align 4
  tail call void %46(ptr noundef %1, i32 noundef 1374, i8 noundef zeroext 24) #8
  %47 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i27 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %write_readback.i27 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %write_readback.i27, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i28 = icmp eq i8 %50, 0
  br i1 %tobool.not.i28, label %rtl_write_word.exit25.rtl_write_byte.exit_crit_edge, label %if.then.i30

rtl_write_word.exit25.rtl_write_byte.exit_crit_edge: ; preds = %rtl_write_word.exit25
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit

if.then.i30:                                      ; preds = %rtl_write_word.exit25
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %51 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %read8_sync.i, align 4
  %call.i29 = tail call zeroext i8 %52(ptr noundef %1, i32 noundef 1374) #8
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i30, %rtl_write_word.exit25.rtl_write_byte.exit_crit_edge
  %53 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write8_async.i, align 4
  tail call void %54(ptr noundef %1, i32 noundef 1375, i8 noundef zeroext 24) #8
  %55 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i33 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %write_readback.i33 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %write_readback.i33, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i34 = icmp eq i8 %58, 0
  br i1 %tobool.not.i34, label %rtl_write_byte.exit.rtl_write_byte.exit38_crit_edge, label %if.then.i37

rtl_write_byte.exit.rtl_write_byte.exit38_crit_edge: ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit38

if.then.i37:                                      ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i35 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %59 = ptrtoint ptr %read8_sync.i35 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %read8_sync.i35, align 4
  %call.i36 = tail call zeroext i8 %60(ptr noundef %1, i32 noundef 1375) #8
  br label %rtl_write_byte.exit38

rtl_write_byte.exit38:                            ; preds = %if.then.i37, %rtl_write_byte.exit.rtl_write_byte.exit38_crit_edge
  %61 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write8_async.i, align 4
  tail call void %62(ptr noundef %1, i32 noundef 1542, i8 noundef zeroext 48) #8
  %63 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i41 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %write_readback.i41 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %write_readback.i41, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.not.i42 = icmp eq i8 %66, 0
  br i1 %tobool.not.i42, label %rtl_write_byte.exit38.rtl_write_byte.exit46_crit_edge, label %if.then.i45

rtl_write_byte.exit38.rtl_write_byte.exit46_crit_edge: ; preds = %rtl_write_byte.exit38
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit46

if.then.i45:                                      ; preds = %rtl_write_byte.exit38
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i43 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %67 = ptrtoint ptr %read8_sync.i43 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %read8_sync.i43, align 4
  %call.i44 = tail call zeroext i8 %68(ptr noundef %1, i32 noundef 1542) #8
  br label %rtl_write_byte.exit46

rtl_write_byte.exit46:                            ; preds = %if.then.i45, %rtl_write_byte.exit38.rtl_write_byte.exit46_crit_edge
  %69 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %priv, align 8
  %irq_mask.i = getelementptr inbounds %struct.rtl_priv, ptr %70, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 5
  %71 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %irq_mask.i, align 4
  %write32_async.i.i48 = getelementptr inbounds %struct.rtl_priv, ptr %70, i32 0, i32 13, i32 7
  %73 = ptrtoint ptr %write32_async.i.i48 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %write32_async.i.i48, align 4
  tail call void %74(ptr noundef %70, i32 noundef 288, i32 noundef %72) #8
  %cfg.i.i49 = getelementptr inbounds %struct.rtl_priv, ptr %70, i32 0, i32 32
  %75 = ptrtoint ptr %cfg.i.i49 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cfg.i.i49, align 8
  %write_readback.i.i50 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %write_readback.i.i50 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %write_readback.i.i50, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool.not.i.i51 = icmp eq i8 %78, 0
  br i1 %tobool.not.i.i51, label %rtl_write_byte.exit46.rtl_write_dword.exit.i55_crit_edge, label %if.then.i.i54

rtl_write_byte.exit46.rtl_write_dword.exit.i55_crit_edge: ; preds = %rtl_write_byte.exit46
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit.i55

if.then.i.i54:                                    ; preds = %rtl_write_byte.exit46
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i.i52 = getelementptr inbounds %struct.rtl_priv, ptr %70, i32 0, i32 13, i32 11
  %79 = ptrtoint ptr %read32_sync.i.i52 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %read32_sync.i.i52, align 4
  %call.i.i53 = tail call i32 %80(ptr noundef %70, i32 noundef 288) #8
  br label %rtl_write_dword.exit.i55

rtl_write_dword.exit.i55:                         ; preds = %if.then.i.i54, %rtl_write_byte.exit46.rtl_write_dword.exit.i55_crit_edge
  %arrayidx4.i = getelementptr %struct.rtl_priv, ptr %70, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 6
  %81 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx4.i, align 4
  %83 = ptrtoint ptr %write32_async.i.i48 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %write32_async.i.i48, align 4
  tail call void %84(ptr noundef %70, i32 noundef 296, i32 noundef %82) #8
  %85 = ptrtoint ptr %cfg.i.i49 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %cfg.i.i49, align 8
  %write_readback.i12.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %write_readback.i12.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %write_readback.i12.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool.not.i13.i = icmp eq i8 %88, 0
  br i1 %tobool.not.i13.i, label %rtl_write_dword.exit.i55.rtl92ce_enable_interrupt.exit_crit_edge, label %if.then.i16.i

rtl_write_dword.exit.i55.rtl92ce_enable_interrupt.exit_crit_edge: ; preds = %rtl_write_dword.exit.i55
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl92ce_enable_interrupt.exit

if.then.i16.i:                                    ; preds = %rtl_write_dword.exit.i55
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i14.i = getelementptr inbounds %struct.rtl_priv, ptr %70, i32 0, i32 13, i32 11
  %89 = ptrtoint ptr %read32_sync.i14.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %read32_sync.i14.i, align 4
  %call.i15.i = tail call i32 %90(ptr noundef %70, i32 noundef 296) #8
  br label %rtl92ce_enable_interrupt.exit

rtl92ce_enable_interrupt.exit:                    ; preds = %if.then.i16.i, %rtl_write_dword.exit.i55.rtl92ce_enable_interrupt.exit_crit_edge
  %irq_enabled.i56 = getelementptr inbounds %struct.rtl_priv, ptr %70, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1, i32 1
  %91 = ptrtoint ptr %irq_enabled.i56 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %irq_enabled.i56, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ce_set_beacon_interval(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1024, i32 noundef 3, ptr noundef nonnull @.str.23, i32 noundef %conv2) #8
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %write32_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 13, i32 7
  %6 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %7(ptr noundef %5, i32 noundef 288, i32 noundef 0) #8
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 32
  %8 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %write_readback.i.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i.i, label %entry.rtl_write_dword.exit.i_crit_edge, label %if.then.i.i

entry.rtl_write_dword.exit.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 13, i32 11
  %12 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i.i = tail call i32 %13(ptr noundef %5, i32 noundef 288) #8
  br label %rtl_write_dword.exit.i

rtl_write_dword.exit.i:                           ; preds = %if.then.i.i, %entry.rtl_write_dword.exit.i_crit_edge
  %14 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %15(ptr noundef %5, i32 noundef 296, i32 noundef 0) #8
  %16 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i7.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %write_readback.i7.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %write_readback.i7.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i8.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i8.i, label %rtl_write_dword.exit.i.rtl92ce_disable_interrupt.exit_crit_edge, label %if.then.i11.i

rtl_write_dword.exit.i.rtl92ce_disable_interrupt.exit_crit_edge: ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl92ce_disable_interrupt.exit

if.then.i11.i:                                    ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i9.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 13, i32 11
  %20 = ptrtoint ptr %read32_sync.i9.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read32_sync.i9.i, align 4
  %call.i10.i = tail call i32 %21(ptr noundef %5, i32 noundef 296) #8
  br label %rtl92ce_disable_interrupt.exit

rtl92ce_disable_interrupt.exit:                   ; preds = %if.then.i11.i, %rtl_write_dword.exit.i.rtl92ce_disable_interrupt.exit_crit_edge
  %irq_enabled.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1, i32 1
  %22 = ptrtoint ptr %irq_enabled.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %irq_enabled.i, align 4
  %write16_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %23 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write16_async.i, align 4
  tail call void %24(ptr noundef %1, i32 noundef 1364, i16 noundef zeroext %conv) #8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %25 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %write_readback.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i, label %rtl92ce_disable_interrupt.exit.rtl_write_word.exit_crit_edge, label %if.then.i

rtl92ce_disable_interrupt.exit.rtl_write_word.exit_crit_edge: ; preds = %rtl92ce_disable_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit

if.then.i:                                        ; preds = %rtl92ce_disable_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %29 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read16_sync.i, align 4
  %call.i = tail call zeroext i16 %30(ptr noundef %1, i32 noundef 1364) #8
  br label %rtl_write_word.exit

rtl_write_word.exit:                              ; preds = %if.then.i, %rtl92ce_disable_interrupt.exit.rtl_write_word.exit_crit_edge
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
  tail call void %36(ptr noundef %32, i32 noundef 288, i32 noundef %34) #8
  %cfg.i.i10 = getelementptr inbounds %struct.rtl_priv, ptr %32, i32 0, i32 32
  %37 = ptrtoint ptr %cfg.i.i10 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cfg.i.i10, align 8
  %write_readback.i.i11 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %write_readback.i.i11 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %write_readback.i.i11, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i.i12 = icmp eq i8 %40, 0
  br i1 %tobool.not.i.i12, label %rtl_write_word.exit.rtl_write_dword.exit.i16_crit_edge, label %if.then.i.i15

rtl_write_word.exit.rtl_write_dword.exit.i16_crit_edge: ; preds = %rtl_write_word.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit.i16

if.then.i.i15:                                    ; preds = %rtl_write_word.exit
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i.i13 = getelementptr inbounds %struct.rtl_priv, ptr %32, i32 0, i32 13, i32 11
  %41 = ptrtoint ptr %read32_sync.i.i13 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %read32_sync.i.i13, align 4
  %call.i.i14 = tail call i32 %42(ptr noundef %32, i32 noundef 288) #8
  br label %rtl_write_dword.exit.i16

rtl_write_dword.exit.i16:                         ; preds = %if.then.i.i15, %rtl_write_word.exit.rtl_write_dword.exit.i16_crit_edge
  %arrayidx4.i = getelementptr %struct.rtl_priv, ptr %32, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 6
  %43 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx4.i, align 4
  %45 = ptrtoint ptr %write32_async.i.i9 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write32_async.i.i9, align 4
  tail call void %46(ptr noundef %32, i32 noundef 296, i32 noundef %44) #8
  %47 = ptrtoint ptr %cfg.i.i10 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cfg.i.i10, align 8
  %write_readback.i12.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %write_readback.i12.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %write_readback.i12.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i13.i = icmp eq i8 %50, 0
  br i1 %tobool.not.i13.i, label %rtl_write_dword.exit.i16.rtl92ce_enable_interrupt.exit_crit_edge, label %if.then.i16.i

rtl_write_dword.exit.i16.rtl92ce_enable_interrupt.exit_crit_edge: ; preds = %rtl_write_dword.exit.i16
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl92ce_enable_interrupt.exit

if.then.i16.i:                                    ; preds = %rtl_write_dword.exit.i16
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i14.i = getelementptr inbounds %struct.rtl_priv, ptr %32, i32 0, i32 13, i32 11
  %51 = ptrtoint ptr %read32_sync.i14.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %read32_sync.i14.i, align 4
  %call.i15.i = tail call i32 %52(ptr noundef %32, i32 noundef 296) #8
  br label %rtl92ce_enable_interrupt.exit

rtl92ce_enable_interrupt.exit:                    ; preds = %if.then.i16.i, %rtl_write_dword.exit.i16.rtl92ce_enable_interrupt.exit_crit_edge
  %irq_enabled.i17 = getelementptr inbounds %struct.rtl_priv, ptr %32, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1, i32 1
  %53 = ptrtoint ptr %irq_enabled.i17 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %irq_enabled.i17, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ce_update_interrupt_mask(ptr nocapture noundef readonly %hw, i32 noundef %add_msr, i32 noundef %rm_msr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 128, i32 noundef 4, ptr noundef nonnull @.str.24, i32 noundef %add_msr, i32 noundef %rm_msr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add_msr)
  %tobool.not = icmp eq i32 %add_msr, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %9(ptr noundef %7, i32 noundef 288, i32 noundef 0) #8
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 32
  %10 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %write_readback.i.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i.i, label %if.end7.rtl_write_dword.exit.i_crit_edge, label %if.then.i.i

if.end7.rtl_write_dword.exit.i_crit_edge:         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit.i

if.then.i.i:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 13, i32 11
  %14 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i.i = tail call i32 %15(ptr noundef %7, i32 noundef 288) #8
  br label %rtl_write_dword.exit.i

rtl_write_dword.exit.i:                           ; preds = %if.then.i.i, %if.end7.rtl_write_dword.exit.i_crit_edge
  %16 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %17(ptr noundef %7, i32 noundef 296, i32 noundef 0) #8
  %18 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i7.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %write_readback.i7.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %write_readback.i7.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i8.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i8.i, label %rtl_write_dword.exit.i.rtl92ce_disable_interrupt.exit_crit_edge, label %if.then.i11.i

rtl_write_dword.exit.i.rtl92ce_disable_interrupt.exit_crit_edge: ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl92ce_disable_interrupt.exit

if.then.i11.i:                                    ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i9.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 13, i32 11
  %22 = ptrtoint ptr %read32_sync.i9.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read32_sync.i9.i, align 4
  %call.i10.i = tail call i32 %23(ptr noundef %7, i32 noundef 296) #8
  br label %rtl92ce_disable_interrupt.exit

rtl92ce_disable_interrupt.exit:                   ; preds = %if.then.i11.i, %rtl_write_dword.exit.i.rtl92ce_disable_interrupt.exit_crit_edge
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
  tail call void %30(ptr noundef %26, i32 noundef 288, i32 noundef %28) #8
  %cfg.i.i18 = getelementptr inbounds %struct.rtl_priv, ptr %26, i32 0, i32 32
  %31 = ptrtoint ptr %cfg.i.i18 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cfg.i.i18, align 8
  %write_readback.i.i19 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %write_readback.i.i19 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %write_readback.i.i19, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i.i20 = icmp eq i8 %34, 0
  br i1 %tobool.not.i.i20, label %rtl92ce_disable_interrupt.exit.rtl_write_dword.exit.i24_crit_edge, label %if.then.i.i23

rtl92ce_disable_interrupt.exit.rtl_write_dword.exit.i24_crit_edge: ; preds = %rtl92ce_disable_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit.i24

if.then.i.i23:                                    ; preds = %rtl92ce_disable_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i.i21 = getelementptr inbounds %struct.rtl_priv, ptr %26, i32 0, i32 13, i32 11
  %35 = ptrtoint ptr %read32_sync.i.i21 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read32_sync.i.i21, align 4
  %call.i.i22 = tail call i32 %36(ptr noundef %26, i32 noundef 288) #8
  br label %rtl_write_dword.exit.i24

rtl_write_dword.exit.i24:                         ; preds = %if.then.i.i23, %rtl92ce_disable_interrupt.exit.rtl_write_dword.exit.i24_crit_edge
  %arrayidx4.i = getelementptr %struct.rtl_priv, ptr %26, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 6
  %37 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx4.i, align 4
  %39 = ptrtoint ptr %write32_async.i.i17 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write32_async.i.i17, align 4
  tail call void %40(ptr noundef %26, i32 noundef 296, i32 noundef %38) #8
  %41 = ptrtoint ptr %cfg.i.i18 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cfg.i.i18, align 8
  %write_readback.i12.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %write_readback.i12.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %write_readback.i12.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i13.i = icmp eq i8 %44, 0
  br i1 %tobool.not.i13.i, label %rtl_write_dword.exit.i24.rtl92ce_enable_interrupt.exit_crit_edge, label %if.then.i16.i

rtl_write_dword.exit.i24.rtl92ce_enable_interrupt.exit_crit_edge: ; preds = %rtl_write_dword.exit.i24
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl92ce_enable_interrupt.exit

if.then.i16.i:                                    ; preds = %rtl_write_dword.exit.i24
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i14.i = getelementptr inbounds %struct.rtl_priv, ptr %26, i32 0, i32 13, i32 11
  %45 = ptrtoint ptr %read32_sync.i14.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %read32_sync.i14.i, align 4
  %call.i15.i = tail call i32 %46(ptr noundef %26, i32 noundef 296) #8
  br label %rtl92ce_enable_interrupt.exit

rtl92ce_enable_interrupt.exit:                    ; preds = %if.then.i16.i, %rtl_write_dword.exit.i24.rtl92ce_enable_interrupt.exit_crit_edge
  %irq_enabled.i25 = getelementptr inbounds %struct.rtl_priv, ptr %26, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1, i32 1
  %47 = ptrtoint ptr %irq_enabled.i25 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %irq_enabled.i25, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ce_read_eeprom_info(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %params.i = alloca [10 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %read32_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %2 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i.i = tail call i32 %3(ptr noundef %1, i32 noundef 240) #8
  %and.i = and i32 %call.i.i, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and3.i = lshr i32 %call.i.i, 27
  %and3.lobit.i = and i32 %and3.i, 1
  br i1 %tobool.not.i, label %if.else.i, label %entry.if.end32.i_crit_edge

entry.if.end32.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.i

if.else.i:                                        ; preds = %entry
  %and6.i = and i32 %call.i.i, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  %4 = lshr exact i32 %and6.i, 14
  %or.i = or i32 %and3.lobit.i, %4
  %or9.i = or i32 %or.i, 16
  br i1 %tobool7.not.i, label %land.lhs.true.i, label %if.else.i.if.end.i_crit_edge

if.else.i.if.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %and12.i = and i32 %call.i.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then14.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then14.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %and12.i)
  %cmp.i = icmp eq i32 %and12.i, 4096
  %or17.i = select i1 %cmp.i, i32 96, i32 160
  %or18.i = or i32 %or9.i, %or17.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then14.i, %land.lhs.true.i.if.end.i_crit_edge, %if.else.i.if.end.i_crit_edge
  %version.0.i = phi i32 [ %or9.i, %if.else.i.if.end.i_crit_edge ], [ %or18.i, %if.then14.i ], [ %or9.i, %land.lhs.true.i.if.end.i_crit_edge ]
  %and19.i = and i32 %version.0.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and19.i)
  %cmp20.i = icmp eq i32 %and19.i, 1
  br i1 %cmp20.i, label %if.then25.i, label %if.end.i.if.end32.i_crit_edge

if.end.i.if.end32.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.i

if.then25.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i81.i = tail call i32 %6(ptr noundef %1, i32 noundef 236) #8
  %7 = and i32 %call.i81.i, 12582912
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %7)
  %cmp28.i = icmp eq i32 %7, 4194304
  %cond29.i = select i1 %cmp28.i, i32 2, i32 0
  %or30.i = or i32 %cond29.i, %version.0.i
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then25.i, %if.end.i.if.end32.i_crit_edge, %entry.if.end32.i_crit_edge
  %version.1.i = phi i32 [ %or30.i, %if.then25.i ], [ %version.0.i, %if.end.i.if.end32.i_crit_edge ], [ %and3.lobit.i, %entry.if.end32.i_crit_edge ]
  %8 = zext i32 %version.1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %version.1.i, label %do.end.i [
    i32 17, label %if.end32.i.do.end.thread87.i_crit_edge
    i32 16, label %if.end32.i.do.end.thread.i_crit_edge
    i32 1, label %sw.bb34.i
    i32 0, label %sw.bb35.i
    i32 51, label %if.end32.i.do.end.thread93.i_crit_edge
    i32 49, label %sw.bb37.i
    i32 48, label %sw.bb38.i
    i32 115, label %sw.bb39.i
    i32 113, label %sw.bb40.i
    i32 112, label %sw.bb41.i
  ]

if.end32.i.do.end.thread93.i_crit_edge:           ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.thread93.i

if.end32.i.do.end.thread.i_crit_edge:             ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.thread.i

if.end32.i.do.end.thread87.i_crit_edge:           ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.thread87.i

sw.bb34.i:                                        ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.thread87.i

sw.bb35.i:                                        ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.thread.i

sw.bb37.i:                                        ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.thread87.i

sw.bb38.i:                                        ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.thread.i

sw.bb39.i:                                        ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.thread93.i

sw.bb40.i:                                        ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.thread87.i

sw.bb41.i:                                        ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.thread.i

do.end.thread.i:                                  ; preds = %sw.bb41.i, %sw.bb38.i, %sw.bb35.i, %if.end32.i.do.end.thread.i_crit_edge
  %versionid.0.ph.i = phi ptr [ @.str.59, %sw.bb35.i ], [ @.str.62, %sw.bb38.i ], [ @.str.65, %sw.bb41.i ], [ @.str.57, %if.end32.i.do.end.thread.i_crit_edge ]
  %call4283.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull %versionid.0.ph.i) #11
  br label %sw.bb44.i

do.end.thread87.i:                                ; preds = %sw.bb40.i, %sw.bb37.i, %sw.bb34.i, %if.end32.i.do.end.thread87.i_crit_edge
  %versionid.0.ph86.i = phi ptr [ @.str.56, %if.end32.i.do.end.thread87.i_crit_edge ], [ @.str.58, %sw.bb34.i ], [ @.str.61, %sw.bb37.i ], [ @.str.64, %sw.bb40.i ]
  %call4289.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull %versionid.0.ph86.i) #11
  br label %sw.bb45.i

do.end.thread93.i:                                ; preds = %sw.bb39.i, %if.end32.i.do.end.thread93.i_crit_edge
  %versionid.0.ph92.i = phi ptr [ @.str.63, %sw.bb39.i ], [ @.str.60, %if.end32.i.do.end.thread93.i_crit_edge ]
  %call4295.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull %versionid.0.ph92.i) #11
  br label %sw.bb47.i

do.end.i:                                         ; preds = %if.end32.i
  %call42.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.66) #11
  %and43.i = and i32 %version.1.i, 3
  %9 = zext i32 %and43.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %and43.i, label %sw.default49.i [
    i32 0, label %do.end.i.sw.bb44.i_crit_edge
    i32 1, label %do.end.i.sw.bb45.i_crit_edge
    i32 3, label %do.end.i.sw.bb47.i_crit_edge
  ]

do.end.i.sw.bb47.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb47.i

do.end.i.sw.bb45.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb45.i

do.end.i.sw.bb44.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb44.i

sw.bb44.i:                                        ; preds = %do.end.i.sw.bb44.i_crit_edge, %do.end.thread.i
  %rf_type.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 4
  %10 = ptrtoint ptr %rf_type.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %rf_type.i, align 1
  br label %_rtl92ce_read_chip_version.exit

sw.bb45.i:                                        ; preds = %do.end.i.sw.bb45.i_crit_edge, %do.end.thread87.i
  %rf_type46.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 4
  %11 = ptrtoint ptr %rf_type46.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 2, ptr %rf_type46.i, align 1
  br label %_rtl92ce_read_chip_version.exit

sw.bb47.i:                                        ; preds = %do.end.i.sw.bb47.i_crit_edge, %do.end.thread93.i
  %rf_type48.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 4
  %12 = ptrtoint ptr %rf_type48.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %rf_type48.i, align 1
  br label %_rtl92ce_read_chip_version.exit

sw.default49.i:                                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %rf_type50.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 4
  %13 = ptrtoint ptr %rf_type50.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %rf_type50.i, align 1
  %call55.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70) #11
  br label %_rtl92ce_read_chip_version.exit

_rtl92ce_read_chip_version.exit:                  ; preds = %sw.default49.i, %sw.bb47.i, %sw.bb45.i, %sw.bb44.i
  %rf_type57.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 4
  %14 = ptrtoint ptr %rf_type57.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %rf_type57.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %15)
  %cmp58.i = icmp eq i8 %15, 2
  %cond60.i = select i1 %cmp58.i, ptr @.str.73, ptr @.str.74
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.72, ptr noundef nonnull %cond60.i) #8
  %version = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 13
  %16 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %version.1.i, ptr %version, align 4
  %17 = ptrtoint ptr %rf_type57.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %rf_type57.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp = icmp eq i8 %18, 0
  br i1 %cmp, label %_rtl92ce_read_chip_version.exit.if.end_crit_edge, label %if.else

_rtl92ce_read_chip_version.exit.if.end_crit_edge: ; preds = %_rtl92ce_read_chip_version.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.else:                                          ; preds = %_rtl92ce_read_chip_version.exit
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx8 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 15, i32 1
  %19 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %arrayidx8, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %_rtl92ce_read_chip_version.exit.if.end_crit_edge
  %20 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 15
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %20, align 2
  %22 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %version, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.25, i32 noundef %23) #8
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %24 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %25(ptr noundef %1, i32 noundef 10) #8
  %conv14 = zext i8 %call.i to i32
  %and = and i32 %conv14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %.str.27..str.26 = select i1 %tobool.not, ptr @.str.27, ptr @.str.26
  %26 = lshr exact i32 %and, 3
  %27 = trunc i32 %26 to i16
  %28 = xor i16 %27, 2
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 3, ptr noundef nonnull %.str.27..str.26) #8
  %29 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 9
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %28, ptr %29, align 2
  %and20 = and i32 %conv14, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %do.end, label %if.then22

if.then22:                                        ; preds = %if.end
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.28) #8
  %autoload_failflag = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 7
  %31 = ptrtoint ptr %autoload_failflag to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %autoload_failflag, align 1
  %32 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %params.i) #8
  %34 = call ptr @memcpy(ptr %params.i, ptr @__const._rtl92ce_read_adapter_info.params, i32 40)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %35 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 3520, i32 noundef 128) #12
  %tobool.not.i45 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i45, label %if.then22._rtl92ce_read_adapter_info.exit_crit_edge, label %if.end.i46

if.then22._rtl92ce_read_adapter_info.exit_crit_edge: ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ce_read_adapter_info.exit

if.end.i46:                                       ; preds = %if.then22
  %call4.i = call i32 @rtl_get_hwinfo(ptr noundef %hw, ptr noundef %33, i32 noundef 128, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %params.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end.i46.exit.i_crit_edge

if.end.i46.exit.i_crit_edge:                      ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.i

if.end7.i:                                        ; preds = %if.end.i46
  %autoload_failflag.i = getelementptr inbounds %struct.rtl_priv, ptr %33, i32 0, i32 17, i32 7
  %36 = ptrtoint ptr %autoload_failflag.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %autoload_failflag.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool8.not.i = icmp eq i8 %37, 0
  %38 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %priv, align 8
  br i1 %tobool8.not.i, label %if.then43.2.i.i, label %if.end48.1.thread.i.i

if.end48.1.thread.i.i:                            ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx28.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 29, i32 0, i32 0
  %40 = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 30, i32 0, i32 0
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 34, ptr %40, align 1
  %42 = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 30, i32 0, i32 1
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 34, ptr %42, align 1
  %44 = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 30, i32 0, i32 2
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 34, ptr %44, align 1
  %46 = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 30, i32 1, i32 0
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 34, ptr %46, align 1
  %48 = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 30, i32 1, i32 1
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 34, ptr %48, align 1
  %50 = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 30, i32 1, i32 2
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 34, ptr %50, align 1
  %eprom_chnl_txpwr_ht40_2sdf916.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 31
  %52 = call ptr @memset(ptr %arrayidx28.i.i, i32 34, i32 6)
  %53 = ptrtoint ptr %eprom_chnl_txpwr_ht40_2sdf916.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %eprom_chnl_txpwr_ht40_2sdf916.i.i, align 1
  %arrayidx60921.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 31, i32 1, i32 0
  %54 = ptrtoint ptr %arrayidx60921.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %arrayidx60921.i.i, align 1
  %arrayidx53.1928.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 31, i32 0, i32 1
  %55 = ptrtoint ptr %arrayidx53.1928.i.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %arrayidx53.1928.i.i, align 1
  %arrayidx60.1929.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 31, i32 1, i32 1
  %56 = ptrtoint ptr %arrayidx60.1929.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %arrayidx60.1929.i.i, align 1
  br label %if.end48.2.i.i

if.then43.2.i.i:                                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i = getelementptr i8, ptr %call7.i.i.i, i32 90
  %57 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx.i.i, align 2
  %arrayidx13.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 29, i32 0, i32 0
  %59 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %arrayidx13.i.i, align 1
  %arrayidx19.i.i = getelementptr i8, ptr %call7.i.i.i, i32 96
  %60 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx19.i.i, align 8
  %62 = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 30, i32 0, i32 0
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %61, ptr %62, align 1
  %arrayidx.1.i.i = getelementptr i8, ptr %call7.i.i.i, i32 91
  %64 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx.1.i.i, align 1
  %arrayidx13.1.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 29, i32 0, i32 1
  %66 = ptrtoint ptr %arrayidx13.1.i.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %arrayidx13.1.i.i, align 1
  %arrayidx19.1.i.i = getelementptr i8, ptr %call7.i.i.i, i32 97
  %67 = ptrtoint ptr %arrayidx19.1.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx19.1.i.i, align 1
  %69 = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 30, i32 0, i32 1
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %68, ptr %69, align 1
  %arrayidx.2.i.i = getelementptr i8, ptr %call7.i.i.i, i32 92
  %71 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx.2.i.i, align 4
  %arrayidx13.2.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 29, i32 0, i32 2
  %73 = ptrtoint ptr %arrayidx13.2.i.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %arrayidx13.2.i.i, align 1
  %arrayidx19.2.i.i = getelementptr i8, ptr %call7.i.i.i, i32 98
  %74 = ptrtoint ptr %arrayidx19.2.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx19.2.i.i, align 2
  %76 = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 30, i32 0, i32 2
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %75, ptr %76, align 1
  %arrayidx.1851.i.i = getelementptr i8, ptr %call7.i.i.i, i32 93
  %78 = ptrtoint ptr %arrayidx.1851.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx.1851.i.i, align 1
  %arrayidx13.1852.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 29, i32 1, i32 0
  %80 = ptrtoint ptr %arrayidx13.1852.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %arrayidx13.1852.i.i, align 1
  %arrayidx19.1854.i.i = getelementptr i8, ptr %call7.i.i.i, i32 99
  %81 = ptrtoint ptr %arrayidx19.1854.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx19.1854.i.i, align 1
  %83 = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 30, i32 1, i32 0
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %82, ptr %83, align 1
  %arrayidx.1.1.i.i = getelementptr i8, ptr %call7.i.i.i, i32 94
  %85 = ptrtoint ptr %arrayidx.1.1.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx.1.1.i.i, align 2
  %arrayidx13.1.1.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 29, i32 1, i32 1
  %87 = ptrtoint ptr %arrayidx13.1.1.i.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %86, ptr %arrayidx13.1.1.i.i, align 1
  %arrayidx19.1.1.i.i = getelementptr i8, ptr %call7.i.i.i, i32 100
  %88 = ptrtoint ptr %arrayidx19.1.1.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx19.1.1.i.i, align 4
  %90 = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 30, i32 1, i32 1
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %89, ptr %90, align 1
  %arrayidx.2.1.i.i = getelementptr i8, ptr %call7.i.i.i, i32 95
  %92 = ptrtoint ptr %arrayidx.2.1.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx.2.1.i.i, align 1
  %arrayidx13.2.1.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 29, i32 1, i32 2
  %94 = ptrtoint ptr %arrayidx13.2.1.i.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %arrayidx13.2.1.i.i, align 1
  %arrayidx19.2.1.i.i = getelementptr i8, ptr %call7.i.i.i, i32 101
  %95 = ptrtoint ptr %arrayidx19.2.1.i.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx19.2.1.i.i, align 1
  %97 = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 30, i32 1, i32 2
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %96, ptr %97, align 1
  %eprom_chnl_txpwr_ht40_2sdf.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 31
  %arrayidx46.i.i = getelementptr i8, ptr %call7.i.i.i, i32 102
  %99 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx46.i.i, align 2
  %and.i.i = and i8 %100, 15
  %101 = ptrtoint ptr %eprom_chnl_txpwr_ht40_2sdf.i.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %and.i.i, ptr %eprom_chnl_txpwr_ht40_2sdf.i.i, align 1
  %102 = lshr i8 %100, 4
  %arrayidx60.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 31, i32 1, i32 0
  %103 = ptrtoint ptr %arrayidx60.i.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %102, ptr %arrayidx60.i.i, align 1
  %arrayidx46.1.i.i = getelementptr i8, ptr %call7.i.i.i, i32 103
  %104 = ptrtoint ptr %arrayidx46.1.i.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx46.1.i.i, align 1
  %and.1.i.i = and i8 %105, 15
  %arrayidx53.1.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 31, i32 0, i32 1
  %106 = ptrtoint ptr %arrayidx53.1.i.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %and.1.i.i, ptr %arrayidx53.1.i.i, align 1
  %107 = lshr i8 %105, 4
  %arrayidx60.1.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 31, i32 1, i32 1
  %108 = ptrtoint ptr %arrayidx60.1.i.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %107, ptr %arrayidx60.1.i.i, align 1
  %arrayidx46.2.i.i = getelementptr i8, ptr %call7.i.i.i, i32 104
  %109 = ptrtoint ptr %arrayidx46.2.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx46.2.i.i, align 8
  br label %if.end48.2.i.i

if.end48.2.i.i:                                   ; preds = %if.then43.2.i.i, %if.end48.1.thread.i.i
  %arrayidx60.1932.i.i = phi ptr [ %arrayidx60.1.i.i, %if.then43.2.i.i ], [ %arrayidx60.1929.i.i, %if.end48.1.thread.i.i ]
  %eprom_chnl_txpwr_ht40_2sdf917922931.i.i = phi ptr [ %eprom_chnl_txpwr_ht40_2sdf.i.i, %if.then43.2.i.i ], [ %eprom_chnl_txpwr_ht40_2sdf916.i.i, %if.end48.1.thread.i.i ]
  %111 = phi ptr [ %97, %if.then43.2.i.i ], [ %50, %if.end48.1.thread.i.i ]
  %112 = phi ptr [ %83, %if.then43.2.i.i ], [ %46, %if.end48.1.thread.i.i ]
  %113 = phi ptr [ %69, %if.then43.2.i.i ], [ %42, %if.end48.1.thread.i.i ]
  %114 = phi ptr [ %62, %if.then43.2.i.i ], [ %40, %if.end48.1.thread.i.i ]
  %115 = phi ptr [ %76, %if.then43.2.i.i ], [ %44, %if.end48.1.thread.i.i ]
  %116 = phi ptr [ %90, %if.then43.2.i.i ], [ %48, %if.end48.1.thread.i.i ]
  %arrayidx60923930.i.i = phi ptr [ %arrayidx60.i.i, %if.then43.2.i.i ], [ %arrayidx60921.i.i, %if.end48.1.thread.i.i ]
  %tempval.0.2.i.i = phi i8 [ %110, %if.then43.2.i.i ], [ 0, %if.end48.1.thread.i.i ]
  %and.2.i.i = and i8 %tempval.0.2.i.i, 15
  %arrayidx53.2.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 31, i32 0, i32 2
  %117 = ptrtoint ptr %arrayidx53.2.i.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %and.2.i.i, ptr %arrayidx53.2.i.i, align 1
  %118 = lshr i8 %tempval.0.2.i.i, 4
  %arrayidx60.2.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 31, i32 1, i32 2
  %119 = ptrtoint ptr %arrayidx60.2.i.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %118, ptr %arrayidx60.2.i.i, align 1
  %arrayidx80.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 29, i32 0, i32 0
  %120 = ptrtoint ptr %arrayidx80.i.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx80.i.i, align 1
  %conv81.i.i = zext i8 %121 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.75, i32 noundef 0, i32 noundef 0, i32 noundef %conv81.i.i) #8
  %arrayidx80.1.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 29, i32 0, i32 1
  %122 = ptrtoint ptr %arrayidx80.1.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx80.1.i.i, align 1
  %conv81.1.i.i = zext i8 %123 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.75, i32 noundef 0, i32 noundef 1, i32 noundef %conv81.1.i.i) #8
  %arrayidx80.2.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 29, i32 0, i32 2
  %124 = ptrtoint ptr %arrayidx80.2.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx80.2.i.i, align 1
  %conv81.2.i.i = zext i8 %125 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.75, i32 noundef 0, i32 noundef 2, i32 noundef %conv81.2.i.i) #8
  %arrayidx80.1861.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 29, i32 1, i32 0
  %126 = ptrtoint ptr %arrayidx80.1861.i.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx80.1861.i.i, align 1
  %conv81.1862.i.i = zext i8 %127 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.75, i32 noundef 1, i32 noundef 0, i32 noundef %conv81.1862.i.i) #8
  %arrayidx80.1.1.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 29, i32 1, i32 1
  %128 = ptrtoint ptr %arrayidx80.1.1.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx80.1.1.i.i, align 1
  %conv81.1.1.i.i = zext i8 %129 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.75, i32 noundef 1, i32 noundef 1, i32 noundef %conv81.1.1.i.i) #8
  %arrayidx80.2.1.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 29, i32 1, i32 2
  %130 = ptrtoint ptr %arrayidx80.2.1.i.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx80.2.1.i.i, align 1
  %conv81.2.1.i.i = zext i8 %131 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.75, i32 noundef 1, i32 noundef 2, i32 noundef %conv81.2.1.i.i) #8
  %132 = ptrtoint ptr %114 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %114, align 1
  %conv105.i.i = zext i8 %133 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.76, i32 noundef 0, i32 noundef 0, i32 noundef %conv105.i.i) #8
  %134 = ptrtoint ptr %113 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %113, align 1
  %conv105.1.i.i = zext i8 %135 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.76, i32 noundef 0, i32 noundef 1, i32 noundef %conv105.1.i.i) #8
  %136 = ptrtoint ptr %115 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %115, align 1
  %conv105.2.i.i = zext i8 %137 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.76, i32 noundef 0, i32 noundef 2, i32 noundef %conv105.2.i.i) #8
  %138 = ptrtoint ptr %112 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %112, align 1
  %conv105.1864.i.i = zext i8 %139 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.76, i32 noundef 1, i32 noundef 0, i32 noundef %conv105.1864.i.i) #8
  %140 = ptrtoint ptr %116 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %116, align 1
  %conv105.1.1.i.i = zext i8 %141 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.76, i32 noundef 1, i32 noundef 1, i32 noundef %conv105.1.1.i.i) #8
  %142 = ptrtoint ptr %111 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %111, align 1
  %conv105.2.1.i.i = zext i8 %143 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.76, i32 noundef 1, i32 noundef 2, i32 noundef %conv105.2.1.i.i) #8
  %144 = ptrtoint ptr %eprom_chnl_txpwr_ht40_2sdf917922931.i.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %eprom_chnl_txpwr_ht40_2sdf917922931.i.i, align 1
  %conv129.i.i = zext i8 %145 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.77, i32 noundef 0, i32 noundef 0, i32 noundef %conv129.i.i) #8
  %arrayidx128.1.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 31, i32 0, i32 1
  %146 = ptrtoint ptr %arrayidx128.1.i.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx128.1.i.i, align 1
  %conv129.1.i.i = zext i8 %147 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.77, i32 noundef 0, i32 noundef 1, i32 noundef %conv129.1.i.i) #8
  %148 = ptrtoint ptr %arrayidx53.2.i.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %arrayidx53.2.i.i, align 1
  %conv129.2.i.i = zext i8 %149 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.77, i32 noundef 0, i32 noundef 2, i32 noundef %conv129.2.i.i) #8
  %150 = ptrtoint ptr %arrayidx60923930.i.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %arrayidx60923930.i.i, align 1
  %conv129.1866.i.i = zext i8 %151 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.77, i32 noundef 1, i32 noundef 0, i32 noundef %conv129.1866.i.i) #8
  %152 = ptrtoint ptr %arrayidx60.1932.i.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %arrayidx60.1932.i.i, align 1
  %conv129.1.1.i.i = zext i8 %153 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.77, i32 noundef 1, i32 noundef 1, i32 noundef %conv129.1.1.i.i) #8
  %154 = ptrtoint ptr %arrayidx60.2.i.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %arrayidx60.2.i.i, align 1
  %conv129.2.1.i.i = zext i8 %155 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.77, i32 noundef 1, i32 noundef 2, i32 noundef %conv129.2.1.i.i) #8
  br label %for.body145.i.i

for.body145.i.i:                                  ; preds = %for.body145.i.i.for.body145.i.i_crit_edge, %if.end48.2.i.i
  %indvars.iv.i.i = phi i32 [ 0, %if.end48.2.i.i ], [ %indvars.iv.next.i.i, %for.body145.i.i.for.body145.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %indvars.iv.i.i)
  %156 = icmp ult i32 %indvars.iv.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %indvars.iv.i.i)
  %157 = icmp ult i32 %indvars.iv.i.i, 9
  %..i.i.i = select i1 %157, i32 1, i32 2
  %group.0.i.i.i = select i1 %156, i32 0, i32 %..i.i.i
  %arrayidx151.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 29, i32 0, i32 %group.0.i.i.i
  %158 = ptrtoint ptr %arrayidx151.i.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %arrayidx151.i.i, align 1
  %arrayidx155.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 38, i32 0, i32 %indvars.iv.i.i
  %160 = ptrtoint ptr %arrayidx155.i.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %159, ptr %arrayidx155.i.i, align 1
  %arrayidx160.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 30, i32 0, i32 %group.0.i.i.i
  %161 = ptrtoint ptr %arrayidx160.i.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %arrayidx160.i.i, align 1
  %arrayidx164.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 39, i32 0, i32 %indvars.iv.i.i
  %163 = ptrtoint ptr %arrayidx164.i.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %162, ptr %arrayidx164.i.i, align 1
  %conv170.i.i = zext i8 %162 to i32
  %arrayidx175.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 31, i32 0, i32 %group.0.i.i.i
  %164 = ptrtoint ptr %arrayidx175.i.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %arrayidx175.i.i, align 1
  %conv176.i.i = zext i8 %165 to i32
  %sub.i.i = sub nsw i32 %conv170.i.i, %conv176.i.i
  %166 = call i32 @llvm.smax.i32(i32 %sub.i.i, i32 0) #8
  %167 = trunc i32 %166 to i8
  %168 = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 40, i32 0, i32 %indvars.iv.i.i
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %167, ptr %168, align 1
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, 14
  br i1 %exitcond.not.i.i, label %for.body145.i.i.for.body212.i.i_crit_edge, label %for.body145.i.i.for.body145.i.i_crit_edge

for.body145.i.i.for.body145.i.i_crit_edge:        ; preds = %for.body145.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body145.i.i

for.body145.i.i.for.body212.i.i_crit_edge:        ; preds = %for.body145.i.i
  br label %for.body212.i.i

for.body212.i.i:                                  ; preds = %for.body212.i.i.for.body212.i.i_crit_edge, %for.body145.i.i.for.body212.i.i_crit_edge
  %indvars.iv868.i.i = phi i32 [ %indvars.iv.next869.i.i, %for.body212.i.i.for.body212.i.i_crit_edge ], [ 0, %for.body145.i.i.for.body212.i.i_crit_edge ]
  %arrayidx219.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 38, i32 0, i32 %indvars.iv868.i.i
  %170 = ptrtoint ptr %arrayidx219.i.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %arrayidx219.i.i, align 1
  %conv220.i.i = zext i8 %171 to i32
  %arrayidx225.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 39, i32 0, i32 %indvars.iv868.i.i
  %172 = ptrtoint ptr %arrayidx225.i.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %arrayidx225.i.i, align 1
  %conv226.i.i = zext i8 %173 to i32
  %arrayidx231.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 40, i32 0, i32 %indvars.iv868.i.i
  %174 = ptrtoint ptr %arrayidx231.i.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %arrayidx231.i.i, align 1
  %conv232.i.i = zext i8 %175 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.78, i32 noundef 0, i32 noundef %indvars.iv868.i.i, i32 noundef %conv220.i.i, i32 noundef %conv226.i.i, i32 noundef %conv232.i.i) #8
  %indvars.iv.next869.i.i = add nuw nsw i32 %indvars.iv868.i.i, 1
  %exitcond870.not.i.i = icmp eq i32 %indvars.iv.next869.i.i, 14
  br i1 %exitcond870.not.i.i, label %for.body212.i.i.for.body145.1.i.i_crit_edge, label %for.body212.i.i.for.body212.i.i_crit_edge

for.body212.i.i.for.body212.i.i_crit_edge:        ; preds = %for.body212.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body212.i.i

for.body212.i.i.for.body145.1.i.i_crit_edge:      ; preds = %for.body212.i.i
  br label %for.body145.1.i.i

for.body145.1.i.i:                                ; preds = %for.body145.1.i.i.for.body145.1.i.i_crit_edge, %for.body212.i.i.for.body145.1.i.i_crit_edge
  %indvars.iv.1.i.i = phi i32 [ %indvars.iv.next.1.i.i, %for.body145.1.i.i.for.body145.1.i.i_crit_edge ], [ 0, %for.body212.i.i.for.body145.1.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %indvars.iv.1.i.i)
  %176 = icmp ult i32 %indvars.iv.1.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %indvars.iv.1.i.i)
  %177 = icmp ult i32 %indvars.iv.1.i.i, 9
  %..i.1.i.i = select i1 %177, i32 1, i32 2
  %group.0.i.1.i.i = select i1 %176, i32 0, i32 %..i.1.i.i
  %arrayidx151.1.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 29, i32 1, i32 %group.0.i.1.i.i
  %178 = ptrtoint ptr %arrayidx151.1.i.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %arrayidx151.1.i.i, align 1
  %arrayidx155.1.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 38, i32 1, i32 %indvars.iv.1.i.i
  %180 = ptrtoint ptr %arrayidx155.1.i.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %179, ptr %arrayidx155.1.i.i, align 1
  %arrayidx160.1.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 30, i32 1, i32 %group.0.i.1.i.i
  %181 = ptrtoint ptr %arrayidx160.1.i.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %arrayidx160.1.i.i, align 1
  %arrayidx164.1.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 39, i32 1, i32 %indvars.iv.1.i.i
  %183 = ptrtoint ptr %arrayidx164.1.i.i to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %182, ptr %arrayidx164.1.i.i, align 1
  %conv170.1.i.i = zext i8 %182 to i32
  %arrayidx175.1.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 31, i32 1, i32 %group.0.i.1.i.i
  %184 = ptrtoint ptr %arrayidx175.1.i.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %arrayidx175.1.i.i, align 1
  %conv176.1.i.i = zext i8 %185 to i32
  %sub.1.i.i = sub nsw i32 %conv170.1.i.i, %conv176.1.i.i
  %186 = call i32 @llvm.smax.i32(i32 %sub.1.i.i, i32 0) #8
  %187 = trunc i32 %186 to i8
  %188 = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 40, i32 1, i32 %indvars.iv.1.i.i
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 %187, ptr %188, align 1
  %indvars.iv.next.1.i.i = add nuw nsw i32 %indvars.iv.1.i.i, 1
  %exitcond.1.not.i.i = icmp eq i32 %indvars.iv.next.1.i.i, 14
  br i1 %exitcond.1.not.i.i, label %for.body145.1.i.i.for.body212.1.i.i_crit_edge, label %for.body145.1.i.i.for.body145.1.i.i_crit_edge

for.body145.1.i.i.for.body145.1.i.i_crit_edge:    ; preds = %for.body145.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body145.1.i.i

for.body145.1.i.i.for.body212.1.i.i_crit_edge:    ; preds = %for.body145.1.i.i
  br label %for.body212.1.i.i

for.body212.1.i.i:                                ; preds = %for.body212.1.i.i.for.body212.1.i.i_crit_edge, %for.body145.1.i.i.for.body212.1.i.i_crit_edge
  %indvars.iv868.1.i.i = phi i32 [ %indvars.iv.next869.1.i.i, %for.body212.1.i.i.for.body212.1.i.i_crit_edge ], [ 0, %for.body145.1.i.i.for.body212.1.i.i_crit_edge ]
  %arrayidx219.1.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 38, i32 1, i32 %indvars.iv868.1.i.i
  %190 = ptrtoint ptr %arrayidx219.1.i.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %arrayidx219.1.i.i, align 1
  %conv220.1.i.i = zext i8 %191 to i32
  %arrayidx225.1.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 39, i32 1, i32 %indvars.iv868.1.i.i
  %192 = ptrtoint ptr %arrayidx225.1.i.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %arrayidx225.1.i.i, align 1
  %conv226.1.i.i = zext i8 %193 to i32
  %arrayidx231.1.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 40, i32 1, i32 %indvars.iv868.1.i.i
  %194 = ptrtoint ptr %arrayidx231.1.i.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %arrayidx231.1.i.i, align 1
  %conv232.1.i.i = zext i8 %195 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.78, i32 noundef 1, i32 noundef %indvars.iv868.1.i.i, i32 noundef %conv220.1.i.i, i32 noundef %conv226.1.i.i, i32 noundef %conv232.1.i.i) #8
  %indvars.iv.next869.1.i.i = add nuw nsw i32 %indvars.iv868.1.i.i, 1
  %exitcond870.1.not.i.i = icmp eq i32 %indvars.iv.next869.1.i.i, 14
  br i1 %exitcond870.1.not.i.i, label %for.inc236.1.i.i, label %for.body212.1.i.i.for.body212.1.i.i_crit_edge

for.body212.1.i.i.for.body212.1.i.i_crit_edge:    ; preds = %for.body212.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body212.1.i.i

for.inc236.1.i.i:                                 ; preds = %for.body212.1.i.i
  br i1 %tobool8.not.i, label %if.then245.2.i.i, label %if.else256.2.i.i

if.then245.2.i.i:                                 ; preds = %for.inc236.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx248.i.i = getelementptr i8, ptr %call7.i.i.i, i32 111
  %196 = ptrtoint ptr %arrayidx248.i.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %arrayidx248.i.i, align 1
  %arrayidx250.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 28, i32 0
  %198 = ptrtoint ptr %arrayidx250.i.i to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %197, ptr %arrayidx250.i.i, align 1
  %arrayidx253.i.i = getelementptr i8, ptr %call7.i.i.i, i32 114
  %199 = ptrtoint ptr %arrayidx253.i.i to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %arrayidx253.i.i, align 2
  %201 = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 27, i32 0
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 %200, ptr %201, align 1
  %arrayidx248.1.i.i = getelementptr i8, ptr %call7.i.i.i, i32 112
  %203 = ptrtoint ptr %arrayidx248.1.i.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %arrayidx248.1.i.i, align 8
  %arrayidx250.1.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 28, i32 1
  %205 = ptrtoint ptr %arrayidx250.1.i.i to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 %204, ptr %arrayidx250.1.i.i, align 1
  %arrayidx253.1.i.i = getelementptr i8, ptr %call7.i.i.i, i32 115
  %206 = ptrtoint ptr %arrayidx253.1.i.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %arrayidx253.1.i.i, align 1
  %208 = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 27, i32 1
  %209 = ptrtoint ptr %208 to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 %207, ptr %208, align 1
  %arrayidx248.2.i.i = getelementptr i8, ptr %call7.i.i.i, i32 113
  %210 = ptrtoint ptr %arrayidx248.2.i.i to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %arrayidx248.2.i.i, align 1
  %arrayidx250.2.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 28, i32 2
  %212 = ptrtoint ptr %arrayidx250.2.i.i to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 %211, ptr %arrayidx250.2.i.i, align 1
  %arrayidx253.2.i.i = getelementptr i8, ptr %call7.i.i.i, i32 116
  %213 = ptrtoint ptr %arrayidx253.2.i.i to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %arrayidx253.2.i.i, align 4
  br label %for.inc264.2.i.i

if.else256.2.i.i:                                 ; preds = %for.inc236.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx259.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 28, i32 0
  %215 = ptrtoint ptr %arrayidx259.i.i to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 0, ptr %arrayidx259.i.i, align 1
  %216 = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 27, i32 0
  %217 = ptrtoint ptr %216 to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 0, ptr %216, align 1
  %arrayidx259.1.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 28, i32 1
  %218 = ptrtoint ptr %arrayidx259.1.i.i to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 0, ptr %arrayidx259.1.i.i, align 1
  %219 = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 27, i32 1
  %220 = ptrtoint ptr %219 to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 0, ptr %219, align 1
  %arrayidx259.2.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 28, i32 2
  %221 = ptrtoint ptr %arrayidx259.2.i.i to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 0, ptr %arrayidx259.2.i.i, align 1
  br label %for.inc264.2.i.i

for.inc264.2.i.i:                                 ; preds = %if.else256.2.i.i, %if.then245.2.i.i
  %.sink909.i.i = phi i8 [ 0, %if.else256.2.i.i ], [ %214, %if.then245.2.i.i ]
  %222 = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 27, i32 2
  %223 = ptrtoint ptr %222 to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 %.sink909.i.i, ptr %222, align 1
  %pwrgroup_ht20.i.i = getelementptr inbounds %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 36
  %pwrgroup_ht40.i.i = getelementptr inbounds %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 37
  br label %if.end333.i.i

if.end333.i.i:                                    ; preds = %if.end333.i.i.if.end333.i.i_crit_edge, %for.inc264.2.i.i
  %indvars.iv878.i.i = phi i32 [ 0, %for.inc264.2.i.i ], [ %indvars.iv.next879.i.i, %if.end333.i.i.if.end333.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %indvars.iv878.i.i)
  %224 = icmp ult i32 %indvars.iv878.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %indvars.iv878.i.i)
  %225 = icmp ult i32 %indvars.iv878.i.i, 9
  %226 = select i1 %225, i32 1, i32 2
  %idxprom284.i.i = select i1 %224, i32 0, i32 %226
  %arrayidx285.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 27, i32 %idxprom284.i.i
  %227 = ptrtoint ptr %arrayidx285.i.i to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %arrayidx285.i.i, align 1
  %229 = and i8 %228, 15
  %arrayidx292.i.i = getelementptr [59 x i8], ptr %pwrgroup_ht20.i.i, i32 0, i32 %indvars.iv878.i.i
  %230 = ptrtoint ptr %arrayidx292.i.i to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 %229, ptr %arrayidx292.i.i, align 1
  %arrayidx295.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 28, i32 %idxprom284.i.i
  %231 = ptrtoint ptr %arrayidx295.i.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %arrayidx295.i.i, align 1
  %233 = and i8 %232, 15
  %arrayidx302.i.i = getelementptr [59 x i8], ptr %pwrgroup_ht40.i.i, i32 0, i32 %indvars.iv878.i.i
  %234 = ptrtoint ptr %arrayidx302.i.i to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 %233, ptr %arrayidx302.i.i, align 1
  %conv341.i.i = zext i8 %229 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.79, i32 noundef 0, i32 noundef %indvars.iv878.i.i, i32 noundef %conv341.i.i) #8
  %arrayidx348.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 37, i32 0, i32 %indvars.iv878.i.i
  %235 = ptrtoint ptr %arrayidx348.i.i to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %arrayidx348.i.i, align 1
  %conv349.i.i = zext i8 %236 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.80, i32 noundef 0, i32 noundef %indvars.iv878.i.i, i32 noundef %conv349.i.i) #8
  %indvars.iv.next879.i.i = add nuw nsw i32 %indvars.iv878.i.i, 1
  %exitcond880.not.i.i = icmp eq i32 %indvars.iv.next879.i.i, 14
  br i1 %exitcond880.not.i.i, label %if.end333.i.i.if.end333.1.i.i_crit_edge, label %if.end333.i.i.if.end333.i.i_crit_edge

if.end333.i.i.if.end333.i.i_crit_edge:            ; preds = %if.end333.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end333.i.i

if.end333.i.i.if.end333.1.i.i_crit_edge:          ; preds = %if.end333.i.i
  br label %if.end333.1.i.i

if.end333.1.i.i:                                  ; preds = %if.end333.1.i.i.if.end333.1.i.i_crit_edge, %if.end333.i.i.if.end333.1.i.i_crit_edge
  %indvars.iv878.1.i.i = phi i32 [ %indvars.iv.next879.1.i.i, %if.end333.1.i.i.if.end333.1.i.i_crit_edge ], [ 0, %if.end333.i.i.if.end333.1.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %indvars.iv878.1.i.i)
  %237 = icmp ult i32 %indvars.iv878.1.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %indvars.iv878.1.i.i)
  %238 = icmp ult i32 %indvars.iv878.1.i.i, 9
  %239 = select i1 %238, i32 1, i32 2
  %idxprom309.1.i.i = select i1 %237, i32 0, i32 %239
  %arrayidx310.1.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 27, i32 %idxprom309.1.i.i
  %240 = ptrtoint ptr %arrayidx310.1.i.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %arrayidx310.1.i.i, align 1
  %242 = lshr i8 %241, 4
  %arrayidx319.1.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 36, i32 1, i32 %indvars.iv878.1.i.i
  %243 = ptrtoint ptr %arrayidx319.1.i.i to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 %242, ptr %arrayidx319.1.i.i, align 1
  %arrayidx322.1.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 28, i32 %idxprom309.1.i.i
  %244 = ptrtoint ptr %arrayidx322.1.i.i to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %arrayidx322.1.i.i, align 1
  %246 = lshr i8 %245, 4
  %arrayidx331.1.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 37, i32 1, i32 %indvars.iv878.1.i.i
  %247 = ptrtoint ptr %arrayidx331.1.i.i to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 %246, ptr %arrayidx331.1.i.i, align 1
  %conv341.1.i.i = zext i8 %242 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.79, i32 noundef 1, i32 noundef %indvars.iv878.1.i.i, i32 noundef %conv341.1.i.i) #8
  %248 = ptrtoint ptr %arrayidx331.1.i.i to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %arrayidx331.1.i.i, align 1
  %conv349.1.i.i = zext i8 %249 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.80, i32 noundef 1, i32 noundef %indvars.iv878.1.i.i, i32 noundef %conv349.1.i.i) #8
  %indvars.iv.next879.1.i.i = add nuw nsw i32 %indvars.iv878.1.i.i, 1
  %exitcond880.1.not.i.i = icmp eq i32 %indvars.iv.next879.1.i.i, 14
  br i1 %exitcond880.1.not.i.i, label %for.inc353.1.i.i, label %if.end333.1.i.i.if.end333.1.i.i_crit_edge

if.end333.1.i.i.if.end333.1.i.i_crit_edge:        ; preds = %if.end333.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end333.1.i.i

for.inc353.1.i.i:                                 ; preds = %if.end333.1.i.i
  %txpwr_ht20diff.i.i = getelementptr inbounds %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 42
  %txpwr_legacyhtdiff.i.i = getelementptr inbounds %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 44
  br label %for.body360.i.i

for.body360.i.i:                                  ; preds = %if.end423.i.i.for.body360.i.i_crit_edge, %for.inc353.1.i.i
  %indvars.iv885.i.i = phi i32 [ 0, %for.inc353.1.i.i ], [ %indvars.iv.next886.i.i, %if.end423.i.i.for.body360.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %indvars.iv885.i.i)
  %250 = icmp ult i32 %indvars.iv885.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %indvars.iv885.i.i)
  %251 = icmp ult i32 %indvars.iv885.i.i, 9
  %..i806.i.i = select i1 %251, i8 1, i8 2
  %group.0.i807.i.i = select i1 %250, i8 0, i8 %..i806.i.i
  br i1 %tobool8.not.i, label %if.then364.i.i, label %for.body360.i.i.if.end369.i.i_crit_edge

for.body360.i.i.if.end369.i.i_crit_edge:          ; preds = %for.body360.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end369.i.i

if.then364.i.i:                                   ; preds = %for.body360.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %narrow.i.i = add nuw nsw i8 %group.0.i807.i.i, 105
  %add366.i.i = zext i8 %narrow.i.i to i32
  %arrayidx367.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %add366.i.i
  %252 = ptrtoint ptr %arrayidx367.i.i to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %arrayidx367.i.i, align 1
  br label %if.end369.i.i

if.end369.i.i:                                    ; preds = %if.then364.i.i, %for.body360.i.i.if.end369.i.i_crit_edge
  %tempval.1.i.i = phi i8 [ %253, %if.then364.i.i ], [ 2, %for.body360.i.i.if.end369.i.i_crit_edge ]
  %and371.i.i = and i8 %tempval.1.i.i, 15
  %arrayidx375.i.i = getelementptr [59 x i8], ptr %txpwr_ht20diff.i.i, i32 0, i32 %indvars.iv885.i.i
  %254 = ptrtoint ptr %arrayidx375.i.i to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 %and371.i.i, ptr %arrayidx375.i.i, align 1
  %255 = lshr i8 %tempval.1.i.i, 4
  %arrayidx383.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 42, i32 1, i32 %indvars.iv885.i.i
  %256 = ptrtoint ptr %arrayidx383.i.i to i32
  call void @__asan_store1_noabort(i32 %256)
  store i8 %255, ptr %arrayidx383.i.i, align 1
  %257 = and i8 %tempval.1.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %257)
  %tobool390.not.i.i = icmp eq i8 %257, 0
  br i1 %tobool390.not.i.i, label %if.end369.i.i.if.end398.i.i_crit_edge, label %if.then391.i.i

if.end369.i.i.if.end398.i.i_crit_edge:            ; preds = %if.end369.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end398.i.i

if.then391.i.i:                                   ; preds = %if.end369.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.i.i = or i8 %tempval.1.i.i, -16
  %258 = ptrtoint ptr %arrayidx375.i.i to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 %or.i.i, ptr %arrayidx375.i.i, align 1
  br label %if.end398.i.i

if.end398.i.i:                                    ; preds = %if.then391.i.i, %if.end369.i.i.if.end398.i.i_crit_edge
  %259 = ptrtoint ptr %arrayidx383.i.i to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %arrayidx383.i.i, align 1
  %261 = and i8 %260, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %261)
  %tobool405.not.i.i = icmp eq i8 %261, 0
  br i1 %tobool405.not.i.i, label %if.end398.i.i.if.end414.i.i_crit_edge, label %if.then406.i.i

if.end398.i.i.if.end414.i.i_crit_edge:            ; preds = %if.end398.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end414.i.i

if.then406.i.i:                                   ; preds = %if.end398.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %or412.i.i = or i8 %260, -16
  %262 = ptrtoint ptr %arrayidx383.i.i to i32
  call void @__asan_store1_noabort(i32 %262)
  store i8 %or412.i.i, ptr %arrayidx383.i.i, align 1
  br label %if.end414.i.i

if.end414.i.i:                                    ; preds = %if.then406.i.i, %if.end398.i.i.if.end414.i.i_crit_edge
  br i1 %tobool8.not.i, label %if.then418.i.i, label %if.end414.i.i.if.end423.i.i_crit_edge

if.end414.i.i.if.end423.i.i_crit_edge:            ; preds = %if.end414.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end423.i.i

if.then418.i.i:                                   ; preds = %if.end414.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %263 = or i8 %group.0.i807.i.i, 108
  %add420.i.i = zext i8 %263 to i32
  %arrayidx421.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %add420.i.i
  %264 = ptrtoint ptr %arrayidx421.i.i to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %arrayidx421.i.i, align 1
  br label %if.end423.i.i

if.end423.i.i:                                    ; preds = %if.then418.i.i, %if.end414.i.i.if.end423.i.i_crit_edge
  %tempval.2.i.i = phi i8 [ %265, %if.then418.i.i ], [ 3, %if.end414.i.i.if.end423.i.i_crit_edge ]
  %and425.i.i = and i8 %tempval.2.i.i, 15
  %arrayidx429.i.i = getelementptr [59 x i8], ptr %txpwr_legacyhtdiff.i.i, i32 0, i32 %indvars.iv885.i.i
  %266 = ptrtoint ptr %arrayidx429.i.i to i32
  call void @__asan_store1_noabort(i32 %266)
  store i8 %and425.i.i, ptr %arrayidx429.i.i, align 1
  %267 = lshr i8 %tempval.2.i.i, 4
  %arrayidx437.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 44, i32 1, i32 %indvars.iv885.i.i
  %268 = ptrtoint ptr %arrayidx437.i.i to i32
  call void @__asan_store1_noabort(i32 %268)
  store i8 %267, ptr %arrayidx437.i.i, align 1
  %indvars.iv.next886.i.i = add nuw nsw i32 %indvars.iv885.i.i, 1
  %exitcond887.not.i.i = icmp eq i32 %indvars.iv.next886.i.i, 14
  br i1 %exitcond887.not.i.i, label %for.end440.i.i, label %if.end423.i.i.for.body360.i.i_crit_edge

if.end423.i.i.for.body360.i.i_crit_edge:          ; preds = %if.end423.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body360.i.i

for.end440.i.i:                                   ; preds = %if.end423.i.i
  %arrayidx443.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 44, i32 0, i32 7
  %269 = ptrtoint ptr %arrayidx443.i.i to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %arrayidx443.i.i, align 1
  %legacy_ht_txpowerdiff.i.i = getelementptr inbounds %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 61
  %271 = ptrtoint ptr %legacy_ht_txpowerdiff.i.i to i32
  call void @__asan_store1_noabort(i32 %271)
  store i8 %270, ptr %legacy_ht_txpowerdiff.i.i, align 1
  %272 = ptrtoint ptr %txpwr_ht20diff.i.i to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %txpwr_ht20diff.i.i, align 1
  %conv454.i.i = sext i8 %273 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.81, i32 noundef 0, i32 noundef %conv454.i.i) #8
  %arrayidx453.1.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 42, i32 0, i32 1
  %274 = ptrtoint ptr %arrayidx453.1.i.i to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %arrayidx453.1.i.i, align 1
  %conv454.1.i.i = sext i8 %275 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.81, i32 noundef 1, i32 noundef %conv454.1.i.i) #8
  %arrayidx453.2.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 42, i32 0, i32 2
  %276 = ptrtoint ptr %arrayidx453.2.i.i to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %arrayidx453.2.i.i, align 1
  %conv454.2.i.i = sext i8 %277 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.81, i32 noundef 2, i32 noundef %conv454.2.i.i) #8
  %arrayidx453.3.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 42, i32 0, i32 3
  %278 = ptrtoint ptr %arrayidx453.3.i.i to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %arrayidx453.3.i.i, align 1
  %conv454.3.i.i = sext i8 %279 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.81, i32 noundef 3, i32 noundef %conv454.3.i.i) #8
  %arrayidx453.4.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 42, i32 0, i32 4
  %280 = ptrtoint ptr %arrayidx453.4.i.i to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %arrayidx453.4.i.i, align 1
  %conv454.4.i.i = sext i8 %281 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.81, i32 noundef 4, i32 noundef %conv454.4.i.i) #8
  %arrayidx453.5.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 42, i32 0, i32 5
  %282 = ptrtoint ptr %arrayidx453.5.i.i to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %arrayidx453.5.i.i, align 1
  %conv454.5.i.i = sext i8 %283 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.81, i32 noundef 5, i32 noundef %conv454.5.i.i) #8
  %arrayidx453.6.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 42, i32 0, i32 6
  %284 = ptrtoint ptr %arrayidx453.6.i.i to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %arrayidx453.6.i.i, align 1
  %conv454.6.i.i = sext i8 %285 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.81, i32 noundef 6, i32 noundef %conv454.6.i.i) #8
  %arrayidx453.7.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 42, i32 0, i32 7
  %286 = ptrtoint ptr %arrayidx453.7.i.i to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %arrayidx453.7.i.i, align 1
  %conv454.7.i.i = sext i8 %287 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.81, i32 noundef 7, i32 noundef %conv454.7.i.i) #8
  %arrayidx453.8.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 42, i32 0, i32 8
  %288 = ptrtoint ptr %arrayidx453.8.i.i to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %arrayidx453.8.i.i, align 1
  %conv454.8.i.i = sext i8 %289 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.81, i32 noundef 8, i32 noundef %conv454.8.i.i) #8
  %arrayidx453.9.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 42, i32 0, i32 9
  %290 = ptrtoint ptr %arrayidx453.9.i.i to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %arrayidx453.9.i.i, align 1
  %conv454.9.i.i = sext i8 %291 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.81, i32 noundef 9, i32 noundef %conv454.9.i.i) #8
  %arrayidx453.10.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 42, i32 0, i32 10
  %292 = ptrtoint ptr %arrayidx453.10.i.i to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %arrayidx453.10.i.i, align 1
  %conv454.10.i.i = sext i8 %293 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.81, i32 noundef 10, i32 noundef %conv454.10.i.i) #8
  %arrayidx453.11.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 42, i32 0, i32 11
  %294 = ptrtoint ptr %arrayidx453.11.i.i to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %arrayidx453.11.i.i, align 1
  %conv454.11.i.i = sext i8 %295 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.81, i32 noundef 11, i32 noundef %conv454.11.i.i) #8
  %arrayidx453.12.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 42, i32 0, i32 12
  %296 = ptrtoint ptr %arrayidx453.12.i.i to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %arrayidx453.12.i.i, align 1
  %conv454.12.i.i = sext i8 %297 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.81, i32 noundef 12, i32 noundef %conv454.12.i.i) #8
  %arrayidx453.13.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 42, i32 0, i32 13
  %298 = ptrtoint ptr %arrayidx453.13.i.i to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %arrayidx453.13.i.i, align 1
  %conv454.13.i.i = sext i8 %299 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.81, i32 noundef 13, i32 noundef %conv454.13.i.i) #8
  %300 = ptrtoint ptr %txpwr_legacyhtdiff.i.i to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %txpwr_legacyhtdiff.i.i, align 1
  %conv468.i.i = sext i8 %301 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.82, i32 noundef 0, i32 noundef %conv468.i.i) #8
  %arrayidx467.1.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 44, i32 0, i32 1
  %302 = ptrtoint ptr %arrayidx467.1.i.i to i32
  call void @__asan_load1_noabort(i32 %302)
  %303 = load i8, ptr %arrayidx467.1.i.i, align 1
  %conv468.1.i.i = sext i8 %303 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.82, i32 noundef 1, i32 noundef %conv468.1.i.i) #8
  %arrayidx467.2.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 44, i32 0, i32 2
  %304 = ptrtoint ptr %arrayidx467.2.i.i to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %arrayidx467.2.i.i, align 1
  %conv468.2.i.i = sext i8 %305 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.82, i32 noundef 2, i32 noundef %conv468.2.i.i) #8
  %arrayidx467.3.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 44, i32 0, i32 3
  %306 = ptrtoint ptr %arrayidx467.3.i.i to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %arrayidx467.3.i.i, align 1
  %conv468.3.i.i = sext i8 %307 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.82, i32 noundef 3, i32 noundef %conv468.3.i.i) #8
  %arrayidx467.4.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 44, i32 0, i32 4
  %308 = ptrtoint ptr %arrayidx467.4.i.i to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %arrayidx467.4.i.i, align 1
  %conv468.4.i.i = sext i8 %309 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.82, i32 noundef 4, i32 noundef %conv468.4.i.i) #8
  %arrayidx467.5.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 44, i32 0, i32 5
  %310 = ptrtoint ptr %arrayidx467.5.i.i to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %arrayidx467.5.i.i, align 1
  %conv468.5.i.i = sext i8 %311 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.82, i32 noundef 5, i32 noundef %conv468.5.i.i) #8
  %arrayidx467.6.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 44, i32 0, i32 6
  %312 = ptrtoint ptr %arrayidx467.6.i.i to i32
  call void @__asan_load1_noabort(i32 %312)
  %313 = load i8, ptr %arrayidx467.6.i.i, align 1
  %conv468.6.i.i = sext i8 %313 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.82, i32 noundef 6, i32 noundef %conv468.6.i.i) #8
  %314 = ptrtoint ptr %arrayidx443.i.i to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %arrayidx443.i.i, align 1
  %conv468.7.i.i = sext i8 %315 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.82, i32 noundef 7, i32 noundef %conv468.7.i.i) #8
  %arrayidx467.8.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 44, i32 0, i32 8
  %316 = ptrtoint ptr %arrayidx467.8.i.i to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %arrayidx467.8.i.i, align 1
  %conv468.8.i.i = sext i8 %317 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.82, i32 noundef 8, i32 noundef %conv468.8.i.i) #8
  %arrayidx467.9.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 44, i32 0, i32 9
  %318 = ptrtoint ptr %arrayidx467.9.i.i to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %arrayidx467.9.i.i, align 1
  %conv468.9.i.i = sext i8 %319 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.82, i32 noundef 9, i32 noundef %conv468.9.i.i) #8
  %arrayidx467.10.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 44, i32 0, i32 10
  %320 = ptrtoint ptr %arrayidx467.10.i.i to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %arrayidx467.10.i.i, align 1
  %conv468.10.i.i = sext i8 %321 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.82, i32 noundef 10, i32 noundef %conv468.10.i.i) #8
  %arrayidx467.11.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 44, i32 0, i32 11
  %322 = ptrtoint ptr %arrayidx467.11.i.i to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %arrayidx467.11.i.i, align 1
  %conv468.11.i.i = sext i8 %323 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.82, i32 noundef 11, i32 noundef %conv468.11.i.i) #8
  %arrayidx467.12.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 44, i32 0, i32 12
  %324 = ptrtoint ptr %arrayidx467.12.i.i to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %arrayidx467.12.i.i, align 1
  %conv468.12.i.i = sext i8 %325 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.82, i32 noundef 12, i32 noundef %conv468.12.i.i) #8
  %arrayidx467.13.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 44, i32 0, i32 13
  %326 = ptrtoint ptr %arrayidx467.13.i.i to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %arrayidx467.13.i.i, align 1
  %conv468.13.i.i = sext i8 %327 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.82, i32 noundef 13, i32 noundef %conv468.13.i.i) #8
  %arrayidx481.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 42, i32 1, i32 0
  %328 = ptrtoint ptr %arrayidx481.i.i to i32
  call void @__asan_load1_noabort(i32 %328)
  %329 = load i8, ptr %arrayidx481.i.i, align 1
  %conv482.i.i = sext i8 %329 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.83, i32 noundef 0, i32 noundef %conv482.i.i) #8
  %arrayidx481.1.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 42, i32 1, i32 1
  %330 = ptrtoint ptr %arrayidx481.1.i.i to i32
  call void @__asan_load1_noabort(i32 %330)
  %331 = load i8, ptr %arrayidx481.1.i.i, align 1
  %conv482.1.i.i = sext i8 %331 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.83, i32 noundef 1, i32 noundef %conv482.1.i.i) #8
  %arrayidx481.2.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 42, i32 1, i32 2
  %332 = ptrtoint ptr %arrayidx481.2.i.i to i32
  call void @__asan_load1_noabort(i32 %332)
  %333 = load i8, ptr %arrayidx481.2.i.i, align 1
  %conv482.2.i.i = sext i8 %333 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.83, i32 noundef 2, i32 noundef %conv482.2.i.i) #8
  %arrayidx481.3.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 42, i32 1, i32 3
  %334 = ptrtoint ptr %arrayidx481.3.i.i to i32
  call void @__asan_load1_noabort(i32 %334)
  %335 = load i8, ptr %arrayidx481.3.i.i, align 1
  %conv482.3.i.i = sext i8 %335 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.83, i32 noundef 3, i32 noundef %conv482.3.i.i) #8
  %arrayidx481.4.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 42, i32 1, i32 4
  %336 = ptrtoint ptr %arrayidx481.4.i.i to i32
  call void @__asan_load1_noabort(i32 %336)
  %337 = load i8, ptr %arrayidx481.4.i.i, align 1
  %conv482.4.i.i = sext i8 %337 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.83, i32 noundef 4, i32 noundef %conv482.4.i.i) #8
  %arrayidx481.5.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 42, i32 1, i32 5
  %338 = ptrtoint ptr %arrayidx481.5.i.i to i32
  call void @__asan_load1_noabort(i32 %338)
  %339 = load i8, ptr %arrayidx481.5.i.i, align 1
  %conv482.5.i.i = sext i8 %339 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.83, i32 noundef 5, i32 noundef %conv482.5.i.i) #8
  %arrayidx481.6.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 42, i32 1, i32 6
  %340 = ptrtoint ptr %arrayidx481.6.i.i to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %arrayidx481.6.i.i, align 1
  %conv482.6.i.i = sext i8 %341 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.83, i32 noundef 6, i32 noundef %conv482.6.i.i) #8
  %arrayidx481.7.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 42, i32 1, i32 7
  %342 = ptrtoint ptr %arrayidx481.7.i.i to i32
  call void @__asan_load1_noabort(i32 %342)
  %343 = load i8, ptr %arrayidx481.7.i.i, align 1
  %conv482.7.i.i = sext i8 %343 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.83, i32 noundef 7, i32 noundef %conv482.7.i.i) #8
  %arrayidx481.8.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 42, i32 1, i32 8
  %344 = ptrtoint ptr %arrayidx481.8.i.i to i32
  call void @__asan_load1_noabort(i32 %344)
  %345 = load i8, ptr %arrayidx481.8.i.i, align 1
  %conv482.8.i.i = sext i8 %345 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.83, i32 noundef 8, i32 noundef %conv482.8.i.i) #8
  %arrayidx481.9.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 42, i32 1, i32 9
  %346 = ptrtoint ptr %arrayidx481.9.i.i to i32
  call void @__asan_load1_noabort(i32 %346)
  %347 = load i8, ptr %arrayidx481.9.i.i, align 1
  %conv482.9.i.i = sext i8 %347 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.83, i32 noundef 9, i32 noundef %conv482.9.i.i) #8
  %arrayidx481.10.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 42, i32 1, i32 10
  %348 = ptrtoint ptr %arrayidx481.10.i.i to i32
  call void @__asan_load1_noabort(i32 %348)
  %349 = load i8, ptr %arrayidx481.10.i.i, align 1
  %conv482.10.i.i = sext i8 %349 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.83, i32 noundef 10, i32 noundef %conv482.10.i.i) #8
  %arrayidx481.11.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 42, i32 1, i32 11
  %350 = ptrtoint ptr %arrayidx481.11.i.i to i32
  call void @__asan_load1_noabort(i32 %350)
  %351 = load i8, ptr %arrayidx481.11.i.i, align 1
  %conv482.11.i.i = sext i8 %351 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.83, i32 noundef 11, i32 noundef %conv482.11.i.i) #8
  %arrayidx481.12.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 42, i32 1, i32 12
  %352 = ptrtoint ptr %arrayidx481.12.i.i to i32
  call void @__asan_load1_noabort(i32 %352)
  %353 = load i8, ptr %arrayidx481.12.i.i, align 1
  %conv482.12.i.i = sext i8 %353 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.83, i32 noundef 12, i32 noundef %conv482.12.i.i) #8
  %arrayidx481.13.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 42, i32 1, i32 13
  %354 = ptrtoint ptr %arrayidx481.13.i.i to i32
  call void @__asan_load1_noabort(i32 %354)
  %355 = load i8, ptr %arrayidx481.13.i.i, align 1
  %conv482.13.i.i = sext i8 %355 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.83, i32 noundef 13, i32 noundef %conv482.13.i.i) #8
  %arrayidx495.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 44, i32 1, i32 0
  %356 = ptrtoint ptr %arrayidx495.i.i to i32
  call void @__asan_load1_noabort(i32 %356)
  %357 = load i8, ptr %arrayidx495.i.i, align 1
  %conv496.i.i = sext i8 %357 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.84, i32 noundef 0, i32 noundef %conv496.i.i) #8
  %arrayidx495.1.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 44, i32 1, i32 1
  %358 = ptrtoint ptr %arrayidx495.1.i.i to i32
  call void @__asan_load1_noabort(i32 %358)
  %359 = load i8, ptr %arrayidx495.1.i.i, align 1
  %conv496.1.i.i = sext i8 %359 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.84, i32 noundef 1, i32 noundef %conv496.1.i.i) #8
  %arrayidx495.2.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 44, i32 1, i32 2
  %360 = ptrtoint ptr %arrayidx495.2.i.i to i32
  call void @__asan_load1_noabort(i32 %360)
  %361 = load i8, ptr %arrayidx495.2.i.i, align 1
  %conv496.2.i.i = sext i8 %361 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.84, i32 noundef 2, i32 noundef %conv496.2.i.i) #8
  %arrayidx495.3.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 44, i32 1, i32 3
  %362 = ptrtoint ptr %arrayidx495.3.i.i to i32
  call void @__asan_load1_noabort(i32 %362)
  %363 = load i8, ptr %arrayidx495.3.i.i, align 1
  %conv496.3.i.i = sext i8 %363 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.84, i32 noundef 3, i32 noundef %conv496.3.i.i) #8
  %arrayidx495.4.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 44, i32 1, i32 4
  %364 = ptrtoint ptr %arrayidx495.4.i.i to i32
  call void @__asan_load1_noabort(i32 %364)
  %365 = load i8, ptr %arrayidx495.4.i.i, align 1
  %conv496.4.i.i = sext i8 %365 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.84, i32 noundef 4, i32 noundef %conv496.4.i.i) #8
  %arrayidx495.5.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 44, i32 1, i32 5
  %366 = ptrtoint ptr %arrayidx495.5.i.i to i32
  call void @__asan_load1_noabort(i32 %366)
  %367 = load i8, ptr %arrayidx495.5.i.i, align 1
  %conv496.5.i.i = sext i8 %367 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.84, i32 noundef 5, i32 noundef %conv496.5.i.i) #8
  %arrayidx495.6.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 44, i32 1, i32 6
  %368 = ptrtoint ptr %arrayidx495.6.i.i to i32
  call void @__asan_load1_noabort(i32 %368)
  %369 = load i8, ptr %arrayidx495.6.i.i, align 1
  %conv496.6.i.i = sext i8 %369 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.84, i32 noundef 6, i32 noundef %conv496.6.i.i) #8
  %arrayidx495.7.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 44, i32 1, i32 7
  %370 = ptrtoint ptr %arrayidx495.7.i.i to i32
  call void @__asan_load1_noabort(i32 %370)
  %371 = load i8, ptr %arrayidx495.7.i.i, align 1
  %conv496.7.i.i = sext i8 %371 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.84, i32 noundef 7, i32 noundef %conv496.7.i.i) #8
  %arrayidx495.8.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 44, i32 1, i32 8
  %372 = ptrtoint ptr %arrayidx495.8.i.i to i32
  call void @__asan_load1_noabort(i32 %372)
  %373 = load i8, ptr %arrayidx495.8.i.i, align 1
  %conv496.8.i.i = sext i8 %373 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.84, i32 noundef 8, i32 noundef %conv496.8.i.i) #8
  %arrayidx495.9.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 44, i32 1, i32 9
  %374 = ptrtoint ptr %arrayidx495.9.i.i to i32
  call void @__asan_load1_noabort(i32 %374)
  %375 = load i8, ptr %arrayidx495.9.i.i, align 1
  %conv496.9.i.i = sext i8 %375 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.84, i32 noundef 9, i32 noundef %conv496.9.i.i) #8
  %arrayidx495.10.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 44, i32 1, i32 10
  %376 = ptrtoint ptr %arrayidx495.10.i.i to i32
  call void @__asan_load1_noabort(i32 %376)
  %377 = load i8, ptr %arrayidx495.10.i.i, align 1
  %conv496.10.i.i = sext i8 %377 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.84, i32 noundef 10, i32 noundef %conv496.10.i.i) #8
  %arrayidx495.11.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 44, i32 1, i32 11
  %378 = ptrtoint ptr %arrayidx495.11.i.i to i32
  call void @__asan_load1_noabort(i32 %378)
  %379 = load i8, ptr %arrayidx495.11.i.i, align 1
  %conv496.11.i.i = sext i8 %379 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.84, i32 noundef 11, i32 noundef %conv496.11.i.i) #8
  %arrayidx495.12.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 44, i32 1, i32 12
  %380 = ptrtoint ptr %arrayidx495.12.i.i to i32
  call void @__asan_load1_noabort(i32 %380)
  %381 = load i8, ptr %arrayidx495.12.i.i, align 1
  %conv496.12.i.i = sext i8 %381 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.84, i32 noundef 12, i32 noundef %conv496.12.i.i) #8
  %arrayidx495.13.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 44, i32 1, i32 13
  %382 = ptrtoint ptr %arrayidx495.13.i.i to i32
  call void @__asan_load1_noabort(i32 %382)
  %383 = load i8, ptr %arrayidx495.13.i.i, align 1
  %conv496.13.i.i = sext i8 %383 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.84, i32 noundef 13, i32 noundef %conv496.13.i.i) #8
  br i1 %tobool8.not.i, label %if.end534.i.i, label %if.end534.thread.i.i

if.end534.thread.i.i:                             ; preds = %for.end440.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %eeprom_regulatory507.i.i = getelementptr inbounds %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 54
  %384 = ptrtoint ptr %eeprom_regulatory507.i.i to i32
  call void @__asan_store1_noabort(i32 %384)
  store i8 0, ptr %eeprom_regulatory507.i.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.85, i32 noundef 0) #8
  %eeprom_tssi519.i.i = getelementptr inbounds %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 25
  %385 = ptrtoint ptr %eeprom_tssi519.i.i to i32
  call void @__asan_store1_noabort(i32 %385)
  store i8 0, ptr %eeprom_tssi519.i.i, align 2
  %arrayidx522.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 25, i32 1
  %386 = ptrtoint ptr %arrayidx522.i.i to i32
  call void @__asan_store1_noabort(i32 %386)
  store i8 0, ptr %arrayidx522.i.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.86, i32 noundef 0, i32 noundef 0) #8
  %eeprom_thermalmeter813.i.i = getelementptr inbounds %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 55
  %387 = ptrtoint ptr %eeprom_thermalmeter813.i.i to i32
  call void @__asan_store1_noabort(i32 %387)
  store i8 18, ptr %eeprom_thermalmeter813.i.i, align 4
  br label %if.then544.i.i

if.end534.i.i:                                    ; preds = %for.end440.i.i
  %arrayidx502.i.i = getelementptr i8, ptr %call7.i.i.i, i32 121
  %388 = ptrtoint ptr %arrayidx502.i.i to i32
  call void @__asan_load1_noabort(i32 %388)
  %389 = load i8, ptr %arrayidx502.i.i, align 1
  %390 = and i8 %389, 7
  %eeprom_regulatory.i.i = getelementptr inbounds %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 54
  %391 = ptrtoint ptr %eeprom_regulatory.i.i to i32
  call void @__asan_store1_noabort(i32 %391)
  store i8 %390, ptr %eeprom_regulatory.i.i, align 1
  %conv510.c795.i.i = zext i8 %390 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.85, i32 noundef %conv510.c795.i.i) #8
  %arrayidx513.i.i = getelementptr i8, ptr %call7.i.i.i, i32 118
  %392 = ptrtoint ptr %arrayidx513.i.i to i32
  call void @__asan_load1_noabort(i32 %392)
  %393 = load i8, ptr %arrayidx513.i.i, align 2
  %eeprom_tssi.i.i = getelementptr inbounds %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 25
  %394 = ptrtoint ptr %eeprom_tssi.i.i to i32
  call void @__asan_store1_noabort(i32 %394)
  store i8 %393, ptr %eeprom_tssi.i.i, align 2
  %arrayidx515.i.i = getelementptr i8, ptr %call7.i.i.i, i32 119
  %395 = ptrtoint ptr %arrayidx515.i.i to i32
  call void @__asan_load1_noabort(i32 %395)
  %396 = load i8, ptr %arrayidx515.i.i, align 1
  %arrayidx517.i.i = getelementptr %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 25, i32 1
  %397 = ptrtoint ptr %arrayidx517.i.i to i32
  call void @__asan_store1_noabort(i32 %397)
  store i8 %396, ptr %arrayidx517.i.i, align 1
  %conv526.c797.i.i = zext i8 %393 to i32
  %conv529.c799.i.i = zext i8 %396 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.86, i32 noundef %conv526.c797.i.i, i32 noundef %conv529.c799.i.i) #8
  %arrayidx532.i.i = getelementptr i8, ptr %call7.i.i.i, i32 120
  %398 = ptrtoint ptr %arrayidx532.i.i to i32
  call void @__asan_load1_noabort(i32 %398)
  %399 = load i8, ptr %arrayidx532.i.i, align 8
  %400 = and i8 %399, 31
  %eeprom_thermalmeter.i.i = getelementptr inbounds %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 55
  %401 = ptrtoint ptr %eeprom_thermalmeter.i.i to i32
  call void @__asan_store1_noabort(i32 %401)
  store i8 %400, ptr %eeprom_thermalmeter.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %400)
  %cmp540.i.i = icmp eq i8 %400, 31
  br i1 %cmp540.i.i, label %if.end534.i.i.if.then544.i.i_crit_edge, label %if.end534.i.i._rtl92ce_read_txpower_info_from_hwpg.exit.i_crit_edge

if.end534.i.i._rtl92ce_read_txpower_info_from_hwpg.exit.i_crit_edge: ; preds = %if.end534.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ce_read_txpower_info_from_hwpg.exit.i

if.end534.i.i.if.then544.i.i_crit_edge:           ; preds = %if.end534.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then544.i.i

if.then544.i.i:                                   ; preds = %if.end534.i.i.if.then544.i.i_crit_edge, %if.end534.thread.i.i
  %eeprom_thermalmeter817.i.i = phi ptr [ %eeprom_thermalmeter813.i.i, %if.end534.thread.i.i ], [ %eeprom_thermalmeter.i.i, %if.end534.i.i.if.then544.i.i_crit_edge ]
  %apk_thermalmeterignore.i.i = getelementptr inbounds %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 62
  %402 = ptrtoint ptr %apk_thermalmeterignore.i.i to i32
  call void @__asan_store1_noabort(i32 %402)
  store i8 1, ptr %apk_thermalmeterignore.i.i, align 2
  br label %_rtl92ce_read_txpower_info_from_hwpg.exit.i

_rtl92ce_read_txpower_info_from_hwpg.exit.i:      ; preds = %if.then544.i.i, %if.end534.i.i._rtl92ce_read_txpower_info_from_hwpg.exit.i_crit_edge
  %eeprom_thermalmeter816.i.i = phi ptr [ %eeprom_thermalmeter.i.i, %if.end534.i.i._rtl92ce_read_txpower_info_from_hwpg.exit.i_crit_edge ], [ %eeprom_thermalmeter817.i.i, %if.then544.i.i ]
  %403 = ptrtoint ptr %eeprom_thermalmeter816.i.i to i32
  call void @__asan_load1_noabort(i32 %403)
  %404 = load i8, ptr %eeprom_thermalmeter816.i.i, align 4
  %thermalmeter.i.i = getelementptr inbounds %struct.rtl_priv, ptr %39, i32 0, i32 17, i32 56
  %405 = ptrtoint ptr %thermalmeter.i.i to i32
  call void @__asan_store1_noabort(i32 %405)
  store i8 %404, ptr %thermalmeter.i.i, align 1
  %conv549.i.i = zext i8 %404 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %39, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.87, i32 noundef %conv549.i.i) #8
  %406 = ptrtoint ptr %autoload_failflag.i to i32
  call void @__asan_load1_noabort(i32 %406)
  %407 = load i8, ptr %autoload_failflag.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %407)
  %tobool10.not.i = icmp eq i8 %407, 0
  %408 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %priv, align 8
  br i1 %tobool10.not.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %_rtl92ce_read_txpower_info_from_hwpg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i63.i = getelementptr i8, ptr %call7.i.i.i, i32 121
  %410 = ptrtoint ptr %arrayidx.i63.i to i32
  call void @__asan_load1_noabort(i32 %410)
  %411 = load i8, ptr %arrayidx.i63.i, align 1
  %412 = lshr i8 %411, 5
  %eeprom_bt_coexist.i.i = getelementptr inbounds %struct.rtl_priv, ptr %409, i32 0, i32 49, i32 4
  %413 = ptrtoint ptr %eeprom_bt_coexist.i.i to i32
  call void @__asan_store1_noabort(i32 %413)
  store i8 %412, ptr %eeprom_bt_coexist.i.i, align 8
  %arrayidx2.i.i = getelementptr i8, ptr %call7.i.i.i, i32 124
  %414 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %414)
  %415 = load i8, ptr %arrayidx2.i.i, align 4
  %and4.i.i = lshr i8 %415, 1
  %416 = and i8 %and4.i.i, 7
  %and9.i.i = and i8 %415, 1
  %and13.i.i = lshr i8 %415, 4
  %417 = and i8 %and13.i.i, 1
  %418 = lshr i8 %415, 5
  %419 = and i8 %418, 1
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %_rtl92ce_read_txpower_info_from_hwpg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %eeprom_bt_coexist23.i.i = getelementptr inbounds %struct.rtl_priv, ptr %409, i32 0, i32 49, i32 4
  %420 = ptrtoint ptr %eeprom_bt_coexist23.i.i to i32
  call void @__asan_store1_noabort(i32 %420)
  store i8 0, ptr %eeprom_bt_coexist23.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %.sink47.i.i = phi i8 [ 0, %if.else.i.i ], [ %416, %if.then.i.i ]
  %and9.sink.i.i = phi i8 [ 0, %if.else.i.i ], [ %and9.i.i, %if.then.i.i ]
  %.sink46.i.i = phi i8 [ 0, %if.else.i.i ], [ %417, %if.then.i.i ]
  %.sink.i.i = phi i8 [ 0, %if.else.i.i ], [ %419, %if.then.i.i ]
  %421 = getelementptr inbounds %struct.rtl_priv, ptr %409, i32 0, i32 49, i32 5
  %422 = ptrtoint ptr %421 to i32
  call void @__asan_store1_noabort(i32 %422)
  store i8 %.sink47.i.i, ptr %421, align 1
  %423 = getelementptr inbounds %struct.rtl_priv, ptr %409, i32 0, i32 49, i32 6
  %424 = ptrtoint ptr %423 to i32
  call void @__asan_store1_noabort(i32 %424)
  store i8 %and9.sink.i.i, ptr %423, align 2
  %425 = getelementptr inbounds %struct.rtl_priv, ptr %409, i32 0, i32 49, i32 7
  %426 = ptrtoint ptr %425 to i32
  call void @__asan_store1_noabort(i32 %426)
  store i8 %.sink46.i.i, ptr %425, align 1
  %427 = getelementptr inbounds %struct.rtl_priv, ptr %409, i32 0, i32 49, i32 8
  %428 = ptrtoint ptr %427 to i32
  call void @__asan_store1_noabort(i32 %428)
  store i8 %.sink.i.i, ptr %427, align 4
  %429 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %priv, align 8
  %eeprom_bt_coexist.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %430, i32 0, i32 49, i32 4
  %431 = ptrtoint ptr %eeprom_bt_coexist.i.i.i to i32
  call void @__asan_load1_noabort(i32 %431)
  %432 = load i8, ptr %eeprom_bt_coexist.i.i.i, align 8
  %bt_coexistence.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %430, i32 0, i32 49, i32 9
  %433 = ptrtoint ptr %bt_coexistence.i.i.i to i32
  call void @__asan_store1_noabort(i32 %433)
  store i8 %432, ptr %bt_coexistence.i.i.i, align 1
  %eeprom_bt_ant_num.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %430, i32 0, i32 49, i32 6
  %434 = ptrtoint ptr %eeprom_bt_ant_num.i.i.i to i32
  call void @__asan_load1_noabort(i32 %434)
  %435 = load i8, ptr %eeprom_bt_ant_num.i.i.i, align 2
  %bt_ant_num.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %430, i32 0, i32 49, i32 10
  %436 = ptrtoint ptr %bt_ant_num.i.i.i to i32
  call void @__asan_store1_noabort(i32 %436)
  store i8 %435, ptr %bt_ant_num.i.i.i, align 2
  %eeprom_bt_type.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %430, i32 0, i32 49, i32 5
  %437 = ptrtoint ptr %eeprom_bt_type.i.i.i to i32
  call void @__asan_load1_noabort(i32 %437)
  %438 = load i8, ptr %eeprom_bt_type.i.i.i, align 1
  %bt_coexist_type.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %430, i32 0, i32 49, i32 11
  %439 = ptrtoint ptr %bt_coexist_type.i.i.i to i32
  call void @__asan_store1_noabort(i32 %439)
  store i8 %438, ptr %bt_coexist_type.i.i.i, align 1
  %reg_bt_iso.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %430, i32 0, i32 49, i32 38
  %440 = ptrtoint ptr %reg_bt_iso.i.i.i to i32
  call void @__asan_load1_noabort(i32 %440)
  %441 = load i8, ptr %reg_bt_iso.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %441)
  %cmp.i.i.i = icmp eq i8 %441, 2
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end.i.i.if.end.i.i.i_crit_edge

if.end.i.i.if.end.i.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %eeprom_bt_ant_isol.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %430, i32 0, i32 49, i32 7
  %442 = ptrtoint ptr %eeprom_bt_ant_isol.i.i.i to i32
  call void @__asan_load1_noabort(i32 %442)
  %443 = load i8, ptr %eeprom_bt_ant_isol.i.i.i, align 1
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.end.i.i.if.end.i.i.i_crit_edge
  %.sink.i.i.i = phi i8 [ %443, %if.then.i.i.i ], [ %441, %if.end.i.i.if.end.i.i.i_crit_edge ]
  %444 = getelementptr inbounds %struct.rtl_priv, ptr %430, i32 0, i32 49, i32 14
  %445 = ptrtoint ptr %444 to i32
  call void @__asan_store1_noabort(i32 %445)
  store i8 %.sink.i.i.i, ptr %444, align 2
  %eeprom_bt_radio_shared.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %430, i32 0, i32 49, i32 8
  %446 = ptrtoint ptr %eeprom_bt_radio_shared.i.i.i to i32
  call void @__asan_load1_noabort(i32 %446)
  %447 = load i8, ptr %eeprom_bt_radio_shared.i.i.i, align 4
  %bt_radio_shared_type.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %430, i32 0, i32 49, i32 17
  %448 = ptrtoint ptr %bt_radio_shared_type.i.i.i to i32
  call void @__asan_store1_noabort(i32 %448)
  store i8 %447, ptr %bt_radio_shared_type.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %432)
  %tobool.not.i.i.i = icmp eq i8 %432, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i.rtl8192ce_read_bt_coexist_info_from_hwpg.exit.i_crit_edge, label %if.then18.i.i.i

if.end.i.i.i.rtl8192ce_read_bt_coexist_info_from_hwpg.exit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8192ce_read_bt_coexist_info_from_hwpg.exit.i

if.then18.i.i.i:                                  ; preds = %if.end.i.i.i
  %reg_bt_sco.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %430, i32 0, i32 49, i32 39
  %449 = ptrtoint ptr %reg_bt_sco.i.i.i to i32
  call void @__asan_load1_noabort(i32 %449)
  %450 = load i8, ptr %reg_bt_sco.i.i.i, align 1
  %switch.tableidx = add i8 %450, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %switch.tableidx)
  %451 = icmp ult i8 %switch.tableidx, 5
  br i1 %451, label %switch.lookup, label %if.then18.i.i.i.if.end58.i.i.i_crit_edge

if.then18.i.i.i.if.end58.i.i.i_crit_edge:         ; preds = %if.then18.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.i.i.i

switch.lookup:                                    ; preds = %if.then18.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %452 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [5 x i8], ptr @switch.table.rtl92ce_read_eeprom_info, i32 0, i32 %452
  %453 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %453)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %if.end58.i.i.i

if.end58.i.i.i:                                   ; preds = %switch.lookup, %if.then18.i.i.i.if.end58.i.i.i_crit_edge
  %.sink88.i.i.i = phi i8 [ %switch.load, %switch.lookup ], [ 5, %if.then18.i.i.i.if.end58.i.i.i_crit_edge ]
  %bt_service33.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %430, i32 0, i32 49, i32 16
  %454 = ptrtoint ptr %bt_service33.i.i.i to i32
  call void @__asan_store1_noabort(i32 %454)
  store i8 %.sink88.i.i.i, ptr %bt_service33.i.i.i, align 4
  %bt_edca_ul.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %430, i32 0, i32 49, i32 23
  %455 = ptrtoint ptr %bt_edca_ul.i.i.i to i32
  call void @__asan_store4_noabort(i32 %455)
  store i32 0, ptr %bt_edca_ul.i.i.i, align 4
  %bt_edca_dl.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %430, i32 0, i32 49, i32 24
  %456 = ptrtoint ptr %bt_edca_dl.i.i.i to i32
  call void @__asan_store4_noabort(i32 %456)
  store i32 0, ptr %bt_edca_dl.i.i.i, align 8
  %bt_rssi_state.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %430, i32 0, i32 49, i32 20
  %457 = ptrtoint ptr %bt_rssi_state.i.i.i to i32
  call void @__asan_store1_noabort(i32 %457)
  store i8 -1, ptr %bt_rssi_state.i.i.i, align 8
  br label %rtl8192ce_read_bt_coexist_info_from_hwpg.exit.i

rtl8192ce_read_bt_coexist_info_from_hwpg.exit.i:  ; preds = %if.end58.i.i.i, %if.end.i.i.i.rtl8192ce_read_bt_coexist_info_from_hwpg.exit.i_crit_edge
  %oem_id.i = getelementptr inbounds %struct.rtl_priv, ptr %33, i32 0, i32 10, i32 12
  %458 = ptrtoint ptr %oem_id.i to i32
  call void @__asan_load1_noabort(i32 %458)
  %459 = load i8, ptr %oem_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %459)
  %cmp.i47 = icmp eq i8 %459, 0
  br i1 %cmp.i47, label %if.then12.i, label %rtl8192ce_read_bt_coexist_info_from_hwpg.exit.i.exit.i_crit_edge

rtl8192ce_read_bt_coexist_info_from_hwpg.exit.i.exit.i_crit_edge: ; preds = %rtl8192ce_read_bt_coexist_info_from_hwpg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.i

if.then12.i:                                      ; preds = %rtl8192ce_read_bt_coexist_info_from_hwpg.exit.i
  %eeprom_oemid.i = getelementptr inbounds %struct.rtl_priv, ptr %33, i32 0, i32 17, i32 14
  %460 = ptrtoint ptr %eeprom_oemid.i to i32
  call void @__asan_load1_noabort(i32 %460)
  %461 = load i8, ptr %eeprom_oemid.i, align 4
  %462 = zext i8 %461 to i64
  call void @__sanitizer_cov_trace_switch(i64 %462, ptr @__sancov_gen_cov_switch_values.102)
  switch i8 %461, label %sw.default.i [
    i8 0, label %sw.bb.i
    i8 4, label %if.then12.i.exit.sink.split.i_crit_edge
    i8 13, label %sw.bb33.i
  ]

if.then12.i.exit.sink.split.i_crit_edge:          ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split.i

sw.bb.i:                                          ; preds = %if.then12.i
  %eeprom_did.i = getelementptr inbounds %struct.rtl_priv, ptr %33, i32 0, i32 17, i32 11
  %463 = ptrtoint ptr %eeprom_did.i to i32
  call void @__asan_load2_noabort(i32 %463)
  %464 = load i16, ptr %eeprom_did.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32394, i16 %464)
  %cmp15.i = icmp eq i16 %464, -32394
  br i1 %cmp15.i, label %if.then17.i, label %sw.bb.i.exit.sink.split.i_crit_edge

sw.bb.i.exit.sink.split.i_crit_edge:              ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split.i

if.then17.i:                                      ; preds = %sw.bb.i
  %eeprom_svid.i = getelementptr inbounds %struct.rtl_priv, ptr %33, i32 0, i32 17, i32 12
  %465 = ptrtoint ptr %eeprom_svid.i to i32
  call void @__asan_load2_noabort(i32 %465)
  %466 = load i16, ptr %eeprom_svid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4156, i16 %466)
  %cmp19.i = icmp eq i16 %466, 4156
  br i1 %cmp19.i, label %land.lhs.true.i48, label %if.then17.i.if.else.i49_crit_edge

if.then17.i.if.else.i49_crit_edge:                ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i49

land.lhs.true.i48:                                ; preds = %if.then17.i
  %eeprom_smid.i = getelementptr inbounds %struct.rtl_priv, ptr %33, i32 0, i32 17, i32 13
  %467 = ptrtoint ptr %eeprom_smid.i to i32
  call void @__asan_load2_noabort(i32 %467)
  %468 = load i16, ptr %eeprom_smid.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5673, i16 %468)
  %cmp22.i = icmp eq i16 %468, 5673
  br i1 %cmp22.i, label %land.lhs.true.i48.exit.sink.split.i_crit_edge, label %land.lhs.true.i48.if.else.i49_crit_edge

land.lhs.true.i48.if.else.i49_crit_edge:          ; preds = %land.lhs.true.i48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i49

land.lhs.true.i48.exit.sink.split.i_crit_edge:    ; preds = %land.lhs.true.i48
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split.i

if.else.i49:                                      ; preds = %land.lhs.true.i48.if.else.i49_crit_edge, %if.then17.i.if.else.i49_crit_edge
  br label %exit.sink.split.i

sw.bb33.i:                                        ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split.i

sw.default.i:                                     ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split.i

exit.sink.split.i:                                ; preds = %sw.default.i, %sw.bb33.i, %if.else.i49, %land.lhs.true.i48.exit.sink.split.i_crit_edge, %sw.bb.i.exit.sink.split.i_crit_edge, %if.then12.i.exit.sink.split.i_crit_edge
  %.sink.i = phi i8 [ 0, %if.else.i49 ], [ 0, %sw.default.i ], [ 19, %sw.bb33.i ], [ 27, %land.lhs.true.i48.exit.sink.split.i_crit_edge ], [ 0, %sw.bb.i.exit.sink.split.i_crit_edge ], [ 9, %if.then12.i.exit.sink.split.i_crit_edge ]
  %469 = ptrtoint ptr %oem_id.i to i32
  call void @__asan_store1_noabort(i32 %469)
  store i8 %.sink.i, ptr %oem_id.i, align 1
  br label %exit.i

exit.i:                                           ; preds = %exit.sink.split.i, %rtl8192ce_read_bt_coexist_info_from_hwpg.exit.i.exit.i_crit_edge, %if.end.i46.exit.i_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %_rtl92ce_read_adapter_info.exit

_rtl92ce_read_adapter_info.exit:                  ; preds = %exit.i, %if.then22._rtl92ce_read_adapter_info.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %params.i) #8
  br label %if.end25

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #11
  br label %if.end25

if.end25:                                         ; preds = %do.end, %_rtl92ce_read_adapter_info.exit
  %470 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %priv, align 8
  %oem_id.i51 = getelementptr inbounds %struct.rtl_priv, ptr %471, i32 0, i32 10, i32 12
  %472 = ptrtoint ptr %oem_id.i51 to i32
  call void @__asan_load1_noabort(i32 %472)
  %473 = load i8, ptr %oem_id.i51, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 27, i8 %473)
  %cond.i = icmp eq i8 %473, 27
  br i1 %cond.i, label %sw.bb.i52, label %if.end25._rtl92ce_hal_customized_behavior.exit_crit_edge

if.end25._rtl92ce_hal_customized_behavior.exit_crit_edge: ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ce_hal_customized_behavior.exit

sw.bb.i52:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %ledctl.i = getelementptr inbounds %struct.rtl_priv, ptr %471, i32 0, i32 18
  %474 = ptrtoint ptr %ledctl.i to i32
  call void @__asan_store1_noabort(i32 %474)
  store i8 1, ptr %ledctl.i, align 8
  br label %_rtl92ce_hal_customized_behavior.exit

_rtl92ce_hal_customized_behavior.exit:            ; preds = %sw.bb.i52, %if.end25._rtl92ce_hal_customized_behavior.exit_crit_edge
  %conv5.i = zext i8 %473 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %471, i64 noundef 4, i32 noundef 3, ptr noundef nonnull @.str.88, i32 noundef %conv5.i) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ce_update_hal_rate_tbl(ptr noundef %hw, ptr nocapture noundef %sta, i8 noundef zeroext %rssi_level, i1 noundef zeroext %update_bw) local_unnamed_addr #0 align 64 {
entry:
  %rate_mask.i = alloca [5 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %useramask = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 14
  %2 = ptrtoint ptr %useramask to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %useramask, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %ht_cap.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3
  %4 = ptrtoint ptr %ht_cap.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ht_cap.i, align 4
  %6 = trunc i16 %5 to i8
  %7 = lshr i8 %6, 1
  %8 = and i8 %7, 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %rate_mask.i) #8
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %wireless_mode.i = getelementptr inbounds %struct.rtl_sta_info, ptr %drv_priv.i, i32 0, i32 4
  %9 = ptrtoint ptr %wireless_mode.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %wireless_mode.i, align 1
  %opmode.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 8
  %11 = ptrtoint ptr %opmode.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %opmode.i, align 8
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %12, label %if.then.if.end34.i_crit_edge [
    i32 2, label %if.then.if.then.i_crit_edge
    i32 7, label %if.then.if.then.i_crit_edge20
    i32 3, label %if.then.if.then31.i_crit_edge
    i32 1, label %if.then.if.then31.i_crit_edge21
  ]

if.then.if.then31.i_crit_edge21:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31.i

if.then.if.then31.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31.i

if.then.if.then.i_crit_edge20:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.if.then.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.if.end34.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

if.then.i:                                        ; preds = %if.then.if.then.i_crit_edge, %if.then.if.then.i_crit_edge20
  %bw_40.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 41
  %14 = ptrtoint ptr %bw_40.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bw_40.i, align 1
  br label %if.end34.i

if.then31.i:                                      ; preds = %if.then.if.then31.i_crit_edge, %if.then.if.then31.i_crit_edge21
  %aid.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 2
  %16 = ptrtoint ptr %aid.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %aid.i, align 2
  %18 = add i16 %17, 1
  %19 = and i16 %18, 255
  %phi.cast.i = zext i16 %19 to i32
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then31.i, %if.then.i, %if.then.if.end34.i_crit_edge
  %curtxbw_40mhz.0.i = phi i8 [ %15, %if.then.i ], [ %8, %if.then31.i ], [ %8, %if.then.if.end34.i_crit_edge ]
  %macid.0.i = phi i32 [ 0, %if.then.i ], [ %phi.cast.i, %if.then31.i ], [ 0, %if.then.if.end34.i_crit_edge ]
  %current_bandtype.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 53
  %20 = ptrtoint ptr %current_bandtype.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %current_bandtype.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp35.i = icmp eq i32 %21, 1
  br i1 %cmp35.i, label %if.then37.i, label %if.else38.i

if.then37.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr [6 x i32], ptr %sta, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 4
  %shl.i = shl i32 %23, 4
  br label %if.end41.i

if.else38.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %sta to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sta, align 4
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.else38.i, %if.then37.i
  %ratr_bitmap.0.i = phi i32 [ %shl.i, %if.then37.i ], [ %25, %if.else38.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp43.i = icmp eq i32 %12, 1
  %spec.select.i = select i1 %cmp43.i, i32 4095, i32 %ratr_bitmap.0.i
  %mcs.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4
  %arrayidx48.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4, i32 0, i32 1
  %26 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx48.i, align 1
  %conv49.i = zext i8 %27 to i32
  %shl50.i = shl nuw nsw i32 %conv49.i, 20
  %28 = ptrtoint ptr %mcs.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %mcs.i, align 1
  %conv55.i = zext i8 %29 to i32
  %shl56.i = shl nuw nsw i32 %conv55.i, 12
  %or.i = or i32 %shl50.i, %spec.select.i
  %or57.i = or i32 %or.i, %shl56.i
  %30 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.104)
  switch i16 %10, label %sw.default.i [
    i16 2, label %sw.bb.i
    i16 4, label %sw.bb65.i
    i16 1, label %sw.bb81.i
    i16 16, label %if.end41.i.sw.bb83.i_crit_edge
    i16 32, label %if.end41.i.sw.bb83.i_crit_edge22
  ]

if.end41.i.sw.bb83.i_crit_edge22:                 ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb83.i

if.end41.i.sw.bb83.i_crit_edge:                   ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb83.i

sw.bb.i:                                          ; preds = %if.end41.i
  %and58.i = and i32 %spec.select.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.i)
  %tobool59.not.i = icmp eq i32 %and58.i, 0
  br i1 %tobool59.not.i, label %if.else62.i, label %if.then60.i

if.then60.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %and61.i = and i32 %spec.select.i, 13
  br label %rtl92ce_update_hal_rate_mask.exit

if.else62.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %and63.i = and i32 %spec.select.i, 15
  br label %rtl92ce_update_hal_rate_mask.exit

sw.bb65.i:                                        ; preds = %if.end41.i
  %31 = zext i8 %rssi_level to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.105)
  switch i8 %rssi_level, label %if.else77.i [
    i8 1, label %if.then69.i
    i8 2, label %if.then75.i
  ]

if.then69.i:                                      ; preds = %sw.bb65.i
  call void @__sanitizer_cov_trace_pc() #10
  %and70.i = and i32 %spec.select.i, 3840
  br label %rtl92ce_update_hal_rate_mask.exit

if.then75.i:                                      ; preds = %sw.bb65.i
  call void @__sanitizer_cov_trace_pc() #10
  %and76.i = and i32 %spec.select.i, 4080
  br label %rtl92ce_update_hal_rate_mask.exit

if.else77.i:                                      ; preds = %sw.bb65.i
  call void @__sanitizer_cov_trace_pc() #10
  %and78.i = and i32 %spec.select.i, 4085
  br label %rtl92ce_update_hal_rate_mask.exit

sw.bb81.i:                                        ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  %and82.i = and i32 %spec.select.i, 4080
  br label %rtl92ce_update_hal_rate_mask.exit

sw.bb83.i:                                        ; preds = %if.end41.i.sw.bb83.i_crit_edge, %if.end41.i.sw.bb83.i_crit_edge22
  %rf_type.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 4
  %32 = ptrtoint ptr %rf_type.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %rf_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %33)
  %switch.i = icmp ult i8 %33, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %curtxbw_40mhz.0.i)
  %tobool93.not.i = icmp eq i8 %curtxbw_40mhz.0.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %rssi_level)
  %switch.selectcmp15.i = icmp eq i8 %rssi_level, 2
  br i1 %switch.i, label %if.then92.i, label %if.else127.i

if.then92.i:                                      ; preds = %sw.bb83.i
  br i1 %tobool93.not.i, label %if.else110.i, label %if.then94.i

if.then94.i:                                      ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.select.i = select i1 %switch.selectcmp15.i, i32 1044480, i32 1044501
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %rssi_level)
  %switch.selectcmp13.i = icmp eq i8 %rssi_level, 1
  %switch.select14.i = select i1 %switch.selectcmp13.i, i32 983040, i32 %switch.select.i
  br label %if.end162.i

if.else110.i:                                     ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.select16.i = select i1 %switch.selectcmp15.i, i32 1044480, i32 1044485
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %rssi_level)
  %switch.selectcmp17.i = icmp eq i8 %rssi_level, 1
  %switch.select18.i = select i1 %switch.selectcmp17.i, i32 983040, i32 %switch.select16.i
  br label %lor.lhs.false167.i

if.else127.i:                                     ; preds = %sw.bb83.i
  br i1 %tobool93.not.i, label %if.else145.i, label %if.then129.i

if.then129.i:                                     ; preds = %if.else127.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.select20.i = select i1 %switch.selectcmp15.i, i32 252702720, i32 252702741
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %rssi_level)
  %switch.selectcmp21.i = icmp eq i8 %rssi_level, 1
  %switch.select22.i = select i1 %switch.selectcmp21.i, i32 252641280, i32 %switch.select20.i
  br label %if.end162.i

if.else145.i:                                     ; preds = %if.else127.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.select24.i = select i1 %switch.selectcmp15.i, i32 252702720, i32 252702725
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %rssi_level)
  %switch.selectcmp25.i = icmp eq i8 %rssi_level, 1
  %switch.select26.i = select i1 %switch.selectcmp25.i, i32 252641280, i32 %switch.select24.i
  br label %lor.lhs.false167.i

if.end162.i:                                      ; preds = %if.then129.i, %if.then94.i
  %.sink.i = phi i32 [ %switch.select14.i, %if.then94.i ], [ %switch.select22.i, %if.then129.i ]
  %and140.i = and i32 %.sink.i, %or57.i
  %34 = and i16 %5, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool166.not.i = icmp eq i16 %34, 0
  br i1 %tobool166.not.i, label %if.end162.i.rtl92ce_update_hal_rate_mask.exit_crit_edge, label %if.end162.i.if.then172.i_crit_edge

if.end162.i.if.then172.i_crit_edge:               ; preds = %if.end162.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then172.i

if.end162.i.rtl92ce_update_hal_rate_mask.exit_crit_edge: ; preds = %if.end162.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl92ce_update_hal_rate_mask.exit

lor.lhs.false167.i:                               ; preds = %if.else145.i, %if.else110.i
  %.sink12.i = phi i32 [ %switch.select18.i, %if.else110.i ], [ %switch.select26.i, %if.else145.i ]
  %and156.i = and i32 %.sink12.i, %or57.i
  %35 = and i16 %5, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool171.not.i = icmp eq i16 %35, 0
  br i1 %tobool171.not.i, label %lor.lhs.false167.i.rtl92ce_update_hal_rate_mask.exit_crit_edge, label %lor.lhs.false167.i.if.then172.i_crit_edge

lor.lhs.false167.i.if.then172.i_crit_edge:        ; preds = %lor.lhs.false167.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then172.i

lor.lhs.false167.i.rtl92ce_update_hal_rate_mask.exit_crit_edge: ; preds = %lor.lhs.false167.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl92ce_update_hal_rate_mask.exit

if.then172.i:                                     ; preds = %lor.lhs.false167.i.if.then172.i_crit_edge, %if.end162.i.if.then172.i_crit_edge
  %ratr_bitmap.26.i = phi i32 [ %and156.i, %lor.lhs.false167.i.if.then172.i_crit_edge ], [ %and140.i, %if.end162.i.if.then172.i_crit_edge ]
  %trunc.i = trunc i32 %macid.0.i to i16
  %36 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.106)
  switch i16 %trunc.i, label %sw.epilog.fold.split.i [
    i16 0, label %if.then172.i.rtl92ce_update_hal_rate_mask.exit_crit_edge
    i16 1, label %if.then181.i
  ]

if.then172.i.rtl92ce_update_hal_rate_mask.exit_crit_edge: ; preds = %if.then172.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl92ce_update_hal_rate_mask.exit

if.then181.i:                                     ; preds = %if.then172.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl92ce_update_hal_rate_mask.exit

sw.default.i:                                     ; preds = %if.end41.i
  %rf_type185.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 4
  %37 = ptrtoint ptr %rf_type185.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %rf_type185.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %38)
  %cmp187.i = icmp eq i8 %38, 1
  br i1 %cmp187.i, label %if.then189.i, label %if.else191.i

if.then189.i:                                     ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #10
  %and190.i = and i32 %or57.i, 1044735
  br label %rtl92ce_update_hal_rate_mask.exit

if.else191.i:                                     ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #10
  %and192.i = and i32 %or57.i, 252702975
  br label %rtl92ce_update_hal_rate_mask.exit

sw.epilog.fold.split.i:                           ; preds = %if.then172.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl92ce_update_hal_rate_mask.exit

rtl92ce_update_hal_rate_mask.exit:                ; preds = %sw.epilog.fold.split.i, %if.else191.i, %if.then189.i, %if.then181.i, %if.then172.i.rtl92ce_update_hal_rate_mask.exit_crit_edge, %lor.lhs.false167.i.rtl92ce_update_hal_rate_mask.exit_crit_edge, %if.end162.i.rtl92ce_update_hal_rate_mask.exit_crit_edge, %sw.bb81.i, %if.else77.i, %if.then75.i, %if.then69.i, %if.else62.i, %if.then60.i
  %ratr_bitmap.3.i = phi i32 [ %and190.i, %if.then189.i ], [ %and192.i, %if.else191.i ], [ %ratr_bitmap.26.i, %if.then181.i ], [ %and156.i, %lor.lhs.false167.i.rtl92ce_update_hal_rate_mask.exit_crit_edge ], [ %and82.i, %sw.bb81.i ], [ %and70.i, %if.then69.i ], [ %and76.i, %if.then75.i ], [ %and78.i, %if.else77.i ], [ %and61.i, %if.then60.i ], [ %and63.i, %if.else62.i ], [ %ratr_bitmap.26.i, %if.then172.i.rtl92ce_update_hal_rate_mask.exit_crit_edge ], [ %ratr_bitmap.26.i, %sw.epilog.fold.split.i ], [ %and140.i, %if.end162.i.rtl92ce_update_hal_rate_mask.exit_crit_edge ]
  %ratr_index.0.i = phi i8 [ 0, %if.then189.i ], [ 0, %if.else191.i ], [ 0, %if.then181.i ], [ 0, %lor.lhs.false167.i.rtl92ce_update_hal_rate_mask.exit_crit_edge ], [ 8, %sw.bb81.i ], [ 4, %if.then69.i ], [ 4, %if.then75.i ], [ 4, %if.else77.i ], [ 6, %if.then60.i ], [ 6, %if.else62.i ], [ 0, %if.then172.i.rtl92ce_update_hal_rate_mask.exit_crit_edge ], [ 0, %sw.epilog.fold.split.i ], [ 0, %if.end162.i.rtl92ce_update_hal_rate_mask.exit_crit_edge ]
  %shortgi.0.off0.i = phi i32 [ 0, %if.then189.i ], [ 0, %if.else191.i ], [ 0, %if.then181.i ], [ 0, %lor.lhs.false167.i.rtl92ce_update_hal_rate_mask.exit_crit_edge ], [ 0, %sw.bb81.i ], [ 0, %if.then69.i ], [ 0, %if.then75.i ], [ 0, %if.else77.i ], [ 0, %if.then60.i ], [ 0, %if.else62.i ], [ 32, %if.then172.i.rtl92ce_update_hal_rate_mask.exit_crit_edge ], [ 0, %sw.epilog.fold.split.i ], [ 0, %if.end162.i.rtl92ce_update_hal_rate_mask.exit_crit_edge ]
  %39 = getelementptr inbounds [5 x i8], ptr %rate_mask.i, i32 0, i32 4
  %ratr_index194.i = getelementptr inbounds %struct.rtl_sta_info, ptr %drv_priv.i, i32 0, i32 5
  %40 = ptrtoint ptr %ratr_index194.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %ratr_index.0.i, ptr %ratr_index194.i, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4194304, i32 noundef 3, ptr noundef nonnull @.str.89, i32 noundef %ratr_bitmap.3.i) #8
  %conv196.i = zext i8 %ratr_index.0.i to i32
  %shl197.i = shl nuw i32 %conv196.i, 28
  %or198.i = or i32 %shl197.i, %ratr_bitmap.3.i
  %41 = ptrtoint ptr %rate_mask.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or198.i, ptr %rate_mask.i, align 4
  %or203.i = or i32 %shortgi.0.off0.i, %macid.0.i
  %42 = trunc i32 %or203.i to i8
  %conv205.i = or i8 %42, -128
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv205.i, ptr %39, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4194304, i32 noundef 3, ptr noundef nonnull @.str.90, i32 noundef %conv196.i, i32 noundef %ratr_bitmap.3.i, ptr noundef nonnull %rate_mask.i) #8
  call void @rtl92c_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 6, i32 noundef 5, ptr noundef nonnull %rate_mask.i) #8
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %rate_mask.i) #8
  br label %if.end

if.else:                                          ; preds = %entry
  %ht_enable.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 38
  %44 = ptrtoint ptr %ht_enable.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ht_enable.i, align 8
  %bw_40.i6 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 41
  %46 = ptrtoint ptr %bw_40.i6 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %bw_40.i6, align 1
  %ht_cap.i7 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3
  %48 = ptrtoint ptr %ht_cap.i7 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %ht_cap.i7, align 4
  %mode.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 42
  %50 = ptrtoint ptr %mode.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %mode.i, align 4
  %current_bandtype.i8 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 53
  %52 = ptrtoint ptr %current_bandtype.i8 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %current_bandtype.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp.i = icmp eq i32 %53, 1
  br i1 %cmp.i, label %if.then.i11, label %if.else.i

if.then.i11:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i9 = getelementptr [6 x i32], ptr %sta, i32 0, i32 1
  %54 = ptrtoint ptr %arrayidx.i9 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i9, align 4
  %shl.i10 = shl i32 %55, 4
  br label %if.end.i

if.else.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %sta to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sta, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i11
  %ratr_value.0.i = phi i32 [ %shl.i10, %if.then.i11 ], [ %57, %if.else.i ]
  %opmode.i12 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 8
  %58 = ptrtoint ptr %opmode.i12 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %opmode.i12, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %cmp16.i = icmp eq i32 %59, 1
  %spec.select.i13 = select i1 %cmp16.i, i32 4095, i32 %ratr_value.0.i
  %mcs.i14 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4
  %arrayidx21.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4, i32 0, i32 1
  %60 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx21.i, align 1
  %conv22.i = zext i8 %61 to i32
  %shl23.i = shl nuw nsw i32 %conv22.i, 20
  %62 = ptrtoint ptr %mcs.i14 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %mcs.i14, align 1
  %conv28.i = zext i8 %63 to i32
  %shl29.i = shl nuw nsw i32 %conv28.i, 12
  %or.i15 = or i32 %shl23.i, %spec.select.i13
  %or30.i = or i32 %or.i15, %shl29.i
  %64 = zext i16 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.107)
  switch i16 %51, label %sw.default.i18 [
    i16 2, label %sw.bb.i16
    i16 4, label %sw.bb38.i
    i16 16, label %if.end.i.sw.bb40.i_crit_edge
    i16 32, label %if.end.i.sw.bb40.i_crit_edge23
  ]

if.end.i.sw.bb40.i_crit_edge23:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb40.i

if.end.i.sw.bb40.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb40.i

sw.bb.i16:                                        ; preds = %if.end.i
  %and31.i = and i32 %spec.select.i13, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  br i1 %tobool32.not.i, label %if.else35.i, label %if.then33.i

if.then33.i:                                      ; preds = %sw.bb.i16
  call void @__sanitizer_cov_trace_pc() #10
  %and34.i = and i32 %spec.select.i13, 13
  br label %sw.epilog.i

if.else35.i:                                      ; preds = %sw.bb.i16
  call void @__sanitizer_cov_trace_pc() #10
  %and36.i = and i32 %spec.select.i13, 15
  br label %sw.epilog.i

sw.bb38.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %and39.i = and i32 %spec.select.i13, 4085
  br label %sw.epilog.i

sw.bb40.i:                                        ; preds = %if.end.i.sw.bb40.i_crit_edge, %if.end.i.sw.bb40.i_crit_edge23
  %rf_type.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 4
  %65 = ptrtoint ptr %rf_type.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %rf_type.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %66)
  %67 = icmp ult i8 %66, 2
  %ratr_mask.0.i = select i1 %67, i32 1044485, i32 252702725
  %and51.i = and i32 %ratr_mask.0.i, %or30.i
  br label %sw.epilog.i

sw.default.i18:                                   ; preds = %if.end.i
  %rf_type.i17 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 4
  %68 = ptrtoint ptr %rf_type.i17 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %rf_type.i17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %69)
  %cmp53.i = icmp eq i8 %69, 1
  br i1 %cmp53.i, label %if.then55.i, label %if.else57.i

if.then55.i:                                      ; preds = %sw.default.i18
  call void @__sanitizer_cov_trace_pc() #10
  %and56.i = and i32 %or30.i, 1044735
  br label %sw.epilog.i

if.else57.i:                                      ; preds = %sw.default.i18
  call void @__sanitizer_cov_trace_pc() #10
  %and58.i19 = and i32 %or30.i, 252702975
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.else57.i, %if.then55.i, %sw.bb40.i, %sw.bb38.i, %if.else35.i, %if.then33.i
  %ratr_value.2.i = phi i32 [ %and56.i, %if.then55.i ], [ %and58.i19, %if.else57.i ], [ %and51.i, %sw.bb40.i ], [ %and39.i, %sw.bb38.i ], [ %and34.i, %if.then33.i ], [ %and36.i, %if.else35.i ]
  %nmode.0.i = phi i8 [ %45, %if.then55.i ], [ %45, %if.else57.i ], [ 1, %sw.bb40.i ], [ %45, %sw.bb38.i ], [ %45, %if.then33.i ], [ %45, %if.else35.i ]
  %bt_coexistence.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 9
  %70 = ptrtoint ptr %bt_coexistence.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %bt_coexistence.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool61.not.i = icmp eq i8 %71, 0
  br i1 %tobool61.not.i, label %sw.epilog.i.if.end89.i_crit_edge, label %land.lhs.true.i

sw.epilog.i.if.end89.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89.i

land.lhs.true.i:                                  ; preds = %sw.epilog.i
  %bt_coexist_type.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 11
  %72 = ptrtoint ptr %bt_coexist_type.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %bt_coexist_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %73)
  %cmp64.i = icmp eq i8 %73, 3
  br i1 %cmp64.i, label %land.lhs.true66.i, label %land.lhs.true.i.if.end89.i_crit_edge

land.lhs.true.i.if.end89.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89.i

land.lhs.true66.i:                                ; preds = %land.lhs.true.i
  %bt_cur_state.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 13
  %74 = ptrtoint ptr %bt_cur_state.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %bt_cur_state.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool69.not.i = icmp eq i8 %75, 0
  br i1 %tobool69.not.i, label %land.lhs.true66.i.if.end89.i_crit_edge, label %land.lhs.true70.i

land.lhs.true66.i.if.end89.i_crit_edge:           ; preds = %land.lhs.true66.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89.i

land.lhs.true70.i:                                ; preds = %land.lhs.true66.i
  %bt_ant_isolation.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 14
  %76 = ptrtoint ptr %bt_ant_isolation.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %bt_ant_isolation.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool73.not.i = icmp eq i8 %77, 0
  br i1 %tobool73.not.i, label %land.lhs.true70.i.if.end89.i_crit_edge, label %land.lhs.true74.i

land.lhs.true70.i.if.end89.i_crit_edge:           ; preds = %land.lhs.true70.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89.i

land.lhs.true74.i:                                ; preds = %land.lhs.true70.i
  %bt_service.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 16
  %78 = ptrtoint ptr %bt_service.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %bt_service.i, align 4
  %80 = zext i8 %79 to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.108)
  switch i8 %79, label %land.lhs.true74.i.if.end89.i_crit_edge [
    i8 0, label %land.lhs.true74.i.if.then85.i_crit_edge
    i8 7, label %land.lhs.true74.i.if.then85.i_crit_edge24
  ]

land.lhs.true74.i.if.then85.i_crit_edge24:        ; preds = %land.lhs.true74.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then85.i

land.lhs.true74.i.if.then85.i_crit_edge:          ; preds = %land.lhs.true74.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then85.i

land.lhs.true74.i.if.end89.i_crit_edge:           ; preds = %land.lhs.true74.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89.i

if.then85.i:                                      ; preds = %land.lhs.true74.i.if.then85.i_crit_edge, %land.lhs.true74.i.if.then85.i_crit_edge24
  %and86.i = and i32 %ratr_value.2.i, 268423104
  br label %if.end89.i

if.end89.i:                                       ; preds = %if.then85.i, %land.lhs.true74.i.if.end89.i_crit_edge, %land.lhs.true70.i.if.end89.i_crit_edge, %land.lhs.true66.i.if.end89.i_crit_edge, %land.lhs.true.i.if.end89.i_crit_edge, %sw.epilog.i.if.end89.i_crit_edge
  %ratr_value.3.i = phi i32 [ %and86.i, %if.then85.i ], [ %ratr_value.2.i, %land.lhs.true74.i.if.end89.i_crit_edge ], [ %ratr_value.2.i, %land.lhs.true70.i.if.end89.i_crit_edge ], [ %ratr_value.2.i, %land.lhs.true66.i.if.end89.i_crit_edge ], [ %ratr_value.2.i, %land.lhs.true.i.if.end89.i_crit_edge ], [ %ratr_value.2.i, %sw.epilog.i.if.end89.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %nmode.0.i)
  %tobool91.not.i = icmp eq i8 %nmode.0.i, 0
  br i1 %tobool91.not.i, label %if.end89.i.if.end125.i_crit_edge, label %land.lhs.true92.i

if.end89.i.if.end125.i_crit_edge:                 ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end125.i

land.lhs.true92.i:                                ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool94.not.i = icmp eq i8 %47, 0
  %81 = and i16 %49, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %81)
  %tobool97.not.i = icmp eq i16 %81, 0
  %or.cond.i = select i1 %tobool94.not.i, i1 true, i1 %tobool97.not.i
  br i1 %or.cond.i, label %lor.lhs.false98.i, label %land.lhs.true92.i.if.then103.i_crit_edge

land.lhs.true92.i.if.then103.i_crit_edge:         ; preds = %land.lhs.true92.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then103.i

lor.lhs.false98.i:                                ; preds = %land.lhs.true92.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool99.not.i = icmp ne i8 %47, 0
  %82 = and i16 %49, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %82)
  %tobool102.not.i = icmp eq i16 %82, 0
  %or.cond168.i = select i1 %tobool99.not.i, i1 true, i1 %tobool102.not.i
  br i1 %or.cond168.i, label %lor.lhs.false98.i.if.end125.i_crit_edge, label %lor.lhs.false98.i.if.then103.i_crit_edge

lor.lhs.false98.i.if.then103.i_crit_edge:         ; preds = %lor.lhs.false98.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then103.i

lor.lhs.false98.i.if.end125.i_crit_edge:          ; preds = %lor.lhs.false98.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end125.i

if.then103.i:                                     ; preds = %lor.lhs.false98.i.if.then103.i_crit_edge, %land.lhs.true92.i.if.then103.i_crit_edge
  %or104.i = or i32 %ratr_value.3.i, 268435456
  br label %if.end125.i

if.end125.i:                                      ; preds = %if.then103.i, %lor.lhs.false98.i.if.end125.i_crit_edge, %if.end89.i.if.end125.i_crit_edge
  %ratr_value.4.i = phi i32 [ %ratr_value.3.i, %lor.lhs.false98.i.if.end125.i_crit_edge ], [ %ratr_value.3.i, %if.end89.i.if.end125.i_crit_edge ], [ %or104.i, %if.then103.i ]
  %write32_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %83 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %84(ptr noundef %1, i32 noundef 1092, i32 noundef %ratr_value.4.i) #8
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %85 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %write_readback.i.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool.not.i.i = icmp eq i8 %88, 0
  br i1 %tobool.not.i.i, label %if.end125.i.rtl92ce_update_hal_rate_table.exit_crit_edge, label %if.then.i.i

if.end125.i.rtl92ce_update_hal_rate_table.exit_crit_edge: ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl92ce_update_hal_rate_table.exit

if.then.i.i:                                      ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %89 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i.i = tail call i32 %90(ptr noundef %1, i32 noundef 1092) #8
  br label %rtl92ce_update_hal_rate_table.exit

rtl92ce_update_hal_rate_table.exit:               ; preds = %if.then.i.i, %if.end125.i.rtl92ce_update_hal_rate_table.exit_crit_edge
  %read32_sync.i171.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %91 = ptrtoint ptr %read32_sync.i171.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %read32_sync.i171.i, align 4
  %call.i172.i = tail call i32 %92(ptr noundef %1, i32 noundef 1092) #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4194304, i32 noundef 3, ptr noundef nonnull @.str.91, i32 noundef %call.i172.i) #8
  br label %if.end

if.end:                                           ; preds = %rtl92ce_update_hal_rate_table.exit, %rtl92ce_update_hal_rate_mask.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ce_update_channel_access_setting(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %sifs_timer = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %sifs_timer) #8
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
  tail call void %7(ptr noundef %hw, i8 noundef zeroext 18, ptr noundef %slot_time) #8
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
  call void %16(ptr noundef %hw, i8 noundef zeroext 14, ptr noundef nonnull %sifs_timer) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %sifs_timer) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl92ce_gpio_radio_on_off_checking(ptr nocapture noundef readonly %hw, ptr nocapture noundef writeonly %valid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %being_init_adapter = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 2
  %2 = ptrtoint ptr %being_init_adapter to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %being_init_adapter, align 4, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %swrf_processing = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 3
  %4 = ptrtoint ptr %swrf_processing to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %swrf_processing, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %do.body7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body7:                                         ; preds = %if.end
  %rf_ps_lock = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 7, i32 5
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_ps_lock) #8
  %rfchange_inprogress = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 2
  %6 = ptrtoint ptr %rfchange_inprogress to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rfchange_inprogress, align 2, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool11.not = icmp eq i8 %7, 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_ps_lock, i32 noundef %call8) #8
  br label %cleanup

if.else:                                          ; preds = %do.body7
  %8 = ptrtoint ptr %rfchange_inprogress to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %rfchange_inprogress, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_ps_lock, i32 noundef %call8) #8
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %9 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %10(ptr noundef %1, i32 noundef 67) #8
  %11 = and i8 %call.i, -9
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %12 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write8_async.i, align 4
  tail call void %13(ptr noundef %1, i32 noundef 67, i8 noundef zeroext %11) #8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %14 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %write_readback.i, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %if.else.rtl_write_byte.exit_crit_edge, label %if.then.i

if.else.rtl_write_byte.exit_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read8_sync.i, align 4
  %call.i124 = tail call zeroext i8 %19(ptr noundef %1, i32 noundef 67) #8
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %if.else.rtl_write_byte.exit_crit_edge
  %20 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read8_sync.i, align 4
  %call.i126 = tail call zeroext i8 %21(ptr noundef %1, i32 noundef 66) #8
  %22 = and i8 %call.i126, 8
  %hwradiooff = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 4
  %23 = ptrtoint ptr %hwradiooff to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %hwradiooff, align 4, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool26.not = icmp eq i8 %24, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool25.not = icmp eq i8 %22, 0
  %or.cond = select i1 %tobool26.not, i1 true, i1 %tobool25.not
  br i1 %or.cond, label %if.else32, label %rtl_write_byte.exit.do.body45_crit_edge

rtl_write_byte.exit.do.body45_crit_edge:          ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body45

if.else32:                                        ; preds = %rtl_write_byte.exit
  %or.cond122 = select i1 %tobool26.not, i1 %tobool25.not, i1 false
  br i1 %or.cond122, label %if.else32.do.body45_crit_edge, label %if.else62

if.else32.do.body45_crit_edge:                    ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body45

do.body45:                                        ; preds = %if.else32.do.body45_crit_edge, %rtl_write_byte.exit.do.body45_crit_edge
  %.str.32.sink = phi ptr [ @.str.31, %rtl_write_byte.exit.do.body45_crit_edge ], [ @.str.32, %if.else32.do.body45_crit_edge ]
  %storemerge = phi i8 [ 0, %rtl_write_byte.exit.do.body45_crit_edge ], [ 1, %if.else32.do.body45_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 3, ptr noundef nonnull %.str.32.sink) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

if.then65:                                        ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #10
  %cur_ps_level = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 19
  %28 = ptrtoint ptr %cur_ps_level to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cur_ps_level, align 4
  %or = or i32 %29, 8
  store i32 %or, ptr %cur_ps_level, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then65, %if.else62.if.end85_crit_edge, %do.body45
  %call77 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_ps_lock) #8
  %30 = ptrtoint ptr %rfchange_inprogress to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %rfchange_inprogress, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_ps_lock, i32 noundef %call77) #8
  %31 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %valid, align 1
  %32 = ptrtoint ptr %hwradiooff to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %hwradiooff, align 4, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool87.not = icmp eq i8 %33, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end85, %if.then12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then12 ], [ %tobool87.not, %if.end85 ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ce_set_key(ptr noundef %hw, i32 noundef %key_index, ptr noundef %p_macaddr, i1 noundef zeroext %is_group, i8 noundef zeroext %enc_algo, i1 noundef zeroext %is_wepkey, i1 noundef zeroext %clear_all) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  br i1 %clear_all, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 3, ptr noundef nonnull @.str.33) #8
  tail call void @rtl_cam_mark_invalid(ptr noundef %hw, i8 noundef zeroext 0) #8
  tail call void @rtl_cam_empty_entry(ptr noundef %hw, i8 noundef zeroext 0) #8
  %arrayidx = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 7, i32 0
  %2 = call ptr @memset(ptr %arrayidx, i32 0, i32 61)
  %arrayidx20 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 8, i32 0
  %3 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %arrayidx20, align 1
  tail call void @rtl_cam_mark_invalid(ptr noundef %hw, i8 noundef zeroext 1) #8
  tail call void @rtl_cam_empty_entry(ptr noundef %hw, i8 noundef zeroext 1) #8
  %arrayidx.1 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 7, i32 1
  %4 = call ptr @memset(ptr %arrayidx.1, i32 0, i32 61)
  %arrayidx20.1 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 8, i32 1
  %5 = ptrtoint ptr %arrayidx20.1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx20.1, align 1
  tail call void @rtl_cam_mark_invalid(ptr noundef %hw, i8 noundef zeroext 2) #8
  tail call void @rtl_cam_empty_entry(ptr noundef %hw, i8 noundef zeroext 2) #8
  %arrayidx.2 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 7, i32 2
  %6 = call ptr @memset(ptr %arrayidx.2, i32 0, i32 61)
  %arrayidx20.2 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 8, i32 2
  %7 = ptrtoint ptr %arrayidx20.2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx20.2, align 1
  tail call void @rtl_cam_mark_invalid(ptr noundef %hw, i8 noundef zeroext 3) #8
  tail call void @rtl_cam_empty_entry(ptr noundef %hw, i8 noundef zeroext 3) #8
  %arrayidx.3 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 7, i32 3
  %8 = call ptr @memset(ptr %arrayidx.3, i32 0, i32 61)
  %arrayidx20.3 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 8, i32 3
  %9 = ptrtoint ptr %arrayidx20.3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx20.3, align 1
  tail call void @rtl_cam_mark_invalid(ptr noundef %hw, i8 noundef zeroext 4) #8
  tail call void @rtl_cam_empty_entry(ptr noundef %hw, i8 noundef zeroext 4) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %switch.hole_check.do.end_crit_edge, %if.else.do.end_crit_edge
  %conv21 = zext i8 %enc_algo to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv21) #11
  br label %sw.epilog

switch.hole_check:                                ; preds = %if.else
  %switch.shifted = lshr i8 27, %switch.tableidx
  %13 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %switch.lobit.not = icmp eq i8 %13, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end_crit_edge, label %switch.lookup

switch.hole_check.do.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  %14 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.rtl92ce_set_key, i32 0, i32 %14
  %15 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %do.end
  %enc_algo.addr.0 = phi i32 [ 2, %do.end ], [ %switch.load, %switch.lookup ]
  br i1 %is_wepkey, label %sw.epilog.if.then31_crit_edge, label %lor.lhs.false

sw.epilog.if.then31_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31

lor.lhs.false:                                    ; preds = %sw.epilog
  %use_defaultkey = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 2
  %16 = ptrtoint ptr %use_defaultkey to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %use_defaultkey, align 2, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool29.not = icmp eq i8 %17, 0
  br i1 %tobool29.not, label %if.else34, label %lor.lhs.false.if.then31_crit_edge

lor.lhs.false.if.then31_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31

if.then31:                                        ; preds = %lor.lhs.false.if.then31_crit_edge, %sw.epilog.if.then31_crit_edge
  %arrayidx32 = getelementptr [4 x [6 x i8]], ptr @rtl92ce_set_key.cam_const_addr, i32 0, i32 %key_index
  br label %if.end59

if.else34:                                        ; preds = %lor.lhs.false
  br i1 %is_group, label %if.else34.if.end59_crit_edge, label %if.else37

if.else34.if.end59_crit_edge:                     ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.else37:                                        ; preds = %if.else34
  %opmode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 8
  %18 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %opmode, align 8
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %19, label %if.else37.if.end59_crit_edge [
    i32 3, label %if.else37.if.then44_crit_edge
    i32 7, label %if.else37.if.then44_crit_edge194
  ]

if.else37.if.then44_crit_edge194:                 ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then44

if.else37.if.then44_crit_edge:                    ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then44

if.else37.if.end59_crit_edge:                     ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then44:                                        ; preds = %if.else37.if.then44_crit_edge, %if.else37.if.then44_crit_edge194
  %call45 = tail call zeroext i8 @rtl_cam_get_free_entry(ptr noundef %hw, ptr noundef %p_macaddr) #8
  %conv46 = zext i8 %call45 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %call45)
  %cmp47 = icmp ugt i8 %call45, 31
  br i1 %cmp47, label %do.end52, label %if.then44.if.end59_crit_edge

if.then44.if.end59_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

do.end52:                                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #11
  br label %cleanup

if.end59:                                         ; preds = %if.then44.if.end59_crit_edge, %if.else37.if.end59_crit_edge, %if.else34.if.end59_crit_edge, %if.then31
  %macaddr.0 = phi ptr [ %arrayidx32, %if.then31 ], [ @rtl92ce_set_key.cam_const_broad, %if.else34.if.end59_crit_edge ], [ %p_macaddr, %if.else37.if.end59_crit_edge ], [ %p_macaddr, %if.then44.if.end59_crit_edge ]
  %entry_id.1 = phi i32 [ %key_index, %if.then31 ], [ %key_index, %if.else34.if.end59_crit_edge ], [ 4, %if.else37.if.end59_crit_edge ], [ %conv46, %if.then44.if.end59_crit_edge ]
  %is_pairwise.0.off0 = phi i1 [ false, %if.then31 ], [ false, %if.else34.if.end59_crit_edge ], [ true, %if.else37.if.end59_crit_edge ], [ true, %if.then44.if.end59_crit_edge ]
  %key_index.addr.0 = phi i32 [ %key_index, %if.then31 ], [ %key_index, %if.else34.if.end59_crit_edge ], [ 0, %if.else37.if.end59_crit_edge ], [ 0, %if.then44.if.end59_crit_edge ]
  %key_len61 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 8
  %arrayidx62 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 8, i32 %key_index.addr.0
  %21 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx62, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp64 = icmp eq i8 %22, 0
  br i1 %cmp64, label %if.then66, label %if.else77

if.then66:                                        ; preds = %if.end59
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 3, ptr noundef nonnull @.str.38, i32 noundef %entry_id.1) #8
  %opmode67 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 8
  %23 = ptrtoint ptr %opmode67 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %opmode67, align 8
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %24, label %if.then66.if.end75_crit_edge [
    i32 3, label %if.then66.if.then74_crit_edge
    i32 7, label %if.then66.if.then74_crit_edge195
  ]

if.then66.if.then74_crit_edge195:                 ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then74

if.then66.if.then74_crit_edge:                    ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then74

if.then66.if.end75_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

if.then74:                                        ; preds = %if.then66.if.then74_crit_edge, %if.then66.if.then74_crit_edge195
  tail call void @rtl_cam_del_entry(ptr noundef %hw, ptr noundef %p_macaddr) #8
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %if.then66.if.end75_crit_edge
  %call76 = tail call i32 @rtl_cam_delete_one_entry(ptr noundef %hw, ptr noundef %p_macaddr, i32 noundef %entry_id.1) #8
  br label %cleanup

if.else77:                                        ; preds = %if.end59
  %26 = ptrtoint ptr %key_len61 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %key_len61, align 1
  %conv81 = zext i8 %27 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 4, ptr noundef nonnull @.str.39, i32 noundef %conv81) #8
  %key_buf83 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 7
  %28 = ptrtoint ptr %key_buf83 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %key_buf83, align 8
  %conv86 = zext i8 %29 to i32
  %arrayidx90 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 7, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx90, align 1
  %conv91 = zext i8 %31 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 4, ptr noundef nonnull @.str.40, i32 noundef %conv86, i32 noundef %conv91) #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 3, ptr noundef nonnull @.str.41) #8
  br i1 %is_pairwise.0.off0, label %if.then93, label %if.else105

if.then93:                                        ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #10
  %pairwise_key = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 9
  %32 = ptrtoint ptr %pairwise_key to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pairwise_key, align 8
  %34 = ptrtoint ptr %key_len61 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %key_len61, align 1
  %conv98 = zext i8 %35 to i32
  tail call void @_rtl_dbg_print_data(ptr noundef %1, i64 noundef 512, i32 noundef 4, ptr noundef nonnull @.str.42, ptr noundef %33, i32 noundef %conv98) #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 3, ptr noundef nonnull @.str.43) #8
  %arrayidx102 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 7, i32 %key_index.addr.0
  %call104 = tail call zeroext i8 @rtl_cam_add_one_entry(ptr noundef %hw, ptr noundef %macaddr.0, i32 noundef %key_index.addr.0, i32 noundef %entry_id.1, i32 noundef %enc_algo.addr.0, i32 noundef 0, ptr noundef %arrayidx102) #8
  br label %cleanup

if.else105:                                       ; preds = %if.else77
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 3, ptr noundef nonnull @.str.44) #8
  %opmode106 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 8
  %36 = ptrtoint ptr %opmode106 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %opmode106, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp107 = icmp eq i32 %37, 1
  br i1 %cmp107, label %if.then109, label %if.else105.if.end117_crit_edge

if.else105.if.end117_crit_edge:                   ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end117

if.then109:                                       ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #10
  %dev_addr = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 19
  %arrayidx114 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 7, i32 %entry_id.1
  %call116 = tail call zeroext i8 @rtl_cam_add_one_entry(ptr noundef %hw, ptr noundef %dev_addr, i32 noundef 0, i32 noundef 4, i32 noundef %enc_algo.addr.0, i32 noundef 0, ptr noundef %arrayidx114) #8
  br label %if.end117

if.end117:                                        ; preds = %if.then109, %if.else105.if.end117_crit_edge
  %arrayidx121 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 7, i32 %entry_id.1
  %call123 = tail call zeroext i8 @rtl_cam_add_one_entry(ptr noundef %hw, ptr noundef %macaddr.0, i32 noundef %key_index.addr.0, i32 noundef %entry_id.1, i32 noundef %enc_algo.addr.0, i32 noundef 0, ptr noundef %arrayidx121) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end117, %if.then93, %if.end75, %do.end52, %if.then
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtl8192ce_read_bt_coexist_info_from_hwpg(ptr nocapture noundef readonly %hw, i1 noundef zeroext %auto_load_fail, ptr nocapture noundef readonly %hwinfo) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  br i1 %auto_load_fail, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr i8, ptr %hwinfo, i32 121
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = lshr i8 %3, 5
  %eeprom_bt_coexist = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 4
  %5 = ptrtoint ptr %eeprom_bt_coexist to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %eeprom_bt_coexist, align 8
  %arrayidx2 = getelementptr i8, ptr %hwinfo, i32 124
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx2, align 1
  %and4 = lshr i8 %7, 1
  %8 = and i8 %and4, 7
  %and9 = and i8 %7, 1
  %and13 = lshr i8 %7, 4
  %9 = and i8 %and13, 1
  %10 = lshr i8 %7, 5
  %11 = and i8 %10, 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %eeprom_bt_coexist23 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 4
  %12 = ptrtoint ptr %eeprom_bt_coexist23 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %eeprom_bt_coexist23, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink47 = phi i8 [ 0, %if.else ], [ %8, %if.then ]
  %and9.sink = phi i8 [ 0, %if.else ], [ %and9, %if.then ]
  %.sink46 = phi i8 [ 0, %if.else ], [ %9, %if.then ]
  %.sink = phi i8 [ 0, %if.else ], [ %11, %if.then ]
  %13 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 5
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %.sink47, ptr %13, align 1
  %15 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 6
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %and9.sink, ptr %15, align 2
  %17 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 7
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %.sink46, ptr %17, align 1
  %19 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %.sink, ptr %19, align 4
  %21 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv, align 8
  %eeprom_bt_coexist.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 49, i32 4
  %23 = ptrtoint ptr %eeprom_bt_coexist.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %eeprom_bt_coexist.i, align 8
  %bt_coexistence.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 49, i32 9
  %25 = ptrtoint ptr %bt_coexistence.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %bt_coexistence.i, align 1
  %eeprom_bt_ant_num.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 49, i32 6
  %26 = ptrtoint ptr %eeprom_bt_ant_num.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %eeprom_bt_ant_num.i, align 2
  %bt_ant_num.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 49, i32 10
  %28 = ptrtoint ptr %bt_ant_num.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %bt_ant_num.i, align 2
  %eeprom_bt_type.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 49, i32 5
  %29 = ptrtoint ptr %eeprom_bt_type.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %eeprom_bt_type.i, align 1
  %bt_coexist_type.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 49, i32 11
  %31 = ptrtoint ptr %bt_coexist_type.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %bt_coexist_type.i, align 1
  %reg_bt_iso.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 49, i32 38
  %32 = ptrtoint ptr %reg_bt_iso.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %reg_bt_iso.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %33)
  %cmp.i = icmp eq i8 %33, 2
  br i1 %cmp.i, label %if.then.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %eeprom_bt_ant_isol.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 49, i32 7
  %34 = ptrtoint ptr %eeprom_bt_ant_isol.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %eeprom_bt_ant_isol.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %.sink.i = phi i8 [ %35, %if.then.i ], [ %33, %if.end.if.end.i_crit_edge ]
  %36 = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 49, i32 14
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %.sink.i, ptr %36, align 2
  %eeprom_bt_radio_shared.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 49, i32 8
  %38 = ptrtoint ptr %eeprom_bt_radio_shared.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %eeprom_bt_radio_shared.i, align 4
  %bt_radio_shared_type.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 49, i32 17
  %40 = ptrtoint ptr %bt_radio_shared_type.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %bt_radio_shared_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i, label %if.end.i.rtl8192ce_bt_var_init.exit_crit_edge, label %if.then18.i

if.end.i.rtl8192ce_bt_var_init.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8192ce_bt_var_init.exit

if.then18.i:                                      ; preds = %if.end.i
  %reg_bt_sco.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 49, i32 39
  %41 = ptrtoint ptr %reg_bt_sco.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %reg_bt_sco.i, align 1
  %switch.tableidx = add i8 %42, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %switch.tableidx)
  %43 = icmp ult i8 %switch.tableidx, 5
  br i1 %43, label %switch.lookup, label %if.then18.i.if.end58.i_crit_edge

if.then18.i.if.end58.i_crit_edge:                 ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.i

switch.lookup:                                    ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #10
  %44 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [5 x i8], ptr @switch.table.rtl8192ce_read_bt_coexist_info_from_hwpg, i32 0, i32 %44
  %45 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %45)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %if.end58.i

if.end58.i:                                       ; preds = %switch.lookup, %if.then18.i.if.end58.i_crit_edge
  %.sink88.i = phi i8 [ %switch.load, %switch.lookup ], [ 5, %if.then18.i.if.end58.i_crit_edge ]
  %bt_service33.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 49, i32 16
  %46 = ptrtoint ptr %bt_service33.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %.sink88.i, ptr %bt_service33.i, align 4
  %bt_edca_ul.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 49, i32 23
  %47 = ptrtoint ptr %bt_edca_ul.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %bt_edca_ul.i, align 4
  %bt_edca_dl.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 49, i32 24
  %48 = ptrtoint ptr %bt_edca_dl.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %bt_edca_dl.i, align 8
  %bt_rssi_state.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 49, i32 20
  %49 = ptrtoint ptr %bt_rssi_state.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -1, ptr %bt_rssi_state.i, align 8
  br label %rtl8192ce_bt_var_init.exit

rtl8192ce_bt_var_init.exit:                       ; preds = %if.end58.i, %if.end.i.rtl8192ce_bt_var_init.exit_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtl8192ce_bt_reg_init(ptr nocapture noundef readonly %hw) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %reg_bt_iso = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 38
  %2 = ptrtoint ptr %reg_bt_iso to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 2, ptr %reg_bt_iso, align 2
  %reg_bt_sco = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 39
  %3 = ptrtoint ptr %reg_bt_sco to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %reg_bt_sco, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtl92ce_suspend(ptr nocapture noundef %hw) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtl92ce_resume(ptr nocapture noundef %hw) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ce_sw_led_on(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ce_sw_led_off(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92c_firmware_selfreset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl_get_hwinfo(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !22, !24, !25, !26, !28, !30, !32, !34, !35, !36, !37, !39, !41, !43, !45, !47, !48, !50, !52, !54, !56, !58, !60, !62, !63, !64, !65, !67, !69, !71, !73, !75, !77, !78, !79, !81, !82, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !102, !103, !104, !106, !108, !110, !112, !114, !116, !117, !118, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188}
!llvm.module.flags = !{!190, !191, !192, !193, !194, !195, !196, !197}
!llvm.ident = !{!198}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 121, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @rtl92ce_get_hw_reg._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @rtl92ce_get_hw_reg._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 186, i32 4}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 226, i32 5}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 241, i32 4}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 290, i32 5}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 329, i32 6}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 346, i32 6}
!18 = !{ptr @rtl92ce_set_hw_reg._entry, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @rtl92ce_set_hw_reg._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 352, i32 4}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 533, i32 3}
!24 = !{ptr @rtl92ce_set_hw_reg._entry.10, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @rtl92ce_set_hw_reg._entry_ptr.12, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 883, i32 2}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 889, i32 3}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 905, i32 2}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 942, i32 3}
!34 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @rtl92ce_hw_init._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @rtl92ce_hw_init._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 949, i32 3}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 1016, i32 3}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 1021, i32 3}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 1030, i32 3}
!45 = distinct !{null, !46, !"__already_done", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 1269, i32 3}
!47 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 1396, i32 2}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 1409, i32 2}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 1735, i32 2}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 1739, i32 3}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 1742, i32 3}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 1746, i32 3}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 1750, i32 3}
!62 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @rtl92ce_read_eeprom_info._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @rtl92ce_read_eeprom_info._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 2034, i32 3}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 2041, i32 3}
!69 = !{ptr @rtl92ce_set_key.cam_const_addr, !70, !"cam_const_addr", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 2078, i32 12}
!71 = !{ptr @rtl92ce_set_key.cam_const_broad, !72, !"cam_const_broad", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 2084, i32 12}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 2093, i32 3}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 2121, i32 4}
!77 = !{ptr @rtl92ce_set_key._entry, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @rtl92ce_set_key._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 2140, i32 7}
!81 = !{ptr @rtl92ce_set_key._entry.35, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @rtl92ce_set_key._entry_ptr.37, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 2153, i32 4}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 2161, i32 4}
!87 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 2164, i32 4}
!89 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 2169, i32 4}
!91 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 2172, i32 5}
!93 = !{ptr @.str.43, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 2178, i32 5}
!95 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 2187, i32 5}
!97 = !{ptr @.str.45, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 693, i32 2}
!99 = !{ptr @.str.46, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 554, i32 4}
!101 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @_rtl92ce_llt_write._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @_rtl92ce_llt_write._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.48, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 1144, i32 3}
!106 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 1149, i32 3}
!108 = !{ptr @.str.50, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 1155, i32 3}
!110 = !{ptr @.str.51, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 1161, i32 3}
!112 = !{ptr @.str.52, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 1166, i32 3}
!114 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 1170, i32 3}
!116 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @_rtl92ce_set_media_status._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @_rtl92ce_set_media_status._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.55, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 1193, i32 3}
!121 = !{ptr @.str.56, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 1073, i32 15}
!123 = !{ptr @.str.57, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 1076, i32 15}
!125 = !{ptr @.str.58, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 1079, i32 15}
!127 = !{ptr @.str.59, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 1082, i32 15}
!129 = !{ptr @.str.60, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 1085, i32 15}
!131 = !{ptr @.str.61, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 1088, i32 15}
!133 = !{ptr @.str.62, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 1091, i32 15}
!135 = !{ptr @.str.63, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 1094, i32 15}
!137 = !{ptr @.str.64, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 1097, i32 15}
!139 = !{ptr @.str.65, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 1100, i32 15}
!141 = !{ptr @.str.66, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 1103, i32 15}
!143 = !{ptr @.str.67, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 1107, i32 2}
!145 = !{ptr @.str.68, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @_rtl92ce_read_chip_version._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @_rtl92ce_read_chip_version._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.70, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 1121, i32 3}
!150 = !{ptr @_rtl92ce_read_chip_version._entry.69, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @_rtl92ce_read_chip_version._entry_ptr.71, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.72, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 1125, i32 2}
!154 = !{ptr @.str.73, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.74, !153, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.75, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 1463, i32 4}
!158 = !{ptr @.str.76, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 1470, i32 4}
!160 = !{ptr @.str.77, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 1477, i32 4}
!162 = !{ptr @.str.78, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 1511, i32 4}
!164 = !{ptr @.str.79, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 1552, i32 4}
!166 = !{ptr @.str.80, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 1556, i32 4}
!168 = !{ptr @.str.81, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 1597, i32 3}
!170 = !{ptr @.str.82, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 1601, i32 3}
!172 = !{ptr @.str.83, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 1605, i32 3}
!174 = !{ptr @.str.84, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 1609, i32 3}
!176 = !{ptr @.str.85, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 1617, i32 2}
!178 = !{ptr @.str.86, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 1627, i32 2}
!180 = !{ptr @.str.87, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 1641, i32 2}
!182 = !{ptr @.str.88, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 1717, i32 2}
!184 = !{ptr @.str.89, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 1965, i32 2}
!186 = !{ptr @.str.90, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 1970, i32 2}
!188 = !{ptr @.str.91, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/hw.c", i32 1842, i32 2}
!190 = !{i32 1, !"wchar_size", i32 2}
!191 = !{i32 1, !"min_enum_size", i32 4}
!192 = !{i32 8, !"branch-target-enforcement", i32 0}
!193 = !{i32 8, !"sign-return-address", i32 0}
!194 = !{i32 8, !"sign-return-address-all", i32 0}
!195 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!196 = !{i32 7, !"uwtable", i32 1}
!197 = !{i32 7, !"frame-pointer", i32 2}
!198 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!199 = !{!"auto-init"}
!200 = !{i8 0, i8 2}
!201 = !{i64 952675}
!202 = !{i64 950188}
!203 = !{!"branch_weights", i32 1, i32 2000}
!204 = !{i64 952960}
!205 = !{!"branch_weights", i32 2000, i32 1}
