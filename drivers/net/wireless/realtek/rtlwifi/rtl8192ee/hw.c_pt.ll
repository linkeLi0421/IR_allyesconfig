; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.wlan_pwr_cfg = type <{ i16, i8, i16, i8, i8, i8 }>
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
%struct.rtl_btc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtl_int = type { i32, i32, i32, i32 }
%struct.txpower_info_2g = type { [4 x [6 x i8]], [4 x [6 x i8]], [4 x [4 x i8]], [4 x [4 x i8]], [4 x [4 x i8]], [4 x [4 x i8]], [4 x [4 x i8]], [4 x [4 x i8]] }
%struct.txpower_info_5g = type { [4 x [14 x i8]], [4 x [4 x i8]], [4 x [4 x i8]], [4 x [4 x i8]], [4 x [4 x i8]], [4 x [4 x i8]] }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.rtl_sta_info = type <{ %struct.list_head, [9 x %struct.rtl_tid_data], %struct.rssi_sta, i8, i16, i8, i8, [6 x i8] }>
%struct.rssi_sta = type { i32, i32 }

@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"switch case %#x not processed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HW_VAR_SLOT_TIME %x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Set HW_VAR_AMPDU_FACTOR:%#x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"HW_VAR_ACM_CTRL acm set failed: eACI is %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"SetHwReg8190pci(): [HW_VAR_ACM_CTRL] Write 0x%X\0A\00", [47 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.5 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"PairwiseEncAlgorithm = %d GroupEncAlgorithm = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"not open hw encryption\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"The SECR-value %x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c" Rtl8192EE hw init\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"92ee dma hang!\0A\00", [16 x i8] zeroinitializer }, align 32
@rtl92ee_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.12, i32 1319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013rtl8192ee: Init MAC failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rtl92ee_hw_init\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c\00", [44 x i8] zeroinitializer }, align 32
@rtl92ee_hw_init._entry_ptr = internal global ptr @rtl92ee_hw_init._entry, section ".printk_index", align 4
@.str.13 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to download FW. Init HW without FW now..\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PA BIAS path A\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PA BIAS path B\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"end of Rtl8192EE hw init %x\0A\00", [35 x i8] zeroinitializer }, align 32
@rtl92ee_set_qos.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rtl8192ee: invalid aci: %d !\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RTL8192ee card disable\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"beacon_interval:%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"add_msr:%x, rm_msr:%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"VersionID = 0x%4x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Boot from EEPROM\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Boot from EFUSE\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Autoload OK\0A\00", [19 x i8] zeroinitializer }, align 32
@rtl92ee_read_eeprom_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.12, i32 2209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013rtl8192ee: Autoload ERR!!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rtl92ee_read_eeprom_info\00", [39 x i8] zeroinitializer }, align 32
@rtl92ee_read_eeprom_info._entry_ptr = internal global ptr @rtl92ee_read_eeprom_info._entry, section ".printk_index", align 4
@rtl92ee_set_key.cam_const_addr = internal global { [4 x [6 x i8]], [40 x i8] } { [4 x [6 x i8]] [[6 x i8] zeroinitializer, [6 x i8] c"\00\00\00\00\00\01", [6 x i8] c"\00\00\00\00\00\02", [6 x i8] c"\00\00\00\00\00\03"], [40 x i8] zeroinitializer }, align 32
@rtl92ee_set_key.cam_const_broad = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\FF\FF\FF\FF\FF\FF", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clear_all\0A\00", [21 x i8] zeroinitializer }, align 32
@rtl92ee_set_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.12, i32 2488, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013rtl8192ee: Can not find free hw security cam entry\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rtl92ee_set_key\00", [16 x i8] zeroinitializer }, align 32
@rtl92ee_set_key._entry_ptr = internal global ptr @rtl92ee_set_key._entry, section ".printk_index", align 4
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"delete one entry, entry_id is %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"add one entry\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"set Pairwise key\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"set group key\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"receive_config=0x%08X, write_into_reg=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.35 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Receive CPWM INT!!! PSState = %X\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Download RSVD page failed!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"CheckPcieDMAHang8192EE(): true!!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ResetPcieInterfaceDMA8192EE()\0A\00", [33 x i8] zeroinitializer }, align 32
@rtl8192E_card_enable_flow = external dso_local global [37 x %struct.wlan_pwr_cfg], align 2
@.str.39 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"init MAC Fail as rtl_hal_pwrseqcmdparsing\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Set Network type to NO LINK!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Set Network type to Ad Hoc!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Set Network type to STA!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Set Network type to AP!\0A\00", [39 x i8] zeroinitializer }, align 32
@_rtl92ee_set_media_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.12, i32 1484, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013rtl8192ee: Network type %d not support!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"_rtl92ee_set_media_status\00", [38 x i8] zeroinitializer }, align 32
@_rtl92ee_set_media_status._entry_ptr = internal global ptr @_rtl92ee_set_media_status._entry, section ".printk_index", align 4
@.str.47 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Set HW_VAR_MEDIA_STATUS: No such media status(%x).\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"POWER OFF adapter\0A\00", [45 x i8] zeroinitializer }, align 32
@rtl8192E_enter_lps_flow = external dso_local global [24 x %struct.wlan_pwr_cfg], align 2
@rtl8192E_card_disable_flow = external dso_local global [37 x %struct.wlan_pwr_cfg], align 2
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Chip RF Type: %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RF_2T2R\00", [24 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RF_1T1R\00", [24 x i8] zeroinitializer }, align 32
@__const._rtl92ee_read_adapter_info.params = private unnamed_addr constant [10 x i32] [i32 33065, i32 214, i32 216, i32 218, i32 220, i32 208, i32 184, i32 196, i32 197, i32 11], align 4
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"EEPROM Customer ID: 0x%2x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"board_type = 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@channel5g = external dso_local local_unnamed_addr global [49 x i8], align 1
@channel5g_80m = external dso_local local_unnamed_addr global [7 x i8], align 1
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"thermalmeter = 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"eeprom_regulatory = 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"hal_ReadPowerValueFromPROM92E(): PROMContent[0x%x]=0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"auto load fail : Use Default value!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"RT Customized ID: 0x%02X\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ratr_bitmap :%x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Rate_index:%x, ratr_val:%x, %x:%x:%x:%x:%x:%x:%x\0A\00", [46 x i8] zeroinitializer }, align 32
@switch.table.rtl92ee_set_key = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 2, i32 1, i32 4, i32 5], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 40, i64 44, i64 65, i64 84, i64 86, i64 92]
@__sancov_gen_cov_switch_values.61 = internal global [28 x i64] [i64 26, i64 8, i64 0, i64 2, i64 3, i64 14, i64 18, i64 19, i64 27, i64 30, i64 32, i64 33, i64 44, i64 53, i64 56, i64 57, i64 60, i64 61, i64 62, i64 64, i64 65, i64 67, i64 68, i64 72, i64 82, i64 84, i64 87, i64 94]
@__sancov_gen_cov_switch_values.62 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.63 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 268435456]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 7]
@__sancov_gen_cov_switch_values.66 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.67 = internal global [5 x i64] [i64 3, i64 2, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.68 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.69 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.70 = internal global [5 x i64] [i64 3, i64 16, i64 2, i64 4, i64 16]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 7]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 7]
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 322, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 450, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 497, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 531, i32 5 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 555, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1110, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1116, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1133, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1284, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1298, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1319, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1327, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1404, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1409, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1424, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1580, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1654, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1713, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1724, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 2194, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 2198, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 2201, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 2205, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 2209, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant [15 x i8] c"cam_const_addr\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 2426, i32 12 }
@___asan_gen_.164 = private unnamed_addr constant [16 x i8] c"cam_const_broad\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 2432, i32 12 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 2441, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 2488, i32 7 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 2501, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 2509, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 2512, i32 5 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 2520, i32 5 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 2606, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 122, i32 5 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 393, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1156, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1170, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 774, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1462, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1468, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1474, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1480, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1484, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1506, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1614, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1444, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 2116, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 2137, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 2080, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 2091, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1791, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1798, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 2175, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 2364, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.270 = private constant [55 x i8] c"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 2375, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant [29 x i8] c"switch.table.rtl92ee_set_key\00", align 1
@llvm.compiler.used = appending global [71 x ptr] [ptr @_rtl92ee_set_media_status._entry, ptr @_rtl92ee_set_media_status._entry_ptr, ptr @rtl92ee_hw_init._entry, ptr @rtl92ee_hw_init._entry_ptr, ptr @rtl92ee_read_eeprom_info._entry, ptr @rtl92ee_read_eeprom_info._entry_ptr, ptr @rtl92ee_set_key._entry, ptr @rtl92ee_set_key._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @rtl92ee_set_key.cam_const_addr, ptr @rtl92ee_set_key.cam_const_broad, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @switch.table.rtl92ee_set_key], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92ee_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92ee_read_eeprom_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92ee_set_key.cam_const_addr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92ee_set_key.cam_const_broad to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92ee_set_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92ee_set_media_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl92ee_set_key to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ee_fw_clk_off_timer_callback(i32 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %data to ptr
  tail call fastcc void @_rtl92ee_set_fw_clock_off(ptr noundef %0, i8 noundef zeroext 1) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ee_get_hw_reg(ptr noundef %hw, i8 noundef zeroext %variable, ptr nocapture noundef writeonly %val) local_unnamed_addr #0 align 64 {
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
  switch i8 %variable, label %sw.default [
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
  store i32 -1, ptr %rfstate, align 4, !annotation !137
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
  %22 = load i8, ptr %fw_current_inpsmode, align 1, !range !138
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

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %variable to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef %conv) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb12, %sw.bb10, %if.end9, %sw.bb4, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ee_set_hw_reg(ptr noundef %hw, i8 noundef zeroext %variable, ptr noundef readonly %val) local_unnamed_addr #0 align 64 {
entry:
  %fw_current_inps.i = alloca i8, align 1
  %rpwm_val.i = alloca i8, align 1
  %e_aci = alloca i8, align 1
  %e_aci139 = alloca i8, align 1
  %array = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = zext i8 %variable to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.61)
  switch i8 %variable, label %sw.default267 [
    i8 0, label %for.cond.preheader
    i8 2, label %sw.bb10
    i8 3, label %for.cond27.preheader
    i8 14, label %sw.bb39
    i8 18, label %sw.bb44
    i8 19, label %sw.bb56
    i8 27, label %sw.bb70
    i8 30, label %sw.bb71
    i8 32, label %sw.bb138
    i8 33, label %sw.bb147
    i8 44, label %sw.bb192
    i8 53, label %sw.bb195
    i8 87, label %sw.bb203
    i8 57, label %sw.bb204
    i8 56, label %sw.bb205
    i8 72, label %sw.bb206
    i8 60, label %sw.bb208
    i8 61, label %sw.bb219
    i8 65, label %sw.bb220
    i8 67, label %sw.bb222
    i8 68, label %sw.bb223
    i8 62, label %sw.bb230
    i8 64, label %sw.bb239
    i8 82, label %sw.bb240
    i8 84, label %sw.bb249
    i8 94, label %sw.bb263
  ]

for.cond27.preheader:                             ; preds = %entry
  %write8_async.i434 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %cfg.i435 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %read8_sync.i438 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %val, align 1
  %5 = ptrtoint ptr %write8_async.i434 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write8_async.i434, align 4
  tail call void %6(ptr noundef %1, i32 noundef 1560, i8 noundef zeroext %4) #8
  %7 = ptrtoint ptr %cfg.i435 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cfg.i435, align 8
  %write_readback.i436 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %write_readback.i436 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %write_readback.i436, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i437 = icmp eq i8 %10, 0
  br i1 %tobool.not.i437, label %for.cond27.preheader.rtl_write_byte.exit441_crit_edge, label %if.then.i440

for.cond27.preheader.rtl_write_byte.exit441_crit_edge: ; preds = %for.cond27.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit441

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
  %18 = load i8, ptr %write_readback.i, align 1, !range !138
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
  %28 = load i8, ptr %write_readback.i.1, align 1, !range !138
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
  %38 = load i8, ptr %write_readback.i.2, align 1, !range !138
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
  %48 = load i8, ptr %write_readback.i.3, align 1, !range !138
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
  %58 = load i8, ptr %write_readback.i.4, align 1, !range !138
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
  %68 = load i8, ptr %write_readback.i.5, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.not.i.5 = icmp eq i8 %68, 0
  br i1 %tobool.not.i.5, label %rtl_write_byte.exit.4.sw.epilog269_crit_edge, label %if.then.i.5

rtl_write_byte.exit.4.sw.epilog269_crit_edge:     ; preds = %rtl_write_byte.exit.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog269

if.then.i.5:                                      ; preds = %rtl_write_byte.exit.4
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %read8_sync.i, align 4
  %call.i.5 = tail call zeroext i8 %70(ptr noundef %1, i32 noundef 1557) #8
  br label %sw.epilog269

sw.bb10:                                          ; preds = %entry
  %71 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %val, align 2
  %73 = and i16 %72, 336
  %74 = trunc i16 %73 to i8
  %conv22 = or i8 %74, 13
  %write8_async.i418 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %75 = ptrtoint ptr %write8_async.i418 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %write8_async.i418, align 4
  tail call void %76(ptr noundef %1, i32 noundef 1088, i8 noundef zeroext %conv22) #8
  %cfg.i419 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %77 = ptrtoint ptr %cfg.i419 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cfg.i419, align 8
  %write_readback.i420 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %write_readback.i420 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %write_readback.i420, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool.not.i421 = icmp eq i8 %80, 0
  br i1 %tobool.not.i421, label %sw.bb10.rtl_write_byte.exit425_crit_edge, label %if.then.i424

sw.bb10.rtl_write_byte.exit425_crit_edge:         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit425

if.then.i424:                                     ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i422 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %81 = ptrtoint ptr %read8_sync.i422 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %read8_sync.i422, align 4
  %call.i423 = tail call zeroext i8 %82(ptr noundef %1, i32 noundef 1088) #8
  br label %rtl_write_byte.exit425

rtl_write_byte.exit425:                           ; preds = %if.then.i424, %sw.bb10.rtl_write_byte.exit425_crit_edge
  %83 = lshr i16 %73, 8
  %conv25 = trunc i16 %83 to i8
  %84 = ptrtoint ptr %write8_async.i418 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %write8_async.i418, align 4
  tail call void %85(ptr noundef %1, i32 noundef 1089, i8 noundef zeroext %conv25) #8
  %86 = ptrtoint ptr %cfg.i419 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %cfg.i419, align 8
  %write_readback.i428 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %write_readback.i428 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %write_readback.i428, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool.not.i429 = icmp eq i8 %89, 0
  br i1 %tobool.not.i429, label %rtl_write_byte.exit425.sw.epilog269_crit_edge, label %if.then.i432

rtl_write_byte.exit425.sw.epilog269_crit_edge:    ; preds = %rtl_write_byte.exit425
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog269

if.then.i432:                                     ; preds = %rtl_write_byte.exit425
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i430 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %90 = ptrtoint ptr %read8_sync.i430 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %read8_sync.i430, align 4
  %call.i431 = tail call zeroext i8 %91(ptr noundef %1, i32 noundef 1089) #8
  br label %sw.epilog269

if.then.i440:                                     ; preds = %for.cond27.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %92 = ptrtoint ptr %read8_sync.i438 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %read8_sync.i438, align 4
  %call.i439 = tail call zeroext i8 %93(ptr noundef %1, i32 noundef 1560) #8
  br label %rtl_write_byte.exit441

rtl_write_byte.exit441:                           ; preds = %if.then.i440, %for.cond27.preheader.rtl_write_byte.exit441_crit_edge
  %arrayidx35.1 = getelementptr i8, ptr %val, i32 1
  %94 = ptrtoint ptr %arrayidx35.1 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx35.1, align 1
  %96 = ptrtoint ptr %write8_async.i434 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %write8_async.i434, align 4
  tail call void %97(ptr noundef %1, i32 noundef 1561, i8 noundef zeroext %95) #8
  %98 = ptrtoint ptr %cfg.i435 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %cfg.i435, align 8
  %write_readback.i436.1 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %write_readback.i436.1 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %write_readback.i436.1, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool.not.i437.1 = icmp eq i8 %101, 0
  br i1 %tobool.not.i437.1, label %rtl_write_byte.exit441.rtl_write_byte.exit441.1_crit_edge, label %if.then.i440.1

rtl_write_byte.exit441.rtl_write_byte.exit441.1_crit_edge: ; preds = %rtl_write_byte.exit441
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit441.1

if.then.i440.1:                                   ; preds = %rtl_write_byte.exit441
  call void @__sanitizer_cov_trace_pc() #10
  %102 = ptrtoint ptr %read8_sync.i438 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %read8_sync.i438, align 4
  %call.i439.1 = tail call zeroext i8 %103(ptr noundef %1, i32 noundef 1561) #8
  br label %rtl_write_byte.exit441.1

rtl_write_byte.exit441.1:                         ; preds = %if.then.i440.1, %rtl_write_byte.exit441.rtl_write_byte.exit441.1_crit_edge
  %arrayidx35.2 = getelementptr i8, ptr %val, i32 2
  %104 = ptrtoint ptr %arrayidx35.2 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx35.2, align 1
  %106 = ptrtoint ptr %write8_async.i434 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %write8_async.i434, align 4
  tail call void %107(ptr noundef %1, i32 noundef 1562, i8 noundef zeroext %105) #8
  %108 = ptrtoint ptr %cfg.i435 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %cfg.i435, align 8
  %write_readback.i436.2 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %write_readback.i436.2 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %write_readback.i436.2, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool.not.i437.2 = icmp eq i8 %111, 0
  br i1 %tobool.not.i437.2, label %rtl_write_byte.exit441.1.rtl_write_byte.exit441.2_crit_edge, label %if.then.i440.2

rtl_write_byte.exit441.1.rtl_write_byte.exit441.2_crit_edge: ; preds = %rtl_write_byte.exit441.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit441.2

if.then.i440.2:                                   ; preds = %rtl_write_byte.exit441.1
  call void @__sanitizer_cov_trace_pc() #10
  %112 = ptrtoint ptr %read8_sync.i438 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %read8_sync.i438, align 4
  %call.i439.2 = tail call zeroext i8 %113(ptr noundef %1, i32 noundef 1562) #8
  br label %rtl_write_byte.exit441.2

rtl_write_byte.exit441.2:                         ; preds = %if.then.i440.2, %rtl_write_byte.exit441.1.rtl_write_byte.exit441.2_crit_edge
  %arrayidx35.3 = getelementptr i8, ptr %val, i32 3
  %114 = ptrtoint ptr %arrayidx35.3 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx35.3, align 1
  %116 = ptrtoint ptr %write8_async.i434 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %write8_async.i434, align 4
  tail call void %117(ptr noundef %1, i32 noundef 1563, i8 noundef zeroext %115) #8
  %118 = ptrtoint ptr %cfg.i435 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %cfg.i435, align 8
  %write_readback.i436.3 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %write_readback.i436.3 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %write_readback.i436.3, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool.not.i437.3 = icmp eq i8 %121, 0
  br i1 %tobool.not.i437.3, label %rtl_write_byte.exit441.2.rtl_write_byte.exit441.3_crit_edge, label %if.then.i440.3

rtl_write_byte.exit441.2.rtl_write_byte.exit441.3_crit_edge: ; preds = %rtl_write_byte.exit441.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit441.3

if.then.i440.3:                                   ; preds = %rtl_write_byte.exit441.2
  call void @__sanitizer_cov_trace_pc() #10
  %122 = ptrtoint ptr %read8_sync.i438 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %read8_sync.i438, align 4
  %call.i439.3 = tail call zeroext i8 %123(ptr noundef %1, i32 noundef 1563) #8
  br label %rtl_write_byte.exit441.3

rtl_write_byte.exit441.3:                         ; preds = %if.then.i440.3, %rtl_write_byte.exit441.2.rtl_write_byte.exit441.3_crit_edge
  %arrayidx35.4 = getelementptr i8, ptr %val, i32 4
  %124 = ptrtoint ptr %arrayidx35.4 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx35.4, align 1
  %126 = ptrtoint ptr %write8_async.i434 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %write8_async.i434, align 4
  tail call void %127(ptr noundef %1, i32 noundef 1564, i8 noundef zeroext %125) #8
  %128 = ptrtoint ptr %cfg.i435 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %cfg.i435, align 8
  %write_readback.i436.4 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %129, i32 0, i32 1
  %130 = ptrtoint ptr %write_readback.i436.4 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %write_readback.i436.4, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool.not.i437.4 = icmp eq i8 %131, 0
  br i1 %tobool.not.i437.4, label %rtl_write_byte.exit441.3.rtl_write_byte.exit441.4_crit_edge, label %if.then.i440.4

rtl_write_byte.exit441.3.rtl_write_byte.exit441.4_crit_edge: ; preds = %rtl_write_byte.exit441.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit441.4

if.then.i440.4:                                   ; preds = %rtl_write_byte.exit441.3
  call void @__sanitizer_cov_trace_pc() #10
  %132 = ptrtoint ptr %read8_sync.i438 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %read8_sync.i438, align 4
  %call.i439.4 = tail call zeroext i8 %133(ptr noundef %1, i32 noundef 1564) #8
  br label %rtl_write_byte.exit441.4

rtl_write_byte.exit441.4:                         ; preds = %if.then.i440.4, %rtl_write_byte.exit441.3.rtl_write_byte.exit441.4_crit_edge
  %arrayidx35.5 = getelementptr i8, ptr %val, i32 5
  %134 = ptrtoint ptr %arrayidx35.5 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx35.5, align 1
  %136 = ptrtoint ptr %write8_async.i434 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %write8_async.i434, align 4
  tail call void %137(ptr noundef %1, i32 noundef 1565, i8 noundef zeroext %135) #8
  %138 = ptrtoint ptr %cfg.i435 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %cfg.i435, align 8
  %write_readback.i436.5 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %139, i32 0, i32 1
  %140 = ptrtoint ptr %write_readback.i436.5 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %write_readback.i436.5, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool.not.i437.5 = icmp eq i8 %141, 0
  br i1 %tobool.not.i437.5, label %rtl_write_byte.exit441.4.sw.epilog269_crit_edge, label %if.then.i440.5

rtl_write_byte.exit441.4.sw.epilog269_crit_edge:  ; preds = %rtl_write_byte.exit441.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog269

if.then.i440.5:                                   ; preds = %rtl_write_byte.exit441.4
  call void @__sanitizer_cov_trace_pc() #10
  %142 = ptrtoint ptr %read8_sync.i438 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %read8_sync.i438, align 4
  %call.i439.5 = tail call zeroext i8 %143(ptr noundef %1, i32 noundef 1565) #8
  br label %sw.epilog269

sw.bb39:                                          ; preds = %entry
  %144 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %val, align 1
  %write8_async.i442 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %146 = ptrtoint ptr %write8_async.i442 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %write8_async.i442, align 4
  tail call void %147(ptr noundef %1, i32 noundef 1301, i8 noundef zeroext %145) #8
  %cfg.i443 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %148 = ptrtoint ptr %cfg.i443 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %cfg.i443, align 8
  %write_readback.i444 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %149, i32 0, i32 1
  %150 = ptrtoint ptr %write_readback.i444 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %write_readback.i444, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %tobool.not.i445 = icmp eq i8 %151, 0
  br i1 %tobool.not.i445, label %sw.bb39.rtl_write_byte.exit449_crit_edge, label %if.then.i448

sw.bb39.rtl_write_byte.exit449_crit_edge:         ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit449

if.then.i448:                                     ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i446 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %152 = ptrtoint ptr %read8_sync.i446 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %read8_sync.i446, align 4
  %call.i447 = tail call zeroext i8 %153(ptr noundef %1, i32 noundef 1301) #8
  br label %rtl_write_byte.exit449

rtl_write_byte.exit449:                           ; preds = %if.then.i448, %sw.bb39.rtl_write_byte.exit449_crit_edge
  %arrayidx41 = getelementptr i8, ptr %val, i32 1
  %154 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %arrayidx41, align 1
  %156 = ptrtoint ptr %write8_async.i442 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %write8_async.i442, align 4
  tail call void %157(ptr noundef %1, i32 noundef 1303, i8 noundef zeroext %155) #8
  %158 = ptrtoint ptr %cfg.i443 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %cfg.i443, align 8
  %write_readback.i452 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %159, i32 0, i32 1
  %160 = ptrtoint ptr %write_readback.i452 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %write_readback.i452, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool.not.i453 = icmp eq i8 %161, 0
  br i1 %tobool.not.i453, label %rtl_write_byte.exit449.rtl_write_byte.exit457_crit_edge, label %if.then.i456

rtl_write_byte.exit449.rtl_write_byte.exit457_crit_edge: ; preds = %rtl_write_byte.exit449
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit457

if.then.i456:                                     ; preds = %rtl_write_byte.exit449
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i454 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %162 = ptrtoint ptr %read8_sync.i454 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %read8_sync.i454, align 4
  %call.i455 = tail call zeroext i8 %163(ptr noundef %1, i32 noundef 1303) #8
  br label %rtl_write_byte.exit457

rtl_write_byte.exit457:                           ; preds = %if.then.i456, %rtl_write_byte.exit449.rtl_write_byte.exit457_crit_edge
  %164 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %val, align 1
  %166 = ptrtoint ptr %write8_async.i442 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %write8_async.i442, align 4
  tail call void %167(ptr noundef %1, i32 noundef 1065, i8 noundef zeroext %165) #8
  %168 = ptrtoint ptr %cfg.i443 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %cfg.i443, align 8
  %write_readback.i460 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %169, i32 0, i32 1
  %170 = ptrtoint ptr %write_readback.i460 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %write_readback.i460, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %171)
  %tobool.not.i461 = icmp eq i8 %171, 0
  br i1 %tobool.not.i461, label %rtl_write_byte.exit457.rtl_write_byte.exit465_crit_edge, label %if.then.i464

rtl_write_byte.exit457.rtl_write_byte.exit465_crit_edge: ; preds = %rtl_write_byte.exit457
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit465

if.then.i464:                                     ; preds = %rtl_write_byte.exit457
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i462 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %172 = ptrtoint ptr %read8_sync.i462 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %read8_sync.i462, align 4
  %call.i463 = tail call zeroext i8 %173(ptr noundef %1, i32 noundef 1065) #8
  br label %rtl_write_byte.exit465

rtl_write_byte.exit465:                           ; preds = %if.then.i464, %rtl_write_byte.exit457.rtl_write_byte.exit465_crit_edge
  %174 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %val, align 1
  %176 = ptrtoint ptr %write8_async.i442 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %write8_async.i442, align 4
  tail call void %177(ptr noundef %1, i32 noundef 1595, i8 noundef zeroext %175) #8
  %178 = ptrtoint ptr %cfg.i443 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %cfg.i443, align 8
  %write_readback.i468 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %179, i32 0, i32 1
  %180 = ptrtoint ptr %write_readback.i468 to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %write_readback.i468, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %181)
  %tobool.not.i469 = icmp eq i8 %181, 0
  br i1 %tobool.not.i469, label %rtl_write_byte.exit465.rtl_write_byte.exit473_crit_edge, label %if.then.i472

rtl_write_byte.exit465.rtl_write_byte.exit473_crit_edge: ; preds = %rtl_write_byte.exit465
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit473

if.then.i472:                                     ; preds = %rtl_write_byte.exit465
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i470 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %182 = ptrtoint ptr %read8_sync.i470 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %read8_sync.i470, align 4
  %call.i471 = tail call zeroext i8 %183(ptr noundef %1, i32 noundef 1595) #8
  br label %rtl_write_byte.exit473

rtl_write_byte.exit473:                           ; preds = %if.then.i472, %rtl_write_byte.exit465.rtl_write_byte.exit473_crit_edge
  %ht_enable = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 38
  %184 = ptrtoint ptr %ht_enable to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %ht_enable, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %185)
  %tobool.not = icmp eq i8 %185, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %rtl_write_byte.exit473
  %write16_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %186 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %write16_async.i, align 4
  tail call void %187(ptr noundef %1, i32 noundef 1598, i16 noundef zeroext 3598) #8
  %188 = ptrtoint ptr %cfg.i443 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %cfg.i443, align 8
  %write_readback.i475 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %189, i32 0, i32 1
  %190 = ptrtoint ptr %write_readback.i475 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %write_readback.i475, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %191)
  %tobool.not.i476 = icmp eq i8 %191, 0
  br i1 %tobool.not.i476, label %if.then.sw.epilog269_crit_edge, label %if.then.i478

if.then.sw.epilog269_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog269

if.then.i478:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %192 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %read16_sync.i, align 4
  %call.i477 = tail call zeroext i16 %193(ptr noundef %1, i32 noundef 1598) #8
  br label %sw.epilog269

if.else:                                          ; preds = %rtl_write_byte.exit473
  %194 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %val, align 2
  %write16_async.i479 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %196 = ptrtoint ptr %write16_async.i479 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %write16_async.i479, align 4
  tail call void %197(ptr noundef %1, i32 noundef 1598, i16 noundef zeroext %195) #8
  %198 = ptrtoint ptr %cfg.i443 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %cfg.i443, align 8
  %write_readback.i481 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %199, i32 0, i32 1
  %200 = ptrtoint ptr %write_readback.i481 to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %write_readback.i481, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %201)
  %tobool.not.i482 = icmp eq i8 %201, 0
  br i1 %tobool.not.i482, label %if.else.sw.epilog269_crit_edge, label %if.then.i485

if.else.sw.epilog269_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog269

if.then.i485:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i483 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %202 = ptrtoint ptr %read16_sync.i483 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %read16_sync.i483, align 4
  %call.i484 = tail call zeroext i16 %203(ptr noundef %1, i32 noundef 1598) #8
  br label %sw.epilog269

sw.bb44:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %e_aci) #8
  %204 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %val, align 1
  %conv46 = zext i8 %205 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 32, i32 noundef 5, ptr noundef nonnull @.str.1, i32 noundef %conv46) #8
  %206 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %val, align 1
  %write8_async.i487 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %208 = ptrtoint ptr %write8_async.i487 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %write8_async.i487, align 4
  tail call void %209(ptr noundef %1, i32 noundef 1307, i8 noundef zeroext %207) #8
  %cfg.i488 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %210 = ptrtoint ptr %cfg.i488 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %cfg.i488, align 8
  %write_readback.i489 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %211, i32 0, i32 1
  %212 = ptrtoint ptr %write_readback.i489 to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %write_readback.i489, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %213)
  %tobool.not.i490 = icmp eq i8 %213, 0
  br i1 %tobool.not.i490, label %sw.bb44.rtl_write_byte.exit494_crit_edge, label %if.then.i493

sw.bb44.rtl_write_byte.exit494_crit_edge:         ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit494

if.then.i493:                                     ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i491 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %214 = ptrtoint ptr %read8_sync.i491 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %read8_sync.i491, align 4
  %call.i492 = tail call zeroext i8 %215(ptr noundef %1, i32 noundef 1307) #8
  br label %rtl_write_byte.exit494

rtl_write_byte.exit494:                           ; preds = %if.then.i493, %sw.bb44.rtl_write_byte.exit494_crit_edge
  %216 = ptrtoint ptr %e_aci to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 0, ptr %e_aci, align 1
  br label %for.body52

for.body52:                                       ; preds = %for.body52.for.body52_crit_edge, %rtl_write_byte.exit494
  %217 = ptrtoint ptr %cfg.i488 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %cfg.i488, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %218, i32 0, i32 4
  %219 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %ops, align 4
  %set_hw_reg = getelementptr inbounds %struct.rtl_hal_ops, ptr %220, i32 0, i32 20
  %221 = ptrtoint ptr %set_hw_reg to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %set_hw_reg, align 4
  call void %222(ptr noundef %hw, i8 noundef zeroext 32, ptr noundef nonnull %e_aci) #8
  %223 = ptrtoint ptr %e_aci to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %e_aci, align 1
  %inc54 = add i8 %224, 1
  store i8 %inc54, ptr %e_aci, align 1
  %cmp50 = icmp ult i8 %inc54, 4
  br i1 %cmp50, label %for.body52.for.body52_crit_edge, label %for.end55

for.body52.for.body52_crit_edge:                  ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body52

for.end55:                                        ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %e_aci) #8
  br label %sw.epilog269

sw.bb56:                                          ; preds = %entry
  %225 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %226)
  %tobool57 = icmp ne i8 %226, 0
  %conv58 = zext i1 %tobool57 to i8
  %cur_40_prime_sc = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 46
  %227 = ptrtoint ptr %cur_40_prime_sc to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %cur_40_prime_sc, align 1
  %shl = shl i8 %228, 5
  %229 = or i8 %shl, -128
  %spec.select = select i1 %tobool57, i8 %229, i8 %shl
  %write8_async.i495 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %230 = ptrtoint ptr %write8_async.i495 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %write8_async.i495, align 4
  tail call void %231(ptr noundef %1, i32 noundef 1090, i8 noundef zeroext %spec.select) #8
  %cfg.i496 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %232 = ptrtoint ptr %cfg.i496 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %cfg.i496, align 8
  %write_readback.i497 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %233, i32 0, i32 1
  %234 = ptrtoint ptr %write_readback.i497 to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %write_readback.i497, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %235)
  %tobool.not.i498 = icmp eq i8 %235, 0
  br i1 %tobool.not.i498, label %sw.bb56.rtl_write_byte.exit502_crit_edge, label %if.then.i501

sw.bb56.rtl_write_byte.exit502_crit_edge:         ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit502

if.then.i501:                                     ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i499 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %236 = ptrtoint ptr %read8_sync.i499 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %read8_sync.i499, align 4
  %call.i500 = tail call zeroext i8 %237(ptr noundef %1, i32 noundef 1090) #8
  br label %rtl_write_byte.exit502

rtl_write_byte.exit502:                           ; preds = %if.then.i501, %sw.bb56.rtl_write_byte.exit502_crit_edge
  %short_preamble69 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 44
  %238 = ptrtoint ptr %short_preamble69 to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 %conv58, ptr %short_preamble69, align 1
  br label %sw.epilog269

sw.bb70:                                          ; preds = %entry
  %239 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %val, align 1
  %write8_async.i503 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %241 = ptrtoint ptr %write8_async.i503 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %write8_async.i503, align 4
  tail call void %242(ptr noundef %1, i32 noundef 1664, i8 noundef zeroext %240) #8
  %cfg.i504 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %243 = ptrtoint ptr %cfg.i504 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %cfg.i504, align 8
  %write_readback.i505 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %244, i32 0, i32 1
  %245 = ptrtoint ptr %write_readback.i505 to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %write_readback.i505, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %246)
  %tobool.not.i506 = icmp eq i8 %246, 0
  br i1 %tobool.not.i506, label %sw.bb70.sw.epilog269_crit_edge, label %if.then.i509

sw.bb70.sw.epilog269_crit_edge:                   ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog269

if.then.i509:                                     ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i507 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %247 = ptrtoint ptr %read8_sync.i507 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %read8_sync.i507, align 4
  %call.i508 = tail call zeroext i8 %248(ptr noundef %1, i32 noundef 1664) #8
  br label %sw.epilog269

sw.bb71:                                          ; preds = %entry
  %249 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %250)
  %cmp74 = icmp ult i8 %250, 4
  br i1 %cmp74, label %if.then76, label %sw.bb71.sw.epilog269_crit_edge

sw.bb71.sw.epilog269_crit_edge:                   ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog269

if.then76:                                        ; preds = %sw.bb71
  %conv73 = zext i8 %250 to i32
  %shl79 = shl nuw nsw i32 4, %conv73
  %conv80 = trunc i32 %shl79 to i8
  %conv81 = and i32 %shl79, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv81)
  %cmp82.not = icmp eq i32 %conv81, 0
  %spec.store.select = select i1 %cmp82.not, i8 %conv80, i8 15
  %conv95 = zext i8 %spec.store.select to i32
  %shl96 = shl nuw nsw i32 %conv95, 4
  %write8_async.i511 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %cfg.i512 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %read8_sync.i515 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.store.select)
  %cmp116 = icmp eq i8 %spec.store.select, 0
  %regtoset_normal.sroa.0.1 = select i1 %cmp116, i8 64, i8 65
  %251 = ptrtoint ptr %write8_async.i511 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %write8_async.i511, align 4
  tail call void %252(ptr noundef %1, i32 noundef 1112, i8 noundef zeroext %regtoset_normal.sroa.0.1) #8
  %253 = ptrtoint ptr %cfg.i512 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %cfg.i512, align 8
  %write_readback.i513 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %254, i32 0, i32 1
  %255 = ptrtoint ptr %write_readback.i513 to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %write_readback.i513, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %256)
  %tobool.not.i514 = icmp eq i8 %256, 0
  br i1 %tobool.not.i514, label %if.then76.rtl_write_byte.exit518_crit_edge, label %if.then.i517

if.then76.rtl_write_byte.exit518_crit_edge:       ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit518

if.then.i517:                                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #10
  %257 = ptrtoint ptr %read8_sync.i515 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %read8_sync.i515, align 4
  %call.i516 = tail call zeroext i8 %258(ptr noundef %1, i32 noundef 1112) #8
  br label %rtl_write_byte.exit518

rtl_write_byte.exit518:                           ; preds = %if.then.i517, %if.then76.rtl_write_byte.exit518_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %spec.store.select)
  %cmp97.1 = icmp ult i8 %spec.store.select, 10
  %259 = trunc i32 %shl96 to i8
  %conv107.1 = or i8 %259, 8
  %regtoset_normal.sroa.8.0 = select i1 %cmp97.1, i8 %conv107.1, i8 -88
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %spec.store.select)
  %cmp116.1 = icmp ult i8 %spec.store.select, 8
  %and122.1 = and i8 %regtoset_normal.sroa.8.0, -16
  %or124.1 = or i8 %and122.1, %spec.store.select
  %regtoset_normal.sroa.8.1 = select i1 %cmp116.1, i8 %or124.1, i8 %regtoset_normal.sroa.8.0
  %260 = ptrtoint ptr %write8_async.i511 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %write8_async.i511, align 4
  tail call void %261(ptr noundef %1, i32 noundef 1113, i8 noundef zeroext %regtoset_normal.sroa.8.1) #8
  %262 = ptrtoint ptr %cfg.i512 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %cfg.i512, align 8
  %write_readback.i513.1 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %263, i32 0, i32 1
  %264 = ptrtoint ptr %write_readback.i513.1 to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %write_readback.i513.1, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %265)
  %tobool.not.i514.1 = icmp eq i8 %265, 0
  br i1 %tobool.not.i514.1, label %rtl_write_byte.exit518.rtl_write_byte.exit518.1_crit_edge, label %if.then.i517.1

rtl_write_byte.exit518.rtl_write_byte.exit518.1_crit_edge: ; preds = %rtl_write_byte.exit518
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit518.1

if.then.i517.1:                                   ; preds = %rtl_write_byte.exit518
  call void @__sanitizer_cov_trace_pc() #10
  %266 = ptrtoint ptr %read8_sync.i515 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %read8_sync.i515, align 4
  %call.i516.1 = tail call zeroext i8 %267(ptr noundef %1, i32 noundef 1113) #8
  br label %rtl_write_byte.exit518.1

rtl_write_byte.exit518.1:                         ; preds = %if.then.i517.1, %rtl_write_byte.exit518.rtl_write_byte.exit518.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %spec.store.select)
  %cmp97.2 = icmp ult i8 %spec.store.select, 7
  %268 = trunc i32 %shl96 to i8
  %conv107.2 = or i8 %268, 2
  %regtoset_normal.sroa.13.0 = select i1 %cmp97.2, i8 %conv107.2, i8 114
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %spec.store.select)
  %cmp116.2 = icmp ult i8 %spec.store.select, 2
  %and122.2 = and i8 %regtoset_normal.sroa.13.0, -16
  %or124.2 = or i8 %and122.2, %spec.store.select
  %regtoset_normal.sroa.13.1 = select i1 %cmp116.2, i8 %or124.2, i8 %regtoset_normal.sroa.13.0
  %269 = ptrtoint ptr %write8_async.i511 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %write8_async.i511, align 4
  tail call void %270(ptr noundef %1, i32 noundef 1114, i8 noundef zeroext %regtoset_normal.sroa.13.1) #8
  %271 = ptrtoint ptr %cfg.i512 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %cfg.i512, align 8
  %write_readback.i513.2 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %272, i32 0, i32 1
  %273 = ptrtoint ptr %write_readback.i513.2 to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %write_readback.i513.2, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %274)
  %tobool.not.i514.2 = icmp eq i8 %274, 0
  br i1 %tobool.not.i514.2, label %rtl_write_byte.exit518.1.rtl_write_byte.exit518.2_crit_edge, label %if.then.i517.2

rtl_write_byte.exit518.1.rtl_write_byte.exit518.2_crit_edge: ; preds = %rtl_write_byte.exit518.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit518.2

if.then.i517.2:                                   ; preds = %rtl_write_byte.exit518.1
  call void @__sanitizer_cov_trace_pc() #10
  %275 = ptrtoint ptr %read8_sync.i515 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %read8_sync.i515, align 4
  %call.i516.2 = tail call zeroext i8 %276(ptr noundef %1, i32 noundef 1114) #8
  br label %rtl_write_byte.exit518.2

rtl_write_byte.exit518.2:                         ; preds = %if.then.i517.2, %rtl_write_byte.exit518.1.rtl_write_byte.exit518.2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %spec.store.select)
  %cmp97.3 = icmp ult i8 %spec.store.select, 11
  %277 = trunc i32 %shl96 to i8
  %conv107.3 = or i8 %277, 9
  %regtoset_normal.sroa.18.0 = select i1 %cmp97.3, i8 %conv107.3, i8 -71
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %spec.store.select)
  %cmp116.3 = icmp ult i8 %spec.store.select, 9
  %and122.3 = and i8 %regtoset_normal.sroa.18.0, -16
  %or124.3 = or i8 %and122.3, %spec.store.select
  %regtoset_normal.sroa.18.1 = select i1 %cmp116.3, i8 %or124.3, i8 %regtoset_normal.sroa.18.0
  %278 = ptrtoint ptr %write8_async.i511 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %write8_async.i511, align 4
  tail call void %279(ptr noundef %1, i32 noundef 1115, i8 noundef zeroext %regtoset_normal.sroa.18.1) #8
  %280 = ptrtoint ptr %cfg.i512 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %cfg.i512, align 8
  %write_readback.i513.3 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %281, i32 0, i32 1
  %282 = ptrtoint ptr %write_readback.i513.3 to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %write_readback.i513.3, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %283)
  %tobool.not.i514.3 = icmp eq i8 %283, 0
  br i1 %tobool.not.i514.3, label %rtl_write_byte.exit518.2.rtl_write_byte.exit518.3_crit_edge, label %if.then.i517.3

rtl_write_byte.exit518.2.rtl_write_byte.exit518.3_crit_edge: ; preds = %rtl_write_byte.exit518.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit518.3

if.then.i517.3:                                   ; preds = %rtl_write_byte.exit518.2
  call void @__sanitizer_cov_trace_pc() #10
  %284 = ptrtoint ptr %read8_sync.i515 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %read8_sync.i515, align 4
  %call.i516.3 = tail call zeroext i8 %285(ptr noundef %1, i32 noundef 1115) #8
  br label %rtl_write_byte.exit518.3

rtl_write_byte.exit518.3:                         ; preds = %if.then.i517.3, %rtl_write_byte.exit518.2.rtl_write_byte.exit518.3_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 32, i32 noundef 4, ptr noundef nonnull @.str.2, i32 noundef %conv95) #8
  br label %sw.epilog269

sw.bb138:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %e_aci139) #8
  %286 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %val, align 1
  %288 = ptrtoint ptr %e_aci139 to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 %287, ptr %e_aci139, align 1
  %acm_method = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 4
  %289 = ptrtoint ptr %acm_method to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %acm_method, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %290)
  %cmp140.not = icmp eq i32 %290, 2
  br i1 %cmp140.not, label %sw.bb138.if.end146_crit_edge, label %if.then142

sw.bb138.if.end146_crit_edge:                     ; preds = %sw.bb138
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end146

if.then142:                                       ; preds = %sw.bb138
  call void @__sanitizer_cov_trace_pc() #10
  %cfg143 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %291 = ptrtoint ptr %cfg143 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %cfg143, align 8
  %ops144 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %292, i32 0, i32 4
  %293 = ptrtoint ptr %ops144 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %ops144, align 4
  %set_hw_reg145 = getelementptr inbounds %struct.rtl_hal_ops, ptr %294, i32 0, i32 20
  %295 = ptrtoint ptr %set_hw_reg145 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %set_hw_reg145, align 4
  call void %296(ptr noundef %hw, i8 noundef zeroext 33, ptr noundef nonnull %e_aci139) #8
  br label %if.end146

if.end146:                                        ; preds = %if.then142, %sw.bb138.if.end146_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %e_aci139) #8
  br label %sw.epilog269

sw.bb147:                                         ; preds = %entry
  %297 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %val, align 1
  %aifs150 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 60, i32 0, i32 2
  %299 = ptrtoint ptr %aifs150 to i32
  call void @__asan_load1_noabort(i32 %299)
  %bf.load = load i8, ptr %aifs150, align 1
  %read8_sync.i519 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %300 = ptrtoint ptr %read8_sync.i519 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %read8_sync.i519, align 4
  %call.i520 = tail call zeroext i8 %301(ptr noundef %1, i32 noundef 1472) #8
  %acm_method152 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 4
  %302 = ptrtoint ptr %acm_method152 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %acm_method152, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %303)
  %cmp153 = icmp ne i32 %303, 2
  %cond = zext i1 %cmp153 to i8
  %or155 = or i8 %call.i520, %cond
  %304 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %304)
  %tobool157.not = icmp eq i8 %304, 0
  br i1 %tobool157.not, label %if.else173, label %if.then158

if.then158:                                       ; preds = %sw.bb147
  %305 = zext i8 %298 to i64
  call void @__sanitizer_cov_trace_switch(i64 %305, ptr @__sancov_gen_cov_switch_values.62)
  switch i8 %298, label %sw.default [
    i8 0, label %sw.bb160
    i8 2, label %sw.bb164
    i8 3, label %sw.bb168
  ]

sw.bb160:                                         ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #10
  %306 = or i8 %or155, 2
  br label %if.end190

sw.bb164:                                         ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #10
  %307 = or i8 %or155, 4
  br label %if.end190

sw.bb168:                                         ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #10
  %308 = or i8 %or155, 8
  br label %if.end190

sw.default:                                       ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 1) #8
  br label %if.end190

if.else173:                                       ; preds = %sw.bb147
  %309 = zext i8 %298 to i64
  call void @__sanitizer_cov_trace_switch(i64 %309, ptr @__sancov_gen_cov_switch_values.63)
  switch i8 %298, label %sw.default187 [
    i8 0, label %sw.bb175
    i8 2, label %sw.bb179
    i8 3, label %sw.bb183
  ]

sw.bb175:                                         ; preds = %if.else173
  call void @__sanitizer_cov_trace_pc() #10
  %310 = and i8 %or155, -3
  br label %if.end190

sw.bb179:                                         ; preds = %if.else173
  call void @__sanitizer_cov_trace_pc() #10
  %311 = and i8 %or155, -5
  br label %if.end190

sw.bb183:                                         ; preds = %if.else173
  call void @__sanitizer_cov_trace_pc() #10
  %312 = and i8 %or155, -9
  br label %if.end190

sw.default187:                                    ; preds = %if.else173
  call void @__sanitizer_cov_trace_pc() #10
  %conv174 = zext i8 %298 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef %conv174) #8
  br label %if.end190

if.end190:                                        ; preds = %sw.default187, %sw.bb183, %sw.bb179, %sw.bb175, %sw.default, %sw.bb168, %sw.bb164, %sw.bb160
  %acm_ctrl.0 = phi i8 [ %or155, %sw.default ], [ %308, %sw.bb168 ], [ %307, %sw.bb164 ], [ %306, %sw.bb160 ], [ %or155, %sw.default187 ], [ %312, %sw.bb183 ], [ %311, %sw.bb179 ], [ %310, %sw.bb175 ]
  %conv191 = zext i8 %acm_ctrl.0 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 33554432, i32 noundef 5, ptr noundef nonnull @.str.4, i32 noundef %conv191) #8
  %write8_async.i521 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %313 = ptrtoint ptr %write8_async.i521 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %write8_async.i521, align 4
  tail call void %314(ptr noundef %1, i32 noundef 1472, i8 noundef zeroext %acm_ctrl.0) #8
  %cfg.i522 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %315 = ptrtoint ptr %cfg.i522 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %cfg.i522, align 8
  %write_readback.i523 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %316, i32 0, i32 1
  %317 = ptrtoint ptr %write_readback.i523 to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %write_readback.i523, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %318)
  %tobool.not.i524 = icmp eq i8 %318, 0
  br i1 %tobool.not.i524, label %if.end190.sw.epilog269_crit_edge, label %if.then.i527

if.end190.sw.epilog269_crit_edge:                 ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog269

if.then.i527:                                     ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #10
  %319 = ptrtoint ptr %read8_sync.i519 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %read8_sync.i519, align 4
  %call.i526 = tail call zeroext i8 %320(ptr noundef %1, i32 noundef 1472) #8
  br label %sw.epilog269

sw.bb192:                                         ; preds = %entry
  %321 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %val, align 4
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %323 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %write32_async.i, align 4
  tail call void %324(ptr noundef %1, i32 noundef 1544, i32 noundef %322) #8
  %cfg.i529 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %325 = ptrtoint ptr %cfg.i529 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %cfg.i529, align 8
  %write_readback.i530 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %326, i32 0, i32 1
  %327 = ptrtoint ptr %write_readback.i530 to i32
  call void @__asan_load1_noabort(i32 %327)
  %328 = load i8, ptr %write_readback.i530, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %328)
  %tobool.not.i531 = icmp eq i8 %328, 0
  br i1 %tobool.not.i531, label %sw.bb192.rtl_write_dword.exit_crit_edge, label %if.then.i533

sw.bb192.rtl_write_dword.exit_crit_edge:          ; preds = %sw.bb192
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit

if.then.i533:                                     ; preds = %sw.bb192
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %329 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %read32_sync.i, align 4
  %call.i532 = tail call i32 %330(ptr noundef %1, i32 noundef 1544) #8
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i533, %sw.bb192.rtl_write_dword.exit_crit_edge
  %331 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %val, align 4
  %receive_config = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 3
  %333 = ptrtoint ptr %receive_config to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 %332, ptr %receive_config, align 4
  br label %sw.epilog269

sw.bb195:                                         ; preds = %entry
  %334 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %334)
  %335 = load i8, ptr %val, align 1
  %conv197 = zext i8 %335 to i32
  %shl198 = shl nuw nsw i32 %conv197, 8
  %or201 = or i32 %shl198, %conv197
  %conv202 = trunc i32 %or201 to i16
  %write16_async.i534 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %336 = ptrtoint ptr %write16_async.i534 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %write16_async.i534, align 4
  tail call void %337(ptr noundef %1, i32 noundef 1066, i16 noundef zeroext %conv202) #8
  %cfg.i535 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %338 = ptrtoint ptr %cfg.i535 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %cfg.i535, align 8
  %write_readback.i536 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %339, i32 0, i32 1
  %340 = ptrtoint ptr %write_readback.i536 to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %write_readback.i536, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %341)
  %tobool.not.i537 = icmp eq i8 %341, 0
  br i1 %tobool.not.i537, label %sw.bb195.sw.epilog269_crit_edge, label %if.then.i540

sw.bb195.sw.epilog269_crit_edge:                  ; preds = %sw.bb195
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog269

if.then.i540:                                     ; preds = %sw.bb195
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i538 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %342 = ptrtoint ptr %read16_sync.i538 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %read16_sync.i538, align 4
  %call.i539 = tail call zeroext i16 %343(ptr noundef %1, i32 noundef 1066) #8
  br label %sw.epilog269

sw.bb203:                                         ; preds = %entry
  %write8_async.i542 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %344 = ptrtoint ptr %write8_async.i542 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %write8_async.i542, align 4
  tail call void %345(ptr noundef %1, i32 noundef 1363, i8 noundef zeroext 3) #8
  %cfg.i543 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %346 = ptrtoint ptr %cfg.i543 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %cfg.i543, align 8
  %write_readback.i544 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %347, i32 0, i32 1
  %348 = ptrtoint ptr %write_readback.i544 to i32
  call void @__asan_load1_noabort(i32 %348)
  %349 = load i8, ptr %write_readback.i544, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %349)
  %tobool.not.i545 = icmp eq i8 %349, 0
  br i1 %tobool.not.i545, label %sw.bb203.sw.epilog269_crit_edge, label %if.then.i548

sw.bb203.sw.epilog269_crit_edge:                  ; preds = %sw.bb203
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog269

if.then.i548:                                     ; preds = %sw.bb203
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i546 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %350 = ptrtoint ptr %read8_sync.i546 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %read8_sync.i546, align 4
  %call.i547 = tail call zeroext i8 %351(ptr noundef %1, i32 noundef 1363) #8
  br label %sw.epilog269

sw.bb204:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %352 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %352)
  %353 = load i16, ptr %val, align 2
  %efuse_usedbytes = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 5
  %354 = ptrtoint ptr %efuse_usedbytes to i32
  call void @__asan_store2_noabort(i32 %354)
  store i16 %353, ptr %efuse_usedbytes, align 4
  br label %sw.epilog269

sw.bb205:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %355 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %355)
  %356 = load i8, ptr %val, align 1
  %efuse_usedpercentage = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 6
  %357 = ptrtoint ptr %efuse_usedpercentage to i32
  call void @__asan_store1_noabort(i32 %357)
  store i8 %356, ptr %efuse_usedpercentage, align 2
  br label %sw.epilog269

sw.bb206:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %358 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %val, align 4
  %call207 = tail call zeroext i1 @rtl92ee_phy_set_io_cmd(ptr noundef %hw, i32 noundef %359) #8
  br label %sw.epilog269

sw.bb208:                                         ; preds = %entry
  %read8_sync.i550 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %360 = ptrtoint ptr %read8_sync.i550 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %read8_sync.i550, align 4
  %call.i551 = tail call zeroext i8 %361(ptr noundef %1, i32 noundef 988) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %362 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %362(i32 noundef 214748) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i551)
  %tobool212.not = icmp sgt i8 %call.i551, -1
  %363 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %363)
  %364 = load i8, ptr %val, align 1
  br i1 %tobool212.not, label %if.else214, label %if.then213

if.then213:                                       ; preds = %sw.bb208
  %write8_async.i552 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %365 = ptrtoint ptr %write8_async.i552 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %write8_async.i552, align 4
  tail call void %366(ptr noundef %1, i32 noundef 988, i8 noundef zeroext %364) #8
  %cfg.i553 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %367 = ptrtoint ptr %cfg.i553 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %cfg.i553, align 8
  %write_readback.i554 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %368, i32 0, i32 1
  %369 = ptrtoint ptr %write_readback.i554 to i32
  call void @__asan_load1_noabort(i32 %369)
  %370 = load i8, ptr %write_readback.i554, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %370)
  %tobool.not.i555 = icmp eq i8 %370, 0
  br i1 %tobool.not.i555, label %if.then213.sw.epilog269_crit_edge, label %if.then.i558

if.then213.sw.epilog269_crit_edge:                ; preds = %if.then213
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog269

if.then.i558:                                     ; preds = %if.then213
  call void @__sanitizer_cov_trace_pc() #10
  %371 = ptrtoint ptr %read8_sync.i550 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %read8_sync.i550, align 4
  %call.i557 = tail call zeroext i8 %372(ptr noundef %1, i32 noundef 988) #8
  br label %sw.epilog269

if.else214:                                       ; preds = %sw.bb208
  %373 = or i8 %364, -128
  %write8_async.i560 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %374 = ptrtoint ptr %write8_async.i560 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %write8_async.i560, align 4
  tail call void %375(ptr noundef %1, i32 noundef 988, i8 noundef zeroext %373) #8
  %cfg.i561 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %376 = ptrtoint ptr %cfg.i561 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %cfg.i561, align 8
  %write_readback.i562 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %377, i32 0, i32 1
  %378 = ptrtoint ptr %write_readback.i562 to i32
  call void @__asan_load1_noabort(i32 %378)
  %379 = load i8, ptr %write_readback.i562, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %379)
  %tobool.not.i563 = icmp eq i8 %379, 0
  br i1 %tobool.not.i563, label %if.else214.sw.epilog269_crit_edge, label %if.then.i566

if.else214.sw.epilog269_crit_edge:                ; preds = %if.else214
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog269

if.then.i566:                                     ; preds = %if.else214
  call void @__sanitizer_cov_trace_pc() #10
  %380 = ptrtoint ptr %read8_sync.i550 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %read8_sync.i550, align 4
  %call.i565 = tail call zeroext i8 %381(ptr noundef %1, i32 noundef 988) #8
  br label %sw.epilog269

sw.bb219:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %382 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %382)
  %383 = load i8, ptr %val, align 1
  tail call void @rtl92ee_set_fw_pwrmode_cmd(ptr noundef %hw, i8 noundef zeroext %383) #8
  br label %sw.epilog269

sw.bb220:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %384 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %384)
  %385 = load i8, ptr %val, align 1, !range !138
  %fw_current_inpsmode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 13
  %386 = ptrtoint ptr %fw_current_inpsmode to i32
  call void @__asan_store1_noabort(i32 %386)
  store i8 %385, ptr %fw_current_inpsmode, align 1
  br label %sw.epilog269

sw.bb222:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @_rtl92ee_set_fw_clock_on(ptr noundef %hw, i1 noundef zeroext true) #8
  br label %sw.epilog269

sw.bb223:                                         ; preds = %entry
  %387 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %387)
  %388 = load i8, ptr %val, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %388)
  %tobool224.not = icmp eq i8 %388, 0
  br i1 %tobool224.not, label %if.else228, label %if.then227

if.then227:                                       ; preds = %sw.bb223
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fw_current_inps.i) #8
  %389 = ptrtoint ptr %fw_current_inps.i to i32
  call void @__asan_store1_noabort(i32 %389)
  store i8 1, ptr %fw_current_inps.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rpwm_val.i) #8
  %low_power_enable.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 16
  %390 = ptrtoint ptr %low_power_enable.i to i32
  call void @__asan_load1_noabort(i32 %390)
  %391 = load i8, ptr %low_power_enable.i, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %391)
  %tobool.not.i568 = icmp eq i8 %391, 0
  br i1 %tobool.not.i568, label %if.else.i, label %if.then.i570

if.then.i570:                                     ; preds = %if.then227
  call void @__sanitizer_cov_trace_pc() #10
  %cfg.i569 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %392 = ptrtoint ptr %cfg.i569 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %cfg.i569, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %393, i32 0, i32 4
  %394 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %ops.i, align 4
  %set_hw_reg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %395, i32 0, i32 20
  %396 = ptrtoint ptr %set_hw_reg.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %set_hw_reg.i, align 4
  call void %397(ptr noundef %hw, i8 noundef zeroext 65, ptr noundef nonnull %fw_current_inps.i) #8
  %398 = ptrtoint ptr %cfg.i569 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %cfg.i569, align 8
  %ops5.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %399, i32 0, i32 4
  %400 = ptrtoint ptr %ops5.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %ops5.i, align 4
  %set_hw_reg6.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %401, i32 0, i32 20
  %402 = ptrtoint ptr %set_hw_reg6.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %set_hw_reg6.i, align 4
  %fwctrl_psmode.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 11
  call void %403(ptr noundef %hw, i8 noundef zeroext 61, ptr noundef %fwctrl_psmode.i) #8
  %allow_sw_to_change_hwclc.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 48
  %404 = ptrtoint ptr %allow_sw_to_change_hwclc.i to i32
  call void @__asan_store1_noabort(i32 %404)
  store i8 1, ptr %allow_sw_to_change_hwclc.i, align 8
  call fastcc void @_rtl92ee_set_fw_clock_off(ptr noundef %hw, i8 noundef zeroext 1) #8
  br label %_rtl92ee_fwlps_enter.exit

if.else.i:                                        ; preds = %if.then227
  call void @__sanitizer_cov_trace_pc() #10
  %405 = ptrtoint ptr %rpwm_val.i to i32
  call void @__asan_store1_noabort(i32 %405)
  store i8 0, ptr %rpwm_val.i, align 1
  %cfg7.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %406 = ptrtoint ptr %cfg7.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %cfg7.i, align 8
  %ops8.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %407, i32 0, i32 4
  %408 = ptrtoint ptr %ops8.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %ops8.i, align 4
  %set_hw_reg9.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %409, i32 0, i32 20
  %410 = ptrtoint ptr %set_hw_reg9.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %set_hw_reg9.i, align 4
  call void %411(ptr noundef %hw, i8 noundef zeroext 65, ptr noundef nonnull %fw_current_inps.i) #8
  %412 = ptrtoint ptr %cfg7.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %cfg7.i, align 8
  %ops11.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %413, i32 0, i32 4
  %414 = ptrtoint ptr %ops11.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %ops11.i, align 4
  %set_hw_reg12.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %415, i32 0, i32 20
  %416 = ptrtoint ptr %set_hw_reg12.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %set_hw_reg12.i, align 4
  %fwctrl_psmode13.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 11
  call void %417(ptr noundef %hw, i8 noundef zeroext 61, ptr noundef %fwctrl_psmode13.i) #8
  %418 = ptrtoint ptr %cfg7.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %cfg7.i, align 8
  %ops15.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %419, i32 0, i32 4
  %420 = ptrtoint ptr %ops15.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %ops15.i, align 4
  %set_hw_reg16.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %421, i32 0, i32 20
  %422 = ptrtoint ptr %set_hw_reg16.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %set_hw_reg16.i, align 4
  call void %423(ptr noundef %hw, i8 noundef zeroext 60, ptr noundef nonnull %rpwm_val.i) #8
  br label %_rtl92ee_fwlps_enter.exit

_rtl92ee_fwlps_enter.exit:                        ; preds = %if.else.i, %if.then.i570
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rpwm_val.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fw_current_inps.i) #8
  br label %sw.epilog269

if.else228:                                       ; preds = %sw.bb223
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @_rtl92ee_fwlps_leave(ptr noundef %hw)
  br label %sw.epilog269

sw.bb230:                                         ; preds = %entry
  %424 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %424)
  %425 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %425)
  %cmp232 = icmp eq i8 %425, 1
  br i1 %cmp232, label %if.then234, label %sw.bb230.if.end238_crit_edge

sw.bb230.if.end238_crit_edge:                     ; preds = %sw.bb230
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end238

if.then234:                                       ; preds = %sw.bb230
  call void @__sanitizer_cov_trace_pc() #10
  %cfg235 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %426 = ptrtoint ptr %cfg235 to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %cfg235, align 8
  %ops236 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %427, i32 0, i32 4
  %428 = ptrtoint ptr %ops236 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %ops236, align 4
  %set_hw_reg237 = getelementptr inbounds %struct.rtl_hal_ops, ptr %429, i32 0, i32 20
  %430 = ptrtoint ptr %set_hw_reg237 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %set_hw_reg237, align 4
  tail call void %431(ptr noundef %hw, i8 noundef zeroext 82, ptr noundef null) #8
  tail call fastcc void @_rtl92ee_download_rsvd_page(ptr noundef %hw)
  br label %if.end238

if.end238:                                        ; preds = %if.then234, %sw.bb230.if.end238_crit_edge
  tail call void @rtl92ee_set_fw_media_status_rpt_cmd(ptr noundef %hw, i8 noundef zeroext %425) #8
  br label %sw.epilog269

sw.bb239:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %432 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %432)
  %433 = load i8, ptr %val, align 1
  tail call void @rtl92ee_set_p2p_ps_offload_cmd(ptr noundef %hw, i8 noundef zeroext %433) #8
  br label %sw.epilog269

sw.bb240:                                         ; preds = %entry
  %read16_sync.i571 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %434 = ptrtoint ptr %read16_sync.i571 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %read16_sync.i571, align 4
  %call.i572 = tail call zeroext i16 %435(ptr noundef %1, i32 noundef 1704) #8
  %436 = and i16 %call.i572, -16384
  %assoc_id = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 52
  %437 = ptrtoint ptr %assoc_id to i32
  call void @__asan_load2_noabort(i32 %437)
  %438 = load i16, ptr %assoc_id, align 2
  %or247413 = or i16 %436, %438
  %write16_async.i573 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %439 = ptrtoint ptr %write16_async.i573 to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %write16_async.i573, align 4
  tail call void %440(ptr noundef %1, i32 noundef 1704, i16 noundef zeroext %or247413) #8
  %cfg.i574 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %441 = ptrtoint ptr %cfg.i574 to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %cfg.i574, align 8
  %write_readback.i575 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %442, i32 0, i32 1
  %443 = ptrtoint ptr %write_readback.i575 to i32
  call void @__asan_load1_noabort(i32 %443)
  %444 = load i8, ptr %write_readback.i575, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %444)
  %tobool.not.i576 = icmp eq i8 %444, 0
  br i1 %tobool.not.i576, label %sw.bb240.sw.epilog269_crit_edge, label %if.then.i579

sw.bb240.sw.epilog269_crit_edge:                  ; preds = %sw.bb240
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog269

if.then.i579:                                     ; preds = %sw.bb240
  call void @__sanitizer_cov_trace_pc() #10
  %445 = ptrtoint ptr %read16_sync.i571 to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %read16_sync.i571, align 4
  %call.i578 = tail call zeroext i16 %446(ptr noundef %1, i32 noundef 1704) #8
  br label %sw.epilog269

sw.bb249:                                         ; preds = %entry
  %447 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %447)
  %448 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %448)
  %tobool251.not = icmp eq i8 %448, 0
  br i1 %tobool251.not, label %if.end262.critedge, label %if.then252

if.then252:                                       ; preds = %sw.bb249
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %449 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = tail call zeroext i8 %450(ptr noundef %1, i32 noundef 1058) #8
  %451 = and i8 %call.i.i, -65
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %452 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %453(ptr noundef %1, i32 noundef 1058, i8 noundef zeroext %451) #8
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %454 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %455, i32 0, i32 1
  %456 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %456)
  %457 = load i8, ptr %write_readback.i.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %457)
  %tobool.not.i.i = icmp eq i8 %457, 0
  br i1 %tobool.not.i.i, label %if.then252.rtl_write_byte.exit.i_crit_edge, label %if.then.i.i

if.then252.rtl_write_byte.exit.i_crit_edge:       ; preds = %if.then252
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit.i

if.then.i.i:                                      ; preds = %if.then252
  call void @__sanitizer_cov_trace_pc() #10
  %458 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i13.i = tail call zeroext i8 %459(ptr noundef %1, i32 noundef 1058) #8
  br label %rtl_write_byte.exit.i

rtl_write_byte.exit.i:                            ; preds = %if.then.i.i, %if.then252.rtl_write_byte.exit.i_crit_edge
  %460 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %461(ptr noundef %1, i32 noundef 1345, i8 noundef zeroext 100) #8
  %462 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i16.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %463, i32 0, i32 1
  %464 = ptrtoint ptr %write_readback.i16.i to i32
  call void @__asan_load1_noabort(i32 %464)
  %465 = load i8, ptr %write_readback.i16.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %465)
  %tobool.not.i17.i = icmp eq i8 %465, 0
  br i1 %tobool.not.i17.i, label %rtl_write_byte.exit.i.rtl_write_byte.exit21.i_crit_edge, label %if.then.i20.i

rtl_write_byte.exit.i.rtl_write_byte.exit21.i_crit_edge: ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit21.i

if.then.i20.i:                                    ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %466 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i19.i = tail call zeroext i8 %467(ptr noundef %1, i32 noundef 1345) #8
  br label %rtl_write_byte.exit21.i

rtl_write_byte.exit21.i:                          ; preds = %if.then.i20.i, %rtl_write_byte.exit.i.rtl_write_byte.exit21.i_crit_edge
  %468 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i23.i = tail call zeroext i8 %469(ptr noundef %1, i32 noundef 1346) #8
  %470 = and i8 %call.i23.i, -2
  %471 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %472(ptr noundef %1, i32 noundef 1346, i8 noundef zeroext %470) #8
  %473 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i26.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %474, i32 0, i32 1
  %475 = ptrtoint ptr %write_readback.i26.i to i32
  call void @__asan_load1_noabort(i32 %475)
  %476 = load i8, ptr %write_readback.i26.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %476)
  %tobool.not.i27.i = icmp eq i8 %476, 0
  br i1 %tobool.not.i27.i, label %rtl_write_byte.exit21.i._rtl92ee_stop_tx_beacon.exit_crit_edge, label %if.then.i30.i

rtl_write_byte.exit21.i._rtl92ee_stop_tx_beacon.exit_crit_edge: ; preds = %rtl_write_byte.exit21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ee_stop_tx_beacon.exit

if.then.i30.i:                                    ; preds = %rtl_write_byte.exit21.i
  call void @__sanitizer_cov_trace_pc() #10
  %477 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i29.i = tail call zeroext i8 %478(ptr noundef %1, i32 noundef 1346) #8
  br label %_rtl92ee_stop_tx_beacon.exit

_rtl92ee_stop_tx_beacon.exit:                     ; preds = %if.then.i30.i, %rtl_write_byte.exit21.i._rtl92ee_stop_tx_beacon.exit_crit_edge
  %479 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i = getelementptr inbounds %struct.rtl_priv, ptr %480, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %481 = ptrtoint ptr %reg_bcn_ctrl_val.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load i32, ptr %reg_bcn_ctrl_val.i, align 4
  %and.i = and i32 %482, -9
  store i32 %and.i, ptr %reg_bcn_ctrl_val.i, align 4
  %conv6.i = trunc i32 %and.i to i8
  %write8_async.i.i583 = getelementptr inbounds %struct.rtl_priv, ptr %480, i32 0, i32 13, i32 5
  %483 = ptrtoint ptr %write8_async.i.i583 to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %write8_async.i.i583, align 4
  tail call void %484(ptr noundef %480, i32 noundef 1360, i8 noundef zeroext %conv6.i) #8
  %cfg.i.i584 = getelementptr inbounds %struct.rtl_priv, ptr %480, i32 0, i32 32
  %485 = ptrtoint ptr %cfg.i.i584 to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load ptr, ptr %cfg.i.i584, align 8
  %write_readback.i.i585 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %486, i32 0, i32 1
  %487 = ptrtoint ptr %write_readback.i.i585 to i32
  call void @__asan_load1_noabort(i32 %487)
  %488 = load i8, ptr %write_readback.i.i585, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %488)
  %tobool.not.i.i586 = icmp eq i8 %488, 0
  br i1 %tobool.not.i.i586, label %_rtl92ee_stop_tx_beacon.exit._rtl92ee_set_bcn_ctrl_reg.exit_crit_edge, label %if.then.i.i589

_rtl92ee_stop_tx_beacon.exit._rtl92ee_set_bcn_ctrl_reg.exit_crit_edge: ; preds = %_rtl92ee_stop_tx_beacon.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ee_set_bcn_ctrl_reg.exit

if.then.i.i589:                                   ; preds = %_rtl92ee_stop_tx_beacon.exit
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i587 = getelementptr inbounds %struct.rtl_priv, ptr %480, i32 0, i32 13, i32 9
  %489 = ptrtoint ptr %read8_sync.i.i587 to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load ptr, ptr %read8_sync.i.i587, align 4
  %call.i.i588 = tail call zeroext i8 %490(ptr noundef %480, i32 noundef 1360) #8
  br label %_rtl92ee_set_bcn_ctrl_reg.exit

_rtl92ee_set_bcn_ctrl_reg.exit:                   ; preds = %if.then.i.i589, %_rtl92ee_stop_tx_beacon.exit._rtl92ee_set_bcn_ctrl_reg.exit_crit_edge
  %tsf.c = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 49
  %491 = ptrtoint ptr %tsf.c to i32
  call void @__asan_load8_noabort(i32 %491)
  %492 = load i64, ptr %tsf.c, align 8
  %conv255.c = trunc i64 %492 to i32
  %write32_async.i591 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %493 = ptrtoint ptr %write32_async.i591 to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %write32_async.i591, align 4
  tail call void %494(ptr noundef %1, i32 noundef 1376, i32 noundef %conv255.c) #8
  %495 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i593 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %496, i32 0, i32 1
  %497 = ptrtoint ptr %write_readback.i593 to i32
  call void @__asan_load1_noabort(i32 %497)
  %498 = load i8, ptr %write_readback.i593, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %498)
  %tobool.not.i594 = icmp eq i8 %498, 0
  br i1 %tobool.not.i594, label %_rtl92ee_set_bcn_ctrl_reg.exit.rtl_write_dword.exit598_crit_edge, label %if.then.i597

_rtl92ee_set_bcn_ctrl_reg.exit.rtl_write_dword.exit598_crit_edge: ; preds = %_rtl92ee_set_bcn_ctrl_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit598

if.then.i597:                                     ; preds = %_rtl92ee_set_bcn_ctrl_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i595 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %499 = ptrtoint ptr %read32_sync.i595 to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load ptr, ptr %read32_sync.i595, align 4
  %call.i596 = tail call i32 %500(ptr noundef %1, i32 noundef 1376) #8
  br label %rtl_write_dword.exit598

rtl_write_dword.exit598:                          ; preds = %if.then.i597, %_rtl92ee_set_bcn_ctrl_reg.exit.rtl_write_dword.exit598_crit_edge
  %501 = ptrtoint ptr %tsf.c to i32
  call void @__asan_load8_noabort(i32 %501)
  %502 = load i64, ptr %tsf.c, align 8
  %shr257.c = lshr i64 %502, 32
  %conv259.c = trunc i64 %shr257.c to i32
  %503 = ptrtoint ptr %write32_async.i591 to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load ptr, ptr %write32_async.i591, align 4
  tail call void %504(ptr noundef %1, i32 noundef 1380, i32 noundef %conv259.c) #8
  %505 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i601 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %506, i32 0, i32 1
  %507 = ptrtoint ptr %write_readback.i601 to i32
  call void @__asan_load1_noabort(i32 %507)
  %508 = load i8, ptr %write_readback.i601, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %508)
  %tobool.not.i602 = icmp eq i8 %508, 0
  br i1 %tobool.not.i602, label %rtl_write_dword.exit598.rtl_write_dword.exit606_crit_edge, label %if.then.i605

rtl_write_dword.exit598.rtl_write_dword.exit606_crit_edge: ; preds = %rtl_write_dword.exit598
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit606

if.then.i605:                                     ; preds = %rtl_write_dword.exit598
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i603 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %509 = ptrtoint ptr %read32_sync.i603 to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %read32_sync.i603, align 4
  %call.i604 = tail call i32 %510(ptr noundef %1, i32 noundef 1380) #8
  br label %rtl_write_dword.exit606

rtl_write_dword.exit606:                          ; preds = %if.then.i605, %rtl_write_dword.exit598.rtl_write_dword.exit606_crit_edge
  %511 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i608 = getelementptr inbounds %struct.rtl_priv, ptr %512, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %513 = ptrtoint ptr %reg_bcn_ctrl_val.i608 to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load i32, ptr %reg_bcn_ctrl_val.i608, align 4
  %or.i = or i32 %514, 8
  store i32 %or.i, ptr %reg_bcn_ctrl_val.i608, align 4
  %conv6.i609 = trunc i32 %or.i to i8
  %write8_async.i.i610 = getelementptr inbounds %struct.rtl_priv, ptr %512, i32 0, i32 13, i32 5
  %515 = ptrtoint ptr %write8_async.i.i610 to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load ptr, ptr %write8_async.i.i610, align 4
  tail call void %516(ptr noundef %512, i32 noundef 1360, i8 noundef zeroext %conv6.i609) #8
  %cfg.i.i611 = getelementptr inbounds %struct.rtl_priv, ptr %512, i32 0, i32 32
  %517 = ptrtoint ptr %cfg.i.i611 to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load ptr, ptr %cfg.i.i611, align 8
  %write_readback.i.i612 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %518, i32 0, i32 1
  %519 = ptrtoint ptr %write_readback.i.i612 to i32
  call void @__asan_load1_noabort(i32 %519)
  %520 = load i8, ptr %write_readback.i.i612, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %520)
  %tobool.not.i.i613 = icmp eq i8 %520, 0
  br i1 %tobool.not.i.i613, label %rtl_write_dword.exit606._rtl92ee_set_bcn_ctrl_reg.exit618_crit_edge, label %if.then.i.i616

rtl_write_dword.exit606._rtl92ee_set_bcn_ctrl_reg.exit618_crit_edge: ; preds = %rtl_write_dword.exit606
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ee_set_bcn_ctrl_reg.exit618

if.then.i.i616:                                   ; preds = %rtl_write_dword.exit606
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i614 = getelementptr inbounds %struct.rtl_priv, ptr %512, i32 0, i32 13, i32 9
  %521 = ptrtoint ptr %read8_sync.i.i614 to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load ptr, ptr %read8_sync.i.i614, align 4
  %call.i.i615 = tail call zeroext i8 %522(ptr noundef %512, i32 noundef 1360) #8
  br label %_rtl92ee_set_bcn_ctrl_reg.exit618

_rtl92ee_set_bcn_ctrl_reg.exit618:                ; preds = %if.then.i.i616, %rtl_write_dword.exit606._rtl92ee_set_bcn_ctrl_reg.exit618_crit_edge
  %523 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load ptr, ptr %priv, align 8
  %read8_sync.i.i620 = getelementptr inbounds %struct.rtl_priv, ptr %524, i32 0, i32 13, i32 9
  %525 = ptrtoint ptr %read8_sync.i.i620 to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load ptr, ptr %read8_sync.i.i620, align 4
  %call.i.i621 = tail call zeroext i8 %526(ptr noundef %524, i32 noundef 1058) #8
  %527 = or i8 %call.i.i621, 64
  %write8_async.i.i622 = getelementptr inbounds %struct.rtl_priv, ptr %524, i32 0, i32 13, i32 5
  %528 = ptrtoint ptr %write8_async.i.i622 to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %write8_async.i.i622, align 4
  tail call void %529(ptr noundef %524, i32 noundef 1058, i8 noundef zeroext %527) #8
  %cfg.i.i623 = getelementptr inbounds %struct.rtl_priv, ptr %524, i32 0, i32 32
  %530 = ptrtoint ptr %cfg.i.i623 to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %cfg.i.i623, align 8
  %write_readback.i.i624 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %531, i32 0, i32 1
  %532 = ptrtoint ptr %write_readback.i.i624 to i32
  call void @__asan_load1_noabort(i32 %532)
  %533 = load i8, ptr %write_readback.i.i624, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %533)
  %tobool.not.i.i625 = icmp eq i8 %533, 0
  br i1 %tobool.not.i.i625, label %_rtl92ee_set_bcn_ctrl_reg.exit618.rtl_write_byte.exit.i630_crit_edge, label %if.then.i.i627

_rtl92ee_set_bcn_ctrl_reg.exit618.rtl_write_byte.exit.i630_crit_edge: ; preds = %_rtl92ee_set_bcn_ctrl_reg.exit618
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit.i630

if.then.i.i627:                                   ; preds = %_rtl92ee_set_bcn_ctrl_reg.exit618
  call void @__sanitizer_cov_trace_pc() #10
  %534 = ptrtoint ptr %read8_sync.i.i620 to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load ptr, ptr %read8_sync.i.i620, align 4
  %call.i13.i626 = tail call zeroext i8 %535(ptr noundef %524, i32 noundef 1058) #8
  br label %rtl_write_byte.exit.i630

rtl_write_byte.exit.i630:                         ; preds = %if.then.i.i627, %_rtl92ee_set_bcn_ctrl_reg.exit618.rtl_write_byte.exit.i630_crit_edge
  %536 = ptrtoint ptr %write8_async.i.i622 to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %write8_async.i.i622, align 4
  tail call void %537(ptr noundef %524, i32 noundef 1345, i8 noundef zeroext -1) #8
  %538 = ptrtoint ptr %cfg.i.i623 to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %cfg.i.i623, align 8
  %write_readback.i16.i628 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %539, i32 0, i32 1
  %540 = ptrtoint ptr %write_readback.i16.i628 to i32
  call void @__asan_load1_noabort(i32 %540)
  %541 = load i8, ptr %write_readback.i16.i628, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %541)
  %tobool.not.i17.i629 = icmp eq i8 %541, 0
  br i1 %tobool.not.i17.i629, label %rtl_write_byte.exit.i630.rtl_write_byte.exit21.i636_crit_edge, label %if.then.i20.i632

rtl_write_byte.exit.i630.rtl_write_byte.exit21.i636_crit_edge: ; preds = %rtl_write_byte.exit.i630
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit21.i636

if.then.i20.i632:                                 ; preds = %rtl_write_byte.exit.i630
  call void @__sanitizer_cov_trace_pc() #10
  %542 = ptrtoint ptr %read8_sync.i.i620 to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %read8_sync.i.i620, align 4
  %call.i19.i631 = tail call zeroext i8 %543(ptr noundef %524, i32 noundef 1345) #8
  br label %rtl_write_byte.exit21.i636

rtl_write_byte.exit21.i636:                       ; preds = %if.then.i20.i632, %rtl_write_byte.exit.i630.rtl_write_byte.exit21.i636_crit_edge
  %544 = ptrtoint ptr %read8_sync.i.i620 to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %read8_sync.i.i620, align 4
  %call.i23.i633 = tail call zeroext i8 %545(ptr noundef %524, i32 noundef 1346) #8
  %546 = or i8 %call.i23.i633, 1
  %547 = ptrtoint ptr %write8_async.i.i622 to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load ptr, ptr %write8_async.i.i622, align 4
  tail call void %548(ptr noundef %524, i32 noundef 1346, i8 noundef zeroext %546) #8
  %549 = ptrtoint ptr %cfg.i.i623 to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load ptr, ptr %cfg.i.i623, align 8
  %write_readback.i26.i634 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %550, i32 0, i32 1
  %551 = ptrtoint ptr %write_readback.i26.i634 to i32
  call void @__asan_load1_noabort(i32 %551)
  %552 = load i8, ptr %write_readback.i26.i634, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %552)
  %tobool.not.i27.i635 = icmp eq i8 %552, 0
  br i1 %tobool.not.i27.i635, label %rtl_write_byte.exit21.i636.sw.epilog269_crit_edge, label %if.then.i30.i638

rtl_write_byte.exit21.i636.sw.epilog269_crit_edge: ; preds = %rtl_write_byte.exit21.i636
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog269

if.then.i30.i638:                                 ; preds = %rtl_write_byte.exit21.i636
  call void @__sanitizer_cov_trace_pc() #10
  %553 = ptrtoint ptr %read8_sync.i.i620 to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load ptr, ptr %read8_sync.i.i620, align 4
  %call.i29.i637 = tail call zeroext i8 %554(ptr noundef %524, i32 noundef 1346) #8
  br label %sw.epilog269

if.end262.critedge:                               ; preds = %sw.bb249
  %reg_bcn_ctrl_val.i640 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %555 = ptrtoint ptr %reg_bcn_ctrl_val.i640 to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load i32, ptr %reg_bcn_ctrl_val.i640, align 4
  %and.i641 = and i32 %556, -9
  store i32 %and.i641, ptr %reg_bcn_ctrl_val.i640, align 4
  %conv6.i642 = trunc i32 %and.i641 to i8
  %write8_async.i.i643 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %557 = ptrtoint ptr %write8_async.i.i643 to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load ptr, ptr %write8_async.i.i643, align 4
  tail call void %558(ptr noundef %1, i32 noundef 1360, i8 noundef zeroext %conv6.i642) #8
  %cfg.i.i644 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %559 = ptrtoint ptr %cfg.i.i644 to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load ptr, ptr %cfg.i.i644, align 8
  %write_readback.i.i645 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %560, i32 0, i32 1
  %561 = ptrtoint ptr %write_readback.i.i645 to i32
  call void @__asan_load1_noabort(i32 %561)
  %562 = load i8, ptr %write_readback.i.i645, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %562)
  %tobool.not.i.i646 = icmp eq i8 %562, 0
  br i1 %tobool.not.i.i646, label %if.end262.critedge._rtl92ee_set_bcn_ctrl_reg.exit651_crit_edge, label %if.then.i.i649

if.end262.critedge._rtl92ee_set_bcn_ctrl_reg.exit651_crit_edge: ; preds = %if.end262.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ee_set_bcn_ctrl_reg.exit651

if.then.i.i649:                                   ; preds = %if.end262.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i647 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %563 = ptrtoint ptr %read8_sync.i.i647 to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load ptr, ptr %read8_sync.i.i647, align 4
  %call.i.i648 = tail call zeroext i8 %564(ptr noundef %1, i32 noundef 1360) #8
  br label %_rtl92ee_set_bcn_ctrl_reg.exit651

_rtl92ee_set_bcn_ctrl_reg.exit651:                ; preds = %if.then.i.i649, %if.end262.critedge._rtl92ee_set_bcn_ctrl_reg.exit651_crit_edge
  %tsf.c414 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 49
  %565 = ptrtoint ptr %tsf.c414 to i32
  call void @__asan_load8_noabort(i32 %565)
  %566 = load i64, ptr %tsf.c414, align 8
  %conv255.c415 = trunc i64 %566 to i32
  %write32_async.i652 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %567 = ptrtoint ptr %write32_async.i652 to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load ptr, ptr %write32_async.i652, align 4
  tail call void %568(ptr noundef %1, i32 noundef 1376, i32 noundef %conv255.c415) #8
  %569 = ptrtoint ptr %cfg.i.i644 to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load ptr, ptr %cfg.i.i644, align 8
  %write_readback.i654 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %570, i32 0, i32 1
  %571 = ptrtoint ptr %write_readback.i654 to i32
  call void @__asan_load1_noabort(i32 %571)
  %572 = load i8, ptr %write_readback.i654, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %572)
  %tobool.not.i655 = icmp eq i8 %572, 0
  br i1 %tobool.not.i655, label %_rtl92ee_set_bcn_ctrl_reg.exit651.rtl_write_dword.exit659_crit_edge, label %if.then.i658

_rtl92ee_set_bcn_ctrl_reg.exit651.rtl_write_dword.exit659_crit_edge: ; preds = %_rtl92ee_set_bcn_ctrl_reg.exit651
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit659

if.then.i658:                                     ; preds = %_rtl92ee_set_bcn_ctrl_reg.exit651
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i656 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %573 = ptrtoint ptr %read32_sync.i656 to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load ptr, ptr %read32_sync.i656, align 4
  %call.i657 = tail call i32 %574(ptr noundef %1, i32 noundef 1376) #8
  br label %rtl_write_dword.exit659

rtl_write_dword.exit659:                          ; preds = %if.then.i658, %_rtl92ee_set_bcn_ctrl_reg.exit651.rtl_write_dword.exit659_crit_edge
  %575 = ptrtoint ptr %tsf.c414 to i32
  call void @__asan_load8_noabort(i32 %575)
  %576 = load i64, ptr %tsf.c414, align 8
  %shr257.c416 = lshr i64 %576, 32
  %conv259.c417 = trunc i64 %shr257.c416 to i32
  %577 = ptrtoint ptr %write32_async.i652 to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load ptr, ptr %write32_async.i652, align 4
  tail call void %578(ptr noundef %1, i32 noundef 1380, i32 noundef %conv259.c417) #8
  %579 = ptrtoint ptr %cfg.i.i644 to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load ptr, ptr %cfg.i.i644, align 8
  %write_readback.i662 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %580, i32 0, i32 1
  %581 = ptrtoint ptr %write_readback.i662 to i32
  call void @__asan_load1_noabort(i32 %581)
  %582 = load i8, ptr %write_readback.i662, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %582)
  %tobool.not.i663 = icmp eq i8 %582, 0
  br i1 %tobool.not.i663, label %rtl_write_dword.exit659.rtl_write_dword.exit667_crit_edge, label %if.then.i666

rtl_write_dword.exit659.rtl_write_dword.exit667_crit_edge: ; preds = %rtl_write_dword.exit659
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit667

if.then.i666:                                     ; preds = %rtl_write_dword.exit659
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i664 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %583 = ptrtoint ptr %read32_sync.i664 to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load ptr, ptr %read32_sync.i664, align 4
  %call.i665 = tail call i32 %584(ptr noundef %1, i32 noundef 1380) #8
  br label %rtl_write_dword.exit667

rtl_write_dword.exit667:                          ; preds = %if.then.i666, %rtl_write_dword.exit659.rtl_write_dword.exit667_crit_edge
  %585 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i669 = getelementptr inbounds %struct.rtl_priv, ptr %586, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %587 = ptrtoint ptr %reg_bcn_ctrl_val.i669 to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load i32, ptr %reg_bcn_ctrl_val.i669, align 4
  %or.i670 = or i32 %588, 8
  store i32 %or.i670, ptr %reg_bcn_ctrl_val.i669, align 4
  %conv6.i671 = trunc i32 %or.i670 to i8
  %write8_async.i.i672 = getelementptr inbounds %struct.rtl_priv, ptr %586, i32 0, i32 13, i32 5
  %589 = ptrtoint ptr %write8_async.i.i672 to i32
  call void @__asan_load4_noabort(i32 %589)
  %590 = load ptr, ptr %write8_async.i.i672, align 4
  tail call void %590(ptr noundef %586, i32 noundef 1360, i8 noundef zeroext %conv6.i671) #8
  %cfg.i.i673 = getelementptr inbounds %struct.rtl_priv, ptr %586, i32 0, i32 32
  %591 = ptrtoint ptr %cfg.i.i673 to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load ptr, ptr %cfg.i.i673, align 8
  %write_readback.i.i674 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %592, i32 0, i32 1
  %593 = ptrtoint ptr %write_readback.i.i674 to i32
  call void @__asan_load1_noabort(i32 %593)
  %594 = load i8, ptr %write_readback.i.i674, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %594)
  %tobool.not.i.i675 = icmp eq i8 %594, 0
  br i1 %tobool.not.i.i675, label %rtl_write_dword.exit667.sw.epilog269_crit_edge, label %if.then.i.i678

rtl_write_dword.exit667.sw.epilog269_crit_edge:   ; preds = %rtl_write_dword.exit667
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog269

if.then.i.i678:                                   ; preds = %rtl_write_dword.exit667
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i676 = getelementptr inbounds %struct.rtl_priv, ptr %586, i32 0, i32 13, i32 9
  %595 = ptrtoint ptr %read8_sync.i.i676 to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load ptr, ptr %read8_sync.i.i676, align 4
  %call.i.i677 = tail call zeroext i8 %596(ptr noundef %586, i32 noundef 1360) #8
  br label %sw.epilog269

sw.bb263:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %array) #8
  %597 = getelementptr inbounds [2 x i8], ptr %array, i32 0, i32 1
  %598 = ptrtoint ptr %array to i32
  call void @__asan_store1_noabort(i32 %598)
  store i8 -1, ptr %array, align 1
  %599 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %599)
  %600 = load i8, ptr %val, align 1
  %601 = ptrtoint ptr %597 to i32
  call void @__asan_store1_noabort(i32 %601)
  store i8 %600, ptr %597, align 1
  call void @rtl92ee_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 3, i32 noundef 2, ptr noundef nonnull %array) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %array) #8
  br label %sw.epilog269

sw.default267:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %variable to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef %conv) #8
  br label %sw.epilog269

sw.epilog269:                                     ; preds = %sw.default267, %sw.bb263, %if.then.i.i678, %rtl_write_dword.exit667.sw.epilog269_crit_edge, %if.then.i30.i638, %rtl_write_byte.exit21.i636.sw.epilog269_crit_edge, %if.then.i579, %sw.bb240.sw.epilog269_crit_edge, %sw.bb239, %if.end238, %if.else228, %_rtl92ee_fwlps_enter.exit, %sw.bb222, %sw.bb220, %sw.bb219, %if.then.i566, %if.else214.sw.epilog269_crit_edge, %if.then.i558, %if.then213.sw.epilog269_crit_edge, %sw.bb206, %sw.bb205, %sw.bb204, %if.then.i548, %sw.bb203.sw.epilog269_crit_edge, %if.then.i540, %sw.bb195.sw.epilog269_crit_edge, %rtl_write_dword.exit, %if.then.i527, %if.end190.sw.epilog269_crit_edge, %if.end146, %rtl_write_byte.exit518.3, %sw.bb71.sw.epilog269_crit_edge, %if.then.i509, %sw.bb70.sw.epilog269_crit_edge, %rtl_write_byte.exit502, %for.end55, %if.then.i485, %if.else.sw.epilog269_crit_edge, %if.then.i478, %if.then.sw.epilog269_crit_edge, %if.then.i440.5, %rtl_write_byte.exit441.4.sw.epilog269_crit_edge, %if.then.i432, %rtl_write_byte.exit425.sw.epilog269_crit_edge, %if.then.i.5, %rtl_write_byte.exit.4.sw.epilog269_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92ee_phy_set_io_cmd(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ee_set_fw_pwrmode_cmd(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_rtl92ee_fwlps_leave(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  %fw_current_inps = alloca i8, align 1
  %rpwm_val = alloca i8, align 1
  %fw_pwrmode = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fw_current_inps) #8
  %2 = ptrtoint ptr %fw_current_inps to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %fw_current_inps, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rpwm_val) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fw_pwrmode) #8
  %3 = ptrtoint ptr %fw_pwrmode to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %fw_pwrmode, align 1
  %low_power_enable = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 16
  %4 = ptrtoint ptr %low_power_enable to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %low_power_enable, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @_rtl92ee_set_fw_clock_on(ptr noundef %hw, i1 noundef zeroext false)
  %allow_sw_to_change_hwclc = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 48
  %6 = ptrtoint ptr %allow_sw_to_change_hwclc to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %allow_sw_to_change_hwclc, align 8
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %rpwm_val to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %rpwm_val, align 1
  %cfg7 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %8 = ptrtoint ptr %cfg7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cfg7, align 8
  %ops8 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %ops8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops8, align 4
  %set_hw_reg9 = getelementptr inbounds %struct.rtl_hal_ops, ptr %11, i32 0, i32 20
  %12 = ptrtoint ptr %set_hw_reg9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_hw_reg9, align 4
  call void %13(ptr noundef %hw, i8 noundef zeroext 60, ptr noundef nonnull %rpwm_val) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %cfg7.sink28 = phi ptr [ %cfg7, %if.else ], [ %cfg, %if.then ]
  %14 = ptrtoint ptr %cfg7.sink28 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cfg7.sink28, align 8
  %ops11 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %ops11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops11, align 4
  %set_hw_reg12 = getelementptr inbounds %struct.rtl_hal_ops, ptr %17, i32 0, i32 20
  %18 = ptrtoint ptr %set_hw_reg12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set_hw_reg12, align 4
  call void %19(ptr noundef %hw, i8 noundef zeroext 61, ptr noundef nonnull %fw_pwrmode) #8
  %20 = ptrtoint ptr %cfg7.sink28 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cfg7.sink28, align 8
  %ops14 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %ops14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops14, align 4
  %set_hw_reg15 = getelementptr inbounds %struct.rtl_hal_ops, ptr %23, i32 0, i32 20
  %24 = ptrtoint ptr %set_hw_reg15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %set_hw_reg15, align 4
  call void %25(ptr noundef %hw, i8 noundef zeroext 65, ptr noundef nonnull %fw_current_inps) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fw_pwrmode) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rpwm_val) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fw_current_inps) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_rtl92ee_download_rsvd_page(ptr noundef %hw) unnamed_addr #0 align 64 {
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
  %call.i = tail call zeroext i8 %3(ptr noundef %1, i32 noundef 257) #8
  %4 = or i8 %call.i, 1
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %5 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write8_async.i, align 4
  tail call void %6(ptr noundef %1, i32 noundef 257, i8 noundef zeroext %4) #8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %7 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %write_readback.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %entry.rtl_write_byte.exit_crit_edge, label %if.then.i

entry.rtl_write_byte.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read8_sync.i, align 4
  %call.i95 = tail call zeroext i8 %12(ptr noundef %1, i32 noundef 257) #8
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %entry.rtl_write_byte.exit_crit_edge
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i = getelementptr inbounds %struct.rtl_priv, ptr %14, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %reg_bcn_ctrl_val.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg_bcn_ctrl_val.i, align 4
  %and.i = and i32 %16, -9
  store i32 %and.i, ptr %reg_bcn_ctrl_val.i, align 4
  %conv6.i = trunc i32 %and.i to i8
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %14, i32 0, i32 13, i32 5
  %17 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %18(ptr noundef %14, i32 noundef 1360, i8 noundef zeroext %conv6.i) #8
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %14, i32 0, i32 32
  %19 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %write_readback.i.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i.i, label %rtl_write_byte.exit._rtl92ee_set_bcn_ctrl_reg.exit_crit_edge, label %if.then.i.i

rtl_write_byte.exit._rtl92ee_set_bcn_ctrl_reg.exit_crit_edge: ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ee_set_bcn_ctrl_reg.exit

if.then.i.i:                                      ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %14, i32 0, i32 13, i32 9
  %23 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = tail call zeroext i8 %24(ptr noundef %14, i32 noundef 1360) #8
  br label %_rtl92ee_set_bcn_ctrl_reg.exit

_rtl92ee_set_bcn_ctrl_reg.exit:                   ; preds = %if.then.i.i, %rtl_write_byte.exit._rtl92ee_set_bcn_ctrl_reg.exit_crit_edge
  %25 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i97 = getelementptr inbounds %struct.rtl_priv, ptr %26, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %27 = ptrtoint ptr %reg_bcn_ctrl_val.i97 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %reg_bcn_ctrl_val.i97, align 4
  %or.i = or i32 %28, 16
  store i32 %or.i, ptr %reg_bcn_ctrl_val.i97, align 4
  %conv6.i98 = trunc i32 %or.i to i8
  %write8_async.i.i99 = getelementptr inbounds %struct.rtl_priv, ptr %26, i32 0, i32 13, i32 5
  %29 = ptrtoint ptr %write8_async.i.i99 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write8_async.i.i99, align 4
  tail call void %30(ptr noundef %26, i32 noundef 1360, i8 noundef zeroext %conv6.i98) #8
  %cfg.i.i100 = getelementptr inbounds %struct.rtl_priv, ptr %26, i32 0, i32 32
  %31 = ptrtoint ptr %cfg.i.i100 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cfg.i.i100, align 8
  %write_readback.i.i101 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %write_readback.i.i101 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %write_readback.i.i101, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i.i102 = icmp eq i8 %34, 0
  br i1 %tobool.not.i.i102, label %_rtl92ee_set_bcn_ctrl_reg.exit._rtl92ee_set_bcn_ctrl_reg.exit106_crit_edge, label %if.then.i.i105

_rtl92ee_set_bcn_ctrl_reg.exit._rtl92ee_set_bcn_ctrl_reg.exit106_crit_edge: ; preds = %_rtl92ee_set_bcn_ctrl_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ee_set_bcn_ctrl_reg.exit106

if.then.i.i105:                                   ; preds = %_rtl92ee_set_bcn_ctrl_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i103 = getelementptr inbounds %struct.rtl_priv, ptr %26, i32 0, i32 13, i32 9
  %35 = ptrtoint ptr %read8_sync.i.i103 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read8_sync.i.i103, align 4
  %call.i.i104 = tail call zeroext i8 %36(ptr noundef %26, i32 noundef 1360) #8
  br label %_rtl92ee_set_bcn_ctrl_reg.exit106

_rtl92ee_set_bcn_ctrl_reg.exit106:                ; preds = %if.then.i.i105, %_rtl92ee_set_bcn_ctrl_reg.exit._rtl92ee_set_bcn_ctrl_reg.exit106_crit_edge
  %37 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read8_sync.i, align 4
  %call.i108 = tail call zeroext i8 %38(ptr noundef %1, i32 noundef 1058) #8
  %and = and i8 %call.i108, -65
  %39 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write8_async.i, align 4
  tail call void %40(ptr noundef %1, i32 noundef 1058, i8 noundef zeroext %and) #8
  %41 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cfg.i, align 8
  %write_readback.i111 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %write_readback.i111 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %write_readback.i111, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i112 = icmp eq i8 %44, 0
  br i1 %tobool.not.i112, label %_rtl92ee_set_bcn_ctrl_reg.exit106.rtl_write_byte.exit116_crit_edge, label %if.then.i115

_rtl92ee_set_bcn_ctrl_reg.exit106.rtl_write_byte.exit116_crit_edge: ; preds = %_rtl92ee_set_bcn_ctrl_reg.exit106
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit116

if.then.i115:                                     ; preds = %_rtl92ee_set_bcn_ctrl_reg.exit106
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %read8_sync.i, align 4
  %call.i114 = tail call zeroext i8 %46(ptr noundef %1, i32 noundef 1058) #8
  br label %rtl_write_byte.exit116

rtl_write_byte.exit116:                           ; preds = %if.then.i115, %_rtl92ee_set_bcn_ctrl_reg.exit106.rtl_write_byte.exit116_crit_edge
  %47 = and i8 %call.i108, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not = icmp eq i8 %47, 0
  br label %do.body

do.body:                                          ; preds = %land.rhs44.critedge.do.body_crit_edge, %rtl_write_byte.exit116
  %dlbcn_count.0 = phi i8 [ 0, %rtl_write_byte.exit116 ], [ %inc40, %land.rhs44.critedge.do.body_crit_edge ]
  %48 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %read8_sync.i, align 4
  %call.i118 = tail call zeroext i8 %49(ptr noundef %1, i32 noundef 522) #8
  %50 = or i8 %call.i118, 1
  %51 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write8_async.i, align 4
  tail call void %52(ptr noundef %1, i32 noundef 522, i8 noundef zeroext %50) #8
  %53 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cfg.i, align 8
  %write_readback.i121 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %write_readback.i121 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %write_readback.i121, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i122 = icmp eq i8 %56, 0
  br i1 %tobool.not.i122, label %do.body.rtl_write_byte.exit126_crit_edge, label %if.then.i125

do.body.rtl_write_byte.exit126_crit_edge:         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit126

if.then.i125:                                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %read8_sync.i, align 4
  %call.i124 = tail call zeroext i8 %58(ptr noundef %1, i32 noundef 522) #8
  br label %rtl_write_byte.exit126

rtl_write_byte.exit126:                           ; preds = %if.then.i125, %do.body.rtl_write_byte.exit126_crit_edge
  tail call void @rtl92ee_set_fw_rsvdpagepkt(ptr noundef %hw, i1 noundef zeroext false) #8
  %59 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %read8_sync.i, align 4
  %call.i128 = tail call zeroext i8 %60(ptr noundef %1, i32 noundef 899) #8
  %61 = and i8 %call.i128, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool14.not193.not = icmp eq i8 %61, 0
  br i1 %tobool14.not193.not, label %rtl_write_byte.exit126.while.end_crit_edge, label %rtl_write_byte.exit126.while.body_crit_edge

rtl_write_byte.exit126.while.body_crit_edge:      ; preds = %rtl_write_byte.exit126
  br label %while.body

rtl_write_byte.exit126.while.end_crit_edge:       ; preds = %rtl_write_byte.exit126
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %rtl_write_byte.exit126.while.body_crit_edge
  %count.0195 = phi i8 [ %inc, %while.body.while.body_crit_edge ], [ 0, %rtl_write_byte.exit126.while.body_crit_edge ]
  %inc = add nuw nsw i8 %count.0195, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 2147480) #8
  %63 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %read8_sync.i, align 4
  %call.i130 = tail call zeroext i8 %64(ptr noundef %1, i32 noundef 899) #8
  %65 = and i8 %call.i130, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool14.not = icmp ne i8 %65, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %count.0195)
  %cmp = icmp ult i8 %count.0195, 19
  %or.cond = select i1 %tobool14.not, i1 %cmp, i1 false
  br i1 %or.cond, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %rtl_write_byte.exit126.while.end_crit_edge
  %txbc_reg.0.lcssa = phi i8 [ %call.i128, %rtl_write_byte.exit126.while.end_crit_edge ], [ %call.i130, %while.body.while.end_crit_edge ]
  %or19 = or i8 %txbc_reg.0.lcssa, 16
  %66 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %write8_async.i, align 4
  tail call void %67(ptr noundef %1, i32 noundef 899, i8 noundef zeroext %or19) #8
  %68 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cfg.i, align 8
  %write_readback.i133 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %write_readback.i133 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %write_readback.i133, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool.not.i134 = icmp eq i8 %71, 0
  br i1 %tobool.not.i134, label %while.end.rtl_write_byte.exit138_crit_edge, label %if.then.i137

while.end.rtl_write_byte.exit138_crit_edge:       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit138

if.then.i137:                                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %read8_sync.i, align 4
  %call.i136 = tail call zeroext i8 %73(ptr noundef %1, i32 noundef 899) #8
  br label %rtl_write_byte.exit138

rtl_write_byte.exit138:                           ; preds = %if.then.i137, %while.end.rtl_write_byte.exit138_crit_edge
  %74 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %read8_sync.i, align 4
  %call.i140 = tail call zeroext i8 %75(ptr noundef %1, i32 noundef 522) #8
  %76 = and i8 %call.i140, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool25.not196 = icmp eq i8 %76, 0
  br i1 %tobool25.not196, label %rtl_write_byte.exit138.while.body31_crit_edge, label %rtl_write_byte.exit138.if.then38_crit_edge

rtl_write_byte.exit138.if.then38_crit_edge:       ; preds = %rtl_write_byte.exit138
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then38

rtl_write_byte.exit138.while.body31_crit_edge:    ; preds = %rtl_write_byte.exit138
  br label %while.body31

while.body31:                                     ; preds = %while.body31.while.body31_crit_edge, %rtl_write_byte.exit138.while.body31_crit_edge
  %count.1198 = phi i8 [ %inc32, %while.body31.while.body31_crit_edge ], [ 0, %rtl_write_byte.exit138.while.body31_crit_edge ]
  %inc32 = add nuw nsw i8 %count.1198, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %77(i32 noundef 10737400) #8
  %78 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %read8_sync.i, align 4
  %call.i142 = tail call zeroext i8 %79(ptr noundef %1, i32 noundef 522) #8
  %80 = and i8 %call.i142, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool25.not = icmp eq i8 %80, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %count.1198)
  %cmp28 = icmp ult i8 %count.1198, 19
  %or.cond93 = select i1 %tobool25.not, i1 %cmp28, i1 false
  br i1 %or.cond93, label %while.body31.while.body31_crit_edge, label %while.end34

while.body31.while.body31_crit_edge:              ; preds = %while.body31
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body31

while.end34:                                      ; preds = %while.body31
  br i1 %tobool25.not, label %land.rhs44.critedge, label %while.end34.if.then38_crit_edge

while.end34.if.then38_crit_edge:                  ; preds = %while.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then38

if.then38:                                        ; preds = %while.end34.if.then38_crit_edge, %rtl_write_byte.exit138.if.then38_crit_edge
  %81 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %write8_async.i, align 4
  tail call void %82(ptr noundef %1, i32 noundef 522, i8 noundef zeroext 1) #8
  %83 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cfg.i, align 8
  %write_readback.i145 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %write_readback.i145 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %write_readback.i145, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool.not.i146 = icmp eq i8 %86, 0
  br i1 %tobool.not.i146, label %if.then38.if.end53_crit_edge, label %if.then.i149

if.then38.if.end53_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then.i149:                                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  %87 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %read8_sync.i, align 4
  %call.i148 = tail call zeroext i8 %88(ptr noundef %1, i32 noundef 522) #8
  br label %if.end53

land.rhs44.critedge:                              ; preds = %while.end34
  %inc40 = add nuw nsw i8 %dlbcn_count.0, 1
  %cmp46 = icmp ult i8 %dlbcn_count.0, 4
  br i1 %cmp46, label %land.rhs44.critedge.do.body_crit_edge, label %if.then52.critedge

land.rhs44.critedge.do.body_crit_edge:            ; preds = %land.rhs44.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then52.critedge:                               ; preds = %land.rhs44.critedge
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.36) #8
  br label %if.end53

if.end53:                                         ; preds = %if.then52.critedge, %if.then.i149, %if.then38.if.end53_crit_edge
  %89 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i152 = getelementptr inbounds %struct.rtl_priv, ptr %90, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %91 = ptrtoint ptr %reg_bcn_ctrl_val.i152 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %reg_bcn_ctrl_val.i152, align 4
  %or.i153 = or i32 %92, 8
  store i32 %or.i153, ptr %reg_bcn_ctrl_val.i152, align 4
  %conv6.i154 = trunc i32 %or.i153 to i8
  %write8_async.i.i155 = getelementptr inbounds %struct.rtl_priv, ptr %90, i32 0, i32 13, i32 5
  %93 = ptrtoint ptr %write8_async.i.i155 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %write8_async.i.i155, align 4
  tail call void %94(ptr noundef %90, i32 noundef 1360, i8 noundef zeroext %conv6.i154) #8
  %cfg.i.i156 = getelementptr inbounds %struct.rtl_priv, ptr %90, i32 0, i32 32
  %95 = ptrtoint ptr %cfg.i.i156 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cfg.i.i156, align 8
  %write_readback.i.i157 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %write_readback.i.i157 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %write_readback.i.i157, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool.not.i.i158 = icmp eq i8 %98, 0
  br i1 %tobool.not.i.i158, label %if.end53._rtl92ee_set_bcn_ctrl_reg.exit162_crit_edge, label %if.then.i.i161

if.end53._rtl92ee_set_bcn_ctrl_reg.exit162_crit_edge: ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ee_set_bcn_ctrl_reg.exit162

if.then.i.i161:                                   ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i159 = getelementptr inbounds %struct.rtl_priv, ptr %90, i32 0, i32 13, i32 9
  %99 = ptrtoint ptr %read8_sync.i.i159 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %read8_sync.i.i159, align 4
  %call.i.i160 = tail call zeroext i8 %100(ptr noundef %90, i32 noundef 1360) #8
  br label %_rtl92ee_set_bcn_ctrl_reg.exit162

_rtl92ee_set_bcn_ctrl_reg.exit162:                ; preds = %if.then.i.i161, %if.end53._rtl92ee_set_bcn_ctrl_reg.exit162_crit_edge
  %101 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i164 = getelementptr inbounds %struct.rtl_priv, ptr %102, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %103 = ptrtoint ptr %reg_bcn_ctrl_val.i164 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %reg_bcn_ctrl_val.i164, align 4
  %and.i165 = and i32 %104, -17
  store i32 %and.i165, ptr %reg_bcn_ctrl_val.i164, align 4
  %conv6.i166 = trunc i32 %and.i165 to i8
  %write8_async.i.i167 = getelementptr inbounds %struct.rtl_priv, ptr %102, i32 0, i32 13, i32 5
  %105 = ptrtoint ptr %write8_async.i.i167 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %write8_async.i.i167, align 4
  tail call void %106(ptr noundef %102, i32 noundef 1360, i8 noundef zeroext %conv6.i166) #8
  %cfg.i.i168 = getelementptr inbounds %struct.rtl_priv, ptr %102, i32 0, i32 32
  %107 = ptrtoint ptr %cfg.i.i168 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %cfg.i.i168, align 8
  %write_readback.i.i169 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %write_readback.i.i169 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %write_readback.i.i169, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool.not.i.i170 = icmp eq i8 %110, 0
  br i1 %tobool.not.i.i170, label %_rtl92ee_set_bcn_ctrl_reg.exit162._rtl92ee_set_bcn_ctrl_reg.exit174_crit_edge, label %if.then.i.i173

_rtl92ee_set_bcn_ctrl_reg.exit162._rtl92ee_set_bcn_ctrl_reg.exit174_crit_edge: ; preds = %_rtl92ee_set_bcn_ctrl_reg.exit162
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ee_set_bcn_ctrl_reg.exit174

if.then.i.i173:                                   ; preds = %_rtl92ee_set_bcn_ctrl_reg.exit162
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i171 = getelementptr inbounds %struct.rtl_priv, ptr %102, i32 0, i32 13, i32 9
  %111 = ptrtoint ptr %read8_sync.i.i171 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %read8_sync.i.i171, align 4
  %call.i.i172 = tail call zeroext i8 %112(ptr noundef %102, i32 noundef 1360) #8
  br label %_rtl92ee_set_bcn_ctrl_reg.exit174

_rtl92ee_set_bcn_ctrl_reg.exit174:                ; preds = %if.then.i.i173, %_rtl92ee_set_bcn_ctrl_reg.exit162._rtl92ee_set_bcn_ctrl_reg.exit174_crit_edge
  br i1 %tobool.not, label %_rtl92ee_set_bcn_ctrl_reg.exit174.if.end56_crit_edge, label %if.then55

_rtl92ee_set_bcn_ctrl_reg.exit174.if.end56_crit_edge: ; preds = %_rtl92ee_set_bcn_ctrl_reg.exit174
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.then55:                                        ; preds = %_rtl92ee_set_bcn_ctrl_reg.exit174
  %113 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %write8_async.i, align 4
  tail call void %114(ptr noundef %1, i32 noundef 1058, i8 noundef zeroext %call.i108) #8
  %115 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %cfg.i, align 8
  %write_readback.i177 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %write_readback.i177 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %write_readback.i177, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool.not.i178 = icmp eq i8 %118, 0
  br i1 %tobool.not.i178, label %if.then55.if.end56_crit_edge, label %if.then.i181

if.then55.if.end56_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.then.i181:                                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #10
  %119 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %read8_sync.i, align 4
  %call.i180 = tail call zeroext i8 %120(ptr noundef %1, i32 noundef 1058) #8
  br label %if.end56

if.end56:                                         ; preds = %if.then.i181, %if.then55.if.end56_crit_edge, %_rtl92ee_set_bcn_ctrl_reg.exit174.if.end56_crit_edge
  %121 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %read8_sync.i, align 4
  %call.i184 = tail call zeroext i8 %122(ptr noundef %1, i32 noundef 257) #8
  %123 = and i8 %call.i184, -2
  %124 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %write8_async.i, align 4
  tail call void %125(ptr noundef %1, i32 noundef 257, i8 noundef zeroext %123) #8
  %126 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %cfg.i, align 8
  %write_readback.i187 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %write_readback.i187 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %write_readback.i187, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool.not.i188 = icmp eq i8 %129, 0
  br i1 %tobool.not.i188, label %if.end56.rtl_write_byte.exit192_crit_edge, label %if.then.i191

if.end56.rtl_write_byte.exit192_crit_edge:        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit192

if.then.i191:                                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  %130 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %read8_sync.i, align 4
  %call.i190 = tail call zeroext i8 %131(ptr noundef %1, i32 noundef 257) #8
  br label %rtl_write_byte.exit192

rtl_write_byte.exit192:                           ; preds = %if.then.i191, %if.end56.rtl_write_byte.exit192_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ee_set_fw_media_status_rpt_cmd(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ee_set_p2p_ps_offload_cmd(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ee_fill_h2c_cmd(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ee_enable_hw_security_config(ptr noundef %hw) local_unnamed_addr #0 align 64 {
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 3, ptr noundef nonnull @.str.5, i32 noundef %3, i32 noundef %5) #8
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
  %11 = load i8, ptr %sw_crypto, align 8, !range !138
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
  %13 = load i8, ptr %sec, align 8, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool3.not = icmp eq i8 %13, 0
  br i1 %tobool3.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 3, ptr noundef nonnull @.str.6) #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %use_defaultkey = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 2
  %14 = ptrtoint ptr %use_defaultkey to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %use_defaultkey, align 2, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool5.not = icmp eq i8 %15, 0
  %16 = select i1 %tobool5.not, i8 -52, i8 -49
  %17 = ptrtoint ptr %sec_reg_value to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %sec_reg_value, align 1
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %18 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %19(ptr noundef %1, i32 noundef 257) #8
  %20 = or i8 %call.i, 2
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %21 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write8_async.i, align 4
  tail call void %22(ptr noundef %1, i32 noundef 257, i8 noundef zeroext %20) #8
  %23 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cfg, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %write_readback.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i, label %if.end.rtl_write_byte.exit_crit_edge, label %if.then.i

if.end.rtl_write_byte.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read8_sync.i, align 4
  %call.i34 = tail call zeroext i8 %28(ptr noundef %1, i32 noundef 257) #8
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %if.end.rtl_write_byte.exit_crit_edge
  %29 = ptrtoint ptr %sec_reg_value to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %sec_reg_value, align 1
  %conv18 = zext i8 %30 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 3, ptr noundef nonnull @.str.7, i32 noundef %conv18) #8
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
  call void %36(ptr noundef %hw, i8 noundef zeroext 27, ptr noundef nonnull %sec_reg_value) #8
  br label %cleanup

cleanup:                                          ; preds = %rtl_write_byte.exit, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sec_reg_value) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl92ee_hw_init(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %tmp_u1b = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mac80211 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp_u1b) #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.8) #8
  %being_init_adapter = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 4
  %2 = ptrtoint ptr %being_init_adapter to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %being_init_adapter, align 1
  %intf_ops = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 33
  %3 = ptrtoint ptr %intf_ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %intf_ops, align 4
  %disable_aspm = getelementptr inbounds %struct.rtl_intf_ops, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %disable_aspm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %disable_aspm, align 4
  tail call void %6(ptr noundef %hw) #8
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %7 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %8(ptr noundef %1, i32 noundef 9) #8
  %9 = ptrtoint ptr %tmp_u1b to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %call.i, ptr %tmp_u1b, align 1
  %10 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read8_sync.i, align 4
  %call.i196 = tail call zeroext i8 %11(ptr noundef %1, i32 noundef 256) #8
  %12 = and i8 %call.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i196)
  %cmp.not = icmp eq i8 %call.i196, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp.not
  call void @__sanitizer_cov_trace_const_cmp1(i8 -22, i8 %call.i196)
  %cmp11.not = icmp eq i8 %call.i196, -22
  %or.cond194 = select i1 %or.cond, i1 true, i1 %cmp11.not
  br i1 %or.cond194, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %fw_ps_state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 49
  %13 = ptrtoint ptr %fw_ps_state to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %fw_ps_state, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %.sink = phi i8 [ 0, %if.else ], [ 1, %entry.if.end_crit_edge ]
  %14 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 6
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %.sink, ptr %14, align 1
  %16 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read8_sync.i, align 4
  %call.i.i = tail call zeroext i8 %17(ptr noundef %1, i32 noundef 1011) #8
  %18 = and i8 %call.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  %or.i = or i8 %call.i.i, 4
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %19 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %20(ptr noundef %1, i32 noundef 1011, i8 noundef zeroext %or.i) #8
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %21 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %write_readback.i.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i.i, label %if.then.i.while.body.i.preheader_crit_edge, label %if.then.i.i

if.then.i.while.body.i.preheader_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.preheader

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read8_sync.i, align 4
  %call.i20.i = tail call zeroext i8 %26(ptr noundef %1, i32 noundef 1011) #8
  br label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %if.then.i.i, %if.then.i.while.body.i.preheader_crit_edge
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.i.preheader
  %__ms.023.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ 100, %while.body.i.preheader ]
  %dec.i = add nsw i32 %__ms.023.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #8
  %tobool3.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool3.not.i, label %while.body.i.if.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %while.body.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %28 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read8_sync.i, align 4
  %call.i22.i = tail call zeroext i8 %29(ptr noundef %1, i32 noundef 1011) #8
  %30 = and i8 %call.i22.i, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %if.end.i.if.end19_crit_edge, label %if.then15

if.end.i.if.end19_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then15:                                        ; preds = %if.end.i
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.37) #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 3, ptr noundef nonnull @.str.9) #8
  %32 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %14, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool17.not = icmp eq i8 %33, 0
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.38) #8
  %34 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read8_sync.i, align 4
  %call.i.i198 = tail call zeroext i8 %35(ptr noundef %1, i32 noundef 28) #8
  %36 = and i8 %call.i.i198, -4
  %write8_async.i.i199 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %37 = ptrtoint ptr %write8_async.i.i199 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write8_async.i.i199, align 4
  tail call void %38(ptr noundef %1, i32 noundef 28, i8 noundef zeroext %36) #8
  %cfg.i.i200 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %39 = ptrtoint ptr %cfg.i.i200 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cfg.i.i200, align 8
  %write_readback.i.i201 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %write_readback.i.i201 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %write_readback.i.i201, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i.i202 = icmp eq i8 %42, 0
  br i1 %tobool.not.i.i202, label %if.then15.rtl_write_byte.exit.i204_crit_edge, label %if.then.i.i203

if.then15.rtl_write_byte.exit.i204_crit_edge:     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit.i204

if.then.i.i203:                                   ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %read8_sync.i, align 4
  %call.i90.i = tail call zeroext i8 %44(ptr noundef %1, i32 noundef 28) #8
  br label %rtl_write_byte.exit.i204

rtl_write_byte.exit.i204:                         ; preds = %if.then.i.i203, %if.then15.rtl_write_byte.exit.i204_crit_edge
  %45 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %read8_sync.i, align 4
  %call.i92.i = tail call zeroext i8 %46(ptr noundef %1, i32 noundef 204) #8
  %47 = or i8 %call.i92.i, 4
  %48 = ptrtoint ptr %write8_async.i.i199 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write8_async.i.i199, align 4
  tail call void %49(ptr noundef %1, i32 noundef 204, i8 noundef zeroext %47) #8
  %50 = ptrtoint ptr %cfg.i.i200 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cfg.i.i200, align 8
  %write_readback.i95.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %write_readback.i95.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %write_readback.i95.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.not.i96.i = icmp eq i8 %53, 0
  br i1 %tobool.not.i96.i, label %rtl_write_byte.exit.i204.rtl_write_byte.exit100.i_crit_edge, label %if.then.i99.i

rtl_write_byte.exit.i204.rtl_write_byte.exit100.i_crit_edge: ; preds = %rtl_write_byte.exit.i204
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit100.i

if.then.i99.i:                                    ; preds = %rtl_write_byte.exit.i204
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %read8_sync.i, align 4
  %call.i98.i = tail call zeroext i8 %55(ptr noundef %1, i32 noundef 204) #8
  br label %rtl_write_byte.exit100.i

rtl_write_byte.exit100.i:                         ; preds = %if.then.i99.i, %rtl_write_byte.exit.i204.rtl_write_byte.exit100.i_crit_edge
  %56 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %read8_sync.i, align 4
  %call.i102.i = tail call zeroext i8 %57(ptr noundef %1, i32 noundef 646) #8
  %58 = and i8 %call.i102.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i205 = icmp eq i8 %58, 0
  br i1 %tobool.not.i205, label %if.else.i, label %rtl_write_byte.exit100.i.if.end.i206_crit_edge

rtl_write_byte.exit100.i.if.end.i206_crit_edge:   ; preds = %rtl_write_byte.exit100.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i206

if.else.i:                                        ; preds = %rtl_write_byte.exit100.i
  %or9.i = or i8 %call.i102.i, 4
  %59 = ptrtoint ptr %write8_async.i.i199 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %write8_async.i.i199, align 4
  tail call void %60(ptr noundef %1, i32 noundef 646, i8 noundef zeroext %or9.i) #8
  %61 = ptrtoint ptr %cfg.i.i200 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cfg.i.i200, align 8
  %write_readback.i105.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %write_readback.i105.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %write_readback.i105.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.not.i106.i = icmp eq i8 %64, 0
  br i1 %tobool.not.i106.i, label %if.else.i.if.end.i206_crit_edge, label %if.then.i109.i

if.else.i.if.end.i206_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i206

if.then.i109.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %read8_sync.i, align 4
  %call.i108.i = tail call zeroext i8 %66(ptr noundef %1, i32 noundef 646) #8
  br label %if.end.i206

if.end.i206:                                      ; preds = %if.then.i109.i, %if.else.i.if.end.i206_crit_edge, %rtl_write_byte.exit100.i.if.end.i206_crit_edge
  %67 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %read8_sync.i, align 4
  %call.i112.i = tail call zeroext i8 %68(ptr noundef %1, i32 noundef 769) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i112.i)
  %cmp.not.i = icmp eq i8 %call.i112.i, -1
  br i1 %cmp.not.i, label %if.end.i206.if.end15.i_crit_edge, label %if.then14.i

if.end.i206.if.end15.i_crit_edge:                 ; preds = %if.end.i206
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.then14.i:                                      ; preds = %if.end.i206
  %69 = ptrtoint ptr %write8_async.i.i199 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %write8_async.i.i199, align 4
  tail call void %70(ptr noundef %1, i32 noundef 769, i8 noundef zeroext -1) #8
  %71 = ptrtoint ptr %cfg.i.i200 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cfg.i.i200, align 8
  %write_readback.i115.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %write_readback.i115.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %write_readback.i115.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool.not.i116.i = icmp eq i8 %74, 0
  br i1 %tobool.not.i116.i, label %if.then14.i.if.end15.i_crit_edge, label %if.then.i119.i

if.then14.i.if.end15.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.then.i119.i:                                   ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %read8_sync.i, align 4
  %call.i118.i = tail call zeroext i8 %76(ptr noundef %1, i32 noundef 769) #8
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then.i119.i, %if.then14.i.if.end15.i_crit_edge, %if.end.i206.if.end15.i_crit_edge
  br i1 %tobool17.not, label %if.end29.critedge.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.end15.i
  %77 = ptrtoint ptr %write8_async.i.i199 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %write8_async.i.i199, align 4
  tail call void %78(ptr noundef %1, i32 noundef 256, i8 noundef zeroext 0) #8
  %79 = ptrtoint ptr %cfg.i.i200 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cfg.i.i200, align 8
  %write_readback.i123.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %write_readback.i123.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %write_readback.i123.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool.not.i124.i = icmp eq i8 %82, 0
  br i1 %tobool.not.i124.i, label %if.then17.i.rtl_write_byte.exit128.i_crit_edge, label %if.then.i127.i

if.then17.i.rtl_write_byte.exit128.i_crit_edge:   ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit128.i

if.then.i127.i:                                   ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %83 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %read8_sync.i, align 4
  %call.i126.i = tail call zeroext i8 %84(ptr noundef %1, i32 noundef 256) #8
  br label %rtl_write_byte.exit128.i

rtl_write_byte.exit128.i:                         ; preds = %if.then.i127.i, %if.then17.i.rtl_write_byte.exit128.i_crit_edge
  %85 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %read8_sync.i, align 4
  %call.i130.i = tail call zeroext i8 %86(ptr noundef %1, i32 noundef 3) #8
  %87 = and i8 %call.i130.i, -2
  %88 = ptrtoint ptr %write8_async.i.i199 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %write8_async.i.i199, align 4
  tail call void %89(ptr noundef %1, i32 noundef 3, i8 noundef zeroext %87) #8
  %90 = ptrtoint ptr %cfg.i.i200 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %cfg.i.i200, align 8
  %write_readback.i133.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %write_readback.i133.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %write_readback.i133.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool.not.i134.i = icmp eq i8 %93, 0
  br i1 %tobool.not.i134.i, label %rtl_write_byte.exit128.i.rtl_write_byte.exit138.i_crit_edge, label %if.then.i137.i

rtl_write_byte.exit128.i.rtl_write_byte.exit138.i_crit_edge: ; preds = %rtl_write_byte.exit128.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit138.i

if.then.i137.i:                                   ; preds = %rtl_write_byte.exit128.i
  call void @__sanitizer_cov_trace_pc() #10
  %94 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %read8_sync.i, align 4
  %call.i136.i = tail call zeroext i8 %95(ptr noundef %1, i32 noundef 3) #8
  br label %rtl_write_byte.exit138.i

rtl_write_byte.exit138.i:                         ; preds = %if.then.i137.i, %rtl_write_byte.exit128.i.rtl_write_byte.exit138.i_crit_edge
  %96 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %read8_sync.i, align 4
  %call.i140.i = tail call zeroext i8 %97(ptr noundef %1, i32 noundef 3) #8
  %98 = or i8 %call.i140.i, 1
  %99 = ptrtoint ptr %write8_async.i.i199 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %write8_async.i.i199, align 4
  tail call void %100(ptr noundef %1, i32 noundef 3, i8 noundef zeroext %98) #8
  %101 = ptrtoint ptr %cfg.i.i200 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %cfg.i.i200, align 8
  %write_readback.i143.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %write_readback.i143.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %write_readback.i143.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool.not.i144.i = icmp eq i8 %104, 0
  br i1 %tobool.not.i144.i, label %rtl_write_byte.exit138.i.rtl_write_byte.exit148.i_crit_edge, label %if.then.i147.i

rtl_write_byte.exit138.i.rtl_write_byte.exit148.i_crit_edge: ; preds = %rtl_write_byte.exit138.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit148.i

if.then.i147.i:                                   ; preds = %rtl_write_byte.exit138.i
  call void @__sanitizer_cov_trace_pc() #10
  %105 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %read8_sync.i, align 4
  %call.i146.i = tail call zeroext i8 %106(ptr noundef %1, i32 noundef 3) #8
  br label %rtl_write_byte.exit148.i

rtl_write_byte.exit148.i:                         ; preds = %if.then.i147.i, %rtl_write_byte.exit138.i.rtl_write_byte.exit148.i_crit_edge
  %107 = ptrtoint ptr %write8_async.i.i199 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %write8_async.i.i199, align 4
  tail call void %108(ptr noundef %1, i32 noundef 256, i8 noundef zeroext -1) #8
  %109 = ptrtoint ptr %cfg.i.i200 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %cfg.i.i200, align 8
  %write_readback.i151.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %write_readback.i151.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %write_readback.i151.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool.not.i152.i = icmp eq i8 %112, 0
  br i1 %tobool.not.i152.i, label %rtl_write_byte.exit148.i.rtl_write_byte.exit156.i_crit_edge, label %if.then.i155.i

rtl_write_byte.exit148.i.rtl_write_byte.exit156.i_crit_edge: ; preds = %rtl_write_byte.exit148.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit156.i

if.then.i155.i:                                   ; preds = %rtl_write_byte.exit148.i
  call void @__sanitizer_cov_trace_pc() #10
  %113 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %read8_sync.i, align 4
  %call.i154.i = tail call zeroext i8 %114(ptr noundef %1, i32 noundef 256) #8
  br label %rtl_write_byte.exit156.i

rtl_write_byte.exit156.i:                         ; preds = %if.then.i155.i, %rtl_write_byte.exit148.i.rtl_write_byte.exit156.i_crit_edge
  %115 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %read8_sync.i, align 4
  %call.i158.i = tail call zeroext i8 %116(ptr noundef %1, i32 noundef 250) #8
  %117 = or i8 %call.i158.i, 2
  %118 = ptrtoint ptr %write8_async.i.i199 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %write8_async.i.i199, align 4
  tail call void %119(ptr noundef %1, i32 noundef 250, i8 noundef zeroext %117) #8
  %120 = ptrtoint ptr %cfg.i.i200 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %cfg.i.i200, align 8
  %write_readback.i161.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %write_readback.i161.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %write_readback.i161.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool.not.i162.i = icmp eq i8 %123, 0
  br i1 %tobool.not.i162.i, label %rtl_write_byte.exit156.i.if.end43.i_crit_edge, label %rtl_write_byte.exit156.i.if.end43.sink.split.i_crit_edge

rtl_write_byte.exit156.i.if.end43.sink.split.i_crit_edge: ; preds = %rtl_write_byte.exit156.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.sink.split.i

rtl_write_byte.exit156.i.if.end43.i_crit_edge:    ; preds = %rtl_write_byte.exit156.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.i

if.end29.critedge.i:                              ; preds = %if.end15.i
  %124 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %read8_sync.i, align 4
  %call.i168.i = tail call zeroext i8 %125(ptr noundef %1, i32 noundef 3) #8
  %126 = and i8 %call.i168.i, -2
  %127 = ptrtoint ptr %write8_async.i.i199 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %write8_async.i.i199, align 4
  tail call void %128(ptr noundef %1, i32 noundef 3, i8 noundef zeroext %126) #8
  %129 = ptrtoint ptr %cfg.i.i200 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %cfg.i.i200, align 8
  %write_readback.i171.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %write_readback.i171.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %write_readback.i171.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %tobool.not.i172.i = icmp eq i8 %132, 0
  br i1 %tobool.not.i172.i, label %if.end29.critedge.i.rtl_write_byte.exit176.i_crit_edge, label %if.then.i175.i

if.end29.critedge.i.rtl_write_byte.exit176.i_crit_edge: ; preds = %if.end29.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit176.i

if.then.i175.i:                                   ; preds = %if.end29.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  %133 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %read8_sync.i, align 4
  %call.i174.i = tail call zeroext i8 %134(ptr noundef %1, i32 noundef 3) #8
  br label %rtl_write_byte.exit176.i

rtl_write_byte.exit176.i:                         ; preds = %if.then.i175.i, %if.end29.critedge.i.rtl_write_byte.exit176.i_crit_edge
  %135 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %read8_sync.i, align 4
  %call.i178.i = tail call zeroext i8 %136(ptr noundef %1, i32 noundef 3) #8
  %137 = or i8 %call.i178.i, 1
  %138 = ptrtoint ptr %write8_async.i.i199 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %write8_async.i.i199, align 4
  tail call void %139(ptr noundef %1, i32 noundef 3, i8 noundef zeroext %137) #8
  %140 = ptrtoint ptr %cfg.i.i200 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %cfg.i.i200, align 8
  %write_readback.i181.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %141, i32 0, i32 1
  %142 = ptrtoint ptr %write_readback.i181.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %write_readback.i181.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool.not.i182.i = icmp eq i8 %143, 0
  br i1 %tobool.not.i182.i, label %rtl_write_byte.exit176.i.rtl_write_byte.exit186.i_crit_edge, label %if.then.i185.i

rtl_write_byte.exit176.i.rtl_write_byte.exit186.i_crit_edge: ; preds = %rtl_write_byte.exit176.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit186.i

if.then.i185.i:                                   ; preds = %rtl_write_byte.exit176.i
  call void @__sanitizer_cov_trace_pc() #10
  %144 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %read8_sync.i, align 4
  %call.i184.i = tail call zeroext i8 %145(ptr noundef %1, i32 noundef 3) #8
  br label %rtl_write_byte.exit186.i

rtl_write_byte.exit186.i:                         ; preds = %if.then.i185.i, %rtl_write_byte.exit176.i.rtl_write_byte.exit186.i_crit_edge
  %146 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %read8_sync.i, align 4
  %call.i188.i = tail call zeroext i8 %147(ptr noundef %1, i32 noundef 250) #8
  %148 = or i8 %call.i188.i, 2
  %149 = ptrtoint ptr %write8_async.i.i199 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %write8_async.i.i199, align 4
  tail call void %150(ptr noundef %1, i32 noundef 250, i8 noundef zeroext %148) #8
  %151 = ptrtoint ptr %cfg.i.i200 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %cfg.i.i200, align 8
  %write_readback.i191.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %152, i32 0, i32 1
  %153 = ptrtoint ptr %write_readback.i191.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %write_readback.i191.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %154)
  %tobool.not.i192.i = icmp eq i8 %154, 0
  br i1 %tobool.not.i192.i, label %rtl_write_byte.exit186.i.rtl_write_byte.exit196.i_crit_edge, label %if.then.i195.i

rtl_write_byte.exit186.i.rtl_write_byte.exit196.i_crit_edge: ; preds = %rtl_write_byte.exit186.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit196.i

if.then.i195.i:                                   ; preds = %rtl_write_byte.exit186.i
  call void @__sanitizer_cov_trace_pc() #10
  %155 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %read8_sync.i, align 4
  %call.i194.i = tail call zeroext i8 %156(ptr noundef %1, i32 noundef 250) #8
  br label %rtl_write_byte.exit196.i

rtl_write_byte.exit196.i:                         ; preds = %if.then.i195.i, %rtl_write_byte.exit186.i.rtl_write_byte.exit196.i_crit_edge
  br i1 %tobool.not.i205, label %if.then37.i, label %rtl_write_byte.exit196.i.if.end42.i_crit_edge

rtl_write_byte.exit196.i.if.end42.i_crit_edge:    ; preds = %rtl_write_byte.exit196.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.i

if.then37.i:                                      ; preds = %rtl_write_byte.exit196.i
  %157 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %read8_sync.i, align 4
  %call.i198.i = tail call zeroext i8 %158(ptr noundef %1, i32 noundef 646) #8
  %159 = and i8 %call.i198.i, -5
  %160 = ptrtoint ptr %write8_async.i.i199 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %write8_async.i.i199, align 4
  tail call void %161(ptr noundef %1, i32 noundef 646, i8 noundef zeroext %159) #8
  %162 = ptrtoint ptr %cfg.i.i200 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %cfg.i.i200, align 8
  %write_readback.i201.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %163, i32 0, i32 1
  %164 = ptrtoint ptr %write_readback.i201.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %write_readback.i201.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %165)
  %tobool.not.i202.i = icmp eq i8 %165, 0
  br i1 %tobool.not.i202.i, label %if.then37.i.if.end42.i_crit_edge, label %if.then.i205.i

if.then37.i.if.end42.i_crit_edge:                 ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.i

if.then.i205.i:                                   ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #10
  %166 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %read8_sync.i, align 4
  %call.i204.i = tail call zeroext i8 %167(ptr noundef %1, i32 noundef 646) #8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then.i205.i, %if.then37.i.if.end42.i_crit_edge, %rtl_write_byte.exit196.i.if.end42.i_crit_edge
  %168 = ptrtoint ptr %write8_async.i.i199 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %write8_async.i.i199, align 4
  tail call void %169(ptr noundef %1, i32 noundef 769, i8 noundef zeroext %call.i112.i) #8
  %170 = ptrtoint ptr %cfg.i.i200 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %cfg.i.i200, align 8
  %write_readback.i209.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %171, i32 0, i32 1
  %172 = ptrtoint ptr %write_readback.i209.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %write_readback.i209.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %173)
  %tobool.not.i210.i = icmp eq i8 %173, 0
  br i1 %tobool.not.i210.i, label %if.end42.i.if.end43.i_crit_edge, label %if.end42.i.if.end43.sink.split.i_crit_edge

if.end42.i.if.end43.sink.split.i_crit_edge:       ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.sink.split.i

if.end42.i.if.end43.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.i

if.end43.sink.split.i:                            ; preds = %if.end42.i.if.end43.sink.split.i_crit_edge, %rtl_write_byte.exit156.i.if.end43.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 250, %rtl_write_byte.exit156.i.if.end43.sink.split.i_crit_edge ], [ 769, %if.end42.i.if.end43.sink.split.i_crit_edge ]
  %174 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %read8_sync.i, align 4
  %call.i212.i = tail call zeroext i8 %175(ptr noundef %1, i32 noundef %.sink.i) #8
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.end43.sink.split.i, %if.end42.i.if.end43.i_crit_edge, %rtl_write_byte.exit156.i.if.end43.i_crit_edge
  %176 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %read8_sync.i, align 4
  %call.i216.i = tail call zeroext i8 %177(ptr noundef %1, i32 noundef 204) #8
  %178 = and i8 %call.i216.i, -5
  %179 = ptrtoint ptr %write8_async.i.i199 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %write8_async.i.i199, align 4
  tail call void %180(ptr noundef %1, i32 noundef 204, i8 noundef zeroext %178) #8
  %181 = ptrtoint ptr %cfg.i.i200 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %cfg.i.i200, align 8
  %write_readback.i219.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %182, i32 0, i32 1
  %183 = ptrtoint ptr %write_readback.i219.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %write_readback.i219.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %184)
  %tobool.not.i220.i = icmp eq i8 %184, 0
  br i1 %tobool.not.i220.i, label %if.end43.i._rtl8192ee_reset_pcie_interface_dma.exit_crit_edge, label %if.then.i223.i

if.end43.i._rtl8192ee_reset_pcie_interface_dma.exit_crit_edge: ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl8192ee_reset_pcie_interface_dma.exit

if.then.i223.i:                                   ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  %185 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %read8_sync.i, align 4
  %call.i222.i = tail call zeroext i8 %186(ptr noundef %1, i32 noundef 204) #8
  br label %_rtl8192ee_reset_pcie_interface_dma.exit

_rtl8192ee_reset_pcie_interface_dma.exit:         ; preds = %if.then.i223.i, %if.end43.i._rtl8192ee_reset_pcie_interface_dma.exit_crit_edge
  %187 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 0, ptr %14, align 1
  br label %if.end19

if.end19:                                         ; preds = %_rtl8192ee_reset_pcie_interface_dma.exit, %if.end.i.if.end19_crit_edge
  %188 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %priv, align 8
  %write8_async.i.i207 = getelementptr inbounds %struct.rtl_priv, ptr %189, i32 0, i32 13, i32 5
  %190 = ptrtoint ptr %write8_async.i.i207 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %write8_async.i.i207, align 4
  tail call void %191(ptr noundef %189, i32 noundef 28, i8 noundef zeroext 0) #8
  %cfg.i.i208 = getelementptr inbounds %struct.rtl_priv, ptr %189, i32 0, i32 32
  %192 = ptrtoint ptr %cfg.i.i208 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %cfg.i.i208, align 8
  %write_readback.i.i209 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %193, i32 0, i32 1
  %194 = ptrtoint ptr %write_readback.i.i209 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %write_readback.i.i209, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %195)
  %tobool.not.i.i210 = icmp eq i8 %195, 0
  br i1 %tobool.not.i.i210, label %if.end19.rtl_write_byte.exit.i215_crit_edge, label %if.then.i.i213

if.end19.rtl_write_byte.exit.i215_crit_edge:      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit.i215

if.then.i.i213:                                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i211 = getelementptr inbounds %struct.rtl_priv, ptr %189, i32 0, i32 13, i32 9
  %196 = ptrtoint ptr %read8_sync.i.i211 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %read8_sync.i.i211, align 4
  %call.i.i212 = tail call zeroext i8 %197(ptr noundef %189, i32 noundef 28) #8
  br label %rtl_write_byte.exit.i215

rtl_write_byte.exit.i215:                         ; preds = %if.then.i.i213, %if.end19.rtl_write_byte.exit.i215_crit_edge
  %read32_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %189, i32 0, i32 13, i32 11
  %198 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i255.i = tail call i32 %199(ptr noundef %189, i32 noundef 240) #8
  %and.i = and i32 %call.i255.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i214 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i214, label %if.else.i217, label %if.then.i216

if.then.i216:                                     ; preds = %rtl_write_byte.exit.i215
  %200 = ptrtoint ptr %write8_async.i.i207 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %write8_async.i.i207, align 4
  tail call void %201(ptr noundef %189, i32 noundef 124, i8 noundef zeroext -61) #8
  %202 = ptrtoint ptr %cfg.i.i208 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %cfg.i.i208, align 8
  %write_readback.i258.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %203, i32 0, i32 1
  %204 = ptrtoint ptr %write_readback.i258.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %write_readback.i258.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %205)
  %tobool.not.i259.i = icmp eq i8 %205, 0
  br i1 %tobool.not.i259.i, label %if.then.i216.if.end.i218_crit_edge, label %if.then.i262.i

if.then.i216.if.end.i218_crit_edge:               ; preds = %if.then.i216
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i218

if.then.i262.i:                                   ; preds = %if.then.i216
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i260.i = getelementptr inbounds %struct.rtl_priv, ptr %189, i32 0, i32 13, i32 9
  br label %if.end.sink.split.i

if.else.i217:                                     ; preds = %rtl_write_byte.exit.i215
  %read8_sync.i264.i = getelementptr inbounds %struct.rtl_priv, ptr %189, i32 0, i32 13, i32 9
  %206 = ptrtoint ptr %read8_sync.i264.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %read8_sync.i264.i, align 4
  %call.i265.i = tail call zeroext i8 %207(ptr noundef %189, i32 noundef 22) #8
  %208 = or i8 %call.i265.i, 80
  %209 = ptrtoint ptr %write8_async.i.i207 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %write8_async.i.i207, align 4
  tail call void %210(ptr noundef %189, i32 noundef 22, i8 noundef zeroext %208) #8
  %211 = ptrtoint ptr %cfg.i.i208 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %cfg.i.i208, align 8
  %write_readback.i268.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %212, i32 0, i32 1
  %213 = ptrtoint ptr %write_readback.i268.i to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %write_readback.i268.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %214)
  %tobool.not.i269.i = icmp eq i8 %214, 0
  br i1 %tobool.not.i269.i, label %if.else.i217.rtl_write_byte.exit273.i_crit_edge, label %if.then.i272.i

if.else.i217.rtl_write_byte.exit273.i_crit_edge:  ; preds = %if.else.i217
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit273.i

if.then.i272.i:                                   ; preds = %if.else.i217
  call void @__sanitizer_cov_trace_pc() #10
  %215 = ptrtoint ptr %read8_sync.i264.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %read8_sync.i264.i, align 4
  %call.i271.i = tail call zeroext i8 %216(ptr noundef %189, i32 noundef 22) #8
  br label %rtl_write_byte.exit273.i

rtl_write_byte.exit273.i:                         ; preds = %if.then.i272.i, %if.else.i217.rtl_write_byte.exit273.i_crit_edge
  %217 = ptrtoint ptr %write8_async.i.i207 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %write8_async.i.i207, align 4
  tail call void %218(ptr noundef %189, i32 noundef 124, i8 noundef zeroext -125) #8
  %219 = ptrtoint ptr %cfg.i.i208 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %cfg.i.i208, align 8
  %write_readback.i276.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %220, i32 0, i32 1
  %221 = ptrtoint ptr %write_readback.i276.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %write_readback.i276.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %222)
  %tobool.not.i277.i = icmp eq i8 %222, 0
  br i1 %tobool.not.i277.i, label %rtl_write_byte.exit273.i.if.end.i218_crit_edge, label %rtl_write_byte.exit273.i.if.end.sink.split.i_crit_edge

rtl_write_byte.exit273.i.if.end.sink.split.i_crit_edge: ; preds = %rtl_write_byte.exit273.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.sink.split.i

rtl_write_byte.exit273.i.if.end.i218_crit_edge:   ; preds = %rtl_write_byte.exit273.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i218

if.end.sink.split.i:                              ; preds = %rtl_write_byte.exit273.i.if.end.sink.split.i_crit_edge, %if.then.i262.i
  %read8_sync.i264.sink.i = phi ptr [ %read8_sync.i260.i, %if.then.i262.i ], [ %read8_sync.i264.i, %rtl_write_byte.exit273.i.if.end.sink.split.i_crit_edge ]
  %223 = ptrtoint ptr %read8_sync.i264.sink.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %read8_sync.i264.sink.i, align 4
  %call.i279.i = tail call zeroext i8 %224(ptr noundef %189, i32 noundef 124) #8
  br label %if.end.i218

if.end.i218:                                      ; preds = %if.end.sink.split.i, %rtl_write_byte.exit273.i.if.end.i218_crit_edge, %if.then.i216.if.end.i218_crit_edge
  %read8_sync.i282.i = getelementptr inbounds %struct.rtl_priv, ptr %189, i32 0, i32 13, i32 9
  %225 = ptrtoint ptr %read8_sync.i282.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %read8_sync.i282.i, align 4
  %call.i283.i = tail call zeroext i8 %226(ptr noundef %189, i32 noundef 40) #8
  %227 = and i8 %call.i283.i, -5
  %228 = ptrtoint ptr %write8_async.i.i207 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %write8_async.i.i207, align 4
  tail call void %229(ptr noundef %189, i32 noundef 40, i8 noundef zeroext %227) #8
  %230 = ptrtoint ptr %cfg.i.i208 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %cfg.i.i208, align 8
  %write_readback.i286.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %231, i32 0, i32 1
  %232 = ptrtoint ptr %write_readback.i286.i to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %write_readback.i286.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %233)
  %tobool.not.i287.i = icmp eq i8 %233, 0
  br i1 %tobool.not.i287.i, label %if.end.i218.rtl_write_byte.exit291.i_crit_edge, label %if.then.i290.i

if.end.i218.rtl_write_byte.exit291.i_crit_edge:   ; preds = %if.end.i218
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit291.i

if.then.i290.i:                                   ; preds = %if.end.i218
  call void @__sanitizer_cov_trace_pc() #10
  %234 = ptrtoint ptr %read8_sync.i282.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %read8_sync.i282.i, align 4
  %call.i289.i = tail call zeroext i8 %235(ptr noundef %189, i32 noundef 40) #8
  br label %rtl_write_byte.exit291.i

rtl_write_byte.exit291.i:                         ; preds = %if.then.i290.i, %if.end.i218.rtl_write_byte.exit291.i_crit_edge
  %236 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i293.i = tail call i32 %237(ptr noundef %189, i32 noundef 120) #8
  %and13.i = and i32 %call.i293.i, -897
  %write32_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %189, i32 0, i32 13, i32 7
  %238 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %239(ptr noundef %189, i32 noundef 120, i32 noundef %and13.i) #8
  %240 = ptrtoint ptr %cfg.i.i208 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %cfg.i.i208, align 8
  %write_readback.i295.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %241, i32 0, i32 1
  %242 = ptrtoint ptr %write_readback.i295.i to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %write_readback.i295.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %243)
  %tobool.not.i296.i = icmp eq i8 %243, 0
  br i1 %tobool.not.i296.i, label %rtl_write_byte.exit291.i.rtl_write_dword.exit.i_crit_edge, label %if.then.i299.i

rtl_write_byte.exit291.i.rtl_write_dword.exit.i_crit_edge: ; preds = %rtl_write_byte.exit291.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit.i

if.then.i299.i:                                   ; preds = %rtl_write_byte.exit291.i
  call void @__sanitizer_cov_trace_pc() #10
  %244 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i298.i = tail call i32 %245(ptr noundef %189, i32 noundef 120) #8
  br label %rtl_write_dword.exit.i

rtl_write_dword.exit.i:                           ; preds = %if.then.i299.i, %rtl_write_byte.exit291.i.rtl_write_dword.exit.i_crit_edge
  %246 = ptrtoint ptr %read8_sync.i282.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %read8_sync.i282.i, align 4
  %call.i301.i = tail call zeroext i8 %247(ptr noundef %189, i32 noundef 40) #8
  %248 = and i8 %call.i301.i, -65
  %249 = ptrtoint ptr %write8_async.i.i207 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %write8_async.i.i207, align 4
  tail call void %250(ptr noundef %189, i32 noundef 40, i8 noundef zeroext %248) #8
  %251 = ptrtoint ptr %cfg.i.i208 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %cfg.i.i208, align 8
  %write_readback.i304.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %252, i32 0, i32 1
  %253 = ptrtoint ptr %write_readback.i304.i to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %write_readback.i304.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %254)
  %tobool.not.i305.i = icmp eq i8 %254, 0
  br i1 %tobool.not.i305.i, label %rtl_write_dword.exit.i.rtl_write_byte.exit309.i_crit_edge, label %if.then.i308.i

rtl_write_dword.exit.i.rtl_write_byte.exit309.i_crit_edge: ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit309.i

if.then.i308.i:                                   ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %255 = ptrtoint ptr %read8_sync.i282.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %read8_sync.i282.i, align 4
  %call.i307.i = tail call zeroext i8 %256(ptr noundef %189, i32 noundef 40) #8
  br label %rtl_write_byte.exit309.i

rtl_write_byte.exit309.i:                         ; preds = %if.then.i308.i, %rtl_write_dword.exit.i.rtl_write_byte.exit309.i_crit_edge
  %257 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i311.i = tail call i32 %258(ptr noundef %189, i32 noundef 120) #8
  %and19.i = and i32 %call.i311.i, -2097153
  %259 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %260(ptr noundef %189, i32 noundef 120, i32 noundef %and19.i) #8
  %261 = ptrtoint ptr %cfg.i.i208 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %cfg.i.i208, align 8
  %write_readback.i314.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %262, i32 0, i32 1
  %263 = ptrtoint ptr %write_readback.i314.i to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %write_readback.i314.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %264)
  %tobool.not.i315.i = icmp eq i8 %264, 0
  br i1 %tobool.not.i315.i, label %rtl_write_byte.exit309.i.rtl_write_dword.exit319.i_crit_edge, label %if.then.i318.i

rtl_write_byte.exit309.i.rtl_write_dword.exit319.i_crit_edge: ; preds = %rtl_write_byte.exit309.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit319.i

if.then.i318.i:                                   ; preds = %rtl_write_byte.exit309.i
  call void @__sanitizer_cov_trace_pc() #10
  %265 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i317.i = tail call i32 %266(ptr noundef %189, i32 noundef 120) #8
  br label %rtl_write_dword.exit319.i

rtl_write_dword.exit319.i:                        ; preds = %if.then.i318.i, %rtl_write_byte.exit309.i.rtl_write_dword.exit319.i_crit_edge
  %call20.i = tail call zeroext i1 @rtl_hal_pwrseqcmdparsing(ptr noundef %189, i8 noundef zeroext -1, i8 noundef zeroext 15, i8 noundef zeroext 4, ptr noundef nonnull @rtl8192E_card_enable_flow) #8
  br i1 %call20.i, label %if.end22.i, label %if.then21.i

if.then21.i:                                      ; preds = %rtl_write_dword.exit319.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %189, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.39) #8
  br label %_rtl92ee_init_mac.exit

if.end22.i:                                       ; preds = %rtl_write_dword.exit319.i
  %267 = ptrtoint ptr %read8_sync.i282.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %read8_sync.i282.i, align 4
  %call.i321.i = tail call zeroext i8 %268(ptr noundef %189, i32 noundef 256) #8
  %269 = ptrtoint ptr %write8_async.i.i207 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %write8_async.i.i207, align 4
  tail call void %270(ptr noundef %189, i32 noundef 256, i8 noundef zeroext -1) #8
  %271 = ptrtoint ptr %cfg.i.i208 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %cfg.i.i208, align 8
  %write_readback.i324.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %272, i32 0, i32 1
  %273 = ptrtoint ptr %write_readback.i324.i to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %write_readback.i324.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %274)
  %tobool.not.i325.i = icmp eq i8 %274, 0
  br i1 %tobool.not.i325.i, label %if.end22.i.rtl_write_byte.exit329.i_crit_edge, label %if.then.i328.i

if.end22.i.rtl_write_byte.exit329.i_crit_edge:    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit329.i

if.then.i328.i:                                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  %275 = ptrtoint ptr %read8_sync.i282.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %read8_sync.i282.i, align 4
  %call.i327.i = tail call zeroext i8 %276(ptr noundef %189, i32 noundef 256) #8
  br label %rtl_write_byte.exit329.i

rtl_write_byte.exit329.i:                         ; preds = %if.then.i328.i, %if.end22.i.rtl_write_byte.exit329.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %277 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %277(i32 noundef 429496000) #8
  %278 = ptrtoint ptr %write8_async.i.i207 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %write8_async.i.i207, align 4
  tail call void %279(ptr noundef %189, i32 noundef 1059, i8 noundef zeroext 127) #8
  %280 = ptrtoint ptr %cfg.i.i208 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %cfg.i.i208, align 8
  %write_readback.i332.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %281, i32 0, i32 1
  %282 = ptrtoint ptr %write_readback.i332.i to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %write_readback.i332.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %283)
  %tobool.not.i333.i = icmp eq i8 %283, 0
  br i1 %tobool.not.i333.i, label %rtl_write_byte.exit329.i.rtl_write_byte.exit337.i_crit_edge, label %if.then.i336.i

rtl_write_byte.exit329.i.rtl_write_byte.exit337.i_crit_edge: ; preds = %rtl_write_byte.exit329.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit337.i

if.then.i336.i:                                   ; preds = %rtl_write_byte.exit329.i
  call void @__sanitizer_cov_trace_pc() #10
  %284 = ptrtoint ptr %read8_sync.i282.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %read8_sync.i282.i, align 4
  %call.i335.i = tail call zeroext i8 %285(ptr noundef %189, i32 noundef 1059) #8
  br label %rtl_write_byte.exit337.i

rtl_write_byte.exit337.i:                         ; preds = %if.then.i336.i, %rtl_write_byte.exit329.i.rtl_write_byte.exit337.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %286 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %286(i32 noundef 429496000) #8
  %287 = ptrtoint ptr %read8_sync.i282.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %read8_sync.i282.i, align 4
  %call.i339.i = tail call zeroext i8 %288(ptr noundef %189, i32 noundef 8) #8
  %289 = or i8 %call.i339.i, 8
  %290 = ptrtoint ptr %write8_async.i.i207 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %write8_async.i.i207, align 4
  tail call void %291(ptr noundef %189, i32 noundef 8, i8 noundef zeroext %289) #8
  %292 = ptrtoint ptr %cfg.i.i208 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %cfg.i.i208, align 8
  %write_readback.i342.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %293, i32 0, i32 1
  %294 = ptrtoint ptr %write_readback.i342.i to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %write_readback.i342.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %295)
  %tobool.not.i343.i = icmp eq i8 %295, 0
  br i1 %tobool.not.i343.i, label %rtl_write_byte.exit337.i.rtl_write_byte.exit347.i_crit_edge, label %if.then.i346.i

rtl_write_byte.exit337.i.rtl_write_byte.exit347.i_crit_edge: ; preds = %rtl_write_byte.exit337.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit347.i

if.then.i346.i:                                   ; preds = %rtl_write_byte.exit337.i
  call void @__sanitizer_cov_trace_pc() #10
  %296 = ptrtoint ptr %read8_sync.i282.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %read8_sync.i282.i, align 4
  %call.i345.i = tail call zeroext i8 %297(ptr noundef %189, i32 noundef 8) #8
  br label %rtl_write_byte.exit347.i

rtl_write_byte.exit347.i:                         ; preds = %if.then.i346.i, %rtl_write_byte.exit337.i.rtl_write_byte.exit347.i_crit_edge
  %298 = ptrtoint ptr %read8_sync.i282.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %read8_sync.i282.i, align 4
  %call.i349.i = tail call zeroext i8 %299(ptr noundef %189, i32 noundef 65) #8
  %300 = and i8 %call.i349.i, -17
  %301 = ptrtoint ptr %write8_async.i.i207 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %write8_async.i.i207, align 4
  tail call void %302(ptr noundef %189, i32 noundef 65, i8 noundef zeroext %300) #8
  %303 = ptrtoint ptr %cfg.i.i208 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %cfg.i.i208, align 8
  %write_readback.i352.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %304, i32 0, i32 1
  %305 = ptrtoint ptr %write_readback.i352.i to i32
  call void @__asan_load1_noabort(i32 %305)
  %306 = load i8, ptr %write_readback.i352.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %306)
  %tobool.not.i353.i = icmp eq i8 %306, 0
  br i1 %tobool.not.i353.i, label %rtl_write_byte.exit347.i.rtl_write_byte.exit357.i_crit_edge, label %if.then.i356.i

rtl_write_byte.exit347.i.rtl_write_byte.exit357.i_crit_edge: ; preds = %rtl_write_byte.exit347.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit357.i

if.then.i356.i:                                   ; preds = %rtl_write_byte.exit347.i
  call void @__sanitizer_cov_trace_pc() #10
  %307 = ptrtoint ptr %read8_sync.i282.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %read8_sync.i282.i, align 4
  %call.i355.i = tail call zeroext i8 %308(ptr noundef %189, i32 noundef 65) #8
  br label %rtl_write_byte.exit357.i

rtl_write_byte.exit357.i:                         ; preds = %if.then.i356.i, %rtl_write_byte.exit347.i.rtl_write_byte.exit357.i_crit_edge
  %write16_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %189, i32 0, i32 13, i32 6
  %309 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %310(ptr noundef %189, i32 noundef 256, i16 noundef zeroext 767) #8
  %311 = ptrtoint ptr %cfg.i.i208 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %cfg.i.i208, align 8
  %write_readback.i359.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %312, i32 0, i32 1
  %313 = ptrtoint ptr %write_readback.i359.i to i32
  call void @__asan_load1_noabort(i32 %313)
  %314 = load i8, ptr %write_readback.i359.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %314)
  %tobool.not.i360.i = icmp eq i8 %314, 0
  br i1 %tobool.not.i360.i, label %rtl_write_byte.exit357.i.rtl_write_word.exit.i_crit_edge, label %if.then.i362.i

rtl_write_byte.exit357.i.rtl_write_word.exit.i_crit_edge: ; preds = %rtl_write_byte.exit357.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit.i

if.then.i362.i:                                   ; preds = %rtl_write_byte.exit357.i
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %189, i32 0, i32 13, i32 10
  %315 = ptrtoint ptr %read16_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %read16_sync.i.i, align 4
  %call.i361.i = tail call zeroext i16 %316(ptr noundef %189, i32 noundef 256) #8
  br label %rtl_write_word.exit.i

rtl_write_word.exit.i:                            ; preds = %if.then.i362.i, %rtl_write_byte.exit357.i.rtl_write_word.exit.i_crit_edge
  %mac_func_enable.i = getelementptr inbounds %struct.rtl_priv, ptr %189, i32 0, i32 10, i32 6
  %317 = ptrtoint ptr %mac_func_enable.i to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %mac_func_enable.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %318)
  %tobool32.not.i = icmp eq i8 %318, 0
  br i1 %tobool32.not.i, label %if.then33.i, label %rtl_write_word.exit.i.if.end37.i_crit_edge

rtl_write_word.exit.i.if.end37.i_crit_edge:       ; preds = %rtl_write_word.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.i

if.then33.i:                                      ; preds = %rtl_write_word.exit.i
  %319 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %priv, align 8
  %write32_async.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %320, i32 0, i32 13, i32 7
  %321 = ptrtoint ptr %write32_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %write32_async.i.i.i, align 4
  tail call void %322(ptr noundef %320, i32 noundef 512, i32 noundef -2132408312) #8
  %cfg.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %320, i32 0, i32 32
  %323 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %324, i32 0, i32 1
  %325 = ptrtoint ptr %write_readback.i.i.i to i32
  call void @__asan_load1_noabort(i32 %325)
  %326 = load i8, ptr %write_readback.i.i.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %326)
  %tobool.not.i.i.i = icmp eq i8 %326, 0
  br i1 %tobool.not.i.i.i, label %if.then33.i.rtl_write_dword.exit.i.i_crit_edge, label %if.then.i.i.i

if.then33.i.rtl_write_dword.exit.i.i_crit_edge:   ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %320, i32 0, i32 13, i32 11
  %327 = ptrtoint ptr %read32_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %read32_sync.i.i.i, align 4
  %call.i.i.i = tail call i32 %328(ptr noundef %320, i32 noundef 512) #8
  br label %rtl_write_dword.exit.i.i

rtl_write_dword.exit.i.i:                         ; preds = %if.then.i.i.i, %if.then33.i.rtl_write_dword.exit.i.i_crit_edge
  %write8_async.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %320, i32 0, i32 13, i32 5
  %329 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %330(ptr noundef %320, i32 noundef 276, i8 noundef zeroext -9) #8
  %331 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i2.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %332, i32 0, i32 1
  %333 = ptrtoint ptr %write_readback.i2.i.i to i32
  call void @__asan_load1_noabort(i32 %333)
  %334 = load i8, ptr %write_readback.i2.i.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %334)
  %tobool.not.i3.i.i = icmp eq i8 %334, 0
  br i1 %tobool.not.i3.i.i, label %rtl_write_dword.exit.i.i.rtl_write_byte.exit.i.i_crit_edge, label %if.then.i5.i.i

rtl_write_dword.exit.i.i.rtl_write_byte.exit.i.i_crit_edge: ; preds = %rtl_write_dword.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit.i.i

if.then.i5.i.i:                                   ; preds = %rtl_write_dword.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %320, i32 0, i32 13, i32 9
  %335 = ptrtoint ptr %read8_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %read8_sync.i.i.i, align 4
  %call.i4.i.i = tail call zeroext i8 %336(ptr noundef %320, i32 noundef 276) #8
  br label %rtl_write_byte.exit.i.i

rtl_write_byte.exit.i.i:                          ; preds = %if.then.i5.i.i, %rtl_write_dword.exit.i.i.rtl_write_byte.exit.i.i_crit_edge
  %write16_async.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %320, i32 0, i32 13, i32 6
  %337 = ptrtoint ptr %write16_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %write16_async.i.i.i, align 4
  tail call void %338(ptr noundef %320, i32 noundef 278, i16 noundef zeroext 15615) #8
  %339 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i7.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %340, i32 0, i32 1
  %341 = ptrtoint ptr %write_readback.i7.i.i to i32
  call void @__asan_load1_noabort(i32 %341)
  %342 = load i8, ptr %write_readback.i7.i.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %342)
  %tobool.not.i8.i.i = icmp eq i8 %342, 0
  br i1 %tobool.not.i8.i.i, label %rtl_write_byte.exit.i.i.rtl_write_word.exit.i.i_crit_edge, label %if.then.i10.i.i

rtl_write_byte.exit.i.i.rtl_write_word.exit.i.i_crit_edge: ; preds = %rtl_write_byte.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit.i.i

if.then.i10.i.i:                                  ; preds = %rtl_write_byte.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %320, i32 0, i32 13, i32 10
  %343 = ptrtoint ptr %read16_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %read16_sync.i.i.i, align 4
  %call.i9.i.i = tail call zeroext i16 %344(ptr noundef %320, i32 noundef 278) #8
  br label %rtl_write_word.exit.i.i

rtl_write_word.exit.i.i:                          ; preds = %if.then.i10.i.i, %rtl_write_byte.exit.i.i.rtl_write_word.exit.i.i_crit_edge
  %345 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %346(ptr noundef %320, i32 noundef 521, i8 noundef zeroext -9) #8
  %347 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i13.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %348, i32 0, i32 1
  %349 = ptrtoint ptr %write_readback.i13.i.i to i32
  call void @__asan_load1_noabort(i32 %349)
  %350 = load i8, ptr %write_readback.i13.i.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %350)
  %tobool.not.i14.i.i = icmp eq i8 %350, 0
  br i1 %tobool.not.i14.i.i, label %rtl_write_word.exit.i.i.rtl_write_byte.exit18.i.i_crit_edge, label %if.then.i17.i.i

rtl_write_word.exit.i.i.rtl_write_byte.exit18.i.i_crit_edge: ; preds = %rtl_write_word.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit18.i.i

if.then.i17.i.i:                                  ; preds = %rtl_write_word.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i15.i.i = getelementptr inbounds %struct.rtl_priv, ptr %320, i32 0, i32 13, i32 9
  %351 = ptrtoint ptr %read8_sync.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %read8_sync.i15.i.i, align 4
  %call.i16.i.i = tail call zeroext i8 %352(ptr noundef %320, i32 noundef 521) #8
  br label %rtl_write_byte.exit18.i.i

rtl_write_byte.exit18.i.i:                        ; preds = %if.then.i17.i.i, %rtl_write_word.exit.i.i.rtl_write_byte.exit18.i.i_crit_edge
  %353 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %354(ptr noundef %320, i32 noundef 553, i8 noundef zeroext -9) #8
  %355 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i21.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %356, i32 0, i32 1
  %357 = ptrtoint ptr %write_readback.i21.i.i to i32
  call void @__asan_load1_noabort(i32 %357)
  %358 = load i8, ptr %write_readback.i21.i.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %358)
  %tobool.not.i22.i.i = icmp eq i8 %358, 0
  br i1 %tobool.not.i22.i.i, label %rtl_write_byte.exit18.i.i.rtl_write_byte.exit26.i.i_crit_edge, label %if.then.i25.i.i

rtl_write_byte.exit18.i.i.rtl_write_byte.exit26.i.i_crit_edge: ; preds = %rtl_write_byte.exit18.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit26.i.i

if.then.i25.i.i:                                  ; preds = %rtl_write_byte.exit18.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i23.i.i = getelementptr inbounds %struct.rtl_priv, ptr %320, i32 0, i32 13, i32 9
  %359 = ptrtoint ptr %read8_sync.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %read8_sync.i23.i.i, align 4
  %call.i24.i.i = tail call zeroext i8 %360(ptr noundef %320, i32 noundef 553) #8
  br label %rtl_write_byte.exit26.i.i

rtl_write_byte.exit26.i.i:                        ; preds = %if.then.i25.i.i, %rtl_write_byte.exit18.i.i.rtl_write_byte.exit26.i.i_crit_edge
  %361 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %362(ptr noundef %320, i32 noundef 1060, i8 noundef zeroext -9) #8
  %363 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i29.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %364, i32 0, i32 1
  %365 = ptrtoint ptr %write_readback.i29.i.i to i32
  call void @__asan_load1_noabort(i32 %365)
  %366 = load i8, ptr %write_readback.i29.i.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %366)
  %tobool.not.i30.i.i = icmp eq i8 %366, 0
  br i1 %tobool.not.i30.i.i, label %rtl_write_byte.exit26.i.i.rtl_write_byte.exit34.i.i_crit_edge, label %if.then.i33.i.i

rtl_write_byte.exit26.i.i.rtl_write_byte.exit34.i.i_crit_edge: ; preds = %rtl_write_byte.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit34.i.i

if.then.i33.i.i:                                  ; preds = %rtl_write_byte.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i31.i.i = getelementptr inbounds %struct.rtl_priv, ptr %320, i32 0, i32 13, i32 9
  %367 = ptrtoint ptr %read8_sync.i31.i.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %read8_sync.i31.i.i, align 4
  %call.i32.i.i = tail call zeroext i8 %368(ptr noundef %320, i32 noundef 1060) #8
  br label %rtl_write_byte.exit34.i.i

rtl_write_byte.exit34.i.i:                        ; preds = %if.then.i33.i.i, %rtl_write_byte.exit26.i.i.rtl_write_byte.exit34.i.i_crit_edge
  %369 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %370(ptr noundef %320, i32 noundef 1111, i8 noundef zeroext -9) #8
  %371 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i37.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %372, i32 0, i32 1
  %373 = ptrtoint ptr %write_readback.i37.i.i to i32
  call void @__asan_load1_noabort(i32 %373)
  %374 = load i8, ptr %write_readback.i37.i.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %374)
  %tobool.not.i38.i.i = icmp eq i8 %374, 0
  br i1 %tobool.not.i38.i.i, label %rtl_write_byte.exit34.i.i.rtl_write_byte.exit42.i.i_crit_edge, label %if.then.i41.i.i

rtl_write_byte.exit34.i.i.rtl_write_byte.exit42.i.i_crit_edge: ; preds = %rtl_write_byte.exit34.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit42.i.i

if.then.i41.i.i:                                  ; preds = %rtl_write_byte.exit34.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i39.i.i = getelementptr inbounds %struct.rtl_priv, ptr %320, i32 0, i32 13, i32 9
  %375 = ptrtoint ptr %read8_sync.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %read8_sync.i39.i.i, align 4
  %call.i40.i.i = tail call zeroext i8 %376(ptr noundef %320, i32 noundef 1111) #8
  br label %rtl_write_byte.exit42.i.i

rtl_write_byte.exit42.i.i:                        ; preds = %if.then.i41.i.i, %rtl_write_byte.exit34.i.i.rtl_write_byte.exit42.i.i_crit_edge
  %377 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %378(ptr noundef %320, i32 noundef 1061, i8 noundef zeroext -9) #8
  %379 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i45.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %380, i32 0, i32 1
  %381 = ptrtoint ptr %write_readback.i45.i.i to i32
  call void @__asan_load1_noabort(i32 %381)
  %382 = load i8, ptr %write_readback.i45.i.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %382)
  %tobool.not.i46.i.i = icmp eq i8 %382, 0
  br i1 %tobool.not.i46.i.i, label %rtl_write_byte.exit42.i.i.rtl_write_byte.exit50.i.i_crit_edge, label %if.then.i49.i.i

rtl_write_byte.exit42.i.i.rtl_write_byte.exit50.i.i_crit_edge: ; preds = %rtl_write_byte.exit42.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit50.i.i

if.then.i49.i.i:                                  ; preds = %rtl_write_byte.exit42.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i47.i.i = getelementptr inbounds %struct.rtl_priv, ptr %320, i32 0, i32 13, i32 9
  %383 = ptrtoint ptr %read8_sync.i47.i.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %read8_sync.i47.i.i, align 4
  %call.i48.i.i = tail call zeroext i8 %384(ptr noundef %320, i32 noundef 1061) #8
  br label %rtl_write_byte.exit50.i.i

rtl_write_byte.exit50.i.i:                        ; preds = %if.then.i49.i.i, %rtl_write_byte.exit42.i.i.rtl_write_byte.exit50.i.i_crit_edge
  %385 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %386(ptr noundef %320, i32 noundef 1117, i8 noundef zeroext -9) #8
  %387 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i53.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %388, i32 0, i32 1
  %389 = ptrtoint ptr %write_readback.i53.i.i to i32
  call void @__asan_load1_noabort(i32 %389)
  %390 = load i8, ptr %write_readback.i53.i.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %390)
  %tobool.not.i54.i.i = icmp eq i8 %390, 0
  br i1 %tobool.not.i54.i.i, label %rtl_write_byte.exit50.i.i.rtl_write_byte.exit58.i.i_crit_edge, label %if.then.i57.i.i

rtl_write_byte.exit50.i.i.rtl_write_byte.exit58.i.i_crit_edge: ; preds = %rtl_write_byte.exit50.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit58.i.i

if.then.i57.i.i:                                  ; preds = %rtl_write_byte.exit50.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i55.i.i = getelementptr inbounds %struct.rtl_priv, ptr %320, i32 0, i32 13, i32 9
  %391 = ptrtoint ptr %read8_sync.i55.i.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %read8_sync.i55.i.i, align 4
  %call.i56.i.i = tail call zeroext i8 %392(ptr noundef %320, i32 noundef 1117) #8
  br label %rtl_write_byte.exit58.i.i

rtl_write_byte.exit58.i.i:                        ; preds = %if.then.i57.i.i, %rtl_write_byte.exit50.i.i.rtl_write_byte.exit58.i.i_crit_edge
  %393 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %394(ptr noundef %320, i32 noundef 260, i8 noundef zeroext 49) #8
  %395 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i61.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %396, i32 0, i32 1
  %397 = ptrtoint ptr %write_readback.i61.i.i to i32
  call void @__asan_load1_noabort(i32 %397)
  %398 = load i8, ptr %write_readback.i61.i.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %398)
  %tobool.not.i62.i.i = icmp eq i8 %398, 0
  br i1 %tobool.not.i62.i.i, label %rtl_write_byte.exit58.i.i.rtl_write_byte.exit66.i.i_crit_edge, label %if.then.i65.i.i

rtl_write_byte.exit58.i.i.rtl_write_byte.exit66.i.i_crit_edge: ; preds = %rtl_write_byte.exit58.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit66.i.i

if.then.i65.i.i:                                  ; preds = %rtl_write_byte.exit58.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i63.i.i = getelementptr inbounds %struct.rtl_priv, ptr %320, i32 0, i32 13, i32 9
  %399 = ptrtoint ptr %read8_sync.i63.i.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %read8_sync.i63.i.i, align 4
  %call.i64.i.i = tail call zeroext i8 %400(ptr noundef %320, i32 noundef 260) #8
  br label %rtl_write_byte.exit66.i.i

rtl_write_byte.exit66.i.i:                        ; preds = %if.then.i65.i.i, %rtl_write_byte.exit58.i.i.rtl_write_byte.exit66.i.i_crit_edge
  %401 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %402(ptr noundef %320, i32 noundef 1551, i8 noundef zeroext 4) #8
  %403 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i69.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %404, i32 0, i32 1
  %405 = ptrtoint ptr %write_readback.i69.i.i to i32
  call void @__asan_load1_noabort(i32 %405)
  %406 = load i8, ptr %write_readback.i69.i.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %406)
  %tobool.not.i70.i.i = icmp eq i8 %406, 0
  br i1 %tobool.not.i70.i.i, label %rtl_write_byte.exit66.i.i.rtl_write_byte.exit74.i.i_crit_edge, label %if.then.i73.i.i

rtl_write_byte.exit66.i.i.rtl_write_byte.exit74.i.i_crit_edge: ; preds = %rtl_write_byte.exit66.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit74.i.i

if.then.i73.i.i:                                  ; preds = %rtl_write_byte.exit66.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i71.i.i = getelementptr inbounds %struct.rtl_priv, ptr %320, i32 0, i32 13, i32 9
  %407 = ptrtoint ptr %read8_sync.i71.i.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %read8_sync.i71.i.i, align 4
  %call.i72.i.i = tail call zeroext i8 %408(ptr noundef %320, i32 noundef 1551) #8
  br label %rtl_write_byte.exit74.i.i

rtl_write_byte.exit74.i.i:                        ; preds = %if.then.i73.i.i, %rtl_write_byte.exit66.i.i.rtl_write_byte.exit74.i.i_crit_edge
  %read8_sync.i75.i.i = getelementptr inbounds %struct.rtl_priv, ptr %320, i32 0, i32 13, i32 9
  %409 = ptrtoint ptr %read8_sync.i75.i.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %read8_sync.i75.i.i, align 4
  %call.i76.i.i = tail call zeroext i8 %410(ptr noundef %320, i32 noundef 550) #8
  %411 = or i8 %call.i76.i.i, 1
  %412 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %413(ptr noundef %320, i32 noundef 550, i8 noundef zeroext %411) #8
  %414 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i79.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %415, i32 0, i32 1
  %416 = ptrtoint ptr %write_readback.i79.i.i to i32
  call void @__asan_load1_noabort(i32 %416)
  %417 = load i8, ptr %write_readback.i79.i.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %417)
  %tobool.not.i80.i.i = icmp eq i8 %417, 0
  br i1 %tobool.not.i80.i.i, label %rtl_write_byte.exit74.i.i.rtl_write_byte.exit84.i.i_crit_edge, label %if.then.i83.i.i

rtl_write_byte.exit74.i.i.rtl_write_byte.exit84.i.i_crit_edge: ; preds = %rtl_write_byte.exit74.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit84.i.i

if.then.i83.i.i:                                  ; preds = %rtl_write_byte.exit74.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %418 = ptrtoint ptr %read8_sync.i75.i.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %read8_sync.i75.i.i, align 4
  %call.i82.i.i = tail call zeroext i8 %419(ptr noundef %320, i32 noundef 550) #8
  br label %rtl_write_byte.exit84.i.i

rtl_write_byte.exit84.i.i:                        ; preds = %if.then.i83.i.i, %rtl_write_byte.exit74.i.i.rtl_write_byte.exit84.i.i_crit_edge
  %420 = and i8 %call.i76.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %420)
  %tobool.not.i363.i = icmp eq i8 %420, 0
  br i1 %tobool.not.i363.i, label %rtl_write_byte.exit84.i.i.if.end37.i_crit_edge, label %while.body.i.i

rtl_write_byte.exit84.i.i.if.end37.i_crit_edge:   ; preds = %rtl_write_byte.exit84.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.i

while.body.i.i:                                   ; preds = %rtl_write_byte.exit84.i.i
  %421 = ptrtoint ptr %read8_sync.i75.i.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %read8_sync.i75.i.i, align 4
  %call.i86.i.i = tail call zeroext i8 %422(ptr noundef %320, i32 noundef 550) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %423 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %423(i32 noundef 2147480) #8
  %424 = and i8 %call.i86.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %424)
  %tobool.not.1.i.i = icmp eq i8 %424, 0
  br i1 %tobool.not.1.i.i, label %while.body.i.i.if.end37.i_crit_edge, label %while.body.1.i.i

while.body.i.i.if.end37.i_crit_edge:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.i

while.body.1.i.i:                                 ; preds = %while.body.i.i
  %425 = ptrtoint ptr %read8_sync.i75.i.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %read8_sync.i75.i.i, align 4
  %call.i86.1.i.i = tail call zeroext i8 %426(ptr noundef %320, i32 noundef 550) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %427 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %427(i32 noundef 2147480) #8
  %428 = and i8 %call.i86.1.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %428)
  %tobool.not.2.i.i = icmp eq i8 %428, 0
  br i1 %tobool.not.2.i.i, label %while.body.1.i.i.if.end37.i_crit_edge, label %while.body.2.i.i

while.body.1.i.i.if.end37.i_crit_edge:            ; preds = %while.body.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.i

while.body.2.i.i:                                 ; preds = %while.body.1.i.i
  %429 = ptrtoint ptr %read8_sync.i75.i.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %read8_sync.i75.i.i, align 4
  %call.i86.2.i.i = tail call zeroext i8 %430(ptr noundef %320, i32 noundef 550) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %431 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %431(i32 noundef 2147480) #8
  %432 = and i8 %call.i86.2.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %432)
  %tobool.not.3.i.i = icmp eq i8 %432, 0
  br i1 %tobool.not.3.i.i, label %while.body.2.i.i.if.end37.i_crit_edge, label %while.body.3.i.i

while.body.2.i.i.if.end37.i_crit_edge:            ; preds = %while.body.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.i

while.body.3.i.i:                                 ; preds = %while.body.2.i.i
  %433 = ptrtoint ptr %read8_sync.i75.i.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %read8_sync.i75.i.i, align 4
  %call.i86.3.i.i = tail call zeroext i8 %434(ptr noundef %320, i32 noundef 550) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %435 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %435(i32 noundef 2147480) #8
  %436 = and i8 %call.i86.3.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %436)
  %tobool.not.4.i.i = icmp eq i8 %436, 0
  br i1 %tobool.not.4.i.i, label %while.body.3.i.i.if.end37.i_crit_edge, label %while.body.4.i.i

while.body.3.i.i.if.end37.i_crit_edge:            ; preds = %while.body.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.i

while.body.4.i.i:                                 ; preds = %while.body.3.i.i
  %437 = ptrtoint ptr %read8_sync.i75.i.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %read8_sync.i75.i.i, align 4
  %call.i86.4.i.i = tail call zeroext i8 %438(ptr noundef %320, i32 noundef 550) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %439 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %439(i32 noundef 2147480) #8
  %440 = and i8 %call.i86.4.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %440)
  %tobool.not.5.i.i = icmp eq i8 %440, 0
  br i1 %tobool.not.5.i.i, label %while.body.4.i.i.if.end37.i_crit_edge, label %while.body.5.i.i

while.body.4.i.i.if.end37.i_crit_edge:            ; preds = %while.body.4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.i

while.body.5.i.i:                                 ; preds = %while.body.4.i.i
  %441 = ptrtoint ptr %read8_sync.i75.i.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %read8_sync.i75.i.i, align 4
  %call.i86.5.i.i = tail call zeroext i8 %442(ptr noundef %320, i32 noundef 550) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %443 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %443(i32 noundef 2147480) #8
  %444 = and i8 %call.i86.5.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %444)
  %tobool.not.6.i.i = icmp eq i8 %444, 0
  br i1 %tobool.not.6.i.i, label %while.body.5.i.i.if.end37.i_crit_edge, label %while.body.6.i.i

while.body.5.i.i.if.end37.i_crit_edge:            ; preds = %while.body.5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.i

while.body.6.i.i:                                 ; preds = %while.body.5.i.i
  %445 = ptrtoint ptr %read8_sync.i75.i.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %read8_sync.i75.i.i, align 4
  %call.i86.6.i.i = tail call zeroext i8 %446(ptr noundef %320, i32 noundef 550) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %447 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %447(i32 noundef 2147480) #8
  %448 = and i8 %call.i86.6.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %448)
  %tobool.not.7.i.i = icmp eq i8 %448, 0
  br i1 %tobool.not.7.i.i, label %while.body.6.i.i.if.end37.i_crit_edge, label %while.body.7.i.i

while.body.6.i.i.if.end37.i_crit_edge:            ; preds = %while.body.6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.i

while.body.7.i.i:                                 ; preds = %while.body.6.i.i
  %449 = ptrtoint ptr %read8_sync.i75.i.i to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %read8_sync.i75.i.i, align 4
  %call.i86.7.i.i = tail call zeroext i8 %450(ptr noundef %320, i32 noundef 550) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %451 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %451(i32 noundef 2147480) #8
  %452 = and i8 %call.i86.7.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %452)
  %tobool.not.8.i.i = icmp eq i8 %452, 0
  br i1 %tobool.not.8.i.i, label %while.body.7.i.i.if.end37.i_crit_edge, label %while.body.8.i.i

while.body.7.i.i.if.end37.i_crit_edge:            ; preds = %while.body.7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.i

while.body.8.i.i:                                 ; preds = %while.body.7.i.i
  %453 = ptrtoint ptr %read8_sync.i75.i.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %read8_sync.i75.i.i, align 4
  %call.i86.8.i.i = tail call zeroext i8 %454(ptr noundef %320, i32 noundef 550) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %455 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %455(i32 noundef 2147480) #8
  %456 = and i8 %call.i86.8.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %456)
  %tobool.not.9.i.i = icmp eq i8 %456, 0
  br i1 %tobool.not.9.i.i, label %while.body.8.i.i.if.end37.i_crit_edge, label %while.body.9.i.i

while.body.8.i.i.if.end37.i_crit_edge:            ; preds = %while.body.8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.i

while.body.9.i.i:                                 ; preds = %while.body.8.i.i
  %457 = ptrtoint ptr %read8_sync.i75.i.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %read8_sync.i75.i.i, align 4
  %call.i86.9.i.i = tail call zeroext i8 %458(ptr noundef %320, i32 noundef 550) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %459 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %459(i32 noundef 2147480) #8
  %460 = and i8 %call.i86.9.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %460)
  %tobool.not.10.i.i = icmp eq i8 %460, 0
  br i1 %tobool.not.10.i.i, label %while.body.9.i.i.if.end37.i_crit_edge, label %while.body.10.i.i

while.body.9.i.i.if.end37.i_crit_edge:            ; preds = %while.body.9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.i

while.body.10.i.i:                                ; preds = %while.body.9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %461 = ptrtoint ptr %read8_sync.i75.i.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %read8_sync.i75.i.i, align 4
  %call.i86.10.i.i = tail call zeroext i8 %462(ptr noundef %320, i32 noundef 550) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %463 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %463(i32 noundef 2147480) #8
  br label %if.end37.i

if.end37.i:                                       ; preds = %while.body.10.i.i, %while.body.9.i.i.if.end37.i_crit_edge, %while.body.8.i.i.if.end37.i_crit_edge, %while.body.7.i.i.if.end37.i_crit_edge, %while.body.6.i.i.if.end37.i_crit_edge, %while.body.5.i.i.if.end37.i_crit_edge, %while.body.4.i.i.if.end37.i_crit_edge, %while.body.3.i.i.if.end37.i_crit_edge, %while.body.2.i.i.if.end37.i_crit_edge, %while.body.1.i.i.if.end37.i_crit_edge, %while.body.i.i.if.end37.i_crit_edge, %rtl_write_byte.exit84.i.i.if.end37.i_crit_edge, %rtl_write_word.exit.i.if.end37.i_crit_edge
  %464 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %465(ptr noundef %189, i32 noundef 180, i32 noundef -1) #8
  %466 = ptrtoint ptr %cfg.i.i208 to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %cfg.i.i208, align 8
  %write_readback.i366.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %467, i32 0, i32 1
  %468 = ptrtoint ptr %write_readback.i366.i to i32
  call void @__asan_load1_noabort(i32 %468)
  %469 = load i8, ptr %write_readback.i366.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %469)
  %tobool.not.i367.i = icmp eq i8 %469, 0
  br i1 %tobool.not.i367.i, label %if.end37.i.rtl_write_dword.exit371.i_crit_edge, label %if.then.i370.i

if.end37.i.rtl_write_dword.exit371.i_crit_edge:   ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit371.i

if.then.i370.i:                                   ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  %470 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i369.i = tail call i32 %471(ptr noundef %189, i32 noundef 180) #8
  br label %rtl_write_dword.exit371.i

rtl_write_dword.exit371.i:                        ; preds = %if.then.i370.i, %if.end37.i.rtl_write_dword.exit371.i_crit_edge
  %472 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %473(ptr noundef %189, i32 noundef 188, i32 noundef -1) #8
  %474 = ptrtoint ptr %cfg.i.i208 to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %cfg.i.i208, align 8
  %write_readback.i374.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %475, i32 0, i32 1
  %476 = ptrtoint ptr %write_readback.i374.i to i32
  call void @__asan_load1_noabort(i32 %476)
  %477 = load i8, ptr %write_readback.i374.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %477)
  %tobool.not.i375.i = icmp eq i8 %477, 0
  br i1 %tobool.not.i375.i, label %rtl_write_dword.exit371.i.rtl_write_dword.exit379.i_crit_edge, label %if.then.i378.i

rtl_write_dword.exit371.i.rtl_write_dword.exit379.i_crit_edge: ; preds = %rtl_write_dword.exit371.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit379.i

if.then.i378.i:                                   ; preds = %rtl_write_dword.exit371.i
  call void @__sanitizer_cov_trace_pc() #10
  %478 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i377.i = tail call i32 %479(ptr noundef %189, i32 noundef 188) #8
  br label %rtl_write_dword.exit379.i

rtl_write_dword.exit379.i:                        ; preds = %if.then.i378.i, %rtl_write_dword.exit371.i.rtl_write_dword.exit379.i_crit_edge
  %read16_sync.i380.i = getelementptr inbounds %struct.rtl_priv, ptr %189, i32 0, i32 13, i32 10
  %480 = ptrtoint ptr %read16_sync.i380.i to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %read16_sync.i380.i, align 4
  %call.i381.i = tail call zeroext i16 %481(ptr noundef %189, i32 noundef 268) #8
  %482 = and i16 %call.i381.i, 14
  %483 = or i16 %482, -2639
  %484 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %485(ptr noundef %189, i32 noundef 268, i16 noundef zeroext %483) #8
  %486 = ptrtoint ptr %cfg.i.i208 to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %cfg.i.i208, align 8
  %write_readback.i384.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %487, i32 0, i32 1
  %488 = ptrtoint ptr %write_readback.i384.i to i32
  call void @__asan_load1_noabort(i32 %488)
  %489 = load i8, ptr %write_readback.i384.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %489)
  %tobool.not.i385.i = icmp eq i8 %489, 0
  br i1 %tobool.not.i385.i, label %rtl_write_dword.exit379.i.rtl_write_word.exit389.i_crit_edge, label %if.then.i388.i

rtl_write_dword.exit379.i.rtl_write_word.exit389.i_crit_edge: ; preds = %rtl_write_dword.exit379.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit389.i

if.then.i388.i:                                   ; preds = %rtl_write_dword.exit379.i
  call void @__sanitizer_cov_trace_pc() #10
  %490 = ptrtoint ptr %read16_sync.i380.i to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %read16_sync.i380.i, align 4
  %call.i387.i = tail call zeroext i16 %491(ptr noundef %189, i32 noundef 268) #8
  br label %rtl_write_word.exit389.i

rtl_write_word.exit389.i:                         ; preds = %if.then.i388.i, %rtl_write_dword.exit379.i.rtl_write_word.exit389.i_crit_edge
  %492 = ptrtoint ptr %write8_async.i.i207 to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %write8_async.i.i207, align 4
  tail call void %493(ptr noundef %189, i32 noundef 1057, i8 noundef zeroext 31) #8
  %494 = ptrtoint ptr %cfg.i.i208 to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %cfg.i.i208, align 8
  %write_readback.i392.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %495, i32 0, i32 1
  %496 = ptrtoint ptr %write_readback.i392.i to i32
  call void @__asan_load1_noabort(i32 %496)
  %497 = load i8, ptr %write_readback.i392.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %497)
  %tobool.not.i393.i = icmp eq i8 %497, 0
  br i1 %tobool.not.i393.i, label %rtl_write_word.exit389.i.rtl_write_byte.exit397.i_crit_edge, label %if.then.i396.i

rtl_write_word.exit389.i.rtl_write_byte.exit397.i_crit_edge: ; preds = %rtl_write_word.exit389.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit397.i

if.then.i396.i:                                   ; preds = %rtl_write_word.exit389.i
  call void @__sanitizer_cov_trace_pc() #10
  %498 = ptrtoint ptr %read8_sync.i282.i to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load ptr, ptr %read8_sync.i282.i, align 4
  %call.i395.i = tail call zeroext i8 %499(ptr noundef %189, i32 noundef 1057) #8
  br label %rtl_write_byte.exit397.i

rtl_write_byte.exit397.i:                         ; preds = %if.then.i396.i, %rtl_write_word.exit389.i.rtl_write_byte.exit397.i_crit_edge
  %receive_config.i = getelementptr inbounds %struct.rtl_priv, ptr %189, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 3
  %500 = ptrtoint ptr %receive_config.i to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load i32, ptr %receive_config.i, align 4
  %502 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %503(ptr noundef %189, i32 noundef 1544, i32 noundef %501) #8
  %504 = ptrtoint ptr %cfg.i.i208 to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load ptr, ptr %cfg.i.i208, align 8
  %write_readback.i400.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %505, i32 0, i32 1
  %506 = ptrtoint ptr %write_readback.i400.i to i32
  call void @__asan_load1_noabort(i32 %506)
  %507 = load i8, ptr %write_readback.i400.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %507)
  %tobool.not.i401.i = icmp eq i8 %507, 0
  br i1 %tobool.not.i401.i, label %rtl_write_byte.exit397.i.rtl_write_dword.exit405.i_crit_edge, label %if.then.i404.i

rtl_write_byte.exit397.i.rtl_write_dword.exit405.i_crit_edge: ; preds = %rtl_write_byte.exit397.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit405.i

if.then.i404.i:                                   ; preds = %rtl_write_byte.exit397.i
  call void @__sanitizer_cov_trace_pc() #10
  %508 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i403.i = tail call i32 %509(ptr noundef %189, i32 noundef 1544) #8
  br label %rtl_write_dword.exit405.i

rtl_write_dword.exit405.i:                        ; preds = %if.then.i404.i, %rtl_write_byte.exit397.i.rtl_write_dword.exit405.i_crit_edge
  %510 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %511(ptr noundef %189, i32 noundef 1700, i16 noundef zeroext -1) #8
  %512 = ptrtoint ptr %cfg.i.i208 to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %cfg.i.i208, align 8
  %write_readback.i408.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %513, i32 0, i32 1
  %514 = ptrtoint ptr %write_readback.i408.i to i32
  call void @__asan_load1_noabort(i32 %514)
  %515 = load i8, ptr %write_readback.i408.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %515)
  %tobool.not.i409.i = icmp eq i8 %515, 0
  br i1 %tobool.not.i409.i, label %rtl_write_dword.exit405.i.rtl_write_word.exit413.i_crit_edge, label %if.then.i412.i

rtl_write_dword.exit405.i.rtl_write_word.exit413.i_crit_edge: ; preds = %rtl_write_dword.exit405.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit413.i

if.then.i412.i:                                   ; preds = %rtl_write_dword.exit405.i
  call void @__sanitizer_cov_trace_pc() #10
  %516 = ptrtoint ptr %read16_sync.i380.i to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %read16_sync.i380.i, align 4
  %call.i411.i = tail call zeroext i16 %517(ptr noundef %189, i32 noundef 1700) #8
  br label %rtl_write_word.exit413.i

rtl_write_word.exit413.i:                         ; preds = %if.then.i412.i, %rtl_write_dword.exit405.i.rtl_write_word.exit413.i_crit_edge
  %transmit_config.i = getelementptr inbounds %struct.rtl_priv, ptr %189, i32 1, i32 8, i32 2, i32 3
  %518 = ptrtoint ptr %transmit_config.i to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load i32, ptr %transmit_config.i, align 4
  %520 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %521(ptr noundef %189, i32 noundef 1540, i32 noundef %519) #8
  %522 = ptrtoint ptr %cfg.i.i208 to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %cfg.i.i208, align 8
  %write_readback.i416.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %523, i32 0, i32 1
  %524 = ptrtoint ptr %write_readback.i416.i to i32
  call void @__asan_load1_noabort(i32 %524)
  %525 = load i8, ptr %write_readback.i416.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %525)
  %tobool.not.i417.i = icmp eq i8 %525, 0
  br i1 %tobool.not.i417.i, label %rtl_write_word.exit413.i.rtl_write_dword.exit421.i_crit_edge, label %if.then.i420.i

rtl_write_word.exit413.i.rtl_write_dword.exit421.i_crit_edge: ; preds = %rtl_write_word.exit413.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit421.i

if.then.i420.i:                                   ; preds = %rtl_write_word.exit413.i
  call void @__sanitizer_cov_trace_pc() #10
  %526 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i419.i = tail call i32 %527(ptr noundef %189, i32 noundef 1540) #8
  br label %rtl_write_dword.exit421.i

rtl_write_dword.exit421.i:                        ; preds = %if.then.i420.i, %rtl_write_word.exit413.i.rtl_write_dword.exit421.i_crit_edge
  %528 = ptrtoint ptr %cfg.i.i208 to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %cfg.i.i208, align 8
  %mod_params.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %529, i32 0, i32 5
  %530 = ptrtoint ptr %mod_params.i to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %mod_params.i, align 4
  %dma64.i = getelementptr inbounds %struct.rtl_mod_params, ptr %531, i32 0, i32 7
  %532 = ptrtoint ptr %dma64.i to i32
  call void @__asan_load1_noabort(i32 %532)
  %533 = load i8, ptr %dma64.i, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %533)
  %tobool45.not.i = icmp eq i8 %533, 0
  br i1 %tobool45.not.i, label %rtl_write_dword.exit421.i.dma64_end.i_crit_edge, label %if.end47.i

rtl_write_dword.exit421.i.dma64_end.i_crit_edge:  ; preds = %rtl_write_dword.exit421.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma64_end.i

if.end47.i:                                       ; preds = %rtl_write_dword.exit421.i
  %534 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %535(ptr noundef %189, i32 noundef 780, i32 noundef 0) #8
  %536 = ptrtoint ptr %cfg.i.i208 to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %cfg.i.i208, align 8
  %write_readback.i424.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %537, i32 0, i32 1
  %538 = ptrtoint ptr %write_readback.i424.i to i32
  call void @__asan_load1_noabort(i32 %538)
  %539 = load i8, ptr %write_readback.i424.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %539)
  %tobool.not.i425.i = icmp eq i8 %539, 0
  br i1 %tobool.not.i425.i, label %if.end47.i.rtl_write_dword.exit429.i_crit_edge, label %if.then.i428.i

if.end47.i.rtl_write_dword.exit429.i_crit_edge:   ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit429.i

if.then.i428.i:                                   ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #10
  %540 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i427.i = tail call i32 %541(ptr noundef %189, i32 noundef 780) #8
  br label %rtl_write_dword.exit429.i

rtl_write_dword.exit429.i:                        ; preds = %if.then.i428.i, %if.end47.i.rtl_write_dword.exit429.i_crit_edge
  %542 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %543(ptr noundef %189, i32 noundef 788, i32 noundef 0) #8
  %544 = ptrtoint ptr %cfg.i.i208 to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %cfg.i.i208, align 8
  %write_readback.i432.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %545, i32 0, i32 1
  %546 = ptrtoint ptr %write_readback.i432.i to i32
  call void @__asan_load1_noabort(i32 %546)
  %547 = load i8, ptr %write_readback.i432.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %547)
  %tobool.not.i433.i = icmp eq i8 %547, 0
  br i1 %tobool.not.i433.i, label %rtl_write_dword.exit429.i.rtl_write_dword.exit437.i_crit_edge, label %if.then.i436.i

rtl_write_dword.exit429.i.rtl_write_dword.exit437.i_crit_edge: ; preds = %rtl_write_dword.exit429.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit437.i

if.then.i436.i:                                   ; preds = %rtl_write_dword.exit429.i
  call void @__sanitizer_cov_trace_pc() #10
  %548 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i435.i = tail call i32 %549(ptr noundef %189, i32 noundef 788) #8
  br label %rtl_write_dword.exit437.i

rtl_write_dword.exit437.i:                        ; preds = %if.then.i436.i, %rtl_write_dword.exit429.i.rtl_write_dword.exit437.i_crit_edge
  %550 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %551(ptr noundef %189, i32 noundef 796, i32 noundef 0) #8
  %552 = ptrtoint ptr %cfg.i.i208 to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %cfg.i.i208, align 8
  %write_readback.i440.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %553, i32 0, i32 1
  %554 = ptrtoint ptr %write_readback.i440.i to i32
  call void @__asan_load1_noabort(i32 %554)
  %555 = load i8, ptr %write_readback.i440.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %555)
  %tobool.not.i441.i = icmp eq i8 %555, 0
  br i1 %tobool.not.i441.i, label %rtl_write_dword.exit437.i.rtl_write_dword.exit445.i_crit_edge, label %if.then.i444.i

rtl_write_dword.exit437.i.rtl_write_dword.exit445.i_crit_edge: ; preds = %rtl_write_dword.exit437.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit445.i

if.then.i444.i:                                   ; preds = %rtl_write_dword.exit437.i
  call void @__sanitizer_cov_trace_pc() #10
  %556 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i443.i = tail call i32 %557(ptr noundef %189, i32 noundef 796) #8
  br label %rtl_write_dword.exit445.i

rtl_write_dword.exit445.i:                        ; preds = %if.then.i444.i, %rtl_write_dword.exit437.i.rtl_write_dword.exit445.i_crit_edge
  %558 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %559(ptr noundef %189, i32 noundef 804, i32 noundef 0) #8
  %560 = ptrtoint ptr %cfg.i.i208 to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load ptr, ptr %cfg.i.i208, align 8
  %write_readback.i448.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %561, i32 0, i32 1
  %562 = ptrtoint ptr %write_readback.i448.i to i32
  call void @__asan_load1_noabort(i32 %562)
  %563 = load i8, ptr %write_readback.i448.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %563)
  %tobool.not.i449.i = icmp eq i8 %563, 0
  br i1 %tobool.not.i449.i, label %rtl_write_dword.exit445.i.rtl_write_dword.exit453.i_crit_edge, label %if.then.i452.i

rtl_write_dword.exit445.i.rtl_write_dword.exit453.i_crit_edge: ; preds = %rtl_write_dword.exit445.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit453.i

if.then.i452.i:                                   ; preds = %rtl_write_dword.exit445.i
  call void @__sanitizer_cov_trace_pc() #10
  %564 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i451.i = tail call i32 %565(ptr noundef %189, i32 noundef 804) #8
  br label %rtl_write_dword.exit453.i

rtl_write_dword.exit453.i:                        ; preds = %if.then.i452.i, %rtl_write_dword.exit445.i.rtl_write_dword.exit453.i_crit_edge
  %566 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %567(ptr noundef %189, i32 noundef 812, i32 noundef 0) #8
  %568 = ptrtoint ptr %cfg.i.i208 to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load ptr, ptr %cfg.i.i208, align 8
  %write_readback.i456.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %569, i32 0, i32 1
  %570 = ptrtoint ptr %write_readback.i456.i to i32
  call void @__asan_load1_noabort(i32 %570)
  %571 = load i8, ptr %write_readback.i456.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %571)
  %tobool.not.i457.i = icmp eq i8 %571, 0
  br i1 %tobool.not.i457.i, label %rtl_write_dword.exit453.i.rtl_write_dword.exit461.i_crit_edge, label %if.then.i460.i

rtl_write_dword.exit453.i.rtl_write_dword.exit461.i_crit_edge: ; preds = %rtl_write_dword.exit453.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit461.i

if.then.i460.i:                                   ; preds = %rtl_write_dword.exit453.i
  call void @__sanitizer_cov_trace_pc() #10
  %572 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i459.i = tail call i32 %573(ptr noundef %189, i32 noundef 812) #8
  br label %rtl_write_dword.exit461.i

rtl_write_dword.exit461.i:                        ; preds = %if.then.i460.i, %rtl_write_dword.exit453.i.rtl_write_dword.exit461.i_crit_edge
  %574 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %575(ptr noundef %189, i32 noundef 820, i32 noundef 0) #8
  %576 = ptrtoint ptr %cfg.i.i208 to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load ptr, ptr %cfg.i.i208, align 8
  %write_readback.i464.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %577, i32 0, i32 1
  %578 = ptrtoint ptr %write_readback.i464.i to i32
  call void @__asan_load1_noabort(i32 %578)
  %579 = load i8, ptr %write_readback.i464.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %579)
  %tobool.not.i465.i = icmp eq i8 %579, 0
  br i1 %tobool.not.i465.i, label %rtl_write_dword.exit461.i.rtl_write_dword.exit469.i_crit_edge, label %if.then.i468.i

rtl_write_dword.exit461.i.rtl_write_dword.exit469.i_crit_edge: ; preds = %rtl_write_dword.exit461.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit469.i

if.then.i468.i:                                   ; preds = %rtl_write_dword.exit461.i
  call void @__sanitizer_cov_trace_pc() #10
  %580 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i467.i = tail call i32 %581(ptr noundef %189, i32 noundef 820) #8
  br label %rtl_write_dword.exit469.i

rtl_write_dword.exit469.i:                        ; preds = %if.then.i468.i, %rtl_write_dword.exit461.i.rtl_write_dword.exit469.i_crit_edge
  %582 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %583(ptr noundef %189, i32 noundef 836, i32 noundef 0) #8
  %584 = ptrtoint ptr %cfg.i.i208 to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load ptr, ptr %cfg.i.i208, align 8
  %write_readback.i472.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %585, i32 0, i32 1
  %586 = ptrtoint ptr %write_readback.i472.i to i32
  call void @__asan_load1_noabort(i32 %586)
  %587 = load i8, ptr %write_readback.i472.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %587)
  %tobool.not.i473.i = icmp eq i8 %587, 0
  br i1 %tobool.not.i473.i, label %rtl_write_dword.exit469.i.rtl_write_dword.exit477.i_crit_edge, label %if.then.i476.i

rtl_write_dword.exit469.i.rtl_write_dword.exit477.i_crit_edge: ; preds = %rtl_write_dword.exit469.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit477.i

if.then.i476.i:                                   ; preds = %rtl_write_dword.exit469.i
  call void @__sanitizer_cov_trace_pc() #10
  %588 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i475.i = tail call i32 %589(ptr noundef %189, i32 noundef 836) #8
  br label %rtl_write_dword.exit477.i

rtl_write_dword.exit477.i:                        ; preds = %if.then.i476.i, %rtl_write_dword.exit469.i.rtl_write_dword.exit477.i_crit_edge
  %590 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %591(ptr noundef %189, i32 noundef 828, i32 noundef 0) #8
  %592 = ptrtoint ptr %cfg.i.i208 to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load ptr, ptr %cfg.i.i208, align 8
  %write_readback.i480.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %593, i32 0, i32 1
  %594 = ptrtoint ptr %write_readback.i480.i to i32
  call void @__asan_load1_noabort(i32 %594)
  %595 = load i8, ptr %write_readback.i480.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %595)
  %tobool.not.i481.i = icmp eq i8 %595, 0
  br i1 %tobool.not.i481.i, label %rtl_write_dword.exit477.i.dma64_end.i_crit_edge, label %if.then.i484.i

rtl_write_dword.exit477.i.dma64_end.i_crit_edge:  ; preds = %rtl_write_dword.exit477.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma64_end.i

if.then.i484.i:                                   ; preds = %rtl_write_dword.exit477.i
  call void @__sanitizer_cov_trace_pc() #10
  %596 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i483.i = tail call i32 %597(ptr noundef %189, i32 noundef 828) #8
  br label %dma64_end.i

dma64_end.i:                                      ; preds = %if.then.i484.i, %rtl_write_dword.exit477.i.dma64_end.i_crit_edge, %rtl_write_dword.exit421.i.dma64_end.i_crit_edge
  %buffer_desc_dma92.i = getelementptr %struct.rtl_priv, ptr %189, i32 1, i32 7, i32 6, i32 0, i32 0, i32 4, i32 7
  %598 = ptrtoint ptr %buffer_desc_dma92.i to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load i32, ptr %buffer_desc_dma92.i, align 4
  %600 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %601(ptr noundef %189, i32 noundef 776, i32 noundef %599) #8
  %602 = ptrtoint ptr %cfg.i.i208 to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load ptr, ptr %cfg.i.i208, align 8
  %write_readback.i488.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %603, i32 0, i32 1
  %604 = ptrtoint ptr %write_readback.i488.i to i32
  call void @__asan_load1_noabort(i32 %604)
  %605 = load i8, ptr %write_readback.i488.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %605)
  %tobool.not.i489.i = icmp eq i8 %605, 0
  br i1 %tobool.not.i489.i, label %dma64_end.i.rtl_write_dword.exit493.i_crit_edge, label %if.then.i492.i

dma64_end.i.rtl_write_dword.exit493.i_crit_edge:  ; preds = %dma64_end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit493.i

if.then.i492.i:                                   ; preds = %dma64_end.i
  call void @__sanitizer_cov_trace_pc() #10
  %606 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i491.i = tail call i32 %607(ptr noundef %189, i32 noundef 776) #8
  br label %rtl_write_dword.exit493.i

rtl_write_dword.exit493.i:                        ; preds = %if.then.i492.i, %dma64_end.i.rtl_write_dword.exit493.i_crit_edge
  %buffer_desc_dma98.i = getelementptr %struct.rtl_priv, ptr %189, i32 1, i32 7, i32 10, i32 0, i32 0, i32 4, i32 3
  %608 = ptrtoint ptr %buffer_desc_dma98.i to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load i32, ptr %buffer_desc_dma98.i, align 4
  %610 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %611(ptr noundef %189, i32 noundef 784, i32 noundef %609) #8
  %612 = ptrtoint ptr %cfg.i.i208 to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load ptr, ptr %cfg.i.i208, align 8
  %write_readback.i496.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %613, i32 0, i32 1
  %614 = ptrtoint ptr %write_readback.i496.i to i32
  call void @__asan_load1_noabort(i32 %614)
  %615 = load i8, ptr %write_readback.i496.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %615)
  %tobool.not.i497.i = icmp eq i8 %615, 0
  br i1 %tobool.not.i497.i, label %rtl_write_dword.exit493.i.rtl_write_dword.exit501.i_crit_edge, label %if.then.i500.i

rtl_write_dword.exit493.i.rtl_write_dword.exit501.i_crit_edge: ; preds = %rtl_write_dword.exit493.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit501.i

if.then.i500.i:                                   ; preds = %rtl_write_dword.exit493.i
  call void @__sanitizer_cov_trace_pc() #10
  %616 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i499.i = tail call i32 %617(ptr noundef %189, i32 noundef 784) #8
  br label %rtl_write_dword.exit501.i

rtl_write_dword.exit501.i:                        ; preds = %if.then.i500.i, %rtl_write_dword.exit493.i.rtl_write_dword.exit501.i_crit_edge
  %buffer_desc_dma104.i = getelementptr %struct.rtl_priv, ptr %189, i32 1, i32 7, i32 5
  %618 = ptrtoint ptr %buffer_desc_dma104.i to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load i32, ptr %buffer_desc_dma104.i, align 4
  %620 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %621(ptr noundef %189, i32 noundef 792, i32 noundef %619) #8
  %622 = ptrtoint ptr %cfg.i.i208 to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load ptr, ptr %cfg.i.i208, align 8
  %write_readback.i504.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %623, i32 0, i32 1
  %624 = ptrtoint ptr %write_readback.i504.i to i32
  call void @__asan_load1_noabort(i32 %624)
  %625 = load i8, ptr %write_readback.i504.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %625)
  %tobool.not.i505.i = icmp eq i8 %625, 0
  br i1 %tobool.not.i505.i, label %rtl_write_dword.exit501.i.rtl_write_dword.exit509.i_crit_edge, label %if.then.i508.i

rtl_write_dword.exit501.i.rtl_write_dword.exit509.i_crit_edge: ; preds = %rtl_write_dword.exit501.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit509.i

if.then.i508.i:                                   ; preds = %rtl_write_dword.exit501.i
  call void @__sanitizer_cov_trace_pc() #10
  %626 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i507.i = tail call i32 %627(ptr noundef %189, i32 noundef 792) #8
  br label %rtl_write_dword.exit509.i

rtl_write_dword.exit509.i:                        ; preds = %if.then.i508.i, %rtl_write_dword.exit501.i.rtl_write_dword.exit509.i_crit_edge
  %buffer_desc_dma110.i = getelementptr %struct.rtl_priv, ptr %189, i32 1, i32 7, i32 3, i32 0, i32 0, i32 1
  %628 = ptrtoint ptr %buffer_desc_dma110.i to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load i32, ptr %buffer_desc_dma110.i, align 4
  %630 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %631(ptr noundef %189, i32 noundef 800, i32 noundef %629) #8
  %632 = ptrtoint ptr %cfg.i.i208 to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load ptr, ptr %cfg.i.i208, align 8
  %write_readback.i512.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %633, i32 0, i32 1
  %634 = ptrtoint ptr %write_readback.i512.i to i32
  call void @__asan_load1_noabort(i32 %634)
  %635 = load i8, ptr %write_readback.i512.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %635)
  %tobool.not.i513.i = icmp eq i8 %635, 0
  br i1 %tobool.not.i513.i, label %rtl_write_dword.exit509.i.rtl_write_dword.exit517.i_crit_edge, label %if.then.i516.i

rtl_write_dword.exit509.i.rtl_write_dword.exit517.i_crit_edge: ; preds = %rtl_write_dword.exit509.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit517.i

if.then.i516.i:                                   ; preds = %rtl_write_dword.exit509.i
  call void @__sanitizer_cov_trace_pc() #10
  %636 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i515.i = tail call i32 %637(ptr noundef %189, i32 noundef 800) #8
  br label %rtl_write_dword.exit517.i

rtl_write_dword.exit517.i:                        ; preds = %if.then.i516.i, %rtl_write_dword.exit509.i.rtl_write_dword.exit517.i_crit_edge
  %buffer_desc_dma116.i = getelementptr %struct.rtl_priv, ptr %189, i32 1, i32 7, i32 2, i32 1, i32 2
  %638 = ptrtoint ptr %buffer_desc_dma116.i to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load i32, ptr %buffer_desc_dma116.i, align 4
  %640 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %641(ptr noundef %189, i32 noundef 808, i32 noundef %639) #8
  %642 = ptrtoint ptr %cfg.i.i208 to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load ptr, ptr %cfg.i.i208, align 8
  %write_readback.i520.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %643, i32 0, i32 1
  %644 = ptrtoint ptr %write_readback.i520.i to i32
  call void @__asan_load1_noabort(i32 %644)
  %645 = load i8, ptr %write_readback.i520.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %645)
  %tobool.not.i521.i = icmp eq i8 %645, 0
  br i1 %tobool.not.i521.i, label %rtl_write_dword.exit517.i.rtl_write_dword.exit525.i_crit_edge, label %if.then.i524.i

rtl_write_dword.exit517.i.rtl_write_dword.exit525.i_crit_edge: ; preds = %rtl_write_dword.exit517.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit525.i

if.then.i524.i:                                   ; preds = %rtl_write_dword.exit517.i
  call void @__sanitizer_cov_trace_pc() #10
  %646 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %646)
  %647 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i523.i = tail call i32 %647(ptr noundef %189, i32 noundef 808) #8
  br label %rtl_write_dword.exit525.i

rtl_write_dword.exit525.i:                        ; preds = %if.then.i524.i, %rtl_write_dword.exit517.i.rtl_write_dword.exit525.i_crit_edge
  %648 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %648)
  %649 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i527.i = tail call i32 %649(ptr noundef %189, i32 noundef 808) #8
  %buffer_desc_dma123.i = getelementptr inbounds %struct.rtl_priv, ptr %189, i32 1, i32 7, i32 1, i32 1, i32 4
  %650 = ptrtoint ptr %buffer_desc_dma123.i to i32
  call void @__asan_load4_noabort(i32 %650)
  %651 = load i32, ptr %buffer_desc_dma123.i, align 4
  %652 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %652)
  %653 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %653(ptr noundef %189, i32 noundef 816, i32 noundef %651) #8
  %654 = ptrtoint ptr %cfg.i.i208 to i32
  call void @__asan_load4_noabort(i32 %654)
  %655 = load ptr, ptr %cfg.i.i208, align 8
  %write_readback.i530.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %655, i32 0, i32 1
  %656 = ptrtoint ptr %write_readback.i530.i to i32
  call void @__asan_load1_noabort(i32 %656)
  %657 = load i8, ptr %write_readback.i530.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %657)
  %tobool.not.i531.i = icmp eq i8 %657, 0
  br i1 %tobool.not.i531.i, label %rtl_write_dword.exit525.i.rtl_write_dword.exit535.i_crit_edge, label %if.then.i534.i

rtl_write_dword.exit525.i.rtl_write_dword.exit535.i_crit_edge: ; preds = %rtl_write_dword.exit525.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit535.i

if.then.i534.i:                                   ; preds = %rtl_write_dword.exit525.i
  call void @__sanitizer_cov_trace_pc() #10
  %658 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %658)
  %659 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i533.i = tail call i32 %659(ptr noundef %189, i32 noundef 816) #8
  br label %rtl_write_dword.exit535.i

rtl_write_dword.exit535.i:                        ; preds = %if.then.i534.i, %rtl_write_dword.exit525.i.rtl_write_dword.exit535.i_crit_edge
  %buffer_desc_dma129.i = getelementptr %struct.rtl_priv, ptr %189, i32 1, i32 7, i32 12, i32 0, i32 0, i32 4, i32 2
  %660 = ptrtoint ptr %buffer_desc_dma129.i to i32
  call void @__asan_load4_noabort(i32 %660)
  %661 = load i32, ptr %buffer_desc_dma129.i, align 4
  %662 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %662)
  %663 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %663(ptr noundef %189, i32 noundef 832, i32 noundef %661) #8
  %664 = ptrtoint ptr %cfg.i.i208 to i32
  call void @__asan_load4_noabort(i32 %664)
  %665 = load ptr, ptr %cfg.i.i208, align 8
  %write_readback.i538.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %665, i32 0, i32 1
  %666 = ptrtoint ptr %write_readback.i538.i to i32
  call void @__asan_load1_noabort(i32 %666)
  %667 = load i8, ptr %write_readback.i538.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %667)
  %tobool.not.i539.i = icmp eq i8 %667, 0
  br i1 %tobool.not.i539.i, label %rtl_write_dword.exit535.i.rtl_write_dword.exit543.i_crit_edge, label %if.then.i542.i

rtl_write_dword.exit535.i.rtl_write_dword.exit543.i_crit_edge: ; preds = %rtl_write_dword.exit535.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit543.i

if.then.i542.i:                                   ; preds = %rtl_write_dword.exit535.i
  call void @__sanitizer_cov_trace_pc() #10
  %668 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %668)
  %669 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i541.i = tail call i32 %669(ptr noundef %189, i32 noundef 832) #8
  br label %rtl_write_dword.exit543.i

rtl_write_dword.exit543.i:                        ; preds = %if.then.i542.i, %rtl_write_dword.exit535.i.rtl_write_dword.exit543.i_crit_edge
  %dma135.i = getelementptr inbounds %struct.rtl_priv, ptr %189, i32 1, i32 8, i32 2, i32 4, i32 1
  %670 = ptrtoint ptr %dma135.i to i32
  call void @__asan_load4_noabort(i32 %670)
  %671 = load i32, ptr %dma135.i, align 4
  %672 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %672)
  %673 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %673(ptr noundef %189, i32 noundef 824, i32 noundef %671) #8
  %674 = ptrtoint ptr %cfg.i.i208 to i32
  call void @__asan_load4_noabort(i32 %674)
  %675 = load ptr, ptr %cfg.i.i208, align 8
  %write_readback.i546.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %675, i32 0, i32 1
  %676 = ptrtoint ptr %write_readback.i546.i to i32
  call void @__asan_load1_noabort(i32 %676)
  %677 = load i8, ptr %write_readback.i546.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %677)
  %tobool.not.i547.i = icmp eq i8 %677, 0
  br i1 %tobool.not.i547.i, label %rtl_write_dword.exit543.i.rtl_write_dword.exit551.i_crit_edge, label %if.then.i550.i

rtl_write_dword.exit543.i.rtl_write_dword.exit551.i_crit_edge: ; preds = %rtl_write_dword.exit543.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit551.i

if.then.i550.i:                                   ; preds = %rtl_write_dword.exit543.i
  call void @__sanitizer_cov_trace_pc() #10
  %678 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %678)
  %679 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i549.i = tail call i32 %679(ptr noundef %189, i32 noundef 824) #8
  br label %rtl_write_dword.exit551.i

rtl_write_dword.exit551.i:                        ; preds = %if.then.i550.i, %rtl_write_dword.exit543.i.rtl_write_dword.exit551.i_crit_edge
  %680 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %681(ptr noundef %189, i32 noundef 924, i32 noundef 1073741823) #8
  %682 = ptrtoint ptr %cfg.i.i208 to i32
  call void @__asan_load4_noabort(i32 %682)
  %683 = load ptr, ptr %cfg.i.i208, align 8
  %write_readback.i554.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %683, i32 0, i32 1
  %684 = ptrtoint ptr %write_readback.i554.i to i32
  call void @__asan_load1_noabort(i32 %684)
  %685 = load i8, ptr %write_readback.i554.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %685)
  %tobool.not.i555.i = icmp eq i8 %685, 0
  br i1 %tobool.not.i555.i, label %rtl_write_dword.exit551.i.rtl_write_dword.exit559.i_crit_edge, label %if.then.i558.i

rtl_write_dword.exit551.i.rtl_write_dword.exit559.i_crit_edge: ; preds = %rtl_write_dword.exit551.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit559.i

if.then.i558.i:                                   ; preds = %rtl_write_dword.exit551.i
  call void @__sanitizer_cov_trace_pc() #10
  %686 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %686)
  %687 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i557.i = tail call i32 %687(ptr noundef %189, i32 noundef 924) #8
  br label %rtl_write_dword.exit559.i

rtl_write_dword.exit559.i:                        ; preds = %if.then.i558.i, %rtl_write_dword.exit551.i.rtl_write_dword.exit559.i_crit_edge
  %688 = ptrtoint ptr %read8_sync.i282.i to i32
  call void @__asan_load4_noabort(i32 %688)
  %689 = load ptr, ptr %read8_sync.i282.i, align 4
  %call.i561.i = tail call zeroext i8 %689(ptr noundef %189, i32 noundef 771) #8
  %690 = or i8 %call.i561.i, -9
  %691 = ptrtoint ptr %write8_async.i.i207 to i32
  call void @__asan_load4_noabort(i32 %691)
  %692 = load ptr, ptr %write8_async.i.i207, align 4
  tail call void %692(ptr noundef %189, i32 noundef 771, i8 noundef zeroext %690) #8
  %693 = ptrtoint ptr %cfg.i.i208 to i32
  call void @__asan_load4_noabort(i32 %693)
  %694 = load ptr, ptr %cfg.i.i208, align 8
  %write_readback.i564.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %694, i32 0, i32 1
  %695 = ptrtoint ptr %write_readback.i564.i to i32
  call void @__asan_load1_noabort(i32 %695)
  %696 = load i8, ptr %write_readback.i564.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %696)
  %tobool.not.i565.i = icmp eq i8 %696, 0
  br i1 %tobool.not.i565.i, label %rtl_write_dword.exit559.i.rtl_write_byte.exit569.i_crit_edge, label %if.then.i568.i

rtl_write_dword.exit559.i.rtl_write_byte.exit569.i_crit_edge: ; preds = %rtl_write_dword.exit559.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit569.i

if.then.i568.i:                                   ; preds = %rtl_write_dword.exit559.i
  call void @__sanitizer_cov_trace_pc() #10
  %697 = ptrtoint ptr %read8_sync.i282.i to i32
  call void @__asan_load4_noabort(i32 %697)
  %698 = load ptr, ptr %read8_sync.i282.i, align 4
  %call.i567.i = tail call zeroext i8 %698(ptr noundef %189, i32 noundef 771) #8
  br label %rtl_write_byte.exit569.i

rtl_write_byte.exit569.i:                         ; preds = %if.then.i568.i, %rtl_write_dword.exit559.i.rtl_write_byte.exit569.i_crit_edge
  %699 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %699)
  %700 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %700(ptr noundef %189, i32 noundef 772, i32 noundef 0) #8
  %701 = ptrtoint ptr %cfg.i.i208 to i32
  call void @__asan_load4_noabort(i32 %701)
  %702 = load ptr, ptr %cfg.i.i208, align 8
  %write_readback.i572.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %702, i32 0, i32 1
  %703 = ptrtoint ptr %write_readback.i572.i to i32
  call void @__asan_load1_noabort(i32 %703)
  %704 = load i8, ptr %write_readback.i572.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %704)
  %tobool.not.i573.i = icmp eq i8 %704, 0
  br i1 %tobool.not.i573.i, label %rtl_write_byte.exit569.i.rtl_write_dword.exit577.i_crit_edge, label %if.then.i576.i

rtl_write_byte.exit569.i.rtl_write_dword.exit577.i_crit_edge: ; preds = %rtl_write_byte.exit569.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit577.i

if.then.i576.i:                                   ; preds = %rtl_write_byte.exit569.i
  call void @__sanitizer_cov_trace_pc() #10
  %705 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %705)
  %706 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i575.i = tail call i32 %706(ptr noundef %189, i32 noundef 772) #8
  br label %rtl_write_dword.exit577.i

rtl_write_dword.exit577.i:                        ; preds = %if.then.i576.i, %rtl_write_byte.exit569.i.rtl_write_dword.exit577.i_crit_edge
  %707 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %707)
  %708 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %708(ptr noundef %189, i32 noundef 448, i32 noundef 0) #8
  %709 = ptrtoint ptr %cfg.i.i208 to i32
  call void @__asan_load4_noabort(i32 %709)
  %710 = load ptr, ptr %cfg.i.i208, align 8
  %write_readback.i580.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %710, i32 0, i32 1
  %711 = ptrtoint ptr %write_readback.i580.i to i32
  call void @__asan_load1_noabort(i32 %711)
  %712 = load i8, ptr %write_readback.i580.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %712)
  %tobool.not.i581.i = icmp eq i8 %712, 0
  br i1 %tobool.not.i581.i, label %rtl_write_dword.exit577.i.rtl_write_dword.exit585.i_crit_edge, label %if.then.i584.i

rtl_write_dword.exit577.i.rtl_write_dword.exit585.i_crit_edge: ; preds = %rtl_write_dword.exit577.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit585.i

if.then.i584.i:                                   ; preds = %rtl_write_dword.exit577.i
  call void @__sanitizer_cov_trace_pc() #10
  %713 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %713)
  %714 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i583.i = tail call i32 %714(ptr noundef %189, i32 noundef 448) #8
  br label %rtl_write_dword.exit585.i

rtl_write_dword.exit585.i:                        ; preds = %if.then.i584.i, %rtl_write_dword.exit577.i.rtl_write_dword.exit585.i_crit_edge
  %715 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %715)
  %716 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %716(ptr noundef %189, i32 noundef 896, i16 noundef zeroext 4608) #8
  %717 = ptrtoint ptr %cfg.i.i208 to i32
  call void @__asan_load4_noabort(i32 %717)
  %718 = load ptr, ptr %cfg.i.i208, align 8
  %write_readback.i588.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %718, i32 0, i32 1
  %719 = ptrtoint ptr %write_readback.i588.i to i32
  call void @__asan_load1_noabort(i32 %719)
  %720 = load i8, ptr %write_readback.i588.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %720)
  %tobool.not.i589.i = icmp eq i8 %720, 0
  br i1 %tobool.not.i589.i, label %rtl_write_dword.exit585.i.rtl_write_word.exit593.i_crit_edge, label %if.then.i592.i

rtl_write_dword.exit585.i.rtl_write_word.exit593.i_crit_edge: ; preds = %rtl_write_dword.exit585.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit593.i

if.then.i592.i:                                   ; preds = %rtl_write_dword.exit585.i
  call void @__sanitizer_cov_trace_pc() #10
  %721 = ptrtoint ptr %read16_sync.i380.i to i32
  call void @__asan_load4_noabort(i32 %721)
  %722 = load ptr, ptr %read16_sync.i380.i, align 4
  %call.i591.i = tail call zeroext i16 %722(ptr noundef %189, i32 noundef 896) #8
  br label %rtl_write_word.exit593.i

rtl_write_word.exit593.i:                         ; preds = %if.then.i592.i, %rtl_write_dword.exit585.i.rtl_write_word.exit593.i_crit_edge
  %723 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %723)
  %724 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %724(ptr noundef %189, i32 noundef 900, i16 noundef zeroext 4608) #8
  %725 = ptrtoint ptr %cfg.i.i208 to i32
  call void @__asan_load4_noabort(i32 %725)
  %726 = load ptr, ptr %cfg.i.i208, align 8
  %write_readback.i596.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %726, i32 0, i32 1
  %727 = ptrtoint ptr %write_readback.i596.i to i32
  call void @__asan_load1_noabort(i32 %727)
  %728 = load i8, ptr %write_readback.i596.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %728)
  %tobool.not.i597.i = icmp eq i8 %728, 0
  br i1 %tobool.not.i597.i, label %rtl_write_word.exit593.i.rtl_write_word.exit601.i_crit_edge, label %if.then.i600.i

rtl_write_word.exit593.i.rtl_write_word.exit601.i_crit_edge: ; preds = %rtl_write_word.exit593.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit601.i

if.then.i600.i:                                   ; preds = %rtl_write_word.exit593.i
  call void @__sanitizer_cov_trace_pc() #10
  %729 = ptrtoint ptr %read16_sync.i380.i to i32
  call void @__asan_load4_noabort(i32 %729)
  %730 = load ptr, ptr %read16_sync.i380.i, align 4
  %call.i599.i = tail call zeroext i16 %730(ptr noundef %189, i32 noundef 900) #8
  br label %rtl_write_word.exit601.i

rtl_write_word.exit601.i:                         ; preds = %if.then.i600.i, %rtl_write_word.exit593.i.rtl_write_word.exit601.i_crit_edge
  %731 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %731)
  %732 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %732(ptr noundef %189, i32 noundef 902, i16 noundef zeroext 4608) #8
  %733 = ptrtoint ptr %cfg.i.i208 to i32
  call void @__asan_load4_noabort(i32 %733)
  %734 = load ptr, ptr %cfg.i.i208, align 8
  %write_readback.i604.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %734, i32 0, i32 1
  %735 = ptrtoint ptr %write_readback.i604.i to i32
  call void @__asan_load1_noabort(i32 %735)
  %736 = load i8, ptr %write_readback.i604.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %736)
  %tobool.not.i605.i = icmp eq i8 %736, 0
  br i1 %tobool.not.i605.i, label %rtl_write_word.exit601.i.rtl_write_word.exit609.i_crit_edge, label %if.then.i608.i

rtl_write_word.exit601.i.rtl_write_word.exit609.i_crit_edge: ; preds = %rtl_write_word.exit601.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit609.i

if.then.i608.i:                                   ; preds = %rtl_write_word.exit601.i
  call void @__sanitizer_cov_trace_pc() #10
  %737 = ptrtoint ptr %read16_sync.i380.i to i32
  call void @__asan_load4_noabort(i32 %737)
  %738 = load ptr, ptr %read16_sync.i380.i, align 4
  %call.i607.i = tail call zeroext i16 %738(ptr noundef %189, i32 noundef 902) #8
  br label %rtl_write_word.exit609.i

rtl_write_word.exit609.i:                         ; preds = %if.then.i608.i, %rtl_write_word.exit601.i.rtl_write_word.exit609.i_crit_edge
  %739 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %739)
  %740 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %740(ptr noundef %189, i32 noundef 904, i16 noundef zeroext 4608) #8
  %741 = ptrtoint ptr %cfg.i.i208 to i32
  call void @__asan_load4_noabort(i32 %741)
  %742 = load ptr, ptr %cfg.i.i208, align 8
  %write_readback.i612.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %742, i32 0, i32 1
  %743 = ptrtoint ptr %write_readback.i612.i to i32
  call void @__asan_load1_noabort(i32 %743)
  %744 = load i8, ptr %write_readback.i612.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %744)
  %tobool.not.i613.i = icmp eq i8 %744, 0
  br i1 %tobool.not.i613.i, label %rtl_write_word.exit609.i.rtl_write_word.exit617.i_crit_edge, label %if.then.i616.i

rtl_write_word.exit609.i.rtl_write_word.exit617.i_crit_edge: ; preds = %rtl_write_word.exit609.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit617.i

if.then.i616.i:                                   ; preds = %rtl_write_word.exit609.i
  call void @__sanitizer_cov_trace_pc() #10
  %745 = ptrtoint ptr %read16_sync.i380.i to i32
  call void @__asan_load4_noabort(i32 %745)
  %746 = load ptr, ptr %read16_sync.i380.i, align 4
  %call.i615.i = tail call zeroext i16 %746(ptr noundef %189, i32 noundef 904) #8
  br label %rtl_write_word.exit617.i

rtl_write_word.exit617.i:                         ; preds = %if.then.i616.i, %rtl_write_word.exit609.i.rtl_write_word.exit617.i_crit_edge
  %747 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %747)
  %748 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %748(ptr noundef %189, i32 noundef 900, i16 noundef zeroext 4608) #8
  %749 = ptrtoint ptr %cfg.i.i208 to i32
  call void @__asan_load4_noabort(i32 %749)
  %750 = load ptr, ptr %cfg.i.i208, align 8
  %write_readback.i620.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %750, i32 0, i32 1
  %751 = ptrtoint ptr %write_readback.i620.i to i32
  call void @__asan_load1_noabort(i32 %751)
  %752 = load i8, ptr %write_readback.i620.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %752)
  %tobool.not.i621.i = icmp eq i8 %752, 0
  br i1 %tobool.not.i621.i, label %rtl_write_word.exit617.i.rtl_write_word.exit625.i_crit_edge, label %if.then.i624.i

rtl_write_word.exit617.i.rtl_write_word.exit625.i_crit_edge: ; preds = %rtl_write_word.exit617.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit625.i

if.then.i624.i:                                   ; preds = %rtl_write_word.exit617.i
  call void @__sanitizer_cov_trace_pc() #10
  %753 = ptrtoint ptr %read16_sync.i380.i to i32
  call void @__asan_load4_noabort(i32 %753)
  %754 = load ptr, ptr %read16_sync.i380.i, align 4
  %call.i623.i = tail call zeroext i16 %754(ptr noundef %189, i32 noundef 900) #8
  br label %rtl_write_word.exit625.i

rtl_write_word.exit625.i:                         ; preds = %if.then.i624.i, %rtl_write_word.exit617.i.rtl_write_word.exit625.i_crit_edge
  %755 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %755)
  %756 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %756(ptr noundef %189, i32 noundef 906, i16 noundef zeroext 4608) #8
  %757 = ptrtoint ptr %cfg.i.i208 to i32
  call void @__asan_load4_noabort(i32 %757)
  %758 = load ptr, ptr %cfg.i.i208, align 8
  %write_readback.i628.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %758, i32 0, i32 1
  %759 = ptrtoint ptr %write_readback.i628.i to i32
  call void @__asan_load1_noabort(i32 %759)
  %760 = load i8, ptr %write_readback.i628.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %760)
  %tobool.not.i629.i = icmp eq i8 %760, 0
  br i1 %tobool.not.i629.i, label %rtl_write_word.exit625.i.rtl_write_word.exit633.i_crit_edge, label %if.then.i632.i

rtl_write_word.exit625.i.rtl_write_word.exit633.i_crit_edge: ; preds = %rtl_write_word.exit625.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit633.i

if.then.i632.i:                                   ; preds = %rtl_write_word.exit625.i
  call void @__sanitizer_cov_trace_pc() #10
  %761 = ptrtoint ptr %read16_sync.i380.i to i32
  call void @__asan_load4_noabort(i32 %761)
  %762 = load ptr, ptr %read16_sync.i380.i, align 4
  %call.i631.i = tail call zeroext i16 %762(ptr noundef %189, i32 noundef 906) #8
  br label %rtl_write_word.exit633.i

rtl_write_word.exit633.i:                         ; preds = %if.then.i632.i, %rtl_write_word.exit625.i.rtl_write_word.exit633.i_crit_edge
  %763 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %763)
  %764 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %764(ptr noundef %189, i32 noundef 908, i16 noundef zeroext 4608) #8
  %765 = ptrtoint ptr %cfg.i.i208 to i32
  call void @__asan_load4_noabort(i32 %765)
  %766 = load ptr, ptr %cfg.i.i208, align 8
  %write_readback.i636.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %766, i32 0, i32 1
  %767 = ptrtoint ptr %write_readback.i636.i to i32
  call void @__asan_load1_noabort(i32 %767)
  %768 = load i8, ptr %write_readback.i636.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %768)
  %tobool.not.i637.i = icmp eq i8 %768, 0
  br i1 %tobool.not.i637.i, label %rtl_write_word.exit633.i.rtl_write_word.exit641.i_crit_edge, label %if.then.i640.i

rtl_write_word.exit633.i.rtl_write_word.exit641.i_crit_edge: ; preds = %rtl_write_word.exit633.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit641.i

if.then.i640.i:                                   ; preds = %rtl_write_word.exit633.i
  call void @__sanitizer_cov_trace_pc() #10
  %769 = ptrtoint ptr %read16_sync.i380.i to i32
  call void @__asan_load4_noabort(i32 %769)
  %770 = load ptr, ptr %read16_sync.i380.i, align 4
  %call.i639.i = tail call zeroext i16 %770(ptr noundef %189, i32 noundef 908) #8
  br label %rtl_write_word.exit641.i

rtl_write_word.exit641.i:                         ; preds = %if.then.i640.i, %rtl_write_word.exit633.i.rtl_write_word.exit641.i_crit_edge
  %771 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %771)
  %772 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %772(ptr noundef %189, i32 noundef 910, i16 noundef zeroext 4608) #8
  %773 = ptrtoint ptr %cfg.i.i208 to i32
  call void @__asan_load4_noabort(i32 %773)
  %774 = load ptr, ptr %cfg.i.i208, align 8
  %write_readback.i644.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %774, i32 0, i32 1
  %775 = ptrtoint ptr %write_readback.i644.i to i32
  call void @__asan_load1_noabort(i32 %775)
  %776 = load i8, ptr %write_readback.i644.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %776)
  %tobool.not.i645.i = icmp eq i8 %776, 0
  br i1 %tobool.not.i645.i, label %rtl_write_word.exit641.i.rtl_write_word.exit649.i_crit_edge, label %if.then.i648.i

rtl_write_word.exit641.i.rtl_write_word.exit649.i_crit_edge: ; preds = %rtl_write_word.exit641.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit649.i

if.then.i648.i:                                   ; preds = %rtl_write_word.exit641.i
  call void @__sanitizer_cov_trace_pc() #10
  %777 = ptrtoint ptr %read16_sync.i380.i to i32
  call void @__asan_load4_noabort(i32 %777)
  %778 = load ptr, ptr %read16_sync.i380.i, align 4
  %call.i647.i = tail call zeroext i16 %778(ptr noundef %189, i32 noundef 910) #8
  br label %rtl_write_word.exit649.i

rtl_write_word.exit649.i:                         ; preds = %if.then.i648.i, %rtl_write_word.exit641.i.rtl_write_word.exit649.i_crit_edge
  %779 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %779)
  %780 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %780(ptr noundef %189, i32 noundef 912, i16 noundef zeroext 4608) #8
  %781 = ptrtoint ptr %cfg.i.i208 to i32
  call void @__asan_load4_noabort(i32 %781)
  %782 = load ptr, ptr %cfg.i.i208, align 8
  %write_readback.i652.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %782, i32 0, i32 1
  %783 = ptrtoint ptr %write_readback.i652.i to i32
  call void @__asan_load1_noabort(i32 %783)
  %784 = load i8, ptr %write_readback.i652.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %784)
  %tobool.not.i653.i = icmp eq i8 %784, 0
  br i1 %tobool.not.i653.i, label %rtl_write_word.exit649.i.rtl_write_word.exit657.i_crit_edge, label %if.then.i656.i

rtl_write_word.exit649.i.rtl_write_word.exit657.i_crit_edge: ; preds = %rtl_write_word.exit649.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit657.i

if.then.i656.i:                                   ; preds = %rtl_write_word.exit649.i
  call void @__sanitizer_cov_trace_pc() #10
  %785 = ptrtoint ptr %read16_sync.i380.i to i32
  call void @__asan_load4_noabort(i32 %785)
  %786 = load ptr, ptr %read16_sync.i380.i, align 4
  %call.i655.i = tail call zeroext i16 %786(ptr noundef %189, i32 noundef 912) #8
  br label %rtl_write_word.exit657.i

rtl_write_word.exit657.i:                         ; preds = %if.then.i656.i, %rtl_write_word.exit649.i.rtl_write_word.exit657.i_crit_edge
  %787 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %787)
  %788 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %788(ptr noundef %189, i32 noundef 914, i16 noundef zeroext 4608) #8
  %789 = ptrtoint ptr %cfg.i.i208 to i32
  call void @__asan_load4_noabort(i32 %789)
  %790 = load ptr, ptr %cfg.i.i208, align 8
  %write_readback.i660.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %790, i32 0, i32 1
  %791 = ptrtoint ptr %write_readback.i660.i to i32
  call void @__asan_load1_noabort(i32 %791)
  %792 = load i8, ptr %write_readback.i660.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %792)
  %tobool.not.i661.i = icmp eq i8 %792, 0
  br i1 %tobool.not.i661.i, label %rtl_write_word.exit657.i.rtl_write_word.exit665.i_crit_edge, label %if.then.i664.i

rtl_write_word.exit657.i.rtl_write_word.exit665.i_crit_edge: ; preds = %rtl_write_word.exit657.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit665.i

if.then.i664.i:                                   ; preds = %rtl_write_word.exit657.i
  call void @__sanitizer_cov_trace_pc() #10
  %793 = ptrtoint ptr %read16_sync.i380.i to i32
  call void @__asan_load4_noabort(i32 %793)
  %794 = load ptr, ptr %read16_sync.i380.i, align 4
  %call.i663.i = tail call zeroext i16 %794(ptr noundef %189, i32 noundef 914) #8
  br label %rtl_write_word.exit665.i

rtl_write_word.exit665.i:                         ; preds = %if.then.i664.i, %rtl_write_word.exit657.i.rtl_write_word.exit665.i_crit_edge
  %795 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %795)
  %796 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %796(ptr noundef %189, i32 noundef 916, i16 noundef zeroext 4608) #8
  %797 = ptrtoint ptr %cfg.i.i208 to i32
  call void @__asan_load4_noabort(i32 %797)
  %798 = load ptr, ptr %cfg.i.i208, align 8
  %write_readback.i668.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %798, i32 0, i32 1
  %799 = ptrtoint ptr %write_readback.i668.i to i32
  call void @__asan_load1_noabort(i32 %799)
  %800 = load i8, ptr %write_readback.i668.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %800)
  %tobool.not.i669.i = icmp eq i8 %800, 0
  br i1 %tobool.not.i669.i, label %rtl_write_word.exit665.i.rtl_write_word.exit673.i_crit_edge, label %if.then.i672.i

rtl_write_word.exit665.i.rtl_write_word.exit673.i_crit_edge: ; preds = %rtl_write_word.exit665.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit673.i

if.then.i672.i:                                   ; preds = %rtl_write_word.exit665.i
  call void @__sanitizer_cov_trace_pc() #10
  %801 = ptrtoint ptr %read16_sync.i380.i to i32
  call void @__asan_load4_noabort(i32 %801)
  %802 = load ptr, ptr %read16_sync.i380.i, align 4
  %call.i671.i = tail call zeroext i16 %802(ptr noundef %189, i32 noundef 916) #8
  br label %rtl_write_word.exit673.i

rtl_write_word.exit673.i:                         ; preds = %if.then.i672.i, %rtl_write_word.exit665.i.rtl_write_word.exit673.i_crit_edge
  %803 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %803)
  %804 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %804(ptr noundef %189, i32 noundef 918, i16 noundef zeroext 4608) #8
  %805 = ptrtoint ptr %cfg.i.i208 to i32
  call void @__asan_load4_noabort(i32 %805)
  %806 = load ptr, ptr %cfg.i.i208, align 8
  %write_readback.i676.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %806, i32 0, i32 1
  %807 = ptrtoint ptr %write_readback.i676.i to i32
  call void @__asan_load1_noabort(i32 %807)
  %808 = load i8, ptr %write_readback.i676.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %808)
  %tobool.not.i677.i = icmp eq i8 %808, 0
  br i1 %tobool.not.i677.i, label %rtl_write_word.exit673.i.rtl_write_word.exit681.i_crit_edge, label %if.then.i680.i

rtl_write_word.exit673.i.rtl_write_word.exit681.i_crit_edge: ; preds = %rtl_write_word.exit673.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit681.i

if.then.i680.i:                                   ; preds = %rtl_write_word.exit673.i
  call void @__sanitizer_cov_trace_pc() #10
  %809 = ptrtoint ptr %read16_sync.i380.i to i32
  call void @__asan_load4_noabort(i32 %809)
  %810 = load ptr, ptr %read16_sync.i380.i, align 4
  %call.i679.i = tail call zeroext i16 %810(ptr noundef %189, i32 noundef 918) #8
  br label %rtl_write_word.exit681.i

rtl_write_word.exit681.i:                         ; preds = %if.then.i680.i, %rtl_write_word.exit673.i.rtl_write_word.exit681.i_crit_edge
  %811 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %811)
  %812 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %812(ptr noundef %189, i32 noundef 920, i16 noundef zeroext 4608) #8
  %813 = ptrtoint ptr %cfg.i.i208 to i32
  call void @__asan_load4_noabort(i32 %813)
  %814 = load ptr, ptr %cfg.i.i208, align 8
  %write_readback.i684.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %814, i32 0, i32 1
  %815 = ptrtoint ptr %write_readback.i684.i to i32
  call void @__asan_load1_noabort(i32 %815)
  %816 = load i8, ptr %write_readback.i684.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %816)
  %tobool.not.i685.i = icmp eq i8 %816, 0
  br i1 %tobool.not.i685.i, label %rtl_write_word.exit681.i.rtl_write_word.exit689.i_crit_edge, label %if.then.i688.i

rtl_write_word.exit681.i.rtl_write_word.exit689.i_crit_edge: ; preds = %rtl_write_word.exit681.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit689.i

if.then.i688.i:                                   ; preds = %rtl_write_word.exit681.i
  call void @__sanitizer_cov_trace_pc() #10
  %817 = ptrtoint ptr %read16_sync.i380.i to i32
  call void @__asan_load4_noabort(i32 %817)
  %818 = load ptr, ptr %read16_sync.i380.i, align 4
  %call.i687.i = tail call zeroext i16 %818(ptr noundef %189, i32 noundef 920) #8
  br label %rtl_write_word.exit689.i

rtl_write_word.exit689.i:                         ; preds = %if.then.i688.i, %rtl_write_word.exit681.i.rtl_write_word.exit689.i_crit_edge
  %819 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %819)
  %820 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %820(ptr noundef %189, i32 noundef 922, i16 noundef zeroext 4608) #8
  %821 = ptrtoint ptr %cfg.i.i208 to i32
  call void @__asan_load4_noabort(i32 %821)
  %822 = load ptr, ptr %cfg.i.i208, align 8
  %write_readback.i692.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %822, i32 0, i32 1
  %823 = ptrtoint ptr %write_readback.i692.i to i32
  call void @__asan_load1_noabort(i32 %823)
  %824 = load i8, ptr %write_readback.i692.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %824)
  %tobool.not.i693.i = icmp eq i8 %824, 0
  br i1 %tobool.not.i693.i, label %rtl_write_word.exit689.i.rtl_write_word.exit697.i_crit_edge, label %if.then.i696.i

rtl_write_word.exit689.i.rtl_write_word.exit697.i_crit_edge: ; preds = %rtl_write_word.exit689.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit697.i

if.then.i696.i:                                   ; preds = %rtl_write_word.exit689.i
  call void @__sanitizer_cov_trace_pc() #10
  %825 = ptrtoint ptr %read16_sync.i380.i to i32
  call void @__asan_load4_noabort(i32 %825)
  %826 = load ptr, ptr %read16_sync.i380.i, align 4
  %call.i695.i = tail call zeroext i16 %826(ptr noundef %189, i32 noundef 922) #8
  br label %rtl_write_word.exit697.i

rtl_write_word.exit697.i:                         ; preds = %if.then.i696.i, %rtl_write_word.exit689.i.rtl_write_word.exit697.i_crit_edge
  %827 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %827)
  %828 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %828(ptr noundef %189, i32 noundef 898, i16 noundef zeroext -24064) #8
  %829 = ptrtoint ptr %cfg.i.i208 to i32
  call void @__asan_load4_noabort(i32 %829)
  %830 = load ptr, ptr %cfg.i.i208, align 8
  %write_readback.i700.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %830, i32 0, i32 1
  %831 = ptrtoint ptr %write_readback.i700.i to i32
  call void @__asan_load1_noabort(i32 %831)
  %832 = load i8, ptr %write_readback.i700.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %832)
  %tobool.not.i701.i = icmp eq i8 %832, 0
  br i1 %tobool.not.i701.i, label %rtl_write_word.exit697.i.rtl_write_word.exit705.i_crit_edge, label %if.then.i704.i

rtl_write_word.exit697.i.rtl_write_word.exit705.i_crit_edge: ; preds = %rtl_write_word.exit697.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit705.i

if.then.i704.i:                                   ; preds = %rtl_write_word.exit697.i
  call void @__sanitizer_cov_trace_pc() #10
  %833 = ptrtoint ptr %read16_sync.i380.i to i32
  call void @__asan_load4_noabort(i32 %833)
  %834 = load ptr, ptr %read16_sync.i380.i, align 4
  %call.i703.i = tail call zeroext i16 %834(ptr noundef %189, i32 noundef 898) #8
  br label %rtl_write_word.exit705.i

rtl_write_word.exit705.i:                         ; preds = %if.then.i704.i, %rtl_write_word.exit697.i.rtl_write_word.exit705.i_crit_edge
  %835 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %835)
  %836 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %836(ptr noundef %189, i32 noundef 924, i32 noundef -1) #8
  %837 = ptrtoint ptr %cfg.i.i208 to i32
  call void @__asan_load4_noabort(i32 %837)
  %838 = load ptr, ptr %cfg.i.i208, align 8
  %write_readback.i708.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %838, i32 0, i32 1
  %839 = ptrtoint ptr %write_readback.i708.i to i32
  call void @__asan_load1_noabort(i32 %839)
  %840 = load i8, ptr %write_readback.i708.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %840)
  %tobool.not.i709.i = icmp eq i8 %840, 0
  br i1 %tobool.not.i709.i, label %rtl_write_word.exit705.i.rtl_write_dword.exit713.i_crit_edge, label %if.then.i712.i

rtl_write_word.exit705.i.rtl_write_dword.exit713.i_crit_edge: ; preds = %rtl_write_word.exit705.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit713.i

if.then.i712.i:                                   ; preds = %rtl_write_word.exit705.i
  call void @__sanitizer_cov_trace_pc() #10
  %841 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %841)
  %842 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i711.i = tail call i32 %842(ptr noundef %189, i32 noundef 924) #8
  br label %rtl_write_dword.exit713.i

rtl_write_dword.exit713.i:                        ; preds = %if.then.i712.i, %rtl_write_word.exit705.i.rtl_write_dword.exit713.i_crit_edge
  %843 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %843)
  %844 = load ptr, ptr %priv, align 8
  %sw_led0.i.i = getelementptr inbounds %struct.rtl_priv, ptr %844, i32 0, i32 18, i32 1
  %up_first_time.i.i = getelementptr inbounds %struct.rtl_priv, ptr %844, i32 0, i32 10, i32 2
  %845 = ptrtoint ptr %up_first_time.i.i to i32
  call void @__asan_load1_noabort(i32 %845)
  %846 = load i8, ptr %up_first_time.i.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %846)
  %tobool.not.i715.i = icmp eq i8 %846, 0
  br i1 %tobool.not.i715.i, label %if.end.i.i, label %rtl_write_dword.exit713.i._rtl92ee_init_mac.exit_crit_edge

rtl_write_dword.exit713.i._rtl92ee_init_mac.exit_crit_edge: ; preds = %rtl_write_dword.exit713.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ee_init_mac.exit

if.end.i.i:                                       ; preds = %rtl_write_dword.exit713.i
  %rfoff_reason.i.i = getelementptr inbounds %struct.rtl_priv, ptr %844, i32 0, i32 21, i32 18
  %847 = ptrtoint ptr %rfoff_reason.i.i to i32
  call void @__asan_load4_noabort(i32 %847)
  %848 = load i32, ptr %rfoff_reason.i.i, align 4
  %849 = zext i32 %848 to i64
  call void @__sanitizer_cov_trace_switch(i64 %849, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %848, label %if.else6.i.i [
    i32 268435456, label %if.then2.i.i
    i32 0, label %if.then5.i.i
  ]

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rtl92ee_sw_led_on(ptr noundef %hw, ptr noundef %sw_led0.i.i) #8
  br label %_rtl92ee_init_mac.exit

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rtl92ee_sw_led_on(ptr noundef %hw, ptr noundef %sw_led0.i.i) #8
  br label %_rtl92ee_init_mac.exit

if.else6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rtl92ee_sw_led_off(ptr noundef %hw, ptr noundef %sw_led0.i.i) #8
  br label %_rtl92ee_init_mac.exit

_rtl92ee_init_mac.exit:                           ; preds = %if.else6.i.i, %if.then5.i.i, %if.then2.i.i, %rtl_write_dword.exit713.i._rtl92ee_init_mac.exit_crit_edge, %if.then21.i
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %850 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %850)
  %851 = load ptr, ptr %write8_async.i, align 4
  tail call void %851(ptr noundef %1, i32 noundef 1399, i8 noundef zeroext 3) #8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %852 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %852)
  %853 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %853, i32 0, i32 1
  %854 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %854)
  %855 = load i8, ptr %write_readback.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %855)
  %tobool.not.i219 = icmp eq i8 %855, 0
  br i1 %tobool.not.i219, label %_rtl92ee_init_mac.exit.rtl_write_byte.exit_crit_edge, label %if.then.i222

_rtl92ee_init_mac.exit.rtl_write_byte.exit_crit_edge: ; preds = %_rtl92ee_init_mac.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit

if.then.i222:                                     ; preds = %_rtl92ee_init_mac.exit
  call void @__sanitizer_cov_trace_pc() #10
  %856 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %856)
  %857 = load ptr, ptr %read8_sync.i, align 4
  %call.i221 = tail call zeroext i8 %857(ptr noundef %1, i32 noundef 1399) #8
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i222, %_rtl92ee_init_mac.exit.rtl_write_byte.exit_crit_edge
  %858 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %858)
  %859 = load ptr, ptr %write8_async.i, align 4
  tail call void %859(ptr noundef %1, i32 noundef 120, i8 noundef zeroext 42) #8
  %860 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %860)
  %861 = load ptr, ptr %cfg.i, align 8
  %write_readback.i226 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %861, i32 0, i32 1
  %862 = ptrtoint ptr %write_readback.i226 to i32
  call void @__asan_load1_noabort(i32 %862)
  %863 = load i8, ptr %write_readback.i226, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %863)
  %tobool.not.i227 = icmp eq i8 %863, 0
  br i1 %tobool.not.i227, label %rtl_write_byte.exit.rtl_write_byte.exit232_crit_edge, label %if.then.i230

rtl_write_byte.exit.rtl_write_byte.exit232_crit_edge: ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit232

if.then.i230:                                     ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #10
  %864 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %864)
  %865 = load ptr, ptr %read8_sync.i, align 4
  %call.i229 = tail call zeroext i8 %865(ptr noundef %1, i32 noundef 120) #8
  br label %rtl_write_byte.exit232

rtl_write_byte.exit232:                           ; preds = %if.then.i230, %rtl_write_byte.exit.rtl_write_byte.exit232_crit_edge
  %866 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %866)
  %867 = load ptr, ptr %write8_async.i, align 4
  tail call void %867(ptr noundef %1, i32 noundef 121, i8 noundef zeroext 0) #8
  %868 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %868)
  %869 = load ptr, ptr %cfg.i, align 8
  %write_readback.i235 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %869, i32 0, i32 1
  %870 = ptrtoint ptr %write_readback.i235 to i32
  call void @__asan_load1_noabort(i32 %870)
  %871 = load i8, ptr %write_readback.i235, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %871)
  %tobool.not.i236 = icmp eq i8 %871, 0
  br i1 %tobool.not.i236, label %rtl_write_byte.exit232.rtl_write_byte.exit241_crit_edge, label %if.then.i239

rtl_write_byte.exit232.rtl_write_byte.exit241_crit_edge: ; preds = %rtl_write_byte.exit232
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit241

if.then.i239:                                     ; preds = %rtl_write_byte.exit232
  call void @__sanitizer_cov_trace_pc() #10
  %872 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %872)
  %873 = load ptr, ptr %read8_sync.i, align 4
  %call.i238 = tail call zeroext i8 %873(ptr noundef %1, i32 noundef 121) #8
  br label %rtl_write_byte.exit241

rtl_write_byte.exit241:                           ; preds = %if.then.i239, %rtl_write_byte.exit232.rtl_write_byte.exit241_crit_edge
  %874 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %874)
  %875 = load ptr, ptr %write8_async.i, align 4
  tail call void %875(ptr noundef %1, i32 noundef 40, i8 noundef zeroext -125) #8
  %876 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %876)
  %877 = load ptr, ptr %cfg.i, align 8
  %write_readback.i244 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %877, i32 0, i32 1
  %878 = ptrtoint ptr %write_readback.i244 to i32
  call void @__asan_load1_noabort(i32 %878)
  %879 = load i8, ptr %write_readback.i244, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %879)
  %tobool.not.i245 = icmp eq i8 %879, 0
  br i1 %tobool.not.i245, label %rtl_write_byte.exit241.rtl_write_byte.exit250_crit_edge, label %if.then.i248

rtl_write_byte.exit241.rtl_write_byte.exit250_crit_edge: ; preds = %rtl_write_byte.exit241
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit250

if.then.i248:                                     ; preds = %rtl_write_byte.exit241
  call void @__sanitizer_cov_trace_pc() #10
  %880 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %880)
  %881 = load ptr, ptr %read8_sync.i, align 4
  %call.i247 = tail call zeroext i8 %881(ptr noundef %1, i32 noundef 40) #8
  br label %rtl_write_byte.exit250

rtl_write_byte.exit250:                           ; preds = %if.then.i248, %rtl_write_byte.exit241.rtl_write_byte.exit250_crit_edge
  %btcoexist21 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 1, i32 1
  %882 = ptrtoint ptr %btcoexist21 to i32
  call void @__asan_load1_noabort(i32 %882)
  %883 = load i8, ptr %btcoexist21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %883)
  %cmp23 = icmp eq i8 %883, 1
  br i1 %cmp23, label %if.then25, label %rtl_write_byte.exit250.if.end26_crit_edge

rtl_write_byte.exit250.if.end26_crit_edge:        ; preds = %rtl_write_byte.exit250
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then25:                                        ; preds = %rtl_write_byte.exit250
  %884 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %884)
  %885 = load ptr, ptr %write8_async.i, align 4
  tail call void %885(ptr noundef %1, i32 noundef 100, i8 noundef zeroext 0) #8
  %886 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %886)
  %887 = load ptr, ptr %cfg.i, align 8
  %write_readback.i253 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %887, i32 0, i32 1
  %888 = ptrtoint ptr %write_readback.i253 to i32
  call void @__asan_load1_noabort(i32 %888)
  %889 = load i8, ptr %write_readback.i253, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %889)
  %tobool.not.i254 = icmp eq i8 %889, 0
  br i1 %tobool.not.i254, label %if.then25.rtl_write_byte.exit259_crit_edge, label %if.then.i257

if.then25.rtl_write_byte.exit259_crit_edge:       ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit259

if.then.i257:                                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  %890 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %890)
  %891 = load ptr, ptr %read8_sync.i, align 4
  %call.i256 = tail call zeroext i8 %891(ptr noundef %1, i32 noundef 100) #8
  br label %rtl_write_byte.exit259

rtl_write_byte.exit259:                           ; preds = %if.then.i257, %if.then25.rtl_write_byte.exit259_crit_edge
  %892 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %892)
  %893 = load ptr, ptr %write8_async.i, align 4
  tail call void %893(ptr noundef %1, i32 noundef 101, i8 noundef zeroext 1) #8
  %894 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %894)
  %895 = load ptr, ptr %cfg.i, align 8
  %write_readback.i262 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %895, i32 0, i32 1
  %896 = ptrtoint ptr %write_readback.i262 to i32
  call void @__asan_load1_noabort(i32 %896)
  %897 = load i8, ptr %write_readback.i262, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %897)
  %tobool.not.i263 = icmp eq i8 %897, 0
  br i1 %tobool.not.i263, label %rtl_write_byte.exit259.if.end26_crit_edge, label %if.then.i266

rtl_write_byte.exit259.if.end26_crit_edge:        ; preds = %rtl_write_byte.exit259
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then.i266:                                     ; preds = %rtl_write_byte.exit259
  call void @__sanitizer_cov_trace_pc() #10
  %898 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %898)
  %899 = load ptr, ptr %read8_sync.i, align 4
  %call.i265 = tail call zeroext i8 %899(ptr noundef %1, i32 noundef 101) #8
  br label %if.end26

if.end26:                                         ; preds = %if.then.i266, %rtl_write_byte.exit259.if.end26_crit_edge, %rtl_write_byte.exit250.if.end26_crit_edge
  br i1 %call20.i, label %if.end30, label %do.end

do.end:                                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #11
  br label %cleanup

if.end30:                                         ; preds = %if.end26
  %rx_tag = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 67
  %900 = ptrtoint ptr %rx_tag to i32
  call void @__asan_store2_noabort(i32 %900)
  store i16 0, ptr %rx_tag, align 2
  %write16_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %901 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %901)
  %902 = load ptr, ptr %write16_async.i, align 4
  tail call void %902(ptr noundef %1, i32 noundef 768, i16 noundef zeroext -32768) #8
  %903 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %903)
  %904 = load ptr, ptr %cfg.i, align 8
  %write_readback.i270 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %904, i32 0, i32 1
  %905 = ptrtoint ptr %write_readback.i270 to i32
  call void @__asan_load1_noabort(i32 %905)
  %906 = load i8, ptr %write_readback.i270, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %906)
  %tobool.not.i271 = icmp eq i8 %906, 0
  br i1 %tobool.not.i271, label %if.end30.rtl_write_word.exit_crit_edge, label %if.then.i273

if.end30.rtl_write_word.exit_crit_edge:           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit

if.then.i273:                                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %907 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %907)
  %908 = load ptr, ptr %read16_sync.i, align 4
  %call.i272 = tail call zeroext i16 %908(ptr noundef %1, i32 noundef 768) #8
  br label %rtl_write_word.exit

rtl_write_word.exit:                              ; preds = %if.then.i273, %if.end30.rtl_write_word.exit_crit_edge
  %call31 = tail call i32 @rtl92ee_download_fw(ptr noundef %hw, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.then33

if.then33:                                        ; preds = %rtl_write_word.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.13) #8
  %fw_ready = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 38
  %909 = ptrtoint ptr %fw_ready to i32
  call void @__asan_store1_noabort(i32 %909)
  store i8 0, ptr %fw_ready, align 2
  br label %cleanup

if.end34:                                         ; preds = %rtl_write_word.exit
  %fw_ready35 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 38
  %910 = ptrtoint ptr %fw_ready35 to i32
  call void @__asan_store1_noabort(i32 %910)
  store i8 1, ptr %fw_ready35, align 2
  %fw_current_inpsmode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 13
  %911 = ptrtoint ptr %fw_current_inpsmode to i32
  call void @__asan_store1_noabort(i32 %911)
  store i8 0, ptr %fw_current_inpsmode, align 1
  %fw_ps_state36 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 49
  %912 = ptrtoint ptr %fw_ps_state36 to i32
  call void @__asan_store1_noabort(i32 %912)
  store i8 0, ptr %fw_ps_state36, align 1
  %fw_clk_change_in_progress = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 47
  %913 = ptrtoint ptr %fw_clk_change_in_progress to i32
  call void @__asan_store1_noabort(i32 %913)
  store i8 0, ptr %fw_clk_change_in_progress, align 1
  %allow_sw_to_change_hwclc = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 48
  %914 = ptrtoint ptr %allow_sw_to_change_hwclc to i32
  call void @__asan_store1_noabort(i32 %914)
  store i8 0, ptr %allow_sw_to_change_hwclc, align 8
  %last_hmeboxnum = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 37
  %915 = ptrtoint ptr %last_hmeboxnum to i32
  call void @__asan_store1_noabort(i32 %915)
  store i8 0, ptr %last_hmeboxnum, align 1
  %call37 = tail call zeroext i1 @rtl92ee_phy_mac_config(ptr noundef %hw) #8
  %call38 = tail call zeroext i1 @rtl92ee_phy_bb_config(ptr noundef %hw) #8
  %call39 = tail call zeroext i1 @rtl92ee_phy_rf_config(ptr noundef %hw) #8
  %916 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %916)
  %917 = load ptr, ptr %priv, align 8
  %cfg.i276 = getelementptr inbounds %struct.rtl_priv, ptr %917, i32 0, i32 32
  %918 = ptrtoint ptr %cfg.i276 to i32
  call void @__asan_load4_noabort(i32 %918)
  %919 = load ptr, ptr %cfg.i276, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %919, i32 0, i32 4
  %920 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %920)
  %921 = load ptr, ptr %ops.i, align 4
  %get_rfreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %921, i32 0, i32 47
  %922 = ptrtoint ptr %get_rfreg.i to i32
  call void @__asan_load4_noabort(i32 %922)
  %923 = load ptr, ptr %get_rfreg.i, align 4
  %call.i277 = tail call i32 %923(ptr noundef %hw, i32 noundef 0, i32 noundef 24, i32 noundef 1048575) #8
  %rfreg_chnlval = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 52
  %924 = ptrtoint ptr %rfreg_chnlval to i32
  call void @__asan_store4_noabort(i32 %924)
  store i32 %call.i277, ptr %rfreg_chnlval, align 4
  %925 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %925)
  %926 = load ptr, ptr %priv, align 8
  %cfg.i279 = getelementptr inbounds %struct.rtl_priv, ptr %926, i32 0, i32 32
  %927 = ptrtoint ptr %cfg.i279 to i32
  call void @__asan_load4_noabort(i32 %927)
  %928 = load ptr, ptr %cfg.i279, align 8
  %ops.i280 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %928, i32 0, i32 4
  %929 = ptrtoint ptr %ops.i280 to i32
  call void @__asan_load4_noabort(i32 %929)
  %930 = load ptr, ptr %ops.i280, align 4
  %get_rfreg.i281 = getelementptr inbounds %struct.rtl_hal_ops, ptr %930, i32 0, i32 47
  %931 = ptrtoint ptr %get_rfreg.i281 to i32
  call void @__asan_load4_noabort(i32 %931)
  %932 = load ptr, ptr %get_rfreg.i281, align 4
  %call.i282 = tail call i32 %932(ptr noundef %hw, i32 noundef 1, i32 noundef 24, i32 noundef 1048575) #8
  %arrayidx43 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 52, i32 1
  %933 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %933)
  store i32 %call.i282, ptr %arrayidx43, align 4
  %934 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %934)
  %935 = load ptr, ptr %priv, align 8
  %cfg.i284 = getelementptr inbounds %struct.rtl_priv, ptr %935, i32 0, i32 32
  %936 = ptrtoint ptr %cfg.i284 to i32
  call void @__asan_load4_noabort(i32 %936)
  %937 = load ptr, ptr %cfg.i284, align 8
  %ops.i285 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %937, i32 0, i32 4
  %938 = ptrtoint ptr %ops.i285 to i32
  call void @__asan_load4_noabort(i32 %938)
  %939 = load ptr, ptr %ops.i285, align 4
  %get_rfreg.i286 = getelementptr inbounds %struct.rtl_hal_ops, ptr %939, i32 0, i32 47
  %940 = ptrtoint ptr %get_rfreg.i286 to i32
  call void @__asan_load4_noabort(i32 %940)
  %941 = load ptr, ptr %get_rfreg.i286, align 4
  %call.i287 = tail call i32 %941(ptr noundef %hw, i32 noundef 0, i32 noundef 26, i32 noundef 1048575) #8
  %backup_rf_0x1a = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 55
  %942 = ptrtoint ptr %backup_rf_0x1a to i32
  call void @__asan_store4_noabort(i32 %942)
  store i32 %call.i287, ptr %backup_rf_0x1a, align 4
  %943 = ptrtoint ptr %rfreg_chnlval to i32
  call void @__asan_load4_noabort(i32 %943)
  %944 = load i32, ptr %rfreg_chnlval, align 4
  %or48 = or i32 %944, 3072
  store i32 %or48, ptr %rfreg_chnlval, align 4
  %945 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %945)
  %946 = load ptr, ptr %priv, align 8
  %cfg.i289 = getelementptr inbounds %struct.rtl_priv, ptr %946, i32 0, i32 32
  %947 = ptrtoint ptr %cfg.i289 to i32
  call void @__asan_load4_noabort(i32 %947)
  %948 = load ptr, ptr %cfg.i289, align 8
  %ops.i290 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %948, i32 0, i32 4
  %949 = ptrtoint ptr %ops.i290 to i32
  call void @__asan_load4_noabort(i32 %949)
  %950 = load ptr, ptr %ops.i290, align 4
  %set_rfreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %950, i32 0, i32 48
  %951 = ptrtoint ptr %set_rfreg.i to i32
  call void @__asan_load4_noabort(i32 %951)
  %952 = load ptr, ptr %set_rfreg.i, align 4
  tail call void %952(ptr noundef %hw, i32 noundef 0, i32 noundef 24, i32 noundef 1048575, i32 noundef %or48) #8
  %953 = ptrtoint ptr %rfreg_chnlval to i32
  call void @__asan_load4_noabort(i32 %953)
  %954 = load i32, ptr %rfreg_chnlval, align 4
  %955 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %955)
  %956 = load ptr, ptr %priv, align 8
  %cfg.i292 = getelementptr inbounds %struct.rtl_priv, ptr %956, i32 0, i32 32
  %957 = ptrtoint ptr %cfg.i292 to i32
  call void @__asan_load4_noabort(i32 %957)
  %958 = load ptr, ptr %cfg.i292, align 8
  %ops.i293 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %958, i32 0, i32 4
  %959 = ptrtoint ptr %ops.i293 to i32
  call void @__asan_load4_noabort(i32 %959)
  %960 = load ptr, ptr %ops.i293, align 4
  %set_rfreg.i294 = getelementptr inbounds %struct.rtl_hal_ops, ptr %960, i32 0, i32 48
  %961 = ptrtoint ptr %set_rfreg.i294 to i32
  call void @__asan_load4_noabort(i32 %961)
  %962 = load ptr, ptr %set_rfreg.i294, align 4
  tail call void %962(ptr noundef %hw, i32 noundef 1, i32 noundef 24, i32 noundef 1048575, i32 noundef %954) #8
  %963 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %963)
  %964 = load ptr, ptr %priv, align 8
  %cfg.i296 = getelementptr inbounds %struct.rtl_priv, ptr %964, i32 0, i32 32
  %965 = ptrtoint ptr %cfg.i296 to i32
  call void @__asan_load4_noabort(i32 %965)
  %966 = load ptr, ptr %cfg.i296, align 8
  %ops.i297 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %966, i32 0, i32 4
  %967 = ptrtoint ptr %ops.i297 to i32
  call void @__asan_load4_noabort(i32 %967)
  %968 = load ptr, ptr %ops.i297, align 4
  %set_bbreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %968, i32 0, i32 46
  %969 = ptrtoint ptr %set_bbreg.i to i32
  call void @__asan_load4_noabort(i32 %969)
  %970 = load ptr, ptr %set_bbreg.i, align 4
  tail call void %970(ptr noundef %hw, i32 noundef 2048, i32 noundef 16777216, i32 noundef 1) #8
  %971 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %971)
  %972 = load ptr, ptr %priv, align 8
  %cfg.i299 = getelementptr inbounds %struct.rtl_priv, ptr %972, i32 0, i32 32
  %973 = ptrtoint ptr %cfg.i299 to i32
  call void @__asan_load4_noabort(i32 %973)
  %974 = load ptr, ptr %cfg.i299, align 8
  %ops.i300 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %974, i32 0, i32 4
  %975 = ptrtoint ptr %ops.i300 to i32
  call void @__asan_load4_noabort(i32 %975)
  %976 = load ptr, ptr %ops.i300, align 4
  %set_bbreg.i301 = getelementptr inbounds %struct.rtl_hal_ops, ptr %976, i32 0, i32 46
  %977 = ptrtoint ptr %set_bbreg.i301 to i32
  call void @__asan_load4_noabort(i32 %977)
  %978 = load ptr, ptr %set_bbreg.i301, align 4
  tail call void %978(ptr noundef %hw, i32 noundef 2048, i32 noundef 33554432, i32 noundef 1) #8
  %979 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %979)
  %980 = load ptr, ptr %priv, align 8
  %cfg.i303 = getelementptr inbounds %struct.rtl_priv, ptr %980, i32 0, i32 32
  %981 = ptrtoint ptr %cfg.i303 to i32
  call void @__asan_load4_noabort(i32 %981)
  %982 = load ptr, ptr %cfg.i303, align 8
  %ops.i304 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %982, i32 0, i32 4
  %983 = ptrtoint ptr %ops.i304 to i32
  call void @__asan_load4_noabort(i32 %983)
  %984 = load ptr, ptr %ops.i304, align 4
  %set_rfreg.i305 = getelementptr inbounds %struct.rtl_hal_ops, ptr %984, i32 0, i32 48
  %985 = ptrtoint ptr %set_rfreg.i305 to i32
  call void @__asan_load4_noabort(i32 %985)
  %986 = load ptr, ptr %set_rfreg.i305, align 4
  tail call void %986(ptr noundef %hw, i32 noundef 0, i32 noundef 177, i32 noundef 1048575, i32 noundef 345112) #8
  %987 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %987)
  %988 = load ptr, ptr %priv, align 8
  %write32_async.i.i307 = getelementptr inbounds %struct.rtl_priv, ptr %988, i32 0, i32 13, i32 7
  %989 = ptrtoint ptr %write32_async.i.i307 to i32
  call void @__asan_load4_noabort(i32 %989)
  %990 = load ptr, ptr %write32_async.i.i307, align 4
  tail call void %990(ptr noundef %988, i32 noundef 1088, i32 noundef 4095) #8
  %cfg.i.i308 = getelementptr inbounds %struct.rtl_priv, ptr %988, i32 0, i32 32
  %991 = ptrtoint ptr %cfg.i.i308 to i32
  call void @__asan_load4_noabort(i32 %991)
  %992 = load ptr, ptr %cfg.i.i308, align 8
  %write_readback.i.i309 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %992, i32 0, i32 1
  %993 = ptrtoint ptr %write_readback.i.i309 to i32
  call void @__asan_load1_noabort(i32 %993)
  %994 = load i8, ptr %write_readback.i.i309, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %994)
  %tobool.not.i.i310 = icmp eq i8 %994, 0
  br i1 %tobool.not.i.i310, label %if.end34.rtl_write_dword.exit.i314_crit_edge, label %if.then.i.i313

if.end34.rtl_write_dword.exit.i314_crit_edge:     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit.i314

if.then.i.i313:                                   ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i.i311 = getelementptr inbounds %struct.rtl_priv, ptr %988, i32 0, i32 13, i32 11
  %995 = ptrtoint ptr %read32_sync.i.i311 to i32
  call void @__asan_load4_noabort(i32 %995)
  %996 = load ptr, ptr %read32_sync.i.i311, align 4
  %call.i.i312 = tail call i32 %996(ptr noundef %988, i32 noundef 1088) #8
  br label %rtl_write_dword.exit.i314

rtl_write_dword.exit.i314:                        ; preds = %if.then.i.i313, %if.end34.rtl_write_dword.exit.i314_crit_edge
  %997 = ptrtoint ptr %write32_async.i.i307 to i32
  call void @__asan_load4_noabort(i32 %997)
  %998 = load ptr, ptr %write32_async.i.i307, align 4
  tail call void %998(ptr noundef %988, i32 noundef 1092, i32 noundef 16) #8
  %999 = ptrtoint ptr %cfg.i.i308 to i32
  call void @__asan_load4_noabort(i32 %999)
  %1000 = load ptr, ptr %cfg.i.i308, align 8
  %write_readback.i40.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1000, i32 0, i32 1
  %1001 = ptrtoint ptr %write_readback.i40.i to i32
  call void @__asan_load1_noabort(i32 %1001)
  %1002 = load i8, ptr %write_readback.i40.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1002)
  %tobool.not.i41.i = icmp eq i8 %1002, 0
  br i1 %tobool.not.i41.i, label %rtl_write_dword.exit.i314.rtl_write_dword.exit45.i_crit_edge, label %if.then.i44.i

rtl_write_dword.exit.i314.rtl_write_dword.exit45.i_crit_edge: ; preds = %rtl_write_dword.exit.i314
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit45.i

if.then.i44.i:                                    ; preds = %rtl_write_dword.exit.i314
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i42.i = getelementptr inbounds %struct.rtl_priv, ptr %988, i32 0, i32 13, i32 11
  %1003 = ptrtoint ptr %read32_sync.i42.i to i32
  call void @__asan_load4_noabort(i32 %1003)
  %1004 = load ptr, ptr %read32_sync.i42.i, align 4
  %call.i43.i = tail call i32 %1004(ptr noundef %988, i32 noundef 1092) #8
  br label %rtl_write_dword.exit45.i

rtl_write_dword.exit45.i:                         ; preds = %if.then.i44.i, %rtl_write_dword.exit.i314.rtl_write_dword.exit45.i_crit_edge
  %1005 = ptrtoint ptr %write32_async.i.i307 to i32
  call void @__asan_load4_noabort(i32 %1005)
  %1006 = load ptr, ptr %write32_async.i.i307, align 4
  tail call void %1006(ptr noundef %988, i32 noundef 1096, i32 noundef 1041231872) #8
  %1007 = ptrtoint ptr %cfg.i.i308 to i32
  call void @__asan_load4_noabort(i32 %1007)
  %1008 = load ptr, ptr %cfg.i.i308, align 8
  %write_readback.i48.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1008, i32 0, i32 1
  %1009 = ptrtoint ptr %write_readback.i48.i to i32
  call void @__asan_load1_noabort(i32 %1009)
  %1010 = load i8, ptr %write_readback.i48.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1010)
  %tobool.not.i49.i = icmp eq i8 %1010, 0
  br i1 %tobool.not.i49.i, label %rtl_write_dword.exit45.i.rtl_write_dword.exit53.i_crit_edge, label %if.then.i52.i

rtl_write_dword.exit45.i.rtl_write_dword.exit53.i_crit_edge: ; preds = %rtl_write_dword.exit45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit53.i

if.then.i52.i:                                    ; preds = %rtl_write_dword.exit45.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i50.i = getelementptr inbounds %struct.rtl_priv, ptr %988, i32 0, i32 13, i32 11
  %1011 = ptrtoint ptr %read32_sync.i50.i to i32
  call void @__asan_load4_noabort(i32 %1011)
  %1012 = load ptr, ptr %read32_sync.i50.i, align 4
  %call.i51.i = tail call i32 %1012(ptr noundef %988, i32 noundef 1096) #8
  br label %rtl_write_dword.exit53.i

rtl_write_dword.exit53.i:                         ; preds = %if.then.i52.i, %rtl_write_dword.exit45.i.rtl_write_dword.exit53.i_crit_edge
  %1013 = ptrtoint ptr %write32_async.i.i307 to i32
  call void @__asan_load4_noabort(i32 %1013)
  %1014 = load ptr, ptr %write32_async.i.i307, align 4
  tail call void %1014(ptr noundef %988, i32 noundef 1100, i32 noundef 16) #8
  %1015 = ptrtoint ptr %cfg.i.i308 to i32
  call void @__asan_load4_noabort(i32 %1015)
  %1016 = load ptr, ptr %cfg.i.i308, align 8
  %write_readback.i56.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1016, i32 0, i32 1
  %1017 = ptrtoint ptr %write_readback.i56.i to i32
  call void @__asan_load1_noabort(i32 %1017)
  %1018 = load i8, ptr %write_readback.i56.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1018)
  %tobool.not.i57.i = icmp eq i8 %1018, 0
  br i1 %tobool.not.i57.i, label %rtl_write_dword.exit53.i.rtl_write_dword.exit61.i_crit_edge, label %if.then.i60.i

rtl_write_dword.exit53.i.rtl_write_dword.exit61.i_crit_edge: ; preds = %rtl_write_dword.exit53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit61.i

if.then.i60.i:                                    ; preds = %rtl_write_dword.exit53.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i58.i = getelementptr inbounds %struct.rtl_priv, ptr %988, i32 0, i32 13, i32 11
  %1019 = ptrtoint ptr %read32_sync.i58.i to i32
  call void @__asan_load4_noabort(i32 %1019)
  %1020 = load ptr, ptr %read32_sync.i58.i, align 4
  %call.i59.i = tail call i32 %1020(ptr noundef %988, i32 noundef 1100) #8
  br label %rtl_write_dword.exit61.i

rtl_write_dword.exit61.i:                         ; preds = %if.then.i60.i, %rtl_write_dword.exit53.i.rtl_write_dword.exit61.i_crit_edge
  %1021 = ptrtoint ptr %write32_async.i.i307 to i32
  call void @__asan_load4_noabort(i32 %1021)
  %1022 = load ptr, ptr %write32_async.i.i307, align 4
  tail call void %1022(ptr noundef %988, i32 noundef 1104, i32 noundef 1044480) #8
  %1023 = ptrtoint ptr %cfg.i.i308 to i32
  call void @__asan_load4_noabort(i32 %1023)
  %1024 = load ptr, ptr %cfg.i.i308, align 8
  %write_readback.i64.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1024, i32 0, i32 1
  %1025 = ptrtoint ptr %write_readback.i64.i to i32
  call void @__asan_load1_noabort(i32 %1025)
  %1026 = load i8, ptr %write_readback.i64.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1026)
  %tobool.not.i65.i = icmp eq i8 %1026, 0
  br i1 %tobool.not.i65.i, label %rtl_write_dword.exit61.i.rtl_write_dword.exit69.i_crit_edge, label %if.then.i68.i

rtl_write_dword.exit61.i.rtl_write_dword.exit69.i_crit_edge: ; preds = %rtl_write_dword.exit61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit69.i

if.then.i68.i:                                    ; preds = %rtl_write_dword.exit61.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i66.i = getelementptr inbounds %struct.rtl_priv, ptr %988, i32 0, i32 13, i32 11
  %1027 = ptrtoint ptr %read32_sync.i66.i to i32
  call void @__asan_load4_noabort(i32 %1027)
  %1028 = load ptr, ptr %read32_sync.i66.i, align 4
  %call.i67.i = tail call i32 %1028(ptr noundef %988, i32 noundef 1104) #8
  br label %rtl_write_dword.exit69.i

rtl_write_dword.exit69.i:                         ; preds = %if.then.i68.i, %rtl_write_dword.exit61.i.rtl_write_dword.exit69.i_crit_edge
  %write8_async.i.i315 = getelementptr inbounds %struct.rtl_priv, ptr %988, i32 0, i32 13, i32 5
  %1029 = ptrtoint ptr %write8_async.i.i315 to i32
  call void @__asan_load4_noabort(i32 %1029)
  %1030 = load ptr, ptr %write8_async.i.i315, align 4
  tail call void %1030(ptr noundef %988, i32 noundef 1307, i8 noundef zeroext 9) #8
  %1031 = ptrtoint ptr %cfg.i.i308 to i32
  call void @__asan_load4_noabort(i32 %1031)
  %1032 = load ptr, ptr %cfg.i.i308, align 8
  %write_readback.i71.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1032, i32 0, i32 1
  %1033 = ptrtoint ptr %write_readback.i71.i to i32
  call void @__asan_load1_noabort(i32 %1033)
  %1034 = load i8, ptr %write_readback.i71.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1034)
  %tobool.not.i72.i = icmp eq i8 %1034, 0
  br i1 %tobool.not.i72.i, label %rtl_write_dword.exit69.i.rtl_write_byte.exit.i318_crit_edge, label %if.then.i74.i

rtl_write_dword.exit69.i.rtl_write_byte.exit.i318_crit_edge: ; preds = %rtl_write_dword.exit69.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit.i318

if.then.i74.i:                                    ; preds = %rtl_write_dword.exit69.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i316 = getelementptr inbounds %struct.rtl_priv, ptr %988, i32 0, i32 13, i32 9
  %1035 = ptrtoint ptr %read8_sync.i.i316 to i32
  call void @__asan_load4_noabort(i32 %1035)
  %1036 = load ptr, ptr %read8_sync.i.i316, align 4
  %call.i73.i = tail call zeroext i8 %1036(ptr noundef %988, i32 noundef 1307) #8
  br label %rtl_write_byte.exit.i318

rtl_write_byte.exit.i318:                         ; preds = %if.then.i74.i, %rtl_write_dword.exit69.i.rtl_write_byte.exit.i318_crit_edge
  %write16_async.i.i317 = getelementptr inbounds %struct.rtl_priv, ptr %988, i32 0, i32 13, i32 6
  %1037 = ptrtoint ptr %write16_async.i.i317 to i32
  call void @__asan_load4_noabort(i32 %1037)
  %1038 = load ptr, ptr %write16_async.i.i317, align 4
  tail call void %1038(ptr noundef %988, i32 noundef 1056, i16 noundef zeroext 8064) #8
  %1039 = ptrtoint ptr %cfg.i.i308 to i32
  call void @__asan_load4_noabort(i32 %1039)
  %1040 = load ptr, ptr %cfg.i.i308, align 8
  %write_readback.i76.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1040, i32 0, i32 1
  %1041 = ptrtoint ptr %write_readback.i76.i to i32
  call void @__asan_load1_noabort(i32 %1041)
  %1042 = load i8, ptr %write_readback.i76.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1042)
  %tobool.not.i77.i = icmp eq i8 %1042, 0
  br i1 %tobool.not.i77.i, label %rtl_write_byte.exit.i318.rtl_write_word.exit.i320_crit_edge, label %if.then.i79.i

rtl_write_byte.exit.i318.rtl_write_word.exit.i320_crit_edge: ; preds = %rtl_write_byte.exit.i318
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit.i320

if.then.i79.i:                                    ; preds = %rtl_write_byte.exit.i318
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i.i319 = getelementptr inbounds %struct.rtl_priv, ptr %988, i32 0, i32 13, i32 10
  %1043 = ptrtoint ptr %read16_sync.i.i319 to i32
  call void @__asan_load4_noabort(i32 %1043)
  %1044 = load ptr, ptr %read16_sync.i.i319, align 4
  %call.i78.i = tail call zeroext i16 %1044(ptr noundef %988, i32 noundef 1056) #8
  br label %rtl_write_word.exit.i320

rtl_write_word.exit.i320:                         ; preds = %if.then.i79.i, %rtl_write_byte.exit.i318.rtl_write_word.exit.i320_crit_edge
  %1045 = ptrtoint ptr %write16_async.i.i317 to i32
  call void @__asan_load4_noabort(i32 %1045)
  %1046 = load ptr, ptr %write16_async.i.i317, align 4
  tail call void %1046(ptr noundef %988, i32 noundef 1066, i16 noundef zeroext 1799) #8
  %1047 = ptrtoint ptr %cfg.i.i308 to i32
  call void @__asan_load4_noabort(i32 %1047)
  %1048 = load ptr, ptr %cfg.i.i308, align 8
  %write_readback.i82.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1048, i32 0, i32 1
  %1049 = ptrtoint ptr %write_readback.i82.i to i32
  call void @__asan_load1_noabort(i32 %1049)
  %1050 = load i8, ptr %write_readback.i82.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1050)
  %tobool.not.i83.i = icmp eq i8 %1050, 0
  br i1 %tobool.not.i83.i, label %rtl_write_word.exit.i320.rtl_write_word.exit87.i_crit_edge, label %if.then.i86.i

rtl_write_word.exit.i320.rtl_write_word.exit87.i_crit_edge: ; preds = %rtl_write_word.exit.i320
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit87.i

if.then.i86.i:                                    ; preds = %rtl_write_word.exit.i320
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i84.i = getelementptr inbounds %struct.rtl_priv, ptr %988, i32 0, i32 13, i32 10
  %1051 = ptrtoint ptr %read16_sync.i84.i to i32
  call void @__asan_load4_noabort(i32 %1051)
  %1052 = load ptr, ptr %read16_sync.i84.i, align 4
  %call.i85.i = tail call zeroext i16 %1052(ptr noundef %988, i32 noundef 1066) #8
  br label %rtl_write_word.exit87.i

rtl_write_word.exit87.i:                          ; preds = %if.then.i86.i, %rtl_write_word.exit.i320.rtl_write_word.exit87.i_crit_edge
  %1053 = ptrtoint ptr %write32_async.i.i307 to i32
  call void @__asan_load4_noabort(i32 %1053)
  %1054 = load ptr, ptr %write32_async.i.i307, align 4
  tail call void %1054(ptr noundef %988, i32 noundef 1228, i32 noundef 33685503) #8
  %1055 = ptrtoint ptr %cfg.i.i308 to i32
  call void @__asan_load4_noabort(i32 %1055)
  %1056 = load ptr, ptr %cfg.i.i308, align 8
  %write_readback.i90.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1056, i32 0, i32 1
  %1057 = ptrtoint ptr %write_readback.i90.i to i32
  call void @__asan_load1_noabort(i32 %1057)
  %1058 = load i8, ptr %write_readback.i90.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1058)
  %tobool.not.i91.i = icmp eq i8 %1058, 0
  br i1 %tobool.not.i91.i, label %rtl_write_word.exit87.i.rtl_write_dword.exit95.i_crit_edge, label %if.then.i94.i

rtl_write_word.exit87.i.rtl_write_dword.exit95.i_crit_edge: ; preds = %rtl_write_word.exit87.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit95.i

if.then.i94.i:                                    ; preds = %rtl_write_word.exit87.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i92.i = getelementptr inbounds %struct.rtl_priv, ptr %988, i32 0, i32 13, i32 11
  %1059 = ptrtoint ptr %read32_sync.i92.i to i32
  call void @__asan_load4_noabort(i32 %1059)
  %1060 = load ptr, ptr %read32_sync.i92.i, align 4
  %call.i93.i = tail call i32 %1060(ptr noundef %988, i32 noundef 1228) #8
  br label %rtl_write_dword.exit95.i

rtl_write_dword.exit95.i:                         ; preds = %if.then.i94.i, %rtl_write_word.exit87.i.rtl_write_dword.exit95.i_crit_edge
  %1061 = ptrtoint ptr %write32_async.i.i307 to i32
  call void @__asan_load4_noabort(i32 %1061)
  %1062 = load ptr, ptr %write32_async.i.i307, align 4
  tail call void %1062(ptr noundef %988, i32 noundef 1072, i32 noundef 16777216) #8
  %1063 = ptrtoint ptr %cfg.i.i308 to i32
  call void @__asan_load4_noabort(i32 %1063)
  %1064 = load ptr, ptr %cfg.i.i308, align 8
  %write_readback.i98.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1064, i32 0, i32 1
  %1065 = ptrtoint ptr %write_readback.i98.i to i32
  call void @__asan_load1_noabort(i32 %1065)
  %1066 = load i8, ptr %write_readback.i98.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1066)
  %tobool.not.i99.i = icmp eq i8 %1066, 0
  br i1 %tobool.not.i99.i, label %rtl_write_dword.exit95.i.rtl_write_dword.exit103.i_crit_edge, label %if.then.i102.i

rtl_write_dword.exit95.i.rtl_write_dword.exit103.i_crit_edge: ; preds = %rtl_write_dword.exit95.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit103.i

if.then.i102.i:                                   ; preds = %rtl_write_dword.exit95.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i100.i = getelementptr inbounds %struct.rtl_priv, ptr %988, i32 0, i32 13, i32 11
  %1067 = ptrtoint ptr %read32_sync.i100.i to i32
  call void @__asan_load4_noabort(i32 %1067)
  %1068 = load ptr, ptr %read32_sync.i100.i, align 4
  %call.i101.i = tail call i32 %1068(ptr noundef %988, i32 noundef 1072) #8
  br label %rtl_write_dword.exit103.i

rtl_write_dword.exit103.i:                        ; preds = %if.then.i102.i, %rtl_write_dword.exit95.i.rtl_write_dword.exit103.i_crit_edge
  %1069 = ptrtoint ptr %write32_async.i.i307 to i32
  call void @__asan_load4_noabort(i32 %1069)
  %1070 = load ptr, ptr %write32_async.i.i307, align 4
  tail call void %1070(ptr noundef %988, i32 noundef 1076, i32 noundef 117835012) #8
  %1071 = ptrtoint ptr %cfg.i.i308 to i32
  call void @__asan_load4_noabort(i32 %1071)
  %1072 = load ptr, ptr %cfg.i.i308, align 8
  %write_readback.i106.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1072, i32 0, i32 1
  %1073 = ptrtoint ptr %write_readback.i106.i to i32
  call void @__asan_load1_noabort(i32 %1073)
  %1074 = load i8, ptr %write_readback.i106.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1074)
  %tobool.not.i107.i = icmp eq i8 %1074, 0
  br i1 %tobool.not.i107.i, label %rtl_write_dword.exit103.i.rtl_write_dword.exit111.i_crit_edge, label %if.then.i110.i

rtl_write_dword.exit103.i.rtl_write_dword.exit111.i_crit_edge: ; preds = %rtl_write_dword.exit103.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit111.i

if.then.i110.i:                                   ; preds = %rtl_write_dword.exit103.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i108.i = getelementptr inbounds %struct.rtl_priv, ptr %988, i32 0, i32 13, i32 11
  %1075 = ptrtoint ptr %read32_sync.i108.i to i32
  call void @__asan_load4_noabort(i32 %1075)
  %1076 = load ptr, ptr %read32_sync.i108.i, align 4
  %call.i109.i = tail call i32 %1076(ptr noundef %988, i32 noundef 1076) #8
  br label %rtl_write_dword.exit111.i

rtl_write_dword.exit111.i:                        ; preds = %if.then.i110.i, %rtl_write_dword.exit103.i.rtl_write_dword.exit111.i_crit_edge
  %1077 = ptrtoint ptr %write32_async.i.i307 to i32
  call void @__asan_load4_noabort(i32 %1077)
  %1078 = load ptr, ptr %write32_async.i.i307, align 4
  tail call void %1078(ptr noundef %988, i32 noundef 1080, i32 noundef 16777216) #8
  %1079 = ptrtoint ptr %cfg.i.i308 to i32
  call void @__asan_load4_noabort(i32 %1079)
  %1080 = load ptr, ptr %cfg.i.i308, align 8
  %write_readback.i114.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1080, i32 0, i32 1
  %1081 = ptrtoint ptr %write_readback.i114.i to i32
  call void @__asan_load1_noabort(i32 %1081)
  %1082 = load i8, ptr %write_readback.i114.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1082)
  %tobool.not.i115.i = icmp eq i8 %1082, 0
  br i1 %tobool.not.i115.i, label %rtl_write_dword.exit111.i.rtl_write_dword.exit119.i_crit_edge, label %if.then.i118.i

rtl_write_dword.exit111.i.rtl_write_dword.exit119.i_crit_edge: ; preds = %rtl_write_dword.exit111.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit119.i

if.then.i118.i:                                   ; preds = %rtl_write_dword.exit111.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i116.i = getelementptr inbounds %struct.rtl_priv, ptr %988, i32 0, i32 13, i32 11
  %1083 = ptrtoint ptr %read32_sync.i116.i to i32
  call void @__asan_load4_noabort(i32 %1083)
  %1084 = load ptr, ptr %read32_sync.i116.i, align 4
  %call.i117.i = tail call i32 %1084(ptr noundef %988, i32 noundef 1080) #8
  br label %rtl_write_dword.exit119.i

rtl_write_dword.exit119.i:                        ; preds = %if.then.i118.i, %rtl_write_dword.exit111.i.rtl_write_dword.exit119.i_crit_edge
  %1085 = ptrtoint ptr %write32_async.i.i307 to i32
  call void @__asan_load4_noabort(i32 %1085)
  %1086 = load ptr, ptr %write32_async.i.i307, align 4
  tail call void %1086(ptr noundef %988, i32 noundef 1084, i32 noundef 117835012) #8
  %1087 = ptrtoint ptr %cfg.i.i308 to i32
  call void @__asan_load4_noabort(i32 %1087)
  %1088 = load ptr, ptr %cfg.i.i308, align 8
  %write_readback.i122.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1088, i32 0, i32 1
  %1089 = ptrtoint ptr %write_readback.i122.i to i32
  call void @__asan_load1_noabort(i32 %1089)
  %1090 = load i8, ptr %write_readback.i122.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1090)
  %tobool.not.i123.i = icmp eq i8 %1090, 0
  br i1 %tobool.not.i123.i, label %rtl_write_dword.exit119.i.rtl_write_dword.exit127.i_crit_edge, label %if.then.i126.i

rtl_write_dword.exit119.i.rtl_write_dword.exit127.i_crit_edge: ; preds = %rtl_write_dword.exit119.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit127.i

if.then.i126.i:                                   ; preds = %rtl_write_dword.exit119.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i124.i = getelementptr inbounds %struct.rtl_priv, ptr %988, i32 0, i32 13, i32 11
  %1091 = ptrtoint ptr %read32_sync.i124.i to i32
  call void @__asan_load4_noabort(i32 %1091)
  %1092 = load ptr, ptr %read32_sync.i124.i, align 4
  %call.i125.i = tail call i32 %1092(ptr noundef %988, i32 noundef 1084) #8
  br label %rtl_write_dword.exit127.i

rtl_write_dword.exit127.i:                        ; preds = %if.then.i126.i, %rtl_write_dword.exit119.i.rtl_write_dword.exit127.i_crit_edge
  %1093 = ptrtoint ptr %write8_async.i.i315 to i32
  call void @__asan_load4_noabort(i32 %1093)
  %1094 = load ptr, ptr %write8_async.i.i315, align 4
  tail call void %1094(ptr noundef %988, i32 noundef 1370, i8 noundef zeroext 2) #8
  %1095 = ptrtoint ptr %cfg.i.i308 to i32
  call void @__asan_load4_noabort(i32 %1095)
  %1096 = load ptr, ptr %cfg.i.i308, align 8
  %write_readback.i130.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1096, i32 0, i32 1
  %1097 = ptrtoint ptr %write_readback.i130.i to i32
  call void @__asan_load1_noabort(i32 %1097)
  %1098 = load i8, ptr %write_readback.i130.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1098)
  %tobool.not.i131.i = icmp eq i8 %1098, 0
  br i1 %tobool.not.i131.i, label %rtl_write_dword.exit127.i.rtl_write_byte.exit135.i_crit_edge, label %if.then.i134.i

rtl_write_dword.exit127.i.rtl_write_byte.exit135.i_crit_edge: ; preds = %rtl_write_dword.exit127.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit135.i

if.then.i134.i:                                   ; preds = %rtl_write_dword.exit127.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i132.i = getelementptr inbounds %struct.rtl_priv, ptr %988, i32 0, i32 13, i32 9
  %1099 = ptrtoint ptr %read8_sync.i132.i to i32
  call void @__asan_load4_noabort(i32 %1099)
  %1100 = load ptr, ptr %read8_sync.i132.i, align 4
  %call.i133.i = tail call zeroext i8 %1100(ptr noundef %988, i32 noundef 1370) #8
  br label %rtl_write_byte.exit135.i

rtl_write_byte.exit135.i:                         ; preds = %if.then.i134.i, %rtl_write_dword.exit127.i.rtl_write_byte.exit135.i_crit_edge
  %1101 = ptrtoint ptr %write8_async.i.i315 to i32
  call void @__asan_load4_noabort(i32 %1101)
  %1102 = load ptr, ptr %write8_async.i.i315, align 4
  tail call void %1102(ptr noundef %988, i32 noundef 1373, i8 noundef zeroext -1) #8
  %1103 = ptrtoint ptr %cfg.i.i308 to i32
  call void @__asan_load4_noabort(i32 %1103)
  %1104 = load ptr, ptr %cfg.i.i308, align 8
  %write_readback.i138.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1104, i32 0, i32 1
  %1105 = ptrtoint ptr %write_readback.i138.i to i32
  call void @__asan_load1_noabort(i32 %1105)
  %1106 = load i8, ptr %write_readback.i138.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1106)
  %tobool.not.i139.i = icmp eq i8 %1106, 0
  br i1 %tobool.not.i139.i, label %rtl_write_byte.exit135.i.rtl_write_byte.exit143.i_crit_edge, label %if.then.i142.i

rtl_write_byte.exit135.i.rtl_write_byte.exit143.i_crit_edge: ; preds = %rtl_write_byte.exit135.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit143.i

if.then.i142.i:                                   ; preds = %rtl_write_byte.exit135.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i140.i = getelementptr inbounds %struct.rtl_priv, ptr %988, i32 0, i32 13, i32 9
  %1107 = ptrtoint ptr %read8_sync.i140.i to i32
  call void @__asan_load4_noabort(i32 %1107)
  %1108 = load ptr, ptr %read8_sync.i140.i, align 4
  %call.i141.i = tail call zeroext i8 %1108(ptr noundef %988, i32 noundef 1373) #8
  br label %rtl_write_byte.exit143.i

rtl_write_byte.exit143.i:                         ; preds = %if.then.i142.i, %rtl_write_byte.exit135.i.rtl_write_byte.exit143.i_crit_edge
  %reg_bcn_ctrl_val.i = getelementptr inbounds %struct.rtl_priv, ptr %988, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %1109 = ptrtoint ptr %reg_bcn_ctrl_val.i to i32
  call void @__asan_store4_noabort(i32 %1109)
  store i32 29, ptr %reg_bcn_ctrl_val.i, align 4
  %1110 = ptrtoint ptr %write8_async.i.i315 to i32
  call void @__asan_load4_noabort(i32 %1110)
  %1111 = load ptr, ptr %write8_async.i.i315, align 4
  tail call void %1111(ptr noundef %988, i32 noundef 1360, i8 noundef zeroext 29) #8
  %1112 = ptrtoint ptr %cfg.i.i308 to i32
  call void @__asan_load4_noabort(i32 %1112)
  %1113 = load ptr, ptr %cfg.i.i308, align 8
  %write_readback.i146.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1113, i32 0, i32 1
  %1114 = ptrtoint ptr %write_readback.i146.i to i32
  call void @__asan_load1_noabort(i32 %1114)
  %1115 = load i8, ptr %write_readback.i146.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1115)
  %tobool.not.i147.i = icmp eq i8 %1115, 0
  br i1 %tobool.not.i147.i, label %rtl_write_byte.exit143.i.rtl_write_byte.exit151.i_crit_edge, label %if.then.i150.i

rtl_write_byte.exit143.i.rtl_write_byte.exit151.i_crit_edge: ; preds = %rtl_write_byte.exit143.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit151.i

if.then.i150.i:                                   ; preds = %rtl_write_byte.exit143.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i148.i = getelementptr inbounds %struct.rtl_priv, ptr %988, i32 0, i32 13, i32 9
  %1116 = ptrtoint ptr %read8_sync.i148.i to i32
  call void @__asan_load4_noabort(i32 %1116)
  %1117 = load ptr, ptr %read8_sync.i148.i, align 4
  %call.i149.i = tail call zeroext i8 %1117(ptr noundef %988, i32 noundef 1360) #8
  br label %rtl_write_byte.exit151.i

rtl_write_byte.exit151.i:                         ; preds = %if.then.i150.i, %rtl_write_byte.exit143.i.rtl_write_byte.exit151.i_crit_edge
  %1118 = ptrtoint ptr %write8_async.i.i315 to i32
  call void @__asan_load4_noabort(i32 %1118)
  %1119 = load ptr, ptr %write8_async.i.i315, align 4
  tail call void %1119(ptr noundef %988, i32 noundef 1361, i8 noundef zeroext 0) #8
  %1120 = ptrtoint ptr %cfg.i.i308 to i32
  call void @__asan_load4_noabort(i32 %1120)
  %1121 = load ptr, ptr %cfg.i.i308, align 8
  %write_readback.i154.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1121, i32 0, i32 1
  %1122 = ptrtoint ptr %write_readback.i154.i to i32
  call void @__asan_load1_noabort(i32 %1122)
  %1123 = load i8, ptr %write_readback.i154.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1123)
  %tobool.not.i155.i = icmp eq i8 %1123, 0
  br i1 %tobool.not.i155.i, label %rtl_write_byte.exit151.i.rtl_write_byte.exit159.i_crit_edge, label %if.then.i158.i

rtl_write_byte.exit151.i.rtl_write_byte.exit159.i_crit_edge: ; preds = %rtl_write_byte.exit151.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit159.i

if.then.i158.i:                                   ; preds = %rtl_write_byte.exit151.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i156.i = getelementptr inbounds %struct.rtl_priv, ptr %988, i32 0, i32 13, i32 9
  %1124 = ptrtoint ptr %read8_sync.i156.i to i32
  call void @__asan_load4_noabort(i32 %1124)
  %1125 = load ptr, ptr %read8_sync.i156.i, align 4
  %call.i157.i = tail call zeroext i8 %1125(ptr noundef %988, i32 noundef 1361) #8
  br label %rtl_write_byte.exit159.i

rtl_write_byte.exit159.i:                         ; preds = %if.then.i158.i, %rtl_write_byte.exit151.i.rtl_write_byte.exit159.i_crit_edge
  %1126 = ptrtoint ptr %write8_async.i.i315 to i32
  call void @__asan_load4_noabort(i32 %1126)
  %1127 = load ptr, ptr %write8_async.i.i315, align 4
  tail call void %1127(ptr noundef %988, i32 noundef 1345, i8 noundef zeroext -1) #8
  %1128 = ptrtoint ptr %cfg.i.i308 to i32
  call void @__asan_load4_noabort(i32 %1128)
  %1129 = load ptr, ptr %cfg.i.i308, align 8
  %write_readback.i162.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1129, i32 0, i32 1
  %1130 = ptrtoint ptr %write_readback.i162.i to i32
  call void @__asan_load1_noabort(i32 %1130)
  %1131 = load i8, ptr %write_readback.i162.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1131)
  %tobool.not.i163.i = icmp eq i8 %1131, 0
  br i1 %tobool.not.i163.i, label %rtl_write_byte.exit159.i.rtl_write_byte.exit167.i_crit_edge, label %if.then.i166.i

rtl_write_byte.exit159.i.rtl_write_byte.exit167.i_crit_edge: ; preds = %rtl_write_byte.exit159.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit167.i

if.then.i166.i:                                   ; preds = %rtl_write_byte.exit159.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i164.i = getelementptr inbounds %struct.rtl_priv, ptr %988, i32 0, i32 13, i32 9
  %1132 = ptrtoint ptr %read8_sync.i164.i to i32
  call void @__asan_load4_noabort(i32 %1132)
  %1133 = load ptr, ptr %read8_sync.i164.i, align 4
  %call.i165.i = tail call zeroext i8 %1133(ptr noundef %988, i32 noundef 1345) #8
  br label %rtl_write_byte.exit167.i

rtl_write_byte.exit167.i:                         ; preds = %if.then.i166.i, %rtl_write_byte.exit159.i.rtl_write_byte.exit167.i_crit_edge
  %1134 = ptrtoint ptr %write8_async.i.i315 to i32
  call void @__asan_load4_noabort(i32 %1134)
  %1135 = load ptr, ptr %write8_async.i.i315, align 4
  tail call void %1135(ptr noundef %988, i32 noundef 1298, i8 noundef zeroext 0) #8
  %1136 = ptrtoint ptr %cfg.i.i308 to i32
  call void @__asan_load4_noabort(i32 %1136)
  %1137 = load ptr, ptr %cfg.i.i308, align 8
  %write_readback.i170.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1137, i32 0, i32 1
  %1138 = ptrtoint ptr %write_readback.i170.i to i32
  call void @__asan_load1_noabort(i32 %1138)
  %1139 = load i8, ptr %write_readback.i170.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1139)
  %tobool.not.i171.i = icmp eq i8 %1139, 0
  br i1 %tobool.not.i171.i, label %rtl_write_byte.exit167.i.rtl_write_byte.exit175.i_crit_edge, label %if.then.i174.i

rtl_write_byte.exit167.i.rtl_write_byte.exit175.i_crit_edge: ; preds = %rtl_write_byte.exit167.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit175.i

if.then.i174.i:                                   ; preds = %rtl_write_byte.exit167.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i172.i = getelementptr inbounds %struct.rtl_priv, ptr %988, i32 0, i32 13, i32 9
  %1140 = ptrtoint ptr %read8_sync.i172.i to i32
  call void @__asan_load4_noabort(i32 %1140)
  %1141 = load ptr, ptr %read8_sync.i172.i, align 4
  %call.i173.i = tail call zeroext i8 %1141(ptr noundef %988, i32 noundef 1298) #8
  br label %rtl_write_byte.exit175.i

rtl_write_byte.exit175.i:                         ; preds = %if.then.i174.i, %rtl_write_byte.exit167.i.rtl_write_byte.exit175.i_crit_edge
  %1142 = ptrtoint ptr %write8_async.i.i315 to i32
  call void @__asan_load4_noabort(i32 %1142)
  %1143 = load ptr, ptr %write8_async.i.i315, align 4
  tail call void %1143(ptr noundef %988, i32 noundef 1306, i8 noundef zeroext 22) #8
  %1144 = ptrtoint ptr %cfg.i.i308 to i32
  call void @__asan_load4_noabort(i32 %1144)
  %1145 = load ptr, ptr %cfg.i.i308, align 8
  %write_readback.i178.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1145, i32 0, i32 1
  %1146 = ptrtoint ptr %write_readback.i178.i to i32
  call void @__asan_load1_noabort(i32 %1146)
  %1147 = load i8, ptr %write_readback.i178.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1147)
  %tobool.not.i179.i = icmp eq i8 %1147, 0
  br i1 %tobool.not.i179.i, label %rtl_write_byte.exit175.i.rtl_write_byte.exit183.i_crit_edge, label %if.then.i182.i

rtl_write_byte.exit175.i.rtl_write_byte.exit183.i_crit_edge: ; preds = %rtl_write_byte.exit175.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit183.i

if.then.i182.i:                                   ; preds = %rtl_write_byte.exit175.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i180.i = getelementptr inbounds %struct.rtl_priv, ptr %988, i32 0, i32 13, i32 9
  %1148 = ptrtoint ptr %read8_sync.i180.i to i32
  call void @__asan_load4_noabort(i32 %1148)
  %1149 = load ptr, ptr %read8_sync.i180.i, align 4
  %call.i181.i = tail call zeroext i8 %1149(ptr noundef %988, i32 noundef 1306) #8
  br label %rtl_write_byte.exit183.i

rtl_write_byte.exit183.i:                         ; preds = %if.then.i182.i, %rtl_write_byte.exit175.i.rtl_write_byte.exit183.i_crit_edge
  %1150 = ptrtoint ptr %write16_async.i.i317 to i32
  call void @__asan_load4_noabort(i32 %1150)
  %1151 = load ptr, ptr %write16_async.i.i317, align 4
  tail call void %1151(ptr noundef %988, i32 noundef 1350, i16 noundef zeroext 64) #8
  %1152 = ptrtoint ptr %cfg.i.i308 to i32
  call void @__asan_load4_noabort(i32 %1152)
  %1153 = load ptr, ptr %cfg.i.i308, align 8
  %write_readback.i186.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1153, i32 0, i32 1
  %1154 = ptrtoint ptr %write_readback.i186.i to i32
  call void @__asan_load1_noabort(i32 %1154)
  %1155 = load i8, ptr %write_readback.i186.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1155)
  %tobool.not.i187.i = icmp eq i8 %1155, 0
  br i1 %tobool.not.i187.i, label %rtl_write_byte.exit183.i.rtl_write_word.exit191.i_crit_edge, label %if.then.i190.i

rtl_write_byte.exit183.i.rtl_write_word.exit191.i_crit_edge: ; preds = %rtl_write_byte.exit183.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit191.i

if.then.i190.i:                                   ; preds = %rtl_write_byte.exit183.i
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i188.i = getelementptr inbounds %struct.rtl_priv, ptr %988, i32 0, i32 13, i32 10
  %1156 = ptrtoint ptr %read16_sync.i188.i to i32
  call void @__asan_load4_noabort(i32 %1156)
  %1157 = load ptr, ptr %read16_sync.i188.i, align 4
  %call.i189.i = tail call zeroext i16 %1157(ptr noundef %988, i32 noundef 1350) #8
  br label %rtl_write_word.exit191.i

rtl_write_word.exit191.i:                         ; preds = %if.then.i190.i, %rtl_write_byte.exit183.i.rtl_write_word.exit191.i_crit_edge
  %1158 = ptrtoint ptr %write16_async.i.i317 to i32
  call void @__asan_load4_noabort(i32 %1158)
  %1159 = load ptr, ptr %write16_async.i.i317, align 4
  tail call void %1159(ptr noundef %988, i32 noundef 1224, i16 noundef zeroext 2303) #8
  %1160 = ptrtoint ptr %cfg.i.i308 to i32
  call void @__asan_load4_noabort(i32 %1160)
  %1161 = load ptr, ptr %cfg.i.i308, align 8
  %write_readback.i194.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1161, i32 0, i32 1
  %1162 = ptrtoint ptr %write_readback.i194.i to i32
  call void @__asan_load1_noabort(i32 %1162)
  %1163 = load i8, ptr %write_readback.i194.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1163)
  %tobool.not.i195.i = icmp eq i8 %1163, 0
  br i1 %tobool.not.i195.i, label %rtl_write_word.exit191.i.rtl_write_word.exit199.i_crit_edge, label %if.then.i198.i

rtl_write_word.exit191.i.rtl_write_word.exit199.i_crit_edge: ; preds = %rtl_write_word.exit191.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit199.i

if.then.i198.i:                                   ; preds = %rtl_write_word.exit191.i
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i196.i = getelementptr inbounds %struct.rtl_priv, ptr %988, i32 0, i32 13, i32 10
  %1164 = ptrtoint ptr %read16_sync.i196.i to i32
  call void @__asan_load4_noabort(i32 %1164)
  %1165 = load ptr, ptr %read16_sync.i196.i, align 4
  %call.i197.i = tail call zeroext i16 %1165(ptr noundef %988, i32 noundef 1224) #8
  br label %rtl_write_word.exit199.i

rtl_write_word.exit199.i:                         ; preds = %if.then.i198.i, %rtl_write_word.exit191.i.rtl_write_word.exit199.i_crit_edge
  %1166 = ptrtoint ptr %write32_async.i.i307 to i32
  call void @__asan_load4_noabort(i32 %1166)
  %1167 = load ptr, ptr %write32_async.i.i307, align 4
  tail call void %1167(ptr noundef %988, i32 noundef 1120, i32 noundef 50882150) #8
  %1168 = ptrtoint ptr %cfg.i.i308 to i32
  call void @__asan_load4_noabort(i32 %1168)
  %1169 = load ptr, ptr %cfg.i.i308, align 8
  %write_readback.i202.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1169, i32 0, i32 1
  %1170 = ptrtoint ptr %write_readback.i202.i to i32
  call void @__asan_load1_noabort(i32 %1170)
  %1171 = load i8, ptr %write_readback.i202.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1171)
  %tobool.not.i203.i = icmp eq i8 %1171, 0
  br i1 %tobool.not.i203.i, label %rtl_write_word.exit199.i.rtl_write_dword.exit207.i_crit_edge, label %if.then.i206.i

rtl_write_word.exit199.i.rtl_write_dword.exit207.i_crit_edge: ; preds = %rtl_write_word.exit199.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit207.i

if.then.i206.i:                                   ; preds = %rtl_write_word.exit199.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i204.i = getelementptr inbounds %struct.rtl_priv, ptr %988, i32 0, i32 13, i32 11
  %1172 = ptrtoint ptr %read32_sync.i204.i to i32
  call void @__asan_load4_noabort(i32 %1172)
  %1173 = load ptr, ptr %read32_sync.i204.i, align 4
  %call.i205.i = tail call i32 %1173(ptr noundef %988, i32 noundef 1120) #8
  br label %rtl_write_dword.exit207.i

rtl_write_dword.exit207.i:                        ; preds = %if.then.i206.i, %rtl_write_word.exit199.i.rtl_write_dword.exit207.i_crit_edge
  %1174 = ptrtoint ptr %write8_async.i.i315 to i32
  call void @__asan_load4_noabort(i32 %1174)
  %1175 = load ptr, ptr %write8_async.i.i315, align 4
  tail call void %1175(ptr noundef %988, i32 noundef 1600, i8 noundef zeroext 64) #8
  %1176 = ptrtoint ptr %cfg.i.i308 to i32
  call void @__asan_load4_noabort(i32 %1176)
  %1177 = load ptr, ptr %cfg.i.i308, align 8
  %write_readback.i210.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1177, i32 0, i32 1
  %1178 = ptrtoint ptr %write_readback.i210.i to i32
  call void @__asan_load1_noabort(i32 %1178)
  %1179 = load i8, ptr %write_readback.i210.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1179)
  %tobool.not.i211.i = icmp eq i8 %1179, 0
  br i1 %tobool.not.i211.i, label %rtl_write_dword.exit207.i.rtl_write_byte.exit215.i_crit_edge, label %if.then.i214.i

rtl_write_dword.exit207.i.rtl_write_byte.exit215.i_crit_edge: ; preds = %rtl_write_dword.exit207.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit215.i

if.then.i214.i:                                   ; preds = %rtl_write_dword.exit207.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i212.i = getelementptr inbounds %struct.rtl_priv, ptr %988, i32 0, i32 13, i32 9
  %1180 = ptrtoint ptr %read8_sync.i212.i to i32
  call void @__asan_load4_noabort(i32 %1180)
  %1181 = load ptr, ptr %read8_sync.i212.i, align 4
  %call.i213.i = tail call zeroext i8 %1181(ptr noundef %988, i32 noundef 1600) #8
  br label %rtl_write_byte.exit215.i

rtl_write_byte.exit215.i:                         ; preds = %if.then.i214.i, %rtl_write_dword.exit207.i.rtl_write_byte.exit215.i_crit_edge
  %1182 = ptrtoint ptr %write16_async.i.i317 to i32
  call void @__asan_load4_noabort(i32 %1182)
  %1183 = load ptr, ptr %write16_async.i.i317, align 4
  tail call void %1183(ptr noundef %988, i32 noundef 1064, i16 noundef zeroext 4106) #8
  %1184 = ptrtoint ptr %cfg.i.i308 to i32
  call void @__asan_load4_noabort(i32 %1184)
  %1185 = load ptr, ptr %cfg.i.i308, align 8
  %write_readback.i218.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1185, i32 0, i32 1
  %1186 = ptrtoint ptr %write_readback.i218.i to i32
  call void @__asan_load1_noabort(i32 %1186)
  %1187 = load i8, ptr %write_readback.i218.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1187)
  %tobool.not.i219.i = icmp eq i8 %1187, 0
  br i1 %tobool.not.i219.i, label %rtl_write_byte.exit215.i.rtl_write_word.exit223.i_crit_edge, label %if.then.i222.i

rtl_write_byte.exit215.i.rtl_write_word.exit223.i_crit_edge: ; preds = %rtl_write_byte.exit215.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit223.i

if.then.i222.i:                                   ; preds = %rtl_write_byte.exit215.i
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i220.i = getelementptr inbounds %struct.rtl_priv, ptr %988, i32 0, i32 13, i32 10
  %1188 = ptrtoint ptr %read16_sync.i220.i to i32
  call void @__asan_load4_noabort(i32 %1188)
  %1189 = load ptr, ptr %read16_sync.i220.i, align 4
  %call.i221.i = tail call zeroext i16 %1189(ptr noundef %988, i32 noundef 1064) #8
  br label %rtl_write_word.exit223.i

rtl_write_word.exit223.i:                         ; preds = %if.then.i222.i, %rtl_write_byte.exit215.i.rtl_write_word.exit223.i_crit_edge
  %1190 = ptrtoint ptr %write16_async.i.i317 to i32
  call void @__asan_load4_noabort(i32 %1190)
  %1191 = load ptr, ptr %write16_async.i.i317, align 4
  tail call void %1191(ptr noundef %988, i32 noundef 1594, i16 noundef zeroext 4106) #8
  %1192 = ptrtoint ptr %cfg.i.i308 to i32
  call void @__asan_load4_noabort(i32 %1192)
  %1193 = load ptr, ptr %cfg.i.i308, align 8
  %write_readback.i226.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1193, i32 0, i32 1
  %1194 = ptrtoint ptr %write_readback.i226.i to i32
  call void @__asan_load1_noabort(i32 %1194)
  %1195 = load i8, ptr %write_readback.i226.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1195)
  %tobool.not.i227.i = icmp eq i8 %1195, 0
  br i1 %tobool.not.i227.i, label %rtl_write_word.exit223.i.rtl_write_word.exit231.i_crit_edge, label %if.then.i230.i

rtl_write_word.exit223.i.rtl_write_word.exit231.i_crit_edge: ; preds = %rtl_write_word.exit223.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit231.i

if.then.i230.i:                                   ; preds = %rtl_write_word.exit223.i
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i228.i = getelementptr inbounds %struct.rtl_priv, ptr %988, i32 0, i32 13, i32 10
  %1196 = ptrtoint ptr %read16_sync.i228.i to i32
  call void @__asan_load4_noabort(i32 %1196)
  %1197 = load ptr, ptr %read16_sync.i228.i, align 4
  %call.i229.i = tail call zeroext i16 %1197(ptr noundef %988, i32 noundef 1594) #8
  br label %rtl_write_word.exit231.i

rtl_write_word.exit231.i:                         ; preds = %if.then.i230.i, %rtl_write_word.exit223.i.rtl_write_word.exit231.i_crit_edge
  %1198 = ptrtoint ptr %write16_async.i.i317 to i32
  call void @__asan_load4_noabort(i32 %1198)
  %1199 = load ptr, ptr %write16_async.i.i317, align 4
  tail call void %1199(ptr noundef %988, i32 noundef 1300, i16 noundef zeroext 4106) #8
  %1200 = ptrtoint ptr %cfg.i.i308 to i32
  call void @__asan_load4_noabort(i32 %1200)
  %1201 = load ptr, ptr %cfg.i.i308, align 8
  %write_readback.i234.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1201, i32 0, i32 1
  %1202 = ptrtoint ptr %write_readback.i234.i to i32
  call void @__asan_load1_noabort(i32 %1202)
  %1203 = load i8, ptr %write_readback.i234.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1203)
  %tobool.not.i235.i = icmp eq i8 %1203, 0
  br i1 %tobool.not.i235.i, label %rtl_write_word.exit231.i.rtl_write_word.exit239.i_crit_edge, label %if.then.i238.i

rtl_write_word.exit231.i.rtl_write_word.exit239.i_crit_edge: ; preds = %rtl_write_word.exit231.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit239.i

if.then.i238.i:                                   ; preds = %rtl_write_word.exit231.i
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i236.i = getelementptr inbounds %struct.rtl_priv, ptr %988, i32 0, i32 13, i32 10
  %1204 = ptrtoint ptr %read16_sync.i236.i to i32
  call void @__asan_load4_noabort(i32 %1204)
  %1205 = load ptr, ptr %read16_sync.i236.i, align 4
  %call.i237.i = tail call zeroext i16 %1205(ptr noundef %988, i32 noundef 1300) #8
  br label %rtl_write_word.exit239.i

rtl_write_word.exit239.i:                         ; preds = %if.then.i238.i, %rtl_write_word.exit231.i.rtl_write_word.exit239.i_crit_edge
  %1206 = ptrtoint ptr %write16_async.i.i317 to i32
  call void @__asan_load4_noabort(i32 %1206)
  %1207 = load ptr, ptr %write16_async.i.i317, align 4
  tail call void %1207(ptr noundef %988, i32 noundef 1302, i16 noundef zeroext 4106) #8
  %1208 = ptrtoint ptr %cfg.i.i308 to i32
  call void @__asan_load4_noabort(i32 %1208)
  %1209 = load ptr, ptr %cfg.i.i308, align 8
  %write_readback.i242.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1209, i32 0, i32 1
  %1210 = ptrtoint ptr %write_readback.i242.i to i32
  call void @__asan_load1_noabort(i32 %1210)
  %1211 = load i8, ptr %write_readback.i242.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1211)
  %tobool.not.i243.i = icmp eq i8 %1211, 0
  br i1 %tobool.not.i243.i, label %rtl_write_word.exit239.i.rtl_write_word.exit247.i_crit_edge, label %if.then.i246.i

rtl_write_word.exit239.i.rtl_write_word.exit247.i_crit_edge: ; preds = %rtl_write_word.exit239.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit247.i

if.then.i246.i:                                   ; preds = %rtl_write_word.exit239.i
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i244.i = getelementptr inbounds %struct.rtl_priv, ptr %988, i32 0, i32 13, i32 10
  %1212 = ptrtoint ptr %read16_sync.i244.i to i32
  call void @__asan_load4_noabort(i32 %1212)
  %1213 = load ptr, ptr %read16_sync.i244.i, align 4
  %call.i245.i = tail call zeroext i16 %1213(ptr noundef %988, i32 noundef 1302) #8
  br label %rtl_write_word.exit247.i

rtl_write_word.exit247.i:                         ; preds = %if.then.i246.i, %rtl_write_word.exit239.i.rtl_write_word.exit247.i_crit_edge
  %1214 = ptrtoint ptr %write8_async.i.i315 to i32
  call void @__asan_load4_noabort(i32 %1214)
  %1215 = load ptr, ptr %write8_async.i.i315, align 4
  tail call void %1215(ptr noundef %988, i32 noundef 1223, i8 noundef zeroext -128) #8
  %1216 = ptrtoint ptr %cfg.i.i308 to i32
  call void @__asan_load4_noabort(i32 %1216)
  %1217 = load ptr, ptr %cfg.i.i308, align 8
  %write_readback.i250.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1217, i32 0, i32 1
  %1218 = ptrtoint ptr %write_readback.i250.i to i32
  call void @__asan_load1_noabort(i32 %1218)
  %1219 = load i8, ptr %write_readback.i250.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1219)
  %tobool.not.i251.i = icmp eq i8 %1219, 0
  br i1 %tobool.not.i251.i, label %rtl_write_word.exit247.i.rtl_write_byte.exit255.i_crit_edge, label %if.then.i254.i

rtl_write_word.exit247.i.rtl_write_byte.exit255.i_crit_edge: ; preds = %rtl_write_word.exit247.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit255.i

if.then.i254.i:                                   ; preds = %rtl_write_word.exit247.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i252.i = getelementptr inbounds %struct.rtl_priv, ptr %988, i32 0, i32 13, i32 9
  %1220 = ptrtoint ptr %read8_sync.i252.i to i32
  call void @__asan_load4_noabort(i32 %1220)
  %1221 = load ptr, ptr %read8_sync.i252.i, align 4
  %call.i253.i = tail call zeroext i8 %1221(ptr noundef %988, i32 noundef 1223) #8
  br label %rtl_write_byte.exit255.i

rtl_write_byte.exit255.i:                         ; preds = %if.then.i254.i, %rtl_write_word.exit247.i.rtl_write_byte.exit255.i_crit_edge
  %1222 = ptrtoint ptr %write8_async.i.i315 to i32
  call void @__asan_load4_noabort(i32 %1222)
  %1223 = load ptr, ptr %write8_async.i.i315, align 4
  tail call void %1223(ptr noundef %988, i32 noundef 1548, i8 noundef zeroext 32) #8
  %1224 = ptrtoint ptr %cfg.i.i308 to i32
  call void @__asan_load4_noabort(i32 %1224)
  %1225 = load ptr, ptr %cfg.i.i308, align 8
  %write_readback.i258.i321 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1225, i32 0, i32 1
  %1226 = ptrtoint ptr %write_readback.i258.i321 to i32
  call void @__asan_load1_noabort(i32 %1226)
  %1227 = load i8, ptr %write_readback.i258.i321, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1227)
  %tobool.not.i259.i322 = icmp eq i8 %1227, 0
  br i1 %tobool.not.i259.i322, label %rtl_write_byte.exit255.i.rtl_write_byte.exit263.i_crit_edge, label %if.then.i262.i324

rtl_write_byte.exit255.i.rtl_write_byte.exit263.i_crit_edge: ; preds = %rtl_write_byte.exit255.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit263.i

if.then.i262.i324:                                ; preds = %rtl_write_byte.exit255.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i260.i323 = getelementptr inbounds %struct.rtl_priv, ptr %988, i32 0, i32 13, i32 9
  %1228 = ptrtoint ptr %read8_sync.i260.i323 to i32
  call void @__asan_load4_noabort(i32 %1228)
  %1229 = load ptr, ptr %read8_sync.i260.i323, align 4
  %call.i261.i = tail call zeroext i8 %1229(ptr noundef %988, i32 noundef 1548) #8
  br label %rtl_write_byte.exit263.i

rtl_write_byte.exit263.i:                         ; preds = %if.then.i262.i324, %rtl_write_byte.exit255.i.rtl_write_byte.exit263.i_crit_edge
  %1230 = ptrtoint ptr %write16_async.i.i317 to i32
  call void @__asan_load4_noabort(i32 %1230)
  %1231 = load ptr, ptr %write16_async.i.i317, align 4
  tail call void %1231(ptr noundef %988, i32 noundef 1226, i16 noundef zeroext 5911) #8
  %1232 = ptrtoint ptr %cfg.i.i308 to i32
  call void @__asan_load4_noabort(i32 %1232)
  %1233 = load ptr, ptr %cfg.i.i308, align 8
  %write_readback.i266.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1233, i32 0, i32 1
  %1234 = ptrtoint ptr %write_readback.i266.i to i32
  call void @__asan_load1_noabort(i32 %1234)
  %1235 = load i8, ptr %write_readback.i266.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1235)
  %tobool.not.i267.i = icmp eq i8 %1235, 0
  br i1 %tobool.not.i267.i, label %rtl_write_byte.exit263.i.rtl_write_word.exit271.i_crit_edge, label %if.then.i270.i

rtl_write_byte.exit263.i.rtl_write_word.exit271.i_crit_edge: ; preds = %rtl_write_byte.exit263.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit271.i

if.then.i270.i:                                   ; preds = %rtl_write_byte.exit263.i
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i268.i = getelementptr inbounds %struct.rtl_priv, ptr %988, i32 0, i32 13, i32 10
  %1236 = ptrtoint ptr %read16_sync.i268.i to i32
  call void @__asan_load4_noabort(i32 %1236)
  %1237 = load ptr, ptr %read16_sync.i268.i, align 4
  %call.i269.i = tail call zeroext i16 %1237(ptr noundef %988, i32 noundef 1226) #8
  br label %rtl_write_word.exit271.i

rtl_write_word.exit271.i:                         ; preds = %if.then.i270.i, %rtl_write_byte.exit263.i.rtl_write_word.exit271.i_crit_edge
  %1238 = ptrtoint ptr %write32_async.i.i307 to i32
  call void @__asan_load4_noabort(i32 %1238)
  %1239 = load ptr, ptr %write32_async.i.i307, align 4
  tail call void %1239(ptr noundef %988, i32 noundef 1568, i32 noundef -1) #8
  %1240 = ptrtoint ptr %cfg.i.i308 to i32
  call void @__asan_load4_noabort(i32 %1240)
  %1241 = load ptr, ptr %cfg.i.i308, align 8
  %write_readback.i274.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1241, i32 0, i32 1
  %1242 = ptrtoint ptr %write_readback.i274.i to i32
  call void @__asan_load1_noabort(i32 %1242)
  %1243 = load i8, ptr %write_readback.i274.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1243)
  %tobool.not.i275.i = icmp eq i8 %1243, 0
  br i1 %tobool.not.i275.i, label %rtl_write_word.exit271.i.rtl_write_dword.exit279.i_crit_edge, label %if.then.i278.i

rtl_write_word.exit271.i.rtl_write_dword.exit279.i_crit_edge: ; preds = %rtl_write_word.exit271.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit279.i

if.then.i278.i:                                   ; preds = %rtl_write_word.exit271.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i276.i = getelementptr inbounds %struct.rtl_priv, ptr %988, i32 0, i32 13, i32 11
  %1244 = ptrtoint ptr %read32_sync.i276.i to i32
  call void @__asan_load4_noabort(i32 %1244)
  %1245 = load ptr, ptr %read32_sync.i276.i, align 4
  %call.i277.i = tail call i32 %1245(ptr noundef %988, i32 noundef 1568) #8
  br label %rtl_write_dword.exit279.i

rtl_write_dword.exit279.i:                        ; preds = %if.then.i278.i, %rtl_write_word.exit271.i.rtl_write_dword.exit279.i_crit_edge
  %1246 = ptrtoint ptr %write32_async.i.i307 to i32
  call void @__asan_load4_noabort(i32 %1246)
  %1247 = load ptr, ptr %write32_async.i.i307, align 4
  tail call void %1247(ptr noundef %988, i32 noundef 1572, i32 noundef -1) #8
  %1248 = ptrtoint ptr %cfg.i.i308 to i32
  call void @__asan_load4_noabort(i32 %1248)
  %1249 = load ptr, ptr %cfg.i.i308, align 8
  %write_readback.i282.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1249, i32 0, i32 1
  %1250 = ptrtoint ptr %write_readback.i282.i to i32
  call void @__asan_load1_noabort(i32 %1250)
  %1251 = load i8, ptr %write_readback.i282.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1251)
  %tobool.not.i283.i = icmp eq i8 %1251, 0
  br i1 %tobool.not.i283.i, label %rtl_write_dword.exit279.i._rtl92ee_hw_configure.exit_crit_edge, label %if.then.i286.i

rtl_write_dword.exit279.i._rtl92ee_hw_configure.exit_crit_edge: ; preds = %rtl_write_dword.exit279.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ee_hw_configure.exit

if.then.i286.i:                                   ; preds = %rtl_write_dword.exit279.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i284.i = getelementptr inbounds %struct.rtl_priv, ptr %988, i32 0, i32 13, i32 11
  %1252 = ptrtoint ptr %read32_sync.i284.i to i32
  call void @__asan_load4_noabort(i32 %1252)
  %1253 = load ptr, ptr %read32_sync.i284.i, align 4
  %call.i285.i = tail call i32 %1253(ptr noundef %988, i32 noundef 1572) #8
  br label %_rtl92ee_hw_configure.exit

_rtl92ee_hw_configure.exit:                       ; preds = %if.then.i286.i, %rtl_write_dword.exit279.i._rtl92ee_hw_configure.exit_crit_edge
  %1254 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %1254)
  store i8 1, ptr %14, align 1
  tail call void @rtl_cam_reset_all_entry(ptr noundef %hw) #8
  tail call void @rtl92ee_enable_hw_security_config(ptr noundef %hw)
  %rfpwr_state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 24
  %1255 = ptrtoint ptr %rfpwr_state to i32
  call void @__asan_store4_noabort(i32 %1255)
  store i32 0, ptr %rfpwr_state, align 4
  %1256 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %1256)
  %1257 = load ptr, ptr %cfg.i, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1257, i32 0, i32 4
  %1258 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1258)
  %1259 = load ptr, ptr %ops, align 4
  %set_hw_reg = getelementptr inbounds %struct.rtl_hal_ops, ptr %1259, i32 0, i32 20
  %1260 = ptrtoint ptr %set_hw_reg to i32
  call void @__asan_load4_noabort(i32 %1260)
  %1261 = load ptr, ptr %set_hw_reg, align 4
  tail call void %1261(ptr noundef %hw, i8 noundef zeroext 0, ptr noundef %mac80211) #8
  %1262 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1262)
  %1263 = load ptr, ptr %priv, align 8
  %write16_async.i.i326 = getelementptr inbounds %struct.rtl_priv, ptr %1263, i32 0, i32 13, i32 6
  %1264 = ptrtoint ptr %write16_async.i.i326 to i32
  call void @__asan_load4_noabort(i32 %1264)
  %1265 = load ptr, ptr %write16_async.i.i326, align 4
  tail call void %1265(ptr noundef %1263, i32 noundef 1008, i16 noundef zeroext 120) #8
  %cfg.i.i327 = getelementptr inbounds %struct.rtl_priv, ptr %1263, i32 0, i32 32
  %1266 = ptrtoint ptr %cfg.i.i327 to i32
  call void @__asan_load4_noabort(i32 %1266)
  %1267 = load ptr, ptr %cfg.i.i327, align 8
  %write_readback.i.i328 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1267, i32 0, i32 1
  %1268 = ptrtoint ptr %write_readback.i.i328 to i32
  call void @__asan_load1_noabort(i32 %1268)
  %1269 = load i8, ptr %write_readback.i.i328, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1269)
  %tobool.not.i.i329 = icmp eq i8 %1269, 0
  br i1 %tobool.not.i.i329, label %_rtl92ee_hw_configure.exit.rtl_write_word.exit.i334_crit_edge, label %if.then.i.i332

_rtl92ee_hw_configure.exit.rtl_write_word.exit.i334_crit_edge: ; preds = %_rtl92ee_hw_configure.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit.i334

if.then.i.i332:                                   ; preds = %_rtl92ee_hw_configure.exit
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i.i330 = getelementptr inbounds %struct.rtl_priv, ptr %1263, i32 0, i32 13, i32 10
  %1270 = ptrtoint ptr %read16_sync.i.i330 to i32
  call void @__asan_load4_noabort(i32 %1270)
  %1271 = load ptr, ptr %read16_sync.i.i330, align 4
  %call.i.i331 = tail call zeroext i16 %1271(ptr noundef %1263, i32 noundef 1008) #8
  br label %rtl_write_word.exit.i334

rtl_write_word.exit.i334:                         ; preds = %if.then.i.i332, %_rtl92ee_hw_configure.exit.rtl_write_word.exit.i334_crit_edge
  %write8_async.i.i333 = getelementptr inbounds %struct.rtl_priv, ptr %1263, i32 0, i32 13, i32 5
  %1272 = ptrtoint ptr %write8_async.i.i333 to i32
  call void @__asan_load4_noabort(i32 %1272)
  %1273 = load ptr, ptr %write8_async.i.i333, align 4
  tail call void %1273(ptr noundef %1263, i32 noundef 1010, i8 noundef zeroext 2) #8
  %1274 = ptrtoint ptr %cfg.i.i327 to i32
  call void @__asan_load4_noabort(i32 %1274)
  %1275 = load ptr, ptr %cfg.i.i327, align 8
  %write_readback.i150.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1275, i32 0, i32 1
  %1276 = ptrtoint ptr %write_readback.i150.i to i32
  call void @__asan_load1_noabort(i32 %1276)
  %1277 = load i8, ptr %write_readback.i150.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1277)
  %tobool.not.i151.i = icmp eq i8 %1277, 0
  br i1 %tobool.not.i151.i, label %rtl_write_word.exit.i334.rtl_write_byte.exit.i336_crit_edge, label %if.then.i153.i

rtl_write_word.exit.i334.rtl_write_byte.exit.i336_crit_edge: ; preds = %rtl_write_word.exit.i334
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit.i336

if.then.i153.i:                                   ; preds = %rtl_write_word.exit.i334
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i335 = getelementptr inbounds %struct.rtl_priv, ptr %1263, i32 0, i32 13, i32 9
  %1278 = ptrtoint ptr %read8_sync.i.i335 to i32
  call void @__asan_load4_noabort(i32 %1278)
  %1279 = load ptr, ptr %read8_sync.i.i335, align 4
  %call.i152.i = tail call zeroext i8 %1279(ptr noundef %1263, i32 noundef 1010) #8
  br label %rtl_write_byte.exit.i336

rtl_write_byte.exit.i336:                         ; preds = %if.then.i153.i, %rtl_write_word.exit.i334.rtl_write_byte.exit.i336_crit_edge
  %read8_sync.i154.i = getelementptr inbounds %struct.rtl_priv, ptr %1263, i32 0, i32 13, i32 9
  %1280 = ptrtoint ptr %read8_sync.i154.i to i32
  call void @__asan_load4_noabort(i32 %1280)
  %1281 = load ptr, ptr %read8_sync.i154.i, align 4
  %call.i155.i = tail call zeroext i8 %1281(ptr noundef %1263, i32 noundef 1010) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i155.i)
  %tobool.not285.not.i = icmp eq i8 %call.i155.i, 0
  br i1 %tobool.not285.not.i, label %rtl_write_byte.exit.i336.if.then.i343_crit_edge, label %rtl_write_byte.exit.i336.while.body.i339_crit_edge

rtl_write_byte.exit.i336.while.body.i339_crit_edge: ; preds = %rtl_write_byte.exit.i336
  br label %while.body.i339

rtl_write_byte.exit.i336.if.then.i343_crit_edge:  ; preds = %rtl_write_byte.exit.i336
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i343

while.body.i339:                                  ; preds = %while.body.i339.while.body.i339_crit_edge, %rtl_write_byte.exit.i336.while.body.i339_crit_edge
  %count.0286.i = phi i32 [ %inc.i, %while.body.i339.while.body.i339_crit_edge ], [ 0, %rtl_write_byte.exit.i336.while.body.i339_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1282 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1282(i32 noundef 2147480) #8
  %1283 = ptrtoint ptr %read8_sync.i154.i to i32
  call void @__asan_load4_noabort(i32 %1283)
  %1284 = load ptr, ptr %read8_sync.i154.i, align 4
  %call.i157.i337 = tail call zeroext i8 %1284(ptr noundef %1263, i32 noundef 1010) #8
  %inc.i = add nuw nsw i32 %count.0286.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i157.i337)
  %tobool.not.i338 = icmp ne i8 %call.i157.i337, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %count.0286.i)
  %cmp.i = icmp ult i32 %count.0286.i, 19
  %or.cond.i = select i1 %tobool.not.i338, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %while.body.i339.while.body.i339_crit_edge, label %while.end.i

while.body.i339.while.body.i339_crit_edge:        ; preds = %while.body.i339
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i339

while.end.i:                                      ; preds = %while.body.i339
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i157.i337)
  %cmp5.i = icmp eq i8 %call.i157.i337, 0
  br i1 %cmp5.i, label %while.end.i.if.then.i343_crit_edge, label %while.end.i.if.end24.i_crit_edge

while.end.i.if.end24.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i

while.end.i.if.then.i343_crit_edge:               ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i343

if.then.i343:                                     ; preds = %while.end.i.if.then.i343_crit_edge, %rtl_write_byte.exit.i336.if.then.i343_crit_edge
  %read32_sync.i.i340 = getelementptr inbounds %struct.rtl_priv, ptr %1263, i32 0, i32 13, i32 11
  %1285 = ptrtoint ptr %read32_sync.i.i340 to i32
  call void @__asan_load4_noabort(i32 %1285)
  %1286 = load ptr, ptr %read32_sync.i.i340, align 4
  %call.i158.i341 = tail call i32 %1286(ptr noundef %1263, i32 noundef 1004) #8
  %and.i342 = and i32 %call.i158.i341, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %and.i342)
  %cmp8.not.i = icmp eq i32 %and.i342, 8192
  br i1 %cmp8.not.i, label %if.then.i343.if.end24.i_crit_edge, label %if.then10.i

if.then.i343.if.end24.i_crit_edge:                ; preds = %if.then.i343
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i

if.then10.i:                                      ; preds = %if.then.i343
  %and11.i = and i32 %call.i158.i341, -65281
  %or.i344 = or i32 %and11.i, 8192
  %write32_async.i.i345 = getelementptr inbounds %struct.rtl_priv, ptr %1263, i32 0, i32 13, i32 7
  %1287 = ptrtoint ptr %write32_async.i.i345 to i32
  call void @__asan_load4_noabort(i32 %1287)
  %1288 = load ptr, ptr %write32_async.i.i345, align 4
  tail call void %1288(ptr noundef %1263, i32 noundef 1000, i32 noundef %or.i344) #8
  %1289 = ptrtoint ptr %cfg.i.i327 to i32
  call void @__asan_load4_noabort(i32 %1289)
  %1290 = load ptr, ptr %cfg.i.i327, align 8
  %write_readback.i160.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1290, i32 0, i32 1
  %1291 = ptrtoint ptr %write_readback.i160.i to i32
  call void @__asan_load1_noabort(i32 %1291)
  %1292 = load i8, ptr %write_readback.i160.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1292)
  %tobool.not.i161.i = icmp eq i8 %1292, 0
  br i1 %tobool.not.i161.i, label %if.then10.i.rtl_write_dword.exit.i346_crit_edge, label %if.then.i164.i

if.then10.i.rtl_write_dword.exit.i346_crit_edge:  ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit.i346

if.then.i164.i:                                   ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  %1293 = ptrtoint ptr %read32_sync.i.i340 to i32
  call void @__asan_load4_noabort(i32 %1293)
  %1294 = load ptr, ptr %read32_sync.i.i340, align 4
  %call.i163.i = tail call i32 %1294(ptr noundef %1263, i32 noundef 1000) #8
  br label %rtl_write_dword.exit.i346

rtl_write_dword.exit.i346:                        ; preds = %if.then.i164.i, %if.then10.i.rtl_write_dword.exit.i346_crit_edge
  %1295 = ptrtoint ptr %write16_async.i.i326 to i32
  call void @__asan_load4_noabort(i32 %1295)
  %1296 = load ptr, ptr %write16_async.i.i326, align 4
  tail call void %1296(ptr noundef %1263, i32 noundef 1008, i16 noundef zeroext -3976) #8
  %1297 = ptrtoint ptr %cfg.i.i327 to i32
  call void @__asan_load4_noabort(i32 %1297)
  %1298 = load ptr, ptr %cfg.i.i327, align 8
  %write_readback.i167.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1298, i32 0, i32 1
  %1299 = ptrtoint ptr %write_readback.i167.i to i32
  call void @__asan_load1_noabort(i32 %1299)
  %1300 = load i8, ptr %write_readback.i167.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1300)
  %tobool.not.i168.i = icmp eq i8 %1300, 0
  br i1 %tobool.not.i168.i, label %rtl_write_dword.exit.i346.rtl_write_word.exit172.i_crit_edge, label %if.then.i171.i

rtl_write_dword.exit.i346.rtl_write_word.exit172.i_crit_edge: ; preds = %rtl_write_dword.exit.i346
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit172.i

if.then.i171.i:                                   ; preds = %rtl_write_dword.exit.i346
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i169.i = getelementptr inbounds %struct.rtl_priv, ptr %1263, i32 0, i32 13, i32 10
  %1301 = ptrtoint ptr %read16_sync.i169.i to i32
  call void @__asan_load4_noabort(i32 %1301)
  %1302 = load ptr, ptr %read16_sync.i169.i, align 4
  %call.i170.i = tail call zeroext i16 %1302(ptr noundef %1263, i32 noundef 1008) #8
  br label %rtl_write_word.exit172.i

rtl_write_word.exit172.i:                         ; preds = %if.then.i171.i, %rtl_write_dword.exit.i346.rtl_write_word.exit172.i_crit_edge
  %1303 = ptrtoint ptr %write8_async.i.i333 to i32
  call void @__asan_load4_noabort(i32 %1303)
  %1304 = load ptr, ptr %write8_async.i.i333, align 4
  tail call void %1304(ptr noundef %1263, i32 noundef 1010, i8 noundef zeroext 1) #8
  %1305 = ptrtoint ptr %cfg.i.i327 to i32
  call void @__asan_load4_noabort(i32 %1305)
  %1306 = load ptr, ptr %cfg.i.i327, align 8
  %write_readback.i175.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1306, i32 0, i32 1
  %1307 = ptrtoint ptr %write_readback.i175.i to i32
  call void @__asan_load1_noabort(i32 %1307)
  %1308 = load i8, ptr %write_readback.i175.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1308)
  %tobool.not.i176.i = icmp eq i8 %1308, 0
  br i1 %tobool.not.i176.i, label %rtl_write_word.exit172.i.rtl_write_byte.exit180.i_crit_edge, label %if.then.i179.i

rtl_write_word.exit172.i.rtl_write_byte.exit180.i_crit_edge: ; preds = %rtl_write_word.exit172.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit180.i

if.then.i179.i:                                   ; preds = %rtl_write_word.exit172.i
  call void @__sanitizer_cov_trace_pc() #10
  %1309 = ptrtoint ptr %read8_sync.i154.i to i32
  call void @__asan_load4_noabort(i32 %1309)
  %1310 = load ptr, ptr %read8_sync.i154.i, align 4
  %call.i178.i347 = tail call zeroext i8 %1310(ptr noundef %1263, i32 noundef 1010) #8
  br label %rtl_write_byte.exit180.i

rtl_write_byte.exit180.i:                         ; preds = %if.then.i179.i, %rtl_write_word.exit172.i.rtl_write_byte.exit180.i_crit_edge
  %1311 = ptrtoint ptr %read8_sync.i154.i to i32
  call void @__asan_load4_noabort(i32 %1311)
  %1312 = load ptr, ptr %read8_sync.i154.i, align 4
  %call.i182.i = tail call zeroext i8 %1312(ptr noundef %1263, i32 noundef 1010) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i182.i)
  %tobool15.not287.not.i = icmp eq i8 %call.i182.i, 0
  br i1 %tobool15.not287.not.i, label %rtl_write_byte.exit180.i.if.end24.i_crit_edge, label %rtl_write_byte.exit180.i.while.body20.i_crit_edge

rtl_write_byte.exit180.i.while.body20.i_crit_edge: ; preds = %rtl_write_byte.exit180.i
  br label %while.body20.i

rtl_write_byte.exit180.i.if.end24.i_crit_edge:    ; preds = %rtl_write_byte.exit180.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i

while.body20.i:                                   ; preds = %while.body20.i.while.body20.i_crit_edge, %rtl_write_byte.exit180.i.while.body20.i_crit_edge
  %count.1288.i = phi i32 [ %inc22.i, %while.body20.i.while.body20.i_crit_edge ], [ 0, %rtl_write_byte.exit180.i.while.body20.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1313 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1313(i32 noundef 2147480) #8
  %1314 = ptrtoint ptr %read8_sync.i154.i to i32
  call void @__asan_load4_noabort(i32 %1314)
  %1315 = load ptr, ptr %read8_sync.i154.i, align 4
  %call.i184.i348 = tail call zeroext i8 %1315(ptr noundef %1263, i32 noundef 1010) #8
  %inc22.i = add nuw nsw i32 %count.1288.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i184.i348)
  %tobool15.not.i = icmp ne i8 %call.i184.i348, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %count.1288.i)
  %cmp17.i = icmp ult i32 %count.1288.i, 19
  %or.cond143.i = select i1 %tobool15.not.i, i1 %cmp17.i, i1 false
  br i1 %or.cond143.i, label %while.body20.i.while.body20.i_crit_edge, label %while.body20.i.if.end24.i_crit_edge

while.body20.i.if.end24.i_crit_edge:              ; preds = %while.body20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i

while.body20.i.while.body20.i_crit_edge:          ; preds = %while.body20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body20.i

if.end24.i:                                       ; preds = %while.body20.i.if.end24.i_crit_edge, %rtl_write_byte.exit180.i.if.end24.i_crit_edge, %if.then.i343.if.end24.i_crit_edge, %while.end.i.if.end24.i_crit_edge
  %1316 = ptrtoint ptr %write16_async.i.i326 to i32
  call void @__asan_load4_noabort(i32 %1316)
  %1317 = load ptr, ptr %write16_async.i.i326, align 4
  tail call void %1317(ptr noundef %1263, i32 noundef 1008, i16 noundef zeroext 1804) #8
  %1318 = ptrtoint ptr %cfg.i.i327 to i32
  call void @__asan_load4_noabort(i32 %1318)
  %1319 = load ptr, ptr %cfg.i.i327, align 8
  %write_readback.i187.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1319, i32 0, i32 1
  %1320 = ptrtoint ptr %write_readback.i187.i to i32
  call void @__asan_load1_noabort(i32 %1320)
  %1321 = load i8, ptr %write_readback.i187.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1321)
  %tobool.not.i188.i = icmp eq i8 %1321, 0
  br i1 %tobool.not.i188.i, label %if.end24.i.rtl_write_word.exit192.i_crit_edge, label %if.then.i191.i

if.end24.i.rtl_write_word.exit192.i_crit_edge:    ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit192.i

if.then.i191.i:                                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i189.i = getelementptr inbounds %struct.rtl_priv, ptr %1263, i32 0, i32 13, i32 10
  %1322 = ptrtoint ptr %read16_sync.i189.i to i32
  call void @__asan_load4_noabort(i32 %1322)
  %1323 = load ptr, ptr %read16_sync.i189.i, align 4
  %call.i190.i = tail call zeroext i16 %1323(ptr noundef %1263, i32 noundef 1008) #8
  br label %rtl_write_word.exit192.i

rtl_write_word.exit192.i:                         ; preds = %if.then.i191.i, %if.end24.i.rtl_write_word.exit192.i_crit_edge
  %1324 = ptrtoint ptr %write8_async.i.i333 to i32
  call void @__asan_load4_noabort(i32 %1324)
  %1325 = load ptr, ptr %write8_async.i.i333, align 4
  tail call void %1325(ptr noundef %1263, i32 noundef 1010, i8 noundef zeroext 2) #8
  %1326 = ptrtoint ptr %cfg.i.i327 to i32
  call void @__asan_load4_noabort(i32 %1326)
  %1327 = load ptr, ptr %cfg.i.i327, align 8
  %write_readback.i195.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1327, i32 0, i32 1
  %1328 = ptrtoint ptr %write_readback.i195.i to i32
  call void @__asan_load1_noabort(i32 %1328)
  %1329 = load i8, ptr %write_readback.i195.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1329)
  %tobool.not.i196.i = icmp eq i8 %1329, 0
  br i1 %tobool.not.i196.i, label %rtl_write_word.exit192.i.rtl_write_byte.exit200.i_crit_edge, label %if.then.i199.i

rtl_write_word.exit192.i.rtl_write_byte.exit200.i_crit_edge: ; preds = %rtl_write_word.exit192.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit200.i

if.then.i199.i:                                   ; preds = %rtl_write_word.exit192.i
  call void @__sanitizer_cov_trace_pc() #10
  %1330 = ptrtoint ptr %read8_sync.i154.i to i32
  call void @__asan_load4_noabort(i32 %1330)
  %1331 = load ptr, ptr %read8_sync.i154.i, align 4
  %call.i198.i349 = tail call zeroext i8 %1331(ptr noundef %1263, i32 noundef 1010) #8
  br label %rtl_write_byte.exit200.i

rtl_write_byte.exit200.i:                         ; preds = %if.then.i199.i, %rtl_write_word.exit192.i.rtl_write_byte.exit200.i_crit_edge
  %1332 = ptrtoint ptr %read8_sync.i154.i to i32
  call void @__asan_load4_noabort(i32 %1332)
  %1333 = load ptr, ptr %read8_sync.i154.i, align 4
  %call.i202.i = tail call zeroext i8 %1333(ptr noundef %1263, i32 noundef 1010) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i202.i)
  %tobool28.not289.not.i = icmp eq i8 %call.i202.i, 0
  br i1 %tobool28.not289.not.i, label %rtl_write_byte.exit200.i.if.then40.i_crit_edge, label %rtl_write_byte.exit200.i.while.body33.i_crit_edge

rtl_write_byte.exit200.i.while.body33.i_crit_edge: ; preds = %rtl_write_byte.exit200.i
  br label %while.body33.i

rtl_write_byte.exit200.i.if.then40.i_crit_edge:   ; preds = %rtl_write_byte.exit200.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then40.i

while.body33.i:                                   ; preds = %while.body33.i.while.body33.i_crit_edge, %rtl_write_byte.exit200.i.while.body33.i_crit_edge
  %count.2290.i = phi i32 [ %inc35.i, %while.body33.i.while.body33.i_crit_edge ], [ 0, %rtl_write_byte.exit200.i.while.body33.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1334 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1334(i32 noundef 2147480) #8
  %1335 = ptrtoint ptr %read8_sync.i154.i to i32
  call void @__asan_load4_noabort(i32 %1335)
  %1336 = load ptr, ptr %read8_sync.i154.i, align 4
  %call.i204.i350 = tail call zeroext i8 %1336(ptr noundef %1263, i32 noundef 1010) #8
  %inc35.i = add nuw nsw i32 %count.2290.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i204.i350)
  %tobool28.not.i = icmp ne i8 %call.i204.i350, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %count.2290.i)
  %cmp30.i = icmp ult i32 %count.2290.i, 19
  %or.cond144.i = select i1 %tobool28.not.i, i1 %cmp30.i, i1 false
  br i1 %or.cond144.i, label %while.body33.i.while.body33.i_crit_edge, label %while.end36.i

while.body33.i.while.body33.i_crit_edge:          ; preds = %while.body33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body33.i

while.end36.i:                                    ; preds = %while.body33.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i204.i350)
  %phi.cmp.i = icmp eq i8 %call.i204.i350, 0
  br i1 %phi.cmp.i, label %while.end36.i.if.then40.i_crit_edge, label %while.end36.i.if.end43.i354_crit_edge

while.end36.i.if.end43.i354_crit_edge:            ; preds = %while.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.i354

while.end36.i.if.then40.i_crit_edge:              ; preds = %while.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then40.i

if.then40.i:                                      ; preds = %while.end36.i.if.then40.i_crit_edge, %rtl_write_byte.exit200.i.if.then40.i_crit_edge
  %read32_sync.i205.i = getelementptr inbounds %struct.rtl_priv, ptr %1263, i32 0, i32 13, i32 11
  %1337 = ptrtoint ptr %read32_sync.i205.i to i32
  call void @__asan_load4_noabort(i32 %1337)
  %1338 = load ptr, ptr %read32_sync.i205.i, align 4
  %call.i206.i = tail call i32 %1338(ptr noundef %1263, i32 noundef 1004) #8
  %or42.i = or i32 %call.i206.i, -2147483648
  %write32_async.i207.i = getelementptr inbounds %struct.rtl_priv, ptr %1263, i32 0, i32 13, i32 7
  %1339 = ptrtoint ptr %write32_async.i207.i to i32
  call void @__asan_load4_noabort(i32 %1339)
  %1340 = load ptr, ptr %write32_async.i207.i, align 4
  tail call void %1340(ptr noundef %1263, i32 noundef 1000, i32 noundef %or42.i) #8
  %1341 = ptrtoint ptr %cfg.i.i327 to i32
  call void @__asan_load4_noabort(i32 %1341)
  %1342 = load ptr, ptr %cfg.i.i327, align 8
  %write_readback.i209.i351 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1342, i32 0, i32 1
  %1343 = ptrtoint ptr %write_readback.i209.i351 to i32
  call void @__asan_load1_noabort(i32 %1343)
  %1344 = load i8, ptr %write_readback.i209.i351, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1344)
  %tobool.not.i210.i352 = icmp eq i8 %1344, 0
  br i1 %tobool.not.i210.i352, label %if.then40.i.rtl_write_dword.exit214.i_crit_edge, label %if.then.i213.i

if.then40.i.rtl_write_dword.exit214.i_crit_edge:  ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit214.i

if.then.i213.i:                                   ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #10
  %1345 = ptrtoint ptr %read32_sync.i205.i to i32
  call void @__asan_load4_noabort(i32 %1345)
  %1346 = load ptr, ptr %read32_sync.i205.i, align 4
  %call.i212.i353 = tail call i32 %1346(ptr noundef %1263, i32 noundef 1000) #8
  br label %rtl_write_dword.exit214.i

rtl_write_dword.exit214.i:                        ; preds = %if.then.i213.i, %if.then40.i.rtl_write_dword.exit214.i_crit_edge
  %1347 = ptrtoint ptr %write16_async.i.i326 to i32
  call void @__asan_load4_noabort(i32 %1347)
  %1348 = load ptr, ptr %write16_async.i.i326, align 4
  tail call void %1348(ptr noundef %1263, i32 noundef 1008, i16 noundef zeroext -2292) #8
  %1349 = ptrtoint ptr %cfg.i.i327 to i32
  call void @__asan_load4_noabort(i32 %1349)
  %1350 = load ptr, ptr %cfg.i.i327, align 8
  %write_readback.i217.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1350, i32 0, i32 1
  %1351 = ptrtoint ptr %write_readback.i217.i to i32
  call void @__asan_load1_noabort(i32 %1351)
  %1352 = load i8, ptr %write_readback.i217.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1352)
  %tobool.not.i218.i = icmp eq i8 %1352, 0
  br i1 %tobool.not.i218.i, label %rtl_write_dword.exit214.i.rtl_write_word.exit222.i_crit_edge, label %if.then.i221.i

rtl_write_dword.exit214.i.rtl_write_word.exit222.i_crit_edge: ; preds = %rtl_write_dword.exit214.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit222.i

if.then.i221.i:                                   ; preds = %rtl_write_dword.exit214.i
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i219.i = getelementptr inbounds %struct.rtl_priv, ptr %1263, i32 0, i32 13, i32 10
  %1353 = ptrtoint ptr %read16_sync.i219.i to i32
  call void @__asan_load4_noabort(i32 %1353)
  %1354 = load ptr, ptr %read16_sync.i219.i, align 4
  %call.i220.i = tail call zeroext i16 %1354(ptr noundef %1263, i32 noundef 1008) #8
  br label %rtl_write_word.exit222.i

rtl_write_word.exit222.i:                         ; preds = %if.then.i221.i, %rtl_write_dword.exit214.i.rtl_write_word.exit222.i_crit_edge
  %1355 = ptrtoint ptr %write8_async.i.i333 to i32
  call void @__asan_load4_noabort(i32 %1355)
  %1356 = load ptr, ptr %write8_async.i.i333, align 4
  tail call void %1356(ptr noundef %1263, i32 noundef 1010, i8 noundef zeroext 1) #8
  %1357 = ptrtoint ptr %cfg.i.i327 to i32
  call void @__asan_load4_noabort(i32 %1357)
  %1358 = load ptr, ptr %cfg.i.i327, align 8
  %write_readback.i225.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1358, i32 0, i32 1
  %1359 = ptrtoint ptr %write_readback.i225.i to i32
  call void @__asan_load1_noabort(i32 %1359)
  %1360 = load i8, ptr %write_readback.i225.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1360)
  %tobool.not.i226.i = icmp eq i8 %1360, 0
  br i1 %tobool.not.i226.i, label %rtl_write_word.exit222.i.if.end43.i354_crit_edge, label %if.then.i229.i

rtl_write_word.exit222.i.if.end43.i354_crit_edge: ; preds = %rtl_write_word.exit222.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.i354

if.then.i229.i:                                   ; preds = %rtl_write_word.exit222.i
  call void @__sanitizer_cov_trace_pc() #10
  %1361 = ptrtoint ptr %read8_sync.i154.i to i32
  call void @__asan_load4_noabort(i32 %1361)
  %1362 = load ptr, ptr %read8_sync.i154.i, align 4
  %call.i228.i = tail call zeroext i8 %1362(ptr noundef %1263, i32 noundef 1010) #8
  br label %if.end43.i354

if.end43.i354:                                    ; preds = %if.then.i229.i, %rtl_write_word.exit222.i.if.end43.i354_crit_edge, %while.end36.i.if.end43.i354_crit_edge
  %1363 = ptrtoint ptr %read8_sync.i154.i to i32
  call void @__asan_load4_noabort(i32 %1363)
  %1364 = load ptr, ptr %read8_sync.i154.i, align 4
  %call.i232.i = tail call zeroext i8 %1364(ptr noundef %1263, i32 noundef 1010) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i232.i)
  %tobool47.not292.not.i = icmp eq i8 %call.i232.i, 0
  br i1 %tobool47.not292.not.i, label %if.end43.i354.while.end55.i_crit_edge, label %if.end43.i354.while.body52.i_crit_edge

if.end43.i354.while.body52.i_crit_edge:           ; preds = %if.end43.i354
  br label %while.body52.i

if.end43.i354.while.end55.i_crit_edge:            ; preds = %if.end43.i354
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end55.i

while.body52.i:                                   ; preds = %while.body52.i.while.body52.i_crit_edge, %if.end43.i354.while.body52.i_crit_edge
  %count.3293.i = phi i32 [ %inc54.i, %while.body52.i.while.body52.i_crit_edge ], [ 0, %if.end43.i354.while.body52.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1365 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1365(i32 noundef 2147480) #8
  %1366 = ptrtoint ptr %read8_sync.i154.i to i32
  call void @__asan_load4_noabort(i32 %1366)
  %1367 = load ptr, ptr %read8_sync.i154.i, align 4
  %call.i234.i = tail call zeroext i8 %1367(ptr noundef %1263, i32 noundef 1010) #8
  %inc54.i = add nuw nsw i32 %count.3293.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i234.i)
  %tobool47.not.i = icmp ne i8 %call.i234.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %count.3293.i)
  %cmp49.i = icmp ult i32 %count.3293.i, 19
  %or.cond145.i = select i1 %tobool47.not.i, i1 %cmp49.i, i1 false
  br i1 %or.cond145.i, label %while.body52.i.while.body52.i_crit_edge, label %while.body52.i.while.end55.i_crit_edge

while.body52.i.while.end55.i_crit_edge:           ; preds = %while.body52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end55.i

while.body52.i.while.body52.i_crit_edge:          ; preds = %while.body52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body52.i

while.end55.i:                                    ; preds = %while.body52.i.while.end55.i_crit_edge, %if.end43.i354.while.end55.i_crit_edge
  %1368 = ptrtoint ptr %write16_async.i.i326 to i32
  call void @__asan_load4_noabort(i32 %1368)
  %1369 = load ptr, ptr %write16_async.i.i326, align 4
  tail call void %1369(ptr noundef %1263, i32 noundef 1008, i16 noundef zeroext 1816) #8
  %1370 = ptrtoint ptr %cfg.i.i327 to i32
  call void @__asan_load4_noabort(i32 %1370)
  %1371 = load ptr, ptr %cfg.i.i327, align 8
  %write_readback.i237.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1371, i32 0, i32 1
  %1372 = ptrtoint ptr %write_readback.i237.i to i32
  call void @__asan_load1_noabort(i32 %1372)
  %1373 = load i8, ptr %write_readback.i237.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1373)
  %tobool.not.i238.i = icmp eq i8 %1373, 0
  br i1 %tobool.not.i238.i, label %while.end55.i.rtl_write_word.exit242.i_crit_edge, label %if.then.i241.i

while.end55.i.rtl_write_word.exit242.i_crit_edge: ; preds = %while.end55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit242.i

if.then.i241.i:                                   ; preds = %while.end55.i
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i239.i = getelementptr inbounds %struct.rtl_priv, ptr %1263, i32 0, i32 13, i32 10
  %1374 = ptrtoint ptr %read16_sync.i239.i to i32
  call void @__asan_load4_noabort(i32 %1374)
  %1375 = load ptr, ptr %read16_sync.i239.i, align 4
  %call.i240.i = tail call zeroext i16 %1375(ptr noundef %1263, i32 noundef 1008) #8
  br label %rtl_write_word.exit242.i

rtl_write_word.exit242.i:                         ; preds = %if.then.i241.i, %while.end55.i.rtl_write_word.exit242.i_crit_edge
  %1376 = ptrtoint ptr %write8_async.i.i333 to i32
  call void @__asan_load4_noabort(i32 %1376)
  %1377 = load ptr, ptr %write8_async.i.i333, align 4
  tail call void %1377(ptr noundef %1263, i32 noundef 1010, i8 noundef zeroext 2) #8
  %1378 = ptrtoint ptr %cfg.i.i327 to i32
  call void @__asan_load4_noabort(i32 %1378)
  %1379 = load ptr, ptr %cfg.i.i327, align 8
  %write_readback.i245.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1379, i32 0, i32 1
  %1380 = ptrtoint ptr %write_readback.i245.i to i32
  call void @__asan_load1_noabort(i32 %1380)
  %1381 = load i8, ptr %write_readback.i245.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1381)
  %tobool.not.i246.i = icmp eq i8 %1381, 0
  br i1 %tobool.not.i246.i, label %rtl_write_word.exit242.i.rtl_write_byte.exit250.i_crit_edge, label %if.then.i249.i

rtl_write_word.exit242.i.rtl_write_byte.exit250.i_crit_edge: ; preds = %rtl_write_word.exit242.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit250.i

if.then.i249.i:                                   ; preds = %rtl_write_word.exit242.i
  call void @__sanitizer_cov_trace_pc() #10
  %1382 = ptrtoint ptr %read8_sync.i154.i to i32
  call void @__asan_load4_noabort(i32 %1382)
  %1383 = load ptr, ptr %read8_sync.i154.i, align 4
  %call.i248.i = tail call zeroext i8 %1383(ptr noundef %1263, i32 noundef 1010) #8
  br label %rtl_write_byte.exit250.i

rtl_write_byte.exit250.i:                         ; preds = %if.then.i249.i, %rtl_write_word.exit242.i.rtl_write_byte.exit250.i_crit_edge
  %1384 = ptrtoint ptr %read8_sync.i154.i to i32
  call void @__asan_load4_noabort(i32 %1384)
  %1385 = load ptr, ptr %read8_sync.i154.i, align 4
  %call.i252.i = tail call zeroext i8 %1385(ptr noundef %1263, i32 noundef 1010) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i252.i)
  %tobool59.not294.not.i = icmp eq i8 %call.i252.i, 0
  br i1 %tobool59.not294.not.i, label %rtl_write_byte.exit250.i.if.then73.i_crit_edge, label %rtl_write_byte.exit250.i.while.body64.i_crit_edge

rtl_write_byte.exit250.i.while.body64.i_crit_edge: ; preds = %rtl_write_byte.exit250.i
  br label %while.body64.i

rtl_write_byte.exit250.i.if.then73.i_crit_edge:   ; preds = %rtl_write_byte.exit250.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then73.i

while.body64.i:                                   ; preds = %while.body64.i.while.body64.i_crit_edge, %rtl_write_byte.exit250.i.while.body64.i_crit_edge
  %count.4295.i = phi i32 [ %inc66.i, %while.body64.i.while.body64.i_crit_edge ], [ 0, %rtl_write_byte.exit250.i.while.body64.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1386 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1386(i32 noundef 2147480) #8
  %1387 = ptrtoint ptr %read8_sync.i154.i to i32
  call void @__asan_load4_noabort(i32 %1387)
  %1388 = load ptr, ptr %read8_sync.i154.i, align 4
  %call.i254.i = tail call zeroext i8 %1388(ptr noundef %1263, i32 noundef 1010) #8
  %inc66.i = add nuw nsw i32 %count.4295.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i254.i)
  %tobool59.not.i = icmp ne i8 %call.i254.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %count.4295.i)
  %cmp61.i = icmp ult i32 %count.4295.i, 19
  %or.cond146.i = select i1 %tobool59.not.i, i1 %cmp61.i, i1 false
  br i1 %or.cond146.i, label %while.body64.i.while.body64.i_crit_edge, label %while.end67.i

while.body64.i.while.body64.i_crit_edge:          ; preds = %while.body64.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body64.i

while.end67.i:                                    ; preds = %while.body64.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i254.i)
  %phi.cmp299.i = icmp eq i8 %call.i254.i, 0
  %support_backdoor.i = getelementptr inbounds %struct.rtl_priv, ptr %1263, i32 0, i32 21, i32 6
  %1389 = ptrtoint ptr %support_backdoor.i to i32
  call void @__asan_load1_noabort(i32 %1389)
  %1390 = load i8, ptr %support_backdoor.i, align 2, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1390)
  %tobool68.not.i = icmp ne i8 %1390, 0
  %or.cond147.i = select i1 %tobool68.not.i, i1 true, i1 %phi.cmp299.i
  br i1 %or.cond147.i, label %while.end67.i.if.then73.i_crit_edge, label %while.end67.i.if.end77.i_crit_edge

while.end67.i.if.end77.i_crit_edge:               ; preds = %while.end67.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77.i

while.end67.i.if.then73.i_crit_edge:              ; preds = %while.end67.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then73.i

if.then73.i:                                      ; preds = %while.end67.i.if.then73.i_crit_edge, %rtl_write_byte.exit250.i.if.then73.i_crit_edge
  %read32_sync.i255.i = getelementptr inbounds %struct.rtl_priv, ptr %1263, i32 0, i32 13, i32 11
  %1391 = ptrtoint ptr %read32_sync.i255.i to i32
  call void @__asan_load4_noabort(i32 %1391)
  %1392 = load ptr, ptr %read32_sync.i255.i, align 4
  %call.i256.i = tail call i32 %1392(ptr noundef %1263, i32 noundef 1004) #8
  %or76.i = or i32 %call.i256.i, 6144
  %write32_async.i257.i = getelementptr inbounds %struct.rtl_priv, ptr %1263, i32 0, i32 13, i32 7
  %1393 = ptrtoint ptr %write32_async.i257.i to i32
  call void @__asan_load4_noabort(i32 %1393)
  %1394 = load ptr, ptr %write32_async.i257.i, align 4
  tail call void %1394(ptr noundef %1263, i32 noundef 1000, i32 noundef %or76.i) #8
  %1395 = ptrtoint ptr %cfg.i.i327 to i32
  call void @__asan_load4_noabort(i32 %1395)
  %1396 = load ptr, ptr %cfg.i.i327, align 8
  %write_readback.i259.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1396, i32 0, i32 1
  %1397 = ptrtoint ptr %write_readback.i259.i to i32
  call void @__asan_load1_noabort(i32 %1397)
  %1398 = load i8, ptr %write_readback.i259.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1398)
  %tobool.not.i260.i = icmp eq i8 %1398, 0
  br i1 %tobool.not.i260.i, label %if.then73.i.rtl_write_dword.exit264.i_crit_edge, label %if.then.i263.i

if.then73.i.rtl_write_dword.exit264.i_crit_edge:  ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit264.i

if.then.i263.i:                                   ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #10
  %1399 = ptrtoint ptr %read32_sync.i255.i to i32
  call void @__asan_load4_noabort(i32 %1399)
  %1400 = load ptr, ptr %read32_sync.i255.i, align 4
  %call.i262.i = tail call i32 %1400(ptr noundef %1263, i32 noundef 1000) #8
  br label %rtl_write_dword.exit264.i

rtl_write_dword.exit264.i:                        ; preds = %if.then.i263.i, %if.then73.i.rtl_write_dword.exit264.i_crit_edge
  %1401 = ptrtoint ptr %write16_async.i.i326 to i32
  call void @__asan_load4_noabort(i32 %1401)
  %1402 = load ptr, ptr %write16_async.i.i326, align 4
  tail call void %1402(ptr noundef %1263, i32 noundef 1008, i16 noundef zeroext -2280) #8
  %1403 = ptrtoint ptr %cfg.i.i327 to i32
  call void @__asan_load4_noabort(i32 %1403)
  %1404 = load ptr, ptr %cfg.i.i327, align 8
  %write_readback.i267.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1404, i32 0, i32 1
  %1405 = ptrtoint ptr %write_readback.i267.i to i32
  call void @__asan_load1_noabort(i32 %1405)
  %1406 = load i8, ptr %write_readback.i267.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1406)
  %tobool.not.i268.i = icmp eq i8 %1406, 0
  br i1 %tobool.not.i268.i, label %rtl_write_dword.exit264.i.rtl_write_word.exit272.i_crit_edge, label %if.then.i271.i

rtl_write_dword.exit264.i.rtl_write_word.exit272.i_crit_edge: ; preds = %rtl_write_dword.exit264.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit272.i

if.then.i271.i:                                   ; preds = %rtl_write_dword.exit264.i
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i269.i = getelementptr inbounds %struct.rtl_priv, ptr %1263, i32 0, i32 13, i32 10
  %1407 = ptrtoint ptr %read16_sync.i269.i to i32
  call void @__asan_load4_noabort(i32 %1407)
  %1408 = load ptr, ptr %read16_sync.i269.i, align 4
  %call.i270.i = tail call zeroext i16 %1408(ptr noundef %1263, i32 noundef 1008) #8
  br label %rtl_write_word.exit272.i

rtl_write_word.exit272.i:                         ; preds = %if.then.i271.i, %rtl_write_dword.exit264.i.rtl_write_word.exit272.i_crit_edge
  %1409 = ptrtoint ptr %write8_async.i.i333 to i32
  call void @__asan_load4_noabort(i32 %1409)
  %1410 = load ptr, ptr %write8_async.i.i333, align 4
  tail call void %1410(ptr noundef %1263, i32 noundef 1010, i8 noundef zeroext 1) #8
  %1411 = ptrtoint ptr %cfg.i.i327 to i32
  call void @__asan_load4_noabort(i32 %1411)
  %1412 = load ptr, ptr %cfg.i.i327, align 8
  %write_readback.i275.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1412, i32 0, i32 1
  %1413 = ptrtoint ptr %write_readback.i275.i to i32
  call void @__asan_load1_noabort(i32 %1413)
  %1414 = load i8, ptr %write_readback.i275.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1414)
  %tobool.not.i276.i = icmp eq i8 %1414, 0
  br i1 %tobool.not.i276.i, label %rtl_write_word.exit272.i.if.end77.i_crit_edge, label %if.then.i279.i

rtl_write_word.exit272.i.if.end77.i_crit_edge:    ; preds = %rtl_write_word.exit272.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77.i

if.then.i279.i:                                   ; preds = %rtl_write_word.exit272.i
  call void @__sanitizer_cov_trace_pc() #10
  %1415 = ptrtoint ptr %read8_sync.i154.i to i32
  call void @__asan_load4_noabort(i32 %1415)
  %1416 = load ptr, ptr %read8_sync.i154.i, align 4
  %call.i278.i = tail call zeroext i8 %1416(ptr noundef %1263, i32 noundef 1010) #8
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.then.i279.i, %rtl_write_word.exit272.i.if.end77.i_crit_edge, %while.end67.i.if.end77.i_crit_edge
  %1417 = ptrtoint ptr %read8_sync.i154.i to i32
  call void @__asan_load4_noabort(i32 %1417)
  %1418 = load ptr, ptr %read8_sync.i154.i, align 4
  %call.i282.i = tail call zeroext i8 %1418(ptr noundef %1263, i32 noundef 1010) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i282.i)
  %tobool81.not297.not.i = icmp eq i8 %call.i282.i, 0
  br i1 %tobool81.not297.not.i, label %if.end77.i._rtl92ee_enable_aspm_back_door.exit_crit_edge, label %if.end77.i.while.body86.i_crit_edge

if.end77.i.while.body86.i_crit_edge:              ; preds = %if.end77.i
  br label %while.body86.i

if.end77.i._rtl92ee_enable_aspm_back_door.exit_crit_edge: ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ee_enable_aspm_back_door.exit

while.body86.i:                                   ; preds = %while.body86.i.while.body86.i_crit_edge, %if.end77.i.while.body86.i_crit_edge
  %count.5298.i = phi i32 [ %inc88.i, %while.body86.i.while.body86.i_crit_edge ], [ 0, %if.end77.i.while.body86.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1419 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1419(i32 noundef 2147480) #8
  %1420 = ptrtoint ptr %read8_sync.i154.i to i32
  call void @__asan_load4_noabort(i32 %1420)
  %1421 = load ptr, ptr %read8_sync.i154.i, align 4
  %call.i284.i = tail call zeroext i8 %1421(ptr noundef %1263, i32 noundef 1010) #8
  %inc88.i = add nuw nsw i32 %count.5298.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i284.i)
  %tobool81.not.i = icmp ne i8 %call.i284.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %count.5298.i)
  %cmp83.i = icmp ult i32 %count.5298.i, 19
  %or.cond148.i = select i1 %tobool81.not.i, i1 %cmp83.i, i1 false
  br i1 %or.cond148.i, label %while.body86.i.while.body86.i_crit_edge, label %while.body86.i._rtl92ee_enable_aspm_back_door.exit_crit_edge

while.body86.i._rtl92ee_enable_aspm_back_door.exit_crit_edge: ; preds = %while.body86.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ee_enable_aspm_back_door.exit

while.body86.i.while.body86.i_crit_edge:          ; preds = %while.body86.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body86.i

_rtl92ee_enable_aspm_back_door.exit:              ; preds = %while.body86.i._rtl92ee_enable_aspm_back_door.exit_crit_edge, %if.end77.i._rtl92ee_enable_aspm_back_door.exit_crit_edge
  %1422 = ptrtoint ptr %intf_ops to i32
  call void @__asan_load4_noabort(i32 %1422)
  %1423 = load ptr, ptr %intf_ops, align 4
  %enable_aspm = getelementptr inbounds %struct.rtl_intf_ops, ptr %1423, i32 0, i32 9
  %1424 = ptrtoint ptr %enable_aspm to i32
  call void @__asan_load4_noabort(i32 %1424)
  %1425 = load ptr, ptr %enable_aspm, align 4
  tail call void %1425(ptr noundef %hw) #8
  %1426 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1426)
  %1427 = load ptr, ptr %priv, align 8
  %cfg.i356 = getelementptr inbounds %struct.rtl_priv, ptr %1427, i32 0, i32 32
  %1428 = ptrtoint ptr %cfg.i356 to i32
  call void @__asan_load4_noabort(i32 %1428)
  %1429 = load ptr, ptr %cfg.i356, align 8
  %ops.i357 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1429, i32 0, i32 4
  %1430 = ptrtoint ptr %ops.i357 to i32
  call void @__asan_load4_noabort(i32 %1430)
  %1431 = load ptr, ptr %ops.i357, align 4
  %get_btc_status.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1431, i32 0, i32 66
  %1432 = ptrtoint ptr %get_btc_status.i to i32
  call void @__asan_load4_noabort(i32 %1432)
  %1433 = load ptr, ptr %get_btc_status.i, align 4
  %call.i358 = tail call zeroext i1 %1433() #8
  br i1 %call.i358, label %if.then.i359, label %_rtl92ee_enable_aspm_back_door.exit.rtl92ee_bt_hw_init.exit_crit_edge

_rtl92ee_enable_aspm_back_door.exit.rtl92ee_bt_hw_init.exit_crit_edge: ; preds = %_rtl92ee_enable_aspm_back_door.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl92ee_bt_hw_init.exit

if.then.i359:                                     ; preds = %_rtl92ee_enable_aspm_back_door.exit
  call void @__sanitizer_cov_trace_pc() #10
  %btcoexist.i = getelementptr inbounds %struct.rtl_priv, ptr %1427, i32 0, i32 49
  %1434 = ptrtoint ptr %btcoexist.i to i32
  call void @__asan_load4_noabort(i32 %1434)
  %1435 = load ptr, ptr %btcoexist.i, align 8
  %btc_init_hw_config.i = getelementptr inbounds %struct.rtl_btc_ops, ptr %1435, i32 0, i32 5
  %1436 = ptrtoint ptr %btc_init_hw_config.i to i32
  call void @__asan_load4_noabort(i32 %1436)
  %1437 = load ptr, ptr %btc_init_hw_config.i, align 4
  tail call void %1437(ptr noundef %1427) #8
  br label %rtl92ee_bt_hw_init.exit

rtl92ee_bt_hw_init.exit:                          ; preds = %if.then.i359, %_rtl92ee_enable_aspm_back_door.exit.rtl92ee_bt_hw_init.exit_crit_edge
  %1438 = ptrtoint ptr %being_init_adapter to i32
  call void @__asan_store1_noabort(i32 %1438)
  store i8 0, ptr %being_init_adapter, align 1
  %1439 = ptrtoint ptr %rfpwr_state to i32
  call void @__asan_load4_noabort(i32 %1439)
  %1440 = load i32, ptr %rfpwr_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1440)
  %cmp60 = icmp eq i32 %1440, 0
  br i1 %cmp60, label %if.then62, label %rtl92ee_bt_hw_init.exit.if.end68_crit_edge

rtl92ee_bt_hw_init.exit.if.end68_crit_edge:       ; preds = %rtl92ee_bt_hw_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

if.then62:                                        ; preds = %rtl92ee_bt_hw_init.exit
  %iqk_initialized = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 31
  %1441 = ptrtoint ptr %iqk_initialized to i32
  call void @__asan_load1_noabort(i32 %1441)
  %1442 = load i8, ptr %iqk_initialized, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1442)
  %tobool63.not = icmp eq i8 %1442, 0
  br i1 %tobool63.not, label %if.else65, label %if.then64

if.then64:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rtl92ee_phy_iq_calibrate(ptr noundef %hw, i1 noundef zeroext true) #8
  br label %if.end68

if.else65:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rtl92ee_phy_iq_calibrate(ptr noundef %hw, i1 noundef zeroext false) #8
  %1443 = ptrtoint ptr %iqk_initialized to i32
  call void @__asan_store1_noabort(i32 %1443)
  store i8 1, ptr %iqk_initialized, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.else65, %if.then64, %rtl92ee_bt_hw_init.exit.if.end68_crit_edge
  %rfpath_rx_enable = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 32
  %1444 = ptrtoint ptr %rfpath_rx_enable to i32
  call void @__asan_store1_noabort(i32 %1444)
  store i8 1, ptr %rfpath_rx_enable, align 1
  %rf_type = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 4
  %1445 = ptrtoint ptr %rf_type to i32
  call void @__asan_load1_noabort(i32 %1445)
  %1446 = load i8, ptr %rf_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1446)
  %cmp71 = icmp eq i8 %1446, 2
  br i1 %cmp71, label %if.then73, label %if.end68.if.end76_crit_edge

if.end68.if.end76_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

if.then73:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx75 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 32, i32 1
  %1447 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store1_noabort(i32 %1447)
  store i8 1, ptr %arrayidx75, align 1
  br label %if.end76

if.end76:                                         ; preds = %if.then73, %if.end68.if.end76_crit_edge
  %call77 = call i32 @efuse_one_byte_read(ptr noundef %hw, i16 noundef zeroext 506, ptr noundef nonnull %tmp_u1b) #8
  %1448 = ptrtoint ptr %tmp_u1b to i32
  call void @__asan_load1_noabort(i32 %1448)
  %1449 = load i8, ptr %tmp_u1b, align 1
  %1450 = and i8 %1449, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1450)
  %tobool80.not = icmp eq i8 %1450, 0
  br i1 %tobool80.not, label %if.then81, label %if.end76.if.end82_crit_edge

if.end76.if.end82_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

if.then81:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  %1451 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1451)
  %1452 = load ptr, ptr %priv, align 8
  %cfg.i362 = getelementptr inbounds %struct.rtl_priv, ptr %1452, i32 0, i32 32
  %1453 = ptrtoint ptr %cfg.i362 to i32
  call void @__asan_load4_noabort(i32 %1453)
  %1454 = load ptr, ptr %cfg.i362, align 8
  %ops.i363 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1454, i32 0, i32 4
  %1455 = ptrtoint ptr %ops.i363 to i32
  call void @__asan_load4_noabort(i32 %1455)
  %1456 = load ptr, ptr %ops.i363, align 4
  %set_rfreg.i364 = getelementptr inbounds %struct.rtl_hal_ops, ptr %1456, i32 0, i32 48
  %1457 = ptrtoint ptr %set_rfreg.i364 to i32
  call void @__asan_load4_noabort(i32 %1457)
  %1458 = load ptr, ptr %set_rfreg.i364, align 4
  call void %1458(ptr noundef %hw, i32 noundef 0, i32 noundef 21, i32 noundef 15, i32 noundef 5) #8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.14) #8
  br label %if.end82

if.end82:                                         ; preds = %if.then81, %if.end76.if.end82_crit_edge
  %1459 = ptrtoint ptr %tmp_u1b to i32
  call void @__asan_load1_noabort(i32 %1459)
  %1460 = load i8, ptr %tmp_u1b, align 1
  %1461 = and i8 %1460, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1461)
  %tobool85.not = icmp eq i8 %1461, 0
  br i1 %tobool85.not, label %land.lhs.true86, label %if.end82.if.end92_crit_edge

if.end82.if.end92_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

land.lhs.true86:                                  ; preds = %if.end82
  %1462 = ptrtoint ptr %rf_type to i32
  call void @__asan_load1_noabort(i32 %1462)
  %1463 = load i8, ptr %rf_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1463)
  %cmp89 = icmp eq i8 %1463, 2
  br i1 %cmp89, label %if.then91, label %land.lhs.true86.if.end92_crit_edge

land.lhs.true86.if.end92_crit_edge:               ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.then91:                                        ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #10
  %1464 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1464)
  %1465 = load ptr, ptr %priv, align 8
  %cfg.i366 = getelementptr inbounds %struct.rtl_priv, ptr %1465, i32 0, i32 32
  %1466 = ptrtoint ptr %cfg.i366 to i32
  call void @__asan_load4_noabort(i32 %1466)
  %1467 = load ptr, ptr %cfg.i366, align 8
  %ops.i367 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1467, i32 0, i32 4
  %1468 = ptrtoint ptr %ops.i367 to i32
  call void @__asan_load4_noabort(i32 %1468)
  %1469 = load ptr, ptr %ops.i367, align 4
  %set_rfreg.i368 = getelementptr inbounds %struct.rtl_hal_ops, ptr %1469, i32 0, i32 48
  %1470 = ptrtoint ptr %set_rfreg.i368 to i32
  call void @__asan_load4_noabort(i32 %1470)
  %1471 = load ptr, ptr %set_rfreg.i368, align 4
  call void %1471(ptr noundef %hw, i32 noundef 1, i32 noundef 21, i32 noundef 15, i32 noundef 5) #8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.15) #8
  br label %if.end92

if.end92:                                         ; preds = %if.then91, %land.lhs.true86.if.end92_crit_edge, %if.end82.if.end92_crit_edge
  %1472 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %1472)
  %1473 = load ptr, ptr %write8_async.i, align 4
  call void %1473(ptr noundef %1, i32 noundef 1618, i8 noundef zeroext -21) #8
  %1474 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %1474)
  %1475 = load ptr, ptr %cfg.i, align 8
  %write_readback.i371 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1475, i32 0, i32 1
  %1476 = ptrtoint ptr %write_readback.i371 to i32
  call void @__asan_load1_noabort(i32 %1476)
  %1477 = load i8, ptr %write_readback.i371, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1477)
  %tobool.not.i372 = icmp eq i8 %1477, 0
  br i1 %tobool.not.i372, label %if.end92.rtl_write_byte.exit377_crit_edge, label %if.then.i375

if.end92.rtl_write_byte.exit377_crit_edge:        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit377

if.then.i375:                                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  %1478 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %1478)
  %1479 = load ptr, ptr %read8_sync.i, align 4
  %call.i374 = call zeroext i8 %1479(ptr noundef %1, i32 noundef 1618) #8
  br label %rtl_write_byte.exit377

rtl_write_byte.exit377:                           ; preds = %if.then.i375, %if.end92.rtl_write_byte.exit377_crit_edge
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %1480 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %1480)
  %1481 = load ptr, ptr %read32_sync.i, align 4
  %call.i378 = call i32 %1481(ptr noundef %1, i32 noundef 16) #8
  %1482 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %1482)
  %1483 = load ptr, ptr %write8_async.i, align 4
  call void %1483(ptr noundef %1, i32 noundef 20, i8 noundef zeroext 117) #8
  %1484 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %1484)
  %1485 = load ptr, ptr %cfg.i, align 8
  %write_readback.i381 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1485, i32 0, i32 1
  %1486 = ptrtoint ptr %write_readback.i381 to i32
  call void @__asan_load1_noabort(i32 %1486)
  %1487 = load i8, ptr %write_readback.i381, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1487)
  %tobool.not.i382 = icmp eq i8 %1487, 0
  br i1 %tobool.not.i382, label %rtl_write_byte.exit377.rtl_write_byte.exit387_crit_edge, label %if.then.i385

rtl_write_byte.exit377.rtl_write_byte.exit387_crit_edge: ; preds = %rtl_write_byte.exit377
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit387

if.then.i385:                                     ; preds = %rtl_write_byte.exit377
  call void @__sanitizer_cov_trace_pc() #10
  %1488 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %1488)
  %1489 = load ptr, ptr %read8_sync.i, align 4
  %call.i384 = call zeroext i8 %1489(ptr noundef %1, i32 noundef 20) #8
  br label %rtl_write_byte.exit387

rtl_write_byte.exit387:                           ; preds = %if.then.i385, %rtl_write_byte.exit377.rtl_write_byte.exit387_crit_edge
  %and94 = and i32 %call.i378, -1044481
  %or95 = or i32 %and94, 516096
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %1490 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %1490)
  %1491 = load ptr, ptr %write32_async.i, align 4
  call void %1491(ptr noundef %1, i32 noundef 16, i32 noundef %or95) #8
  %1492 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %1492)
  %1493 = load ptr, ptr %cfg.i, align 8
  %write_readback.i389 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1493, i32 0, i32 1
  %1494 = ptrtoint ptr %write_readback.i389 to i32
  call void @__asan_load1_noabort(i32 %1494)
  %1495 = load i8, ptr %write_readback.i389, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1495)
  %tobool.not.i390 = icmp eq i8 %1495, 0
  br i1 %tobool.not.i390, label %rtl_write_byte.exit387.rtl_write_dword.exit_crit_edge, label %if.then.i393

rtl_write_byte.exit387.rtl_write_dword.exit_crit_edge: ; preds = %rtl_write_byte.exit387
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit

if.then.i393:                                     ; preds = %rtl_write_byte.exit387
  call void @__sanitizer_cov_trace_pc() #10
  %1496 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %1496)
  %1497 = load ptr, ptr %read32_sync.i, align 4
  %call.i392 = call i32 %1497(ptr noundef %1, i32 noundef 16) #8
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i393, %rtl_write_byte.exit387.rtl_write_dword.exit_crit_edge
  call void @rtl92ee_dm_init(ptr noundef %hw) #8
  %1498 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %1498)
  %1499 = load ptr, ptr %write32_async.i, align 4
  call void %1499(ptr noundef %1, i32 noundef 1276, i32 noundef 0) #8
  %1500 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %1500)
  %1501 = load ptr, ptr %cfg.i, align 8
  %write_readback.i397 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1501, i32 0, i32 1
  %1502 = ptrtoint ptr %write_readback.i397 to i32
  call void @__asan_load1_noabort(i32 %1502)
  %1503 = load i8, ptr %write_readback.i397, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1503)
  %tobool.not.i398 = icmp eq i8 %1503, 0
  br i1 %tobool.not.i398, label %rtl_write_dword.exit.rtl_write_dword.exit403_crit_edge, label %if.then.i401

rtl_write_dword.exit.rtl_write_dword.exit403_crit_edge: ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit403

if.then.i401:                                     ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #10
  %1504 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %1504)
  %1505 = load ptr, ptr %read32_sync.i, align 4
  %call.i400 = call i32 %1505(ptr noundef %1, i32 noundef 1276) #8
  br label %rtl_write_dword.exit403

rtl_write_dword.exit403:                          ; preds = %if.then.i401, %rtl_write_dword.exit.rtl_write_dword.exit403_crit_edge
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.16, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %rtl_write_dword.exit403, %if.then33, %do.end
  %retval.0 = phi i32 [ 1, %if.then33 ], [ 0, %rtl_write_dword.exit403 ], [ 1, %do.end ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp_u1b) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl92ee_download_fw(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92ee_phy_mac_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92ee_phy_bb_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92ee_phy_rf_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_cam_reset_all_entry(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ee_bt_hw_init(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %get_btc_status = getelementptr inbounds %struct.rtl_hal_ops, ptr %5, i32 0, i32 66
  %6 = ptrtoint ptr %get_btc_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_btc_status, align 4
  %call = tail call zeroext i1 %7() #8
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %btcoexist = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49
  %8 = ptrtoint ptr %btcoexist to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %btcoexist, align 8
  %btc_init_hw_config = getelementptr inbounds %struct.rtl_btc_ops, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %btc_init_hw_config to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %btc_init_hw_config, align 4
  tail call void %11(ptr noundef %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ee_phy_iq_calibrate(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efuse_one_byte_read(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ee_dm_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ee_set_check_bssid(ptr noundef %hw, i1 noundef zeroext %check_bssid) local_unnamed_addr #0 align 64 {
entry:
  %reg_rcr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_rcr) #8
  %receive_config = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 3
  %2 = ptrtoint ptr %receive_config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %receive_config, align 4
  %rfpwr_state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 24
  %4 = ptrtoint ptr %rfpwr_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rfpwr_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %check_bssid, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %or = or i32 %3, 192
  %6 = ptrtoint ptr %reg_rcr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %reg_rcr, align 4
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %7 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cfg, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %set_hw_reg = getelementptr inbounds %struct.rtl_hal_ops, ptr %10, i32 0, i32 20
  %11 = ptrtoint ptr %set_hw_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_hw_reg, align 4
  call void %12(ptr noundef %hw, i8 noundef zeroext 44, ptr noundef nonnull %reg_rcr) #8
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i = getelementptr inbounds %struct.rtl_priv, ptr %14, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %reg_bcn_ctrl_val.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg_bcn_ctrl_val.i, align 4
  %and.i = and i32 %16, -17
  store i32 %and.i, ptr %reg_bcn_ctrl_val.i, align 4
  %conv6.i = trunc i32 %and.i to i8
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %14, i32 0, i32 13, i32 5
  %17 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write8_async.i.i, align 4
  call void %18(ptr noundef %14, i32 noundef 1360, i8 noundef zeroext %conv6.i) #8
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %14, i32 0, i32 32
  %19 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %write_readback.i.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i.i, label %if.then3.cleanup_crit_edge, label %if.then.i.i

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %14, i32 0, i32 13, i32 9
  %23 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = call zeroext i8 %24(ptr noundef %14, i32 noundef 1360) #8
  br label %cleanup

if.else:                                          ; preds = %if.end
  %and = and i32 %3, -193
  %25 = ptrtoint ptr %reg_rcr to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and, ptr %reg_rcr, align 4
  %reg_bcn_ctrl_val.i18 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %26 = ptrtoint ptr %reg_bcn_ctrl_val.i18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %reg_bcn_ctrl_val.i18, align 4
  %or.i = or i32 %27, 16
  store i32 %or.i, ptr %reg_bcn_ctrl_val.i18, align 4
  %conv6.i19 = trunc i32 %or.i to i8
  %write8_async.i.i20 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %28 = ptrtoint ptr %write8_async.i.i20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write8_async.i.i20, align 4
  tail call void %29(ptr noundef %1, i32 noundef 1360, i8 noundef zeroext %conv6.i19) #8
  %cfg.i.i21 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %30 = ptrtoint ptr %cfg.i.i21 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cfg.i.i21, align 8
  %write_readback.i.i22 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %write_readback.i.i22 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %write_readback.i.i22, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i.i23 = icmp eq i8 %33, 0
  br i1 %tobool.not.i.i23, label %if.else._rtl92ee_set_bcn_ctrl_reg.exit27_crit_edge, label %if.then.i.i26

if.else._rtl92ee_set_bcn_ctrl_reg.exit27_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ee_set_bcn_ctrl_reg.exit27

if.then.i.i26:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i24 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %34 = ptrtoint ptr %read8_sync.i.i24 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read8_sync.i.i24, align 4
  %call.i.i25 = tail call zeroext i8 %35(ptr noundef %1, i32 noundef 1360) #8
  br label %_rtl92ee_set_bcn_ctrl_reg.exit27

_rtl92ee_set_bcn_ctrl_reg.exit27:                 ; preds = %if.then.i.i26, %if.else._rtl92ee_set_bcn_ctrl_reg.exit27_crit_edge
  %36 = ptrtoint ptr %cfg.i.i21 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cfg.i.i21, align 8
  %ops5 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %ops5 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops5, align 4
  %set_hw_reg6 = getelementptr inbounds %struct.rtl_hal_ops, ptr %39, i32 0, i32 20
  %40 = ptrtoint ptr %set_hw_reg6 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %set_hw_reg6, align 4
  call void %41(ptr noundef %hw, i8 noundef zeroext 44, ptr noundef nonnull %reg_rcr) #8
  br label %cleanup

cleanup:                                          ; preds = %_rtl92ee_set_bcn_ctrl_reg.exit27, %if.then.i.i, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_rcr) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl92ee_set_network_type(ptr noundef %hw, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  %reg_rcr.i12 = alloca i32, align 4
  %reg_rcr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call = tail call fastcc i32 @_rtl92ee_set_media_status(ptr noundef %hw, i32 noundef %type)
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %type, label %if.then4 [
    i32 3, label %if.then1.cleanup_crit_edge
    i32 7, label %if.then1.cleanup_crit_edge19
  ]

if.then1.cleanup_crit_edge19:                     ; preds = %if.then1
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
  %rfpwr_state.i = getelementptr inbounds %struct.rtl_priv, ptr %6, i32 0, i32 21, i32 24
  %7 = ptrtoint ptr %rfpwr_state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rfpwr_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not.i = icmp eq i32 %8, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then4.rtl92ee_set_check_bssid.exit_crit_edge

if.then4.rtl92ee_set_check_bssid.exit_crit_edge:  ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl92ee_set_check_bssid.exit

if.end.i:                                         ; preds = %if.then4
  %receive_config.i = getelementptr inbounds %struct.rtl_priv, ptr %6, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 3
  %9 = ptrtoint ptr %receive_config.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %receive_config.i, align 4
  %or.i = or i32 %10, 192
  %11 = ptrtoint ptr %reg_rcr.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or.i, ptr %reg_rcr.i, align 4
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %6, i32 0, i32 32
  %12 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 4
  %set_hw_reg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %15, i32 0, i32 20
  %16 = ptrtoint ptr %set_hw_reg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %set_hw_reg.i, align 4
  call void %17(ptr noundef %hw, i8 noundef zeroext 44, ptr noundef nonnull %reg_rcr.i) #8
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i.i = getelementptr inbounds %struct.rtl_priv, ptr %19, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %20 = ptrtoint ptr %reg_bcn_ctrl_val.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %reg_bcn_ctrl_val.i.i, align 4
  %and.i.i = and i32 %21, -17
  store i32 %and.i.i, ptr %reg_bcn_ctrl_val.i.i, align 4
  %conv6.i.i = trunc i32 %and.i.i to i8
  %write8_async.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %19, i32 0, i32 13, i32 5
  %22 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write8_async.i.i.i, align 4
  call void %23(ptr noundef %19, i32 noundef 1360, i8 noundef zeroext %conv6.i.i) #8
  %cfg.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %19, i32 0, i32 32
  %24 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %write_readback.i.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %write_readback.i.i.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i.i.i = icmp eq i8 %27, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.rtl92ee_set_check_bssid.exit_crit_edge, label %if.then.i.i.i

if.end.i.rtl92ee_set_check_bssid.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl92ee_set_check_bssid.exit

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %19, i32 0, i32 13, i32 9
  %28 = ptrtoint ptr %read8_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read8_sync.i.i.i, align 4
  %call.i.i.i = call zeroext i8 %29(ptr noundef %19, i32 noundef 1360) #8
  br label %rtl92ee_set_check_bssid.exit

rtl92ee_set_check_bssid.exit:                     ; preds = %if.then.i.i.i, %if.end.i.rtl92ee_set_check_bssid.exit_crit_edge, %if.then4.rtl92ee_set_check_bssid.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_rcr.i) #8
  br label %cleanup

if.else:                                          ; preds = %if.end
  %30 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_rcr.i12) #8
  %rfpwr_state.i15 = getelementptr inbounds %struct.rtl_priv, ptr %31, i32 0, i32 21, i32 24
  %32 = ptrtoint ptr %rfpwr_state.i15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rfpwr_state.i15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.not.i16 = icmp eq i32 %33, 0
  br i1 %cmp.not.i16, label %if.end.i17, label %if.else.rtl92ee_set_check_bssid.exit18_crit_edge

if.else.rtl92ee_set_check_bssid.exit18_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl92ee_set_check_bssid.exit18

if.end.i17:                                       ; preds = %if.else
  %receive_config.i14 = getelementptr inbounds %struct.rtl_priv, ptr %31, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 3
  %34 = ptrtoint ptr %receive_config.i14 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %receive_config.i14, align 4
  %and.i = and i32 %35, -193
  %36 = ptrtoint ptr %reg_rcr.i12 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %and.i, ptr %reg_rcr.i12, align 4
  %reg_bcn_ctrl_val.i18.i = getelementptr inbounds %struct.rtl_priv, ptr %31, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %37 = ptrtoint ptr %reg_bcn_ctrl_val.i18.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %reg_bcn_ctrl_val.i18.i, align 4
  %or.i.i = or i32 %38, 16
  store i32 %or.i.i, ptr %reg_bcn_ctrl_val.i18.i, align 4
  %conv6.i19.i = trunc i32 %or.i.i to i8
  %write8_async.i.i20.i = getelementptr inbounds %struct.rtl_priv, ptr %31, i32 0, i32 13, i32 5
  %39 = ptrtoint ptr %write8_async.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write8_async.i.i20.i, align 4
  tail call void %40(ptr noundef %31, i32 noundef 1360, i8 noundef zeroext %conv6.i19.i) #8
  %cfg.i.i21.i = getelementptr inbounds %struct.rtl_priv, ptr %31, i32 0, i32 32
  %41 = ptrtoint ptr %cfg.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cfg.i.i21.i, align 8
  %write_readback.i.i22.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %write_readback.i.i22.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %write_readback.i.i22.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i.i23.i = icmp eq i8 %44, 0
  br i1 %tobool.not.i.i23.i, label %if.end.i17._rtl92ee_set_bcn_ctrl_reg.exit27.i_crit_edge, label %if.then.i.i26.i

if.end.i17._rtl92ee_set_bcn_ctrl_reg.exit27.i_crit_edge: ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ee_set_bcn_ctrl_reg.exit27.i

if.then.i.i26.i:                                  ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i24.i = getelementptr inbounds %struct.rtl_priv, ptr %31, i32 0, i32 13, i32 9
  %45 = ptrtoint ptr %read8_sync.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %read8_sync.i.i24.i, align 4
  %call.i.i25.i = tail call zeroext i8 %46(ptr noundef %31, i32 noundef 1360) #8
  br label %_rtl92ee_set_bcn_ctrl_reg.exit27.i

_rtl92ee_set_bcn_ctrl_reg.exit27.i:               ; preds = %if.then.i.i26.i, %if.end.i17._rtl92ee_set_bcn_ctrl_reg.exit27.i_crit_edge
  %47 = ptrtoint ptr %cfg.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cfg.i.i21.i, align 8
  %ops5.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %ops5.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ops5.i, align 4
  %set_hw_reg6.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %50, i32 0, i32 20
  %51 = ptrtoint ptr %set_hw_reg6.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %set_hw_reg6.i, align 4
  call void %52(ptr noundef %hw, i8 noundef zeroext 44, ptr noundef nonnull %reg_rcr.i12) #8
  br label %rtl92ee_set_check_bssid.exit18

rtl92ee_set_check_bssid.exit18:                   ; preds = %_rtl92ee_set_bcn_ctrl_reg.exit27.i, %if.else.rtl92ee_set_check_bssid.exit18_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_rcr.i12) #8
  br label %cleanup

cleanup:                                          ; preds = %rtl92ee_set_check_bssid.exit18, %rtl92ee_set_check_bssid.exit, %if.then1.cleanup_crit_edge, %if.then1.cleanup_crit_edge19, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ 0, %if.then1.cleanup_crit_edge ], [ 0, %if.then1.cleanup_crit_edge19 ], [ 0, %rtl92ee_set_check_bssid.exit ], [ 0, %rtl92ee_set_check_bssid.exit18 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_rtl92ee_set_media_status(ptr noundef %hw, i32 noundef %type) unnamed_addr #0 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %type, label %do.end [
    i32 0, label %entry.land.lhs.true_crit_edge
    i32 1, label %entry.sw.bb2_crit_edge
    i32 7, label %entry.sw.bb2_crit_edge130
    i32 2, label %sw.bb3
    i32 3, label %if.end.thread125
  ]

entry.sw.bb2_crit_edge130:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge130
  br label %land.lhs.true

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %type) #11
  br label %cleanup

if.end.thread125:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.44) #8
  br label %if.then24

land.lhs.true:                                    ; preds = %sw.bb3, %sw.bb2, %entry.land.lhs.true_crit_edge
  %.str.43.sink = phi ptr [ @.str.43, %sw.bb3 ], [ @.str.42, %sw.bb2 ], [ @.str.41, %entry.land.lhs.true_crit_edge ]
  %ledaction.0.ph = phi i32 [ 2, %sw.bb3 ], [ 3, %sw.bb2 ], [ 3, %entry.land.lhs.true_crit_edge ]
  %mode.0.ph = phi i8 [ 2, %sw.bb3 ], [ 1, %sw.bb2 ], [ 0, %entry.land.lhs.true_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 5, ptr noundef nonnull %.str.43.sink) #8
  %link_state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 10
  %6 = ptrtoint ptr %link_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %link_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp8 = icmp ult i32 %7, 2
  br i1 %cmp8, label %land.lhs.true.if.then16_crit_edge, label %if.end

land.lhs.true.if.then16_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16

if.end:                                           ; preds = %land.lhs.true
  %trunc = trunc i8 %mode.0.ph to i2
  %8 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.67)
  switch i2 %trunc, label %if.else25 [
    i2 0, label %if.end.if.then16_crit_edge
    i2 -2, label %if.end.if.then16_crit_edge131
    i2 1, label %if.end.if.then24_crit_edge
  ]

if.end.if.then24_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24

if.end.if.then16_crit_edge131:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16

if.end.if.then16_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16

if.then16:                                        ; preds = %if.end.if.then16_crit_edge, %if.end.if.then16_crit_edge131, %land.lhs.true.if.then16_crit_edge
  %mode.1124 = phi i8 [ %mode.0.ph, %if.end.if.then16_crit_edge ], [ %mode.0.ph, %if.end.if.then16_crit_edge131 ], [ 0, %land.lhs.true.if.then16_crit_edge ]
  %ledaction.1122 = phi i32 [ %ledaction.0.ph, %if.end.if.then16_crit_edge ], [ %ledaction.0.ph, %if.end.if.then16_crit_edge131 ], [ 3, %land.lhs.true.if.then16_crit_edge ]
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
  %19 = load i8, ptr %write_readback.i.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i.i, label %if.then16.rtl_write_byte.exit.i_crit_edge, label %if.then.i.i

if.then16.rtl_write_byte.exit.i_crit_edge:        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit.i

if.then.i.i:                                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i13.i = tail call zeroext i8 %21(ptr noundef %10, i32 noundef 1058) #8
  br label %rtl_write_byte.exit.i

rtl_write_byte.exit.i:                            ; preds = %if.then.i.i, %if.then16.rtl_write_byte.exit.i_crit_edge
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
  %27 = load i8, ptr %write_readback.i16.i, align 1, !range !138
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
  %38 = load i8, ptr %write_readback.i26.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i27.i = icmp eq i8 %38, 0
  br i1 %tobool.not.i27.i, label %rtl_write_byte.exit21.i._rtl92ee_stop_tx_beacon.exit_crit_edge, label %if.then.i30.i

rtl_write_byte.exit21.i._rtl92ee_stop_tx_beacon.exit_crit_edge: ; preds = %rtl_write_byte.exit21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ee_stop_tx_beacon.exit

if.then.i30.i:                                    ; preds = %rtl_write_byte.exit21.i
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i29.i = tail call zeroext i8 %40(ptr noundef %10, i32 noundef 1346) #8
  br label %_rtl92ee_stop_tx_beacon.exit

_rtl92ee_stop_tx_beacon.exit:                     ; preds = %if.then.i30.i, %rtl_write_byte.exit21.i._rtl92ee_stop_tx_beacon.exit_crit_edge
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
  %50 = load i8, ptr %write_readback.i.i.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i.i.i = icmp eq i8 %50, 0
  br i1 %tobool.not.i.i.i, label %_rtl92ee_stop_tx_beacon.exit.if.end28_crit_edge, label %if.then.i.i.i

_rtl92ee_stop_tx_beacon.exit.if.end28_crit_edge:  ; preds = %_rtl92ee_stop_tx_beacon.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then.i.i.i:                                    ; preds = %_rtl92ee_stop_tx_beacon.exit
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %42, i32 0, i32 13, i32 9
  %51 = ptrtoint ptr %read8_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %read8_sync.i.i.i, align 4
  %call.i.i.i = tail call zeroext i8 %52(ptr noundef %42, i32 noundef 1360) #8
  br label %if.end28

if.then24:                                        ; preds = %if.end.if.then24_crit_edge, %if.end.thread125
  %mode.1129 = phi i8 [ 3, %if.end.thread125 ], [ 1, %if.end.if.then24_crit_edge ]
  %ledaction.1128 = phi i32 [ 2, %if.end.thread125 ], [ %ledaction.0.ph, %if.end.if.then24_crit_edge ]
  %53 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %priv, align 8
  %read8_sync.i.i67 = getelementptr inbounds %struct.rtl_priv, ptr %54, i32 0, i32 13, i32 9
  %55 = ptrtoint ptr %read8_sync.i.i67 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %read8_sync.i.i67, align 4
  %call.i.i68 = tail call zeroext i8 %56(ptr noundef %54, i32 noundef 1058) #8
  %57 = or i8 %call.i.i68, 64
  %write8_async.i.i69 = getelementptr inbounds %struct.rtl_priv, ptr %54, i32 0, i32 13, i32 5
  %58 = ptrtoint ptr %write8_async.i.i69 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %write8_async.i.i69, align 4
  tail call void %59(ptr noundef %54, i32 noundef 1058, i8 noundef zeroext %57) #8
  %cfg.i.i70 = getelementptr inbounds %struct.rtl_priv, ptr %54, i32 0, i32 32
  %60 = ptrtoint ptr %cfg.i.i70 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cfg.i.i70, align 8
  %write_readback.i.i71 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %write_readback.i.i71 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %write_readback.i.i71, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i.i72 = icmp eq i8 %63, 0
  br i1 %tobool.not.i.i72, label %if.then24.rtl_write_byte.exit.i77_crit_edge, label %if.then.i.i74

if.then24.rtl_write_byte.exit.i77_crit_edge:      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit.i77

if.then.i.i74:                                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %read8_sync.i.i67 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %read8_sync.i.i67, align 4
  %call.i13.i73 = tail call zeroext i8 %65(ptr noundef %54, i32 noundef 1058) #8
  br label %rtl_write_byte.exit.i77

rtl_write_byte.exit.i77:                          ; preds = %if.then.i.i74, %if.then24.rtl_write_byte.exit.i77_crit_edge
  %66 = ptrtoint ptr %write8_async.i.i69 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %write8_async.i.i69, align 4
  tail call void %67(ptr noundef %54, i32 noundef 1345, i8 noundef zeroext -1) #8
  %68 = ptrtoint ptr %cfg.i.i70 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cfg.i.i70, align 8
  %write_readback.i16.i75 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %write_readback.i16.i75 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %write_readback.i16.i75, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool.not.i17.i76 = icmp eq i8 %71, 0
  br i1 %tobool.not.i17.i76, label %rtl_write_byte.exit.i77.rtl_write_byte.exit21.i83_crit_edge, label %if.then.i20.i79

rtl_write_byte.exit.i77.rtl_write_byte.exit21.i83_crit_edge: ; preds = %rtl_write_byte.exit.i77
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit21.i83

if.then.i20.i79:                                  ; preds = %rtl_write_byte.exit.i77
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %read8_sync.i.i67 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %read8_sync.i.i67, align 4
  %call.i19.i78 = tail call zeroext i8 %73(ptr noundef %54, i32 noundef 1345) #8
  br label %rtl_write_byte.exit21.i83

rtl_write_byte.exit21.i83:                        ; preds = %if.then.i20.i79, %rtl_write_byte.exit.i77.rtl_write_byte.exit21.i83_crit_edge
  %74 = ptrtoint ptr %read8_sync.i.i67 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %read8_sync.i.i67, align 4
  %call.i23.i80 = tail call zeroext i8 %75(ptr noundef %54, i32 noundef 1346) #8
  %76 = or i8 %call.i23.i80, 1
  %77 = ptrtoint ptr %write8_async.i.i69 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %write8_async.i.i69, align 4
  tail call void %78(ptr noundef %54, i32 noundef 1346, i8 noundef zeroext %76) #8
  %79 = ptrtoint ptr %cfg.i.i70 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cfg.i.i70, align 8
  %write_readback.i26.i81 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %write_readback.i26.i81 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %write_readback.i26.i81, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool.not.i27.i82 = icmp eq i8 %82, 0
  br i1 %tobool.not.i27.i82, label %rtl_write_byte.exit21.i83._rtl92ee_resume_tx_beacon.exit_crit_edge, label %if.then.i30.i85

rtl_write_byte.exit21.i83._rtl92ee_resume_tx_beacon.exit_crit_edge: ; preds = %rtl_write_byte.exit21.i83
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ee_resume_tx_beacon.exit

if.then.i30.i85:                                  ; preds = %rtl_write_byte.exit21.i83
  call void @__sanitizer_cov_trace_pc() #10
  %83 = ptrtoint ptr %read8_sync.i.i67 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %read8_sync.i.i67, align 4
  %call.i29.i84 = tail call zeroext i8 %84(ptr noundef %54, i32 noundef 1346) #8
  br label %_rtl92ee_resume_tx_beacon.exit

_rtl92ee_resume_tx_beacon.exit:                   ; preds = %if.then.i30.i85, %rtl_write_byte.exit21.i83._rtl92ee_resume_tx_beacon.exit_crit_edge
  %85 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i.i87 = getelementptr inbounds %struct.rtl_priv, ptr %86, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %87 = ptrtoint ptr %reg_bcn_ctrl_val.i.i87 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %reg_bcn_ctrl_val.i.i87, align 4
  %or.i.i = or i32 %88, 2
  store i32 %or.i.i, ptr %reg_bcn_ctrl_val.i.i87, align 4
  %conv6.i.i88 = trunc i32 %or.i.i to i8
  %write8_async.i.i.i89 = getelementptr inbounds %struct.rtl_priv, ptr %86, i32 0, i32 13, i32 5
  %89 = ptrtoint ptr %write8_async.i.i.i89 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %write8_async.i.i.i89, align 4
  tail call void %90(ptr noundef %86, i32 noundef 1360, i8 noundef zeroext %conv6.i.i88) #8
  %cfg.i.i.i90 = getelementptr inbounds %struct.rtl_priv, ptr %86, i32 0, i32 32
  %91 = ptrtoint ptr %cfg.i.i.i90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %cfg.i.i.i90, align 8
  %write_readback.i.i.i91 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %write_readback.i.i.i91 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %write_readback.i.i.i91, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool.not.i.i.i92 = icmp eq i8 %94, 0
  br i1 %tobool.not.i.i.i92, label %_rtl92ee_resume_tx_beacon.exit.if.end28_crit_edge, label %if.then.i.i.i95

_rtl92ee_resume_tx_beacon.exit.if.end28_crit_edge: ; preds = %_rtl92ee_resume_tx_beacon.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then.i.i.i95:                                  ; preds = %_rtl92ee_resume_tx_beacon.exit
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i.i93 = getelementptr inbounds %struct.rtl_priv, ptr %86, i32 0, i32 13, i32 9
  %95 = ptrtoint ptr %read8_sync.i.i.i93 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %read8_sync.i.i.i93, align 4
  %call.i.i.i94 = tail call zeroext i8 %96(ptr noundef %86, i32 noundef 1360) #8
  br label %if.end28

if.else25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.47, i32 noundef 2) #8
  br label %if.end28

if.end28:                                         ; preds = %if.else25, %if.then.i.i.i95, %_rtl92ee_resume_tx_beacon.exit.if.end28_crit_edge, %if.then.i.i.i, %_rtl92ee_stop_tx_beacon.exit.if.end28_crit_edge
  %mode.1123 = phi i8 [ 0, %if.else25 ], [ %mode.1124, %_rtl92ee_stop_tx_beacon.exit.if.end28_crit_edge ], [ %mode.1124, %if.then.i.i.i ], [ %mode.1129, %_rtl92ee_resume_tx_beacon.exit.if.end28_crit_edge ], [ %mode.1129, %if.then.i.i.i95 ]
  %ledaction.1121 = phi i32 [ %ledaction.0.ph, %if.else25 ], [ %ledaction.1122, %_rtl92ee_stop_tx_beacon.exit.if.end28_crit_edge ], [ %ledaction.1122, %if.then.i.i.i ], [ %ledaction.1128, %_rtl92ee_resume_tx_beacon.exit.if.end28_crit_edge ], [ %ledaction.1128, %if.then.i.i.i95 ]
  %or64 = or i8 %mode.1123, %4
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %97 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %write8_async.i, align 4
  tail call void %98(ptr noundef %1, i32 noundef 258, i8 noundef zeroext %or64) #8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %99 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %write_readback.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool.not.i = icmp eq i8 %102, 0
  br i1 %tobool.not.i, label %if.end28.rtl_write_byte.exit_crit_edge, label %if.then.i

if.end28.rtl_write_byte.exit_crit_edge:           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %103 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %read8_sync.i, align 4
  %call.i97 = tail call zeroext i8 %104(ptr noundef %1, i32 noundef 258) #8
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %if.end28.rtl_write_byte.exit_crit_edge
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
  tail call void %110(ptr noundef %hw, i32 noundef %ledaction.1121) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %mode.1123)
  %cmp33 = icmp eq i8 %mode.1123, 3
  %111 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %write8_async.i, align 4
  br i1 %cmp33, label %if.then35, label %if.else36

if.then35:                                        ; preds = %rtl_write_byte.exit
  tail call void %112(ptr noundef %1, i32 noundef 1297, i8 noundef zeroext 0) #8
  %113 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %cfg.i, align 8
  %write_readback.i100 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %write_readback.i100 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %write_readback.i100, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool.not.i101 = icmp eq i8 %116, 0
  br i1 %tobool.not.i101, label %if.then35.cleanup_crit_edge, label %if.then.i104

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i104:                                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  %117 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %read8_sync.i, align 4
  %call.i103 = tail call zeroext i8 %118(ptr noundef %1, i32 noundef 1297) #8
  br label %cleanup

if.else36:                                        ; preds = %rtl_write_byte.exit
  tail call void %112(ptr noundef %1, i32 noundef 1297, i8 noundef zeroext 102) #8
  %119 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %cfg.i, align 8
  %write_readback.i108 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %write_readback.i108 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %write_readback.i108, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool.not.i109 = icmp eq i8 %122, 0
  br i1 %tobool.not.i109, label %if.else36.cleanup_crit_edge, label %if.then.i112

if.else36.cleanup_crit_edge:                      ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i112:                                     ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #10
  %123 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %read8_sync.i, align 4
  %call.i111 = tail call zeroext i8 %124(ptr noundef %1, i32 noundef 1297) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i112, %if.else36.cleanup_crit_edge, %if.then.i104, %if.then35.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 1, %do.end ], [ 0, %if.then35.cleanup_crit_edge ], [ 0, %if.then.i104 ], [ 0, %if.else36.cleanup_crit_edge ], [ 0, %if.then.i112 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ee_set_qos(ptr noundef %hw, i32 noundef %aci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void @rtl92ee_dm_init_edca_turbo(ptr noundef %hw) #8
  %2 = zext i32 %aci to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.68)
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
  %8 = load i8, ptr %write_readback.i, align 1, !range !138
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
  %16 = load i8, ptr %write_readback.i44, align 1, !range !138
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
  %24 = load i8, ptr %write_readback.i52, align 1, !range !138
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
  %.b41 = load i1, ptr @rtl92ee_set_qos.__already_done, align 1
  br i1 %.b41, label %land.end.sw.epilog_crit_edge, label %if.then, !prof !139

land.end.sw.epilog_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rtl92ee_set_qos.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1580, i32 noundef 9, ptr noundef nonnull @.str.17, i32 noundef %aci) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %land.end.sw.epilog_crit_edge, %if.then.i56, %sw.bb2.sw.epilog_crit_edge, %if.then.i48, %sw.bb1.sw.epilog_crit_edge, %if.then.i, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ee_dm_init_edca_turbo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ee_enable_interrupt(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
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
  tail call void %5(ptr noundef %1, i32 noundef 176, i32 noundef %3) #8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %6 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %write_readback.i, align 1, !range !138
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
  %call.i = tail call i32 %11(ptr noundef %1, i32 noundef 176) #8
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i, %entry.rtl_write_dword.exit_crit_edge
  %arrayidx4 = getelementptr %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 6
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx4, align 4
  %14 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write32_async.i, align 4
  tail call void %15(ptr noundef %1, i32 noundef 184, i32 noundef %13) #8
  %16 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cfg.i, align 8
  %write_readback.i12 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %write_readback.i12 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %write_readback.i12, align 1, !range !138
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
  %call.i15 = tail call i32 %21(ptr noundef %1, i32 noundef 184) #8
  br label %rtl_write_dword.exit17

rtl_write_dword.exit17:                           ; preds = %if.then.i16, %rtl_write_dword.exit.rtl_write_dword.exit17_crit_edge
  %irq_enabled = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1, i32 1
  %22 = ptrtoint ptr %irq_enabled to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %irq_enabled, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ee_disable_interrupt(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
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
  tail call void %3(ptr noundef %1, i32 noundef 176, i32 noundef 0) #8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %write_readback.i, align 1, !range !138
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
  %call.i = tail call i32 %9(ptr noundef %1, i32 noundef 176) #8
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i, %entry.rtl_write_dword.exit_crit_edge
  %10 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write32_async.i, align 4
  tail call void %11(ptr noundef %1, i32 noundef 184, i32 noundef 0) #8
  %12 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cfg.i, align 8
  %write_readback.i7 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %write_readback.i7 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %write_readback.i7, align 1, !range !138
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
  %call.i10 = tail call i32 %17(ptr noundef %1, i32 noundef 184) #8
  br label %rtl_write_dword.exit12

rtl_write_dword.exit12:                           ; preds = %if.then.i11, %rtl_write_dword.exit.rtl_write_dword.exit12_crit_edge
  %irq_enabled = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1, i32 1
  %18 = ptrtoint ptr %irq_enabled to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %irq_enabled, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ee_card_disable(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.18) #8
  %cur_ps_level = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 19
  %2 = ptrtoint ptr %cur_ps_level to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cur_ps_level, align 4
  %or = or i32 %3, 8
  store i32 %or, ptr %cur_ps_level, align 4
  %link_state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 10
  %4 = ptrtoint ptr %link_state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %link_state, align 8
  %call = tail call fastcc i32 @_rtl92ee_set_media_status(ptr noundef %hw, i32 noundef 0)
  %driver_is_goingto_unload = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 1
  %5 = ptrtoint ptr %driver_is_goingto_unload to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %driver_is_goingto_unload, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %rfoff_reason = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 18
  %7 = ptrtoint ptr %rfoff_reason to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rfoff_reason, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %8)
  %cmp = icmp ugt i32 %8, 536870912
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %9 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cfg, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %led_control = getelementptr inbounds %struct.rtl_hal_ops, ptr %12, i32 0, i32 36
  %13 = ptrtoint ptr %led_control to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %led_control, align 4
  tail call void %14(ptr noundef %hw, i32 noundef 7) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv, align 8
  %mac_func_enable.i = getelementptr inbounds %struct.rtl_priv, ptr %16, i32 0, i32 10, i32 6
  %17 = ptrtoint ptr %mac_func_enable.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %mac_func_enable.i, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %16, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.48) #8
  %call.i = tail call zeroext i1 @rtl_hal_pwrseqcmdparsing(ptr noundef %16, i8 noundef zeroext -1, i8 noundef zeroext 15, i8 noundef zeroext 4, ptr noundef nonnull @rtl8192E_enter_lps_flow) #8
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %16, i32 0, i32 13, i32 5
  %18 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %19(ptr noundef %16, i32 noundef 31, i8 noundef zeroext 0) #8
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %16, i32 0, i32 32
  %20 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %write_readback.i.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i.i, label %if.end.rtl_write_byte.exit.i_crit_edge, label %if.then.i.i

if.end.rtl_write_byte.exit.i_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %16, i32 0, i32 13, i32 9
  %24 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = tail call zeroext i8 %25(ptr noundef %16, i32 noundef 31) #8
  br label %rtl_write_byte.exit.i

rtl_write_byte.exit.i:                            ; preds = %if.then.i.i, %if.end.rtl_write_byte.exit.i_crit_edge
  %read8_sync.i35.i = getelementptr inbounds %struct.rtl_priv, ptr %16, i32 0, i32 13, i32 9
  %26 = ptrtoint ptr %read8_sync.i35.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read8_sync.i35.i, align 4
  %call.i36.i = tail call zeroext i8 %27(ptr noundef %16, i32 noundef 128) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i36.i)
  %tobool.not.i = icmp sgt i8 %call.i36.i, -1
  br i1 %tobool.not.i, label %rtl_write_byte.exit.i.if.end.i_crit_edge, label %land.lhs.true.i

rtl_write_byte.exit.i.if.end.i_crit_edge:         ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %rtl_write_byte.exit.i
  %fw_ready.i = getelementptr inbounds %struct.rtl_priv, ptr %16, i32 0, i32 10, i32 38
  %28 = ptrtoint ptr %fw_ready.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %fw_ready.i, align 2, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool4.not.i = icmp eq i8 %29, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rtl92ee_firmware_selfreset(ptr noundef %hw) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %rtl_write_byte.exit.i.if.end.i_crit_edge
  %30 = ptrtoint ptr %read8_sync.i35.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read8_sync.i35.i, align 4
  %call.i38.i = tail call zeroext i8 %31(ptr noundef %16, i32 noundef 3) #8
  %32 = and i8 %call.i38.i, -5
  %33 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %34(ptr noundef %16, i32 noundef 3, i8 noundef zeroext %32) #8
  %35 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i41.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %write_readback.i41.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %write_readback.i41.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i42.i = icmp eq i8 %38, 0
  br i1 %tobool.not.i42.i, label %if.end.i.rtl_write_byte.exit46.i_crit_edge, label %if.then.i45.i

if.end.i.rtl_write_byte.exit46.i_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit46.i

if.then.i45.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %read8_sync.i35.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read8_sync.i35.i, align 4
  %call.i44.i = tail call zeroext i8 %40(ptr noundef %16, i32 noundef 3) #8
  br label %rtl_write_byte.exit46.i

rtl_write_byte.exit46.i:                          ; preds = %if.then.i45.i, %if.end.i.rtl_write_byte.exit46.i_crit_edge
  %41 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %42(ptr noundef %16, i32 noundef 128, i8 noundef zeroext 0) #8
  %43 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i49.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %write_readback.i49.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %write_readback.i49.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i50.i = icmp eq i8 %46, 0
  br i1 %tobool.not.i50.i, label %rtl_write_byte.exit46.i.rtl_write_byte.exit54.i_crit_edge, label %if.then.i53.i

rtl_write_byte.exit46.i.rtl_write_byte.exit54.i_crit_edge: ; preds = %rtl_write_byte.exit46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit54.i

if.then.i53.i:                                    ; preds = %rtl_write_byte.exit46.i
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %read8_sync.i35.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %read8_sync.i35.i, align 4
  %call.i52.i = tail call zeroext i8 %48(ptr noundef %16, i32 noundef 128) #8
  br label %rtl_write_byte.exit54.i

rtl_write_byte.exit54.i:                          ; preds = %if.then.i53.i, %rtl_write_byte.exit46.i.rtl_write_byte.exit54.i_crit_edge
  %call10.i = tail call zeroext i1 @rtl_hal_pwrseqcmdparsing(ptr noundef %16, i8 noundef zeroext -1, i8 noundef zeroext 15, i8 noundef zeroext 4, ptr noundef nonnull @rtl8192E_card_disable_flow) #8
  %49 = ptrtoint ptr %read8_sync.i35.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %read8_sync.i35.i, align 4
  %call.i56.i = tail call zeroext i8 %50(ptr noundef %16, i32 noundef 29) #8
  %51 = and i8 %call.i56.i, -2
  %52 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %53(ptr noundef %16, i32 noundef 29, i8 noundef zeroext %51) #8
  %54 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i59.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %write_readback.i59.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %write_readback.i59.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i60.i = icmp eq i8 %57, 0
  br i1 %tobool.not.i60.i, label %rtl_write_byte.exit54.i.rtl_write_byte.exit64.i_crit_edge, label %if.then.i63.i

rtl_write_byte.exit54.i.rtl_write_byte.exit64.i_crit_edge: ; preds = %rtl_write_byte.exit54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit64.i

if.then.i63.i:                                    ; preds = %rtl_write_byte.exit54.i
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %read8_sync.i35.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %read8_sync.i35.i, align 4
  %call.i62.i = tail call zeroext i8 %59(ptr noundef %16, i32 noundef 29) #8
  br label %rtl_write_byte.exit64.i

rtl_write_byte.exit64.i:                          ; preds = %if.then.i63.i, %rtl_write_byte.exit54.i.rtl_write_byte.exit64.i_crit_edge
  %60 = ptrtoint ptr %read8_sync.i35.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %read8_sync.i35.i, align 4
  %call.i66.i = tail call zeroext i8 %61(ptr noundef %16, i32 noundef 29) #8
  %62 = or i8 %call.i66.i, 1
  %63 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %64(ptr noundef %16, i32 noundef 29, i8 noundef zeroext %62) #8
  %65 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i69.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %write_readback.i69.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %write_readback.i69.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.not.i70.i = icmp eq i8 %68, 0
  br i1 %tobool.not.i70.i, label %rtl_write_byte.exit64.i.rtl_write_byte.exit74.i_crit_edge, label %if.then.i73.i

rtl_write_byte.exit64.i.rtl_write_byte.exit74.i_crit_edge: ; preds = %rtl_write_byte.exit64.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit74.i

if.then.i73.i:                                    ; preds = %rtl_write_byte.exit64.i
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %read8_sync.i35.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %read8_sync.i35.i, align 4
  %call.i72.i = tail call zeroext i8 %70(ptr noundef %16, i32 noundef 29) #8
  br label %rtl_write_byte.exit74.i

rtl_write_byte.exit74.i:                          ; preds = %if.then.i73.i, %rtl_write_byte.exit64.i.rtl_write_byte.exit74.i_crit_edge
  %71 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %72(ptr noundef %16, i32 noundef 28, i8 noundef zeroext 14) #8
  %73 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i77.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %write_readback.i77.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %write_readback.i77.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool.not.i78.i = icmp eq i8 %76, 0
  br i1 %tobool.not.i78.i, label %rtl_write_byte.exit74.i._rtl92ee_poweroff_adapter.exit_crit_edge, label %if.then.i81.i

rtl_write_byte.exit74.i._rtl92ee_poweroff_adapter.exit_crit_edge: ; preds = %rtl_write_byte.exit74.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ee_poweroff_adapter.exit

if.then.i81.i:                                    ; preds = %rtl_write_byte.exit74.i
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %read8_sync.i35.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %read8_sync.i35.i, align 4
  %call.i80.i = tail call zeroext i8 %78(ptr noundef %16, i32 noundef 28) #8
  br label %_rtl92ee_poweroff_adapter.exit

_rtl92ee_poweroff_adapter.exit:                   ; preds = %if.then.i81.i, %rtl_write_byte.exit74.i._rtl92ee_poweroff_adapter.exit_crit_edge
  %cfg3 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %79 = ptrtoint ptr %cfg3 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cfg3, align 8
  %ops4 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %80, i32 0, i32 4
  %81 = ptrtoint ptr %ops4 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ops4, align 4
  %get_btc_status = getelementptr inbounds %struct.rtl_hal_ops, ptr %82, i32 0, i32 66
  %83 = ptrtoint ptr %get_btc_status to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %get_btc_status, align 4
  %call5 = tail call zeroext i1 %84() #8
  br i1 %call5, label %_rtl92ee_poweroff_adapter.exit.if.end7_crit_edge, label %if.then6

_rtl92ee_poweroff_adapter.exit.if.end7_crit_edge: ; preds = %_rtl92ee_poweroff_adapter.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then6:                                         ; preds = %_rtl92ee_poweroff_adapter.exit
  call void @__sanitizer_cov_trace_pc() #10
  %iqk_initialized = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 31
  %85 = ptrtoint ptr %iqk_initialized to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %iqk_initialized, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %_rtl92ee_poweroff_adapter.exit.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ee_interrupt_recognized(ptr nocapture noundef readonly %hw, ptr nocapture noundef writeonly %intvec) local_unnamed_addr #0 align 64 {
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
  %call.i = tail call i32 %3(ptr noundef %1, i32 noundef 180) #8
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
  tail call void %8(ptr noundef %1, i32 noundef 180, i32 noundef %and) #8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %9 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %write_readback.i, align 1, !range !138
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
  %call.i18 = tail call i32 %14(ptr noundef %1, i32 noundef 180) #8
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i, %entry.rtl_write_dword.exit_crit_edge
  %15 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read32_sync.i, align 4
  %call.i20 = tail call i32 %16(ptr noundef %1, i32 noundef 188) #8
  %arrayidx6 = getelementptr %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 6
  %17 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx6, align 4
  %and7 = and i32 %18, %call.i20
  %intb = getelementptr inbounds %struct.rtl_int, ptr %intvec, i32 0, i32 1
  %19 = ptrtoint ptr %intb to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and7, ptr %intb, align 4
  %20 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write32_async.i, align 4
  tail call void %21(ptr noundef %1, i32 noundef 188, i32 noundef %and7) #8
  %22 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cfg.i, align 8
  %write_readback.i23 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %write_readback.i23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %write_readback.i23, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i24 = icmp eq i8 %25, 0
  br i1 %tobool.not.i24, label %rtl_write_dword.exit.rtl_write_dword.exit28_crit_edge, label %if.then.i27

rtl_write_dword.exit.rtl_write_dword.exit28_crit_edge: ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit28

if.then.i27:                                      ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read32_sync.i, align 4
  %call.i26 = tail call i32 %27(ptr noundef %1, i32 noundef 188) #8
  br label %rtl_write_dword.exit28

rtl_write_dword.exit28:                           ; preds = %if.then.i27, %rtl_write_dword.exit.rtl_write_dword.exit28_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ee_set_beacon_related_registers(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
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
  tail call void %5(ptr noundef %1, i32 noundef 176, i32 noundef 0) #8
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %6 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %write_readback.i.i, align 1, !range !138
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
  %call.i.i = tail call i32 %11(ptr noundef %1, i32 noundef 176) #8
  br label %rtl_write_dword.exit.i

rtl_write_dword.exit.i:                           ; preds = %if.then.i.i, %entry.rtl_write_dword.exit.i_crit_edge
  %12 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %13(ptr noundef %1, i32 noundef 184, i32 noundef 0) #8
  %14 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i7.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %write_readback.i7.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %write_readback.i7.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i8.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i8.i, label %rtl_write_dword.exit.i.rtl92ee_disable_interrupt.exit_crit_edge, label %if.then.i11.i

rtl_write_dword.exit.i.rtl92ee_disable_interrupt.exit_crit_edge: ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl92ee_disable_interrupt.exit

if.then.i11.i:                                    ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i9.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %18 = ptrtoint ptr %read32_sync.i9.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read32_sync.i9.i, align 4
  %call.i10.i = tail call i32 %19(ptr noundef %1, i32 noundef 184) #8
  br label %rtl92ee_disable_interrupt.exit

rtl92ee_disable_interrupt.exit:                   ; preds = %if.then.i11.i, %rtl_write_dword.exit.i.rtl92ee_disable_interrupt.exit_crit_edge
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
  %26 = load i8, ptr %write_readback.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i, label %rtl92ee_disable_interrupt.exit.rtl_write_word.exit_crit_edge, label %if.then.i

rtl92ee_disable_interrupt.exit.rtl_write_word.exit_crit_edge: ; preds = %rtl92ee_disable_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit

if.then.i:                                        ; preds = %rtl92ee_disable_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %27 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read16_sync.i, align 4
  %call.i = tail call zeroext i16 %28(ptr noundef %1, i32 noundef 1370) #8
  br label %rtl_write_word.exit

rtl_write_word.exit:                              ; preds = %if.then.i, %rtl92ee_disable_interrupt.exit.rtl_write_word.exit_crit_edge
  %29 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write16_async.i, align 4
  tail call void %30(ptr noundef %1, i32 noundef 1364, i16 noundef zeroext %conv) #8
  %31 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i18 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %write_readback.i18 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %write_readback.i18, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i19 = icmp eq i8 %34, 0
  br i1 %tobool.not.i19, label %rtl_write_word.exit.rtl_write_word.exit23_crit_edge, label %if.then.i22

rtl_write_word.exit.rtl_write_word.exit23_crit_edge: ; preds = %rtl_write_word.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit23

if.then.i22:                                      ; preds = %rtl_write_word.exit
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i20 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %35 = ptrtoint ptr %read16_sync.i20 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read16_sync.i20, align 4
  %call.i21 = tail call zeroext i16 %36(ptr noundef %1, i32 noundef 1364) #8
  br label %rtl_write_word.exit23

rtl_write_word.exit23:                            ; preds = %if.then.i22, %rtl_write_word.exit.rtl_write_word.exit23_crit_edge
  %37 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write16_async.i, align 4
  tail call void %38(ptr noundef %1, i32 noundef 1296, i16 noundef zeroext 26127) #8
  %39 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i26 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %write_readback.i26 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %write_readback.i26, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i27 = icmp eq i8 %42, 0
  br i1 %tobool.not.i27, label %rtl_write_word.exit23.rtl_write_word.exit31_crit_edge, label %if.then.i30

rtl_write_word.exit23.rtl_write_word.exit31_crit_edge: ; preds = %rtl_write_word.exit23
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit31

if.then.i30:                                      ; preds = %rtl_write_word.exit23
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i28 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %43 = ptrtoint ptr %read16_sync.i28 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %read16_sync.i28, align 4
  %call.i29 = tail call zeroext i16 %44(ptr noundef %1, i32 noundef 1296) #8
  br label %rtl_write_word.exit31

rtl_write_word.exit31:                            ; preds = %if.then.i30, %rtl_write_word.exit23.rtl_write_word.exit31_crit_edge
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %45 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write8_async.i, align 4
  tail call void %46(ptr noundef %1, i32 noundef 1374, i8 noundef zeroext 24) #8
  %47 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i33 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %write_readback.i33 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %write_readback.i33, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i34 = icmp eq i8 %50, 0
  br i1 %tobool.not.i34, label %rtl_write_word.exit31.rtl_write_byte.exit_crit_edge, label %if.then.i36

rtl_write_word.exit31.rtl_write_byte.exit_crit_edge: ; preds = %rtl_write_word.exit31
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit

if.then.i36:                                      ; preds = %rtl_write_word.exit31
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %51 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %read8_sync.i, align 4
  %call.i35 = tail call zeroext i8 %52(ptr noundef %1, i32 noundef 1374) #8
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i36, %rtl_write_word.exit31.rtl_write_byte.exit_crit_edge
  %53 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write8_async.i, align 4
  tail call void %54(ptr noundef %1, i32 noundef 1375, i8 noundef zeroext 24) #8
  %55 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i39 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %write_readback.i39 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %write_readback.i39, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i40 = icmp eq i8 %58, 0
  br i1 %tobool.not.i40, label %rtl_write_byte.exit.rtl_write_byte.exit44_crit_edge, label %if.then.i43

rtl_write_byte.exit.rtl_write_byte.exit44_crit_edge: ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit44

if.then.i43:                                      ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i41 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %59 = ptrtoint ptr %read8_sync.i41 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %read8_sync.i41, align 4
  %call.i42 = tail call zeroext i8 %60(ptr noundef %1, i32 noundef 1375) #8
  br label %rtl_write_byte.exit44

rtl_write_byte.exit44:                            ; preds = %if.then.i43, %rtl_write_byte.exit.rtl_write_byte.exit44_crit_edge
  %61 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write8_async.i, align 4
  tail call void %62(ptr noundef %1, i32 noundef 1542, i8 noundef zeroext 48) #8
  %63 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i47 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %write_readback.i47 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %write_readback.i47, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.not.i48 = icmp eq i8 %66, 0
  br i1 %tobool.not.i48, label %rtl_write_byte.exit44.rtl_write_byte.exit52_crit_edge, label %if.then.i51

rtl_write_byte.exit44.rtl_write_byte.exit52_crit_edge: ; preds = %rtl_write_byte.exit44
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit52

if.then.i51:                                      ; preds = %rtl_write_byte.exit44
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i49 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %67 = ptrtoint ptr %read8_sync.i49 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %read8_sync.i49, align 4
  %call.i50 = tail call zeroext i8 %68(ptr noundef %1, i32 noundef 1542) #8
  br label %rtl_write_byte.exit52

rtl_write_byte.exit52:                            ; preds = %if.then.i51, %rtl_write_byte.exit44.rtl_write_byte.exit52_crit_edge
  %reg_bcn_ctrl_val = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %69 = ptrtoint ptr %reg_bcn_ctrl_val to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %reg_bcn_ctrl_val, align 4
  %or = or i32 %70, 8
  store i32 %or, ptr %reg_bcn_ctrl_val, align 4
  %conv5 = trunc i32 %or to i8
  %71 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %write8_async.i, align 4
  tail call void %72(ptr noundef %1, i32 noundef 1360, i8 noundef zeroext %conv5) #8
  %73 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i55 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %write_readback.i55 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %write_readback.i55, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool.not.i56 = icmp eq i8 %76, 0
  br i1 %tobool.not.i56, label %rtl_write_byte.exit52.rtl_write_byte.exit60_crit_edge, label %if.then.i59

rtl_write_byte.exit52.rtl_write_byte.exit60_crit_edge: ; preds = %rtl_write_byte.exit52
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit60

if.then.i59:                                      ; preds = %rtl_write_byte.exit52
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i57 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %77 = ptrtoint ptr %read8_sync.i57 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %read8_sync.i57, align 4
  %call.i58 = tail call zeroext i8 %78(ptr noundef %1, i32 noundef 1360) #8
  br label %rtl_write_byte.exit60

rtl_write_byte.exit60:                            ; preds = %if.then.i59, %rtl_write_byte.exit52.rtl_write_byte.exit60_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ee_set_beacon_interval(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1024, i32 noundef 3, ptr noundef nonnull @.str.19, i32 noundef %conv2) #8
  %write16_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %4 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write16_async.i, align 4
  tail call void %5(ptr noundef %1, i32 noundef 1364, i16 noundef zeroext %conv) #8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %6 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %write_readback.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %entry.rtl_write_word.exit_crit_edge, label %if.then.i

entry.rtl_write_word.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %10 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read16_sync.i, align 4
  %call.i = tail call zeroext i16 %11(ptr noundef %1, i32 noundef 1364) #8
  br label %rtl_write_word.exit

rtl_write_word.exit:                              ; preds = %if.then.i, %entry.rtl_write_word.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ee_update_interrupt_mask(ptr nocapture noundef readonly %hw, i32 noundef %add_msr, i32 noundef %rm_msr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 128, i32 noundef 4, ptr noundef nonnull @.str.20, i32 noundef %add_msr, i32 noundef %rm_msr) #8
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
  tail call void %9(ptr noundef %7, i32 noundef 176, i32 noundef 0) #8
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 32
  %10 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %write_readback.i.i, align 1, !range !138
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
  %call.i.i = tail call i32 %15(ptr noundef %7, i32 noundef 176) #8
  br label %rtl_write_dword.exit.i

rtl_write_dword.exit.i:                           ; preds = %if.then.i.i, %if.end7.rtl_write_dword.exit.i_crit_edge
  %16 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %17(ptr noundef %7, i32 noundef 184, i32 noundef 0) #8
  %18 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i7.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %write_readback.i7.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %write_readback.i7.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i8.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i8.i, label %rtl_write_dword.exit.i.rtl92ee_disable_interrupt.exit_crit_edge, label %if.then.i11.i

rtl_write_dword.exit.i.rtl92ee_disable_interrupt.exit_crit_edge: ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl92ee_disable_interrupt.exit

if.then.i11.i:                                    ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i9.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 13, i32 11
  %22 = ptrtoint ptr %read32_sync.i9.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read32_sync.i9.i, align 4
  %call.i10.i = tail call i32 %23(ptr noundef %7, i32 noundef 184) #8
  br label %rtl92ee_disable_interrupt.exit

rtl92ee_disable_interrupt.exit:                   ; preds = %if.then.i11.i, %rtl_write_dword.exit.i.rtl92ee_disable_interrupt.exit_crit_edge
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
  tail call void %30(ptr noundef %26, i32 noundef 176, i32 noundef %28) #8
  %cfg.i.i18 = getelementptr inbounds %struct.rtl_priv, ptr %26, i32 0, i32 32
  %31 = ptrtoint ptr %cfg.i.i18 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cfg.i.i18, align 8
  %write_readback.i.i19 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %write_readback.i.i19 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %write_readback.i.i19, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i.i20 = icmp eq i8 %34, 0
  br i1 %tobool.not.i.i20, label %rtl92ee_disable_interrupt.exit.rtl_write_dword.exit.i24_crit_edge, label %if.then.i.i23

rtl92ee_disable_interrupt.exit.rtl_write_dword.exit.i24_crit_edge: ; preds = %rtl92ee_disable_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit.i24

if.then.i.i23:                                    ; preds = %rtl92ee_disable_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i.i21 = getelementptr inbounds %struct.rtl_priv, ptr %26, i32 0, i32 13, i32 11
  %35 = ptrtoint ptr %read32_sync.i.i21 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read32_sync.i.i21, align 4
  %call.i.i22 = tail call i32 %36(ptr noundef %26, i32 noundef 176) #8
  br label %rtl_write_dword.exit.i24

rtl_write_dword.exit.i24:                         ; preds = %if.then.i.i23, %rtl92ee_disable_interrupt.exit.rtl_write_dword.exit.i24_crit_edge
  %arrayidx4.i = getelementptr %struct.rtl_priv, ptr %26, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 6
  %37 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx4.i, align 4
  %39 = ptrtoint ptr %write32_async.i.i17 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write32_async.i.i17, align 4
  tail call void %40(ptr noundef %26, i32 noundef 184, i32 noundef %38) #8
  %41 = ptrtoint ptr %cfg.i.i18 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cfg.i.i18, align 8
  %write_readback.i12.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %write_readback.i12.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %write_readback.i12.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i13.i = icmp eq i8 %44, 0
  br i1 %tobool.not.i13.i, label %rtl_write_dword.exit.i24.rtl92ee_enable_interrupt.exit_crit_edge, label %if.then.i16.i

rtl_write_dword.exit.i24.rtl92ee_enable_interrupt.exit_crit_edge: ; preds = %rtl_write_dword.exit.i24
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl92ee_enable_interrupt.exit

if.then.i16.i:                                    ; preds = %rtl_write_dword.exit.i24
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i14.i = getelementptr inbounds %struct.rtl_priv, ptr %26, i32 0, i32 13, i32 11
  %45 = ptrtoint ptr %read32_sync.i14.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %read32_sync.i14.i, align 4
  %call.i15.i = tail call i32 %46(ptr noundef %26, i32 noundef 184) #8
  br label %rtl92ee_enable_interrupt.exit

rtl92ee_enable_interrupt.exit:                    ; preds = %if.then.i16.i, %rtl_write_dword.exit.i24.rtl92ee_enable_interrupt.exit_crit_edge
  %irq_enabled.i25 = getelementptr inbounds %struct.rtl_priv, ptr %26, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1, i32 1
  %47 = ptrtoint ptr %irq_enabled.i25 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %irq_enabled.i25, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ee_read_eeprom_info(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %pwr2g.i.i = alloca %struct.txpower_info_2g, align 1
  %pwr5g.i.i = alloca %struct.txpower_info_5g, align 1
  %params.i = alloca [10 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %rf_type.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 4
  %2 = ptrtoint ptr %rf_type.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 2, ptr %rf_type.i, align 1
  %read32_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %3 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i.i = tail call i32 %4(ptr noundef %1, i32 noundef 240) #8
  %and.i = and i32 %call.i.i, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i, i32 4140, i32 36
  %5 = ptrtoint ptr %rf_type.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %rf_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp.i = icmp eq i8 %6, 2
  %cond.i = select i1 %cmp.i, ptr @.str.50, ptr @.str.51
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.49, ptr noundef nonnull %cond.i) #8
  %version = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 13
  %7 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %..i, ptr %version, align 4
  %8 = ptrtoint ptr %rf_type.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rf_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp = icmp eq i8 %9, 0
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx11 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 15, i32 1
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %arrayidx11, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %11 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 15
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %11, align 2
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.21, i32 noundef %..i) #8
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %13 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %14(ptr noundef %1, i32 noundef 10) #8
  %conv14 = zext i8 %call.i to i32
  %and = and i32 %conv14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %.str.23..str.22 = select i1 %tobool.not, ptr @.str.23, ptr @.str.22
  %15 = lshr exact i32 %and, 3
  %16 = trunc i32 %15 to i16
  %17 = xor i16 %16, 2
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 3, ptr noundef nonnull %.str.23..str.22) #8
  %18 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 9
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %17, ptr %18, align 2
  %and20 = and i32 %conv14, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %do.end, label %if.then22

if.then22:                                        ; preds = %if.end
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.24) #8
  %autoload_failflag = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 7
  %20 = ptrtoint ptr %autoload_failflag to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %autoload_failflag, align 1
  %21 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %params.i) #8
  %23 = call ptr @memcpy(ptr %params.i, ptr @__const._rtl92ee_read_adapter_info.params, i32 40)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 512) #12
  %tobool.not.i56 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i56, label %if.then22._rtl92ee_read_adapter_info.exit_crit_edge, label %if.end.i

if.then22._rtl92ee_read_adapter_info.exit_crit_edge: ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ee_read_adapter_info.exit

if.end.i:                                         ; preds = %if.then22
  %call4.i = call i32 @rtl_get_hwinfo(ptr noundef %hw, ptr noundef %22, i32 noundef 512, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %params.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end.i.exit.i_crit_edge

if.end.i.exit.i_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.i

if.end7.i:                                        ; preds = %if.end.i
  %eeprom_oemid.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 17, i32 14
  %25 = ptrtoint ptr %eeprom_oemid.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %eeprom_oemid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %26)
  %cmp.i57 = icmp eq i8 %26, -1
  br i1 %cmp.i57, label %if.then9.i, label %if.end7.i.if.end11.i_crit_edge

if.end7.i.if.end11.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %eeprom_oemid.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %eeprom_oemid.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then9.i, %if.end7.i.if.end11.i_crit_edge
  %28 = ptrtoint ptr %eeprom_oemid.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %eeprom_oemid.i, align 4
  %conv13.i = zext i8 %29 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %22, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.52, i32 noundef %conv13.i) #8
  %eeprom_channelplan.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 17, i32 15
  %30 = ptrtoint ptr %eeprom_channelplan.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %eeprom_channelplan.i, align 2
  %conv14.i = trunc i16 %31 to i8
  %channel_plan.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 17, i32 65
  %32 = ptrtoint ptr %channel_plan.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv14.i, ptr %channel_plan.i, align 1
  %autoload_failflag.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 17, i32 7
  %33 = ptrtoint ptr %autoload_failflag.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %autoload_failflag.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool15.i = icmp ne i8 %34, 0
  %35 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %pwr2g.i.i) #8
  %37 = call ptr @memset(ptr %pwr2g.i.i, i32 255, i32 144)
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %pwr5g.i.i) #8
  %38 = call ptr @memset(ptr %pwr5g.i.i, i32 255, i32 136)
  %arrayidx.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 17
  %39 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %40 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %36, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.56, i32 noundef 17, i32 noundef %conv.i.i.i) #8
  %41 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %42)
  %cmp.i.i.i = icmp eq i8 %42, -1
  %spec.select.i.i.i = or i1 %tobool15.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %if.then6.i.i.i, label %if.end92.i.i.i

if.then6.i.i.i:                                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %36, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.57) #8
  %uglygep1066.i.i.i = getelementptr inbounds i8, ptr %pwr2g.i.i, i32 24
  %43 = call ptr @memset(ptr %pwr2g.i.i, i32 45, i32 6)
  %44 = call ptr @memset(ptr %uglygep1066.i.i.i, i32 45, i32 6)
  %arrayidx26.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 3, i32 0
  %arrayidx24.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 4, i32 0
  %45 = ptrtoint ptr %arrayidx24.i.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 2, ptr %arrayidx24.i.i.i, align 1
  %46 = ptrtoint ptr %arrayidx26.i.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 4, ptr %arrayidx26.i.i.i, align 1
  %arrayidx30.1.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 4, i32 0, i32 1
  %47 = ptrtoint ptr %arrayidx30.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -2, ptr %arrayidx30.1.i.i.i, align 1
  %arrayidx32.1.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 5, i32 0, i32 1
  %48 = ptrtoint ptr %arrayidx32.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -2, ptr %arrayidx32.1.i.i.i, align 1
  %arrayidx34.1.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 2, i32 0, i32 1
  %49 = ptrtoint ptr %arrayidx34.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -2, ptr %arrayidx34.1.i.i.i, align 1
  %arrayidx37.1.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 3, i32 0, i32 1
  %50 = ptrtoint ptr %arrayidx37.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 -2, ptr %arrayidx37.1.i.i.i, align 1
  %arrayidx30.2.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 4, i32 0, i32 2
  %51 = ptrtoint ptr %arrayidx30.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 -2, ptr %arrayidx30.2.i.i.i, align 1
  %arrayidx32.2.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 5, i32 0, i32 2
  %52 = ptrtoint ptr %arrayidx32.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 -2, ptr %arrayidx32.2.i.i.i, align 1
  %arrayidx34.2.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 2, i32 0, i32 2
  %53 = ptrtoint ptr %arrayidx34.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 -2, ptr %arrayidx34.2.i.i.i, align 1
  %arrayidx37.2.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 3, i32 0, i32 2
  %54 = ptrtoint ptr %arrayidx37.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -2, ptr %arrayidx37.2.i.i.i, align 1
  %arrayidx30.3.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 4, i32 0, i32 3
  %55 = ptrtoint ptr %arrayidx30.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 -2, ptr %arrayidx30.3.i.i.i, align 1
  %arrayidx32.3.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 5, i32 0, i32 3
  %56 = ptrtoint ptr %arrayidx32.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -2, ptr %arrayidx32.3.i.i.i, align 1
  %arrayidx34.3.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 2, i32 0, i32 3
  %57 = ptrtoint ptr %arrayidx34.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 -2, ptr %arrayidx34.3.i.i.i, align 1
  %arrayidx37.3.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 3, i32 0, i32 3
  %58 = ptrtoint ptr %arrayidx37.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 -2, ptr %arrayidx37.3.i.i.i, align 1
  %59 = call ptr @memset(ptr %pwr5g.i.i, i32 42, i32 14)
  %arrayidx71.i.i.i = getelementptr inbounds %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 1, i32 0
  %arrayidx74.i.i.i = getelementptr inbounds %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 2, i32 0
  %arrayidx77.i.i.i = getelementptr inbounds %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 3, i32 0
  %arrayidx80.i.i.i = getelementptr inbounds %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 4, i32 0
  %arrayidx83.i.i.i = getelementptr inbounds %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 5, i32 0
  %60 = ptrtoint ptr %arrayidx71.i.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 -2, ptr %arrayidx71.i.i.i, align 1
  %61 = ptrtoint ptr %arrayidx74.i.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 -2, ptr %arrayidx74.i.i.i, align 1
  %62 = ptrtoint ptr %arrayidx77.i.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 -2, ptr %arrayidx77.i.i.i, align 1
  %63 = ptrtoint ptr %arrayidx80.i.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 -2, ptr %arrayidx80.i.i.i, align 1
  %64 = ptrtoint ptr %arrayidx83.i.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 -2, ptr %arrayidx83.i.i.i, align 1
  %uglygep1068.i.1.i.i = getelementptr inbounds i8, ptr %pwr5g.i.i, i32 14
  %uglygep1066.i.1.i.i = getelementptr inbounds i8, ptr %pwr2g.i.i, i32 30
  %uglygep.i.1.i.i = getelementptr inbounds i8, ptr %pwr2g.i.i, i32 6
  %65 = call ptr @memset(ptr %uglygep.i.1.i.i, i32 45, i32 6)
  %66 = call ptr @memset(ptr %uglygep1066.i.1.i.i, i32 45, i32 6)
  %arrayidx26.i.1.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 3, i32 1
  %arrayidx24.i.1.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 4, i32 1
  %67 = ptrtoint ptr %arrayidx24.i.1.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 2, ptr %arrayidx24.i.1.i.i, align 1
  %68 = ptrtoint ptr %arrayidx26.i.1.i.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 4, ptr %arrayidx26.i.1.i.i, align 1
  %arrayidx30.1.i.1.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 4, i32 1, i32 1
  %69 = ptrtoint ptr %arrayidx30.1.i.1.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 -2, ptr %arrayidx30.1.i.1.i.i, align 1
  %arrayidx32.1.i.1.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 5, i32 1, i32 1
  %70 = ptrtoint ptr %arrayidx32.1.i.1.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 -2, ptr %arrayidx32.1.i.1.i.i, align 1
  %arrayidx34.1.i.1.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 2, i32 1, i32 1
  %71 = ptrtoint ptr %arrayidx34.1.i.1.i.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 -2, ptr %arrayidx34.1.i.1.i.i, align 1
  %arrayidx37.1.i.1.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 3, i32 1, i32 1
  %72 = ptrtoint ptr %arrayidx37.1.i.1.i.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 -2, ptr %arrayidx37.1.i.1.i.i, align 1
  %arrayidx30.2.i.1.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 4, i32 1, i32 2
  %73 = ptrtoint ptr %arrayidx30.2.i.1.i.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 -2, ptr %arrayidx30.2.i.1.i.i, align 1
  %arrayidx32.2.i.1.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 5, i32 1, i32 2
  %74 = ptrtoint ptr %arrayidx32.2.i.1.i.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 -2, ptr %arrayidx32.2.i.1.i.i, align 1
  %arrayidx34.2.i.1.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 2, i32 1, i32 2
  %75 = ptrtoint ptr %arrayidx34.2.i.1.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 -2, ptr %arrayidx34.2.i.1.i.i, align 1
  %arrayidx37.2.i.1.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 3, i32 1, i32 2
  %76 = ptrtoint ptr %arrayidx37.2.i.1.i.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 -2, ptr %arrayidx37.2.i.1.i.i, align 1
  %arrayidx30.3.i.1.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 4, i32 1, i32 3
  %77 = ptrtoint ptr %arrayidx30.3.i.1.i.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 -2, ptr %arrayidx30.3.i.1.i.i, align 1
  %arrayidx32.3.i.1.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 5, i32 1, i32 3
  %78 = ptrtoint ptr %arrayidx32.3.i.1.i.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 -2, ptr %arrayidx32.3.i.1.i.i, align 1
  %arrayidx34.3.i.1.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 2, i32 1, i32 3
  %79 = ptrtoint ptr %arrayidx34.3.i.1.i.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 -2, ptr %arrayidx34.3.i.1.i.i, align 1
  %arrayidx37.3.i.1.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 3, i32 1, i32 3
  %80 = ptrtoint ptr %arrayidx37.3.i.1.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 -2, ptr %arrayidx37.3.i.1.i.i, align 1
  %81 = call ptr @memset(ptr %uglygep1068.i.1.i.i, i32 42, i32 14)
  %arrayidx71.i.1.i.i = getelementptr inbounds %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 1, i32 1
  %arrayidx74.i.1.i.i = getelementptr inbounds %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 2, i32 1
  %arrayidx77.i.1.i.i = getelementptr inbounds %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 3, i32 1
  %arrayidx80.i.1.i.i = getelementptr inbounds %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 4, i32 1
  %arrayidx83.i.1.i.i = getelementptr inbounds %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 5, i32 1
  %82 = ptrtoint ptr %arrayidx71.i.1.i.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 -2, ptr %arrayidx71.i.1.i.i, align 1
  %83 = ptrtoint ptr %arrayidx74.i.1.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 -2, ptr %arrayidx74.i.1.i.i, align 1
  %84 = ptrtoint ptr %arrayidx77.i.1.i.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 -2, ptr %arrayidx77.i.1.i.i, align 1
  %85 = ptrtoint ptr %arrayidx80.i.1.i.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 -2, ptr %arrayidx80.i.1.i.i, align 1
  %86 = ptrtoint ptr %arrayidx83.i.1.i.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 -2, ptr %arrayidx83.i.1.i.i, align 1
  %uglygep1068.i.2.i.i = getelementptr inbounds i8, ptr %pwr5g.i.i, i32 28
  %uglygep1066.i.2.i.i = getelementptr inbounds i8, ptr %pwr2g.i.i, i32 36
  %uglygep.i.2.i.i = getelementptr inbounds i8, ptr %pwr2g.i.i, i32 12
  %87 = call ptr @memset(ptr %uglygep.i.2.i.i, i32 45, i32 6)
  %88 = call ptr @memset(ptr %uglygep1066.i.2.i.i, i32 45, i32 6)
  %arrayidx26.i.2.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 3, i32 2
  %arrayidx24.i.2.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 4, i32 2
  %89 = ptrtoint ptr %arrayidx24.i.2.i.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 2, ptr %arrayidx24.i.2.i.i, align 1
  %90 = ptrtoint ptr %arrayidx26.i.2.i.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 4, ptr %arrayidx26.i.2.i.i, align 1
  %arrayidx30.1.i.2.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 4, i32 2, i32 1
  %91 = ptrtoint ptr %arrayidx30.1.i.2.i.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 -2, ptr %arrayidx30.1.i.2.i.i, align 1
  %arrayidx32.1.i.2.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 5, i32 2, i32 1
  %92 = ptrtoint ptr %arrayidx32.1.i.2.i.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 -2, ptr %arrayidx32.1.i.2.i.i, align 1
  %arrayidx34.1.i.2.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 2, i32 2, i32 1
  %93 = ptrtoint ptr %arrayidx34.1.i.2.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 -2, ptr %arrayidx34.1.i.2.i.i, align 1
  %arrayidx37.1.i.2.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 3, i32 2, i32 1
  %94 = ptrtoint ptr %arrayidx37.1.i.2.i.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 -2, ptr %arrayidx37.1.i.2.i.i, align 1
  %arrayidx30.2.i.2.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 4, i32 2, i32 2
  %95 = ptrtoint ptr %arrayidx30.2.i.2.i.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 -2, ptr %arrayidx30.2.i.2.i.i, align 1
  %arrayidx32.2.i.2.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 5, i32 2, i32 2
  %96 = ptrtoint ptr %arrayidx32.2.i.2.i.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 -2, ptr %arrayidx32.2.i.2.i.i, align 1
  %arrayidx34.2.i.2.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 2, i32 2, i32 2
  %97 = ptrtoint ptr %arrayidx34.2.i.2.i.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 -2, ptr %arrayidx34.2.i.2.i.i, align 1
  %arrayidx37.2.i.2.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 3, i32 2, i32 2
  %98 = ptrtoint ptr %arrayidx37.2.i.2.i.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 -2, ptr %arrayidx37.2.i.2.i.i, align 1
  %arrayidx30.3.i.2.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 4, i32 2, i32 3
  %99 = ptrtoint ptr %arrayidx30.3.i.2.i.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 -2, ptr %arrayidx30.3.i.2.i.i, align 1
  %arrayidx32.3.i.2.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 5, i32 2, i32 3
  %100 = ptrtoint ptr %arrayidx32.3.i.2.i.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 -2, ptr %arrayidx32.3.i.2.i.i, align 1
  %arrayidx34.3.i.2.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 2, i32 2, i32 3
  %101 = ptrtoint ptr %arrayidx34.3.i.2.i.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 -2, ptr %arrayidx34.3.i.2.i.i, align 1
  %arrayidx37.3.i.2.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 3, i32 2, i32 3
  %102 = ptrtoint ptr %arrayidx37.3.i.2.i.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 -2, ptr %arrayidx37.3.i.2.i.i, align 1
  %103 = call ptr @memset(ptr %uglygep1068.i.2.i.i, i32 42, i32 14)
  %arrayidx71.i.2.i.i = getelementptr inbounds %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 1, i32 2
  %arrayidx74.i.2.i.i = getelementptr inbounds %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 2, i32 2
  %arrayidx77.i.2.i.i = getelementptr inbounds %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 3, i32 2
  %arrayidx80.i.2.i.i = getelementptr inbounds %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 4, i32 2
  %arrayidx83.i.2.i.i = getelementptr inbounds %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 5, i32 2
  %104 = ptrtoint ptr %arrayidx71.i.2.i.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 -2, ptr %arrayidx71.i.2.i.i, align 1
  %105 = ptrtoint ptr %arrayidx74.i.2.i.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 -2, ptr %arrayidx74.i.2.i.i, align 1
  %106 = ptrtoint ptr %arrayidx77.i.2.i.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 -2, ptr %arrayidx77.i.2.i.i, align 1
  %107 = ptrtoint ptr %arrayidx80.i.2.i.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 -2, ptr %arrayidx80.i.2.i.i, align 1
  %108 = ptrtoint ptr %arrayidx83.i.2.i.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 -2, ptr %arrayidx83.i.2.i.i, align 1
  %uglygep1068.i.3.i.i = getelementptr inbounds i8, ptr %pwr5g.i.i, i32 42
  %uglygep1066.i.3.i.i = getelementptr inbounds i8, ptr %pwr2g.i.i, i32 42
  %uglygep.i.3.i.i = getelementptr inbounds i8, ptr %pwr2g.i.i, i32 18
  %109 = call ptr @memset(ptr %uglygep.i.3.i.i, i32 45, i32 6)
  %110 = call ptr @memset(ptr %uglygep1066.i.3.i.i, i32 45, i32 6)
  %arrayidx26.i.3.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 3, i32 3
  %arrayidx24.i.3.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 4, i32 3
  %111 = ptrtoint ptr %arrayidx24.i.3.i.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 2, ptr %arrayidx24.i.3.i.i, align 1
  %112 = ptrtoint ptr %arrayidx26.i.3.i.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 4, ptr %arrayidx26.i.3.i.i, align 1
  %arrayidx30.1.i.3.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 4, i32 3, i32 1
  %113 = ptrtoint ptr %arrayidx30.1.i.3.i.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 -2, ptr %arrayidx30.1.i.3.i.i, align 1
  %arrayidx32.1.i.3.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 5, i32 3, i32 1
  %114 = ptrtoint ptr %arrayidx32.1.i.3.i.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 -2, ptr %arrayidx32.1.i.3.i.i, align 1
  %arrayidx34.1.i.3.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 2, i32 3, i32 1
  %115 = ptrtoint ptr %arrayidx34.1.i.3.i.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 -2, ptr %arrayidx34.1.i.3.i.i, align 1
  %arrayidx37.1.i.3.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 3, i32 3, i32 1
  %116 = ptrtoint ptr %arrayidx37.1.i.3.i.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 -2, ptr %arrayidx37.1.i.3.i.i, align 1
  %arrayidx30.2.i.3.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 4, i32 3, i32 2
  %117 = ptrtoint ptr %arrayidx30.2.i.3.i.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 -2, ptr %arrayidx30.2.i.3.i.i, align 1
  %arrayidx32.2.i.3.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 5, i32 3, i32 2
  %118 = ptrtoint ptr %arrayidx32.2.i.3.i.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 -2, ptr %arrayidx32.2.i.3.i.i, align 1
  %arrayidx34.2.i.3.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 2, i32 3, i32 2
  %119 = ptrtoint ptr %arrayidx34.2.i.3.i.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 -2, ptr %arrayidx34.2.i.3.i.i, align 1
  %arrayidx37.2.i.3.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 3, i32 3, i32 2
  %120 = ptrtoint ptr %arrayidx37.2.i.3.i.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 -2, ptr %arrayidx37.2.i.3.i.i, align 1
  %arrayidx30.3.i.3.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 4, i32 3, i32 3
  %121 = ptrtoint ptr %arrayidx30.3.i.3.i.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 -2, ptr %arrayidx30.3.i.3.i.i, align 1
  %arrayidx32.3.i.3.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 5, i32 3, i32 3
  %122 = ptrtoint ptr %arrayidx32.3.i.3.i.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 -2, ptr %arrayidx32.3.i.3.i.i, align 1
  %arrayidx34.3.i.3.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 2, i32 3, i32 3
  %123 = ptrtoint ptr %arrayidx34.3.i.3.i.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 -2, ptr %arrayidx34.3.i.3.i.i, align 1
  %arrayidx37.3.i.3.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 3, i32 3, i32 3
  %124 = ptrtoint ptr %arrayidx37.3.i.3.i.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 -2, ptr %arrayidx37.3.i.3.i.i, align 1
  %125 = call ptr @memset(ptr %uglygep1068.i.3.i.i, i32 42, i32 14)
  %arrayidx71.i.3.i.i = getelementptr inbounds %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 1, i32 3
  %arrayidx74.i.3.i.i = getelementptr inbounds %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 2, i32 3
  %arrayidx77.i.3.i.i = getelementptr inbounds %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 3, i32 3
  %arrayidx80.i.3.i.i = getelementptr inbounds %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 4, i32 3
  %arrayidx83.i.3.i.i = getelementptr inbounds %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 5, i32 3
  %126 = ptrtoint ptr %arrayidx71.i.3.i.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 -2, ptr %arrayidx71.i.3.i.i, align 1
  %127 = ptrtoint ptr %arrayidx74.i.3.i.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 -2, ptr %arrayidx74.i.3.i.i, align 1
  %128 = ptrtoint ptr %arrayidx77.i.3.i.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 -2, ptr %arrayidx77.i.3.i.i, align 1
  %129 = ptrtoint ptr %arrayidx80.i.3.i.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 -2, ptr %arrayidx80.i.3.i.i, align 1
  %130 = ptrtoint ptr %arrayidx83.i.3.i.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 -2, ptr %arrayidx83.i.3.i.i, align 1
  br label %_rtl8192ee_read_power_value_fromprom.exit.i.i

if.end92.i.i.i:                                   ; preds = %if.end11.i
  %131 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %priv, align 8
  %txpwr_fromeprom.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %132, i32 0, i32 17, i32 23
  %133 = ptrtoint ptr %txpwr_fromeprom.i.i.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 1, ptr %txpwr_fromeprom.i.i.i, align 4
  br label %if.then150.i.i.i

if.then150.i.i.i:                                 ; preds = %if.end663.3.i.i.i.if.then150.i.i.i_crit_edge, %if.end92.i.i.i
  %addr.01053.i.i.i = phi i32 [ 16, %if.end92.i.i.i ], [ %inc664.3.i.i.i, %if.end663.3.i.i.i.if.then150.i.i.i_crit_edge ]
  %rf.11050.i.i.i = phi i32 [ 0, %if.end92.i.i.i ], [ %inc669.i.i.i, %if.end663.3.i.i.i.if.then150.i.i.i_crit_edge ]
  %inc102.i.i.i = or i32 %addr.01053.i.i.i, 1
  %arrayidx103.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %addr.01053.i.i.i
  %134 = ptrtoint ptr %arrayidx103.i.i.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx103.i.i.i, align 2
  %arrayidx106.i.i.i = getelementptr [4 x [6 x i8]], ptr %pwr2g.i.i, i32 0, i32 %rf.11050.i.i.i, i32 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %135)
  %cmp111.i.i.i = icmp eq i8 %135, -1
  %spec.select1024.i.i.i = select i1 %cmp111.i.i.i, i8 45, i8 %135
  %136 = ptrtoint ptr %arrayidx106.i.i.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %spec.select1024.i.i.i, ptr %arrayidx106.i.i.i, align 1
  %inc102.1.i.i.i = add nuw nsw i32 %addr.01053.i.i.i, 2
  %arrayidx103.1.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc102.i.i.i
  %137 = ptrtoint ptr %arrayidx103.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx103.1.i.i.i, align 1
  %arrayidx106.1.i.i.i = getelementptr [4 x [6 x i8]], ptr %pwr2g.i.i, i32 0, i32 %rf.11050.i.i.i, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %138)
  %cmp111.1.i.i.i = icmp eq i8 %138, -1
  %spec.select1024.1.i.i.i = select i1 %cmp111.1.i.i.i, i8 45, i8 %138
  %139 = ptrtoint ptr %arrayidx106.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %spec.select1024.1.i.i.i, ptr %arrayidx106.1.i.i.i, align 1
  %inc102.2.i.i.i = add nuw nsw i32 %addr.01053.i.i.i, 3
  %arrayidx103.2.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc102.1.i.i.i
  %140 = ptrtoint ptr %arrayidx103.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx103.2.i.i.i, align 2
  %arrayidx106.2.i.i.i = getelementptr [4 x [6 x i8]], ptr %pwr2g.i.i, i32 0, i32 %rf.11050.i.i.i, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %141)
  %cmp111.2.i.i.i = icmp eq i8 %141, -1
  %spec.select1024.2.i.i.i = select i1 %cmp111.2.i.i.i, i8 45, i8 %141
  %142 = ptrtoint ptr %arrayidx106.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %spec.select1024.2.i.i.i, ptr %arrayidx106.2.i.i.i, align 1
  %inc102.3.i.i.i = add nuw nsw i32 %addr.01053.i.i.i, 4
  %arrayidx103.3.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc102.2.i.i.i
  %143 = ptrtoint ptr %arrayidx103.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx103.3.i.i.i, align 1
  %arrayidx106.3.i.i.i = getelementptr [4 x [6 x i8]], ptr %pwr2g.i.i, i32 0, i32 %rf.11050.i.i.i, i32 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %144)
  %cmp111.3.i.i.i = icmp eq i8 %144, -1
  %spec.select1024.3.i.i.i = select i1 %cmp111.3.i.i.i, i8 45, i8 %144
  %145 = ptrtoint ptr %arrayidx106.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %spec.select1024.3.i.i.i, ptr %arrayidx106.3.i.i.i, align 1
  %inc102.4.i.i.i = add nuw nsw i32 %addr.01053.i.i.i, 5
  %arrayidx103.4.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc102.3.i.i.i
  %146 = ptrtoint ptr %arrayidx103.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx103.4.i.i.i, align 2
  %arrayidx106.4.i.i.i = getelementptr [4 x [6 x i8]], ptr %pwr2g.i.i, i32 0, i32 %rf.11050.i.i.i, i32 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %147)
  %cmp111.4.i.i.i = icmp eq i8 %147, -1
  %spec.select1024.4.i.i.i = select i1 %cmp111.4.i.i.i, i8 45, i8 %147
  %148 = ptrtoint ptr %arrayidx106.4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %spec.select1024.4.i.i.i, ptr %arrayidx106.4.i.i.i, align 1
  %inc102.5.i.i.i = add nuw nsw i32 %addr.01053.i.i.i, 6
  %arrayidx103.5.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc102.4.i.i.i
  %149 = ptrtoint ptr %arrayidx103.5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx103.5.i.i.i, align 1
  %arrayidx106.5.i.i.i = getelementptr [4 x [6 x i8]], ptr %pwr2g.i.i, i32 0, i32 %rf.11050.i.i.i, i32 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %150)
  %cmp111.5.i.i.i = icmp eq i8 %150, -1
  %spec.select1024.5.i.i.i = select i1 %cmp111.5.i.i.i, i8 45, i8 %150
  %151 = ptrtoint ptr %arrayidx106.5.i.i.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %spec.select1024.5.i.i.i, ptr %arrayidx106.5.i.i.i, align 1
  %inc125.i.i.i = add nuw nsw i32 %addr.01053.i.i.i, 7
  %arrayidx126.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc102.5.i.i.i
  %152 = ptrtoint ptr %arrayidx126.i.i.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %arrayidx126.i.i.i, align 2
  %arrayidx129.i.i.i = getelementptr %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 1, i32 %rf.11050.i.i.i, i32 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %153)
  %cmp134.i.i.i = icmp eq i8 %153, -1
  %spec.select1025.i.i.i = select i1 %cmp134.i.i.i, i8 45, i8 %153
  %154 = ptrtoint ptr %arrayidx129.i.i.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %spec.select1025.i.i.i, ptr %arrayidx129.i.i.i, align 1
  %inc125.1.i.i.i = add nuw nsw i32 %addr.01053.i.i.i, 8
  %arrayidx126.1.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc125.i.i.i
  %155 = ptrtoint ptr %arrayidx126.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %arrayidx126.1.i.i.i, align 1
  %arrayidx129.1.i.i.i = getelementptr %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 1, i32 %rf.11050.i.i.i, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %156)
  %cmp134.1.i.i.i = icmp eq i8 %156, -1
  %spec.select1025.1.i.i.i = select i1 %cmp134.1.i.i.i, i8 45, i8 %156
  %157 = ptrtoint ptr %arrayidx129.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %spec.select1025.1.i.i.i, ptr %arrayidx129.1.i.i.i, align 1
  %inc125.2.i.i.i = add nuw nsw i32 %addr.01053.i.i.i, 9
  %arrayidx126.2.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc125.1.i.i.i
  %158 = ptrtoint ptr %arrayidx126.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %arrayidx126.2.i.i.i, align 2
  %arrayidx129.2.i.i.i = getelementptr %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 1, i32 %rf.11050.i.i.i, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %159)
  %cmp134.2.i.i.i = icmp eq i8 %159, -1
  %spec.select1025.2.i.i.i = select i1 %cmp134.2.i.i.i, i8 45, i8 %159
  %160 = ptrtoint ptr %arrayidx129.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %spec.select1025.2.i.i.i, ptr %arrayidx129.2.i.i.i, align 1
  %inc125.3.i.i.i = add nuw nsw i32 %addr.01053.i.i.i, 10
  %arrayidx126.3.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc125.2.i.i.i
  %161 = ptrtoint ptr %arrayidx126.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %arrayidx126.3.i.i.i, align 1
  %arrayidx129.3.i.i.i = getelementptr %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 1, i32 %rf.11050.i.i.i, i32 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %162)
  %cmp134.3.i.i.i = icmp eq i8 %162, -1
  %spec.select1025.3.i.i.i = select i1 %cmp134.3.i.i.i, i8 45, i8 %162
  %163 = ptrtoint ptr %arrayidx129.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %spec.select1025.3.i.i.i, ptr %arrayidx129.3.i.i.i, align 1
  %arrayidx126.4.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc125.3.i.i.i
  %164 = ptrtoint ptr %arrayidx126.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %arrayidx126.4.i.i.i, align 2
  %arrayidx129.4.i.i.i = getelementptr %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 1, i32 %rf.11050.i.i.i, i32 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %165)
  %cmp134.4.i.i.i = icmp eq i8 %165, -1
  %spec.select1025.4.i.i.i = select i1 %cmp134.4.i.i.i, i8 45, i8 %165
  %166 = ptrtoint ptr %arrayidx129.4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %spec.select1025.4.i.i.i, ptr %arrayidx129.4.i.i.i, align 1
  %arrayidx167.i.i.i = getelementptr %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 4, i32 %rf.11050.i.i.i
  %arrayidx197.i.i.i = getelementptr %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 3, i32 %rf.11050.i.i.i
  %arrayidx215.i.i.i = getelementptr %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 2, i32 %rf.11050.i.i.i
  %inc125.4.i.i.i = add nuw nsw i32 %addr.01053.i.i.i, 11
  %arrayidx152.i.i.i = getelementptr %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 5, i32 %rf.11050.i.i.i
  %167 = ptrtoint ptr %arrayidx152.i.i.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 0, ptr %arrayidx152.i.i.i, align 1
  %arrayidx154.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc125.4.i.i.i
  %168 = ptrtoint ptr %arrayidx154.i.i.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %arrayidx154.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %169)
  %cmp156.i.i.i = icmp eq i8 %169, -1
  br i1 %cmp156.i.i.i, label %if.end182.i.thread313.i.i, label %if.else162.i.i.i

if.end182.i.thread313.i.i:                        ; preds = %if.then150.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %170 = ptrtoint ptr %arrayidx167.i.i.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 2, ptr %arrayidx167.i.i.i, align 1
  br label %if.end213.sink.split.i.i.i

if.else162.i.i.i:                                 ; preds = %if.then150.i.i.i
  %171 = lshr i8 %169, 4
  %or.i.i.i = or i8 %171, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %169)
  %tobool174.not.i366.i.i = icmp slt i8 %169, 0
  %spec.select.i.i = select i1 %tobool174.not.i366.i.i, i8 %or.i.i.i, i8 %171
  %172 = ptrtoint ptr %arrayidx167.i.i.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %spec.select.i.i, ptr %arrayidx167.i.i.i, align 1
  %173 = and i8 %169, 15
  %174 = ptrtoint ptr %arrayidx197.i.i.i to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %173, ptr %arrayidx197.i.i.i, align 1
  %175 = and i8 %169, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %175)
  %tobool204.not.i.i.i = icmp eq i8 %175, 0
  br i1 %tobool204.not.i.i.i, label %if.else162.i.i.i.if.else218.i.1.i.i_crit_edge, label %if.then205.i.i.i

if.else162.i.i.i.if.else218.i.1.i.i_crit_edge:    ; preds = %if.else162.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else218.i.1.i.i

if.then205.i.i.i:                                 ; preds = %if.else162.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %or210.i.i.i = or i8 %169, -16
  br label %if.end213.sink.split.i.i.i

if.end213.sink.split.i.i.i:                       ; preds = %if.then205.i.i.i, %if.end182.i.thread313.i.i
  %or210.sink.i.i.i = phi i8 [ %or210.i.i.i, %if.then205.i.i.i ], [ 4, %if.end182.i.thread313.i.i ]
  %176 = ptrtoint ptr %arrayidx197.i.i.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %or210.sink.i.i.i, ptr %arrayidx197.i.i.i, align 1
  br label %if.else218.i.1.i.i

if.else218.i.1.i.i:                               ; preds = %if.end213.sink.split.i.i.i, %if.else162.i.i.i.if.else218.i.1.i.i_crit_edge
  %177 = ptrtoint ptr %arrayidx215.i.i.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 0, ptr %arrayidx215.i.i.i, align 1
  %.pre.i.i = add nuw nsw i32 %addr.01053.i.i.i, 12
  %arrayidx219.i.1.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %.pre.i.i
  %178 = ptrtoint ptr %arrayidx219.i.1.i.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %arrayidx219.i.1.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %179)
  %cmp221.i.1.i.i = icmp eq i8 %179, -1
  br i1 %cmp221.i.1.i.i, label %if.then255.i.1.i.i, label %if.else227.i.1.i.i

if.else227.i.1.i.i:                               ; preds = %if.else218.i.1.i.i
  %180 = lshr i8 %179, 4
  %arrayidx235.i.1.i.i = getelementptr %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 5, i32 %rf.11050.i.i.i, i32 1
  %or247.i.1.i.i = or i8 %180, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %179)
  %tobool241.not.i356.1.i.i = icmp slt i8 %179, 0
  %spec.select338.1.i.i = select i1 %tobool241.not.i356.1.i.i, i8 %or247.i.1.i.i, i8 %180
  %181 = ptrtoint ptr %arrayidx235.i.1.i.i to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 %spec.select338.1.i.i, ptr %arrayidx235.i.1.i.i, align 1
  %182 = and i8 %179, 15
  %arrayidx266.i.1.i.i = getelementptr %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 4, i32 %rf.11050.i.i.i, i32 1
  %183 = ptrtoint ptr %arrayidx266.i.1.i.i to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %182, ptr %arrayidx266.i.1.i.i, align 1
  %184 = and i8 %179, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %184)
  %tobool272.not.i.1.i.i = icmp eq i8 %184, 0
  br i1 %tobool272.not.i.1.i.i, label %if.else227.i.1.i.i.if.end281.i.1.i.i_crit_edge, label %if.then273.i.1.i.i

if.else227.i.1.i.i.if.end281.i.1.i.i_crit_edge:   ; preds = %if.else227.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end281.i.1.i.i

if.then273.i.1.i.i:                               ; preds = %if.else227.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %or278.i.1.i.i = or i8 %179, -16
  %185 = ptrtoint ptr %arrayidx266.i.1.i.i to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 %or278.i.1.i.i, ptr %arrayidx266.i.1.i.i, align 1
  br label %if.end281.i.1.i.i

if.then255.i.1.i.i:                               ; preds = %if.else218.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx226.i.1.i.i = getelementptr %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 5, i32 %rf.11050.i.i.i, i32 1
  %186 = ptrtoint ptr %arrayidx226.i.1.i.i to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 -2, ptr %arrayidx226.i.1.i.i, align 1
  %arrayidx258.i.1.i.i = getelementptr %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 4, i32 %rf.11050.i.i.i, i32 1
  %187 = ptrtoint ptr %arrayidx258.i.1.i.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 -2, ptr %arrayidx258.i.1.i.i, align 1
  br label %if.end281.i.1.i.i

if.end281.i.1.i.i:                                ; preds = %if.then255.i.1.i.i, %if.then273.i.1.i.i, %if.else227.i.1.i.i.if.end281.i.1.i.i_crit_edge
  %inc282.i.1.i.i = add nuw nsw i32 %addr.01053.i.i.i, 13
  %arrayidx283.i.1.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc282.i.1.i.i
  %188 = ptrtoint ptr %arrayidx283.i.1.i.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %arrayidx283.i.1.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %189)
  %cmp285.i.1.i.i = icmp eq i8 %189, -1
  br i1 %cmp285.i.1.i.i, label %if.then319.i.1.i.i, label %if.else291.i.1.i.i

if.else291.i.1.i.i:                               ; preds = %if.end281.i.1.i.i
  %190 = lshr i8 %189, 4
  %arrayidx299.i.1.i.i = getelementptr %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 3, i32 %rf.11050.i.i.i, i32 1
  %or311.i.1.i.i = or i8 %190, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %189)
  %tobool305.not.i357.1.i.i = icmp slt i8 %189, 0
  %spec.select339.1.i.i = select i1 %tobool305.not.i357.1.i.i, i8 %or311.i.1.i.i, i8 %190
  %191 = ptrtoint ptr %arrayidx299.i.1.i.i to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 %spec.select339.1.i.i, ptr %arrayidx299.i.1.i.i, align 1
  %192 = and i8 %189, 15
  %arrayidx330.i.1.i.i = getelementptr %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 2, i32 %rf.11050.i.i.i, i32 1
  %193 = ptrtoint ptr %arrayidx330.i.1.i.i to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 %192, ptr %arrayidx330.i.1.i.i, align 1
  %194 = and i8 %189, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %194)
  %tobool336.not.i.1.i.i = icmp eq i8 %194, 0
  br i1 %tobool336.not.i.1.i.i, label %if.else291.i.1.i.i.if.else218.i.2.i.i_crit_edge, label %if.then337.i.1.i.i

if.else291.i.1.i.i.if.else218.i.2.i.i_crit_edge:  ; preds = %if.else291.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else218.i.2.i.i

if.then337.i.1.i.i:                               ; preds = %if.else291.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %or342.i.1.i.i = or i8 %189, -16
  %195 = ptrtoint ptr %arrayidx330.i.1.i.i to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %or342.i.1.i.i, ptr %arrayidx330.i.1.i.i, align 1
  br label %if.else218.i.2.i.i

if.then319.i.1.i.i:                               ; preds = %if.end281.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx290.i.1.i.i = getelementptr %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 3, i32 %rf.11050.i.i.i, i32 1
  %196 = ptrtoint ptr %arrayidx290.i.1.i.i to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 -2, ptr %arrayidx290.i.1.i.i, align 1
  %arrayidx322.i.1.i.i = getelementptr %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 2, i32 %rf.11050.i.i.i, i32 1
  %197 = ptrtoint ptr %arrayidx322.i.1.i.i to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 -2, ptr %arrayidx322.i.1.i.i, align 1
  br label %if.else218.i.2.i.i

if.else218.i.2.i.i:                               ; preds = %if.then319.i.1.i.i, %if.then337.i.1.i.i, %if.else291.i.1.i.i.if.else218.i.2.i.i_crit_edge
  %inc217.i.1.i.i = add nuw nsw i32 %addr.01053.i.i.i, 14
  %arrayidx219.i.2.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc217.i.1.i.i
  %198 = ptrtoint ptr %arrayidx219.i.2.i.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %arrayidx219.i.2.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %199)
  %cmp221.i.2.i.i = icmp eq i8 %199, -1
  br i1 %cmp221.i.2.i.i, label %if.then255.i.2.i.i, label %if.else227.i.2.i.i

if.else227.i.2.i.i:                               ; preds = %if.else218.i.2.i.i
  %200 = lshr i8 %199, 4
  %arrayidx235.i.2.i.i = getelementptr %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 5, i32 %rf.11050.i.i.i, i32 2
  %or247.i.2.i.i = or i8 %200, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %199)
  %tobool241.not.i356.2.i.i = icmp slt i8 %199, 0
  %spec.select338.2.i.i = select i1 %tobool241.not.i356.2.i.i, i8 %or247.i.2.i.i, i8 %200
  %201 = ptrtoint ptr %arrayidx235.i.2.i.i to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 %spec.select338.2.i.i, ptr %arrayidx235.i.2.i.i, align 1
  %202 = and i8 %199, 15
  %arrayidx266.i.2.i.i = getelementptr %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 4, i32 %rf.11050.i.i.i, i32 2
  %203 = ptrtoint ptr %arrayidx266.i.2.i.i to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 %202, ptr %arrayidx266.i.2.i.i, align 1
  %204 = and i8 %199, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %204)
  %tobool272.not.i.2.i.i = icmp eq i8 %204, 0
  br i1 %tobool272.not.i.2.i.i, label %if.else227.i.2.i.i.if.end281.i.2.i.i_crit_edge, label %if.then273.i.2.i.i

if.else227.i.2.i.i.if.end281.i.2.i.i_crit_edge:   ; preds = %if.else227.i.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end281.i.2.i.i

if.then273.i.2.i.i:                               ; preds = %if.else227.i.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %or278.i.2.i.i = or i8 %199, -16
  %205 = ptrtoint ptr %arrayidx266.i.2.i.i to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 %or278.i.2.i.i, ptr %arrayidx266.i.2.i.i, align 1
  br label %if.end281.i.2.i.i

if.then255.i.2.i.i:                               ; preds = %if.else218.i.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx226.i.2.i.i = getelementptr %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 5, i32 %rf.11050.i.i.i, i32 2
  %206 = ptrtoint ptr %arrayidx226.i.2.i.i to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 -2, ptr %arrayidx226.i.2.i.i, align 1
  %arrayidx258.i.2.i.i = getelementptr %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 4, i32 %rf.11050.i.i.i, i32 2
  %207 = ptrtoint ptr %arrayidx258.i.2.i.i to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 -2, ptr %arrayidx258.i.2.i.i, align 1
  br label %if.end281.i.2.i.i

if.end281.i.2.i.i:                                ; preds = %if.then255.i.2.i.i, %if.then273.i.2.i.i, %if.else227.i.2.i.i.if.end281.i.2.i.i_crit_edge
  %inc282.i.2.i.i = add nuw nsw i32 %addr.01053.i.i.i, 15
  %arrayidx283.i.2.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc282.i.2.i.i
  %208 = ptrtoint ptr %arrayidx283.i.2.i.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %arrayidx283.i.2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %209)
  %cmp285.i.2.i.i = icmp eq i8 %209, -1
  br i1 %cmp285.i.2.i.i, label %if.then319.i.2.i.i, label %if.else291.i.2.i.i

if.else291.i.2.i.i:                               ; preds = %if.end281.i.2.i.i
  %210 = lshr i8 %209, 4
  %arrayidx299.i.2.i.i = getelementptr %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 3, i32 %rf.11050.i.i.i, i32 2
  %or311.i.2.i.i = or i8 %210, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %209)
  %tobool305.not.i357.2.i.i = icmp slt i8 %209, 0
  %spec.select339.2.i.i = select i1 %tobool305.not.i357.2.i.i, i8 %or311.i.2.i.i, i8 %210
  %211 = ptrtoint ptr %arrayidx299.i.2.i.i to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 %spec.select339.2.i.i, ptr %arrayidx299.i.2.i.i, align 1
  %212 = and i8 %209, 15
  %arrayidx330.i.2.i.i = getelementptr %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 2, i32 %rf.11050.i.i.i, i32 2
  %213 = ptrtoint ptr %arrayidx330.i.2.i.i to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 %212, ptr %arrayidx330.i.2.i.i, align 1
  %214 = and i8 %209, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %214)
  %tobool336.not.i.2.i.i = icmp eq i8 %214, 0
  br i1 %tobool336.not.i.2.i.i, label %if.else291.i.2.i.i.if.else218.i.3.i.i_crit_edge, label %if.then337.i.2.i.i

if.else291.i.2.i.i.if.else218.i.3.i.i_crit_edge:  ; preds = %if.else291.i.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else218.i.3.i.i

if.then337.i.2.i.i:                               ; preds = %if.else291.i.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %or342.i.2.i.i = or i8 %209, -16
  %215 = ptrtoint ptr %arrayidx330.i.2.i.i to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 %or342.i.2.i.i, ptr %arrayidx330.i.2.i.i, align 1
  br label %if.else218.i.3.i.i

if.then319.i.2.i.i:                               ; preds = %if.end281.i.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx290.i.2.i.i = getelementptr %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 3, i32 %rf.11050.i.i.i, i32 2
  %216 = ptrtoint ptr %arrayidx290.i.2.i.i to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 -2, ptr %arrayidx290.i.2.i.i, align 1
  %arrayidx322.i.2.i.i = getelementptr %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 2, i32 %rf.11050.i.i.i, i32 2
  %217 = ptrtoint ptr %arrayidx322.i.2.i.i to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 -2, ptr %arrayidx322.i.2.i.i, align 1
  br label %if.else218.i.3.i.i

if.else218.i.3.i.i:                               ; preds = %if.then319.i.2.i.i, %if.then337.i.2.i.i, %if.else291.i.2.i.i.if.else218.i.3.i.i_crit_edge
  %inc217.i.2.i.i = add nuw nsw i32 %addr.01053.i.i.i, 16
  %arrayidx219.i.3.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc217.i.2.i.i
  %218 = ptrtoint ptr %arrayidx219.i.3.i.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %arrayidx219.i.3.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %219)
  %cmp221.i.3.i.i = icmp eq i8 %219, -1
  br i1 %cmp221.i.3.i.i, label %if.then255.i.3.i.i, label %if.else227.i.3.i.i

if.else227.i.3.i.i:                               ; preds = %if.else218.i.3.i.i
  %220 = lshr i8 %219, 4
  %arrayidx235.i.3.i.i = getelementptr %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 5, i32 %rf.11050.i.i.i, i32 3
  %or247.i.3.i.i = or i8 %220, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %219)
  %tobool241.not.i356.3.i.i = icmp slt i8 %219, 0
  %spec.select338.3.i.i = select i1 %tobool241.not.i356.3.i.i, i8 %or247.i.3.i.i, i8 %220
  %221 = ptrtoint ptr %arrayidx235.i.3.i.i to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 %spec.select338.3.i.i, ptr %arrayidx235.i.3.i.i, align 1
  %222 = and i8 %219, 15
  %arrayidx266.i.3.i.i = getelementptr %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 4, i32 %rf.11050.i.i.i, i32 3
  %223 = ptrtoint ptr %arrayidx266.i.3.i.i to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 %222, ptr %arrayidx266.i.3.i.i, align 1
  %224 = and i8 %219, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %224)
  %tobool272.not.i.3.i.i = icmp eq i8 %224, 0
  br i1 %tobool272.not.i.3.i.i, label %if.else227.i.3.i.i.if.end281.i.3.i.i_crit_edge, label %if.then273.i.3.i.i

if.else227.i.3.i.i.if.end281.i.3.i.i_crit_edge:   ; preds = %if.else227.i.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end281.i.3.i.i

if.then273.i.3.i.i:                               ; preds = %if.else227.i.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %or278.i.3.i.i = or i8 %219, -16
  %225 = ptrtoint ptr %arrayidx266.i.3.i.i to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 %or278.i.3.i.i, ptr %arrayidx266.i.3.i.i, align 1
  br label %if.end281.i.3.i.i

if.then255.i.3.i.i:                               ; preds = %if.else218.i.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx226.i.3.i.i = getelementptr %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 5, i32 %rf.11050.i.i.i, i32 3
  %226 = ptrtoint ptr %arrayidx226.i.3.i.i to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 -2, ptr %arrayidx226.i.3.i.i, align 1
  %arrayidx258.i.3.i.i = getelementptr %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 4, i32 %rf.11050.i.i.i, i32 3
  %227 = ptrtoint ptr %arrayidx258.i.3.i.i to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 -2, ptr %arrayidx258.i.3.i.i, align 1
  br label %if.end281.i.3.i.i

if.end281.i.3.i.i:                                ; preds = %if.then255.i.3.i.i, %if.then273.i.3.i.i, %if.else227.i.3.i.i.if.end281.i.3.i.i_crit_edge
  %inc282.i.3.i.i = add nuw nsw i32 %addr.01053.i.i.i, 17
  %arrayidx283.i.3.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc282.i.3.i.i
  %228 = ptrtoint ptr %arrayidx283.i.3.i.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %arrayidx283.i.3.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %229)
  %cmp285.i.3.i.i = icmp eq i8 %229, -1
  br i1 %cmp285.i.3.i.i, label %if.then319.i.3.i.i, label %if.else291.i.3.i.i

if.else291.i.3.i.i:                               ; preds = %if.end281.i.3.i.i
  %230 = lshr i8 %229, 4
  %arrayidx299.i.3.i.i = getelementptr %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 3, i32 %rf.11050.i.i.i, i32 3
  %or311.i.3.i.i = or i8 %230, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %229)
  %tobool305.not.i357.3.i.i = icmp slt i8 %229, 0
  %spec.select339.3.i.i = select i1 %tobool305.not.i357.3.i.i, i8 %or311.i.3.i.i, i8 %230
  %231 = ptrtoint ptr %arrayidx299.i.3.i.i to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 %spec.select339.3.i.i, ptr %arrayidx299.i.3.i.i, align 1
  %232 = and i8 %229, 15
  %arrayidx330.i.3.i.i = getelementptr %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 2, i32 %rf.11050.i.i.i, i32 3
  %233 = ptrtoint ptr %arrayidx330.i.3.i.i to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 %232, ptr %arrayidx330.i.3.i.i, align 1
  %234 = and i8 %229, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %234)
  %tobool336.not.i.3.i.i = icmp eq i8 %234, 0
  br i1 %tobool336.not.i.3.i.i, label %if.else291.i.3.i.i.for.inc348.i.3.i.i_crit_edge, label %if.then337.i.3.i.i

if.else291.i.3.i.i.for.inc348.i.3.i.i_crit_edge:  ; preds = %if.else291.i.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc348.i.3.i.i

if.then337.i.3.i.i:                               ; preds = %if.else291.i.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %or342.i.3.i.i = or i8 %229, -16
  %235 = ptrtoint ptr %arrayidx330.i.3.i.i to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 %or342.i.3.i.i, ptr %arrayidx330.i.3.i.i, align 1
  br label %for.inc348.i.3.i.i

if.then319.i.3.i.i:                               ; preds = %if.end281.i.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx290.i.3.i.i = getelementptr %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 3, i32 %rf.11050.i.i.i, i32 3
  %236 = ptrtoint ptr %arrayidx290.i.3.i.i to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 -2, ptr %arrayidx290.i.3.i.i, align 1
  %arrayidx322.i.3.i.i = getelementptr %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 2, i32 %rf.11050.i.i.i, i32 3
  %237 = ptrtoint ptr %arrayidx322.i.3.i.i to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 -2, ptr %arrayidx322.i.3.i.i, align 1
  br label %for.inc348.i.3.i.i

for.inc348.i.3.i.i:                               ; preds = %if.then319.i.3.i.i, %if.then337.i.3.i.i, %if.else291.i.3.i.i.for.inc348.i.3.i.i_crit_edge
  %inc217.i.3.i.i = add nuw nsw i32 %addr.01053.i.i.i, 18
  %inc355.i.i.i = add nuw nsw i32 %addr.01053.i.i.i, 19
  %arrayidx356.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc217.i.3.i.i
  %238 = ptrtoint ptr %arrayidx356.i.i.i to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %arrayidx356.i.i.i, align 2
  %arrayidx359.i.i.i = getelementptr [4 x [14 x i8]], ptr %pwr5g.i.i, i32 0, i32 %rf.11050.i.i.i, i32 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %239)
  %cmp364.i.i.i = icmp eq i8 %239, -1
  %spec.select1026.i.i.i = select i1 %cmp364.i.i.i, i8 -2, i8 %239
  %240 = ptrtoint ptr %arrayidx359.i.i.i to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 %spec.select1026.i.i.i, ptr %arrayidx359.i.i.i, align 1
  %inc355.1.i.i.i = add nuw nsw i32 %addr.01053.i.i.i, 20
  %arrayidx356.1.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc355.i.i.i
  %241 = ptrtoint ptr %arrayidx356.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %arrayidx356.1.i.i.i, align 1
  %arrayidx359.1.i.i.i = getelementptr [4 x [14 x i8]], ptr %pwr5g.i.i, i32 0, i32 %rf.11050.i.i.i, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %242)
  %cmp364.1.i.i.i = icmp eq i8 %242, -1
  %spec.select1026.1.i.i.i = select i1 %cmp364.1.i.i.i, i8 -2, i8 %242
  %243 = ptrtoint ptr %arrayidx359.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 %spec.select1026.1.i.i.i, ptr %arrayidx359.1.i.i.i, align 1
  %inc355.2.i.i.i = add nuw nsw i32 %addr.01053.i.i.i, 21
  %arrayidx356.2.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc355.1.i.i.i
  %244 = ptrtoint ptr %arrayidx356.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %arrayidx356.2.i.i.i, align 2
  %arrayidx359.2.i.i.i = getelementptr [4 x [14 x i8]], ptr %pwr5g.i.i, i32 0, i32 %rf.11050.i.i.i, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %245)
  %cmp364.2.i.i.i = icmp eq i8 %245, -1
  %spec.select1026.2.i.i.i = select i1 %cmp364.2.i.i.i, i8 -2, i8 %245
  %246 = ptrtoint ptr %arrayidx359.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 %spec.select1026.2.i.i.i, ptr %arrayidx359.2.i.i.i, align 1
  %inc355.3.i.i.i = add nuw nsw i32 %addr.01053.i.i.i, 22
  %arrayidx356.3.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc355.2.i.i.i
  %247 = ptrtoint ptr %arrayidx356.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %arrayidx356.3.i.i.i, align 1
  %arrayidx359.3.i.i.i = getelementptr [4 x [14 x i8]], ptr %pwr5g.i.i, i32 0, i32 %rf.11050.i.i.i, i32 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %248)
  %cmp364.3.i.i.i = icmp eq i8 %248, -1
  %spec.select1026.3.i.i.i = select i1 %cmp364.3.i.i.i, i8 -2, i8 %248
  %249 = ptrtoint ptr %arrayidx359.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 %spec.select1026.3.i.i.i, ptr %arrayidx359.3.i.i.i, align 1
  %inc355.4.i.i.i = add nuw nsw i32 %addr.01053.i.i.i, 23
  %arrayidx356.4.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc355.3.i.i.i
  %250 = ptrtoint ptr %arrayidx356.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %arrayidx356.4.i.i.i, align 2
  %arrayidx359.4.i.i.i = getelementptr [4 x [14 x i8]], ptr %pwr5g.i.i, i32 0, i32 %rf.11050.i.i.i, i32 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %251)
  %cmp364.4.i.i.i = icmp eq i8 %251, -1
  %spec.select1026.4.i.i.i = select i1 %cmp364.4.i.i.i, i8 -2, i8 %251
  %252 = ptrtoint ptr %arrayidx359.4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 %spec.select1026.4.i.i.i, ptr %arrayidx359.4.i.i.i, align 1
  %inc355.5.i.i.i = add nuw nsw i32 %addr.01053.i.i.i, 24
  %arrayidx356.5.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc355.4.i.i.i
  %253 = ptrtoint ptr %arrayidx356.5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %arrayidx356.5.i.i.i, align 1
  %arrayidx359.5.i.i.i = getelementptr [4 x [14 x i8]], ptr %pwr5g.i.i, i32 0, i32 %rf.11050.i.i.i, i32 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %254)
  %cmp364.5.i.i.i = icmp eq i8 %254, -1
  %spec.select1026.5.i.i.i = select i1 %cmp364.5.i.i.i, i8 -2, i8 %254
  %255 = ptrtoint ptr %arrayidx359.5.i.i.i to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 %spec.select1026.5.i.i.i, ptr %arrayidx359.5.i.i.i, align 1
  %inc355.6.i.i.i = add nuw nsw i32 %addr.01053.i.i.i, 25
  %arrayidx356.6.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc355.5.i.i.i
  %256 = ptrtoint ptr %arrayidx356.6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %arrayidx356.6.i.i.i, align 2
  %arrayidx359.6.i.i.i = getelementptr [4 x [14 x i8]], ptr %pwr5g.i.i, i32 0, i32 %rf.11050.i.i.i, i32 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %257)
  %cmp364.6.i.i.i = icmp eq i8 %257, -1
  %spec.select1026.6.i.i.i = select i1 %cmp364.6.i.i.i, i8 -2, i8 %257
  %258 = ptrtoint ptr %arrayidx359.6.i.i.i to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 %spec.select1026.6.i.i.i, ptr %arrayidx359.6.i.i.i, align 1
  %inc355.7.i.i.i = add nuw nsw i32 %addr.01053.i.i.i, 26
  %arrayidx356.7.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc355.6.i.i.i
  %259 = ptrtoint ptr %arrayidx356.7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %arrayidx356.7.i.i.i, align 1
  %arrayidx359.7.i.i.i = getelementptr [4 x [14 x i8]], ptr %pwr5g.i.i, i32 0, i32 %rf.11050.i.i.i, i32 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %260)
  %cmp364.7.i.i.i = icmp eq i8 %260, -1
  %spec.select1026.7.i.i.i = select i1 %cmp364.7.i.i.i, i8 -2, i8 %260
  %261 = ptrtoint ptr %arrayidx359.7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %261)
  store i8 %spec.select1026.7.i.i.i, ptr %arrayidx359.7.i.i.i, align 1
  %inc355.8.i.i.i = add nuw nsw i32 %addr.01053.i.i.i, 27
  %arrayidx356.8.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc355.7.i.i.i
  %262 = ptrtoint ptr %arrayidx356.8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %arrayidx356.8.i.i.i, align 2
  %arrayidx359.8.i.i.i = getelementptr [4 x [14 x i8]], ptr %pwr5g.i.i, i32 0, i32 %rf.11050.i.i.i, i32 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %263)
  %cmp364.8.i.i.i = icmp eq i8 %263, -1
  %spec.select1026.8.i.i.i = select i1 %cmp364.8.i.i.i, i8 -2, i8 %263
  %264 = ptrtoint ptr %arrayidx359.8.i.i.i to i32
  call void @__asan_store1_noabort(i32 %264)
  store i8 %spec.select1026.8.i.i.i, ptr %arrayidx359.8.i.i.i, align 1
  %inc355.9.i.i.i = add nuw nsw i32 %addr.01053.i.i.i, 28
  %arrayidx356.9.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc355.8.i.i.i
  %265 = ptrtoint ptr %arrayidx356.9.i.i.i to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %arrayidx356.9.i.i.i, align 1
  %arrayidx359.9.i.i.i = getelementptr [4 x [14 x i8]], ptr %pwr5g.i.i, i32 0, i32 %rf.11050.i.i.i, i32 9
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %266)
  %cmp364.9.i.i.i = icmp eq i8 %266, -1
  %spec.select1026.9.i.i.i = select i1 %cmp364.9.i.i.i, i8 -2, i8 %266
  %267 = ptrtoint ptr %arrayidx359.9.i.i.i to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 %spec.select1026.9.i.i.i, ptr %arrayidx359.9.i.i.i, align 1
  %inc355.10.i.i.i = add nuw nsw i32 %addr.01053.i.i.i, 29
  %arrayidx356.10.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc355.9.i.i.i
  %268 = ptrtoint ptr %arrayidx356.10.i.i.i to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %arrayidx356.10.i.i.i, align 2
  %arrayidx359.10.i.i.i = getelementptr [4 x [14 x i8]], ptr %pwr5g.i.i, i32 0, i32 %rf.11050.i.i.i, i32 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %269)
  %cmp364.10.i.i.i = icmp eq i8 %269, -1
  %spec.select1026.10.i.i.i = select i1 %cmp364.10.i.i.i, i8 -2, i8 %269
  %270 = ptrtoint ptr %arrayidx359.10.i.i.i to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 %spec.select1026.10.i.i.i, ptr %arrayidx359.10.i.i.i, align 1
  %inc355.11.i.i.i = add nuw nsw i32 %addr.01053.i.i.i, 30
  %arrayidx356.11.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc355.10.i.i.i
  %271 = ptrtoint ptr %arrayidx356.11.i.i.i to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %arrayidx356.11.i.i.i, align 1
  %arrayidx359.11.i.i.i = getelementptr [4 x [14 x i8]], ptr %pwr5g.i.i, i32 0, i32 %rf.11050.i.i.i, i32 11
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %272)
  %cmp364.11.i.i.i = icmp eq i8 %272, -1
  %spec.select1026.11.i.i.i = select i1 %cmp364.11.i.i.i, i8 -2, i8 %272
  %273 = ptrtoint ptr %arrayidx359.11.i.i.i to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 %spec.select1026.11.i.i.i, ptr %arrayidx359.11.i.i.i, align 1
  %inc355.12.i.i.i = add nuw nsw i32 %addr.01053.i.i.i, 31
  %arrayidx356.12.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc355.11.i.i.i
  %274 = ptrtoint ptr %arrayidx356.12.i.i.i to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %arrayidx356.12.i.i.i, align 2
  %arrayidx359.12.i.i.i = getelementptr [4 x [14 x i8]], ptr %pwr5g.i.i, i32 0, i32 %rf.11050.i.i.i, i32 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %275)
  %cmp364.12.i.i.i = icmp eq i8 %275, -1
  %spec.select1026.12.i.i.i = select i1 %cmp364.12.i.i.i, i8 -2, i8 %275
  %276 = ptrtoint ptr %arrayidx359.12.i.i.i to i32
  call void @__asan_store1_noabort(i32 %276)
  store i8 %spec.select1026.12.i.i.i, ptr %arrayidx359.12.i.i.i, align 1
  %arrayidx356.13.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc355.12.i.i.i
  %277 = ptrtoint ptr %arrayidx356.13.i.i.i to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %arrayidx356.13.i.i.i, align 1
  %arrayidx359.13.i.i.i = getelementptr [4 x [14 x i8]], ptr %pwr5g.i.i, i32 0, i32 %rf.11050.i.i.i, i32 13
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %278)
  %cmp364.13.i.i.i = icmp eq i8 %278, -1
  %spec.select1026.13.i.i.i = select i1 %cmp364.13.i.i.i, i8 -2, i8 %278
  %279 = ptrtoint ptr %arrayidx359.13.i.i.i to i32
  call void @__asan_store1_noabort(i32 %279)
  store i8 %spec.select1026.13.i.i.i, ptr %arrayidx359.13.i.i.i, align 1
  %arrayidx399.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 2, i32 %rf.11050.i.i.i
  %arrayidx430.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 1, i32 %rf.11050.i.i.i
  %inc355.13.i.i.i = add nuw nsw i32 %addr.01053.i.i.i, 32
  %arrayidx382.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 3, i32 %rf.11050.i.i.i
  %280 = ptrtoint ptr %arrayidx382.i.i.i to i32
  call void @__asan_store1_noabort(i32 %280)
  store i8 0, ptr %arrayidx382.i.i.i, align 1
  %arrayidx384.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc355.13.i.i.i
  %281 = ptrtoint ptr %arrayidx384.i.i.i to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %arrayidx384.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %282)
  %cmp386.i.i.i = icmp eq i8 %282, -1
  br i1 %cmp386.i.i.i, label %if.end415.i.thread315.i.i, label %if.else392.i.i.i

if.end415.i.thread315.i.i:                        ; preds = %for.inc348.i.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %283 = ptrtoint ptr %arrayidx399.i.i.i to i32
  call void @__asan_store1_noabort(i32 %283)
  store i8 0, ptr %arrayidx399.i.i.i, align 1
  br label %if.else448.1.sink.split.i.i.i

if.else392.i.i.i:                                 ; preds = %for.inc348.i.3.i.i
  %284 = lshr i8 %282, 4
  %or412.i.i.i = or i8 %284, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %282)
  %tobool406.not.i358.i.i = icmp slt i8 %282, 0
  %spec.select340.i.i = select i1 %tobool406.not.i358.i.i, i8 %or412.i.i.i, i8 %284
  %285 = ptrtoint ptr %arrayidx399.i.i.i to i32
  call void @__asan_store1_noabort(i32 %285)
  store i8 %spec.select340.i.i, ptr %arrayidx399.i.i.i, align 1
  %286 = and i8 %282, 15
  %287 = ptrtoint ptr %arrayidx430.i.i.i to i32
  call void @__asan_store1_noabort(i32 %287)
  store i8 %286, ptr %arrayidx430.i.i.i, align 1
  %288 = and i8 %282, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %288)
  %tobool437.not.i.i.i = icmp eq i8 %288, 0
  br i1 %tobool437.not.i.i.i, label %if.else392.i.i.i.if.else448.1.i.i.i_crit_edge, label %if.then438.i.i.i

if.else392.i.i.i.if.else448.1.i.i.i_crit_edge:    ; preds = %if.else392.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else448.1.i.i.i

if.then438.i.i.i:                                 ; preds = %if.else392.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %or443.i.i.i = or i8 %282, -16
  br label %if.else448.1.sink.split.i.i.i

if.else448.1.sink.split.i.i.i:                    ; preds = %if.then438.i.i.i, %if.end415.i.thread315.i.i
  %or443.sink.i.i.i = phi i8 [ %or443.i.i.i, %if.then438.i.i.i ], [ 4, %if.end415.i.thread315.i.i ]
  %289 = ptrtoint ptr %arrayidx430.i.i.i to i32
  call void @__asan_store1_noabort(i32 %289)
  store i8 %or443.sink.i.i.i, ptr %arrayidx430.i.i.i, align 1
  br label %if.else448.1.i.i.i

if.else448.1.i.i.i:                               ; preds = %if.else448.1.sink.split.i.i.i, %if.else392.i.i.i.if.else448.1.i.i.i_crit_edge
  %addr.7.i.i.i = add nuw nsw i32 %addr.01053.i.i.i, 33
  %arrayidx449.1.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %addr.7.i.i.i
  %290 = ptrtoint ptr %arrayidx449.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %arrayidx449.1.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %291)
  %cmp451.1.i.i.i = icmp eq i8 %291, -1
  br i1 %cmp451.1.i.i.i, label %if.then485.1.i.i.i, label %if.else457.1.i.i.i

if.else457.1.i.i.i:                               ; preds = %if.else448.1.i.i.i
  %292 = lshr i8 %291, 4
  %arrayidx465.1.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 3, i32 %rf.11050.i.i.i, i32 1
  %or477.1.i.i.i = or i8 %292, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %291)
  %tobool471.not.1.i359.i.i = icmp slt i8 %291, 0
  %spec.select341.i.i = select i1 %tobool471.not.1.i359.i.i, i8 %or477.1.i.i.i, i8 %292
  %293 = ptrtoint ptr %arrayidx465.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 %spec.select341.i.i, ptr %arrayidx465.1.i.i.i, align 1
  %294 = and i8 %291, 15
  %arrayidx496.1.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 2, i32 %rf.11050.i.i.i, i32 1
  %295 = ptrtoint ptr %arrayidx496.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %295)
  store i8 %294, ptr %arrayidx496.1.i.i.i, align 1
  %296 = and i8 %291, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %296)
  %tobool502.not.1.i.i.i = icmp eq i8 %296, 0
  br i1 %tobool502.not.1.i.i.i, label %if.else457.1.i.i.i.if.else448.2.i.i.i_crit_edge, label %if.then503.1.i.i.i

if.else457.1.i.i.i.if.else448.2.i.i.i_crit_edge:  ; preds = %if.else457.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else448.2.i.i.i

if.then503.1.i.i.i:                               ; preds = %if.else457.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %or508.1.i.i.i = or i8 %291, -16
  %297 = ptrtoint ptr %arrayidx496.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %297)
  store i8 %or508.1.i.i.i, ptr %arrayidx496.1.i.i.i, align 1
  br label %if.else448.2.i.i.i

if.then485.1.i.i.i:                               ; preds = %if.else448.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx456.1.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 3, i32 %rf.11050.i.i.i, i32 1
  %298 = ptrtoint ptr %arrayidx456.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %298)
  store i8 -2, ptr %arrayidx456.1.i.i.i, align 1
  %arrayidx488.1.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 2, i32 %rf.11050.i.i.i, i32 1
  %299 = ptrtoint ptr %arrayidx488.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %299)
  store i8 -2, ptr %arrayidx488.1.i.i.i, align 1
  br label %if.else448.2.i.i.i

if.else448.2.i.i.i:                               ; preds = %if.then485.1.i.i.i, %if.then503.1.i.i.i, %if.else457.1.i.i.i.if.else448.2.i.i.i_crit_edge
  %addr.7.1.i.i.i = add nuw nsw i32 %addr.01053.i.i.i, 34
  %arrayidx449.2.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %addr.7.1.i.i.i
  %300 = ptrtoint ptr %arrayidx449.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %arrayidx449.2.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %301)
  %cmp451.2.i.i.i = icmp eq i8 %301, -1
  br i1 %cmp451.2.i.i.i, label %if.then485.2.i.i.i, label %if.else457.2.i.i.i

if.else457.2.i.i.i:                               ; preds = %if.else448.2.i.i.i
  %302 = lshr i8 %301, 4
  %arrayidx465.2.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 3, i32 %rf.11050.i.i.i, i32 2
  %or477.2.i.i.i = or i8 %302, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %301)
  %tobool471.not.2.i360.i.i = icmp slt i8 %301, 0
  %spec.select342.i.i = select i1 %tobool471.not.2.i360.i.i, i8 %or477.2.i.i.i, i8 %302
  %303 = ptrtoint ptr %arrayidx465.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %303)
  store i8 %spec.select342.i.i, ptr %arrayidx465.2.i.i.i, align 1
  %304 = and i8 %301, 15
  %arrayidx496.2.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 2, i32 %rf.11050.i.i.i, i32 2
  %305 = ptrtoint ptr %arrayidx496.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %305)
  store i8 %304, ptr %arrayidx496.2.i.i.i, align 1
  %306 = and i8 %301, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %306)
  %tobool502.not.2.i.i.i = icmp eq i8 %306, 0
  br i1 %tobool502.not.2.i.i.i, label %if.else457.2.i.i.i.if.else448.3.i.i.i_crit_edge, label %if.then503.2.i.i.i

if.else457.2.i.i.i.if.else448.3.i.i.i_crit_edge:  ; preds = %if.else457.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else448.3.i.i.i

if.then503.2.i.i.i:                               ; preds = %if.else457.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %or508.2.i.i.i = or i8 %301, -16
  %307 = ptrtoint ptr %arrayidx496.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %307)
  store i8 %or508.2.i.i.i, ptr %arrayidx496.2.i.i.i, align 1
  br label %if.else448.3.i.i.i

if.then485.2.i.i.i:                               ; preds = %if.else448.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx456.2.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 3, i32 %rf.11050.i.i.i, i32 2
  %308 = ptrtoint ptr %arrayidx456.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %308)
  store i8 -2, ptr %arrayidx456.2.i.i.i, align 1
  %arrayidx488.2.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 2, i32 %rf.11050.i.i.i, i32 2
  %309 = ptrtoint ptr %arrayidx488.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %309)
  store i8 -2, ptr %arrayidx488.2.i.i.i, align 1
  br label %if.else448.3.i.i.i

if.else448.3.i.i.i:                               ; preds = %if.then485.2.i.i.i, %if.then503.2.i.i.i, %if.else457.2.i.i.i.if.else448.3.i.i.i_crit_edge
  %addr.7.2.i.i.i = add nuw nsw i32 %addr.01053.i.i.i, 35
  %arrayidx449.3.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %addr.7.2.i.i.i
  %310 = ptrtoint ptr %arrayidx449.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %arrayidx449.3.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %311)
  %cmp451.3.i.i.i = icmp eq i8 %311, -1
  br i1 %cmp451.3.i.i.i, label %if.then485.3.i.i.i, label %if.else457.3.i.i.i

if.else457.3.i.i.i:                               ; preds = %if.else448.3.i.i.i
  %312 = lshr i8 %311, 4
  %arrayidx465.3.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 3, i32 %rf.11050.i.i.i, i32 3
  %or477.3.i.i.i = or i8 %312, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %311)
  %tobool471.not.3.i361.i.i = icmp slt i8 %311, 0
  %spec.select343.i.i = select i1 %tobool471.not.3.i361.i.i, i8 %or477.3.i.i.i, i8 %312
  %313 = ptrtoint ptr %arrayidx465.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %313)
  store i8 %spec.select343.i.i, ptr %arrayidx465.3.i.i.i, align 1
  %314 = and i8 %311, 15
  %arrayidx496.3.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 2, i32 %rf.11050.i.i.i, i32 3
  %315 = ptrtoint ptr %arrayidx496.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %315)
  store i8 %314, ptr %arrayidx496.3.i.i.i, align 1
  %316 = and i8 %311, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %316)
  %tobool502.not.3.i.i.i = icmp eq i8 %316, 0
  br i1 %tobool502.not.3.i.i.i, label %if.else457.3.i.i.i.for.inc514.3.i.i.i_crit_edge, label %if.then503.3.i.i.i

if.else457.3.i.i.i.for.inc514.3.i.i.i_crit_edge:  ; preds = %if.else457.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc514.3.i.i.i

if.then503.3.i.i.i:                               ; preds = %if.else457.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %or508.3.i.i.i = or i8 %311, -16
  %317 = ptrtoint ptr %arrayidx496.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %317)
  store i8 %or508.3.i.i.i, ptr %arrayidx496.3.i.i.i, align 1
  br label %for.inc514.3.i.i.i

if.then485.3.i.i.i:                               ; preds = %if.else448.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx456.3.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 3, i32 %rf.11050.i.i.i, i32 3
  %318 = ptrtoint ptr %arrayidx456.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %318)
  store i8 -2, ptr %arrayidx456.3.i.i.i, align 1
  %arrayidx488.3.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 2, i32 %rf.11050.i.i.i, i32 3
  %319 = ptrtoint ptr %arrayidx488.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %319)
  store i8 -2, ptr %arrayidx488.3.i.i.i, align 1
  br label %for.inc514.3.i.i.i

for.inc514.3.i.i.i:                               ; preds = %if.then485.3.i.i.i, %if.then503.3.i.i.i, %if.else457.3.i.i.i.for.inc514.3.i.i.i_crit_edge
  %addr.7.3.i.i.i = add nuw nsw i32 %addr.01053.i.i.i, 36
  %arrayidx517.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %addr.7.3.i.i.i
  %320 = ptrtoint ptr %arrayidx517.i.i.i to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %arrayidx517.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %321)
  %cmp519.i.i.i = icmp eq i8 %321, -1
  %322 = lshr i8 %321, 4
  %323 = and i8 %321, 15
  %.sink.i.i = select i1 %cmp519.i.i.i, i8 -2, i8 %322
  %.sink.i.i.i = select i1 %cmp519.i.i.i, i8 -2, i8 %323
  %324 = getelementptr %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 1, i32 %rf.11050.i.i.i, i32 1
  %325 = ptrtoint ptr %324 to i32
  call void @__asan_store1_noabort(i32 %325)
  store i8 %.sink.i.i, ptr %324, align 1
  %326 = getelementptr %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 1, i32 %rf.11050.i.i.i, i32 2
  %327 = ptrtoint ptr %326 to i32
  call void @__asan_store1_noabort(i32 %327)
  store i8 %.sink.i.i.i, ptr %326, align 1
  %inc545.i.i.i = add nuw nsw i32 %addr.01053.i.i.i, 37
  %arrayidx546.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc545.i.i.i
  %328 = ptrtoint ptr %arrayidx546.i.i.i to i32
  call void @__asan_load1_noabort(i32 %328)
  %329 = load i8, ptr %arrayidx546.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %329)
  %cmp548.i.i.i = icmp eq i8 %329, -1
  %330 = and i8 %329, 15
  %spec.select1075.i.i.i = select i1 %cmp548.i.i.i, i8 -2, i8 %330
  %331 = getelementptr %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 1, i32 %rf.11050.i.i.i, i32 3
  %332 = ptrtoint ptr %331 to i32
  call void @__asan_store1_noabort(i32 %332)
  store i8 %spec.select1075.i.i.i, ptr %331, align 1
  %333 = and i8 %.sink.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %333)
  %tobool584.not.i.i.i = icmp eq i8 %333, 0
  br i1 %tobool584.not.i.i.i, label %for.inc514.3.i.i.i.for.inc594.i.i.i_crit_edge, label %for.inc594.sink.split.i.i.i

for.inc514.3.i.i.i.for.inc594.i.i.i_crit_edge:    ; preds = %for.inc514.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc594.i.i.i

for.inc594.sink.split.i.i.i:                      ; preds = %for.inc514.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %or590.i.i.i = or i8 %.sink.i.i, -16
  %334 = ptrtoint ptr %324 to i32
  call void @__asan_store1_noabort(i32 %334)
  store i8 %or590.i.i.i, ptr %324, align 1
  br label %for.inc594.i.i.i

for.inc594.i.i.i:                                 ; preds = %for.inc594.sink.split.i.i.i, %for.inc514.3.i.i.i.for.inc594.i.i.i_crit_edge
  %335 = ptrtoint ptr %326 to i32
  call void @__asan_load1_noabort(i32 %335)
  %336 = load i8, ptr %326, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %336)
  %cmp572.1.i.i.i = icmp eq i8 %336, -1
  br i1 %cmp572.1.i.i.i, label %for.inc594.i.i.i.for.inc594.1.sink.split.i.i.i_crit_edge, label %if.else578.1.i.i.i

for.inc594.i.i.i.for.inc594.1.sink.split.i.i.i_crit_edge: ; preds = %for.inc594.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc594.1.sink.split.i.i.i

if.else578.1.i.i.i:                               ; preds = %for.inc594.i.i.i
  %337 = and i8 %336, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %337)
  %tobool584.not.1.i.i.i = icmp eq i8 %337, 0
  br i1 %tobool584.not.1.i.i.i, label %if.else578.1.i.i.i.for.inc594.1.i.i.i_crit_edge, label %if.then585.1.i.i.i

if.else578.1.i.i.i.for.inc594.1.i.i.i_crit_edge:  ; preds = %if.else578.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc594.1.i.i.i

if.then585.1.i.i.i:                               ; preds = %if.else578.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %or590.1.i.i.i = or i8 %336, -16
  br label %for.inc594.1.sink.split.i.i.i

for.inc594.1.sink.split.i.i.i:                    ; preds = %if.then585.1.i.i.i, %for.inc594.i.i.i.for.inc594.1.sink.split.i.i.i_crit_edge
  %.sink1077.i.i.i = phi i8 [ %or590.1.i.i.i, %if.then585.1.i.i.i ], [ -2, %for.inc594.i.i.i.for.inc594.1.sink.split.i.i.i_crit_edge ]
  %338 = ptrtoint ptr %326 to i32
  call void @__asan_store1_noabort(i32 %338)
  store i8 %.sink1077.i.i.i, ptr %326, align 1
  br label %for.inc594.1.i.i.i

for.inc594.1.i.i.i:                               ; preds = %for.inc594.1.sink.split.i.i.i, %if.else578.1.i.i.i.for.inc594.1.i.i.i_crit_edge
  %339 = ptrtoint ptr %331 to i32
  call void @__asan_load1_noabort(i32 %339)
  %340 = load i8, ptr %331, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %340)
  %cmp572.2.i.i.i = icmp eq i8 %340, -1
  br i1 %cmp572.2.i.i.i, label %for.inc594.1.i.i.i.for.inc594.2.sink.split.i.i.i_crit_edge, label %if.else578.2.i.i.i

for.inc594.1.i.i.i.for.inc594.2.sink.split.i.i.i_crit_edge: ; preds = %for.inc594.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc594.2.sink.split.i.i.i

if.else578.2.i.i.i:                               ; preds = %for.inc594.1.i.i.i
  %341 = and i8 %340, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %341)
  %tobool584.not.2.i.i.i = icmp eq i8 %341, 0
  br i1 %tobool584.not.2.i.i.i, label %if.else578.2.i.i.i.for.inc594.2.i.i.i_crit_edge, label %if.then585.2.i.i.i

if.else578.2.i.i.i.for.inc594.2.i.i.i_crit_edge:  ; preds = %if.else578.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc594.2.i.i.i

if.then585.2.i.i.i:                               ; preds = %if.else578.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %or590.2.i.i.i = or i8 %340, -16
  br label %for.inc594.2.sink.split.i.i.i

for.inc594.2.sink.split.i.i.i:                    ; preds = %if.then585.2.i.i.i, %for.inc594.1.i.i.i.for.inc594.2.sink.split.i.i.i_crit_edge
  %.sink1078.i.i.i = phi i8 [ %or590.2.i.i.i, %if.then585.2.i.i.i ], [ -2, %for.inc594.1.i.i.i.for.inc594.2.sink.split.i.i.i_crit_edge ]
  %342 = ptrtoint ptr %331 to i32
  call void @__asan_store1_noabort(i32 %342)
  store i8 %.sink1078.i.i.i, ptr %331, align 1
  br label %for.inc594.2.i.i.i

for.inc594.2.i.i.i:                               ; preds = %for.inc594.2.sink.split.i.i.i, %if.else578.2.i.i.i.for.inc594.2.i.i.i_crit_edge
  %inc563.i.i.i = add nuw nsw i32 %addr.01053.i.i.i, 38
  %arrayidx601.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc563.i.i.i
  %343 = ptrtoint ptr %arrayidx601.i.i.i to i32
  call void @__asan_load1_noabort(i32 %343)
  %344 = load i8, ptr %arrayidx601.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %344)
  %cmp603.i.i.i = icmp eq i8 %344, -1
  br i1 %cmp603.i.i.i, label %if.then637.i.i.i, label %if.else609.i.i.i

if.else609.i.i.i:                                 ; preds = %for.inc594.2.i.i.i
  %345 = lshr i8 %344, 4
  %arrayidx617.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 4, i32 %rf.11050.i.i.i, i32 0
  %or629.i.i.i = or i8 %345, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %344)
  %tobool623.not.i362.i.i = icmp slt i8 %344, 0
  %spec.select344.i.i = select i1 %tobool623.not.i362.i.i, i8 %or629.i.i.i, i8 %345
  %346 = ptrtoint ptr %arrayidx617.i.i.i to i32
  call void @__asan_store1_noabort(i32 %346)
  store i8 %spec.select344.i.i, ptr %arrayidx617.i.i.i, align 1
  %347 = and i8 %344, 15
  %arrayidx648.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 5, i32 %rf.11050.i.i.i, i32 0
  %348 = ptrtoint ptr %arrayidx648.i.i.i to i32
  call void @__asan_store1_noabort(i32 %348)
  store i8 %347, ptr %arrayidx648.i.i.i, align 1
  %349 = and i8 %344, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %349)
  %tobool654.not.i.i.i = icmp eq i8 %349, 0
  br i1 %tobool654.not.i.i.i, label %if.else609.i.i.i.if.end663.i.i.i_crit_edge, label %if.then655.i.i.i

if.else609.i.i.i.if.end663.i.i.i_crit_edge:       ; preds = %if.else609.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end663.i.i.i

if.then637.i.i.i:                                 ; preds = %for.inc594.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx608.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 4, i32 %rf.11050.i.i.i, i32 0
  %350 = ptrtoint ptr %arrayidx608.i.i.i to i32
  call void @__asan_store1_noabort(i32 %350)
  store i8 -2, ptr %arrayidx608.i.i.i, align 1
  %arrayidx640.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 5, i32 %rf.11050.i.i.i, i32 0
  %351 = ptrtoint ptr %arrayidx640.i.i.i to i32
  call void @__asan_store1_noabort(i32 %351)
  store i8 -2, ptr %arrayidx640.i.i.i, align 1
  br label %if.end663.i.i.i

if.then655.i.i.i:                                 ; preds = %if.else609.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %or660.i.i.i = or i8 %344, -16
  %352 = ptrtoint ptr %arrayidx648.i.i.i to i32
  call void @__asan_store1_noabort(i32 %352)
  store i8 %or660.i.i.i, ptr %arrayidx648.i.i.i, align 1
  br label %if.end663.i.i.i

if.end663.i.i.i:                                  ; preds = %if.then655.i.i.i, %if.then637.i.i.i, %if.else609.i.i.i.if.end663.i.i.i_crit_edge
  %inc664.i.i.i = add nuw nsw i32 %addr.01053.i.i.i, 39
  %arrayidx601.1.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc664.i.i.i
  %353 = ptrtoint ptr %arrayidx601.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %353)
  %354 = load i8, ptr %arrayidx601.1.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %354)
  %cmp603.1.i.i.i = icmp eq i8 %354, -1
  br i1 %cmp603.1.i.i.i, label %if.then637.1.i.i.i, label %if.else609.1.i.i.i

if.else609.1.i.i.i:                               ; preds = %if.end663.i.i.i
  %355 = lshr i8 %354, 4
  %arrayidx617.1.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 4, i32 %rf.11050.i.i.i, i32 1
  %or629.1.i.i.i = or i8 %355, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %354)
  %tobool623.not.1.i363.i.i = icmp slt i8 %354, 0
  %spec.select345.i.i = select i1 %tobool623.not.1.i363.i.i, i8 %or629.1.i.i.i, i8 %355
  %356 = ptrtoint ptr %arrayidx617.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %356)
  store i8 %spec.select345.i.i, ptr %arrayidx617.1.i.i.i, align 1
  %357 = and i8 %354, 15
  %arrayidx648.1.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 5, i32 %rf.11050.i.i.i, i32 1
  %358 = ptrtoint ptr %arrayidx648.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %358)
  store i8 %357, ptr %arrayidx648.1.i.i.i, align 1
  %359 = and i8 %354, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %359)
  %tobool654.not.1.i.i.i = icmp eq i8 %359, 0
  br i1 %tobool654.not.1.i.i.i, label %if.else609.1.i.i.i.if.end663.1.i.i.i_crit_edge, label %if.then655.1.i.i.i

if.else609.1.i.i.i.if.end663.1.i.i.i_crit_edge:   ; preds = %if.else609.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end663.1.i.i.i

if.then655.1.i.i.i:                               ; preds = %if.else609.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %or660.1.i.i.i = or i8 %354, -16
  %360 = ptrtoint ptr %arrayidx648.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %360)
  store i8 %or660.1.i.i.i, ptr %arrayidx648.1.i.i.i, align 1
  br label %if.end663.1.i.i.i

if.then637.1.i.i.i:                               ; preds = %if.end663.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx608.1.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 4, i32 %rf.11050.i.i.i, i32 1
  %361 = ptrtoint ptr %arrayidx608.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %361)
  store i8 -2, ptr %arrayidx608.1.i.i.i, align 1
  %arrayidx640.1.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 5, i32 %rf.11050.i.i.i, i32 1
  %362 = ptrtoint ptr %arrayidx640.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %362)
  store i8 -2, ptr %arrayidx640.1.i.i.i, align 1
  br label %if.end663.1.i.i.i

if.end663.1.i.i.i:                                ; preds = %if.then637.1.i.i.i, %if.then655.1.i.i.i, %if.else609.1.i.i.i.if.end663.1.i.i.i_crit_edge
  %inc664.1.i.i.i = add nuw nsw i32 %addr.01053.i.i.i, 40
  %arrayidx601.2.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc664.1.i.i.i
  %363 = ptrtoint ptr %arrayidx601.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %363)
  %364 = load i8, ptr %arrayidx601.2.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %364)
  %cmp603.2.i.i.i = icmp eq i8 %364, -1
  br i1 %cmp603.2.i.i.i, label %if.then637.2.i.i.i, label %if.else609.2.i.i.i

if.else609.2.i.i.i:                               ; preds = %if.end663.1.i.i.i
  %365 = lshr i8 %364, 4
  %arrayidx617.2.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 4, i32 %rf.11050.i.i.i, i32 2
  %or629.2.i.i.i = or i8 %365, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %364)
  %tobool623.not.2.i364.i.i = icmp slt i8 %364, 0
  %spec.select346.i.i = select i1 %tobool623.not.2.i364.i.i, i8 %or629.2.i.i.i, i8 %365
  %366 = ptrtoint ptr %arrayidx617.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %366)
  store i8 %spec.select346.i.i, ptr %arrayidx617.2.i.i.i, align 1
  %367 = and i8 %364, 15
  %arrayidx648.2.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 5, i32 %rf.11050.i.i.i, i32 2
  %368 = ptrtoint ptr %arrayidx648.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %368)
  store i8 %367, ptr %arrayidx648.2.i.i.i, align 1
  %369 = and i8 %364, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %369)
  %tobool654.not.2.i.i.i = icmp eq i8 %369, 0
  br i1 %tobool654.not.2.i.i.i, label %if.else609.2.i.i.i.if.end663.2.i.i.i_crit_edge, label %if.then655.2.i.i.i

if.else609.2.i.i.i.if.end663.2.i.i.i_crit_edge:   ; preds = %if.else609.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end663.2.i.i.i

if.then655.2.i.i.i:                               ; preds = %if.else609.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %or660.2.i.i.i = or i8 %364, -16
  %370 = ptrtoint ptr %arrayidx648.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %370)
  store i8 %or660.2.i.i.i, ptr %arrayidx648.2.i.i.i, align 1
  br label %if.end663.2.i.i.i

if.then637.2.i.i.i:                               ; preds = %if.end663.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx608.2.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 4, i32 %rf.11050.i.i.i, i32 2
  %371 = ptrtoint ptr %arrayidx608.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %371)
  store i8 -2, ptr %arrayidx608.2.i.i.i, align 1
  %arrayidx640.2.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 5, i32 %rf.11050.i.i.i, i32 2
  %372 = ptrtoint ptr %arrayidx640.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %372)
  store i8 -2, ptr %arrayidx640.2.i.i.i, align 1
  br label %if.end663.2.i.i.i

if.end663.2.i.i.i:                                ; preds = %if.then637.2.i.i.i, %if.then655.2.i.i.i, %if.else609.2.i.i.i.if.end663.2.i.i.i_crit_edge
  %inc664.2.i.i.i = add nuw nsw i32 %addr.01053.i.i.i, 41
  %arrayidx601.3.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc664.2.i.i.i
  %373 = ptrtoint ptr %arrayidx601.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %373)
  %374 = load i8, ptr %arrayidx601.3.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %374)
  %cmp603.3.i.i.i = icmp eq i8 %374, -1
  br i1 %cmp603.3.i.i.i, label %if.then637.3.i.i.i, label %if.else609.3.i.i.i

if.else609.3.i.i.i:                               ; preds = %if.end663.2.i.i.i
  %375 = lshr i8 %374, 4
  %arrayidx617.3.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 4, i32 %rf.11050.i.i.i, i32 3
  %or629.3.i.i.i = or i8 %375, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %374)
  %tobool623.not.3.i365.i.i = icmp slt i8 %374, 0
  %spec.select347.i.i = select i1 %tobool623.not.3.i365.i.i, i8 %or629.3.i.i.i, i8 %375
  %376 = ptrtoint ptr %arrayidx617.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %376)
  store i8 %spec.select347.i.i, ptr %arrayidx617.3.i.i.i, align 1
  %377 = and i8 %374, 15
  %arrayidx648.3.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 5, i32 %rf.11050.i.i.i, i32 3
  %378 = ptrtoint ptr %arrayidx648.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %378)
  store i8 %377, ptr %arrayidx648.3.i.i.i, align 1
  %379 = and i8 %374, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %379)
  %tobool654.not.3.i.i.i = icmp eq i8 %379, 0
  br i1 %tobool654.not.3.i.i.i, label %if.else609.3.i.i.i.if.end663.3.i.i.i_crit_edge, label %if.then655.3.i.i.i

if.else609.3.i.i.i.if.end663.3.i.i.i_crit_edge:   ; preds = %if.else609.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end663.3.i.i.i

if.then655.3.i.i.i:                               ; preds = %if.else609.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %or660.3.i.i.i = or i8 %374, -16
  %380 = ptrtoint ptr %arrayidx648.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %380)
  store i8 %or660.3.i.i.i, ptr %arrayidx648.3.i.i.i, align 1
  br label %if.end663.3.i.i.i

if.then637.3.i.i.i:                               ; preds = %if.end663.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx608.3.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 4, i32 %rf.11050.i.i.i, i32 3
  %381 = ptrtoint ptr %arrayidx608.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %381)
  store i8 -2, ptr %arrayidx608.3.i.i.i, align 1
  %arrayidx640.3.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 5, i32 %rf.11050.i.i.i, i32 3
  %382 = ptrtoint ptr %arrayidx640.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %382)
  store i8 -2, ptr %arrayidx640.3.i.i.i, align 1
  br label %if.end663.3.i.i.i

if.end663.3.i.i.i:                                ; preds = %if.then637.3.i.i.i, %if.then655.3.i.i.i, %if.else609.3.i.i.i.if.end663.3.i.i.i_crit_edge
  %inc664.3.i.i.i = add nuw nsw i32 %addr.01053.i.i.i, 42
  %inc669.i.i.i = add nuw nsw i32 %rf.11050.i.i.i, 1
  %exitcond1065.not.i.i.i = icmp eq i32 %inc669.i.i.i, 4
  br i1 %exitcond1065.not.i.i.i, label %if.end663.3.i.i.i._rtl8192ee_read_power_value_fromprom.exit.i.i_crit_edge, label %if.end663.3.i.i.i.if.then150.i.i.i_crit_edge

if.end663.3.i.i.i.if.then150.i.i.i_crit_edge:     ; preds = %if.end663.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then150.i.i.i

if.end663.3.i.i.i._rtl8192ee_read_power_value_fromprom.exit.i.i_crit_edge: ; preds = %if.end663.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl8192ee_read_power_value_fromprom.exit.i.i

_rtl8192ee_read_power_value_fromprom.exit.i.i:    ; preds = %if.end663.3.i.i.i._rtl8192ee_read_power_value_fromprom.exit.i.i_crit_edge, %if.then6.i.i.i
  %call.i.i5862 = call fastcc zeroext i8 @_rtl92ee_get_chnl_group(i8 noundef zeroext 1) #8
  br label %for.cond3.preheader.i.i

for.cond3.preheader.i.i:                          ; preds = %for.body70.preheader.i.i.for.cond3.preheader.i.i_crit_edge, %_rtl8192ee_read_power_value_fromprom.exit.i.i
  %indvars.iv377.i.i = phi i32 [ 0, %_rtl8192ee_read_power_value_fromprom.exit.i.i ], [ %indvars.iv.next378.i.i, %for.body70.preheader.i.i.for.cond3.preheader.i.i_crit_edge ]
  %arrayidx17.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 38, i32 %indvars.iv377.i.i, i32 13
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.inc.i.i.for.inc.i.i_crit_edge, %for.cond3.preheader.i.i
  %call.i.i5865 = phi i8 [ %call.i.i5862, %for.cond3.preheader.i.i ], [ %call.i.i58, %for.inc.i.i.for.inc.i.i_crit_edge ]
  %indvars.iv.next.i.i64 = phi i32 [ 1, %for.cond3.preheader.i.i ], [ %indvars.iv.next.i.i, %for.inc.i.i.for.inc.i.i_crit_edge ]
  %indvars.iv.i.i63 = phi i32 [ 0, %for.cond3.preheader.i.i ], [ %indvars.iv.next.i.i64, %for.inc.i.i.for.inc.i.i_crit_edge ]
  %idxprom29.i.i = zext i8 %call.i.i5865 to i32
  %arrayidx30.i.i = getelementptr [4 x [6 x i8]], ptr %pwr2g.i.i, i32 0, i32 %indvars.iv377.i.i, i32 %idxprom29.i.i
  %383 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_load1_noabort(i32 %383)
  %384 = load i8, ptr %arrayidx30.i.i, align 1
  %arrayidx35.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 38, i32 %indvars.iv377.i.i, i32 %indvars.iv.i.i63
  %385 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_store1_noabort(i32 %385)
  store i8 %384, ptr %arrayidx35.i.i, align 1
  %arrayidx40.i.i = getelementptr %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 1, i32 %indvars.iv377.i.i, i32 %idxprom29.i.i
  %386 = ptrtoint ptr %arrayidx40.i.i to i32
  call void @__asan_load1_noabort(i32 %386)
  %387 = load i8, ptr %arrayidx40.i.i, align 1
  %arrayidx45.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 39, i32 %indvars.iv377.i.i, i32 %indvars.iv.i.i63
  %388 = ptrtoint ptr %arrayidx45.i.i to i32
  call void @__asan_store1_noabort(i32 %388)
  store i8 %387, ptr %arrayidx45.i.i, align 1
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.next.i.i64, 1
  %389 = trunc i32 %indvars.iv.next.i.i to i8
  %call.i.i58 = call fastcc zeroext i8 @_rtl92ee_get_chnl_group(i8 noundef zeroext %389) #8
  %cmp11.i.i = icmp eq i32 %indvars.iv.next.i.i64, 13
  br i1 %cmp11.i.i, label %for.body50.preheader.i.i, label %for.inc.i.i.for.inc.i.i_crit_edge

for.inc.i.i.for.inc.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

for.body50.preheader.i.i:                         ; preds = %for.inc.i.i
  %arrayidx13.i.i = getelementptr [4 x [6 x i8]], ptr %pwr2g.i.i, i32 0, i32 %indvars.iv377.i.i, i32 5
  %arrayidx25.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 39, i32 %indvars.iv377.i.i, i32 13
  %390 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load1_noabort(i32 %390)
  %391 = load i8, ptr %arrayidx13.i.i, align 1
  %392 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_store1_noabort(i32 %392)
  store i8 %391, ptr %arrayidx17.i.i, align 1
  %idxprom20.i.i = zext i8 %call.i.i58 to i32
  %arrayidx21.i.i = getelementptr %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 1, i32 %indvars.iv377.i.i, i32 %idxprom20.i.i
  %393 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_load1_noabort(i32 %393)
  %394 = load i8, ptr %arrayidx21.i.i, align 1
  %395 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_store1_noabort(i32 %395)
  store i8 %394, ptr %arrayidx25.i.i, align 1
  br label %for.body50.i.i

for.body50.i.i:                                   ; preds = %for.body50.i.i.for.body50.i.i_crit_edge, %for.body50.preheader.i.i
  %indvars.iv368.i.i = phi i32 [ 0, %for.body50.preheader.i.i ], [ %indvars.iv.next369.i.i, %for.body50.i.i.for.body50.i.i_crit_edge ]
  %arrayidx52.i.i = getelementptr [49 x i8], ptr @channel5g, i32 0, i32 %indvars.iv368.i.i
  %396 = ptrtoint ptr %arrayidx52.i.i to i32
  call void @__asan_load1_noabort(i32 %396)
  %397 = load i8, ptr %arrayidx52.i.i, align 1
  %call53.i.i = call fastcc zeroext i8 @_rtl92ee_get_chnl_group(i8 noundef zeroext %397) #8
  %idxprom57.i.i = zext i8 %call53.i.i to i32
  %arrayidx58.i.i = getelementptr [4 x [14 x i8]], ptr %pwr5g.i.i, i32 0, i32 %indvars.iv377.i.i, i32 %idxprom57.i.i
  %398 = ptrtoint ptr %arrayidx58.i.i to i32
  call void @__asan_load1_noabort(i32 %398)
  %399 = load i8, ptr %arrayidx58.i.i, align 1
  %arrayidx62.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 45, i32 %indvars.iv377.i.i, i32 %indvars.iv368.i.i
  %400 = ptrtoint ptr %arrayidx62.i.i to i32
  call void @__asan_store1_noabort(i32 %400)
  store i8 %399, ptr %arrayidx62.i.i, align 1
  %indvars.iv.next369.i.i = add nuw nsw i32 %indvars.iv368.i.i, 1
  %exitcond370.not.i.i = icmp eq i32 %indvars.iv.next369.i.i, 49
  br i1 %exitcond370.not.i.i, label %for.body70.preheader.i.i, label %for.body50.i.i.for.body50.i.i_crit_edge

for.body50.i.i.for.body50.i.i_crit_edge:          ; preds = %for.body50.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body50.i.i

for.body70.preheader.i.i:                         ; preds = %for.body50.i.i
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @channel5g_80m to i32))
  %401 = load i8, ptr @channel5g_80m, align 1
  %call73.i.i = call fastcc zeroext i8 @_rtl92ee_get_chnl_group(i8 noundef zeroext %401) #8
  %idxprom77.i.i = zext i8 %call73.i.i to i32
  %arrayidx78.i.i = getelementptr [4 x [14 x i8]], ptr %pwr5g.i.i, i32 0, i32 %indvars.iv377.i.i, i32 %idxprom77.i.i
  %402 = ptrtoint ptr %arrayidx78.i.i to i32
  call void @__asan_load1_noabort(i32 %402)
  %403 = load i8, ptr %arrayidx78.i.i, align 1
  %add83.i.i = add nuw nsw i32 %idxprom77.i.i, 1
  %arrayidx84.i.i = getelementptr [4 x [14 x i8]], ptr %pwr5g.i.i, i32 0, i32 %indvars.iv377.i.i, i32 %add83.i.i
  %404 = ptrtoint ptr %arrayidx84.i.i to i32
  call void @__asan_load1_noabort(i32 %404)
  %405 = load i8, ptr %arrayidx84.i.i, align 1
  %conv85.i.i = zext i8 %403 to i16
  %conv86.i.i = zext i8 %405 to i16
  %add87.i.i = add nuw nsw i16 %conv86.i.i, %conv85.i.i
  %div312.i.i = lshr i16 %add87.i.i, 1
  %conv88.i.i = trunc i16 %div312.i.i to i8
  %arrayidx92.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 46, i32 %indvars.iv377.i.i, i32 0
  %406 = ptrtoint ptr %arrayidx92.i.i to i32
  call void @__asan_store1_noabort(i32 %406)
  store i8 %conv88.i.i, ptr %arrayidx92.i.i, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x i8], ptr @channel5g_80m, i32 0, i32 1) to i32))
  %407 = load i8, ptr getelementptr inbounds ([7 x i8], ptr @channel5g_80m, i32 0, i32 1), align 1
  %call73.1.i.i = call fastcc zeroext i8 @_rtl92ee_get_chnl_group(i8 noundef zeroext %407) #8
  %idxprom77.1.i.i = zext i8 %call73.1.i.i to i32
  %arrayidx78.1.i.i = getelementptr [4 x [14 x i8]], ptr %pwr5g.i.i, i32 0, i32 %indvars.iv377.i.i, i32 %idxprom77.1.i.i
  %408 = ptrtoint ptr %arrayidx78.1.i.i to i32
  call void @__asan_load1_noabort(i32 %408)
  %409 = load i8, ptr %arrayidx78.1.i.i, align 1
  %add83.1.i.i = add nuw nsw i32 %idxprom77.1.i.i, 1
  %arrayidx84.1.i.i = getelementptr [4 x [14 x i8]], ptr %pwr5g.i.i, i32 0, i32 %indvars.iv377.i.i, i32 %add83.1.i.i
  %410 = ptrtoint ptr %arrayidx84.1.i.i to i32
  call void @__asan_load1_noabort(i32 %410)
  %411 = load i8, ptr %arrayidx84.1.i.i, align 1
  %conv85.1.i.i = zext i8 %409 to i16
  %conv86.1.i.i = zext i8 %411 to i16
  %add87.1.i.i = add nuw nsw i16 %conv86.1.i.i, %conv85.1.i.i
  %div312.1.i.i = lshr i16 %add87.1.i.i, 1
  %conv88.1.i.i = trunc i16 %div312.1.i.i to i8
  %arrayidx92.1.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 46, i32 %indvars.iv377.i.i, i32 1
  %412 = ptrtoint ptr %arrayidx92.1.i.i to i32
  call void @__asan_store1_noabort(i32 %412)
  store i8 %conv88.1.i.i, ptr %arrayidx92.1.i.i, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x i8], ptr @channel5g_80m, i32 0, i32 2) to i32))
  %413 = load i8, ptr getelementptr inbounds ([7 x i8], ptr @channel5g_80m, i32 0, i32 2), align 1
  %call73.2.i.i = call fastcc zeroext i8 @_rtl92ee_get_chnl_group(i8 noundef zeroext %413) #8
  %idxprom77.2.i.i = zext i8 %call73.2.i.i to i32
  %arrayidx78.2.i.i = getelementptr [4 x [14 x i8]], ptr %pwr5g.i.i, i32 0, i32 %indvars.iv377.i.i, i32 %idxprom77.2.i.i
  %414 = ptrtoint ptr %arrayidx78.2.i.i to i32
  call void @__asan_load1_noabort(i32 %414)
  %415 = load i8, ptr %arrayidx78.2.i.i, align 1
  %add83.2.i.i = add nuw nsw i32 %idxprom77.2.i.i, 1
  %arrayidx84.2.i.i = getelementptr [4 x [14 x i8]], ptr %pwr5g.i.i, i32 0, i32 %indvars.iv377.i.i, i32 %add83.2.i.i
  %416 = ptrtoint ptr %arrayidx84.2.i.i to i32
  call void @__asan_load1_noabort(i32 %416)
  %417 = load i8, ptr %arrayidx84.2.i.i, align 1
  %conv85.2.i.i = zext i8 %415 to i16
  %conv86.2.i.i = zext i8 %417 to i16
  %add87.2.i.i = add nuw nsw i16 %conv86.2.i.i, %conv85.2.i.i
  %div312.2.i.i = lshr i16 %add87.2.i.i, 1
  %conv88.2.i.i = trunc i16 %div312.2.i.i to i8
  %arrayidx92.2.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 46, i32 %indvars.iv377.i.i, i32 2
  %418 = ptrtoint ptr %arrayidx92.2.i.i to i32
  call void @__asan_store1_noabort(i32 %418)
  store i8 %conv88.2.i.i, ptr %arrayidx92.2.i.i, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x i8], ptr @channel5g_80m, i32 0, i32 3) to i32))
  %419 = load i8, ptr getelementptr inbounds ([7 x i8], ptr @channel5g_80m, i32 0, i32 3), align 1
  %call73.3.i.i = call fastcc zeroext i8 @_rtl92ee_get_chnl_group(i8 noundef zeroext %419) #8
  %idxprom77.3.i.i = zext i8 %call73.3.i.i to i32
  %arrayidx78.3.i.i = getelementptr [4 x [14 x i8]], ptr %pwr5g.i.i, i32 0, i32 %indvars.iv377.i.i, i32 %idxprom77.3.i.i
  %420 = ptrtoint ptr %arrayidx78.3.i.i to i32
  call void @__asan_load1_noabort(i32 %420)
  %421 = load i8, ptr %arrayidx78.3.i.i, align 1
  %add83.3.i.i = add nuw nsw i32 %idxprom77.3.i.i, 1
  %arrayidx84.3.i.i = getelementptr [4 x [14 x i8]], ptr %pwr5g.i.i, i32 0, i32 %indvars.iv377.i.i, i32 %add83.3.i.i
  %422 = ptrtoint ptr %arrayidx84.3.i.i to i32
  call void @__asan_load1_noabort(i32 %422)
  %423 = load i8, ptr %arrayidx84.3.i.i, align 1
  %conv85.3.i.i = zext i8 %421 to i16
  %conv86.3.i.i = zext i8 %423 to i16
  %add87.3.i.i = add nuw nsw i16 %conv86.3.i.i, %conv85.3.i.i
  %div312.3.i.i = lshr i16 %add87.3.i.i, 1
  %conv88.3.i.i = trunc i16 %div312.3.i.i to i8
  %arrayidx92.3.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 46, i32 %indvars.iv377.i.i, i32 3
  %424 = ptrtoint ptr %arrayidx92.3.i.i to i32
  call void @__asan_store1_noabort(i32 %424)
  store i8 %conv88.3.i.i, ptr %arrayidx92.3.i.i, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x i8], ptr @channel5g_80m, i32 0, i32 4) to i32))
  %425 = load i8, ptr getelementptr inbounds ([7 x i8], ptr @channel5g_80m, i32 0, i32 4), align 1
  %call73.4.i.i = call fastcc zeroext i8 @_rtl92ee_get_chnl_group(i8 noundef zeroext %425) #8
  %idxprom77.4.i.i = zext i8 %call73.4.i.i to i32
  %arrayidx78.4.i.i = getelementptr [4 x [14 x i8]], ptr %pwr5g.i.i, i32 0, i32 %indvars.iv377.i.i, i32 %idxprom77.4.i.i
  %426 = ptrtoint ptr %arrayidx78.4.i.i to i32
  call void @__asan_load1_noabort(i32 %426)
  %427 = load i8, ptr %arrayidx78.4.i.i, align 1
  %add83.4.i.i = add nuw nsw i32 %idxprom77.4.i.i, 1
  %arrayidx84.4.i.i = getelementptr [4 x [14 x i8]], ptr %pwr5g.i.i, i32 0, i32 %indvars.iv377.i.i, i32 %add83.4.i.i
  %428 = ptrtoint ptr %arrayidx84.4.i.i to i32
  call void @__asan_load1_noabort(i32 %428)
  %429 = load i8, ptr %arrayidx84.4.i.i, align 1
  %conv85.4.i.i = zext i8 %427 to i16
  %conv86.4.i.i = zext i8 %429 to i16
  %add87.4.i.i = add nuw nsw i16 %conv86.4.i.i, %conv85.4.i.i
  %div312.4.i.i = lshr i16 %add87.4.i.i, 1
  %conv88.4.i.i = trunc i16 %div312.4.i.i to i8
  %arrayidx92.4.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 46, i32 %indvars.iv377.i.i, i32 4
  %430 = ptrtoint ptr %arrayidx92.4.i.i to i32
  call void @__asan_store1_noabort(i32 %430)
  store i8 %conv88.4.i.i, ptr %arrayidx92.4.i.i, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x i8], ptr @channel5g_80m, i32 0, i32 5) to i32))
  %431 = load i8, ptr getelementptr inbounds ([7 x i8], ptr @channel5g_80m, i32 0, i32 5), align 1
  %call73.5.i.i = call fastcc zeroext i8 @_rtl92ee_get_chnl_group(i8 noundef zeroext %431) #8
  %idxprom77.5.i.i = zext i8 %call73.5.i.i to i32
  %arrayidx78.5.i.i = getelementptr [4 x [14 x i8]], ptr %pwr5g.i.i, i32 0, i32 %indvars.iv377.i.i, i32 %idxprom77.5.i.i
  %432 = ptrtoint ptr %arrayidx78.5.i.i to i32
  call void @__asan_load1_noabort(i32 %432)
  %433 = load i8, ptr %arrayidx78.5.i.i, align 1
  %add83.5.i.i = add nuw nsw i32 %idxprom77.5.i.i, 1
  %arrayidx84.5.i.i = getelementptr [4 x [14 x i8]], ptr %pwr5g.i.i, i32 0, i32 %indvars.iv377.i.i, i32 %add83.5.i.i
  %434 = ptrtoint ptr %arrayidx84.5.i.i to i32
  call void @__asan_load1_noabort(i32 %434)
  %435 = load i8, ptr %arrayidx84.5.i.i, align 1
  %conv85.5.i.i = zext i8 %433 to i16
  %conv86.5.i.i = zext i8 %435 to i16
  %add87.5.i.i = add nuw nsw i16 %conv86.5.i.i, %conv85.5.i.i
  %div312.5.i.i = lshr i16 %add87.5.i.i, 1
  %conv88.5.i.i = trunc i16 %div312.5.i.i to i8
  %arrayidx92.5.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 46, i32 %indvars.iv377.i.i, i32 5
  %436 = ptrtoint ptr %arrayidx92.5.i.i to i32
  call void @__asan_store1_noabort(i32 %436)
  store i8 %conv88.5.i.i, ptr %arrayidx92.5.i.i, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x i8], ptr @channel5g_80m, i32 0, i32 6) to i32))
  %437 = load i8, ptr getelementptr inbounds ([7 x i8], ptr @channel5g_80m, i32 0, i32 6), align 1
  %call73.6.i.i = call fastcc zeroext i8 @_rtl92ee_get_chnl_group(i8 noundef zeroext %437) #8
  %idxprom77.6.i.i = zext i8 %call73.6.i.i to i32
  %arrayidx78.6.i.i = getelementptr [4 x [14 x i8]], ptr %pwr5g.i.i, i32 0, i32 %indvars.iv377.i.i, i32 %idxprom77.6.i.i
  %438 = ptrtoint ptr %arrayidx78.6.i.i to i32
  call void @__asan_load1_noabort(i32 %438)
  %439 = load i8, ptr %arrayidx78.6.i.i, align 1
  %add83.6.i.i = add nuw nsw i32 %idxprom77.6.i.i, 1
  %arrayidx84.6.i.i = getelementptr [4 x [14 x i8]], ptr %pwr5g.i.i, i32 0, i32 %indvars.iv377.i.i, i32 %add83.6.i.i
  %440 = ptrtoint ptr %arrayidx84.6.i.i to i32
  call void @__asan_load1_noabort(i32 %440)
  %441 = load i8, ptr %arrayidx84.6.i.i, align 1
  %conv85.6.i.i = zext i8 %439 to i16
  %conv86.6.i.i = zext i8 %441 to i16
  %add87.6.i.i = add nuw nsw i16 %conv86.6.i.i, %conv85.6.i.i
  %div312.6.i.i = lshr i16 %add87.6.i.i, 1
  %conv88.6.i.i = trunc i16 %div312.6.i.i to i8
  %arrayidx92.6.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 46, i32 %indvars.iv377.i.i, i32 6
  %442 = ptrtoint ptr %arrayidx92.6.i.i to i32
  call void @__asan_store1_noabort(i32 %442)
  store i8 %conv88.6.i.i, ptr %arrayidx92.6.i.i, align 1
  %arrayidx104.i.i = getelementptr %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 2, i32 %indvars.iv377.i.i, i32 0
  %443 = ptrtoint ptr %arrayidx104.i.i to i32
  call void @__asan_load1_noabort(i32 %443)
  %444 = load i8, ptr %arrayidx104.i.i, align 1
  %arrayidx108.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 41, i32 %indvars.iv377.i.i, i32 0
  %445 = ptrtoint ptr %arrayidx108.i.i to i32
  call void @__asan_store1_noabort(i32 %445)
  store i8 %444, ptr %arrayidx108.i.i, align 1
  %arrayidx112.i.i = getelementptr %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 3, i32 %indvars.iv377.i.i, i32 0
  %446 = ptrtoint ptr %arrayidx112.i.i to i32
  call void @__asan_load1_noabort(i32 %446)
  %447 = load i8, ptr %arrayidx112.i.i, align 1
  %arrayidx116.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 44, i32 %indvars.iv377.i.i, i32 0
  %448 = ptrtoint ptr %arrayidx116.i.i to i32
  call void @__asan_store1_noabort(i32 %448)
  store i8 %447, ptr %arrayidx116.i.i, align 1
  %arrayidx120.i.i = getelementptr %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 4, i32 %indvars.iv377.i.i, i32 0
  %449 = ptrtoint ptr %arrayidx120.i.i to i32
  call void @__asan_load1_noabort(i32 %449)
  %450 = load i8, ptr %arrayidx120.i.i, align 1
  %arrayidx124.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 42, i32 %indvars.iv377.i.i, i32 0
  %451 = ptrtoint ptr %arrayidx124.i.i to i32
  call void @__asan_store1_noabort(i32 %451)
  store i8 %450, ptr %arrayidx124.i.i, align 1
  %arrayidx128.i.i = getelementptr %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 5, i32 %indvars.iv377.i.i, i32 0
  %452 = ptrtoint ptr %arrayidx128.i.i to i32
  call void @__asan_load1_noabort(i32 %452)
  %453 = load i8, ptr %arrayidx128.i.i, align 1
  %arrayidx132.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 43, i32 %indvars.iv377.i.i, i32 0
  %454 = ptrtoint ptr %arrayidx132.i.i to i32
  call void @__asan_store1_noabort(i32 %454)
  store i8 %453, ptr %arrayidx132.i.i, align 1
  %arrayidx137.i.i = getelementptr %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 1, i32 %indvars.iv377.i.i, i32 0
  %455 = ptrtoint ptr %arrayidx137.i.i to i32
  call void @__asan_load1_noabort(i32 %455)
  %456 = load i8, ptr %arrayidx137.i.i, align 1
  %arrayidx141.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 47, i32 %indvars.iv377.i.i, i32 0
  %457 = ptrtoint ptr %arrayidx141.i.i to i32
  call void @__asan_store1_noabort(i32 %457)
  store i8 %456, ptr %arrayidx141.i.i, align 1
  %arrayidx146.i.i = getelementptr %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 2, i32 %indvars.iv377.i.i, i32 0
  %458 = ptrtoint ptr %arrayidx146.i.i to i32
  call void @__asan_load1_noabort(i32 %458)
  %459 = load i8, ptr %arrayidx146.i.i, align 1
  %arrayidx150.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 48, i32 %indvars.iv377.i.i, i32 0
  %460 = ptrtoint ptr %arrayidx150.i.i to i32
  call void @__asan_store1_noabort(i32 %460)
  store i8 %459, ptr %arrayidx150.i.i, align 1
  %arrayidx155.i.i = getelementptr %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 3, i32 %indvars.iv377.i.i, i32 0
  %461 = ptrtoint ptr %arrayidx155.i.i to i32
  call void @__asan_load1_noabort(i32 %461)
  %462 = load i8, ptr %arrayidx155.i.i, align 1
  %arrayidx159.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 49, i32 %indvars.iv377.i.i, i32 0
  %463 = ptrtoint ptr %arrayidx159.i.i to i32
  call void @__asan_store1_noabort(i32 %463)
  store i8 %462, ptr %arrayidx159.i.i, align 1
  %arrayidx163.i.i = getelementptr %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 4, i32 %indvars.iv377.i.i, i32 0
  %464 = ptrtoint ptr %arrayidx163.i.i to i32
  call void @__asan_load1_noabort(i32 %464)
  %465 = load i8, ptr %arrayidx163.i.i, align 1
  %arrayidx167.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 50, i32 %indvars.iv377.i.i, i32 0
  %466 = ptrtoint ptr %arrayidx167.i.i to i32
  call void @__asan_store1_noabort(i32 %466)
  store i8 %465, ptr %arrayidx167.i.i, align 1
  %arrayidx104.1.i.i = getelementptr %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 2, i32 %indvars.iv377.i.i, i32 1
  %467 = ptrtoint ptr %arrayidx104.1.i.i to i32
  call void @__asan_load1_noabort(i32 %467)
  %468 = load i8, ptr %arrayidx104.1.i.i, align 1
  %arrayidx108.1.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 41, i32 %indvars.iv377.i.i, i32 1
  %469 = ptrtoint ptr %arrayidx108.1.i.i to i32
  call void @__asan_store1_noabort(i32 %469)
  store i8 %468, ptr %arrayidx108.1.i.i, align 1
  %arrayidx112.1.i.i = getelementptr %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 3, i32 %indvars.iv377.i.i, i32 1
  %470 = ptrtoint ptr %arrayidx112.1.i.i to i32
  call void @__asan_load1_noabort(i32 %470)
  %471 = load i8, ptr %arrayidx112.1.i.i, align 1
  %arrayidx116.1.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 44, i32 %indvars.iv377.i.i, i32 1
  %472 = ptrtoint ptr %arrayidx116.1.i.i to i32
  call void @__asan_store1_noabort(i32 %472)
  store i8 %471, ptr %arrayidx116.1.i.i, align 1
  %arrayidx120.1.i.i = getelementptr %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 4, i32 %indvars.iv377.i.i, i32 1
  %473 = ptrtoint ptr %arrayidx120.1.i.i to i32
  call void @__asan_load1_noabort(i32 %473)
  %474 = load i8, ptr %arrayidx120.1.i.i, align 1
  %arrayidx124.1.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 42, i32 %indvars.iv377.i.i, i32 1
  %475 = ptrtoint ptr %arrayidx124.1.i.i to i32
  call void @__asan_store1_noabort(i32 %475)
  store i8 %474, ptr %arrayidx124.1.i.i, align 1
  %arrayidx128.1.i.i = getelementptr %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 5, i32 %indvars.iv377.i.i, i32 1
  %476 = ptrtoint ptr %arrayidx128.1.i.i to i32
  call void @__asan_load1_noabort(i32 %476)
  %477 = load i8, ptr %arrayidx128.1.i.i, align 1
  %arrayidx132.1.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 43, i32 %indvars.iv377.i.i, i32 1
  %478 = ptrtoint ptr %arrayidx132.1.i.i to i32
  call void @__asan_store1_noabort(i32 %478)
  store i8 %477, ptr %arrayidx132.1.i.i, align 1
  %arrayidx137.1.i.i = getelementptr %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 1, i32 %indvars.iv377.i.i, i32 1
  %479 = ptrtoint ptr %arrayidx137.1.i.i to i32
  call void @__asan_load1_noabort(i32 %479)
  %480 = load i8, ptr %arrayidx137.1.i.i, align 1
  %arrayidx141.1.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 47, i32 %indvars.iv377.i.i, i32 1
  %481 = ptrtoint ptr %arrayidx141.1.i.i to i32
  call void @__asan_store1_noabort(i32 %481)
  store i8 %480, ptr %arrayidx141.1.i.i, align 1
  %arrayidx146.1.i.i = getelementptr %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 2, i32 %indvars.iv377.i.i, i32 1
  %482 = ptrtoint ptr %arrayidx146.1.i.i to i32
  call void @__asan_load1_noabort(i32 %482)
  %483 = load i8, ptr %arrayidx146.1.i.i, align 1
  %arrayidx150.1.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 48, i32 %indvars.iv377.i.i, i32 1
  %484 = ptrtoint ptr %arrayidx150.1.i.i to i32
  call void @__asan_store1_noabort(i32 %484)
  store i8 %483, ptr %arrayidx150.1.i.i, align 1
  %arrayidx155.1.i.i = getelementptr %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 3, i32 %indvars.iv377.i.i, i32 1
  %485 = ptrtoint ptr %arrayidx155.1.i.i to i32
  call void @__asan_load1_noabort(i32 %485)
  %486 = load i8, ptr %arrayidx155.1.i.i, align 1
  %arrayidx159.1.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 49, i32 %indvars.iv377.i.i, i32 1
  %487 = ptrtoint ptr %arrayidx159.1.i.i to i32
  call void @__asan_store1_noabort(i32 %487)
  store i8 %486, ptr %arrayidx159.1.i.i, align 1
  %arrayidx163.1.i.i = getelementptr %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 4, i32 %indvars.iv377.i.i, i32 1
  %488 = ptrtoint ptr %arrayidx163.1.i.i to i32
  call void @__asan_load1_noabort(i32 %488)
  %489 = load i8, ptr %arrayidx163.1.i.i, align 1
  %arrayidx167.1.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 50, i32 %indvars.iv377.i.i, i32 1
  %490 = ptrtoint ptr %arrayidx167.1.i.i to i32
  call void @__asan_store1_noabort(i32 %490)
  store i8 %489, ptr %arrayidx167.1.i.i, align 1
  %arrayidx104.2.i.i = getelementptr %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 2, i32 %indvars.iv377.i.i, i32 2
  %491 = ptrtoint ptr %arrayidx104.2.i.i to i32
  call void @__asan_load1_noabort(i32 %491)
  %492 = load i8, ptr %arrayidx104.2.i.i, align 1
  %arrayidx108.2.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 41, i32 %indvars.iv377.i.i, i32 2
  %493 = ptrtoint ptr %arrayidx108.2.i.i to i32
  call void @__asan_store1_noabort(i32 %493)
  store i8 %492, ptr %arrayidx108.2.i.i, align 1
  %arrayidx112.2.i.i = getelementptr %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 3, i32 %indvars.iv377.i.i, i32 2
  %494 = ptrtoint ptr %arrayidx112.2.i.i to i32
  call void @__asan_load1_noabort(i32 %494)
  %495 = load i8, ptr %arrayidx112.2.i.i, align 1
  %arrayidx116.2.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 44, i32 %indvars.iv377.i.i, i32 2
  %496 = ptrtoint ptr %arrayidx116.2.i.i to i32
  call void @__asan_store1_noabort(i32 %496)
  store i8 %495, ptr %arrayidx116.2.i.i, align 1
  %arrayidx120.2.i.i = getelementptr %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 4, i32 %indvars.iv377.i.i, i32 2
  %497 = ptrtoint ptr %arrayidx120.2.i.i to i32
  call void @__asan_load1_noabort(i32 %497)
  %498 = load i8, ptr %arrayidx120.2.i.i, align 1
  %arrayidx124.2.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 42, i32 %indvars.iv377.i.i, i32 2
  %499 = ptrtoint ptr %arrayidx124.2.i.i to i32
  call void @__asan_store1_noabort(i32 %499)
  store i8 %498, ptr %arrayidx124.2.i.i, align 1
  %arrayidx128.2.i.i = getelementptr %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 5, i32 %indvars.iv377.i.i, i32 2
  %500 = ptrtoint ptr %arrayidx128.2.i.i to i32
  call void @__asan_load1_noabort(i32 %500)
  %501 = load i8, ptr %arrayidx128.2.i.i, align 1
  %arrayidx132.2.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 43, i32 %indvars.iv377.i.i, i32 2
  %502 = ptrtoint ptr %arrayidx132.2.i.i to i32
  call void @__asan_store1_noabort(i32 %502)
  store i8 %501, ptr %arrayidx132.2.i.i, align 1
  %arrayidx137.2.i.i = getelementptr %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 1, i32 %indvars.iv377.i.i, i32 2
  %503 = ptrtoint ptr %arrayidx137.2.i.i to i32
  call void @__asan_load1_noabort(i32 %503)
  %504 = load i8, ptr %arrayidx137.2.i.i, align 1
  %arrayidx141.2.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 47, i32 %indvars.iv377.i.i, i32 2
  %505 = ptrtoint ptr %arrayidx141.2.i.i to i32
  call void @__asan_store1_noabort(i32 %505)
  store i8 %504, ptr %arrayidx141.2.i.i, align 1
  %arrayidx146.2.i.i = getelementptr %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 2, i32 %indvars.iv377.i.i, i32 2
  %506 = ptrtoint ptr %arrayidx146.2.i.i to i32
  call void @__asan_load1_noabort(i32 %506)
  %507 = load i8, ptr %arrayidx146.2.i.i, align 1
  %arrayidx150.2.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 48, i32 %indvars.iv377.i.i, i32 2
  %508 = ptrtoint ptr %arrayidx150.2.i.i to i32
  call void @__asan_store1_noabort(i32 %508)
  store i8 %507, ptr %arrayidx150.2.i.i, align 1
  %arrayidx155.2.i.i = getelementptr %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 3, i32 %indvars.iv377.i.i, i32 2
  %509 = ptrtoint ptr %arrayidx155.2.i.i to i32
  call void @__asan_load1_noabort(i32 %509)
  %510 = load i8, ptr %arrayidx155.2.i.i, align 1
  %arrayidx159.2.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 49, i32 %indvars.iv377.i.i, i32 2
  %511 = ptrtoint ptr %arrayidx159.2.i.i to i32
  call void @__asan_store1_noabort(i32 %511)
  store i8 %510, ptr %arrayidx159.2.i.i, align 1
  %arrayidx163.2.i.i = getelementptr %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 4, i32 %indvars.iv377.i.i, i32 2
  %512 = ptrtoint ptr %arrayidx163.2.i.i to i32
  call void @__asan_load1_noabort(i32 %512)
  %513 = load i8, ptr %arrayidx163.2.i.i, align 1
  %arrayidx167.2.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 50, i32 %indvars.iv377.i.i, i32 2
  %514 = ptrtoint ptr %arrayidx167.2.i.i to i32
  call void @__asan_store1_noabort(i32 %514)
  store i8 %513, ptr %arrayidx167.2.i.i, align 1
  %arrayidx104.3.i.i = getelementptr %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 2, i32 %indvars.iv377.i.i, i32 3
  %515 = ptrtoint ptr %arrayidx104.3.i.i to i32
  call void @__asan_load1_noabort(i32 %515)
  %516 = load i8, ptr %arrayidx104.3.i.i, align 1
  %arrayidx108.3.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 41, i32 %indvars.iv377.i.i, i32 3
  %517 = ptrtoint ptr %arrayidx108.3.i.i to i32
  call void @__asan_store1_noabort(i32 %517)
  store i8 %516, ptr %arrayidx108.3.i.i, align 1
  %arrayidx112.3.i.i = getelementptr %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 3, i32 %indvars.iv377.i.i, i32 3
  %518 = ptrtoint ptr %arrayidx112.3.i.i to i32
  call void @__asan_load1_noabort(i32 %518)
  %519 = load i8, ptr %arrayidx112.3.i.i, align 1
  %arrayidx116.3.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 44, i32 %indvars.iv377.i.i, i32 3
  %520 = ptrtoint ptr %arrayidx116.3.i.i to i32
  call void @__asan_store1_noabort(i32 %520)
  store i8 %519, ptr %arrayidx116.3.i.i, align 1
  %arrayidx120.3.i.i = getelementptr %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 4, i32 %indvars.iv377.i.i, i32 3
  %521 = ptrtoint ptr %arrayidx120.3.i.i to i32
  call void @__asan_load1_noabort(i32 %521)
  %522 = load i8, ptr %arrayidx120.3.i.i, align 1
  %arrayidx124.3.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 42, i32 %indvars.iv377.i.i, i32 3
  %523 = ptrtoint ptr %arrayidx124.3.i.i to i32
  call void @__asan_store1_noabort(i32 %523)
  store i8 %522, ptr %arrayidx124.3.i.i, align 1
  %arrayidx128.3.i.i = getelementptr %struct.txpower_info_2g, ptr %pwr2g.i.i, i32 0, i32 5, i32 %indvars.iv377.i.i, i32 3
  %524 = ptrtoint ptr %arrayidx128.3.i.i to i32
  call void @__asan_load1_noabort(i32 %524)
  %525 = load i8, ptr %arrayidx128.3.i.i, align 1
  %arrayidx132.3.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 43, i32 %indvars.iv377.i.i, i32 3
  %526 = ptrtoint ptr %arrayidx132.3.i.i to i32
  call void @__asan_store1_noabort(i32 %526)
  store i8 %525, ptr %arrayidx132.3.i.i, align 1
  %arrayidx137.3.i.i = getelementptr %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 1, i32 %indvars.iv377.i.i, i32 3
  %527 = ptrtoint ptr %arrayidx137.3.i.i to i32
  call void @__asan_load1_noabort(i32 %527)
  %528 = load i8, ptr %arrayidx137.3.i.i, align 1
  %arrayidx141.3.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 47, i32 %indvars.iv377.i.i, i32 3
  %529 = ptrtoint ptr %arrayidx141.3.i.i to i32
  call void @__asan_store1_noabort(i32 %529)
  store i8 %528, ptr %arrayidx141.3.i.i, align 1
  %arrayidx146.3.i.i = getelementptr %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 2, i32 %indvars.iv377.i.i, i32 3
  %530 = ptrtoint ptr %arrayidx146.3.i.i to i32
  call void @__asan_load1_noabort(i32 %530)
  %531 = load i8, ptr %arrayidx146.3.i.i, align 1
  %arrayidx150.3.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 48, i32 %indvars.iv377.i.i, i32 3
  %532 = ptrtoint ptr %arrayidx150.3.i.i to i32
  call void @__asan_store1_noabort(i32 %532)
  store i8 %531, ptr %arrayidx150.3.i.i, align 1
  %arrayidx155.3.i.i = getelementptr %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 3, i32 %indvars.iv377.i.i, i32 3
  %533 = ptrtoint ptr %arrayidx155.3.i.i to i32
  call void @__asan_load1_noabort(i32 %533)
  %534 = load i8, ptr %arrayidx155.3.i.i, align 1
  %arrayidx159.3.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 49, i32 %indvars.iv377.i.i, i32 3
  %535 = ptrtoint ptr %arrayidx159.3.i.i to i32
  call void @__asan_store1_noabort(i32 %535)
  store i8 %534, ptr %arrayidx159.3.i.i, align 1
  %arrayidx163.3.i.i = getelementptr %struct.txpower_info_5g, ptr %pwr5g.i.i, i32 0, i32 4, i32 %indvars.iv377.i.i, i32 3
  %536 = ptrtoint ptr %arrayidx163.3.i.i to i32
  call void @__asan_load1_noabort(i32 %536)
  %537 = load i8, ptr %arrayidx163.3.i.i, align 1
  %arrayidx167.3.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 50, i32 %indvars.iv377.i.i, i32 3
  %538 = ptrtoint ptr %arrayidx167.3.i.i to i32
  call void @__asan_store1_noabort(i32 %538)
  store i8 %537, ptr %arrayidx167.3.i.i, align 1
  %indvars.iv.next378.i.i = add nuw nsw i32 %indvars.iv377.i.i, 1
  %exitcond379.not.i.i = icmp eq i32 %indvars.iv.next378.i.i, 4
  br i1 %exitcond379.not.i.i, label %for.end173.i.i, label %for.body70.preheader.i.i.for.cond3.preheader.i.i_crit_edge

for.body70.preheader.i.i.for.cond3.preheader.i.i_crit_edge: ; preds = %for.body70.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond3.preheader.i.i

for.end173.i.i:                                   ; preds = %for.body70.preheader.i.i
  br i1 %tobool15.i, label %if.end179.thread.i.i, label %if.end179.i.i

if.end179.thread.i.i:                             ; preds = %for.end173.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %eeprom_thermalmeter178.i.i = getelementptr inbounds %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 55
  %apk_thermalmeterignore.c.i.i = getelementptr inbounds %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 62
  %539 = ptrtoint ptr %apk_thermalmeterignore.c.i.i to i32
  call void @__asan_store1_noabort(i32 %539)
  store i8 1, ptr %apk_thermalmeterignore.c.i.i, align 2
  %540 = ptrtoint ptr %eeprom_thermalmeter178.i.i to i32
  call void @__asan_store1_noabort(i32 %540)
  store i8 26, ptr %eeprom_thermalmeter178.i.i, align 4
  %thermalmeter.c322.i.i = getelementptr inbounds %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 56
  %541 = ptrtoint ptr %thermalmeter.c322.i.i to i32
  call void @__asan_store1_noabort(i32 %541)
  store i8 26, ptr %thermalmeter.c322.i.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %36, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.54, i32 noundef 26) #8
  %eeprom_regulatory206.i.i = getelementptr inbounds %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 54
  %542 = ptrtoint ptr %eeprom_regulatory206.i.i to i32
  call void @__asan_store1_noabort(i32 %542)
  store i8 0, ptr %eeprom_regulatory206.i.i, align 1
  br label %_rtl92ee_read_txpower_info_from_hwpg.exit.i

if.end179.i.i:                                    ; preds = %for.end173.i.i
  %arrayidx176.i.i = getelementptr i8, ptr %call7.i.i.i, i32 186
  %543 = ptrtoint ptr %arrayidx176.i.i to i32
  call void @__asan_load1_noabort(i32 %543)
  %544 = load i8, ptr %arrayidx176.i.i, align 2
  %eeprom_thermalmeter.i.i = getelementptr inbounds %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 55
  %545 = ptrtoint ptr %eeprom_thermalmeter.i.i to i32
  call void @__asan_store1_noabort(i32 %545)
  store i8 %544, ptr %eeprom_thermalmeter.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %544)
  %cmp182.i.i = icmp eq i8 %544, -1
  br i1 %cmp182.i.i, label %if.then194.critedge324.i.i, label %if.then194.critedge.i.i

if.then194.critedge.i.i:                          ; preds = %if.end179.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv192.c.i.i = zext i8 %544 to i32
  br label %if.then194.i.i

if.then194.critedge324.i.i:                       ; preds = %if.end179.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %apk_thermalmeterignore.c325.i.i = getelementptr inbounds %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 62
  %546 = ptrtoint ptr %apk_thermalmeterignore.c325.i.i to i32
  call void @__asan_store1_noabort(i32 %546)
  store i8 1, ptr %apk_thermalmeterignore.c325.i.i, align 2
  %547 = ptrtoint ptr %eeprom_thermalmeter.i.i to i32
  call void @__asan_store1_noabort(i32 %547)
  store i8 26, ptr %eeprom_thermalmeter.i.i, align 4
  br label %if.then194.i.i

if.then194.i.i:                                   ; preds = %if.then194.critedge324.i.i, %if.then194.critedge.i.i
  %.sink.i = phi i8 [ 26, %if.then194.critedge324.i.i ], [ %544, %if.then194.critedge.i.i ]
  %.sink382.i.i = phi i32 [ 26, %if.then194.critedge324.i.i ], [ %conv192.c.i.i, %if.then194.critedge.i.i ]
  %548 = getelementptr inbounds %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 56
  %549 = ptrtoint ptr %548 to i32
  call void @__asan_store1_noabort(i32 %549)
  store i8 %.sink.i, ptr %548, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %36, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.54, i32 noundef %.sink382.i.i) #8
  %arrayidx195.i.i = getelementptr i8, ptr %call7.i.i.i, i32 193
  %550 = ptrtoint ptr %arrayidx195.i.i to i32
  call void @__asan_load1_noabort(i32 %550)
  %551 = load i8, ptr %arrayidx195.i.i, align 1
  %552 = and i8 %551, 7
  %eeprom_regulatory.i.i = getelementptr inbounds %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 54
  %553 = ptrtoint ptr %eeprom_regulatory.i.i to i32
  call void @__asan_store1_noabort(i32 %553)
  store i8 %552, ptr %eeprom_regulatory.i.i, align 1
  %554 = load i8, ptr %arrayidx195.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %554)
  %cmp200.i.i = icmp eq i8 %554, -1
  %spec.store.select.i.i = select i1 %cmp200.i.i, i8 0, i8 %552
  %555 = ptrtoint ptr %eeprom_regulatory.i.i to i32
  call void @__asan_store1_noabort(i32 %555)
  store i8 %spec.store.select.i.i, ptr %eeprom_regulatory.i.i, align 1
  br label %_rtl92ee_read_txpower_info_from_hwpg.exit.i

_rtl92ee_read_txpower_info_from_hwpg.exit.i:      ; preds = %if.then194.i.i, %if.end179.thread.i.i
  %eeprom_regulatory208.i.i = getelementptr inbounds %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 54
  %556 = ptrtoint ptr %eeprom_regulatory208.i.i to i32
  call void @__asan_load1_noabort(i32 %556)
  %557 = load i8, ptr %eeprom_regulatory208.i.i, align 1
  %conv209.i.i = zext i8 %557 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %36, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.55, i32 noundef %conv209.i.i) #8
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %pwr5g.i.i) #8
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %pwr2g.i.i) #8
  %558 = ptrtoint ptr %autoload_failflag.i to i32
  call void @__asan_load1_noabort(i32 %558)
  %559 = load i8, ptr %autoload_failflag.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %559)
  %tobool17.not.i = icmp eq i8 %559, 0
  %560 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load ptr, ptr %priv, align 8
  br i1 %tobool17.not.i, label %if.then.i.i, label %_rtl92ee_read_txpower_info_from_hwpg.exit.i.rtl92ee_read_bt_coexist_info_from_hwpg.exit.i_crit_edge

_rtl92ee_read_txpower_info_from_hwpg.exit.i.rtl92ee_read_bt_coexist_info_from_hwpg.exit.i_crit_edge: ; preds = %_rtl92ee_read_txpower_info_from_hwpg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl92ee_read_bt_coexist_info_from_hwpg.exit.i

if.then.i.i:                                      ; preds = %_rtl92ee_read_txpower_info_from_hwpg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i = getelementptr i8, ptr %call7.i.i.i, i32 193
  %562 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %562)
  %563 = load i8, ptr %arrayidx.i.i, align 1
  %.mask.i.i = and i8 %563, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %.mask.i.i)
  %cmp.i.i = icmp eq i8 %.mask.i.i, 32
  %spec.select.i116.i = zext i1 %cmp.i.i to i8
  br label %rtl92ee_read_bt_coexist_info_from_hwpg.exit.i

rtl92ee_read_bt_coexist_info_from_hwpg.exit.i:    ; preds = %if.then.i.i, %_rtl92ee_read_txpower_info_from_hwpg.exit.i.rtl92ee_read_bt_coexist_info_from_hwpg.exit.i_crit_edge
  %.sink120.i = phi i8 [ %spec.select.i116.i, %if.then.i.i ], [ 1, %_rtl92ee_read_txpower_info_from_hwpg.exit.i.rtl92ee_read_bt_coexist_info_from_hwpg.exit.i_crit_edge ]
  %.sink.i117.i = phi i8 [ 0, %if.then.i.i ], [ 1, %_rtl92ee_read_txpower_info_from_hwpg.exit.i.rtl92ee_read_bt_coexist_info_from_hwpg.exit.i_crit_edge ]
  %564 = getelementptr inbounds %struct.rtl_priv, ptr %561, i32 0, i32 49, i32 1, i32 1
  %565 = ptrtoint ptr %564 to i32
  call void @__asan_store1_noabort(i32 %565)
  store i8 %.sink120.i, ptr %564, align 1
  %btc_info13.sink.i.i = getelementptr inbounds %struct.rtl_priv, ptr %561, i32 0, i32 49, i32 1
  %566 = ptrtoint ptr %btc_info13.sink.i.i to i32
  call void @__asan_store1_noabort(i32 %566)
  store i8 9, ptr %btc_info13.sink.i.i, align 4
  %ant_num20.i.i = getelementptr inbounds %struct.rtl_priv, ptr %561, i32 0, i32 49, i32 1, i32 2
  %567 = ptrtoint ptr %ant_num20.i.i to i32
  call void @__asan_store1_noabort(i32 %567)
  store i8 %.sink.i117.i, ptr %ant_num20.i.i, align 2
  %arrayidx.i = getelementptr i8, ptr %call7.i.i.i, i32 193
  %568 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %568)
  %569 = load i8, ptr %arrayidx.i, align 1
  %570 = lshr i8 %569, 5
  %board_type.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 17, i32 17
  %571 = ptrtoint ptr %board_type.i to i32
  call void @__asan_store1_noabort(i32 %571)
  store i8 %570, ptr %board_type.i, align 1
  %572 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %572)
  %cmp22.i = icmp eq i8 %572, -1
  %spec.store.select.i = select i1 %cmp22.i, i8 0, i8 %570
  %573 = ptrtoint ptr %board_type.i to i32
  call void @__asan_store1_noabort(i32 %573)
  store i8 %spec.store.select.i, ptr %board_type.i, align 1
  %btcoexist27.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 49, i32 1, i32 1
  %574 = ptrtoint ptr %btcoexist27.i to i32
  call void @__asan_load1_noabort(i32 %574)
  %575 = load i8, ptr %btcoexist27.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %575)
  %cmp29.i = icmp eq i8 %575, 1
  br i1 %cmp29.i, label %if.then31.i, label %rtl92ee_read_bt_coexist_info_from_hwpg.exit.i.if.end35.i_crit_edge

rtl92ee_read_bt_coexist_info_from_hwpg.exit.i.if.end35.i_crit_edge: ; preds = %rtl92ee_read_bt_coexist_info_from_hwpg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i

if.then31.i:                                      ; preds = %rtl92ee_read_bt_coexist_info_from_hwpg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %576 = or i8 %spec.store.select.i, 4
  %577 = ptrtoint ptr %board_type.i to i32
  call void @__asan_store1_noabort(i32 %577)
  store i8 %576, ptr %board_type.i, align 1
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then31.i, %rtl92ee_read_bt_coexist_info_from_hwpg.exit.i.if.end35.i_crit_edge
  %578 = ptrtoint ptr %board_type.i to i32
  call void @__asan_load1_noabort(i32 %578)
  %579 = load i8, ptr %board_type.i, align 1
  %board_type37.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 10, i32 15
  %580 = ptrtoint ptr %board_type37.i to i32
  call void @__asan_store1_noabort(i32 %580)
  store i8 %579, ptr %board_type37.i, align 1
  %conv39.i = zext i8 %579 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %22, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.53, i32 noundef %conv39.i) #8
  %arrayidx40.i = getelementptr i8, ptr %call7.i.i.i, i32 185
  %581 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load1_noabort(i32 %581)
  %582 = load i8, ptr %arrayidx40.i, align 1
  %crystalcap.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 17, i32 58
  %583 = ptrtoint ptr %crystalcap.i to i32
  call void @__asan_store1_noabort(i32 %583)
  store i8 %582, ptr %crystalcap.i, align 2
  %584 = load i8, ptr %arrayidx40.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %584)
  %cmp43.i = icmp eq i8 %584, -1
  %spec.store.select114.i = select i1 %cmp43.i, i8 32, i8 %582
  %585 = ptrtoint ptr %crystalcap.i to i32
  call void @__asan_store1_noabort(i32 %585)
  store i8 %spec.store.select114.i, ptr %crystalcap.i, align 2
  %antenna_div_type.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 17, i32 22
  %586 = ptrtoint ptr %antenna_div_type.i to i32
  call void @__asan_store1_noabort(i32 %586)
  store i8 -1, ptr %antenna_div_type.i, align 1
  %antenna_div_cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 17, i32 21
  %587 = ptrtoint ptr %antenna_div_cfg.i to i32
  call void @__asan_store1_noabort(i32 %587)
  store i8 0, ptr %antenna_div_cfg.i, align 2
  %oem_id.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 10, i32 12
  %588 = ptrtoint ptr %oem_id.i to i32
  call void @__asan_load1_noabort(i32 %588)
  %589 = load i8, ptr %oem_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %589)
  %cmp49.i = icmp eq i8 %589, 0
  br i1 %cmp49.i, label %if.then51.i, label %if.end35.i.exit.i_crit_edge

if.end35.i.exit.i_crit_edge:                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.i

if.then51.i:                                      ; preds = %if.end35.i
  %590 = ptrtoint ptr %eeprom_oemid.i to i32
  call void @__asan_load1_noabort(i32 %590)
  %591 = load i8, ptr %eeprom_oemid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %591)
  %cond.i59 = icmp eq i8 %591, 0
  br i1 %cond.i59, label %sw.bb.i, label %if.then51.i.exit.sink.split.i_crit_edge

if.then51.i.exit.sink.split.i_crit_edge:          ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split.i

sw.bb.i:                                          ; preds = %if.then51.i
  %eeprom_did.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 17, i32 11
  %592 = ptrtoint ptr %eeprom_did.i to i32
  call void @__asan_load2_noabort(i32 %592)
  %593 = load i16, ptr %eeprom_did.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32373, i16 %593)
  %cmp55.i = icmp eq i16 %593, -32373
  br i1 %cmp55.i, label %if.then57.i, label %sw.bb.i.exit.sink.split.i_crit_edge

sw.bb.i.exit.sink.split.i_crit_edge:              ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split.i

if.then57.i:                                      ; preds = %sw.bb.i
  %eeprom_svid.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 17, i32 12
  %594 = ptrtoint ptr %eeprom_svid.i to i32
  call void @__asan_load2_noabort(i32 %594)
  %595 = load i16, ptr %eeprom_svid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4332, i16 %595)
  %cmp59.i = icmp eq i16 %595, 4332
  br i1 %cmp59.i, label %land.lhs.true.i, label %if.then57.i.exit.i_crit_edge

if.then57.i.exit.i_crit_edge:                     ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.i

land.lhs.true.i:                                  ; preds = %if.then57.i
  %eeprom_smid.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 17, i32 13
  %596 = ptrtoint ptr %eeprom_smid.i to i32
  call void @__asan_load2_noabort(i32 %596)
  %597 = load i16, ptr %eeprom_smid.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 27, i16 %597)
  %cmp62.i = icmp eq i16 %597, 27
  br i1 %cmp62.i, label %land.lhs.true.i.exit.sink.split.i_crit_edge, label %land.lhs.true.i.exit.i_crit_edge

land.lhs.true.i.exit.i_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.i

land.lhs.true.i.exit.sink.split.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split.i

exit.sink.split.i:                                ; preds = %land.lhs.true.i.exit.sink.split.i_crit_edge, %sw.bb.i.exit.sink.split.i_crit_edge, %if.then51.i.exit.sink.split.i_crit_edge
  %.sink121.i = phi i8 [ 18, %land.lhs.true.i.exit.sink.split.i_crit_edge ], [ 0, %sw.bb.i.exit.sink.split.i_crit_edge ], [ 0, %if.then51.i.exit.sink.split.i_crit_edge ]
  %598 = ptrtoint ptr %oem_id.i to i32
  call void @__asan_store1_noabort(i32 %598)
  store i8 %.sink121.i, ptr %oem_id.i, align 1
  br label %exit.i

exit.i:                                           ; preds = %exit.sink.split.i, %land.lhs.true.i.exit.i_crit_edge, %if.then57.i.exit.i_crit_edge, %if.end35.i.exit.i_crit_edge, %if.end.i.exit.i_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %_rtl92ee_read_adapter_info.exit

_rtl92ee_read_adapter_info.exit:                  ; preds = %exit.i, %if.then22._rtl92ee_read_adapter_info.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %params.i) #8
  br label %if.end25

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #11
  br label %if.end25

if.end25:                                         ; preds = %do.end, %_rtl92ee_read_adapter_info.exit
  %599 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load ptr, ptr %priv, align 8
  %ledctl.i = getelementptr inbounds %struct.rtl_priv, ptr %600, i32 0, i32 18
  %601 = ptrtoint ptr %ledctl.i to i32
  call void @__asan_store1_noabort(i32 %601)
  store i8 1, ptr %ledctl.i, align 8
  %oem_id.i61 = getelementptr inbounds %struct.rtl_priv, ptr %600, i32 0, i32 10, i32 12
  %602 = ptrtoint ptr %oem_id.i61 to i32
  call void @__asan_load1_noabort(i32 %602)
  %603 = load i8, ptr %oem_id.i61, align 1
  %conv.i = zext i8 %603 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %600, i64 noundef 4, i32 noundef 3, ptr noundef nonnull @.str.58, i32 noundef %conv.i) #8
  %rfpath_rx_enable = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 32
  %604 = ptrtoint ptr %rfpath_rx_enable to i32
  call void @__asan_store1_noabort(i32 %604)
  store i8 1, ptr %rfpath_rx_enable, align 1
  %605 = ptrtoint ptr %rf_type.i to i32
  call void @__asan_load1_noabort(i32 %605)
  %606 = load i8, ptr %rf_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %606)
  %cmp28 = icmp eq i8 %606, 2
  br i1 %cmp28, label %if.then30, label %if.end25.if.end33_crit_edge

if.end25.if.end33_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then30:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx32 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 32, i32 1
  %607 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %607)
  store i8 1, ptr %arrayidx32, align 1
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.end25.if.end33_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ee_update_hal_rate_tbl(ptr noundef %hw, ptr nocapture noundef %sta, i8 noundef zeroext %rssi_level, i1 noundef zeroext %update_bw) local_unnamed_addr #0 align 64 {
entry:
  %rate_mask.i = alloca [7 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %useramask = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 14
  %2 = ptrtoint ptr %useramask to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %useramask, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %ht_cap.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3
  %4 = ptrtoint ptr %ht_cap.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ht_cap.i, align 4
  %6 = trunc i16 %5 to i8
  %7 = lshr i8 %6, 1
  %8 = and i8 %7, 1
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %rate_mask.i) #8
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
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %12, label %if.then.if.end32.i_crit_edge [
    i32 2, label %if.then.if.then.i_crit_edge
    i32 7, label %if.then.if.then.i_crit_edge6
    i32 3, label %if.then.if.then29.i_crit_edge
    i32 1, label %if.then.if.then29.i_crit_edge7
  ]

if.then.if.then29.i_crit_edge7:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29.i

if.then.if.then29.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29.i

if.then.if.then.i_crit_edge6:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.if.then.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.if.end32.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.i

if.then.i:                                        ; preds = %if.then.if.then.i_crit_edge, %if.then.if.then.i_crit_edge6
  %bw_40.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 41
  %14 = ptrtoint ptr %bw_40.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bw_40.i, align 1
  br label %if.end32.i

if.then29.i:                                      ; preds = %if.then.if.then29.i_crit_edge, %if.then.if.then29.i_crit_edge7
  %aid.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 2
  %16 = ptrtoint ptr %aid.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %aid.i, align 2
  %conv30.i = trunc i16 %17 to i8
  %add.i = add i8 %conv30.i, 1
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then29.i, %if.then.i, %if.then.if.end32.i_crit_edge
  %curtxbw_40mhz.0.i = phi i8 [ %15, %if.then.i ], [ %8, %if.then29.i ], [ %8, %if.then.if.end32.i_crit_edge ]
  %macid.0.i = phi i8 [ 0, %if.then.i ], [ %add.i, %if.then29.i ], [ 0, %if.then.if.end32.i_crit_edge ]
  %18 = ptrtoint ptr %sta to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sta, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp34.i = icmp eq i32 %12, 1
  %spec.store.select.i = select i1 %cmp34.i, i32 4095, i32 %19
  %mcs.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4
  %arrayidx39.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx39.i, align 1
  %conv40.i = zext i8 %21 to i32
  %shl.i = shl nuw nsw i32 %conv40.i, 20
  %22 = ptrtoint ptr %mcs.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %mcs.i, align 1
  %conv45.i = zext i8 %23 to i32
  %shl46.i = shl nuw nsw i32 %conv45.i, 12
  %or.i = or i32 %shl.i, %spec.store.select.i
  %or47.i = or i32 %or.i, %shl46.i
  %24 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.70)
  switch i16 %10, label %sw.default.i [
    i16 2, label %sw.bb.i
    i16 4, label %sw.bb55.i
    i16 16, label %sw.bb71.i
  ]

sw.bb.i:                                          ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  %and48.i = and i32 %spec.store.select.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i)
  %tobool49.not.i = icmp eq i32 %and48.i, 0
  %ratr_bitmap.1326.v.i = select i1 %tobool49.not.i, i32 15, i32 13
  %ratr_bitmap.1326.i = and i32 %ratr_bitmap.1326.v.i, %spec.store.select.i
  br label %_rtl92ee_mrate_idx_to_arfr_id.exit.i

sw.bb55.i:                                        ; preds = %if.end32.i
  %25 = zext i8 %rssi_level to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.71)
  switch i8 %rssi_level, label %if.else67.i [
    i8 1, label %if.then59.i
    i8 2, label %if.then65.i
  ]

if.then59.i:                                      ; preds = %sw.bb55.i
  call void @__sanitizer_cov_trace_pc() #10
  %and60.i = and i32 %spec.store.select.i, 3840
  br label %_rtl92ee_mrate_idx_to_arfr_id.exit.i

if.then65.i:                                      ; preds = %sw.bb55.i
  call void @__sanitizer_cov_trace_pc() #10
  %and66.i = and i32 %spec.store.select.i, 4080
  br label %_rtl92ee_mrate_idx_to_arfr_id.exit.i

if.else67.i:                                      ; preds = %sw.bb55.i
  call void @__sanitizer_cov_trace_pc() #10
  %and68.i = and i32 %spec.store.select.i, 4085
  br label %_rtl92ee_mrate_idx_to_arfr_id.exit.i

sw.bb71.i:                                        ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %curtxbw_40mhz.0.i)
  %tobool72.not.i = icmp eq i8 %curtxbw_40mhz.0.i, 0
  %rf_type.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 4
  %26 = ptrtoint ptr %rf_type.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %rf_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp77.i = icmp eq i8 %27, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %rssi_level)
  %switch.selectcmp348.i = icmp eq i8 %rssi_level, 2
  br i1 %cmp77.i, label %if.then79.i, label %if.else114.i

if.then79.i:                                      ; preds = %sw.bb71.i
  br i1 %tobool72.not.i, label %if.else97.i, label %if.then81.i

if.then81.i:                                      ; preds = %if.then79.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.select345.i = select i1 %switch.selectcmp348.i, i32 1044480, i32 1044501
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %rssi_level)
  %switch.selectcmp346.i = icmp eq i8 %rssi_level, 1
  %switch.select347.i = select i1 %switch.selectcmp346.i, i32 983040, i32 %switch.select345.i
  br label %if.end149.i

if.else97.i:                                      ; preds = %if.then79.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.select349.i = select i1 %switch.selectcmp348.i, i32 1044480, i32 1044485
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %rssi_level)
  %switch.selectcmp350.i = icmp eq i8 %rssi_level, 1
  %switch.select351.i = select i1 %switch.selectcmp350.i, i32 983040, i32 %switch.select349.i
  br label %lor.lhs.false154.i

if.else114.i:                                     ; preds = %sw.bb71.i
  br i1 %tobool72.not.i, label %if.else132.i, label %if.then116.i

if.then116.i:                                     ; preds = %if.else114.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.select353.i = select i1 %switch.selectcmp348.i, i32 268431360, i32 268431381
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %rssi_level)
  %switch.selectcmp354.i = icmp eq i8 %rssi_level, 1
  %switch.select355.i = select i1 %switch.selectcmp354.i, i32 261029888, i32 %switch.select353.i
  br label %if.end149.i

if.else132.i:                                     ; preds = %if.else114.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.select357.i = select i1 %switch.selectcmp348.i, i32 268431360, i32 268431365
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %rssi_level)
  %switch.selectcmp358.i = icmp eq i8 %rssi_level, 1
  %switch.select359.i = select i1 %switch.selectcmp358.i, i32 261029888, i32 %switch.select357.i
  br label %lor.lhs.false154.i

if.end149.i:                                      ; preds = %if.then116.i, %if.then81.i
  %.sink.i = phi i32 [ %switch.select347.i, %if.then81.i ], [ %switch.select355.i, %if.then116.i ]
  %and127.i = and i32 %.sink.i, %or47.i
  %28 = and i16 %5, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool153.not.i = icmp eq i16 %28, 0
  br i1 %tobool153.not.i, label %if.end149.i._rtl92ee_mrate_idx_to_arfr_id.exit.i_crit_edge, label %if.then159.i

if.end149.i._rtl92ee_mrate_idx_to_arfr_id.exit.i_crit_edge: ; preds = %if.end149.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ee_mrate_idx_to_arfr_id.exit.i

lor.lhs.false154.i:                               ; preds = %if.else132.i, %if.else97.i
  %.sink341.i = phi i32 [ %switch.select351.i, %if.else97.i ], [ %switch.select359.i, %if.else132.i ]
  %and143.i = and i32 %.sink341.i, %or47.i
  %tobool72.not.not.i = xor i1 %tobool72.not.i, true
  %29 = and i16 %5, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool158.not.i = icmp eq i16 %29, 0
  %or.cond297.i = select i1 %tobool72.not.not.i, i1 true, i1 %tobool158.not.i
  br i1 %or.cond297.i, label %lor.lhs.false154.i._rtl92ee_mrate_idx_to_arfr_id.exit.i_crit_edge, label %if.then159.i.thread

lor.lhs.false154.i._rtl92ee_mrate_idx_to_arfr_id.exit.i_crit_edge: ; preds = %lor.lhs.false154.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ee_mrate_idx_to_arfr_id.exit.i

if.then159.i.thread:                              ; preds = %lor.lhs.false154.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %macid.0.i)
  %switch.selectcmp342.i4 = icmp eq i8 %macid.0.i, 0
  %switch.select343.i5 = select i1 %switch.selectcmp342.i4, i8 -128, i8 0
  br label %_rtl92ee_mrate_idx_to_arfr_id.exit.i

if.then159.i:                                     ; preds = %if.end149.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %macid.0.i)
  %switch.selectcmp342.i = icmp eq i8 %macid.0.i, 0
  %switch.select343.i = select i1 %switch.selectcmp342.i, i8 -128, i8 0
  br label %_rtl92ee_mrate_idx_to_arfr_id.exit.i

sw.default.i:                                     ; preds = %if.end32.i
  %rf_type172.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 4
  %30 = ptrtoint ptr %rf_type172.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %rf_type172.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp174.i = icmp eq i8 %31, 0
  br i1 %cmp174.i, label %if.then176.i, label %if.else178.i

if.then176.i:                                     ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #10
  %and177.i = and i32 %or47.i, 1044735
  br label %_rtl92ee_mrate_idx_to_arfr_id.exit.i

if.else178.i:                                     ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #10
  %and179.i = and i32 %or47.i, 261091583
  br label %_rtl92ee_mrate_idx_to_arfr_id.exit.i

_rtl92ee_mrate_idx_to_arfr_id.exit.i:             ; preds = %if.else178.i, %if.then176.i, %if.then159.i, %if.then159.i.thread, %lor.lhs.false154.i._rtl92ee_mrate_idx_to_arfr_id.exit.i_crit_edge, %if.end149.i._rtl92ee_mrate_idx_to_arfr_id.exit.i_crit_edge, %if.else67.i, %if.then65.i, %if.then59.i, %sw.bb.i
  %b_shortgi.0.off0313.i = phi i8 [ 0, %sw.bb.i ], [ 0, %if.then176.i ], [ 0, %if.else178.i ], [ 0, %if.else67.i ], [ 0, %if.then65.i ], [ 0, %if.then59.i ], [ %switch.select343.i, %if.then159.i ], [ 0, %if.end149.i._rtl92ee_mrate_idx_to_arfr_id.exit.i_crit_edge ], [ 0, %lor.lhs.false154.i._rtl92ee_mrate_idx_to_arfr_id.exit.i_crit_edge ], [ %switch.select343.i5, %if.then159.i.thread ]
  %ratr_bitmap.1311.i = phi i32 [ %ratr_bitmap.1326.i, %sw.bb.i ], [ %and177.i, %if.then176.i ], [ %and179.i, %if.else178.i ], [ %and68.i, %if.else67.i ], [ %and66.i, %if.then65.i ], [ %and60.i, %if.then59.i ], [ %and127.i, %if.then159.i ], [ %and127.i, %if.end149.i._rtl92ee_mrate_idx_to_arfr_id.exit.i_crit_edge ], [ %and143.i, %lor.lhs.false154.i._rtl92ee_mrate_idx_to_arfr_id.exit.i_crit_edge ], [ %and143.i, %if.then159.i.thread ]
  %ret.0.i.i = phi i8 [ 8, %sw.bb.i ], [ 0, %if.then176.i ], [ 0, %if.else178.i ], [ 6, %if.else67.i ], [ 6, %if.then65.i ], [ 6, %if.then59.i ], [ 0, %if.then159.i ], [ 0, %if.end149.i._rtl92ee_mrate_idx_to_arfr_id.exit.i_crit_edge ], [ 2, %lor.lhs.false154.i._rtl92ee_mrate_idx_to_arfr_id.exit.i_crit_edge ], [ 2, %if.then159.i.thread ]
  %ratr_index181.i = getelementptr inbounds %struct.rtl_sta_info, ptr %drv_priv.i, i32 0, i32 5
  %32 = ptrtoint ptr %ratr_index181.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %ret.0.i.i, ptr %ratr_index181.i, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4194304, i32 noundef 3, ptr noundef nonnull @.str.59, i32 noundef %ratr_bitmap.1311.i) #8
  %conv183.i = zext i8 %ret.0.i.i to i32
  %33 = ptrtoint ptr %rate_mask.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %macid.0.i, ptr %rate_mask.i, align 4
  %or191.i = or i8 %ret.0.i.i, %b_shortgi.0.off0313.i
  %arrayidx193.i = getelementptr inbounds [7 x i8], ptr %rate_mask.i, i32 0, i32 1
  %34 = ptrtoint ptr %arrayidx193.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %or191.i, ptr %arrayidx193.i, align 1
  %shl196.i = select i1 %update_bw, i8 0, i8 8
  %or197.i = or i8 %curtxbw_40mhz.0.i, %shl196.i
  %arrayidx199.i = getelementptr inbounds [7 x i8], ptr %rate_mask.i, i32 0, i32 2
  %35 = ptrtoint ptr %arrayidx199.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %or197.i, ptr %arrayidx199.i, align 2
  %conv201.i = trunc i32 %ratr_bitmap.1311.i to i8
  %arrayidx202.i = getelementptr inbounds [7 x i8], ptr %rate_mask.i, i32 0, i32 3
  %36 = ptrtoint ptr %arrayidx202.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv201.i, ptr %arrayidx202.i, align 1
  %and203.i = lshr i32 %ratr_bitmap.1311.i, 8
  %conv204.i = trunc i32 %and203.i to i8
  %arrayidx205.i = getelementptr inbounds [7 x i8], ptr %rate_mask.i, i32 0, i32 4
  %37 = ptrtoint ptr %arrayidx205.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv204.i, ptr %arrayidx205.i, align 4
  %and206.i = lshr i32 %ratr_bitmap.1311.i, 16
  %conv208.i = trunc i32 %and206.i to i8
  %arrayidx209.i = getelementptr inbounds [7 x i8], ptr %rate_mask.i, i32 0, i32 5
  %38 = ptrtoint ptr %arrayidx209.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv208.i, ptr %arrayidx209.i, align 1
  %shr211.i = lshr i32 %ratr_bitmap.1311.i, 24
  %conv212.i = trunc i32 %shr211.i to i8
  %arrayidx213.i = getelementptr inbounds [7 x i8], ptr %rate_mask.i, i32 0, i32 6
  %39 = ptrtoint ptr %arrayidx213.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv212.i, ptr %arrayidx213.i, align 2
  %conv216.i = zext i8 %macid.0.i to i32
  %conv218.i = zext i8 %or191.i to i32
  %conv220.i = zext i8 %or197.i to i32
  %conv222.i = and i32 %ratr_bitmap.1311.i, 255
  %conv224.i = and i32 %and203.i, 255
  %conv226.i = and i32 %and206.i, 255
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4194304, i32 noundef 3, ptr noundef nonnull @.str.60, i32 noundef %conv183.i, i32 noundef %ratr_bitmap.1311.i, i32 noundef %conv216.i, i32 noundef %conv218.i, i32 noundef %conv220.i, i32 noundef %conv222.i, i32 noundef %conv224.i, i32 noundef %conv226.i, i32 noundef %shr211.i) #8
  call void @rtl92ee_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 64, i32 noundef 7, ptr noundef nonnull %rate_mask.i) #8
  %40 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i.i = getelementptr inbounds %struct.rtl_priv, ptr %41, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %42 = ptrtoint ptr %reg_bcn_ctrl_val.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %reg_bcn_ctrl_val.i.i, align 4
  %or.i.i = or i32 %43, 8
  store i32 %or.i.i, ptr %reg_bcn_ctrl_val.i.i, align 4
  %conv6.i.i = trunc i32 %or.i.i to i8
  %write8_async.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %41, i32 0, i32 13, i32 5
  %44 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write8_async.i.i.i, align 4
  call void %45(ptr noundef %41, i32 noundef 1360, i8 noundef zeroext %conv6.i.i) #8
  %cfg.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %41, i32 0, i32 32
  %46 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %write_readback.i.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %write_readback.i.i.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.i.i.i = icmp eq i8 %49, 0
  br i1 %tobool.not.i.i.i, label %_rtl92ee_mrate_idx_to_arfr_id.exit.i.rtl92ee_update_hal_rate_mask.exit_crit_edge, label %if.then.i.i.i

_rtl92ee_mrate_idx_to_arfr_id.exit.i.rtl92ee_update_hal_rate_mask.exit_crit_edge: ; preds = %_rtl92ee_mrate_idx_to_arfr_id.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl92ee_update_hal_rate_mask.exit

if.then.i.i.i:                                    ; preds = %_rtl92ee_mrate_idx_to_arfr_id.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %41, i32 0, i32 13, i32 9
  %50 = ptrtoint ptr %read8_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %read8_sync.i.i.i, align 4
  %call.i.i.i = call zeroext i8 %51(ptr noundef %41, i32 noundef 1360) #8
  br label %rtl92ee_update_hal_rate_mask.exit

rtl92ee_update_hal_rate_mask.exit:                ; preds = %if.then.i.i.i, %_rtl92ee_mrate_idx_to_arfr_id.exit.i.rtl92ee_update_hal_rate_mask.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %rate_mask.i) #8
  br label %if.end

if.end:                                           ; preds = %rtl92ee_update_hal_rate_mask.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ee_update_channel_access_setting(ptr noundef %hw) local_unnamed_addr #0 align 64 {
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
  call void %16(ptr noundef %hw, i8 noundef zeroext 14, ptr noundef nonnull %sifs_timer) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %sifs_timer) #8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local zeroext i1 @rtl92ee_gpio_radio_on_off_checking(ptr nocapture noundef readnone %hw, ptr nocapture noundef writeonly %valid) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %valid, align 1
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ee_set_key(ptr noundef %hw, i32 noundef %key_index, ptr noundef %p_macaddr, i1 noundef zeroext %is_group, i8 noundef zeroext %enc_algo, i1 noundef zeroext %is_wepkey, i1 noundef zeroext %clear_all) local_unnamed_addr #0 align 64 {
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 3, ptr noundef nonnull @.str.27) #8
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
  br i1 %12, label %switch.hole_check, label %if.else.sw.default_crit_edge

if.else.sw.default_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default

sw.default:                                       ; preds = %switch.hole_check.sw.default_crit_edge, %if.else.sw.default_crit_edge
  %conv21 = zext i8 %enc_algo to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef %conv21) #8
  br label %sw.epilog

switch.hole_check:                                ; preds = %if.else
  %switch.shifted = lshr i8 27, %switch.tableidx
  %13 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %switch.lobit.not = icmp eq i8 %13, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.default_crit_edge, label %switch.lookup

switch.hole_check.sw.default_crit_edge:           ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  %14 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.rtl92ee_set_key, i32 0, i32 %14
  %15 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %sw.default
  %enc_algo.addr.0 = phi i32 [ 2, %sw.default ], [ %switch.load, %switch.lookup ]
  br i1 %is_wepkey, label %sw.epilog.if.then31_crit_edge, label %lor.lhs.false

sw.epilog.if.then31_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31

lor.lhs.false:                                    ; preds = %sw.epilog
  %use_defaultkey = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 2
  %16 = ptrtoint ptr %use_defaultkey to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %use_defaultkey, align 2, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool29.not = icmp eq i8 %17, 0
  br i1 %tobool29.not, label %if.else34, label %lor.lhs.false.if.then31_crit_edge

lor.lhs.false.if.then31_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31

if.then31:                                        ; preds = %lor.lhs.false.if.then31_crit_edge, %sw.epilog.if.then31_crit_edge
  %arrayidx32 = getelementptr [4 x [6 x i8]], ptr @rtl92ee_set_key.cam_const_addr, i32 0, i32 %key_index
  br label %if.end54

if.else34:                                        ; preds = %lor.lhs.false
  br i1 %is_group, label %if.else34.if.end54_crit_edge, label %if.else37

if.else34.if.end54_crit_edge:                     ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.else37:                                        ; preds = %if.else34
  %opmode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 8
  %18 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %opmode, align 8
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %19, label %if.else37.if.end54_crit_edge [
    i32 3, label %if.else37.if.then44_crit_edge
    i32 7, label %if.else37.if.then44_crit_edge163
  ]

if.else37.if.then44_crit_edge163:                 ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then44

if.else37.if.then44_crit_edge:                    ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then44

if.else37.if.end54_crit_edge:                     ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then44:                                        ; preds = %if.else37.if.then44_crit_edge, %if.else37.if.then44_crit_edge163
  %call = tail call zeroext i8 @rtl_cam_get_free_entry(ptr noundef %hw, ptr noundef %p_macaddr) #8
  %conv45 = zext i8 %call to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %call)
  %cmp46 = icmp ugt i8 %call, 31
  br i1 %cmp46, label %do.end, label %if.then44.if.end54_crit_edge

if.then44.if.end54_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

do.end:                                           ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #11
  br label %cleanup

if.end54:                                         ; preds = %if.then44.if.end54_crit_edge, %if.else37.if.end54_crit_edge, %if.else34.if.end54_crit_edge, %if.then31
  %macaddr.0 = phi ptr [ %arrayidx32, %if.then31 ], [ @rtl92ee_set_key.cam_const_broad, %if.else34.if.end54_crit_edge ], [ %p_macaddr, %if.else37.if.end54_crit_edge ], [ %p_macaddr, %if.then44.if.end54_crit_edge ]
  %entry_id.1 = phi i32 [ %key_index, %if.then31 ], [ %key_index, %if.else34.if.end54_crit_edge ], [ 4, %if.else37.if.end54_crit_edge ], [ %conv45, %if.then44.if.end54_crit_edge ]
  %is_pairwise.0.off0 = phi i1 [ false, %if.then31 ], [ false, %if.else34.if.end54_crit_edge ], [ true, %if.else37.if.end54_crit_edge ], [ true, %if.then44.if.end54_crit_edge ]
  %key_index.addr.0 = phi i32 [ %key_index, %if.then31 ], [ %key_index, %if.else34.if.end54_crit_edge ], [ 0, %if.else37.if.end54_crit_edge ], [ 0, %if.then44.if.end54_crit_edge ]
  %arrayidx57 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 8, i32 %key_index.addr.0
  %21 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx57, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp59 = icmp eq i8 %22, 0
  br i1 %cmp59, label %if.then61, label %if.else72

if.then61:                                        ; preds = %if.end54
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 3, ptr noundef nonnull @.str.30, i32 noundef %entry_id.1) #8
  %opmode62 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 8
  %23 = ptrtoint ptr %opmode62 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %opmode62, align 8
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %24, label %if.then61.if.end70_crit_edge [
    i32 3, label %if.then61.if.then69_crit_edge
    i32 7, label %if.then61.if.then69_crit_edge164
  ]

if.then61.if.then69_crit_edge164:                 ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then69

if.then61.if.then69_crit_edge:                    ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then69

if.then61.if.end70_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then69:                                        ; preds = %if.then61.if.then69_crit_edge, %if.then61.if.then69_crit_edge164
  tail call void @rtl_cam_del_entry(ptr noundef %hw, ptr noundef %p_macaddr) #8
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %if.then61.if.end70_crit_edge
  %call71 = tail call i32 @rtl_cam_delete_one_entry(ptr noundef %hw, ptr noundef %p_macaddr, i32 noundef %entry_id.1) #8
  br label %cleanup

if.else72:                                        ; preds = %if.end54
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 3, ptr noundef nonnull @.str.31) #8
  br i1 %is_pairwise.0.off0, label %if.then74, label %if.else81

if.then74:                                        ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 3, ptr noundef nonnull @.str.32) #8
  %arrayidx78 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 7, i32 %key_index.addr.0
  %call80 = tail call zeroext i8 @rtl_cam_add_one_entry(ptr noundef %hw, ptr noundef %macaddr.0, i32 noundef %key_index.addr.0, i32 noundef %entry_id.1, i32 noundef %enc_algo.addr.0, i32 noundef 0, ptr noundef %arrayidx78) #8
  br label %cleanup

if.else81:                                        ; preds = %if.else72
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 3, ptr noundef nonnull @.str.33) #8
  %opmode82 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 8
  %26 = ptrtoint ptr %opmode82 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %opmode82, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp83 = icmp eq i32 %27, 1
  br i1 %cmp83, label %if.then85, label %if.else81.if.end93_crit_edge

if.else81.if.end93_crit_edge:                     ; preds = %if.else81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

if.then85:                                        ; preds = %if.else81
  call void @__sanitizer_cov_trace_pc() #10
  %dev_addr = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 19
  %arrayidx90 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 7, i32 %entry_id.1
  %call92 = tail call zeroext i8 @rtl_cam_add_one_entry(ptr noundef %hw, ptr noundef %dev_addr, i32 noundef 0, i32 noundef 4, i32 noundef %enc_algo.addr.0, i32 noundef 0, ptr noundef %arrayidx90) #8
  br label %if.end93

if.end93:                                         ; preds = %if.then85, %if.else81.if.end93_crit_edge
  %arrayidx97 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 7, i32 %entry_id.1
  %call99 = tail call zeroext i8 @rtl_cam_add_one_entry(ptr noundef %hw, ptr noundef %macaddr.0, i32 noundef %key_index.addr.0, i32 noundef %entry_id.1, i32 noundef %enc_algo.addr.0, i32 noundef 0, ptr noundef %arrayidx97) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end93, %if.then74, %if.end70, %do.end, %if.then
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
declare dso_local zeroext i8 @rtl_cam_add_one_entry(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtl92ee_read_bt_coexist_info_from_hwpg(ptr nocapture noundef readonly %hw, i1 noundef zeroext %auto_load_fail, ptr nocapture noundef readonly %hwinfo) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  br i1 %auto_load_fail, label %entry.if.end21_crit_edge, label %if.then

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr i8, ptr %hwinfo, i32 193
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %.mask = and i8 %3, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %.mask)
  %cmp = icmp eq i8 %.mask, 32
  %spec.select = zext i1 %cmp to i8
  br label %if.end21

if.end21:                                         ; preds = %if.then, %entry.if.end21_crit_edge
  %.sink28 = phi i8 [ %spec.select, %if.then ], [ 1, %entry.if.end21_crit_edge ]
  %.sink = phi i8 [ 0, %if.then ], [ 1, %entry.if.end21_crit_edge ]
  %btcoexist14 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 1, i32 1
  %4 = ptrtoint ptr %btcoexist14 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %.sink28, ptr %btcoexist14, align 1
  %btc_info13.sink = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 1
  %5 = ptrtoint ptr %btc_info13.sink to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 9, ptr %btc_info13.sink, align 4
  %ant_num20 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 1, i32 2
  %6 = ptrtoint ptr %ant_num20 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %.sink, ptr %ant_num20, align 2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtl92ee_bt_reg_init(ptr nocapture noundef readonly %hw) local_unnamed_addr #5 align 64 {
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
define dso_local void @rtl92ee_suspend(ptr nocapture noundef %hw) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtl92ee_resume(ptr nocapture noundef %hw) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ee_allow_all_destaddr(ptr nocapture noundef readonly %hw, i1 noundef zeroext %allow_all_da, i1 noundef zeroext %write_into_reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %receive_config = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 3
  %2 = ptrtoint ptr %receive_config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %receive_config, align 4
  %and = and i32 %3, -2
  %masksel = zext i1 %allow_all_da to i32
  %and.sink = or i32 %and, %masksel
  store i32 %and.sink, ptr %receive_config, align 4
  br i1 %write_into_reg, label %if.then6, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then6:                                         ; preds = %entry
  %receive_config7 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 3
  %4 = ptrtoint ptr %receive_config7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %receive_config7, align 4
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %6 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write32_async.i, align 4
  tail call void %7(ptr noundef %1, i32 noundef 1544, i32 noundef %5) #8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %8 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %write_readback.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.then6.if.end8_crit_edge, label %if.then.i

if.then6.if.end8_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %12 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read32_sync.i, align 4
  %call.i = tail call i32 %13(ptr noundef %1, i32 noundef 1544) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then.i, %if.then6.if.end8_crit_edge, %entry.if.end8_crit_edge
  %receive_config9 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 3
  %14 = ptrtoint ptr %receive_config9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %receive_config9, align 4
  %conv = zext i1 %write_into_reg to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 2097156, i32 noundef 4, ptr noundef nonnull @.str.34, i32 noundef %15, i32 noundef %conv) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_rtl92ee_set_fw_clock_off(ptr noundef %hw, i8 noundef zeroext %rpwm_val) unnamed_addr #0 align 64 {
entry:
  %rpwm_val.addr = alloca i8, align 1
  %rtstate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rpwm_val.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %rpwm_val, ptr %rpwm_val.addr, align 1
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rtstate) #8
  %3 = ptrtoint ptr %rtstate to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %rtstate, align 4, !annotation !137
  %fw_ready = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 10, i32 38
  %4 = ptrtoint ptr %fw_ready to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fw_ready, align 2, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %fw_current_inpsmode = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 21, i32 13
  %6 = ptrtoint ptr %fw_current_inpsmode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fw_current_inpsmode, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not = icmp eq i8 %7, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %allow_sw_to_change_hwclc = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 10, i32 48
  %8 = ptrtoint ptr %allow_sw_to_change_hwclc to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %allow_sw_to_change_hwclc, align 8, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool8.not = icmp eq i8 %9, 0
  br i1 %tobool8.not, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 32
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
  call void %15(ptr noundef %hw, i8 noundef zeroext 40, ptr noundef nonnull %rtstate) #8
  %16 = ptrtoint ptr %rtstate to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rtstate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp = icmp eq i32 %17, 2
  br i1 %cmp, label %if.end10.cleanup_crit_edge, label %lor.lhs.false

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end10
  %inactive_pwrstate = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 21, i32 23
  %18 = ptrtoint ptr %inactive_pwrstate to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %inactive_pwrstate, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp12 = icmp eq i32 %19, 2
  br i1 %cmp12, label %lor.lhs.false.cleanup_crit_edge, label %for.cond.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false
  %qlen.i = getelementptr %struct.rtl_priv, ptr %2, i32 1, i32 7, i32 0, i32 4
  %20 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool18.not = icmp eq i32 %21, 0
  br i1 %tobool18.not, label %for.cond, label %for.cond.preheader.if.then22.critedge_crit_edge

for.cond.preheader.if.then22.critedge_crit_edge:  ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22.critedge

for.cond:                                         ; preds = %for.cond.preheader
  %qlen.i.1 = getelementptr %struct.rtl_priv, ptr %2, i32 1, i32 7, i32 1, i32 3
  %22 = ptrtoint ptr %qlen.i.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %qlen.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool18.not.1 = icmp eq i32 %23, 0
  br i1 %tobool18.not.1, label %for.cond.1, label %for.cond.if.then22.critedge_crit_edge

for.cond.if.then22.critedge_crit_edge:            ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22.critedge

for.cond.1:                                       ; preds = %for.cond
  %qlen.i.2 = getelementptr %struct.rtl_priv, ptr %2, i32 1, i32 7, i32 2, i32 1, i32 4, i32 7
  %24 = ptrtoint ptr %qlen.i.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %qlen.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool18.not.2 = icmp eq i32 %25, 0
  br i1 %tobool18.not.2, label %for.cond.2, label %for.cond.1.if.then22.critedge_crit_edge

for.cond.1.if.then22.critedge_crit_edge:          ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22.critedge

for.cond.2:                                       ; preds = %for.cond.1
  %qlen.i.3 = getelementptr %struct.rtl_priv, ptr %2, i32 1, i32 7, i32 3, i32 0, i32 0, i32 4, i32 6
  %26 = ptrtoint ptr %qlen.i.3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %qlen.i.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool18.not.3 = icmp eq i32 %27, 0
  br i1 %tobool18.not.3, label %for.cond.3, label %for.cond.2.if.then22.critedge_crit_edge

for.cond.2.if.then22.critedge_crit_edge:          ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22.critedge

for.cond.3:                                       ; preds = %for.cond.2
  %qlen.i.4 = getelementptr %struct.rtl_priv, ptr %2, i32 1, i32 7, i32 5, i32 0, i32 0, i32 4, i32 3
  %28 = ptrtoint ptr %qlen.i.4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %qlen.i.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool18.not.4 = icmp eq i32 %29, 0
  br i1 %tobool18.not.4, label %for.cond.4, label %for.cond.3.if.then22.critedge_crit_edge

for.cond.3.if.then22.critedge_crit_edge:          ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22.critedge

for.cond.4:                                       ; preds = %for.cond.3
  %qlen.i.5 = getelementptr %struct.rtl_priv, ptr %2, i32 1, i32 7, i32 7, i32 0, i32 0, i32 4, i32 2
  %30 = ptrtoint ptr %qlen.i.5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %qlen.i.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool18.not.5 = icmp eq i32 %31, 0
  br i1 %tobool18.not.5, label %for.cond.5, label %for.cond.4.if.then22.critedge_crit_edge

for.cond.4.if.then22.critedge_crit_edge:          ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22.critedge

for.cond.5:                                       ; preds = %for.cond.4
  %qlen.i.6 = getelementptr %struct.rtl_priv, ptr %2, i32 1, i32 7, i32 9, i32 0, i32 0, i32 4, i32 1, i32 1
  %32 = ptrtoint ptr %qlen.i.6 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %qlen.i.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool18.not.6 = icmp eq i32 %33, 0
  br i1 %tobool18.not.6, label %for.cond.6, label %for.cond.5.if.then22.critedge_crit_edge

for.cond.5.if.then22.critedge_crit_edge:          ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22.critedge

for.cond.6:                                       ; preds = %for.cond.5
  %qlen.i.7 = getelementptr %struct.rtl_priv, ptr %2, i32 1, i32 7, i32 11, i32 0, i32 0, i32 4, i32 1
  %34 = ptrtoint ptr %qlen.i.7 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %qlen.i.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool18.not.7 = icmp eq i32 %35, 0
  br i1 %tobool18.not.7, label %for.cond.7, label %for.cond.6.if.then22.critedge_crit_edge

for.cond.6.if.then22.critedge_crit_edge:          ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22.critedge

for.cond.7:                                       ; preds = %for.cond.6
  %qlen.i.8 = getelementptr %struct.rtl_priv, ptr %2, i32 1, i32 7, i32 13, i32 0, i32 0, i32 4
  %36 = ptrtoint ptr %qlen.i.8 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %qlen.i.8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool18.not.8 = icmp eq i32 %37, 0
  br i1 %tobool18.not.8, label %for.cond.8, label %for.cond.7.if.then22.critedge_crit_edge

for.cond.7.if.then22.critedge_crit_edge:          ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22.critedge

for.cond.8:                                       ; preds = %for.cond.7
  %fw_ps_state = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 10, i32 49
  %38 = ptrtoint ptr %fw_ps_state to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %fw_ps_state, align 1
  %40 = and i8 %39, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %40)
  %cmp27.not = icmp eq i8 %40, 1
  br i1 %cmp27.not, label %for.cond.8.cleanup_crit_edge, label %if.then29

for.cond.8.cleanup_crit_edge:                     ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then22.critedge:                               ; preds = %for.cond.7.if.then22.critedge_crit_edge, %for.cond.6.if.then22.critedge_crit_edge, %for.cond.5.if.then22.critedge_crit_edge, %for.cond.4.if.then22.critedge_crit_edge, %for.cond.3.if.then22.critedge_crit_edge, %for.cond.2.if.then22.critedge_crit_edge, %for.cond.1.if.then22.critedge_crit_edge, %for.cond.if.then22.critedge_crit_edge, %for.cond.preheader.if.then22.critedge_crit_edge
  %fw_clockoff_timer = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 8, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %41, 1
  %call24 = call i32 @mod_timer(ptr noundef %fw_clockoff_timer, i32 noundef %add) #8
  br label %cleanup

if.then29:                                        ; preds = %for.cond.8
  %fw_ps_lock = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 7, i32 11
  call void @_raw_spin_lock_bh(ptr noundef %fw_ps_lock) #8
  %fw_clk_change_in_progress = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 10, i32 47
  %42 = ptrtoint ptr %fw_clk_change_in_progress to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %fw_clk_change_in_progress, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool30.not = icmp eq i8 %43, 0
  br i1 %tobool30.not, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.then29
  %44 = ptrtoint ptr %fw_clk_change_in_progress to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %fw_clk_change_in_progress, align 1
  call void @_raw_spin_unlock_bh(ptr noundef %fw_ps_lock) #8
  %45 = ptrtoint ptr %rpwm_val.addr to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %rpwm_val.addr, align 1
  %47 = and i8 %46, 15
  %48 = ptrtoint ptr %fw_ps_state to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %fw_ps_state, align 1
  %write16_async.i = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 13, i32 6
  %49 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write16_async.i, align 4
  call void %50(ptr noundef %2, i32 noundef 180, i16 noundef zeroext 256) #8
  %51 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cfg, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %write_readback.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i = icmp eq i8 %54, 0
  br i1 %tobool.not.i, label %if.then31.rtl_write_word.exit_crit_edge, label %if.then.i

if.then31.rtl_write_word.exit_crit_edge:          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit

if.then.i:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 13, i32 10
  %55 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %read16_sync.i, align 4
  %call.i = call zeroext i16 %56(ptr noundef %2, i32 noundef 180) #8
  br label %rtl_write_word.exit

rtl_write_word.exit:                              ; preds = %if.then.i, %if.then31.rtl_write_word.exit_crit_edge
  %57 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cfg, align 8
  %ops40 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %58, i32 0, i32 4
  %59 = ptrtoint ptr %ops40 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ops40, align 4
  %set_hw_reg = getelementptr inbounds %struct.rtl_hal_ops, ptr %60, i32 0, i32 20
  %61 = ptrtoint ptr %set_hw_reg to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %set_hw_reg, align 4
  call void %62(ptr noundef %hw, i8 noundef zeroext 60, ptr noundef nonnull %rpwm_val.addr) #8
  call void @_raw_spin_lock_bh(ptr noundef %fw_ps_lock) #8
  %63 = ptrtoint ptr %fw_clk_change_in_progress to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %fw_clk_change_in_progress, align 1
  call void @_raw_spin_unlock_bh(ptr noundef %fw_ps_lock) #8
  br label %cleanup

if.else:                                          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock_bh(ptr noundef %fw_ps_lock) #8
  %fw_clockoff_timer49 = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 8, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %64 = load volatile i32, ptr @jiffies, align 128
  %add51 = add i32 %64, 1
  %call52 = call i32 @mod_timer(ptr noundef %fw_clockoff_timer49, i32 noundef %add51) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %rtl_write_word.exit, %if.then22.critedge, %for.cond.8.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rtstate) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_rtl92ee_set_fw_clock_on(ptr noundef %hw, i1 noundef zeroext %b_need_turn_off_ckk) unnamed_addr #0 align 64 {
entry:
  %rpwm_val.addr = alloca i8, align 1
  %b_support_remote_wake_up = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rpwm_val.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 64, ptr %rpwm_val.addr, align 1
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b_support_remote_wake_up) #8
  %3 = ptrtoint ptr %b_support_remote_wake_up to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %b_support_remote_wake_up, align 1, !annotation !137
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 32
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
  call void %9(ptr noundef %hw, i8 noundef zeroext 92, ptr noundef nonnull %b_support_remote_wake_up) #8
  %fw_ready = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 10, i32 38
  %10 = ptrtoint ptr %fw_ready to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %fw_ready, align 2, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool4.not = icmp eq i8 %11, 0
  br i1 %tobool4.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %fw_current_inpsmode = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 21, i32 13
  %12 = ptrtoint ptr %fw_current_inpsmode to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %fw_current_inpsmode, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool5.not = icmp eq i8 %13, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %while.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end
  %fw_ps_lock = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 7, i32 11
  call void @_raw_spin_lock_bh(ptr noundef %fw_ps_lock) #8
  %fw_clk_change_in_progress = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 10, i32 47
  %14 = ptrtoint ptr %fw_clk_change_in_progress to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %fw_clk_change_in_progress, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool8.not9 = icmp eq i8 %15, 0
  br i1 %tobool8.not9, label %while.cond.preheader.if.else_crit_edge, label %while.cond.preheader.while.body13_crit_edge

while.cond.preheader.while.body13_crit_edge:      ; preds = %while.cond.preheader
  br label %while.body13

while.cond.preheader.if.else_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

while.body13:                                     ; preds = %while.body13.backedge, %while.cond.preheader.while.body13_crit_edge
  %count.18 = phi i32 [ %inc, %while.body13.backedge ], [ 0, %while.cond.preheader.while.body13_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef %fw_ps_lock) #8
  %inc = add i32 %count.18, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %16(i32 noundef 21474800) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %inc)
  %cmp = icmp ugt i32 %inc, 1000
  br i1 %cmp, label %while.body13.cleanup_crit_edge, label %if.end17

while.body13.cleanup_crit_edge:                   ; preds = %while.body13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %while.body13
  call void @_raw_spin_lock_bh(ptr noundef %fw_ps_lock) #8
  %17 = ptrtoint ptr %fw_clk_change_in_progress to i32
  call void @__asan_load1_noabort(i32 %17)
  %.pr = load i8, ptr %fw_clk_change_in_progress, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool12.not = icmp eq i8 %.pr, 0
  br i1 %tobool12.not, label %while.end, label %if.end17.while.body13.backedge_crit_edge

if.end17.while.body13.backedge_crit_edge:         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body13.backedge

while.body13.backedge:                            ; preds = %while.end.while.body13.backedge_crit_edge, %if.end17.while.body13.backedge_crit_edge
  br label %while.body13

while.end:                                        ; preds = %if.end17
  call void @_raw_spin_unlock_bh(ptr noundef %fw_ps_lock) #8
  call void @_raw_spin_lock_bh(ptr noundef %fw_ps_lock) #8
  %18 = ptrtoint ptr %fw_clk_change_in_progress to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %fw_clk_change_in_progress, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool8.not = icmp eq i8 %19, 0
  br i1 %tobool8.not, label %while.end.if.else_crit_edge, label %while.end.while.body13.backedge_crit_edge

while.end.while.body13.backedge_crit_edge:        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body13.backedge

while.end.if.else_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.else:                                          ; preds = %while.end.if.else_crit_edge, %while.cond.preheader.if.else_crit_edge
  %count.0.lcssa = phi i32 [ 0, %while.cond.preheader.if.else_crit_edge ], [ %inc, %while.end.if.else_crit_edge ]
  %20 = ptrtoint ptr %fw_clk_change_in_progress to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %fw_clk_change_in_progress, align 1
  call void @_raw_spin_unlock_bh(ptr noundef %fw_ps_lock) #8
  %fw_ps_state = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 10, i32 49
  %21 = ptrtoint ptr %fw_ps_state to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %fw_ps_state, align 1
  %23 = and i8 %22, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %23)
  %cmp27 = icmp eq i8 %23, 1
  br i1 %cmp27, label %if.then29, label %if.else64

if.then29:                                        ; preds = %if.else
  %24 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cfg, align 8
  %ops31 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %ops31 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops31, align 4
  %get_hw_reg32 = getelementptr inbounds %struct.rtl_hal_ops, ptr %27, i32 0, i32 19
  %28 = ptrtoint ptr %get_hw_reg32 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %get_hw_reg32, align 4
  call void %29(ptr noundef %hw, i8 noundef zeroext 60, ptr noundef nonnull %rpwm_val.addr) #8
  %30 = ptrtoint ptr %rpwm_val.addr to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %rpwm_val.addr, align 1
  %32 = and i8 %31, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool35.not = icmp eq i8 %32, 0
  br i1 %tobool35.not, label %if.then29.if.end53_crit_edge, label %if.then36

if.then29.if.end53_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then36:                                        ; preds = %if.then29
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 13, i32 11
  %33 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %read32_sync.i, align 4
  %call.i = call i32 %34(ptr noundef %2, i32 noundef 180) #8
  %and3813 = and i32 %call.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3813)
  %tobool39.not14 = icmp eq i32 %and3813, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %count.0.lcssa)
  %cmp4015 = icmp ult i32 %count.0.lcssa, 500
  %or.cond16 = select i1 %tobool39.not14, i1 %cmp4015, i1 false
  br i1 %or.cond16, label %if.then36.while.body42_crit_edge, label %if.then36.while.end45_crit_edge

if.then36.while.end45_crit_edge:                  ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end45

if.then36.while.body42_crit_edge:                 ; preds = %if.then36
  br label %while.body42

while.body42:                                     ; preds = %while.body42.while.body42_crit_edge, %if.then36.while.body42_crit_edge
  %count.217 = phi i32 [ %inc43, %while.body42.while.body42_crit_edge ], [ %count.0.lcssa, %if.then36.while.body42_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %35(i32 noundef 10737400) #8
  %inc43 = add nuw nsw i32 %count.217, 1
  %36 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read32_sync.i, align 4
  %call.i2 = call i32 %37(ptr noundef %2, i32 noundef 180) #8
  %and38 = and i32 %call.i2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 499, i32 %count.217)
  %cmp40 = icmp ult i32 %count.217, 499
  %or.cond = select i1 %tobool39.not, i1 %cmp40, i1 false
  br i1 %or.cond, label %while.body42.while.body42_crit_edge, label %while.body42.while.end45_crit_edge

while.body42.while.end45_crit_edge:               ; preds = %while.body42
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end45

while.body42.while.body42_crit_edge:              ; preds = %while.body42
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body42

while.end45:                                      ; preds = %while.body42.while.end45_crit_edge, %if.then36.while.end45_crit_edge
  %tobool39.not.lcssa = phi i1 [ %tobool39.not14, %if.then36.while.end45_crit_edge ], [ %tobool39.not, %while.body42.while.end45_crit_edge ]
  br i1 %tobool39.not.lcssa, label %while.end45.if.end53_crit_edge, label %if.then48

while.end45.if.end53_crit_edge:                   ; preds = %while.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then48:                                        ; preds = %while.end45
  %write16_async.i = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 13, i32 6
  %38 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write16_async.i, align 4
  call void %39(ptr noundef %2, i32 noundef 180, i16 noundef zeroext 256) #8
  %40 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cfg, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %write_readback.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i = icmp eq i8 %43, 0
  br i1 %tobool.not.i, label %if.then48.rtl_write_word.exit_crit_edge, label %if.then.i

if.then48.rtl_write_word.exit_crit_edge:          ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit

if.then.i:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 13, i32 10
  %44 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read16_sync.i, align 4
  %call.i3 = call zeroext i16 %45(ptr noundef %2, i32 noundef 180) #8
  br label %rtl_write_word.exit

rtl_write_word.exit:                              ; preds = %if.then.i, %if.then48.rtl_write_word.exit_crit_edge
  %46 = ptrtoint ptr %fw_ps_state to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %fw_ps_state, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %2, i64 noundef 65536, i32 noundef 4, ptr noundef nonnull @.str.35, i32 noundef 0) #8
  br label %if.end53

if.end53:                                         ; preds = %rtl_write_word.exit, %while.end45.if.end53_crit_edge, %if.then29.if.end53_crit_edge
  call void @_raw_spin_lock_bh(ptr noundef %fw_ps_lock) #8
  %47 = ptrtoint ptr %fw_clk_change_in_progress to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %fw_clk_change_in_progress, align 1
  call void @_raw_spin_unlock_bh(ptr noundef %fw_ps_lock) #8
  br i1 %b_need_turn_off_ckk, label %if.then60, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then60:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %fw_clockoff_timer = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 8, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %48 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %48, 1
  %call62 = call i32 @mod_timer(ptr noundef %fw_clockoff_timer, i32 noundef %add) #8
  br label %cleanup

if.else64:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_lock_bh(ptr noundef %fw_ps_lock) #8
  %49 = ptrtoint ptr %fw_clk_change_in_progress to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %fw_clk_change_in_progress, align 1
  call void @_raw_spin_unlock_bh(ptr noundef %fw_ps_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else64, %if.then60, %if.end53.cleanup_crit_edge, %while.body13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b_support_remote_wake_up) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ee_set_fw_rsvdpagepkt(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl_hal_pwrseqcmdparsing(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ee_sw_led_on(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ee_sw_led_off(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ee_firmware_selfreset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl_get_hwinfo(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i8 @_rtl92ee_get_chnl_group(i8 noundef zeroext %chnl) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %chnl)
  %cmp = icmp ult i8 %chnl, 15
  br i1 %cmp, label %if.then, label %if.else48

if.then:                                          ; preds = %entry
  %0 = add nsw i8 %chnl, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %0)
  %1 = icmp ult i8 %0, 2
  br i1 %1, label %if.then.if.end188_crit_edge, label %if.else

if.then.if.end188_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end188

if.else:                                          ; preds = %if.then
  %2 = add nsw i8 %chnl, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %2)
  %3 = icmp ult i8 %2, 3
  br i1 %3, label %if.else.if.end188_crit_edge, label %if.else17

if.else.if.end188_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end188

if.else17:                                        ; preds = %if.else
  %4 = add nsw i8 %chnl, -6
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %4)
  %5 = icmp ult i8 %4, 3
  br i1 %5, label %if.else17.if.end188_crit_edge, label %if.else26

if.else17.if.end188_crit_edge:                    ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end188

if.else26:                                        ; preds = %if.else17
  %6 = add nsw i8 %chnl, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %6)
  %7 = icmp ult i8 %6, 3
  br i1 %7, label %if.else26.if.end188_crit_edge, label %if.else35

if.else26.if.end188_crit_edge:                    ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end188

if.else35:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %chnl)
  %cmp37 = icmp ugt i8 %chnl, 11
  %spec.select = select i1 %cmp37, i8 4, i8 0
  br label %if.end188

if.else48:                                        ; preds = %entry
  %8 = add i8 %chnl, -36
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %8)
  %9 = icmp ult i8 %8, 7
  br i1 %9, label %if.else48.if.end188_crit_edge, label %if.else57

if.else48.if.end188_crit_edge:                    ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end188

if.else57:                                        ; preds = %if.else48
  %10 = add i8 %chnl, -44
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %10)
  %11 = icmp ult i8 %10, 5
  br i1 %11, label %if.else57.if.end188_crit_edge, label %if.else66

if.else57.if.end188_crit_edge:                    ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end188

if.else66:                                        ; preds = %if.else57
  %12 = add i8 %chnl, -50
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %12)
  %13 = icmp ult i8 %12, 9
  br i1 %13, label %if.else66.if.end188_crit_edge, label %if.else75

if.else66.if.end188_crit_edge:                    ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end188

if.else75:                                        ; preds = %if.else66
  %14 = add i8 %chnl, -60
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %14)
  %15 = icmp ult i8 %14, 5
  br i1 %15, label %if.else75.if.end188_crit_edge, label %if.else84

if.else75.if.end188_crit_edge:                    ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end188

if.else84:                                        ; preds = %if.else75
  %16 = add i8 %chnl, -100
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %16)
  %17 = icmp ult i8 %16, 7
  br i1 %17, label %if.else84.if.end188_crit_edge, label %if.else93

if.else84.if.end188_crit_edge:                    ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end188

if.else93:                                        ; preds = %if.else84
  %18 = add i8 %chnl, -108
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %18)
  %19 = icmp ult i8 %18, 7
  br i1 %19, label %if.else93.if.end188_crit_edge, label %if.else102

if.else93.if.end188_crit_edge:                    ; preds = %if.else93
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end188

if.else102:                                       ; preds = %if.else93
  %20 = add i8 %chnl, -116
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %20)
  %21 = icmp ult i8 %20, 7
  br i1 %21, label %if.else102.if.end188_crit_edge, label %if.else111

if.else102.if.end188_crit_edge:                   ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end188

if.else111:                                       ; preds = %if.else102
  %22 = add i8 %chnl, -124
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %22)
  %23 = icmp ult i8 %22, 7
  br i1 %23, label %if.else111.if.end188_crit_edge, label %if.else120

if.else111.if.end188_crit_edge:                   ; preds = %if.else111
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end188

if.else120:                                       ; preds = %if.else111
  %24 = add i8 %chnl, 124
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %24)
  %25 = icmp ult i8 %24, 7
  br i1 %25, label %if.else120.if.end188_crit_edge, label %if.else129

if.else120.if.end188_crit_edge:                   ; preds = %if.else120
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end188

if.else129:                                       ; preds = %if.else120
  %26 = add i8 %chnl, 116
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %26)
  %27 = icmp ult i8 %26, 5
  br i1 %27, label %if.else129.if.end188_crit_edge, label %if.else138

if.else129.if.end188_crit_edge:                   ; preds = %if.else129
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end188

if.else138:                                       ; preds = %if.else129
  %28 = add i8 %chnl, 107
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %28)
  %29 = icmp ult i8 %28, 7
  br i1 %29, label %if.else138.if.end188_crit_edge, label %if.else147

if.else138.if.end188_crit_edge:                   ; preds = %if.else138
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end188

if.else147:                                       ; preds = %if.else138
  %30 = add i8 %chnl, 99
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %30)
  %31 = icmp ult i8 %30, 5
  br i1 %31, label %if.else147.if.end188_crit_edge, label %if.else156

if.else147.if.end188_crit_edge:                   ; preds = %if.else147
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end188

if.else156:                                       ; preds = %if.else147
  %32 = add i8 %chnl, 91
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %32)
  %33 = icmp ult i8 %32, 7
  br i1 %33, label %if.else156.if.end188_crit_edge, label %if.else165

if.else156.if.end188_crit_edge:                   ; preds = %if.else156
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end188

if.else165:                                       ; preds = %if.else156
  call void @__sanitizer_cov_trace_pc() #10
  %34 = add i8 %chnl, 83
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %34)
  %35 = icmp ult i8 %34, 5
  %spec.select244 = select i1 %35, i8 13, i8 0
  br label %if.end188

if.end188:                                        ; preds = %if.else165, %if.else156.if.end188_crit_edge, %if.else147.if.end188_crit_edge, %if.else138.if.end188_crit_edge, %if.else129.if.end188_crit_edge, %if.else120.if.end188_crit_edge, %if.else111.if.end188_crit_edge, %if.else102.if.end188_crit_edge, %if.else93.if.end188_crit_edge, %if.else84.if.end188_crit_edge, %if.else75.if.end188_crit_edge, %if.else66.if.end188_crit_edge, %if.else57.if.end188_crit_edge, %if.else48.if.end188_crit_edge, %if.else35, %if.else26.if.end188_crit_edge, %if.else17.if.end188_crit_edge, %if.else.if.end188_crit_edge, %if.then.if.end188_crit_edge
  %group.0 = phi i8 [ 0, %if.then.if.end188_crit_edge ], [ 1, %if.else.if.end188_crit_edge ], [ 2, %if.else17.if.end188_crit_edge ], [ 3, %if.else26.if.end188_crit_edge ], [ 0, %if.else48.if.end188_crit_edge ], [ 1, %if.else57.if.end188_crit_edge ], [ 2, %if.else66.if.end188_crit_edge ], [ 3, %if.else75.if.end188_crit_edge ], [ 4, %if.else84.if.end188_crit_edge ], [ 5, %if.else93.if.end188_crit_edge ], [ 6, %if.else102.if.end188_crit_edge ], [ 7, %if.else111.if.end188_crit_edge ], [ 8, %if.else120.if.end188_crit_edge ], [ 9, %if.else129.if.end188_crit_edge ], [ 10, %if.else138.if.end188_crit_edge ], [ 11, %if.else147.if.end188_crit_edge ], [ 12, %if.else156.if.end188_crit_edge ], [ %spec.select, %if.else35 ], [ %spec.select244, %if.else165 ]
  ret i8 %group.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !28, !30, !32, !34, !36, !37, !39, !41, !43, !45, !47, !49, !51, !53, !54, !55, !56, !58, !60, !62, !64, !65, !66, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !100, !101, !102, !104, !106, !108, !109, !110, !112, !114, !116, !118, !120, !122, !124, !126}
!llvm.module.flags = !{!128, !129, !130, !131, !132, !133, !134, !135}
!llvm.ident = !{!136}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c", i32 322, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c", i32 450, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c", i32 497, i32 4}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c", i32 531, i32 5}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c", i32 555, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c", i32 1110, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c", i32 1116, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c", i32 1133, i32 2}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c", i32 1284, i32 2}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c", i32 1298, i32 3}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c", i32 1319, i32 3}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @rtl92ee_hw_init._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @rtl92ee_hw_init._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c", i32 1327, i32 3}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c", i32 1404, i32 3}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c", i32 1409, i32 3}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c", i32 1424, i32 2}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c", i32 1580, i32 3}
!36 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c", i32 1654, i32 2}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c", i32 1713, i32 2}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c", i32 1724, i32 2}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c", i32 2194, i32 2}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c", i32 2198, i32 3}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c", i32 2201, i32 3}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c", i32 2205, i32 3}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c", i32 2209, i32 3}
!53 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @rtl92ee_read_eeprom_info._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @rtl92ee_read_eeprom_info._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @rtl92ee_set_key.cam_const_addr, !57, !"cam_const_addr", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c", i32 2426, i32 12}
!58 = !{ptr @rtl92ee_set_key.cam_const_broad, !59, !"cam_const_broad", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c", i32 2432, i32 12}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c", i32 2441, i32 3}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c", i32 2488, i32 7}
!64 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @rtl92ee_set_key._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @rtl92ee_set_key._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c", i32 2501, i32 4}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c", i32 2509, i32 4}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c", i32 2512, i32 5}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c", i32 2520, i32 5}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c", i32 2606, i32 2}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c", i32 122, i32 5}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c", i32 393, i32 3}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c", i32 1156, i32 3}
!83 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c", i32 1170, i32 2}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c", i32 774, i32 3}
!87 = distinct !{null, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c", i32 798, i32 4}
!89 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c", i32 1462, i32 3}
!91 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c", i32 1468, i32 3}
!93 = !{ptr @.str.43, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c", i32 1474, i32 3}
!95 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c", i32 1480, i32 3}
!97 = !{ptr @.str.45, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c", i32 1484, i32 3}
!99 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @_rtl92ee_set_media_status._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @_rtl92ee_set_media_status._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c", i32 1506, i32 3}
!104 = !{ptr @.str.48, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c", i32 1614, i32 2}
!106 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c", i32 1444, i32 2}
!108 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.52, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c", i32 2116, i32 2}
!112 = !{ptr @.str.53, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c", i32 2137, i32 2}
!114 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c", i32 2080, i32 2}
!116 = !{ptr @.str.55, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c", i32 2091, i32 2}
!118 = !{ptr @.str.56, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c", i32 1791, i32 2}
!120 = !{ptr @.str.57, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c", i32 1798, i32 3}
!122 = !{ptr @.str.58, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c", i32 2175, i32 2}
!124 = !{ptr @.str.59, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c", i32 2364, i32 2}
!126 = !{ptr @.str.60, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/hw.c", i32 2375, i32 2}
!128 = !{i32 1, !"wchar_size", i32 2}
!129 = !{i32 1, !"min_enum_size", i32 4}
!130 = !{i32 8, !"branch-target-enforcement", i32 0}
!131 = !{i32 8, !"sign-return-address", i32 0}
!132 = !{i32 8, !"sign-return-address-all", i32 0}
!133 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!134 = !{i32 7, !"uwtable", i32 1}
!135 = !{i32 7, !"frame-pointer", i32 2}
!136 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!137 = !{!"auto-init"}
!138 = !{i8 0, i8 2}
!139 = !{!"branch_weights", i32 2000, i32 1}
