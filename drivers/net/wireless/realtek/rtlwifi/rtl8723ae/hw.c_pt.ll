; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c"
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
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Set HW_VAR_AMPDU_MIN_SPACE: %#x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Set HW_VAR_SHORTGI_DENSITY: %#x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Set HW_VAR_AMPDU_FACTOR: %#x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"HW_VAR_ACM_CTRL acm set failed: eACI is %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"SetHwReg8190pci(): [HW_VAR_ACM_CTRL] Write 0x%X\0A\00", [47 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.7 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"PairwiseEncAlgorithm = %d GroupEncAlgorithm = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"not open hw encryption\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"The SECR-value %x\0A\00", [45 x i8] zeroinitializer }, align 32
@rtl8723e_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.12, i32 938, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013rtl8723ae: Init MAC failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rtl8723e_hw_init\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c\00", [44 x i8] zeroinitializer }, align 32
@rtl8723e_hw_init._entry_ptr = internal global ptr @rtl8723e_hw_init._entry, section ".printk_index", align 4
@.str.13 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to download FW. Init HW without FW now..\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PA BIAS path A\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"under 1.5V\0A\00", [20 x i8] zeroinitializer }, align 32
@rtl8723e_set_qos.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rtl8723ae: invalid aci: %d !\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"beacon_interval:%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"add_msr:%x, rm_msr:%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"VersionID = 0x%4x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Boot from EEPROM\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Boot from EFUSE\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Autoload OK\0A\00", [19 x i8] zeroinitializer }, align 32
@rtl8723e_read_eeprom_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.12, i32 1826, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013rtl8723ae: Autoload ERR!!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rtl8723e_read_eeprom_info\00", [38 x i8] zeroinitializer }, align 32
@rtl8723e_read_eeprom_info._entry_ptr = internal global ptr @rtl8723e_read_eeprom_info._entry, section ".printk_index", align 4
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"GPIOChangeRF  - HW Radio ON, RF ON\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"GPIOChangeRF  - HW Radio OFF, RF OFF\0A\00", [58 x i8] zeroinitializer }, align 32
@rtl8723e_set_key.cam_const_addr = internal global { [4 x [6 x i8]], [40 x i8] } { [4 x [6 x i8]] [[6 x i8] zeroinitializer, [6 x i8] c"\00\00\00\00\00\01", [6 x i8] c"\00\00\00\00\00\02", [6 x i8] c"\00\00\00\00\00\03"], [40 x i8] zeroinitializer }, align 32
@rtl8723e_set_key.cam_const_broad = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\FF\FF\FF\FF\FF\FF", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clear_all\0A\00", [21 x i8] zeroinitializer }, align 32
@rtl8723e_set_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.12, i32 2218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013rtl8723ae: Can not find free hw security cam entry\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rtl8723e_set_key\00", [47 x i8] zeroinitializer }, align 32
@rtl8723e_set_key._entry_ptr = internal global ptr @rtl8723e_set_key._entry, section ".printk_index", align 4
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"delete one entry, entry_id is %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"add one entry\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"set Pairwise key\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"set group key\0A\00", [17 x i8] zeroinitializer }, align 32
@rtl8723A_card_enable_flow = external dso_local global [21 x %struct.wlan_pwr_cfg], align 2
@.str.34 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"InitMAC(): ePHY configure fail!!!\0A\00", [61 x i8] zeroinitializer }, align 32
@_rtl8723e_llt_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.12, i32 552, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013rtl8723ae: Failed to polling write LLT done at address %d!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"_rtl8723e_llt_write\00", [44 x i8] zeroinitializer }, align 32
@_rtl8723e_llt_write._entry_ptr = internal global ptr @_rtl8723e_llt_write._entry, section ".printk_index", align 4
@.str.37 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"clear 0x550 when set HW_VAR_MEDIA_STATUS\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Set Network type to NO LINK!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Set Network type to Ad Hoc!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Set Network type to STA!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Set Network type to AP!\0A\00", [39 x i8] zeroinitializer }, align 32
@_rtl8723e_set_media_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.12, i32 1133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013rtl8723ae: Network type %d not support!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"_rtl8723e_set_media_status\00", [37 x i8] zeroinitializer }, align 32
@_rtl8723e_set_media_status._entry_ptr = internal global ptr @_rtl8723e_set_media_status._entry, section ".printk_index", align 4
@.str.44 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Set HW_VAR_MEDIA_STATUS: No such media status(%x).\0A\00", [44 x i8] zeroinitializer }, align 32
@rtl8723A_enter_lps_flow = external dso_local global [16 x %struct.wlan_pwr_cfg], align 2
@rtl8723A_card_disable_flow = external dso_local global [21 x %struct.wlan_pwr_cfg], align 2
@.str.45 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Chip Version ID: VERSION_TEST_UMC_CHIP_8723.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Chip Version ID: VERSION_NORMAL_UMC_CHIP_8723_1T1R_A_CUT.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Chip Version ID: VERSION_NORMAL_UMC_CHIP_8723_1T1R_B_CUT.\0A\00", [37 x i8] zeroinitializer }, align 32
@_rtl8723e_read_chip_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.12, i32 1084, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013rtl8723ae: Chip Version ID: Unknown. Bug?\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"_rtl8723e_read_chip_version\00", [36 x i8] zeroinitializer }, align 32
@_rtl8723e_read_chip_version._entry_ptr = internal global ptr @_rtl8723e_read_chip_version._entry, section ".printk_index", align 4
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Chip RF Type: %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RF_2T2R\00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RF_1T1R\00", [24 x i8] zeroinitializer }, align 32
@__const._rtl8723e_read_adapter_info.params = private unnamed_addr constant [10 x i32] [i32 33065, i32 73, i32 75, i32 77, i32 79, i32 103, i32 40, i32 48, i32 49, i32 11], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.53 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RF(%d) EEPROM CCK Area(%d) = 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"RF(%d) EEPROM HT40 1S Area(%d) = 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"RF(%d) EEPROM HT40 2S Diff Area(%d) = 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"RF(%d)-Ch(%d) [CCK / HT40_1S / HT40_2S] = [0x%x / 0x%x / 0x%x]\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"RF-%d pwrgroup_ht20[%d] = 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"RF-%d pwrgroup_ht40[%d] = 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RF-A Ht20 to HT40 Diff[%d] = 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"RF-A Legacy to Ht40 Diff[%d] = 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RF-B Ht20 to HT40 Diff[%d] = 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"RF-B Legacy to HT40 Diff[%d] = 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"eeprom_regulatory = 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"TSSI_A = 0x%x, TSSI_B = 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"thermalmeter = 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"RT Customized ID: 0x%02X\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ratr_bitmap :%x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Rate_index:%x, ratr_val:%x, %x:%x:%x:%x:%x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%x\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"BT Coexistence = 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"BlueTooth BT_Ant_Num = Antx2\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"BlueTooth BT_Ant_Num = Antx1\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"BlueTooth BT_CoexistType = BT_2Wire\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"BlueTooth BT_CoexistType = BT_ISSC_3Wire\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"BlueTooth BT_CoexistType = BT_ACCEL\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"BlueTooth BT_CoexistType = BT_CSR_BC4\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"BlueTooth BT_CoexistType = BT_CSR_BC8\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"BlueTooth BT_CoexistType = BT_RTL8756\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"BlueTooth BT_CoexistType = Unknown\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"BlueTooth BT_Ant_isolation = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"BT_RadioSharedType = 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@switch.table.rtl8723e_set_key = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 2, i32 1, i32 4, i32 5], [44 x i8] zeroinitializer }, align 32
@switch.table.rtl8723e_read_bt_coexist_info_from_hwpg = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 40, i64 44, i64 65, i64 84, i64 86, i64 92]
@__sancov_gen_cov_switch_values.82 = internal global [28 x i64] [i64 26, i64 8, i64 0, i64 2, i64 3, i64 14, i64 18, i64 19, i64 27, i64 28, i64 29, i64 30, i64 32, i64 33, i64 44, i64 53, i64 56, i64 57, i64 60, i64 61, i64 62, i64 64, i64 65, i64 68, i64 72, i64 82, i64 84, i64 87]
@__sancov_gen_cov_switch_values.83 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.84 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 268435456]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 16, i64 128, i64 4224]
@__sancov_gen_cov_switch_values.87 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.88 = internal global [5 x i64] [i64 3, i64 2, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.89 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.90 = internal global [5 x i64] [i64 3, i64 32, i64 129, i64 137, i64 4233]
@__sancov_gen_cov_switch_values.91 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 4, i64 13, i64 16, i64 254]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 16, i64 33142, i64 33144]
@__sancov_gen_cov_switch_values.93 = internal global [8 x i64] [i64 6, i64 16, i64 4133, i64 4136, i64 4156, i64 4163, i64 4332, i64 6706]
@__sancov_gen_cov_switch_values.94 = internal global [68 x i64] [i64 66, i64 16, i64 24913, i64 24914, i64 24916, i64 24917, i64 24951, i64 24952, i64 24953, i64 24954, i64 24955, i64 24956, i64 24957, i64 24958, i64 24959, i64 24960, i64 24977, i64 24978, i64 24979, i64 29009, i64 29010, i64 29012, i64 29013, i64 29047, i64 29048, i64 29049, i64 29050, i64 29051, i64 29052, i64 29053, i64 29054, i64 29055, i64 29056, i64 29073, i64 29074, i64 29075, i64 29076, i64 33105, i64 33106, i64 33108, i64 33109, i64 33153, i64 33154, i64 33156, i64 33157, i64 33169, i64 33170, i64 33171, i64 33173, i64 33175, i64 33280, i64 33281, i64 33282, i64 33283, i64 37201, i64 37202, i64 37204, i64 37205, i64 37249, i64 37250, i64 37252, i64 37253, i64 37265, i64 37266, i64 37267, i64 37269, i64 37270, i64 37376]
@__sancov_gen_cov_switch_values.95 = internal global [6 x i64] [i64 4, i64 16, i64 33172, i64 33176, i64 37271, i64 37272]
@__sancov_gen_cov_switch_values.96 = internal global [5 x i64] [i64 3, i64 16, i64 4133, i64 4163, i64 4332]
@__sancov_gen_cov_switch_values.97 = internal global [19 x i64] [i64 17, i64 16, i64 24961, i64 24962, i64 24964, i64 24965, i64 29057, i64 29058, i64 29060, i64 29061, i64 33153, i64 33154, i64 33156, i64 33157, i64 33158, i64 37249, i64 37250, i64 37252, i64 37253]
@__sancov_gen_cov_switch_values.98 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.99 = internal global [7 x i64] [i64 5, i64 16, i64 1, i64 2, i64 4, i64 16, i64 32]
@__sancov_gen_cov_switch_values.100 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.101 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.102 = internal global [6 x i64] [i64 4, i64 16, i64 2, i64 4, i64 16, i64 32]
@__sancov_gen_cov_switch_values.103 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 7]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 125, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 190, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 230, i32 5 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 245, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 292, i32 5 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 331, i32 6 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 355, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 881, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 887, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 903, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 938, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 945, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1012, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1021, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1230, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1352, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1365, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1808, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1813, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1816, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1820, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1826, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 2113, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 2120, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant [15 x i8] c"cam_const_addr\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 2157, i32 12 }
@___asan_gen_.195 = private unnamed_addr constant [16 x i8] c"cam_const_broad\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 2163, i32 12 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 2172, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 2218, i32 7 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 2231, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 2238, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 2241, i32 5 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 2249, i32 5 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 706, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 551, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1106, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1112, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1117, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1123, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1129, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1133, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1155, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1072, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1076, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1080, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1084, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1091, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1427, i32 4 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1433, i32 4 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1440, i32 4 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1472, i32 4 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1511, i32 4 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1514, i32 4 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1554, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1558, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1562, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1566, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1574, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1582, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1597, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1784, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 2038, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 2043, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1916, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 2290, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 2303, i32 4 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 2306, i32 4 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 2311, i32 4 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 2315, i32 4 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 2319, i32 4 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 2323, i32 4 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 2327, i32 4 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 2331, i32 4 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 2335, i32 4 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 2339, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.373 = private constant [55 x i8] c"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 2342, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant [30 x i8] c"switch.table.rtl8723e_set_key\00", align 1
@___asan_gen_.376 = private unnamed_addr constant [53 x i8] c"switch.table.rtl8723e_read_bt_coexist_info_from_hwpg\00", align 1
@llvm.compiler.used = appending global [98 x ptr] [ptr @_rtl8723e_llt_write._entry, ptr @_rtl8723e_llt_write._entry_ptr, ptr @_rtl8723e_read_chip_version._entry, ptr @_rtl8723e_read_chip_version._entry_ptr, ptr @_rtl8723e_set_media_status._entry, ptr @_rtl8723e_set_media_status._entry_ptr, ptr @rtl8723e_hw_init._entry, ptr @rtl8723e_hw_init._entry_ptr, ptr @rtl8723e_read_eeprom_info._entry, ptr @rtl8723e_read_eeprom_info._entry_ptr, ptr @rtl8723e_set_key._entry, ptr @rtl8723e_set_key._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @rtl8723e_set_key.cam_const_addr, ptr @rtl8723e_set_key.cam_const_broad, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @switch.table.rtl8723e_set_key, ptr @switch.table.rtl8723e_read_bt_coexist_info_from_hwpg], section "llvm.metadata"
@0 = internal global [92 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8723e_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8723e_read_eeprom_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8723e_set_key.cam_const_addr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8723e_set_key.cam_const_broad to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8723e_set_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl8723e_llt_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl8723e_set_media_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl8723e_read_chip_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl8723e_set_key to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl8723e_read_bt_coexist_info_from_hwpg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723e_get_hw_reg(ptr noundef %hw, i8 noundef zeroext %variable, ptr nocapture noundef writeonly %val) local_unnamed_addr #0 align 64 {
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
  store i32 -1, ptr %rfstate, align 4, !annotation !181
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
  %22 = load i8, ptr %fw_current_inpsmode, align 1, !range !182
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %conv) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb12, %sw.bb10, %if.end9, %sw.bb4, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723e_set_hw_reg(ptr noundef %hw, i8 noundef zeroext %variable, ptr noundef %val) local_unnamed_addr #0 align 64 {
entry:
  %e_aci = alloca i8, align 1
  %regtoset_normal = alloca [4 x i8], align 4
  %regtoset_bt = alloca [4 x i8], align 4
  %e_aci178 = alloca i8, align 1
  %rpwm_val321 = alloca i8, align 1
  %fw_pwrmode = alloca i8, align 1
  %fw_current_inps = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = zext i8 %variable to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.82)
  switch i8 %variable, label %sw.default344 [
    i8 0, label %for.cond.preheader
    i8 2, label %sw.bb9
    i8 3, label %for.cond29.preheader
    i8 14, label %sw.bb41
    i8 18, label %sw.bb46
    i8 19, label %sw.bb58
    i8 28, label %sw.bb69
    i8 29, label %sw.bb90
    i8 30, label %sw.bb100
    i8 32, label %sw.bb177
    i8 33, label %sw.bb186
    i8 44, label %sw.bb230
    i8 53, label %sw.bb233
    i8 87, label %sw.bb241
    i8 57, label %sw.bb242
    i8 56, label %sw.bb243
    i8 72, label %sw.bb244
    i8 27, label %sw.bb246
    i8 60, label %sw.bb247
    i8 61, label %sw.bb258
    i8 65, label %sw.bb264
    i8 62, label %sw.bb266
    i8 64, label %sw.bb294
    i8 82, label %sw.bb295
    i8 84, label %sw.bb304
    i8 68, label %sw.bb318
  ]

for.cond29.preheader:                             ; preds = %entry
  %write8_async.i565 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %cfg.i566 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %read8_sync.i569 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %val, align 1
  %5 = ptrtoint ptr %write8_async.i565 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write8_async.i565, align 4
  tail call void %6(ptr noundef %1, i32 noundef 1560, i8 noundef zeroext %4) #8
  %7 = ptrtoint ptr %cfg.i566 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cfg.i566, align 8
  %write_readback.i567 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %write_readback.i567 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %write_readback.i567, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i568 = icmp eq i8 %10, 0
  br i1 %tobool.not.i568, label %for.cond29.preheader.rtl_write_byte.exit572_crit_edge, label %if.then.i571

for.cond29.preheader.rtl_write_byte.exit572_crit_edge: ; preds = %for.cond29.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit572

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
  %18 = load i8, ptr %write_readback.i, align 1, !range !182
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
  %28 = load i8, ptr %write_readback.i.1, align 1, !range !182
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
  %38 = load i8, ptr %write_readback.i.2, align 1, !range !182
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
  %48 = load i8, ptr %write_readback.i.3, align 1, !range !182
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
  %58 = load i8, ptr %write_readback.i.4, align 1, !range !182
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
  %68 = load i8, ptr %write_readback.i.5, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.not.i.5 = icmp eq i8 %68, 0
  br i1 %tobool.not.i.5, label %rtl_write_byte.exit.4.sw.epilog346_crit_edge, label %if.then.i.5

rtl_write_byte.exit.4.sw.epilog346_crit_edge:     ; preds = %rtl_write_byte.exit.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog346

if.then.i.5:                                      ; preds = %rtl_write_byte.exit.4
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %read8_sync.i, align 4
  %call.i.5 = tail call zeroext i8 %70(ptr noundef %1, i32 noundef 1557) #8
  br label %sw.epilog346

sw.bb9:                                           ; preds = %entry
  %71 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %val, align 2
  %73 = and i16 %72, 350
  %74 = or i16 %73, 1
  %conv17 = trunc i16 %74 to i8
  %write8_async.i541 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %75 = ptrtoint ptr %write8_async.i541 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %write8_async.i541, align 4
  tail call void %76(ptr noundef %1, i32 noundef 1088, i8 noundef zeroext %conv17) #8
  %cfg.i542 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %77 = ptrtoint ptr %cfg.i542 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cfg.i542, align 8
  %write_readback.i543 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %write_readback.i543 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %write_readback.i543, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool.not.i544 = icmp eq i8 %80, 0
  br i1 %tobool.not.i544, label %sw.bb9.rtl_write_byte.exit548_crit_edge, label %if.then.i547

sw.bb9.rtl_write_byte.exit548_crit_edge:          ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit548

if.then.i547:                                     ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i545 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %81 = ptrtoint ptr %read8_sync.i545 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %read8_sync.i545, align 4
  %call.i546 = tail call zeroext i8 %82(ptr noundef %1, i32 noundef 1088) #8
  br label %rtl_write_byte.exit548

rtl_write_byte.exit548:                           ; preds = %if.then.i547, %sw.bb9.rtl_write_byte.exit548_crit_edge
  %83 = lshr i16 %73, 8
  %conv20 = trunc i16 %83 to i8
  %84 = ptrtoint ptr %write8_async.i541 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %write8_async.i541, align 4
  tail call void %85(ptr noundef %1, i32 noundef 1089, i8 noundef zeroext %conv20) #8
  %86 = ptrtoint ptr %cfg.i542 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %cfg.i542, align 8
  %write_readback.i551 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %write_readback.i551 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %write_readback.i551, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool.not.i552 = icmp eq i8 %89, 0
  br i1 %tobool.not.i552, label %rtl_write_byte.exit548.rtl_write_byte.exit556_crit_edge, label %if.then.i555

rtl_write_byte.exit548.rtl_write_byte.exit556_crit_edge: ; preds = %rtl_write_byte.exit548
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit556

if.then.i555:                                     ; preds = %rtl_write_byte.exit548
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i553 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %90 = ptrtoint ptr %read8_sync.i553 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %read8_sync.i553, align 4
  %call.i554 = tail call zeroext i8 %91(ptr noundef %1, i32 noundef 1089) #8
  br label %rtl_write_byte.exit556

rtl_write_byte.exit556:                           ; preds = %if.then.i555, %rtl_write_byte.exit548.rtl_write_byte.exit556_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %cmp22912.not = icmp eq i16 %73, 0
  br i1 %cmp22912.not, label %rtl_write_byte.exit556.while.end_crit_edge, label %rtl_write_byte.exit556.while.body_crit_edge

rtl_write_byte.exit556.while.body_crit_edge:      ; preds = %rtl_write_byte.exit556
  br label %while.body

rtl_write_byte.exit556.while.end_crit_edge:       ; preds = %rtl_write_byte.exit556
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %rtl_write_byte.exit556.while.body_crit_edge
  %b_rate_cfg.0914 = phi i16 [ %92, %while.body.while.body_crit_edge ], [ %74, %rtl_write_byte.exit556.while.body_crit_edge ]
  %rate_index.0913 = phi i8 [ %inc27, %while.body.while.body_crit_edge ], [ 0, %rtl_write_byte.exit556.while.body_crit_edge ]
  %92 = lshr i16 %b_rate_cfg.0914, 1
  %inc27 = add nuw nsw i8 %rate_index.0913, 1
  %cmp22 = icmp ugt i16 %b_rate_cfg.0914, 3
  br i1 %cmp22, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %rtl_write_byte.exit556.while.end_crit_edge
  %rate_index.0.lcssa = phi i8 [ 0, %rtl_write_byte.exit556.while.end_crit_edge ], [ %inc27, %while.body.while.end_crit_edge ]
  %93 = ptrtoint ptr %write8_async.i541 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %write8_async.i541, align 4
  tail call void %94(ptr noundef %1, i32 noundef 1152, i8 noundef zeroext %rate_index.0.lcssa) #8
  %95 = ptrtoint ptr %cfg.i542 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cfg.i542, align 8
  %write_readback.i559 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %write_readback.i559 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %write_readback.i559, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool.not.i560 = icmp eq i8 %98, 0
  br i1 %tobool.not.i560, label %while.end.sw.epilog346_crit_edge, label %if.then.i563

while.end.sw.epilog346_crit_edge:                 ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog346

if.then.i563:                                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i561 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %99 = ptrtoint ptr %read8_sync.i561 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %read8_sync.i561, align 4
  %call.i562 = tail call zeroext i8 %100(ptr noundef %1, i32 noundef 1152) #8
  br label %sw.epilog346

if.then.i571:                                     ; preds = %for.cond29.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %101 = ptrtoint ptr %read8_sync.i569 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %read8_sync.i569, align 4
  %call.i570 = tail call zeroext i8 %102(ptr noundef %1, i32 noundef 1560) #8
  br label %rtl_write_byte.exit572

rtl_write_byte.exit572:                           ; preds = %if.then.i571, %for.cond29.preheader.rtl_write_byte.exit572_crit_edge
  %arrayidx37.1 = getelementptr i8, ptr %val, i32 1
  %103 = ptrtoint ptr %arrayidx37.1 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx37.1, align 1
  %105 = ptrtoint ptr %write8_async.i565 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %write8_async.i565, align 4
  tail call void %106(ptr noundef %1, i32 noundef 1561, i8 noundef zeroext %104) #8
  %107 = ptrtoint ptr %cfg.i566 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %cfg.i566, align 8
  %write_readback.i567.1 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %write_readback.i567.1 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %write_readback.i567.1, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool.not.i568.1 = icmp eq i8 %110, 0
  br i1 %tobool.not.i568.1, label %rtl_write_byte.exit572.rtl_write_byte.exit572.1_crit_edge, label %if.then.i571.1

rtl_write_byte.exit572.rtl_write_byte.exit572.1_crit_edge: ; preds = %rtl_write_byte.exit572
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit572.1

if.then.i571.1:                                   ; preds = %rtl_write_byte.exit572
  call void @__sanitizer_cov_trace_pc() #10
  %111 = ptrtoint ptr %read8_sync.i569 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %read8_sync.i569, align 4
  %call.i570.1 = tail call zeroext i8 %112(ptr noundef %1, i32 noundef 1561) #8
  br label %rtl_write_byte.exit572.1

rtl_write_byte.exit572.1:                         ; preds = %if.then.i571.1, %rtl_write_byte.exit572.rtl_write_byte.exit572.1_crit_edge
  %arrayidx37.2 = getelementptr i8, ptr %val, i32 2
  %113 = ptrtoint ptr %arrayidx37.2 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx37.2, align 1
  %115 = ptrtoint ptr %write8_async.i565 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %write8_async.i565, align 4
  tail call void %116(ptr noundef %1, i32 noundef 1562, i8 noundef zeroext %114) #8
  %117 = ptrtoint ptr %cfg.i566 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %cfg.i566, align 8
  %write_readback.i567.2 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %write_readback.i567.2 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %write_readback.i567.2, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool.not.i568.2 = icmp eq i8 %120, 0
  br i1 %tobool.not.i568.2, label %rtl_write_byte.exit572.1.rtl_write_byte.exit572.2_crit_edge, label %if.then.i571.2

rtl_write_byte.exit572.1.rtl_write_byte.exit572.2_crit_edge: ; preds = %rtl_write_byte.exit572.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit572.2

if.then.i571.2:                                   ; preds = %rtl_write_byte.exit572.1
  call void @__sanitizer_cov_trace_pc() #10
  %121 = ptrtoint ptr %read8_sync.i569 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %read8_sync.i569, align 4
  %call.i570.2 = tail call zeroext i8 %122(ptr noundef %1, i32 noundef 1562) #8
  br label %rtl_write_byte.exit572.2

rtl_write_byte.exit572.2:                         ; preds = %if.then.i571.2, %rtl_write_byte.exit572.1.rtl_write_byte.exit572.2_crit_edge
  %arrayidx37.3 = getelementptr i8, ptr %val, i32 3
  %123 = ptrtoint ptr %arrayidx37.3 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx37.3, align 1
  %125 = ptrtoint ptr %write8_async.i565 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %write8_async.i565, align 4
  tail call void %126(ptr noundef %1, i32 noundef 1563, i8 noundef zeroext %124) #8
  %127 = ptrtoint ptr %cfg.i566 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %cfg.i566, align 8
  %write_readback.i567.3 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %write_readback.i567.3 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %write_readback.i567.3, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool.not.i568.3 = icmp eq i8 %130, 0
  br i1 %tobool.not.i568.3, label %rtl_write_byte.exit572.2.rtl_write_byte.exit572.3_crit_edge, label %if.then.i571.3

rtl_write_byte.exit572.2.rtl_write_byte.exit572.3_crit_edge: ; preds = %rtl_write_byte.exit572.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit572.3

if.then.i571.3:                                   ; preds = %rtl_write_byte.exit572.2
  call void @__sanitizer_cov_trace_pc() #10
  %131 = ptrtoint ptr %read8_sync.i569 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %read8_sync.i569, align 4
  %call.i570.3 = tail call zeroext i8 %132(ptr noundef %1, i32 noundef 1563) #8
  br label %rtl_write_byte.exit572.3

rtl_write_byte.exit572.3:                         ; preds = %if.then.i571.3, %rtl_write_byte.exit572.2.rtl_write_byte.exit572.3_crit_edge
  %arrayidx37.4 = getelementptr i8, ptr %val, i32 4
  %133 = ptrtoint ptr %arrayidx37.4 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx37.4, align 1
  %135 = ptrtoint ptr %write8_async.i565 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %write8_async.i565, align 4
  tail call void %136(ptr noundef %1, i32 noundef 1564, i8 noundef zeroext %134) #8
  %137 = ptrtoint ptr %cfg.i566 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %cfg.i566, align 8
  %write_readback.i567.4 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %write_readback.i567.4 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %write_readback.i567.4, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool.not.i568.4 = icmp eq i8 %140, 0
  br i1 %tobool.not.i568.4, label %rtl_write_byte.exit572.3.rtl_write_byte.exit572.4_crit_edge, label %if.then.i571.4

rtl_write_byte.exit572.3.rtl_write_byte.exit572.4_crit_edge: ; preds = %rtl_write_byte.exit572.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit572.4

if.then.i571.4:                                   ; preds = %rtl_write_byte.exit572.3
  call void @__sanitizer_cov_trace_pc() #10
  %141 = ptrtoint ptr %read8_sync.i569 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %read8_sync.i569, align 4
  %call.i570.4 = tail call zeroext i8 %142(ptr noundef %1, i32 noundef 1564) #8
  br label %rtl_write_byte.exit572.4

rtl_write_byte.exit572.4:                         ; preds = %if.then.i571.4, %rtl_write_byte.exit572.3.rtl_write_byte.exit572.4_crit_edge
  %arrayidx37.5 = getelementptr i8, ptr %val, i32 5
  %143 = ptrtoint ptr %arrayidx37.5 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx37.5, align 1
  %145 = ptrtoint ptr %write8_async.i565 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %write8_async.i565, align 4
  tail call void %146(ptr noundef %1, i32 noundef 1565, i8 noundef zeroext %144) #8
  %147 = ptrtoint ptr %cfg.i566 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %cfg.i566, align 8
  %write_readback.i567.5 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %148, i32 0, i32 1
  %149 = ptrtoint ptr %write_readback.i567.5 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %write_readback.i567.5, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool.not.i568.5 = icmp eq i8 %150, 0
  br i1 %tobool.not.i568.5, label %rtl_write_byte.exit572.4.sw.epilog346_crit_edge, label %if.then.i571.5

rtl_write_byte.exit572.4.sw.epilog346_crit_edge:  ; preds = %rtl_write_byte.exit572.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog346

if.then.i571.5:                                   ; preds = %rtl_write_byte.exit572.4
  call void @__sanitizer_cov_trace_pc() #10
  %151 = ptrtoint ptr %read8_sync.i569 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %read8_sync.i569, align 4
  %call.i570.5 = tail call zeroext i8 %152(ptr noundef %1, i32 noundef 1565) #8
  br label %sw.epilog346

sw.bb41:                                          ; preds = %entry
  %153 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %val, align 1
  %write8_async.i573 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %155 = ptrtoint ptr %write8_async.i573 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %write8_async.i573, align 4
  tail call void %156(ptr noundef %1, i32 noundef 1301, i8 noundef zeroext %154) #8
  %cfg.i574 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %157 = ptrtoint ptr %cfg.i574 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %cfg.i574, align 8
  %write_readback.i575 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %158, i32 0, i32 1
  %159 = ptrtoint ptr %write_readback.i575 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %write_readback.i575, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool.not.i576 = icmp eq i8 %160, 0
  br i1 %tobool.not.i576, label %sw.bb41.rtl_write_byte.exit580_crit_edge, label %if.then.i579

sw.bb41.rtl_write_byte.exit580_crit_edge:         ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit580

if.then.i579:                                     ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i577 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %161 = ptrtoint ptr %read8_sync.i577 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %read8_sync.i577, align 4
  %call.i578 = tail call zeroext i8 %162(ptr noundef %1, i32 noundef 1301) #8
  br label %rtl_write_byte.exit580

rtl_write_byte.exit580:                           ; preds = %if.then.i579, %sw.bb41.rtl_write_byte.exit580_crit_edge
  %arrayidx43 = getelementptr i8, ptr %val, i32 1
  %163 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %arrayidx43, align 1
  %165 = ptrtoint ptr %write8_async.i573 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %write8_async.i573, align 4
  tail call void %166(ptr noundef %1, i32 noundef 1303, i8 noundef zeroext %164) #8
  %167 = ptrtoint ptr %cfg.i574 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %cfg.i574, align 8
  %write_readback.i583 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %168, i32 0, i32 1
  %169 = ptrtoint ptr %write_readback.i583 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %write_readback.i583, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %170)
  %tobool.not.i584 = icmp eq i8 %170, 0
  br i1 %tobool.not.i584, label %rtl_write_byte.exit580.rtl_write_byte.exit588_crit_edge, label %if.then.i587

rtl_write_byte.exit580.rtl_write_byte.exit588_crit_edge: ; preds = %rtl_write_byte.exit580
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit588

if.then.i587:                                     ; preds = %rtl_write_byte.exit580
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i585 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %171 = ptrtoint ptr %read8_sync.i585 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %read8_sync.i585, align 4
  %call.i586 = tail call zeroext i8 %172(ptr noundef %1, i32 noundef 1303) #8
  br label %rtl_write_byte.exit588

rtl_write_byte.exit588:                           ; preds = %if.then.i587, %rtl_write_byte.exit580.rtl_write_byte.exit588_crit_edge
  %173 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %val, align 1
  %175 = ptrtoint ptr %write8_async.i573 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %write8_async.i573, align 4
  tail call void %176(ptr noundef %1, i32 noundef 1065, i8 noundef zeroext %174) #8
  %177 = ptrtoint ptr %cfg.i574 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %cfg.i574, align 8
  %write_readback.i591 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %178, i32 0, i32 1
  %179 = ptrtoint ptr %write_readback.i591 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %write_readback.i591, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %180)
  %tobool.not.i592 = icmp eq i8 %180, 0
  br i1 %tobool.not.i592, label %rtl_write_byte.exit588.rtl_write_byte.exit596_crit_edge, label %if.then.i595

rtl_write_byte.exit588.rtl_write_byte.exit596_crit_edge: ; preds = %rtl_write_byte.exit588
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit596

if.then.i595:                                     ; preds = %rtl_write_byte.exit588
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i593 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %181 = ptrtoint ptr %read8_sync.i593 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %read8_sync.i593, align 4
  %call.i594 = tail call zeroext i8 %182(ptr noundef %1, i32 noundef 1065) #8
  br label %rtl_write_byte.exit596

rtl_write_byte.exit596:                           ; preds = %if.then.i595, %rtl_write_byte.exit588.rtl_write_byte.exit596_crit_edge
  %183 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %val, align 1
  %185 = ptrtoint ptr %write8_async.i573 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %write8_async.i573, align 4
  tail call void %186(ptr noundef %1, i32 noundef 1595, i8 noundef zeroext %184) #8
  %187 = ptrtoint ptr %cfg.i574 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %cfg.i574, align 8
  %write_readback.i599 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %188, i32 0, i32 1
  %189 = ptrtoint ptr %write_readback.i599 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %write_readback.i599, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %190)
  %tobool.not.i600 = icmp eq i8 %190, 0
  br i1 %tobool.not.i600, label %rtl_write_byte.exit596.rtl_write_byte.exit604_crit_edge, label %if.then.i603

rtl_write_byte.exit596.rtl_write_byte.exit604_crit_edge: ; preds = %rtl_write_byte.exit596
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit604

if.then.i603:                                     ; preds = %rtl_write_byte.exit596
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i601 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %191 = ptrtoint ptr %read8_sync.i601 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %read8_sync.i601, align 4
  %call.i602 = tail call zeroext i8 %192(ptr noundef %1, i32 noundef 1595) #8
  br label %rtl_write_byte.exit604

rtl_write_byte.exit604:                           ; preds = %if.then.i603, %rtl_write_byte.exit596.rtl_write_byte.exit604_crit_edge
  %ht_enable = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 38
  %193 = ptrtoint ptr %ht_enable to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %ht_enable, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %194)
  %tobool.not = icmp eq i8 %194, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %rtl_write_byte.exit604
  %write16_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %195 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %write16_async.i, align 4
  tail call void %196(ptr noundef %1, i32 noundef 1598, i16 noundef zeroext 3598) #8
  %197 = ptrtoint ptr %cfg.i574 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %cfg.i574, align 8
  %write_readback.i606 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %198, i32 0, i32 1
  %199 = ptrtoint ptr %write_readback.i606 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %write_readback.i606, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %200)
  %tobool.not.i607 = icmp eq i8 %200, 0
  br i1 %tobool.not.i607, label %if.then.sw.epilog346_crit_edge, label %if.then.i609

if.then.sw.epilog346_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog346

if.then.i609:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %201 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %read16_sync.i, align 4
  %call.i608 = tail call zeroext i16 %202(ptr noundef %1, i32 noundef 1598) #8
  br label %sw.epilog346

if.else:                                          ; preds = %rtl_write_byte.exit604
  %203 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %val, align 2
  %write16_async.i610 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %205 = ptrtoint ptr %write16_async.i610 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %write16_async.i610, align 4
  tail call void %206(ptr noundef %1, i32 noundef 1598, i16 noundef zeroext %204) #8
  %207 = ptrtoint ptr %cfg.i574 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %cfg.i574, align 8
  %write_readback.i612 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %208, i32 0, i32 1
  %209 = ptrtoint ptr %write_readback.i612 to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %write_readback.i612, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %210)
  %tobool.not.i613 = icmp eq i8 %210, 0
  br i1 %tobool.not.i613, label %if.else.sw.epilog346_crit_edge, label %if.then.i616

if.else.sw.epilog346_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog346

if.then.i616:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i614 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %211 = ptrtoint ptr %read16_sync.i614 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %read16_sync.i614, align 4
  %call.i615 = tail call zeroext i16 %212(ptr noundef %1, i32 noundef 1598) #8
  br label %sw.epilog346

sw.bb46:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %e_aci) #8
  %213 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %val, align 1
  %conv48 = zext i8 %214 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 32, i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %conv48) #8
  %215 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %val, align 1
  %write8_async.i618 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %217 = ptrtoint ptr %write8_async.i618 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %write8_async.i618, align 4
  tail call void %218(ptr noundef %1, i32 noundef 1307, i8 noundef zeroext %216) #8
  %cfg.i619 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %219 = ptrtoint ptr %cfg.i619 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %cfg.i619, align 8
  %write_readback.i620 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %220, i32 0, i32 1
  %221 = ptrtoint ptr %write_readback.i620 to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %write_readback.i620, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %222)
  %tobool.not.i621 = icmp eq i8 %222, 0
  br i1 %tobool.not.i621, label %sw.bb46.rtl_write_byte.exit625_crit_edge, label %if.then.i624

sw.bb46.rtl_write_byte.exit625_crit_edge:         ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit625

if.then.i624:                                     ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i622 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %223 = ptrtoint ptr %read8_sync.i622 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %read8_sync.i622, align 4
  %call.i623 = tail call zeroext i8 %224(ptr noundef %1, i32 noundef 1307) #8
  br label %rtl_write_byte.exit625

rtl_write_byte.exit625:                           ; preds = %if.then.i624, %sw.bb46.rtl_write_byte.exit625_crit_edge
  %225 = ptrtoint ptr %e_aci to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 0, ptr %e_aci, align 1
  br label %for.body54

for.body54:                                       ; preds = %for.body54.for.body54_crit_edge, %rtl_write_byte.exit625
  %226 = ptrtoint ptr %cfg.i619 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %cfg.i619, align 8
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
  %inc56 = add i8 %233, 1
  store i8 %inc56, ptr %e_aci, align 1
  %cmp52 = icmp ult i8 %inc56, 4
  br i1 %cmp52, label %for.body54.for.body54_crit_edge, label %for.end57

for.body54.for.body54_crit_edge:                  ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body54

for.end57:                                        ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %e_aci) #8
  br label %sw.epilog346

sw.bb58:                                          ; preds = %entry
  %234 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %235)
  %tobool59.not = icmp eq i8 %235, 0
  %cur_40_prime_sc = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 46
  %236 = ptrtoint ptr %cur_40_prime_sc to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %cur_40_prime_sc, align 1
  %shl = shl i8 %237, 5
  %238 = or i8 %shl, -128
  %spec.select = select i1 %tobool59.not, i8 %shl, i8 %238
  %write8_async.i626 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %239 = ptrtoint ptr %write8_async.i626 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %write8_async.i626, align 4
  tail call void %240(ptr noundef %1, i32 noundef 1090, i8 noundef zeroext %spec.select) #8
  %cfg.i627 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %241 = ptrtoint ptr %cfg.i627 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %cfg.i627, align 8
  %write_readback.i628 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %242, i32 0, i32 1
  %243 = ptrtoint ptr %write_readback.i628 to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %write_readback.i628, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %244)
  %tobool.not.i629 = icmp eq i8 %244, 0
  br i1 %tobool.not.i629, label %sw.bb58.sw.epilog346_crit_edge, label %if.then.i632

sw.bb58.sw.epilog346_crit_edge:                   ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog346

if.then.i632:                                     ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i630 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %245 = ptrtoint ptr %read8_sync.i630 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %read8_sync.i630, align 4
  %call.i631 = tail call zeroext i8 %246(ptr noundef %1, i32 noundef 1090) #8
  br label %sw.epilog346

sw.bb69:                                          ; preds = %entry
  %247 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %248)
  %cmp71 = icmp ult i8 %248, 8
  br i1 %cmp71, label %if.end79, label %sw.bb69.sw.epilog346_crit_edge

sw.bb69.sw.epilog346_crit_edge:                   ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog346

if.end79:                                         ; preds = %sw.bb69
  %min_space_cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 55
  %249 = ptrtoint ptr %min_space_cfg to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %min_space_cfg, align 4
  %251 = and i8 %250, -8
  %or83536 = or i8 %251, %248
  store i8 %or83536, ptr %min_space_cfg, align 4
  %252 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 %248, ptr %val, align 1
  %253 = load i8, ptr %min_space_cfg, align 4
  %conv87 = zext i8 %253 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 32, i32 noundef 4, ptr noundef nonnull @.str.2, i32 noundef %conv87) #8
  %254 = ptrtoint ptr %min_space_cfg to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %min_space_cfg, align 4
  %write8_async.i634 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %256 = ptrtoint ptr %write8_async.i634 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %write8_async.i634, align 4
  tail call void %257(ptr noundef %1, i32 noundef 1116, i8 noundef zeroext %255) #8
  %cfg.i635 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %258 = ptrtoint ptr %cfg.i635 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %cfg.i635, align 8
  %write_readback.i636 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %259, i32 0, i32 1
  %260 = ptrtoint ptr %write_readback.i636 to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %write_readback.i636, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %261)
  %tobool.not.i637 = icmp eq i8 %261, 0
  br i1 %tobool.not.i637, label %if.end79.sw.epilog346_crit_edge, label %if.then.i640

if.end79.sw.epilog346_crit_edge:                  ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog346

if.then.i640:                                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i638 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %262 = ptrtoint ptr %read8_sync.i638 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %read8_sync.i638, align 4
  %call.i639 = tail call zeroext i8 %263(ptr noundef %1, i32 noundef 1116) #8
  br label %sw.epilog346

sw.bb90:                                          ; preds = %entry
  %264 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %val, align 1
  %shl92 = shl i8 %265, 3
  %min_space_cfg93 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 55
  %266 = ptrtoint ptr %min_space_cfg93 to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %min_space_cfg93, align 4
  %or95 = or i8 %shl92, %267
  store i8 %or95, ptr %min_space_cfg93, align 4
  %conv98 = zext i8 %or95 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 32, i32 noundef 4, ptr noundef nonnull @.str.3, i32 noundef %conv98) #8
  %268 = ptrtoint ptr %min_space_cfg93 to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %min_space_cfg93, align 4
  %write8_async.i642 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %270 = ptrtoint ptr %write8_async.i642 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %write8_async.i642, align 4
  tail call void %271(ptr noundef %1, i32 noundef 1116, i8 noundef zeroext %269) #8
  %cfg.i643 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %272 = ptrtoint ptr %cfg.i643 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %cfg.i643, align 8
  %write_readback.i644 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %273, i32 0, i32 1
  %274 = ptrtoint ptr %write_readback.i644 to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %write_readback.i644, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %275)
  %tobool.not.i645 = icmp eq i8 %275, 0
  br i1 %tobool.not.i645, label %sw.bb90.sw.epilog346_crit_edge, label %if.then.i648

sw.bb90.sw.epilog346_crit_edge:                   ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog346

if.then.i648:                                     ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i646 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %276 = ptrtoint ptr %read8_sync.i646 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %read8_sync.i646, align 4
  %call.i647 = tail call zeroext i8 %277(ptr noundef %1, i32 noundef 1116) #8
  br label %sw.epilog346

sw.bb100:                                         ; preds = %entry
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
  %tobool102.not = icmp eq i8 %281, 0
  br i1 %tobool102.not, label %sw.bb100.if.else109_crit_edge, label %land.lhs.true

sw.bb100.if.else109_crit_edge:                    ; preds = %sw.bb100
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else109

land.lhs.true:                                    ; preds = %sw.bb100
  %bt_coexist_type = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 11
  %282 = ptrtoint ptr %bt_coexist_type to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %bt_coexist_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %283)
  %cmp105 = icmp eq i8 %283, 3
  br i1 %cmp105, label %land.lhs.true.if.end111_crit_edge, label %land.lhs.true.if.else109_crit_edge

land.lhs.true.if.else109_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else109

land.lhs.true.if.end111_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end111

if.else109:                                       ; preds = %land.lhs.true.if.else109_crit_edge, %sw.bb100.if.else109_crit_edge
  br label %if.end111

if.end111:                                        ; preds = %if.else109, %land.lhs.true.if.end111_crit_edge
  %p_regtoset.0 = phi ptr [ %regtoset_normal, %if.else109 ], [ %regtoset_bt, %land.lhs.true.if.end111_crit_edge ]
  %284 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %285)
  %cmp113 = icmp ult i8 %285, 4
  br i1 %cmp113, label %if.then115, label %if.end111.if.end176_crit_edge

if.end111.if.end176_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end176

if.then115:                                       ; preds = %if.end111
  %conv112 = zext i8 %285 to i32
  %shl118 = shl nuw nsw i32 4, %conv112
  %conv119 = trunc i32 %shl118 to i8
  %conv120 = and i32 %shl118, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv120)
  %cmp121.not = icmp eq i32 %conv120, 0
  %spec.store.select = select i1 %cmp121.not, i8 %conv119, i8 15
  %conv134 = zext i8 %spec.store.select to i32
  %shl135 = shl nuw nsw i32 %conv134, 4
  %write8_async.i650 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %cfg.i651 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %read8_sync.i654 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %286 = ptrtoint ptr %p_regtoset.0 to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %p_regtoset.0, align 4
  %conv132 = zext i8 %287 to i32
  %and133 = and i32 %conv132, 240
  call void @__sanitizer_cov_trace_cmp4(i32 %and133, i32 %shl135)
  %cmp136 = icmp ugt i32 %and133, %shl135
  br i1 %cmp136, label %if.then138, label %if.then115.if.end149_crit_edge

if.then115.if.end149_crit_edge:                   ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end149

if.then138:                                       ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #10
  %and142 = and i32 %conv132, 15
  %or145 = or i32 %and142, %shl135
  %conv146 = trunc i32 %or145 to i8
  %288 = ptrtoint ptr %p_regtoset.0 to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 %conv146, ptr %p_regtoset.0, align 4
  br label %if.end149

if.end149:                                        ; preds = %if.then138, %if.then115.if.end149_crit_edge
  %289 = ptrtoint ptr %p_regtoset.0 to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %p_regtoset.0, align 4
  %291 = and i8 %290, 15
  call void @__sanitizer_cov_trace_cmp1(i8 %291, i8 %spec.store.select)
  %cmp155 = icmp ugt i8 %291, %spec.store.select
  br i1 %cmp155, label %if.then157, label %if.end149.if.end167_crit_edge

if.end149.if.end167_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end167

if.then157:                                       ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #10
  %and161 = and i8 %290, -16
  %or163 = or i8 %and161, %spec.store.select
  %292 = ptrtoint ptr %p_regtoset.0 to i32
  call void @__asan_store1_noabort(i32 %292)
  store i8 %or163, ptr %p_regtoset.0, align 4
  br label %if.end167

if.end167:                                        ; preds = %if.then157, %if.end149.if.end167_crit_edge
  %293 = ptrtoint ptr %p_regtoset.0 to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %p_regtoset.0, align 4
  %295 = ptrtoint ptr %write8_async.i650 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %write8_async.i650, align 4
  tail call void %296(ptr noundef %1, i32 noundef 1112, i8 noundef zeroext %294) #8
  %297 = ptrtoint ptr %cfg.i651 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %cfg.i651, align 8
  %write_readback.i652 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %298, i32 0, i32 1
  %299 = ptrtoint ptr %write_readback.i652 to i32
  call void @__asan_load1_noabort(i32 %299)
  %300 = load i8, ptr %write_readback.i652, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %300)
  %tobool.not.i653 = icmp eq i8 %300, 0
  br i1 %tobool.not.i653, label %if.end167.rtl_write_byte.exit657_crit_edge, label %if.then.i656

if.end167.rtl_write_byte.exit657_crit_edge:       ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit657

if.then.i656:                                     ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #10
  %301 = ptrtoint ptr %read8_sync.i654 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %read8_sync.i654, align 4
  %call.i655 = tail call zeroext i8 %302(ptr noundef %1, i32 noundef 1112) #8
  br label %rtl_write_byte.exit657

rtl_write_byte.exit657:                           ; preds = %if.then.i656, %if.end167.rtl_write_byte.exit657_crit_edge
  %arrayidx131.1 = getelementptr i8, ptr %p_regtoset.0, i32 1
  %303 = ptrtoint ptr %arrayidx131.1 to i32
  call void @__asan_load1_noabort(i32 %303)
  %304 = load i8, ptr %arrayidx131.1, align 1
  %conv132.1 = zext i8 %304 to i32
  %and133.1 = and i32 %conv132.1, 240
  call void @__sanitizer_cov_trace_cmp4(i32 %and133.1, i32 %shl135)
  %cmp136.1 = icmp ugt i32 %and133.1, %shl135
  br i1 %cmp136.1, label %if.then138.1, label %rtl_write_byte.exit657.if.end149.1_crit_edge

rtl_write_byte.exit657.if.end149.1_crit_edge:     ; preds = %rtl_write_byte.exit657
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end149.1

if.then138.1:                                     ; preds = %rtl_write_byte.exit657
  call void @__sanitizer_cov_trace_pc() #10
  %and142.1 = and i32 %conv132.1, 15
  %or145.1 = or i32 %and142.1, %shl135
  %conv146.1 = trunc i32 %or145.1 to i8
  %305 = ptrtoint ptr %arrayidx131.1 to i32
  call void @__asan_store1_noabort(i32 %305)
  store i8 %conv146.1, ptr %arrayidx131.1, align 1
  br label %if.end149.1

if.end149.1:                                      ; preds = %if.then138.1, %rtl_write_byte.exit657.if.end149.1_crit_edge
  %306 = ptrtoint ptr %arrayidx131.1 to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %arrayidx131.1, align 1
  %308 = and i8 %307, 15
  call void @__sanitizer_cov_trace_cmp1(i8 %308, i8 %spec.store.select)
  %cmp155.1 = icmp ugt i8 %308, %spec.store.select
  br i1 %cmp155.1, label %if.then157.1, label %if.end149.1.if.end167.1_crit_edge

if.end149.1.if.end167.1_crit_edge:                ; preds = %if.end149.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end167.1

if.then157.1:                                     ; preds = %if.end149.1
  call void @__sanitizer_cov_trace_pc() #10
  %and161.1 = and i8 %307, -16
  %or163.1 = or i8 %and161.1, %spec.store.select
  %309 = ptrtoint ptr %arrayidx131.1 to i32
  call void @__asan_store1_noabort(i32 %309)
  store i8 %or163.1, ptr %arrayidx131.1, align 1
  br label %if.end167.1

if.end167.1:                                      ; preds = %if.then157.1, %if.end149.1.if.end167.1_crit_edge
  %310 = ptrtoint ptr %arrayidx131.1 to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %arrayidx131.1, align 1
  %312 = ptrtoint ptr %write8_async.i650 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %write8_async.i650, align 4
  tail call void %313(ptr noundef %1, i32 noundef 1113, i8 noundef zeroext %311) #8
  %314 = ptrtoint ptr %cfg.i651 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %cfg.i651, align 8
  %write_readback.i652.1 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %315, i32 0, i32 1
  %316 = ptrtoint ptr %write_readback.i652.1 to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %write_readback.i652.1, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %317)
  %tobool.not.i653.1 = icmp eq i8 %317, 0
  br i1 %tobool.not.i653.1, label %if.end167.1.rtl_write_byte.exit657.1_crit_edge, label %if.then.i656.1

if.end167.1.rtl_write_byte.exit657.1_crit_edge:   ; preds = %if.end167.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit657.1

if.then.i656.1:                                   ; preds = %if.end167.1
  call void @__sanitizer_cov_trace_pc() #10
  %318 = ptrtoint ptr %read8_sync.i654 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %read8_sync.i654, align 4
  %call.i655.1 = tail call zeroext i8 %319(ptr noundef %1, i32 noundef 1113) #8
  br label %rtl_write_byte.exit657.1

rtl_write_byte.exit657.1:                         ; preds = %if.then.i656.1, %if.end167.1.rtl_write_byte.exit657.1_crit_edge
  %arrayidx131.2 = getelementptr i8, ptr %p_regtoset.0, i32 2
  %320 = ptrtoint ptr %arrayidx131.2 to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %arrayidx131.2, align 2
  %conv132.2 = zext i8 %321 to i32
  %and133.2 = and i32 %conv132.2, 240
  call void @__sanitizer_cov_trace_cmp4(i32 %and133.2, i32 %shl135)
  %cmp136.2 = icmp ugt i32 %and133.2, %shl135
  br i1 %cmp136.2, label %if.then138.2, label %rtl_write_byte.exit657.1.if.end149.2_crit_edge

rtl_write_byte.exit657.1.if.end149.2_crit_edge:   ; preds = %rtl_write_byte.exit657.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end149.2

if.then138.2:                                     ; preds = %rtl_write_byte.exit657.1
  call void @__sanitizer_cov_trace_pc() #10
  %and142.2 = and i32 %conv132.2, 15
  %or145.2 = or i32 %and142.2, %shl135
  %conv146.2 = trunc i32 %or145.2 to i8
  %322 = ptrtoint ptr %arrayidx131.2 to i32
  call void @__asan_store1_noabort(i32 %322)
  store i8 %conv146.2, ptr %arrayidx131.2, align 2
  br label %if.end149.2

if.end149.2:                                      ; preds = %if.then138.2, %rtl_write_byte.exit657.1.if.end149.2_crit_edge
  %323 = ptrtoint ptr %arrayidx131.2 to i32
  call void @__asan_load1_noabort(i32 %323)
  %324 = load i8, ptr %arrayidx131.2, align 2
  %325 = and i8 %324, 15
  call void @__sanitizer_cov_trace_cmp1(i8 %325, i8 %spec.store.select)
  %cmp155.2 = icmp ugt i8 %325, %spec.store.select
  br i1 %cmp155.2, label %if.then157.2, label %if.end149.2.if.end167.2_crit_edge

if.end149.2.if.end167.2_crit_edge:                ; preds = %if.end149.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end167.2

if.then157.2:                                     ; preds = %if.end149.2
  call void @__sanitizer_cov_trace_pc() #10
  %and161.2 = and i8 %324, -16
  %or163.2 = or i8 %and161.2, %spec.store.select
  %326 = ptrtoint ptr %arrayidx131.2 to i32
  call void @__asan_store1_noabort(i32 %326)
  store i8 %or163.2, ptr %arrayidx131.2, align 2
  br label %if.end167.2

if.end167.2:                                      ; preds = %if.then157.2, %if.end149.2.if.end167.2_crit_edge
  %327 = ptrtoint ptr %arrayidx131.2 to i32
  call void @__asan_load1_noabort(i32 %327)
  %328 = load i8, ptr %arrayidx131.2, align 2
  %329 = ptrtoint ptr %write8_async.i650 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %write8_async.i650, align 4
  tail call void %330(ptr noundef %1, i32 noundef 1114, i8 noundef zeroext %328) #8
  %331 = ptrtoint ptr %cfg.i651 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %cfg.i651, align 8
  %write_readback.i652.2 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %332, i32 0, i32 1
  %333 = ptrtoint ptr %write_readback.i652.2 to i32
  call void @__asan_load1_noabort(i32 %333)
  %334 = load i8, ptr %write_readback.i652.2, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %334)
  %tobool.not.i653.2 = icmp eq i8 %334, 0
  br i1 %tobool.not.i653.2, label %if.end167.2.rtl_write_byte.exit657.2_crit_edge, label %if.then.i656.2

if.end167.2.rtl_write_byte.exit657.2_crit_edge:   ; preds = %if.end167.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit657.2

if.then.i656.2:                                   ; preds = %if.end167.2
  call void @__sanitizer_cov_trace_pc() #10
  %335 = ptrtoint ptr %read8_sync.i654 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %read8_sync.i654, align 4
  %call.i655.2 = tail call zeroext i8 %336(ptr noundef %1, i32 noundef 1114) #8
  br label %rtl_write_byte.exit657.2

rtl_write_byte.exit657.2:                         ; preds = %if.then.i656.2, %if.end167.2.rtl_write_byte.exit657.2_crit_edge
  %arrayidx131.3 = getelementptr i8, ptr %p_regtoset.0, i32 3
  %337 = ptrtoint ptr %arrayidx131.3 to i32
  call void @__asan_load1_noabort(i32 %337)
  %338 = load i8, ptr %arrayidx131.3, align 1
  %conv132.3 = zext i8 %338 to i32
  %and133.3 = and i32 %conv132.3, 240
  call void @__sanitizer_cov_trace_cmp4(i32 %and133.3, i32 %shl135)
  %cmp136.3 = icmp ugt i32 %and133.3, %shl135
  br i1 %cmp136.3, label %if.then138.3, label %rtl_write_byte.exit657.2.if.end149.3_crit_edge

rtl_write_byte.exit657.2.if.end149.3_crit_edge:   ; preds = %rtl_write_byte.exit657.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end149.3

if.then138.3:                                     ; preds = %rtl_write_byte.exit657.2
  call void @__sanitizer_cov_trace_pc() #10
  %and142.3 = and i32 %conv132.3, 15
  %or145.3 = or i32 %and142.3, %shl135
  %conv146.3 = trunc i32 %or145.3 to i8
  %339 = ptrtoint ptr %arrayidx131.3 to i32
  call void @__asan_store1_noabort(i32 %339)
  store i8 %conv146.3, ptr %arrayidx131.3, align 1
  br label %if.end149.3

if.end149.3:                                      ; preds = %if.then138.3, %rtl_write_byte.exit657.2.if.end149.3_crit_edge
  %340 = ptrtoint ptr %arrayidx131.3 to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %arrayidx131.3, align 1
  %342 = and i8 %341, 15
  call void @__sanitizer_cov_trace_cmp1(i8 %342, i8 %spec.store.select)
  %cmp155.3 = icmp ugt i8 %342, %spec.store.select
  br i1 %cmp155.3, label %if.then157.3, label %if.end149.3.if.end167.3_crit_edge

if.end149.3.if.end167.3_crit_edge:                ; preds = %if.end149.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end167.3

if.then157.3:                                     ; preds = %if.end149.3
  call void @__sanitizer_cov_trace_pc() #10
  %and161.3 = and i8 %341, -16
  %or163.3 = or i8 %and161.3, %spec.store.select
  %343 = ptrtoint ptr %arrayidx131.3 to i32
  call void @__asan_store1_noabort(i32 %343)
  store i8 %or163.3, ptr %arrayidx131.3, align 1
  br label %if.end167.3

if.end167.3:                                      ; preds = %if.then157.3, %if.end149.3.if.end167.3_crit_edge
  %344 = ptrtoint ptr %arrayidx131.3 to i32
  call void @__asan_load1_noabort(i32 %344)
  %345 = load i8, ptr %arrayidx131.3, align 1
  %346 = ptrtoint ptr %write8_async.i650 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %write8_async.i650, align 4
  tail call void %347(ptr noundef %1, i32 noundef 1115, i8 noundef zeroext %345) #8
  %348 = ptrtoint ptr %cfg.i651 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %cfg.i651, align 8
  %write_readback.i652.3 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %349, i32 0, i32 1
  %350 = ptrtoint ptr %write_readback.i652.3 to i32
  call void @__asan_load1_noabort(i32 %350)
  %351 = load i8, ptr %write_readback.i652.3, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %351)
  %tobool.not.i653.3 = icmp eq i8 %351, 0
  br i1 %tobool.not.i653.3, label %if.end167.3.rtl_write_byte.exit657.3_crit_edge, label %if.then.i656.3

if.end167.3.rtl_write_byte.exit657.3_crit_edge:   ; preds = %if.end167.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit657.3

if.then.i656.3:                                   ; preds = %if.end167.3
  call void @__sanitizer_cov_trace_pc() #10
  %352 = ptrtoint ptr %read8_sync.i654 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %read8_sync.i654, align 4
  %call.i655.3 = tail call zeroext i8 %353(ptr noundef %1, i32 noundef 1115) #8
  br label %rtl_write_byte.exit657.3

rtl_write_byte.exit657.3:                         ; preds = %if.then.i656.3, %if.end167.3.rtl_write_byte.exit657.3_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 32, i32 noundef 4, ptr noundef nonnull @.str.4, i32 noundef %conv134) #8
  br label %if.end176

if.end176:                                        ; preds = %rtl_write_byte.exit657.3, %if.end111.if.end176_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regtoset_bt) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regtoset_normal) #8
  br label %sw.epilog346

sw.bb177:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %e_aci178) #8
  %354 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %354)
  %355 = load i8, ptr %val, align 1
  %356 = ptrtoint ptr %e_aci178 to i32
  call void @__asan_store1_noabort(i32 %356)
  store i8 %355, ptr %e_aci178, align 1
  tail call void @rtl8723_dm_init_edca_turbo(ptr noundef %hw) #8
  %acm_method = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 4
  %357 = ptrtoint ptr %acm_method to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %acm_method, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %358)
  %cmp179.not = icmp eq i32 %358, 2
  br i1 %cmp179.not, label %sw.bb177.if.end185_crit_edge, label %if.then181

sw.bb177.if.end185_crit_edge:                     ; preds = %sw.bb177
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end185

if.then181:                                       ; preds = %sw.bb177
  call void @__sanitizer_cov_trace_pc() #10
  %cfg182 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %359 = ptrtoint ptr %cfg182 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %cfg182, align 8
  %ops183 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %360, i32 0, i32 4
  %361 = ptrtoint ptr %ops183 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %ops183, align 4
  %set_hw_reg184 = getelementptr inbounds %struct.rtl_hal_ops, ptr %362, i32 0, i32 20
  %363 = ptrtoint ptr %set_hw_reg184 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %set_hw_reg184, align 4
  call void %364(ptr noundef %hw, i8 noundef zeroext 33, ptr noundef nonnull %e_aci178) #8
  br label %if.end185

if.end185:                                        ; preds = %if.then181, %sw.bb177.if.end185_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %e_aci178) #8
  br label %sw.epilog346

sw.bb186:                                         ; preds = %entry
  %365 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %365)
  %366 = load i8, ptr %val, align 1
  %aifs = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 60, i32 0, i32 2
  %367 = ptrtoint ptr %aifs to i32
  call void @__asan_load1_noabort(i32 %367)
  %bf.load = load i8, ptr %aifs, align 1
  %read8_sync.i658 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %368 = ptrtoint ptr %read8_sync.i658 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %read8_sync.i658, align 4
  %call.i659 = tail call zeroext i8 %369(ptr noundef %1, i32 noundef 1472) #8
  %acm_method190 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 4
  %370 = ptrtoint ptr %acm_method190 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %acm_method190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %371)
  %cmp191 = icmp ne i32 %371, 2
  %cond = zext i1 %cmp191 to i8
  %or193 = or i8 %call.i659, %cond
  %372 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %372)
  %tobool195.not = icmp eq i8 %372, 0
  br i1 %tobool195.not, label %if.else211, label %if.then196

if.then196:                                       ; preds = %sw.bb186
  %373 = zext i8 %366 to i64
  call void @__sanitizer_cov_trace_switch(i64 %373, ptr @__sancov_gen_cov_switch_values.83)
  switch i8 %366, label %sw.default [
    i8 0, label %sw.bb198
    i8 2, label %sw.bb202
    i8 3, label %sw.bb206
  ]

sw.bb198:                                         ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #10
  %374 = or i8 %or193, 2
  br label %if.end228

sw.bb202:                                         ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #10
  %375 = or i8 %or193, 4
  br label %if.end228

sw.bb206:                                         ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #10
  %376 = or i8 %or193, 8
  br label %if.end228

sw.default:                                       ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.5, i32 noundef 1) #8
  br label %if.end228

if.else211:                                       ; preds = %sw.bb186
  %377 = zext i8 %366 to i64
  call void @__sanitizer_cov_trace_switch(i64 %377, ptr @__sancov_gen_cov_switch_values.84)
  switch i8 %366, label %sw.default225 [
    i8 0, label %sw.bb213
    i8 2, label %sw.bb217
    i8 3, label %sw.bb221
  ]

sw.bb213:                                         ; preds = %if.else211
  call void @__sanitizer_cov_trace_pc() #10
  %378 = and i8 %or193, -3
  br label %if.end228

sw.bb217:                                         ; preds = %if.else211
  call void @__sanitizer_cov_trace_pc() #10
  %379 = and i8 %or193, -5
  br label %if.end228

sw.bb221:                                         ; preds = %if.else211
  call void @__sanitizer_cov_trace_pc() #10
  %380 = and i8 %or193, -9
  br label %if.end228

sw.default225:                                    ; preds = %if.else211
  call void @__sanitizer_cov_trace_pc() #10
  %conv212 = zext i8 %366 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %conv212) #8
  br label %if.end228

if.end228:                                        ; preds = %sw.default225, %sw.bb221, %sw.bb217, %sw.bb213, %sw.default, %sw.bb206, %sw.bb202, %sw.bb198
  %acm_ctrl.0 = phi i8 [ %or193, %sw.default ], [ %376, %sw.bb206 ], [ %375, %sw.bb202 ], [ %374, %sw.bb198 ], [ %or193, %sw.default225 ], [ %380, %sw.bb221 ], [ %379, %sw.bb217 ], [ %378, %sw.bb213 ]
  %conv229 = zext i8 %acm_ctrl.0 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 33554432, i32 noundef 5, ptr noundef nonnull @.str.6, i32 noundef %conv229) #8
  %write8_async.i660 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %381 = ptrtoint ptr %write8_async.i660 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %write8_async.i660, align 4
  tail call void %382(ptr noundef %1, i32 noundef 1472, i8 noundef zeroext %acm_ctrl.0) #8
  %cfg.i661 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %383 = ptrtoint ptr %cfg.i661 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %cfg.i661, align 8
  %write_readback.i662 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %384, i32 0, i32 1
  %385 = ptrtoint ptr %write_readback.i662 to i32
  call void @__asan_load1_noabort(i32 %385)
  %386 = load i8, ptr %write_readback.i662, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %386)
  %tobool.not.i663 = icmp eq i8 %386, 0
  br i1 %tobool.not.i663, label %if.end228.sw.epilog346_crit_edge, label %if.then.i666

if.end228.sw.epilog346_crit_edge:                 ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog346

if.then.i666:                                     ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #10
  %387 = ptrtoint ptr %read8_sync.i658 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %read8_sync.i658, align 4
  %call.i665 = tail call zeroext i8 %388(ptr noundef %1, i32 noundef 1472) #8
  br label %sw.epilog346

sw.bb230:                                         ; preds = %entry
  %389 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %val, align 4
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %391 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %write32_async.i, align 4
  tail call void %392(ptr noundef %1, i32 noundef 1544, i32 noundef %390) #8
  %cfg.i668 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %393 = ptrtoint ptr %cfg.i668 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %cfg.i668, align 8
  %write_readback.i669 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %394, i32 0, i32 1
  %395 = ptrtoint ptr %write_readback.i669 to i32
  call void @__asan_load1_noabort(i32 %395)
  %396 = load i8, ptr %write_readback.i669, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %396)
  %tobool.not.i670 = icmp eq i8 %396, 0
  br i1 %tobool.not.i670, label %sw.bb230.rtl_write_dword.exit_crit_edge, label %if.then.i672

sw.bb230.rtl_write_dword.exit_crit_edge:          ; preds = %sw.bb230
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit

if.then.i672:                                     ; preds = %sw.bb230
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %397 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %read32_sync.i, align 4
  %call.i671 = tail call i32 %398(ptr noundef %1, i32 noundef 1544) #8
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i672, %sw.bb230.rtl_write_dword.exit_crit_edge
  %399 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %val, align 4
  %receive_config = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 3
  %401 = ptrtoint ptr %receive_config to i32
  call void @__asan_store4_noabort(i32 %401)
  store i32 %400, ptr %receive_config, align 4
  br label %sw.epilog346

sw.bb233:                                         ; preds = %entry
  %402 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %402)
  %403 = load i8, ptr %val, align 1
  %conv235 = zext i8 %403 to i32
  %shl236 = shl nuw nsw i32 %conv235, 8
  %or239 = or i32 %shl236, %conv235
  %conv240 = trunc i32 %or239 to i16
  %write16_async.i673 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %404 = ptrtoint ptr %write16_async.i673 to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %write16_async.i673, align 4
  tail call void %405(ptr noundef %1, i32 noundef 1066, i16 noundef zeroext %conv240) #8
  %cfg.i674 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %406 = ptrtoint ptr %cfg.i674 to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %cfg.i674, align 8
  %write_readback.i675 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %407, i32 0, i32 1
  %408 = ptrtoint ptr %write_readback.i675 to i32
  call void @__asan_load1_noabort(i32 %408)
  %409 = load i8, ptr %write_readback.i675, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %409)
  %tobool.not.i676 = icmp eq i8 %409, 0
  br i1 %tobool.not.i676, label %sw.bb233.sw.epilog346_crit_edge, label %if.then.i679

sw.bb233.sw.epilog346_crit_edge:                  ; preds = %sw.bb233
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog346

if.then.i679:                                     ; preds = %sw.bb233
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i677 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %410 = ptrtoint ptr %read16_sync.i677 to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %read16_sync.i677, align 4
  %call.i678 = tail call zeroext i16 %411(ptr noundef %1, i32 noundef 1066) #8
  br label %sw.epilog346

sw.bb241:                                         ; preds = %entry
  %write8_async.i681 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %412 = ptrtoint ptr %write8_async.i681 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %write8_async.i681, align 4
  tail call void %413(ptr noundef %1, i32 noundef 1363, i8 noundef zeroext 3) #8
  %cfg.i682 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %414 = ptrtoint ptr %cfg.i682 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %cfg.i682, align 8
  %write_readback.i683 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %415, i32 0, i32 1
  %416 = ptrtoint ptr %write_readback.i683 to i32
  call void @__asan_load1_noabort(i32 %416)
  %417 = load i8, ptr %write_readback.i683, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %417)
  %tobool.not.i684 = icmp eq i8 %417, 0
  br i1 %tobool.not.i684, label %sw.bb241.sw.epilog346_crit_edge, label %if.then.i687

sw.bb241.sw.epilog346_crit_edge:                  ; preds = %sw.bb241
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog346

if.then.i687:                                     ; preds = %sw.bb241
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i685 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %418 = ptrtoint ptr %read8_sync.i685 to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %read8_sync.i685, align 4
  %call.i686 = tail call zeroext i8 %419(ptr noundef %1, i32 noundef 1363) #8
  br label %sw.epilog346

sw.bb242:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %420 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %420)
  %421 = load i16, ptr %val, align 2
  %efuse_usedbytes = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 5
  %422 = ptrtoint ptr %efuse_usedbytes to i32
  call void @__asan_store2_noabort(i32 %422)
  store i16 %421, ptr %efuse_usedbytes, align 4
  br label %sw.epilog346

sw.bb243:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %423 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %423)
  %424 = load i8, ptr %val, align 1
  %efuse_usedpercentage = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 6
  %425 = ptrtoint ptr %efuse_usedpercentage to i32
  call void @__asan_store1_noabort(i32 %425)
  store i8 %424, ptr %efuse_usedpercentage, align 2
  br label %sw.epilog346

sw.bb244:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %426 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %val, align 4
  %call245 = tail call zeroext i1 @rtl8723e_phy_set_io_cmd(ptr noundef %hw, i32 noundef %427) #8
  br label %sw.epilog346

sw.bb246:                                         ; preds = %entry
  %428 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %428)
  %429 = load i8, ptr %val, align 1
  %write8_async.i689 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %430 = ptrtoint ptr %write8_async.i689 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %write8_async.i689, align 4
  tail call void %431(ptr noundef %1, i32 noundef 1664, i8 noundef zeroext %429) #8
  %cfg.i690 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %432 = ptrtoint ptr %cfg.i690 to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %cfg.i690, align 8
  %write_readback.i691 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %433, i32 0, i32 1
  %434 = ptrtoint ptr %write_readback.i691 to i32
  call void @__asan_load1_noabort(i32 %434)
  %435 = load i8, ptr %write_readback.i691, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %435)
  %tobool.not.i692 = icmp eq i8 %435, 0
  br i1 %tobool.not.i692, label %sw.bb246.sw.epilog346_crit_edge, label %if.then.i695

sw.bb246.sw.epilog346_crit_edge:                  ; preds = %sw.bb246
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog346

if.then.i695:                                     ; preds = %sw.bb246
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i693 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %436 = ptrtoint ptr %read8_sync.i693 to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %read8_sync.i693, align 4
  %call.i694 = tail call zeroext i8 %437(ptr noundef %1, i32 noundef 1664) #8
  br label %sw.epilog346

sw.bb247:                                         ; preds = %entry
  %read8_sync.i697 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %438 = ptrtoint ptr %read8_sync.i697 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %read8_sync.i697, align 4
  %call.i698 = tail call zeroext i8 %439(ptr noundef %1, i32 noundef 865) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %440 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %440(i32 noundef 214748) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i698)
  %tobool251.not = icmp sgt i8 %call.i698, -1
  %441 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %441)
  %442 = load i8, ptr %val, align 1
  br i1 %tobool251.not, label %if.else253, label %if.then252

if.then252:                                       ; preds = %sw.bb247
  %write8_async.i699 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %443 = ptrtoint ptr %write8_async.i699 to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %write8_async.i699, align 4
  tail call void %444(ptr noundef %1, i32 noundef 865, i8 noundef zeroext %442) #8
  %cfg.i700 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %445 = ptrtoint ptr %cfg.i700 to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %cfg.i700, align 8
  %write_readback.i701 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %446, i32 0, i32 1
  %447 = ptrtoint ptr %write_readback.i701 to i32
  call void @__asan_load1_noabort(i32 %447)
  %448 = load i8, ptr %write_readback.i701, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %448)
  %tobool.not.i702 = icmp eq i8 %448, 0
  br i1 %tobool.not.i702, label %if.then252.sw.epilog346_crit_edge, label %if.then.i705

if.then252.sw.epilog346_crit_edge:                ; preds = %if.then252
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog346

if.then.i705:                                     ; preds = %if.then252
  call void @__sanitizer_cov_trace_pc() #10
  %449 = ptrtoint ptr %read8_sync.i697 to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %read8_sync.i697, align 4
  %call.i704 = tail call zeroext i8 %450(ptr noundef %1, i32 noundef 865) #8
  br label %sw.epilog346

if.else253:                                       ; preds = %sw.bb247
  %451 = or i8 %442, -128
  %write8_async.i707 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %452 = ptrtoint ptr %write8_async.i707 to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %write8_async.i707, align 4
  tail call void %453(ptr noundef %1, i32 noundef 865, i8 noundef zeroext %451) #8
  %cfg.i708 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %454 = ptrtoint ptr %cfg.i708 to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %cfg.i708, align 8
  %write_readback.i709 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %455, i32 0, i32 1
  %456 = ptrtoint ptr %write_readback.i709 to i32
  call void @__asan_load1_noabort(i32 %456)
  %457 = load i8, ptr %write_readback.i709, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %457)
  %tobool.not.i710 = icmp eq i8 %457, 0
  br i1 %tobool.not.i710, label %if.else253.sw.epilog346_crit_edge, label %if.then.i713

if.else253.sw.epilog346_crit_edge:                ; preds = %if.else253
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog346

if.then.i713:                                     ; preds = %if.else253
  call void @__sanitizer_cov_trace_pc() #10
  %458 = ptrtoint ptr %read8_sync.i697 to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %read8_sync.i697, align 4
  %call.i712 = tail call zeroext i8 %459(ptr noundef %1, i32 noundef 865) #8
  br label %sw.epilog346

sw.bb258:                                         ; preds = %entry
  %460 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %460)
  %461 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %461)
  %cmp260.not = icmp eq i8 %461, 0
  br i1 %cmp260.not, label %sw.bb258.if.end263_crit_edge, label %if.then262

sw.bb258.if.end263_crit_edge:                     ; preds = %sw.bb258
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end263

if.then262:                                       ; preds = %sw.bb258
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rtl8723e_dm_rf_saving(ptr noundef %hw, i8 noundef zeroext 1) #8
  br label %if.end263

if.end263:                                        ; preds = %if.then262, %sw.bb258.if.end263_crit_edge
  %462 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %462)
  %463 = load i8, ptr %val, align 1
  tail call void @rtl8723e_set_fw_pwrmode_cmd(ptr noundef %hw, i8 noundef zeroext %463) #8
  br label %sw.epilog346

sw.bb264:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %464 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %464)
  %465 = load i8, ptr %val, align 1, !range !182
  %fw_current_inpsmode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 13
  %466 = ptrtoint ptr %fw_current_inpsmode to i32
  call void @__asan_store1_noabort(i32 %466)
  store i8 %465, ptr %fw_current_inpsmode, align 1
  br label %sw.epilog346

sw.bb266:                                         ; preds = %entry
  %467 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %467)
  %468 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %468)
  %cmp268 = icmp eq i8 %468, 1
  br i1 %cmp268, label %if.then270, label %sw.bb266.if.end293_crit_edge

sw.bb266.if.end293_crit_edge:                     ; preds = %sw.bb266
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end293

if.then270:                                       ; preds = %sw.bb266
  %cfg271 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %469 = ptrtoint ptr %cfg271 to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %cfg271, align 8
  %ops272 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %470, i32 0, i32 4
  %471 = ptrtoint ptr %ops272 to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %ops272, align 4
  %set_hw_reg273 = getelementptr inbounds %struct.rtl_hal_ops, ptr %472, i32 0, i32 20
  %473 = ptrtoint ptr %set_hw_reg273 to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %set_hw_reg273, align 4
  tail call void %474(ptr noundef %hw, i8 noundef zeroext 82, ptr noundef null) #8
  %read8_sync.i715 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %475 = ptrtoint ptr %read8_sync.i715 to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %read8_sync.i715, align 4
  %call.i716 = tail call zeroext i8 %476(ptr noundef %1, i32 noundef 257) #8
  %or276 = or i8 %call.i716, 1
  %write8_async.i717 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %477 = ptrtoint ptr %write8_async.i717 to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %write8_async.i717, align 4
  tail call void %478(ptr noundef %1, i32 noundef 257, i8 noundef zeroext %or276) #8
  %479 = ptrtoint ptr %cfg271 to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %cfg271, align 8
  %write_readback.i719 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %480, i32 0, i32 1
  %481 = ptrtoint ptr %write_readback.i719 to i32
  call void @__asan_load1_noabort(i32 %481)
  %482 = load i8, ptr %write_readback.i719, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %482)
  %tobool.not.i720 = icmp eq i8 %482, 0
  br i1 %tobool.not.i720, label %if.then270.rtl_write_byte.exit724_crit_edge, label %if.then.i723

if.then270.rtl_write_byte.exit724_crit_edge:      ; preds = %if.then270
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit724

if.then.i723:                                     ; preds = %if.then270
  call void @__sanitizer_cov_trace_pc() #10
  %483 = ptrtoint ptr %read8_sync.i715 to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %read8_sync.i715, align 4
  %call.i722 = tail call zeroext i8 %484(ptr noundef %1, i32 noundef 257) #8
  br label %rtl_write_byte.exit724

rtl_write_byte.exit724:                           ; preds = %if.then.i723, %if.then270.rtl_write_byte.exit724_crit_edge
  %485 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i = getelementptr inbounds %struct.rtl_priv, ptr %486, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %487 = ptrtoint ptr %reg_bcn_ctrl_val.i to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load i32, ptr %reg_bcn_ctrl_val.i, align 4
  %and.i = and i32 %488, -9
  store i32 %and.i, ptr %reg_bcn_ctrl_val.i, align 4
  %conv6.i = trunc i32 %and.i to i8
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %486, i32 0, i32 13, i32 5
  %489 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %490(ptr noundef %486, i32 noundef 1360, i8 noundef zeroext %conv6.i) #8
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %486, i32 0, i32 32
  %491 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %492, i32 0, i32 1
  %493 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %493)
  %494 = load i8, ptr %write_readback.i.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %494)
  %tobool.not.i.i = icmp eq i8 %494, 0
  br i1 %tobool.not.i.i, label %rtl_write_byte.exit724._rtl8723e_set_bcn_ctrl_reg.exit_crit_edge, label %if.then.i.i

rtl_write_byte.exit724._rtl8723e_set_bcn_ctrl_reg.exit_crit_edge: ; preds = %rtl_write_byte.exit724
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl8723e_set_bcn_ctrl_reg.exit

if.then.i.i:                                      ; preds = %rtl_write_byte.exit724
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %486, i32 0, i32 13, i32 9
  %495 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = tail call zeroext i8 %496(ptr noundef %486, i32 noundef 1360) #8
  br label %_rtl8723e_set_bcn_ctrl_reg.exit

_rtl8723e_set_bcn_ctrl_reg.exit:                  ; preds = %if.then.i.i, %rtl_write_byte.exit724._rtl8723e_set_bcn_ctrl_reg.exit_crit_edge
  %497 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i726 = getelementptr inbounds %struct.rtl_priv, ptr %498, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %499 = ptrtoint ptr %reg_bcn_ctrl_val.i726 to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load i32, ptr %reg_bcn_ctrl_val.i726, align 4
  %or.i = or i32 %500, 16
  store i32 %or.i, ptr %reg_bcn_ctrl_val.i726, align 4
  %conv6.i727 = trunc i32 %or.i to i8
  %write8_async.i.i728 = getelementptr inbounds %struct.rtl_priv, ptr %498, i32 0, i32 13, i32 5
  %501 = ptrtoint ptr %write8_async.i.i728 to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %write8_async.i.i728, align 4
  tail call void %502(ptr noundef %498, i32 noundef 1360, i8 noundef zeroext %conv6.i727) #8
  %cfg.i.i729 = getelementptr inbounds %struct.rtl_priv, ptr %498, i32 0, i32 32
  %503 = ptrtoint ptr %cfg.i.i729 to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load ptr, ptr %cfg.i.i729, align 8
  %write_readback.i.i730 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %504, i32 0, i32 1
  %505 = ptrtoint ptr %write_readback.i.i730 to i32
  call void @__asan_load1_noabort(i32 %505)
  %506 = load i8, ptr %write_readback.i.i730, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %506)
  %tobool.not.i.i731 = icmp eq i8 %506, 0
  br i1 %tobool.not.i.i731, label %_rtl8723e_set_bcn_ctrl_reg.exit._rtl8723e_set_bcn_ctrl_reg.exit735_crit_edge, label %if.then.i.i734

_rtl8723e_set_bcn_ctrl_reg.exit._rtl8723e_set_bcn_ctrl_reg.exit735_crit_edge: ; preds = %_rtl8723e_set_bcn_ctrl_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl8723e_set_bcn_ctrl_reg.exit735

if.then.i.i734:                                   ; preds = %_rtl8723e_set_bcn_ctrl_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i732 = getelementptr inbounds %struct.rtl_priv, ptr %498, i32 0, i32 13, i32 9
  %507 = ptrtoint ptr %read8_sync.i.i732 to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load ptr, ptr %read8_sync.i.i732, align 4
  %call.i.i733 = tail call zeroext i8 %508(ptr noundef %498, i32 noundef 1360) #8
  br label %_rtl8723e_set_bcn_ctrl_reg.exit735

_rtl8723e_set_bcn_ctrl_reg.exit735:               ; preds = %if.then.i.i734, %_rtl8723e_set_bcn_ctrl_reg.exit._rtl8723e_set_bcn_ctrl_reg.exit735_crit_edge
  %509 = ptrtoint ptr %read8_sync.i715 to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %read8_sync.i715, align 4
  %call.i737 = tail call zeroext i8 %510(ptr noundef %1, i32 noundef 1058) #8
  %511 = and i8 %call.i737, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %511)
  %tobool281.not = icmp eq i8 %511, 0
  %and285 = and i8 %call.i737, -65
  %512 = ptrtoint ptr %write8_async.i717 to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %write8_async.i717, align 4
  tail call void %513(ptr noundef %1, i32 noundef 1058, i8 noundef zeroext %and285) #8
  %514 = ptrtoint ptr %cfg271 to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %cfg271, align 8
  %write_readback.i740 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %515, i32 0, i32 1
  %516 = ptrtoint ptr %write_readback.i740 to i32
  call void @__asan_load1_noabort(i32 %516)
  %517 = load i8, ptr %write_readback.i740, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %517)
  %tobool.not.i741 = icmp eq i8 %517, 0
  br i1 %tobool.not.i741, label %_rtl8723e_set_bcn_ctrl_reg.exit735.rtl_write_byte.exit745_crit_edge, label %if.then.i744

_rtl8723e_set_bcn_ctrl_reg.exit735.rtl_write_byte.exit745_crit_edge: ; preds = %_rtl8723e_set_bcn_ctrl_reg.exit735
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit745

if.then.i744:                                     ; preds = %_rtl8723e_set_bcn_ctrl_reg.exit735
  call void @__sanitizer_cov_trace_pc() #10
  %518 = ptrtoint ptr %read8_sync.i715 to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %read8_sync.i715, align 4
  %call.i743 = tail call zeroext i8 %519(ptr noundef %1, i32 noundef 1058) #8
  br label %rtl_write_byte.exit745

rtl_write_byte.exit745:                           ; preds = %if.then.i744, %_rtl8723e_set_bcn_ctrl_reg.exit735.rtl_write_byte.exit745_crit_edge
  tail call void @rtl8723e_set_fw_rsvdpagepkt(ptr noundef %hw, i1 noundef zeroext false) #8
  %520 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i747 = getelementptr inbounds %struct.rtl_priv, ptr %521, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %522 = ptrtoint ptr %reg_bcn_ctrl_val.i747 to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load i32, ptr %reg_bcn_ctrl_val.i747, align 4
  %or.i748 = or i32 %523, 8
  store i32 %or.i748, ptr %reg_bcn_ctrl_val.i747, align 4
  %conv6.i749 = trunc i32 %or.i748 to i8
  %write8_async.i.i750 = getelementptr inbounds %struct.rtl_priv, ptr %521, i32 0, i32 13, i32 5
  %524 = ptrtoint ptr %write8_async.i.i750 to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %write8_async.i.i750, align 4
  tail call void %525(ptr noundef %521, i32 noundef 1360, i8 noundef zeroext %conv6.i749) #8
  %cfg.i.i751 = getelementptr inbounds %struct.rtl_priv, ptr %521, i32 0, i32 32
  %526 = ptrtoint ptr %cfg.i.i751 to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %cfg.i.i751, align 8
  %write_readback.i.i752 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %527, i32 0, i32 1
  %528 = ptrtoint ptr %write_readback.i.i752 to i32
  call void @__asan_load1_noabort(i32 %528)
  %529 = load i8, ptr %write_readback.i.i752, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %529)
  %tobool.not.i.i753 = icmp eq i8 %529, 0
  br i1 %tobool.not.i.i753, label %rtl_write_byte.exit745._rtl8723e_set_bcn_ctrl_reg.exit757_crit_edge, label %if.then.i.i756

rtl_write_byte.exit745._rtl8723e_set_bcn_ctrl_reg.exit757_crit_edge: ; preds = %rtl_write_byte.exit745
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl8723e_set_bcn_ctrl_reg.exit757

if.then.i.i756:                                   ; preds = %rtl_write_byte.exit745
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i754 = getelementptr inbounds %struct.rtl_priv, ptr %521, i32 0, i32 13, i32 9
  %530 = ptrtoint ptr %read8_sync.i.i754 to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %read8_sync.i.i754, align 4
  %call.i.i755 = tail call zeroext i8 %531(ptr noundef %521, i32 noundef 1360) #8
  br label %_rtl8723e_set_bcn_ctrl_reg.exit757

_rtl8723e_set_bcn_ctrl_reg.exit757:               ; preds = %if.then.i.i756, %rtl_write_byte.exit745._rtl8723e_set_bcn_ctrl_reg.exit757_crit_edge
  %532 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i759 = getelementptr inbounds %struct.rtl_priv, ptr %533, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %534 = ptrtoint ptr %reg_bcn_ctrl_val.i759 to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load i32, ptr %reg_bcn_ctrl_val.i759, align 4
  %and.i760 = and i32 %535, -17
  store i32 %and.i760, ptr %reg_bcn_ctrl_val.i759, align 4
  %conv6.i761 = trunc i32 %and.i760 to i8
  %write8_async.i.i762 = getelementptr inbounds %struct.rtl_priv, ptr %533, i32 0, i32 13, i32 5
  %536 = ptrtoint ptr %write8_async.i.i762 to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %write8_async.i.i762, align 4
  tail call void %537(ptr noundef %533, i32 noundef 1360, i8 noundef zeroext %conv6.i761) #8
  %cfg.i.i763 = getelementptr inbounds %struct.rtl_priv, ptr %533, i32 0, i32 32
  %538 = ptrtoint ptr %cfg.i.i763 to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %cfg.i.i763, align 8
  %write_readback.i.i764 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %539, i32 0, i32 1
  %540 = ptrtoint ptr %write_readback.i.i764 to i32
  call void @__asan_load1_noabort(i32 %540)
  %541 = load i8, ptr %write_readback.i.i764, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %541)
  %tobool.not.i.i765 = icmp eq i8 %541, 0
  br i1 %tobool.not.i.i765, label %_rtl8723e_set_bcn_ctrl_reg.exit757._rtl8723e_set_bcn_ctrl_reg.exit769_crit_edge, label %if.then.i.i768

_rtl8723e_set_bcn_ctrl_reg.exit757._rtl8723e_set_bcn_ctrl_reg.exit769_crit_edge: ; preds = %_rtl8723e_set_bcn_ctrl_reg.exit757
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl8723e_set_bcn_ctrl_reg.exit769

if.then.i.i768:                                   ; preds = %_rtl8723e_set_bcn_ctrl_reg.exit757
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i766 = getelementptr inbounds %struct.rtl_priv, ptr %533, i32 0, i32 13, i32 9
  %542 = ptrtoint ptr %read8_sync.i.i766 to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %read8_sync.i.i766, align 4
  %call.i.i767 = tail call zeroext i8 %543(ptr noundef %533, i32 noundef 1360) #8
  br label %_rtl8723e_set_bcn_ctrl_reg.exit769

_rtl8723e_set_bcn_ctrl_reg.exit769:               ; preds = %if.then.i.i768, %_rtl8723e_set_bcn_ctrl_reg.exit757._rtl8723e_set_bcn_ctrl_reg.exit769_crit_edge
  br i1 %tobool281.not, label %_rtl8723e_set_bcn_ctrl_reg.exit769.if.end289_crit_edge, label %if.then288

_rtl8723e_set_bcn_ctrl_reg.exit769.if.end289_crit_edge: ; preds = %_rtl8723e_set_bcn_ctrl_reg.exit769
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end289

if.then288:                                       ; preds = %_rtl8723e_set_bcn_ctrl_reg.exit769
  %544 = ptrtoint ptr %write8_async.i717 to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %write8_async.i717, align 4
  tail call void %545(ptr noundef %1, i32 noundef 1058, i8 noundef zeroext %call.i737) #8
  %546 = ptrtoint ptr %cfg271 to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load ptr, ptr %cfg271, align 8
  %write_readback.i772 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %547, i32 0, i32 1
  %548 = ptrtoint ptr %write_readback.i772 to i32
  call void @__asan_load1_noabort(i32 %548)
  %549 = load i8, ptr %write_readback.i772, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %549)
  %tobool.not.i773 = icmp eq i8 %549, 0
  br i1 %tobool.not.i773, label %if.then288.if.end289_crit_edge, label %if.then.i776

if.then288.if.end289_crit_edge:                   ; preds = %if.then288
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end289

if.then.i776:                                     ; preds = %if.then288
  call void @__sanitizer_cov_trace_pc() #10
  %550 = ptrtoint ptr %read8_sync.i715 to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %read8_sync.i715, align 4
  %call.i775 = tail call zeroext i8 %551(ptr noundef %1, i32 noundef 1058) #8
  br label %if.end289

if.end289:                                        ; preds = %if.then.i776, %if.then288.if.end289_crit_edge, %_rtl8723e_set_bcn_ctrl_reg.exit769.if.end289_crit_edge
  %552 = and i8 %call.i716, -2
  %553 = ptrtoint ptr %write8_async.i717 to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load ptr, ptr %write8_async.i717, align 4
  tail call void %554(ptr noundef %1, i32 noundef 257, i8 noundef zeroext %552) #8
  %555 = ptrtoint ptr %cfg271 to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load ptr, ptr %cfg271, align 8
  %write_readback.i780 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %556, i32 0, i32 1
  %557 = ptrtoint ptr %write_readback.i780 to i32
  call void @__asan_load1_noabort(i32 %557)
  %558 = load i8, ptr %write_readback.i780, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %558)
  %tobool.not.i781 = icmp eq i8 %558, 0
  br i1 %tobool.not.i781, label %if.end289.if.end293_crit_edge, label %if.then.i784

if.end289.if.end293_crit_edge:                    ; preds = %if.end289
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end293

if.then.i784:                                     ; preds = %if.end289
  call void @__sanitizer_cov_trace_pc() #10
  %559 = ptrtoint ptr %read8_sync.i715 to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load ptr, ptr %read8_sync.i715, align 4
  %call.i783 = tail call zeroext i8 %560(ptr noundef %1, i32 noundef 257) #8
  br label %if.end293

if.end293:                                        ; preds = %if.then.i784, %if.end289.if.end293_crit_edge, %sw.bb266.if.end293_crit_edge
  %561 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %561)
  %562 = load i8, ptr %val, align 1
  tail call void @rtl8723e_set_fw_joinbss_report_cmd(ptr noundef %hw, i8 noundef zeroext %562) #8
  br label %sw.epilog346

sw.bb294:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %563 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %563)
  %564 = load i8, ptr %val, align 1
  tail call void @rtl8723e_set_p2p_ps_offload_cmd(ptr noundef %hw, i8 noundef zeroext %564) #8
  br label %sw.epilog346

sw.bb295:                                         ; preds = %entry
  %read16_sync.i786 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %565 = ptrtoint ptr %read16_sync.i786 to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load ptr, ptr %read16_sync.i786, align 4
  %call.i787 = tail call zeroext i16 %566(ptr noundef %1, i32 noundef 1704) #8
  %567 = and i16 %call.i787, -16384
  %assoc_id = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 52
  %568 = ptrtoint ptr %assoc_id to i32
  call void @__asan_load2_noabort(i32 %568)
  %569 = load i16, ptr %assoc_id, align 2
  %or302535 = or i16 %567, %569
  %write16_async.i788 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %570 = ptrtoint ptr %write16_async.i788 to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load ptr, ptr %write16_async.i788, align 4
  tail call void %571(ptr noundef %1, i32 noundef 1704, i16 noundef zeroext %or302535) #8
  %cfg.i789 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %572 = ptrtoint ptr %cfg.i789 to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load ptr, ptr %cfg.i789, align 8
  %write_readback.i790 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %573, i32 0, i32 1
  %574 = ptrtoint ptr %write_readback.i790 to i32
  call void @__asan_load1_noabort(i32 %574)
  %575 = load i8, ptr %write_readback.i790, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %575)
  %tobool.not.i791 = icmp eq i8 %575, 0
  br i1 %tobool.not.i791, label %sw.bb295.sw.epilog346_crit_edge, label %if.then.i794

sw.bb295.sw.epilog346_crit_edge:                  ; preds = %sw.bb295
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog346

if.then.i794:                                     ; preds = %sw.bb295
  call void @__sanitizer_cov_trace_pc() #10
  %576 = ptrtoint ptr %read16_sync.i786 to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load ptr, ptr %read16_sync.i786, align 4
  %call.i793 = tail call zeroext i16 %577(ptr noundef %1, i32 noundef 1704) #8
  br label %sw.epilog346

sw.bb304:                                         ; preds = %entry
  %578 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %578)
  %579 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %579)
  %tobool306.not = icmp eq i8 %579, 0
  br i1 %tobool306.not, label %if.end317.critedge, label %if.then307

if.then307:                                       ; preds = %sw.bb304
  %read8_sync.i.i797 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %580 = ptrtoint ptr %read8_sync.i.i797 to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load ptr, ptr %read8_sync.i.i797, align 4
  %call.i.i798 = tail call zeroext i8 %581(ptr noundef %1, i32 noundef 1058) #8
  %582 = and i8 %call.i.i798, -65
  %write8_async.i.i799 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %583 = ptrtoint ptr %write8_async.i.i799 to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load ptr, ptr %write8_async.i.i799, align 4
  tail call void %584(ptr noundef %1, i32 noundef 1058, i8 noundef zeroext %582) #8
  %cfg.i.i800 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %585 = ptrtoint ptr %cfg.i.i800 to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load ptr, ptr %cfg.i.i800, align 8
  %write_readback.i.i801 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %586, i32 0, i32 1
  %587 = ptrtoint ptr %write_readback.i.i801 to i32
  call void @__asan_load1_noabort(i32 %587)
  %588 = load i8, ptr %write_readback.i.i801, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %588)
  %tobool.not.i.i802 = icmp eq i8 %588, 0
  br i1 %tobool.not.i.i802, label %if.then307.rtl_write_byte.exit.i_crit_edge, label %if.then.i.i803

if.then307.rtl_write_byte.exit.i_crit_edge:       ; preds = %if.then307
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit.i

if.then.i.i803:                                   ; preds = %if.then307
  call void @__sanitizer_cov_trace_pc() #10
  %589 = ptrtoint ptr %read8_sync.i.i797 to i32
  call void @__asan_load4_noabort(i32 %589)
  %590 = load ptr, ptr %read8_sync.i.i797, align 4
  %call.i13.i = tail call zeroext i8 %590(ptr noundef %1, i32 noundef 1058) #8
  br label %rtl_write_byte.exit.i

rtl_write_byte.exit.i:                            ; preds = %if.then.i.i803, %if.then307.rtl_write_byte.exit.i_crit_edge
  %591 = ptrtoint ptr %write8_async.i.i799 to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load ptr, ptr %write8_async.i.i799, align 4
  tail call void %592(ptr noundef %1, i32 noundef 1345, i8 noundef zeroext 100) #8
  %593 = ptrtoint ptr %cfg.i.i800 to i32
  call void @__asan_load4_noabort(i32 %593)
  %594 = load ptr, ptr %cfg.i.i800, align 8
  %write_readback.i16.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %594, i32 0, i32 1
  %595 = ptrtoint ptr %write_readback.i16.i to i32
  call void @__asan_load1_noabort(i32 %595)
  %596 = load i8, ptr %write_readback.i16.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %596)
  %tobool.not.i17.i = icmp eq i8 %596, 0
  br i1 %tobool.not.i17.i, label %rtl_write_byte.exit.i.rtl_write_byte.exit21.i_crit_edge, label %if.then.i20.i

rtl_write_byte.exit.i.rtl_write_byte.exit21.i_crit_edge: ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit21.i

if.then.i20.i:                                    ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %597 = ptrtoint ptr %read8_sync.i.i797 to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load ptr, ptr %read8_sync.i.i797, align 4
  %call.i19.i = tail call zeroext i8 %598(ptr noundef %1, i32 noundef 1345) #8
  br label %rtl_write_byte.exit21.i

rtl_write_byte.exit21.i:                          ; preds = %if.then.i20.i, %rtl_write_byte.exit.i.rtl_write_byte.exit21.i_crit_edge
  %599 = ptrtoint ptr %read8_sync.i.i797 to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load ptr, ptr %read8_sync.i.i797, align 4
  %call.i23.i = tail call zeroext i8 %600(ptr noundef %1, i32 noundef 1346) #8
  %601 = and i8 %call.i23.i, -2
  %602 = ptrtoint ptr %write8_async.i.i799 to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load ptr, ptr %write8_async.i.i799, align 4
  tail call void %603(ptr noundef %1, i32 noundef 1346, i8 noundef zeroext %601) #8
  %604 = ptrtoint ptr %cfg.i.i800 to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load ptr, ptr %cfg.i.i800, align 8
  %write_readback.i26.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %605, i32 0, i32 1
  %606 = ptrtoint ptr %write_readback.i26.i to i32
  call void @__asan_load1_noabort(i32 %606)
  %607 = load i8, ptr %write_readback.i26.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %607)
  %tobool.not.i27.i = icmp eq i8 %607, 0
  br i1 %tobool.not.i27.i, label %rtl_write_byte.exit21.i._rtl8723e_stop_tx_beacon.exit_crit_edge, label %if.then.i30.i

rtl_write_byte.exit21.i._rtl8723e_stop_tx_beacon.exit_crit_edge: ; preds = %rtl_write_byte.exit21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl8723e_stop_tx_beacon.exit

if.then.i30.i:                                    ; preds = %rtl_write_byte.exit21.i
  call void @__sanitizer_cov_trace_pc() #10
  %608 = ptrtoint ptr %read8_sync.i.i797 to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load ptr, ptr %read8_sync.i.i797, align 4
  %call.i29.i = tail call zeroext i8 %609(ptr noundef %1, i32 noundef 1346) #8
  br label %_rtl8723e_stop_tx_beacon.exit

_rtl8723e_stop_tx_beacon.exit:                    ; preds = %if.then.i30.i, %rtl_write_byte.exit21.i._rtl8723e_stop_tx_beacon.exit_crit_edge
  %610 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i805 = getelementptr inbounds %struct.rtl_priv, ptr %611, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %612 = ptrtoint ptr %reg_bcn_ctrl_val.i805 to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load i32, ptr %reg_bcn_ctrl_val.i805, align 4
  %and.i806 = and i32 %613, -9
  store i32 %and.i806, ptr %reg_bcn_ctrl_val.i805, align 4
  %conv6.i807 = trunc i32 %and.i806 to i8
  %write8_async.i.i808 = getelementptr inbounds %struct.rtl_priv, ptr %611, i32 0, i32 13, i32 5
  %614 = ptrtoint ptr %write8_async.i.i808 to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load ptr, ptr %write8_async.i.i808, align 4
  tail call void %615(ptr noundef %611, i32 noundef 1360, i8 noundef zeroext %conv6.i807) #8
  %cfg.i.i809 = getelementptr inbounds %struct.rtl_priv, ptr %611, i32 0, i32 32
  %616 = ptrtoint ptr %cfg.i.i809 to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load ptr, ptr %cfg.i.i809, align 8
  %write_readback.i.i810 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %617, i32 0, i32 1
  %618 = ptrtoint ptr %write_readback.i.i810 to i32
  call void @__asan_load1_noabort(i32 %618)
  %619 = load i8, ptr %write_readback.i.i810, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %619)
  %tobool.not.i.i811 = icmp eq i8 %619, 0
  br i1 %tobool.not.i.i811, label %_rtl8723e_stop_tx_beacon.exit._rtl8723e_set_bcn_ctrl_reg.exit816_crit_edge, label %if.then.i.i814

_rtl8723e_stop_tx_beacon.exit._rtl8723e_set_bcn_ctrl_reg.exit816_crit_edge: ; preds = %_rtl8723e_stop_tx_beacon.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl8723e_set_bcn_ctrl_reg.exit816

if.then.i.i814:                                   ; preds = %_rtl8723e_stop_tx_beacon.exit
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i812 = getelementptr inbounds %struct.rtl_priv, ptr %611, i32 0, i32 13, i32 9
  %620 = ptrtoint ptr %read8_sync.i.i812 to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load ptr, ptr %read8_sync.i.i812, align 4
  %call.i.i813 = tail call zeroext i8 %621(ptr noundef %611, i32 noundef 1360) #8
  br label %_rtl8723e_set_bcn_ctrl_reg.exit816

_rtl8723e_set_bcn_ctrl_reg.exit816:               ; preds = %if.then.i.i814, %_rtl8723e_stop_tx_beacon.exit._rtl8723e_set_bcn_ctrl_reg.exit816_crit_edge
  %tsf.c = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 49
  %622 = ptrtoint ptr %tsf.c to i32
  call void @__asan_load8_noabort(i32 %622)
  %623 = load i64, ptr %tsf.c, align 8
  %conv310.c = trunc i64 %623 to i32
  %write32_async.i817 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %624 = ptrtoint ptr %write32_async.i817 to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load ptr, ptr %write32_async.i817, align 4
  tail call void %625(ptr noundef %1, i32 noundef 1376, i32 noundef %conv310.c) #8
  %626 = ptrtoint ptr %cfg.i.i800 to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load ptr, ptr %cfg.i.i800, align 8
  %write_readback.i819 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %627, i32 0, i32 1
  %628 = ptrtoint ptr %write_readback.i819 to i32
  call void @__asan_load1_noabort(i32 %628)
  %629 = load i8, ptr %write_readback.i819, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %629)
  %tobool.not.i820 = icmp eq i8 %629, 0
  br i1 %tobool.not.i820, label %_rtl8723e_set_bcn_ctrl_reg.exit816.rtl_write_dword.exit824_crit_edge, label %if.then.i823

_rtl8723e_set_bcn_ctrl_reg.exit816.rtl_write_dword.exit824_crit_edge: ; preds = %_rtl8723e_set_bcn_ctrl_reg.exit816
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit824

if.then.i823:                                     ; preds = %_rtl8723e_set_bcn_ctrl_reg.exit816
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i821 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %630 = ptrtoint ptr %read32_sync.i821 to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load ptr, ptr %read32_sync.i821, align 4
  %call.i822 = tail call i32 %631(ptr noundef %1, i32 noundef 1376) #8
  br label %rtl_write_dword.exit824

rtl_write_dword.exit824:                          ; preds = %if.then.i823, %_rtl8723e_set_bcn_ctrl_reg.exit816.rtl_write_dword.exit824_crit_edge
  %632 = ptrtoint ptr %tsf.c to i32
  call void @__asan_load8_noabort(i32 %632)
  %633 = load i64, ptr %tsf.c, align 8
  %shr312.c = lshr i64 %633, 32
  %conv314.c = trunc i64 %shr312.c to i32
  %634 = ptrtoint ptr %write32_async.i817 to i32
  call void @__asan_load4_noabort(i32 %634)
  %635 = load ptr, ptr %write32_async.i817, align 4
  tail call void %635(ptr noundef %1, i32 noundef 1380, i32 noundef %conv314.c) #8
  %636 = ptrtoint ptr %cfg.i.i800 to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load ptr, ptr %cfg.i.i800, align 8
  %write_readback.i827 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %637, i32 0, i32 1
  %638 = ptrtoint ptr %write_readback.i827 to i32
  call void @__asan_load1_noabort(i32 %638)
  %639 = load i8, ptr %write_readback.i827, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %639)
  %tobool.not.i828 = icmp eq i8 %639, 0
  br i1 %tobool.not.i828, label %rtl_write_dword.exit824.rtl_write_dword.exit832_crit_edge, label %if.then.i831

rtl_write_dword.exit824.rtl_write_dword.exit832_crit_edge: ; preds = %rtl_write_dword.exit824
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit832

if.then.i831:                                     ; preds = %rtl_write_dword.exit824
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i829 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %640 = ptrtoint ptr %read32_sync.i829 to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load ptr, ptr %read32_sync.i829, align 4
  %call.i830 = tail call i32 %641(ptr noundef %1, i32 noundef 1380) #8
  br label %rtl_write_dword.exit832

rtl_write_dword.exit832:                          ; preds = %if.then.i831, %rtl_write_dword.exit824.rtl_write_dword.exit832_crit_edge
  %642 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i834 = getelementptr inbounds %struct.rtl_priv, ptr %643, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %644 = ptrtoint ptr %reg_bcn_ctrl_val.i834 to i32
  call void @__asan_load4_noabort(i32 %644)
  %645 = load i32, ptr %reg_bcn_ctrl_val.i834, align 4
  %or.i835 = or i32 %645, 8
  store i32 %or.i835, ptr %reg_bcn_ctrl_val.i834, align 4
  %conv6.i836 = trunc i32 %or.i835 to i8
  %write8_async.i.i837 = getelementptr inbounds %struct.rtl_priv, ptr %643, i32 0, i32 13, i32 5
  %646 = ptrtoint ptr %write8_async.i.i837 to i32
  call void @__asan_load4_noabort(i32 %646)
  %647 = load ptr, ptr %write8_async.i.i837, align 4
  tail call void %647(ptr noundef %643, i32 noundef 1360, i8 noundef zeroext %conv6.i836) #8
  %cfg.i.i838 = getelementptr inbounds %struct.rtl_priv, ptr %643, i32 0, i32 32
  %648 = ptrtoint ptr %cfg.i.i838 to i32
  call void @__asan_load4_noabort(i32 %648)
  %649 = load ptr, ptr %cfg.i.i838, align 8
  %write_readback.i.i839 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %649, i32 0, i32 1
  %650 = ptrtoint ptr %write_readback.i.i839 to i32
  call void @__asan_load1_noabort(i32 %650)
  %651 = load i8, ptr %write_readback.i.i839, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %651)
  %tobool.not.i.i840 = icmp eq i8 %651, 0
  br i1 %tobool.not.i.i840, label %rtl_write_dword.exit832._rtl8723e_set_bcn_ctrl_reg.exit845_crit_edge, label %if.then.i.i843

rtl_write_dword.exit832._rtl8723e_set_bcn_ctrl_reg.exit845_crit_edge: ; preds = %rtl_write_dword.exit832
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl8723e_set_bcn_ctrl_reg.exit845

if.then.i.i843:                                   ; preds = %rtl_write_dword.exit832
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i841 = getelementptr inbounds %struct.rtl_priv, ptr %643, i32 0, i32 13, i32 9
  %652 = ptrtoint ptr %read8_sync.i.i841 to i32
  call void @__asan_load4_noabort(i32 %652)
  %653 = load ptr, ptr %read8_sync.i.i841, align 4
  %call.i.i842 = tail call zeroext i8 %653(ptr noundef %643, i32 noundef 1360) #8
  br label %_rtl8723e_set_bcn_ctrl_reg.exit845

_rtl8723e_set_bcn_ctrl_reg.exit845:               ; preds = %if.then.i.i843, %rtl_write_dword.exit832._rtl8723e_set_bcn_ctrl_reg.exit845_crit_edge
  %654 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %654)
  %655 = load ptr, ptr %priv, align 8
  %read8_sync.i.i847 = getelementptr inbounds %struct.rtl_priv, ptr %655, i32 0, i32 13, i32 9
  %656 = ptrtoint ptr %read8_sync.i.i847 to i32
  call void @__asan_load4_noabort(i32 %656)
  %657 = load ptr, ptr %read8_sync.i.i847, align 4
  %call.i.i848 = tail call zeroext i8 %657(ptr noundef %655, i32 noundef 1058) #8
  %658 = or i8 %call.i.i848, 64
  %write8_async.i.i849 = getelementptr inbounds %struct.rtl_priv, ptr %655, i32 0, i32 13, i32 5
  %659 = ptrtoint ptr %write8_async.i.i849 to i32
  call void @__asan_load4_noabort(i32 %659)
  %660 = load ptr, ptr %write8_async.i.i849, align 4
  tail call void %660(ptr noundef %655, i32 noundef 1058, i8 noundef zeroext %658) #8
  %cfg.i.i850 = getelementptr inbounds %struct.rtl_priv, ptr %655, i32 0, i32 32
  %661 = ptrtoint ptr %cfg.i.i850 to i32
  call void @__asan_load4_noabort(i32 %661)
  %662 = load ptr, ptr %cfg.i.i850, align 8
  %write_readback.i.i851 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %662, i32 0, i32 1
  %663 = ptrtoint ptr %write_readback.i.i851 to i32
  call void @__asan_load1_noabort(i32 %663)
  %664 = load i8, ptr %write_readback.i.i851, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %664)
  %tobool.not.i.i852 = icmp eq i8 %664, 0
  br i1 %tobool.not.i.i852, label %_rtl8723e_set_bcn_ctrl_reg.exit845.rtl_write_byte.exit.i857_crit_edge, label %if.then.i.i854

_rtl8723e_set_bcn_ctrl_reg.exit845.rtl_write_byte.exit.i857_crit_edge: ; preds = %_rtl8723e_set_bcn_ctrl_reg.exit845
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit.i857

if.then.i.i854:                                   ; preds = %_rtl8723e_set_bcn_ctrl_reg.exit845
  call void @__sanitizer_cov_trace_pc() #10
  %665 = ptrtoint ptr %read8_sync.i.i847 to i32
  call void @__asan_load4_noabort(i32 %665)
  %666 = load ptr, ptr %read8_sync.i.i847, align 4
  %call.i13.i853 = tail call zeroext i8 %666(ptr noundef %655, i32 noundef 1058) #8
  br label %rtl_write_byte.exit.i857

rtl_write_byte.exit.i857:                         ; preds = %if.then.i.i854, %_rtl8723e_set_bcn_ctrl_reg.exit845.rtl_write_byte.exit.i857_crit_edge
  %667 = ptrtoint ptr %write8_async.i.i849 to i32
  call void @__asan_load4_noabort(i32 %667)
  %668 = load ptr, ptr %write8_async.i.i849, align 4
  tail call void %668(ptr noundef %655, i32 noundef 1345, i8 noundef zeroext -1) #8
  %669 = ptrtoint ptr %cfg.i.i850 to i32
  call void @__asan_load4_noabort(i32 %669)
  %670 = load ptr, ptr %cfg.i.i850, align 8
  %write_readback.i16.i855 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %670, i32 0, i32 1
  %671 = ptrtoint ptr %write_readback.i16.i855 to i32
  call void @__asan_load1_noabort(i32 %671)
  %672 = load i8, ptr %write_readback.i16.i855, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %672)
  %tobool.not.i17.i856 = icmp eq i8 %672, 0
  br i1 %tobool.not.i17.i856, label %rtl_write_byte.exit.i857.rtl_write_byte.exit21.i863_crit_edge, label %if.then.i20.i859

rtl_write_byte.exit.i857.rtl_write_byte.exit21.i863_crit_edge: ; preds = %rtl_write_byte.exit.i857
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit21.i863

if.then.i20.i859:                                 ; preds = %rtl_write_byte.exit.i857
  call void @__sanitizer_cov_trace_pc() #10
  %673 = ptrtoint ptr %read8_sync.i.i847 to i32
  call void @__asan_load4_noabort(i32 %673)
  %674 = load ptr, ptr %read8_sync.i.i847, align 4
  %call.i19.i858 = tail call zeroext i8 %674(ptr noundef %655, i32 noundef 1345) #8
  br label %rtl_write_byte.exit21.i863

rtl_write_byte.exit21.i863:                       ; preds = %if.then.i20.i859, %rtl_write_byte.exit.i857.rtl_write_byte.exit21.i863_crit_edge
  %675 = ptrtoint ptr %read8_sync.i.i847 to i32
  call void @__asan_load4_noabort(i32 %675)
  %676 = load ptr, ptr %read8_sync.i.i847, align 4
  %call.i23.i860 = tail call zeroext i8 %676(ptr noundef %655, i32 noundef 1346) #8
  %677 = or i8 %call.i23.i860, 2
  %678 = ptrtoint ptr %write8_async.i.i849 to i32
  call void @__asan_load4_noabort(i32 %678)
  %679 = load ptr, ptr %write8_async.i.i849, align 4
  tail call void %679(ptr noundef %655, i32 noundef 1346, i8 noundef zeroext %677) #8
  %680 = ptrtoint ptr %cfg.i.i850 to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load ptr, ptr %cfg.i.i850, align 8
  %write_readback.i26.i861 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %681, i32 0, i32 1
  %682 = ptrtoint ptr %write_readback.i26.i861 to i32
  call void @__asan_load1_noabort(i32 %682)
  %683 = load i8, ptr %write_readback.i26.i861, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %683)
  %tobool.not.i27.i862 = icmp eq i8 %683, 0
  br i1 %tobool.not.i27.i862, label %rtl_write_byte.exit21.i863.sw.epilog346_crit_edge, label %if.then.i30.i865

rtl_write_byte.exit21.i863.sw.epilog346_crit_edge: ; preds = %rtl_write_byte.exit21.i863
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog346

if.then.i30.i865:                                 ; preds = %rtl_write_byte.exit21.i863
  call void @__sanitizer_cov_trace_pc() #10
  %684 = ptrtoint ptr %read8_sync.i.i847 to i32
  call void @__asan_load4_noabort(i32 %684)
  %685 = load ptr, ptr %read8_sync.i.i847, align 4
  %call.i29.i864 = tail call zeroext i8 %685(ptr noundef %655, i32 noundef 1346) #8
  br label %sw.epilog346

if.end317.critedge:                               ; preds = %sw.bb304
  %reg_bcn_ctrl_val.i867 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %686 = ptrtoint ptr %reg_bcn_ctrl_val.i867 to i32
  call void @__asan_load4_noabort(i32 %686)
  %687 = load i32, ptr %reg_bcn_ctrl_val.i867, align 4
  %and.i868 = and i32 %687, -9
  store i32 %and.i868, ptr %reg_bcn_ctrl_val.i867, align 4
  %conv6.i869 = trunc i32 %and.i868 to i8
  %write8_async.i.i870 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %688 = ptrtoint ptr %write8_async.i.i870 to i32
  call void @__asan_load4_noabort(i32 %688)
  %689 = load ptr, ptr %write8_async.i.i870, align 4
  tail call void %689(ptr noundef %1, i32 noundef 1360, i8 noundef zeroext %conv6.i869) #8
  %cfg.i.i871 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %690 = ptrtoint ptr %cfg.i.i871 to i32
  call void @__asan_load4_noabort(i32 %690)
  %691 = load ptr, ptr %cfg.i.i871, align 8
  %write_readback.i.i872 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %691, i32 0, i32 1
  %692 = ptrtoint ptr %write_readback.i.i872 to i32
  call void @__asan_load1_noabort(i32 %692)
  %693 = load i8, ptr %write_readback.i.i872, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %693)
  %tobool.not.i.i873 = icmp eq i8 %693, 0
  br i1 %tobool.not.i.i873, label %if.end317.critedge._rtl8723e_set_bcn_ctrl_reg.exit878_crit_edge, label %if.then.i.i876

if.end317.critedge._rtl8723e_set_bcn_ctrl_reg.exit878_crit_edge: ; preds = %if.end317.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl8723e_set_bcn_ctrl_reg.exit878

if.then.i.i876:                                   ; preds = %if.end317.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i874 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %694 = ptrtoint ptr %read8_sync.i.i874 to i32
  call void @__asan_load4_noabort(i32 %694)
  %695 = load ptr, ptr %read8_sync.i.i874, align 4
  %call.i.i875 = tail call zeroext i8 %695(ptr noundef %1, i32 noundef 1360) #8
  br label %_rtl8723e_set_bcn_ctrl_reg.exit878

_rtl8723e_set_bcn_ctrl_reg.exit878:               ; preds = %if.then.i.i876, %if.end317.critedge._rtl8723e_set_bcn_ctrl_reg.exit878_crit_edge
  %tsf.c537 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 49
  %696 = ptrtoint ptr %tsf.c537 to i32
  call void @__asan_load8_noabort(i32 %696)
  %697 = load i64, ptr %tsf.c537, align 8
  %conv310.c538 = trunc i64 %697 to i32
  %write32_async.i879 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %698 = ptrtoint ptr %write32_async.i879 to i32
  call void @__asan_load4_noabort(i32 %698)
  %699 = load ptr, ptr %write32_async.i879, align 4
  tail call void %699(ptr noundef %1, i32 noundef 1376, i32 noundef %conv310.c538) #8
  %700 = ptrtoint ptr %cfg.i.i871 to i32
  call void @__asan_load4_noabort(i32 %700)
  %701 = load ptr, ptr %cfg.i.i871, align 8
  %write_readback.i881 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %701, i32 0, i32 1
  %702 = ptrtoint ptr %write_readback.i881 to i32
  call void @__asan_load1_noabort(i32 %702)
  %703 = load i8, ptr %write_readback.i881, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %703)
  %tobool.not.i882 = icmp eq i8 %703, 0
  br i1 %tobool.not.i882, label %_rtl8723e_set_bcn_ctrl_reg.exit878.rtl_write_dword.exit886_crit_edge, label %if.then.i885

_rtl8723e_set_bcn_ctrl_reg.exit878.rtl_write_dword.exit886_crit_edge: ; preds = %_rtl8723e_set_bcn_ctrl_reg.exit878
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit886

if.then.i885:                                     ; preds = %_rtl8723e_set_bcn_ctrl_reg.exit878
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i883 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %704 = ptrtoint ptr %read32_sync.i883 to i32
  call void @__asan_load4_noabort(i32 %704)
  %705 = load ptr, ptr %read32_sync.i883, align 4
  %call.i884 = tail call i32 %705(ptr noundef %1, i32 noundef 1376) #8
  br label %rtl_write_dword.exit886

rtl_write_dword.exit886:                          ; preds = %if.then.i885, %_rtl8723e_set_bcn_ctrl_reg.exit878.rtl_write_dword.exit886_crit_edge
  %706 = ptrtoint ptr %tsf.c537 to i32
  call void @__asan_load8_noabort(i32 %706)
  %707 = load i64, ptr %tsf.c537, align 8
  %shr312.c539 = lshr i64 %707, 32
  %conv314.c540 = trunc i64 %shr312.c539 to i32
  %708 = ptrtoint ptr %write32_async.i879 to i32
  call void @__asan_load4_noabort(i32 %708)
  %709 = load ptr, ptr %write32_async.i879, align 4
  tail call void %709(ptr noundef %1, i32 noundef 1380, i32 noundef %conv314.c540) #8
  %710 = ptrtoint ptr %cfg.i.i871 to i32
  call void @__asan_load4_noabort(i32 %710)
  %711 = load ptr, ptr %cfg.i.i871, align 8
  %write_readback.i889 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %711, i32 0, i32 1
  %712 = ptrtoint ptr %write_readback.i889 to i32
  call void @__asan_load1_noabort(i32 %712)
  %713 = load i8, ptr %write_readback.i889, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %713)
  %tobool.not.i890 = icmp eq i8 %713, 0
  br i1 %tobool.not.i890, label %rtl_write_dword.exit886.rtl_write_dword.exit894_crit_edge, label %if.then.i893

rtl_write_dword.exit886.rtl_write_dword.exit894_crit_edge: ; preds = %rtl_write_dword.exit886
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit894

if.then.i893:                                     ; preds = %rtl_write_dword.exit886
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i891 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %714 = ptrtoint ptr %read32_sync.i891 to i32
  call void @__asan_load4_noabort(i32 %714)
  %715 = load ptr, ptr %read32_sync.i891, align 4
  %call.i892 = tail call i32 %715(ptr noundef %1, i32 noundef 1380) #8
  br label %rtl_write_dword.exit894

rtl_write_dword.exit894:                          ; preds = %if.then.i893, %rtl_write_dword.exit886.rtl_write_dword.exit894_crit_edge
  %716 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %716)
  %717 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i896 = getelementptr inbounds %struct.rtl_priv, ptr %717, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %718 = ptrtoint ptr %reg_bcn_ctrl_val.i896 to i32
  call void @__asan_load4_noabort(i32 %718)
  %719 = load i32, ptr %reg_bcn_ctrl_val.i896, align 4
  %or.i897 = or i32 %719, 8
  store i32 %or.i897, ptr %reg_bcn_ctrl_val.i896, align 4
  %conv6.i898 = trunc i32 %or.i897 to i8
  %write8_async.i.i899 = getelementptr inbounds %struct.rtl_priv, ptr %717, i32 0, i32 13, i32 5
  %720 = ptrtoint ptr %write8_async.i.i899 to i32
  call void @__asan_load4_noabort(i32 %720)
  %721 = load ptr, ptr %write8_async.i.i899, align 4
  tail call void %721(ptr noundef %717, i32 noundef 1360, i8 noundef zeroext %conv6.i898) #8
  %cfg.i.i900 = getelementptr inbounds %struct.rtl_priv, ptr %717, i32 0, i32 32
  %722 = ptrtoint ptr %cfg.i.i900 to i32
  call void @__asan_load4_noabort(i32 %722)
  %723 = load ptr, ptr %cfg.i.i900, align 8
  %write_readback.i.i901 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %723, i32 0, i32 1
  %724 = ptrtoint ptr %write_readback.i.i901 to i32
  call void @__asan_load1_noabort(i32 %724)
  %725 = load i8, ptr %write_readback.i.i901, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %725)
  %tobool.not.i.i902 = icmp eq i8 %725, 0
  br i1 %tobool.not.i.i902, label %rtl_write_dword.exit894.sw.epilog346_crit_edge, label %if.then.i.i905

rtl_write_dword.exit894.sw.epilog346_crit_edge:   ; preds = %rtl_write_dword.exit894
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog346

if.then.i.i905:                                   ; preds = %rtl_write_dword.exit894
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i903 = getelementptr inbounds %struct.rtl_priv, ptr %717, i32 0, i32 13, i32 9
  %726 = ptrtoint ptr %read8_sync.i.i903 to i32
  call void @__asan_load4_noabort(i32 %726)
  %727 = load ptr, ptr %read8_sync.i.i903, align 4
  %call.i.i904 = tail call zeroext i8 %727(ptr noundef %717, i32 noundef 1360) #8
  br label %sw.epilog346

sw.bb318:                                         ; preds = %entry
  %728 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %728)
  %729 = load i8, ptr %val, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %729)
  %tobool319.not = icmp eq i8 %729, 0
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rpwm_val321) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fw_pwrmode) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fw_current_inps) #8
  br i1 %tobool319.not, label %if.else333, label %if.then323

if.then323:                                       ; preds = %sw.bb318
  call void @__sanitizer_cov_trace_pc() #10
  %730 = ptrtoint ptr %rpwm_val321 to i32
  call void @__asan_store1_noabort(i32 %730)
  store i8 2, ptr %rpwm_val321, align 1
  %731 = ptrtoint ptr %fw_current_inps to i32
  call void @__asan_store1_noabort(i32 %731)
  store i8 1, ptr %fw_current_inps, align 1
  %cfg324 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %732 = ptrtoint ptr %cfg324 to i32
  call void @__asan_load4_noabort(i32 %732)
  %733 = load ptr, ptr %cfg324, align 8
  %ops325 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %733, i32 0, i32 4
  %734 = ptrtoint ptr %ops325 to i32
  call void @__asan_load4_noabort(i32 %734)
  %735 = load ptr, ptr %ops325, align 4
  %set_hw_reg326 = getelementptr inbounds %struct.rtl_hal_ops, ptr %735, i32 0, i32 20
  %736 = ptrtoint ptr %set_hw_reg326 to i32
  call void @__asan_load4_noabort(i32 %736)
  %737 = load ptr, ptr %set_hw_reg326, align 4
  call void %737(ptr noundef %hw, i8 noundef zeroext 65, ptr noundef nonnull %fw_current_inps) #8
  %738 = ptrtoint ptr %cfg324 to i32
  call void @__asan_load4_noabort(i32 %738)
  %739 = load ptr, ptr %cfg324, align 8
  %ops328 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %739, i32 0, i32 4
  %740 = ptrtoint ptr %ops328 to i32
  call void @__asan_load4_noabort(i32 %740)
  %741 = load ptr, ptr %ops328, align 4
  %set_hw_reg329 = getelementptr inbounds %struct.rtl_hal_ops, ptr %741, i32 0, i32 20
  %742 = ptrtoint ptr %set_hw_reg329 to i32
  call void @__asan_load4_noabort(i32 %742)
  %743 = load ptr, ptr %set_hw_reg329, align 4
  %fwctrl_psmode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 11
  call void %743(ptr noundef %hw, i8 noundef zeroext 61, ptr noundef %fwctrl_psmode) #8
  %744 = ptrtoint ptr %cfg324 to i32
  call void @__asan_load4_noabort(i32 %744)
  %745 = load ptr, ptr %cfg324, align 8
  %ops331 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %745, i32 0, i32 4
  %746 = ptrtoint ptr %ops331 to i32
  call void @__asan_load4_noabort(i32 %746)
  %747 = load ptr, ptr %ops331, align 4
  %set_hw_reg332 = getelementptr inbounds %struct.rtl_hal_ops, ptr %747, i32 0, i32 20
  %748 = ptrtoint ptr %set_hw_reg332 to i32
  call void @__asan_load4_noabort(i32 %748)
  %749 = load ptr, ptr %set_hw_reg332, align 4
  call void %749(ptr noundef %hw, i8 noundef zeroext 60, ptr noundef nonnull %rpwm_val321) #8
  br label %if.end343

if.else333:                                       ; preds = %sw.bb318
  call void @__sanitizer_cov_trace_pc() #10
  %750 = ptrtoint ptr %rpwm_val321 to i32
  call void @__asan_store1_noabort(i32 %750)
  store i8 12, ptr %rpwm_val321, align 1
  %751 = ptrtoint ptr %fw_pwrmode to i32
  call void @__asan_store1_noabort(i32 %751)
  store i8 0, ptr %fw_pwrmode, align 1
  %752 = ptrtoint ptr %fw_current_inps to i32
  call void @__asan_store1_noabort(i32 %752)
  store i8 0, ptr %fw_current_inps, align 1
  %cfg334 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %753 = ptrtoint ptr %cfg334 to i32
  call void @__asan_load4_noabort(i32 %753)
  %754 = load ptr, ptr %cfg334, align 8
  %ops335 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %754, i32 0, i32 4
  %755 = ptrtoint ptr %ops335 to i32
  call void @__asan_load4_noabort(i32 %755)
  %756 = load ptr, ptr %ops335, align 4
  %set_hw_reg336 = getelementptr inbounds %struct.rtl_hal_ops, ptr %756, i32 0, i32 20
  %757 = ptrtoint ptr %set_hw_reg336 to i32
  call void @__asan_load4_noabort(i32 %757)
  %758 = load ptr, ptr %set_hw_reg336, align 4
  call void %758(ptr noundef %hw, i8 noundef zeroext 60, ptr noundef nonnull %rpwm_val321) #8
  %759 = ptrtoint ptr %cfg334 to i32
  call void @__asan_load4_noabort(i32 %759)
  %760 = load ptr, ptr %cfg334, align 8
  %ops338 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %760, i32 0, i32 4
  %761 = ptrtoint ptr %ops338 to i32
  call void @__asan_load4_noabort(i32 %761)
  %762 = load ptr, ptr %ops338, align 4
  %set_hw_reg339 = getelementptr inbounds %struct.rtl_hal_ops, ptr %762, i32 0, i32 20
  %763 = ptrtoint ptr %set_hw_reg339 to i32
  call void @__asan_load4_noabort(i32 %763)
  %764 = load ptr, ptr %set_hw_reg339, align 4
  call void %764(ptr noundef %hw, i8 noundef zeroext 61, ptr noundef nonnull %fw_pwrmode) #8
  %765 = ptrtoint ptr %cfg334 to i32
  call void @__asan_load4_noabort(i32 %765)
  %766 = load ptr, ptr %cfg334, align 8
  %ops341 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %766, i32 0, i32 4
  %767 = ptrtoint ptr %ops341 to i32
  call void @__asan_load4_noabort(i32 %767)
  %768 = load ptr, ptr %ops341, align 4
  %set_hw_reg342 = getelementptr inbounds %struct.rtl_hal_ops, ptr %768, i32 0, i32 20
  %769 = ptrtoint ptr %set_hw_reg342 to i32
  call void @__asan_load4_noabort(i32 %769)
  %770 = load ptr, ptr %set_hw_reg342, align 4
  call void %770(ptr noundef %hw, i8 noundef zeroext 65, ptr noundef nonnull %fw_current_inps) #8
  br label %if.end343

if.end343:                                        ; preds = %if.else333, %if.then323
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fw_current_inps) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fw_pwrmode) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rpwm_val321) #8
  br label %sw.epilog346

sw.default344:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %variable to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %conv) #8
  br label %sw.epilog346

sw.epilog346:                                     ; preds = %sw.default344, %if.end343, %if.then.i.i905, %rtl_write_dword.exit894.sw.epilog346_crit_edge, %if.then.i30.i865, %rtl_write_byte.exit21.i863.sw.epilog346_crit_edge, %if.then.i794, %sw.bb295.sw.epilog346_crit_edge, %sw.bb294, %if.end293, %sw.bb264, %if.end263, %if.then.i713, %if.else253.sw.epilog346_crit_edge, %if.then.i705, %if.then252.sw.epilog346_crit_edge, %if.then.i695, %sw.bb246.sw.epilog346_crit_edge, %sw.bb244, %sw.bb243, %sw.bb242, %if.then.i687, %sw.bb241.sw.epilog346_crit_edge, %if.then.i679, %sw.bb233.sw.epilog346_crit_edge, %rtl_write_dword.exit, %if.then.i666, %if.end228.sw.epilog346_crit_edge, %if.end185, %if.end176, %if.then.i648, %sw.bb90.sw.epilog346_crit_edge, %if.then.i640, %if.end79.sw.epilog346_crit_edge, %sw.bb69.sw.epilog346_crit_edge, %if.then.i632, %sw.bb58.sw.epilog346_crit_edge, %for.end57, %if.then.i616, %if.else.sw.epilog346_crit_edge, %if.then.i609, %if.then.sw.epilog346_crit_edge, %if.then.i571.5, %rtl_write_byte.exit572.4.sw.epilog346_crit_edge, %if.then.i563, %while.end.sw.epilog346_crit_edge, %if.then.i.5, %rtl_write_byte.exit.4.sw.epilog346_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723_dm_init_edca_turbo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl8723e_phy_set_io_cmd(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723e_dm_rf_saving(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723e_set_fw_pwrmode_cmd(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723e_set_fw_rsvdpagepkt(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723e_set_fw_joinbss_report_cmd(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723e_set_p2p_ps_offload_cmd(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723e_enable_hw_security_config(ptr noundef %hw) local_unnamed_addr #0 align 64 {
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 3, ptr noundef nonnull @.str.7, i32 noundef %3, i32 noundef %5) #8
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
  %11 = load i8, ptr %sw_crypto, align 8, !range !182
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
  %13 = load i8, ptr %sec, align 8, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool3.not = icmp eq i8 %13, 0
  br i1 %tobool3.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 3, ptr noundef nonnull @.str.8) #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %use_defaultkey = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 2
  %14 = ptrtoint ptr %use_defaultkey to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %use_defaultkey, align 2, !range !182
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
  %23 = load i8, ptr %write_readback.i, align 1, !range !182
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 3, ptr noundef nonnull @.str.9, i32 noundef %conv15) #8
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
define dso_local i32 @rtl8723e_hw_init(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mac80211 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9
  %being_init_adapter = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 4
  %2 = ptrtoint ptr %being_init_adapter to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %being_init_adapter, align 1
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !183
  tail call void @trace_hardirqs_on() #8
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !184
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
  %16 = load i8, ptr %write_readback.i.i, align 1, !range !182
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
  %read8_sync.i166.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 13, i32 9
  %19 = ptrtoint ptr %read8_sync.i166.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read8_sync.i166.i, align 4
  %call.i167.i = tail call zeroext i8 %20(ptr noundef %10, i32 noundef 256) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i167.i)
  %cmp.i = icmp eq i8 %call.i167.i, -1
  %call4.i = tail call zeroext i1 @rtl_hal_pwrseqcmdparsing(ptr noundef %10, i8 noundef zeroext -1, i8 noundef zeroext 15, i8 noundef zeroext 4, ptr noundef nonnull @rtl8723A_card_enable_flow) #8
  br i1 %call4.i, label %if.end6.i, label %rtl_write_byte.exit.i.do.end14_crit_edge

rtl_write_byte.exit.i.do.end14_crit_edge:         ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14

if.end6.i:                                        ; preds = %rtl_write_byte.exit.i
  %21 = ptrtoint ptr %read8_sync.i166.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read8_sync.i166.i, align 4
  %call.i169.i = tail call zeroext i8 %22(ptr noundef %10, i32 noundef 770) #8
  %23 = or i8 %call.i169.i, 16
  %24 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %25(ptr noundef %10, i32 noundef 770, i8 noundef zeroext %23) #8
  %26 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i172.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %write_readback.i172.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %write_readback.i172.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i173.i = icmp eq i8 %29, 0
  br i1 %tobool.not.i173.i, label %if.end6.i.rtl_write_byte.exit177.i_crit_edge, label %if.then.i176.i

if.end6.i.rtl_write_byte.exit177.i_crit_edge:     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit177.i

if.then.i176.i:                                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %read8_sync.i166.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read8_sync.i166.i, align 4
  %call.i175.i = tail call zeroext i8 %31(ptr noundef %10, i32 noundef 770) #8
  br label %rtl_write_byte.exit177.i

rtl_write_byte.exit177.i:                         ; preds = %if.then.i176.i, %if.end6.i.rtl_write_byte.exit177.i_crit_edge
  %32 = ptrtoint ptr %read8_sync.i166.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read8_sync.i166.i, align 4
  %call.i179.i = tail call zeroext i8 %33(ptr noundef %10, i32 noundef 873) #8
  %34 = or i8 %call.i179.i, -128
  %35 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %36(ptr noundef %10, i32 noundef 873, i8 noundef zeroext %34) #8
  %37 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i182.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %write_readback.i182.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %write_readback.i182.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i183.i = icmp eq i8 %40, 0
  br i1 %tobool.not.i183.i, label %rtl_write_byte.exit177.i.rtl_write_byte.exit187.i_crit_edge, label %if.then.i186.i

rtl_write_byte.exit177.i.rtl_write_byte.exit187.i_crit_edge: ; preds = %rtl_write_byte.exit177.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit187.i

if.then.i186.i:                                   ; preds = %rtl_write_byte.exit177.i
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %read8_sync.i166.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %read8_sync.i166.i, align 4
  %call.i185.i = tail call zeroext i8 %42(ptr noundef %10, i32 noundef 873) #8
  br label %rtl_write_byte.exit187.i

rtl_write_byte.exit187.i:                         ; preds = %if.then.i186.i, %rtl_write_byte.exit177.i.rtl_write_byte.exit187.i_crit_edge
  %write16_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 13, i32 6
  %read16_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 13, i32 10
  br label %do.body.i

do.body.i:                                        ; preds = %rtl_write_word.exit224.i.do.body.i_crit_edge, %rtl_write_byte.exit187.i
  %retry.0.i = phi i16 [ 0, %rtl_write_byte.exit187.i ], [ %inc.i, %rtl_write_word.exit224.i.do.body.i_crit_edge ]
  %43 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %44(ptr noundef %10, i32 noundef 856, i16 noundef zeroext 94) #8
  %45 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i189.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %write_readback.i189.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %write_readback.i189.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i190.i = icmp eq i8 %48, 0
  br i1 %tobool.not.i190.i, label %do.body.i.rtl_write_word.exit.i_crit_edge, label %if.then.i192.i

do.body.i.rtl_write_word.exit.i_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit.i

if.then.i192.i:                                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %read16_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %read16_sync.i.i, align 4
  %call.i191.i = tail call zeroext i16 %50(ptr noundef %10, i32 noundef 856) #8
  br label %rtl_write_word.exit.i

rtl_write_word.exit.i:                            ; preds = %if.then.i192.i, %do.body.i.rtl_write_word.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 21474800) #8
  %52 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %53(ptr noundef %10, i32 noundef 854, i16 noundef zeroext -15744) #8
  %54 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i195.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %write_readback.i195.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %write_readback.i195.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i196.i = icmp eq i8 %57, 0
  br i1 %tobool.not.i196.i, label %rtl_write_word.exit.i.rtl_write_word.exit200.i_crit_edge, label %if.then.i199.i

rtl_write_word.exit.i.rtl_write_word.exit200.i_crit_edge: ; preds = %rtl_write_word.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit200.i

if.then.i199.i:                                   ; preds = %rtl_write_word.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %read16_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %read16_sync.i.i, align 4
  %call.i198.i = tail call zeroext i16 %59(ptr noundef %10, i32 noundef 854) #8
  br label %rtl_write_word.exit200.i

rtl_write_word.exit200.i:                         ; preds = %if.then.i199.i, %rtl_write_word.exit.i.rtl_write_word.exit200.i_crit_edge
  %60 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %61(ptr noundef %10, i32 noundef 852, i16 noundef zeroext -15728) #8
  %62 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i203.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %write_readback.i203.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %write_readback.i203.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool.not.i204.i = icmp eq i8 %65, 0
  br i1 %tobool.not.i204.i, label %rtl_write_word.exit200.i.rtl_write_word.exit208.i_crit_edge, label %if.then.i207.i

rtl_write_word.exit200.i.rtl_write_word.exit208.i_crit_edge: ; preds = %rtl_write_word.exit200.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit208.i

if.then.i207.i:                                   ; preds = %rtl_write_word.exit200.i
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %read16_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %read16_sync.i.i, align 4
  %call.i206.i = tail call zeroext i16 %67(ptr noundef %10, i32 noundef 852) #8
  br label %rtl_write_word.exit208.i

rtl_write_word.exit208.i:                         ; preds = %if.then.i207.i, %rtl_write_word.exit200.i.rtl_write_word.exit208.i_crit_edge
  %68 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %69(ptr noundef %10, i32 noundef 856, i16 noundef zeroext 62) #8
  %70 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i211.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %write_readback.i211.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %write_readback.i211.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool.not.i212.i = icmp eq i8 %73, 0
  br i1 %tobool.not.i212.i, label %rtl_write_word.exit208.i.rtl_write_word.exit216.i_crit_edge, label %if.then.i215.i

rtl_write_word.exit208.i.rtl_write_word.exit216.i_crit_edge: ; preds = %rtl_write_word.exit208.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit216.i

if.then.i215.i:                                   ; preds = %rtl_write_word.exit208.i
  call void @__sanitizer_cov_trace_pc() #10
  %74 = ptrtoint ptr %read16_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %read16_sync.i.i, align 4
  %call.i214.i = tail call zeroext i16 %75(ptr noundef %10, i32 noundef 856) #8
  br label %rtl_write_word.exit216.i

rtl_write_word.exit216.i:                         ; preds = %if.then.i215.i, %rtl_write_word.exit208.i.rtl_write_word.exit216.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %76(i32 noundef 21474800) #8
  %77 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %78(ptr noundef %10, i32 noundef 856, i16 noundef zeroext 94) #8
  %79 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i219.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %write_readback.i219.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %write_readback.i219.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool.not.i220.i = icmp eq i8 %82, 0
  br i1 %tobool.not.i220.i, label %rtl_write_word.exit216.i.rtl_write_word.exit224.i_crit_edge, label %if.then.i223.i

rtl_write_word.exit216.i.rtl_write_word.exit224.i_crit_edge: ; preds = %rtl_write_word.exit216.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit224.i

if.then.i223.i:                                   ; preds = %rtl_write_word.exit216.i
  call void @__sanitizer_cov_trace_pc() #10
  %83 = ptrtoint ptr %read16_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %read16_sync.i.i, align 4
  %call.i222.i = tail call zeroext i16 %84(ptr noundef %10, i32 noundef 856) #8
  br label %rtl_write_word.exit224.i

rtl_write_word.exit224.i:                         ; preds = %if.then.i223.i, %rtl_write_word.exit216.i.rtl_write_word.exit224.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %85 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %85(i32 noundef 21474800) #8
  %86 = ptrtoint ptr %read16_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %read16_sync.i.i, align 4
  %call.i226.i = tail call zeroext i16 %87(ptr noundef %10, i32 noundef 854) #8
  %inc.i = add nuw nsw i16 %retry.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -15728, i16 %call.i226.i)
  %cmp16.not.i = icmp ne i16 %call.i226.i, -15728
  call void @__sanitizer_cov_trace_const_cmp2(i16 99, i16 %retry.0.i)
  %cmp19.i = icmp ult i16 %retry.0.i, 99
  %or.cond.i = select i1 %cmp16.not.i, i1 %cmp19.i, i1 false
  br i1 %or.cond.i, label %rtl_write_word.exit224.i.do.body.i_crit_edge, label %do.end.i

rtl_write_word.exit224.i.do.body.i_crit_edge:     ; preds = %rtl_write_word.exit224.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.end.i:                                         ; preds = %rtl_write_word.exit224.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 98, i16 %retry.0.i)
  %cmp22.i = icmp ugt i16 %retry.0.i, 98
  br i1 %cmp22.i, label %if.then24.i, label %if.end25.i

if.then24.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %10, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.34) #8
  br label %do.end14

if.end25.i:                                       ; preds = %do.end.i
  %88 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %89(ptr noundef %10, i32 noundef 256, i16 noundef zeroext 767) #8
  %90 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i229.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %write_readback.i229.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %write_readback.i229.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool.not.i230.i = icmp eq i8 %93, 0
  br i1 %tobool.not.i230.i, label %if.end25.i.rtl_write_word.exit234.i_crit_edge, label %if.then.i233.i

if.end25.i.rtl_write_word.exit234.i_crit_edge:    ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit234.i

if.then.i233.i:                                   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  %94 = ptrtoint ptr %read16_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %read16_sync.i.i, align 4
  %call.i232.i = tail call zeroext i16 %95(ptr noundef %10, i32 noundef 256) #8
  br label %rtl_write_word.exit234.i

rtl_write_word.exit234.i:                         ; preds = %if.then.i233.i, %if.end25.i.rtl_write_word.exit234.i_crit_edge
  %96 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %97(ptr noundef %10, i32 noundef 257, i16 noundef zeroext 6) #8
  %98 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i237.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %write_readback.i237.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %write_readback.i237.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool.not.i238.i = icmp eq i8 %101, 0
  br i1 %tobool.not.i238.i, label %rtl_write_word.exit234.i.rtl_write_word.exit242.i_crit_edge, label %if.then.i241.i

rtl_write_word.exit234.i.rtl_write_word.exit242.i_crit_edge: ; preds = %rtl_write_word.exit234.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit242.i

if.then.i241.i:                                   ; preds = %rtl_write_word.exit234.i
  call void @__sanitizer_cov_trace_pc() #10
  %102 = ptrtoint ptr %read16_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %read16_sync.i.i, align 4
  %call.i240.i = tail call zeroext i16 %103(ptr noundef %10, i32 noundef 257) #8
  br label %rtl_write_word.exit242.i

rtl_write_word.exit242.i:                         ; preds = %if.then.i241.i, %rtl_write_word.exit234.i.rtl_write_word.exit242.i_crit_edge
  br i1 %cmp.i, label %rtl_write_word.exit242.i.if.end30.i_crit_edge, label %if.then26.i

rtl_write_word.exit242.i.if.end30.i_crit_edge:    ; preds = %rtl_write_word.exit242.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.i

if.then26.i:                                      ; preds = %rtl_write_word.exit242.i
  %104 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %priv, align 8
  %write8_async.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %105, i32 0, i32 13, i32 5
  %106 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %107(ptr noundef %105, i32 noundef 256, i8 noundef zeroext -117) #8
  %cfg.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %105, i32 0, i32 32
  %108 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %write_readback.i.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %write_readback.i.i.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool.not.i.i.i = icmp eq i8 %111, 0
  br i1 %tobool.not.i.i.i, label %if.then26.i.rtl_write_byte.exit.i.i_crit_edge, label %if.then.i.i.i

if.then26.i.rtl_write_byte.exit.i.i_crit_edge:    ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %105, i32 0, i32 13, i32 9
  %112 = ptrtoint ptr %read8_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %read8_sync.i.i.i, align 4
  %call.i.i.i = tail call zeroext i8 %113(ptr noundef %105, i32 noundef 256) #8
  br label %rtl_write_byte.exit.i.i

rtl_write_byte.exit.i.i:                          ; preds = %if.then.i.i.i, %if.then26.i.rtl_write_byte.exit.i.i_crit_edge
  %write16_async.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %105, i32 0, i32 13, i32 6
  %114 = ptrtoint ptr %write16_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %write16_async.i.i.i, align 4
  tail call void %115(ptr noundef %105, i32 noundef 532, i16 noundef zeroext 0) #8
  %116 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i92.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %write_readback.i92.i.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %write_readback.i92.i.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool.not.i93.i.i = icmp eq i8 %119, 0
  br i1 %tobool.not.i93.i.i, label %rtl_write_byte.exit.i.i.rtl_write_word.exit.i.i_crit_edge, label %if.then.i95.i.i

rtl_write_byte.exit.i.i.rtl_write_word.exit.i.i_crit_edge: ; preds = %rtl_write_byte.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit.i.i

if.then.i95.i.i:                                  ; preds = %rtl_write_byte.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %105, i32 0, i32 13, i32 10
  %120 = ptrtoint ptr %read16_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %read16_sync.i.i.i, align 4
  %call.i94.i.i = tail call zeroext i16 %121(ptr noundef %105, i32 noundef 532) #8
  br label %rtl_write_word.exit.i.i

rtl_write_word.exit.i.i:                          ; preds = %if.then.i95.i.i, %rtl_write_byte.exit.i.i.rtl_write_word.exit.i.i_crit_edge
  %write32_async.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %105, i32 0, i32 13, i32 7
  %122 = ptrtoint ptr %write32_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %write32_async.i.i.i, align 4
  tail call void %123(ptr noundef %105, i32 noundef 512, i32 noundef -2136204247) #8
  %124 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i97.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %125, i32 0, i32 1
  %126 = ptrtoint ptr %write_readback.i97.i.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %write_readback.i97.i.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool.not.i98.i.i = icmp eq i8 %127, 0
  br i1 %tobool.not.i98.i.i, label %rtl_write_word.exit.i.i.rtl_write_dword.exit.i.i_crit_edge, label %if.then.i100.i.i

rtl_write_word.exit.i.i.rtl_write_dword.exit.i.i_crit_edge: ; preds = %rtl_write_word.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit.i.i

if.then.i100.i.i:                                 ; preds = %rtl_write_word.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %105, i32 0, i32 13, i32 11
  %128 = ptrtoint ptr %read32_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %read32_sync.i.i.i, align 4
  %call.i99.i.i = tail call i32 %129(ptr noundef %105, i32 noundef 512) #8
  br label %rtl_write_dword.exit.i.i

rtl_write_dword.exit.i.i:                         ; preds = %if.then.i100.i.i, %rtl_write_word.exit.i.i.rtl_write_dword.exit.i.i_crit_edge
  %130 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %131(ptr noundef %105, i32 noundef 532, i8 noundef zeroext 3) #8
  %132 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i103.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %133, i32 0, i32 1
  %134 = ptrtoint ptr %write_readback.i103.i.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %write_readback.i103.i.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool.not.i104.i.i = icmp eq i8 %135, 0
  br i1 %tobool.not.i104.i.i, label %rtl_write_dword.exit.i.i.rtl_write_byte.exit108.i.i_crit_edge, label %if.then.i107.i.i

rtl_write_dword.exit.i.i.rtl_write_byte.exit108.i.i_crit_edge: ; preds = %rtl_write_dword.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit108.i.i

if.then.i107.i.i:                                 ; preds = %rtl_write_dword.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i105.i.i = getelementptr inbounds %struct.rtl_priv, ptr %105, i32 0, i32 13, i32 9
  %136 = ptrtoint ptr %read8_sync.i105.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %read8_sync.i105.i.i, align 4
  %call.i106.i.i = tail call zeroext i8 %137(ptr noundef %105, i32 noundef 532) #8
  br label %rtl_write_byte.exit108.i.i

rtl_write_byte.exit108.i.i:                       ; preds = %if.then.i107.i.i, %rtl_write_dword.exit.i.i.rtl_write_byte.exit108.i.i_crit_edge
  %138 = ptrtoint ptr %write32_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %write32_async.i.i.i, align 4
  tail call void %139(ptr noundef %105, i32 noundef 276, i32 noundef 671023350) #8
  %140 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i111.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %141, i32 0, i32 1
  %142 = ptrtoint ptr %write_readback.i111.i.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %write_readback.i111.i.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool.not.i112.i.i = icmp eq i8 %143, 0
  br i1 %tobool.not.i112.i.i, label %rtl_write_byte.exit108.i.i.rtl_write_dword.exit116.i.i_crit_edge, label %if.then.i115.i.i

rtl_write_byte.exit108.i.i.rtl_write_dword.exit116.i.i_crit_edge: ; preds = %rtl_write_byte.exit108.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit116.i.i

if.then.i115.i.i:                                 ; preds = %rtl_write_byte.exit108.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i113.i.i = getelementptr inbounds %struct.rtl_priv, ptr %105, i32 0, i32 13, i32 11
  %144 = ptrtoint ptr %read32_sync.i113.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %read32_sync.i113.i.i, align 4
  %call.i114.i.i = tail call i32 %145(ptr noundef %105, i32 noundef 276) #8
  br label %rtl_write_dword.exit116.i.i

rtl_write_dword.exit116.i.i:                      ; preds = %if.then.i115.i.i, %rtl_write_byte.exit108.i.i.rtl_write_dword.exit116.i.i_crit_edge
  %146 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %147(ptr noundef %105, i32 noundef 521, i8 noundef zeroext -10) #8
  %148 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i119.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %149, i32 0, i32 1
  %150 = ptrtoint ptr %write_readback.i119.i.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %write_readback.i119.i.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %tobool.not.i120.i.i = icmp eq i8 %151, 0
  br i1 %tobool.not.i120.i.i, label %rtl_write_dword.exit116.i.i.rtl_write_byte.exit124.i.i_crit_edge, label %if.then.i123.i.i

rtl_write_dword.exit116.i.i.rtl_write_byte.exit124.i.i_crit_edge: ; preds = %rtl_write_dword.exit116.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit124.i.i

if.then.i123.i.i:                                 ; preds = %rtl_write_dword.exit116.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i121.i.i = getelementptr inbounds %struct.rtl_priv, ptr %105, i32 0, i32 13, i32 9
  %152 = ptrtoint ptr %read8_sync.i121.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %read8_sync.i121.i.i, align 4
  %call.i122.i.i = tail call zeroext i8 %153(ptr noundef %105, i32 noundef 521) #8
  br label %rtl_write_byte.exit124.i.i

rtl_write_byte.exit124.i.i:                       ; preds = %if.then.i123.i.i, %rtl_write_dword.exit116.i.i.rtl_write_byte.exit124.i.i_crit_edge
  %154 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %155(ptr noundef %105, i32 noundef 1060, i8 noundef zeroext -10) #8
  %156 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i127.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %157, i32 0, i32 1
  %158 = ptrtoint ptr %write_readback.i127.i.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %write_readback.i127.i.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %tobool.not.i128.i.i = icmp eq i8 %159, 0
  br i1 %tobool.not.i128.i.i, label %rtl_write_byte.exit124.i.i.rtl_write_byte.exit132.i.i_crit_edge, label %if.then.i131.i.i

rtl_write_byte.exit124.i.i.rtl_write_byte.exit132.i.i_crit_edge: ; preds = %rtl_write_byte.exit124.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit132.i.i

if.then.i131.i.i:                                 ; preds = %rtl_write_byte.exit124.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i129.i.i = getelementptr inbounds %struct.rtl_priv, ptr %105, i32 0, i32 13, i32 9
  %160 = ptrtoint ptr %read8_sync.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %read8_sync.i129.i.i, align 4
  %call.i130.i.i = tail call zeroext i8 %161(ptr noundef %105, i32 noundef 1060) #8
  br label %rtl_write_byte.exit132.i.i

rtl_write_byte.exit132.i.i:                       ; preds = %if.then.i131.i.i, %rtl_write_byte.exit124.i.i.rtl_write_byte.exit132.i.i_crit_edge
  %162 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %163(ptr noundef %105, i32 noundef 1061, i8 noundef zeroext -10) #8
  %164 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i135.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %165, i32 0, i32 1
  %166 = ptrtoint ptr %write_readback.i135.i.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %write_readback.i135.i.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %167)
  %tobool.not.i136.i.i = icmp eq i8 %167, 0
  br i1 %tobool.not.i136.i.i, label %rtl_write_byte.exit132.i.i.rtl_write_byte.exit140.i.i_crit_edge, label %if.then.i139.i.i

rtl_write_byte.exit132.i.i.rtl_write_byte.exit140.i.i_crit_edge: ; preds = %rtl_write_byte.exit132.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit140.i.i

if.then.i139.i.i:                                 ; preds = %rtl_write_byte.exit132.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i137.i.i = getelementptr inbounds %struct.rtl_priv, ptr %105, i32 0, i32 13, i32 9
  %168 = ptrtoint ptr %read8_sync.i137.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %read8_sync.i137.i.i, align 4
  %call.i138.i.i = tail call zeroext i8 %169(ptr noundef %105, i32 noundef 1061) #8
  br label %rtl_write_byte.exit140.i.i

rtl_write_byte.exit140.i.i:                       ; preds = %if.then.i139.i.i, %rtl_write_byte.exit132.i.i.rtl_write_byte.exit140.i.i_crit_edge
  %170 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %171(ptr noundef %105, i32 noundef 1117, i8 noundef zeroext -10) #8
  %172 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i143.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %173, i32 0, i32 1
  %174 = ptrtoint ptr %write_readback.i143.i.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %write_readback.i143.i.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %175)
  %tobool.not.i144.i.i = icmp eq i8 %175, 0
  br i1 %tobool.not.i144.i.i, label %rtl_write_byte.exit140.i.i.rtl_write_byte.exit148.i.i_crit_edge, label %if.then.i147.i.i

rtl_write_byte.exit140.i.i.rtl_write_byte.exit148.i.i_crit_edge: ; preds = %rtl_write_byte.exit140.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit148.i.i

if.then.i147.i.i:                                 ; preds = %rtl_write_byte.exit140.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i145.i.i = getelementptr inbounds %struct.rtl_priv, ptr %105, i32 0, i32 13, i32 9
  %176 = ptrtoint ptr %read8_sync.i145.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %read8_sync.i145.i.i, align 4
  %call.i146.i.i = tail call zeroext i8 %177(ptr noundef %105, i32 noundef 1117) #8
  br label %rtl_write_byte.exit148.i.i

rtl_write_byte.exit148.i.i:                       ; preds = %if.then.i147.i.i, %rtl_write_byte.exit140.i.i.rtl_write_byte.exit148.i.i_crit_edge
  %178 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %179(ptr noundef %105, i32 noundef 260, i8 noundef zeroext 17) #8
  %180 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i151.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %181, i32 0, i32 1
  %182 = ptrtoint ptr %write_readback.i151.i.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %write_readback.i151.i.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %183)
  %tobool.not.i152.i.i = icmp eq i8 %183, 0
  br i1 %tobool.not.i152.i.i, label %rtl_write_byte.exit148.i.i.rtl_write_byte.exit156.i.i_crit_edge, label %if.then.i155.i.i

rtl_write_byte.exit148.i.i.rtl_write_byte.exit156.i.i_crit_edge: ; preds = %rtl_write_byte.exit148.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit156.i.i

if.then.i155.i.i:                                 ; preds = %rtl_write_byte.exit148.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i153.i.i = getelementptr inbounds %struct.rtl_priv, ptr %105, i32 0, i32 13, i32 9
  %184 = ptrtoint ptr %read8_sync.i153.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %read8_sync.i153.i.i, align 4
  %call.i154.i.i = tail call zeroext i8 %185(ptr noundef %105, i32 noundef 260) #8
  br label %rtl_write_byte.exit156.i.i

rtl_write_byte.exit156.i.i:                       ; preds = %if.then.i155.i.i, %rtl_write_byte.exit148.i.i.rtl_write_byte.exit156.i.i_crit_edge
  %186 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %187(ptr noundef %105, i32 noundef 1551, i8 noundef zeroext 4) #8
  %188 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i159.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %189, i32 0, i32 1
  %190 = ptrtoint ptr %write_readback.i159.i.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %write_readback.i159.i.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %191)
  %tobool.not.i160.i.i = icmp eq i8 %191, 0
  br i1 %tobool.not.i160.i.i, label %rtl_write_byte.exit156.i.i.for.body.i.i.preheader_crit_edge, label %if.then.i163.i.i

rtl_write_byte.exit156.i.i.for.body.i.i.preheader_crit_edge: ; preds = %rtl_write_byte.exit156.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.preheader

if.then.i163.i.i:                                 ; preds = %rtl_write_byte.exit156.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i161.i.i = getelementptr inbounds %struct.rtl_priv, ptr %105, i32 0, i32 13, i32 9
  %192 = ptrtoint ptr %read8_sync.i161.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %read8_sync.i161.i.i, align 4
  %call.i162.i.i = tail call zeroext i8 %193(ptr noundef %105, i32 noundef 1551) #8
  br label %for.body.i.i.preheader

for.body.i.i.preheader:                           ; preds = %if.then.i163.i.i, %rtl_write_byte.exit156.i.i.for.body.i.i.preheader_crit_edge
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.i.i.preheader
  %indvars.iv.i.i = phi i32 [ %add.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.i.preheader ]
  %add.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %194 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %priv, align 8
  %and.i.i.i = shl nuw nsw i32 %indvars.iv.i.i, 8
  %or.i.i.i = or i32 %add.i.i, %and.i.i.i
  %or2.i.i.i = or i32 %or.i.i.i, 1073741824
  %write32_async.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %195, i32 0, i32 13, i32 7
  %196 = ptrtoint ptr %write32_async.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %write32_async.i.i.i.i, align 4
  tail call void %197(ptr noundef %195, i32 noundef 480, i32 noundef %or2.i.i.i) #8
  %cfg.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %195, i32 0, i32 32
  %198 = ptrtoint ptr %cfg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %cfg.i.i.i.i, align 8
  %write_readback.i.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %199, i32 0, i32 1
  %200 = ptrtoint ptr %write_readback.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %write_readback.i.i.i.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %201)
  %tobool.not.i.i.i.i = icmp eq i8 %201, 0
  br i1 %tobool.not.i.i.i.i, label %for.body.i.i.rtl_write_dword.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

for.body.i.i.rtl_write_dword.exit.i.i.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %195, i32 0, i32 13, i32 11
  %202 = ptrtoint ptr %read32_sync.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %read32_sync.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %203(ptr noundef %195, i32 noundef 480) #8
  br label %rtl_write_dword.exit.i.i.i

rtl_write_dword.exit.i.i.i:                       ; preds = %if.then.i.i.i.i, %for.body.i.i.rtl_write_dword.exit.i.i.i_crit_edge
  %read32_sync.i16.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %195, i32 0, i32 13, i32 11
  %204 = ptrtoint ptr %read32_sync.i16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %read32_sync.i16.i.i.i, align 4
  %call.i1718.i.i.i = tail call i32 %205(ptr noundef %195, i32 noundef 480) #8
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
  %206 = ptrtoint ptr %read32_sync.i16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %read32_sync.i16.i.i.i, align 4
  %call.i17.i.i.i = tail call i32 %207(ptr noundef %195, i32 noundef 480) #8
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
  br i1 %exitcond.i.i.i, label %_rtl8723e_llt_write.exit.i.i, label %do.body.i.i.i

_rtl8723e_llt_write.exit.i.i:                     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %indvars.iv.i.i) #11
  br label %do.end14

for.inc.i.i:                                      ; preds = %do.body.i.i.i.for.inc.i.i_crit_edge, %rtl_write_dword.exit.i.i.i.for.inc.i.i_crit_edge
  %exitcond.not.i.i = icmp eq i32 %add.i.i, 245
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  %208 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %priv, align 8
  %write32_async.i.i166.i.i = getelementptr inbounds %struct.rtl_priv, ptr %209, i32 0, i32 13, i32 7
  %210 = ptrtoint ptr %write32_async.i.i166.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %write32_async.i.i166.i.i, align 4
  tail call void %211(ptr noundef %209, i32 noundef 480, i32 noundef 1073804799) #8
  %cfg.i.i167.i.i = getelementptr inbounds %struct.rtl_priv, ptr %209, i32 0, i32 32
  %212 = ptrtoint ptr %cfg.i.i167.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %cfg.i.i167.i.i, align 8
  %write_readback.i.i168.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %213, i32 0, i32 1
  %214 = ptrtoint ptr %write_readback.i.i168.i.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %write_readback.i.i168.i.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %215)
  %tobool.not.i.i169.i.i = icmp eq i8 %215, 0
  br i1 %tobool.not.i.i169.i.i, label %for.end.i.i.rtl_write_dword.exit.i176.i.i_crit_edge, label %if.then.i.i172.i.i

for.end.i.i.rtl_write_dword.exit.i176.i.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit.i176.i.i

if.then.i.i172.i.i:                               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i.i170.i.i = getelementptr inbounds %struct.rtl_priv, ptr %209, i32 0, i32 13, i32 11
  %216 = ptrtoint ptr %read32_sync.i.i170.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %read32_sync.i.i170.i.i, align 4
  %call.i.i171.i.i = tail call i32 %217(ptr noundef %209, i32 noundef 480) #8
  br label %rtl_write_dword.exit.i176.i.i

rtl_write_dword.exit.i176.i.i:                    ; preds = %if.then.i.i172.i.i, %for.end.i.i.rtl_write_dword.exit.i176.i.i_crit_edge
  %read32_sync.i16.i173.i.i = getelementptr inbounds %struct.rtl_priv, ptr %209, i32 0, i32 13, i32 11
  %218 = ptrtoint ptr %read32_sync.i16.i173.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %read32_sync.i16.i173.i.i, align 4
  %call.i1718.i174.i.i = tail call i32 %219(ptr noundef %209, i32 noundef 480) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i1718.i174.i.i)
  %cmp19.i175.i.i = icmp ult i32 %call.i1718.i174.i.i, 1073741824
  br i1 %cmp19.i175.i.i, label %rtl_write_dword.exit.i176.i.i.for.body21.i.i.preheader_crit_edge, label %rtl_write_dword.exit.i176.i.i.if.end.i183.i.i_crit_edge

rtl_write_dword.exit.i176.i.i.if.end.i183.i.i_crit_edge: ; preds = %rtl_write_dword.exit.i176.i.i
  br label %if.end.i183.i.i

rtl_write_dword.exit.i176.i.i.for.body21.i.i.preheader_crit_edge: ; preds = %rtl_write_dword.exit.i176.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body21.i.i.preheader

for.body21.i.i.preheader:                         ; preds = %do.body.i180.i.i.for.body21.i.i.preheader_crit_edge, %rtl_write_dword.exit.i176.i.i.for.body21.i.i.preheader_crit_edge
  br label %for.body21.i.i

do.body.i180.i.i:                                 ; preds = %if.end.i183.i.i
  %inc.i177.i.i = add nuw nsw i32 %count.020.i181.i.i, 1
  %220 = ptrtoint ptr %read32_sync.i16.i173.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %read32_sync.i16.i173.i.i, align 4
  %call.i17.i178.i.i = tail call i32 %221(ptr noundef %209, i32 noundef 480) #8
  %cmp.i179.i.i = icmp ult i32 %call.i17.i178.i.i, 1073741824
  br i1 %cmp.i179.i.i, label %do.body.i180.i.i.for.body21.i.i.preheader_crit_edge, label %do.body.i180.i.i.if.end.i183.i.i_crit_edge

do.body.i180.i.i.if.end.i183.i.i_crit_edge:       ; preds = %do.body.i180.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i183.i.i

do.body.i180.i.i.for.body21.i.i.preheader_crit_edge: ; preds = %do.body.i180.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body21.i.i.preheader

if.end.i183.i.i:                                  ; preds = %do.body.i180.i.i.if.end.i183.i.i_crit_edge, %rtl_write_dword.exit.i176.i.i.if.end.i183.i.i_crit_edge
  %count.020.i181.i.i = phi i32 [ %inc.i177.i.i, %do.body.i180.i.i.if.end.i183.i.i_crit_edge ], [ 0, %rtl_write_dword.exit.i176.i.i.if.end.i183.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %count.020.i181.i.i)
  %exitcond.i182.i.i = icmp eq i32 %count.020.i181.i.i, 21
  br i1 %exitcond.i182.i.i, label %_rtl8723e_llt_write.exit187.thread.i.i, label %do.body.i180.i.i

_rtl8723e_llt_write.exit187.thread.i.i:           ; preds = %if.end.i183.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i184.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef 245) #11
  br label %do.end14

for.body21.i.i:                                   ; preds = %for.inc31.i.i.for.body21.i.i_crit_edge, %for.body21.i.i.preheader
  %indvars.iv267.i.i = phi i32 [ %add24.i.i, %for.inc31.i.i.for.body21.i.i_crit_edge ], [ 246, %for.body21.i.i.preheader ]
  %add24.i.i = add nuw nsw i32 %indvars.iv267.i.i, 1
  %222 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %priv, align 8
  %and.i189.i.i = shl nuw nsw i32 %indvars.iv267.i.i, 8
  %or.i192.i.i = or i32 %add24.i.i, %and.i189.i.i
  %or2.i193.i.i = or i32 %or.i192.i.i, 1073741824
  %write32_async.i.i194.i.i = getelementptr inbounds %struct.rtl_priv, ptr %223, i32 0, i32 13, i32 7
  %224 = ptrtoint ptr %write32_async.i.i194.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %write32_async.i.i194.i.i, align 4
  tail call void %225(ptr noundef %223, i32 noundef 480, i32 noundef %or2.i193.i.i) #8
  %cfg.i.i195.i.i = getelementptr inbounds %struct.rtl_priv, ptr %223, i32 0, i32 32
  %226 = ptrtoint ptr %cfg.i.i195.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %cfg.i.i195.i.i, align 8
  %write_readback.i.i196.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %227, i32 0, i32 1
  %228 = ptrtoint ptr %write_readback.i.i196.i.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %write_readback.i.i196.i.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %229)
  %tobool.not.i.i197.i.i = icmp eq i8 %229, 0
  br i1 %tobool.not.i.i197.i.i, label %for.body21.i.i.rtl_write_dword.exit.i204.i.i_crit_edge, label %if.then.i.i200.i.i

for.body21.i.i.rtl_write_dword.exit.i204.i.i_crit_edge: ; preds = %for.body21.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit.i204.i.i

if.then.i.i200.i.i:                               ; preds = %for.body21.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i.i198.i.i = getelementptr inbounds %struct.rtl_priv, ptr %223, i32 0, i32 13, i32 11
  %230 = ptrtoint ptr %read32_sync.i.i198.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %read32_sync.i.i198.i.i, align 4
  %call.i.i199.i.i = tail call i32 %231(ptr noundef %223, i32 noundef 480) #8
  br label %rtl_write_dword.exit.i204.i.i

rtl_write_dword.exit.i204.i.i:                    ; preds = %if.then.i.i200.i.i, %for.body21.i.i.rtl_write_dword.exit.i204.i.i_crit_edge
  %read32_sync.i16.i201.i.i = getelementptr inbounds %struct.rtl_priv, ptr %223, i32 0, i32 13, i32 11
  %232 = ptrtoint ptr %read32_sync.i16.i201.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %read32_sync.i16.i201.i.i, align 4
  %call.i1718.i202.i.i = tail call i32 %233(ptr noundef %223, i32 noundef 480) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i1718.i202.i.i)
  %cmp19.i203.i.i = icmp ult i32 %call.i1718.i202.i.i, 1073741824
  br i1 %cmp19.i203.i.i, label %rtl_write_dword.exit.i204.i.i.for.inc31.i.i_crit_edge, label %rtl_write_dword.exit.i204.i.i.if.end.i211.i.i_crit_edge

rtl_write_dword.exit.i204.i.i.if.end.i211.i.i_crit_edge: ; preds = %rtl_write_dword.exit.i204.i.i
  br label %if.end.i211.i.i

rtl_write_dword.exit.i204.i.i.for.inc31.i.i_crit_edge: ; preds = %rtl_write_dword.exit.i204.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc31.i.i

do.body.i208.i.i:                                 ; preds = %if.end.i211.i.i
  %inc.i205.i.i = add nuw nsw i32 %count.020.i209.i.i, 1
  %234 = ptrtoint ptr %read32_sync.i16.i201.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %read32_sync.i16.i201.i.i, align 4
  %call.i17.i206.i.i = tail call i32 %235(ptr noundef %223, i32 noundef 480) #8
  %cmp.i207.i.i = icmp ult i32 %call.i17.i206.i.i, 1073741824
  br i1 %cmp.i207.i.i, label %do.body.i208.i.i.for.inc31.i.i_crit_edge, label %do.body.i208.i.i.if.end.i211.i.i_crit_edge

do.body.i208.i.i.if.end.i211.i.i_crit_edge:       ; preds = %do.body.i208.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i211.i.i

do.body.i208.i.i.for.inc31.i.i_crit_edge:         ; preds = %do.body.i208.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc31.i.i

if.end.i211.i.i:                                  ; preds = %do.body.i208.i.i.if.end.i211.i.i_crit_edge, %rtl_write_dword.exit.i204.i.i.if.end.i211.i.i_crit_edge
  %count.020.i209.i.i = phi i32 [ %inc.i205.i.i, %do.body.i208.i.i.if.end.i211.i.i_crit_edge ], [ 0, %rtl_write_dword.exit.i204.i.i.if.end.i211.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %count.020.i209.i.i)
  %exitcond.i210.i.i = icmp eq i32 %count.020.i209.i.i, 21
  br i1 %exitcond.i210.i.i, label %_rtl8723e_llt_write.exit215.i.i, label %do.body.i208.i.i

_rtl8723e_llt_write.exit215.i.i:                  ; preds = %if.end.i211.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i212.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %indvars.iv267.i.i) #11
  br label %do.end14

for.inc31.i.i:                                    ; preds = %do.body.i208.i.i.for.inc31.i.i_crit_edge, %rtl_write_dword.exit.i204.i.i.for.inc31.i.i_crit_edge
  %exitcond269.not.i.i = icmp eq i32 %add24.i.i, 255
  br i1 %exitcond269.not.i.i, label %for.end33.i.i, label %for.inc31.i.i.for.body21.i.i_crit_edge

for.inc31.i.i.for.body21.i.i_crit_edge:           ; preds = %for.inc31.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body21.i.i

for.end33.i.i:                                    ; preds = %for.inc31.i.i
  %236 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %priv, align 8
  %write32_async.i.i217.i.i = getelementptr inbounds %struct.rtl_priv, ptr %237, i32 0, i32 13, i32 7
  %238 = ptrtoint ptr %write32_async.i.i217.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %write32_async.i.i217.i.i, align 4
  tail call void %239(ptr noundef %237, i32 noundef 480, i32 noundef 1073807350) #8
  %cfg.i.i218.i.i = getelementptr inbounds %struct.rtl_priv, ptr %237, i32 0, i32 32
  %240 = ptrtoint ptr %cfg.i.i218.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %cfg.i.i218.i.i, align 8
  %write_readback.i.i219.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %241, i32 0, i32 1
  %242 = ptrtoint ptr %write_readback.i.i219.i.i to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %write_readback.i.i219.i.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %243)
  %tobool.not.i.i220.i.i = icmp eq i8 %243, 0
  br i1 %tobool.not.i.i220.i.i, label %for.end33.i.i.rtl_write_dword.exit.i227.i.i_crit_edge, label %if.then.i.i223.i.i

for.end33.i.i.rtl_write_dword.exit.i227.i.i_crit_edge: ; preds = %for.end33.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit.i227.i.i

if.then.i.i223.i.i:                               ; preds = %for.end33.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i.i221.i.i = getelementptr inbounds %struct.rtl_priv, ptr %237, i32 0, i32 13, i32 11
  %244 = ptrtoint ptr %read32_sync.i.i221.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %read32_sync.i.i221.i.i, align 4
  %call.i.i222.i.i = tail call i32 %245(ptr noundef %237, i32 noundef 480) #8
  br label %rtl_write_dword.exit.i227.i.i

rtl_write_dword.exit.i227.i.i:                    ; preds = %if.then.i.i223.i.i, %for.end33.i.i.rtl_write_dword.exit.i227.i.i_crit_edge
  %read32_sync.i16.i224.i.i = getelementptr inbounds %struct.rtl_priv, ptr %237, i32 0, i32 13, i32 11
  %246 = ptrtoint ptr %read32_sync.i16.i224.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %read32_sync.i16.i224.i.i, align 4
  %call.i1718.i225.i.i = tail call i32 %247(ptr noundef %237, i32 noundef 480) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i1718.i225.i.i)
  %cmp19.i226.i.i = icmp ult i32 %call.i1718.i225.i.i, 1073741824
  br i1 %cmp19.i226.i.i, label %rtl_write_dword.exit.i227.i.i.if.end41.i.i_crit_edge, label %rtl_write_dword.exit.i227.i.i.if.end.i234.i.i_crit_edge

rtl_write_dword.exit.i227.i.i.if.end.i234.i.i_crit_edge: ; preds = %rtl_write_dword.exit.i227.i.i
  br label %if.end.i234.i.i

rtl_write_dword.exit.i227.i.i.if.end41.i.i_crit_edge: ; preds = %rtl_write_dword.exit.i227.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.i.i

do.body.i231.i.i:                                 ; preds = %if.end.i234.i.i
  %inc.i228.i.i = add nuw nsw i32 %count.020.i232.i.i, 1
  %248 = ptrtoint ptr %read32_sync.i16.i224.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %read32_sync.i16.i224.i.i, align 4
  %call.i17.i229.i.i = tail call i32 %249(ptr noundef %237, i32 noundef 480) #8
  %cmp.i230.i.i = icmp ult i32 %call.i17.i229.i.i, 1073741824
  br i1 %cmp.i230.i.i, label %do.body.i231.i.i.if.end41.i.i_crit_edge, label %do.body.i231.i.i.if.end.i234.i.i_crit_edge

do.body.i231.i.i.if.end.i234.i.i_crit_edge:       ; preds = %do.body.i231.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i234.i.i

do.body.i231.i.i.if.end41.i.i_crit_edge:          ; preds = %do.body.i231.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.i.i

if.end.i234.i.i:                                  ; preds = %do.body.i231.i.i.if.end.i234.i.i_crit_edge, %rtl_write_dword.exit.i227.i.i.if.end.i234.i.i_crit_edge
  %count.020.i232.i.i = phi i32 [ %inc.i228.i.i, %do.body.i231.i.i.if.end.i234.i.i_crit_edge ], [ 0, %rtl_write_dword.exit.i227.i.i.if.end.i234.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %count.020.i232.i.i)
  %exitcond.i233.i.i = icmp eq i32 %count.020.i232.i.i, 21
  br i1 %exitcond.i233.i.i, label %_rtl8723e_llt_write.exit238.i.i, label %do.body.i231.i.i

_rtl8723e_llt_write.exit238.i.i:                  ; preds = %if.end.i234.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i235.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef 255) #11
  br label %do.end14

if.end41.i.i:                                     ; preds = %do.body.i231.i.i.if.end41.i.i_crit_edge, %rtl_write_dword.exit.i227.i.i.if.end41.i.i_crit_edge
  %250 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %251(ptr noundef %105, i32 noundef 256, i8 noundef zeroext -1) #8
  %252 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i241.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %253, i32 0, i32 1
  %254 = ptrtoint ptr %write_readback.i241.i.i to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %write_readback.i241.i.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %255)
  %tobool.not.i242.i.i = icmp eq i8 %255, 0
  br i1 %tobool.not.i242.i.i, label %if.end41.i.i.rtl_write_byte.exit247.i.i_crit_edge, label %if.then.i245.i.i

if.end41.i.i.rtl_write_byte.exit247.i.i_crit_edge: ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit247.i.i

if.then.i245.i.i:                                 ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i243.i.i = getelementptr inbounds %struct.rtl_priv, ptr %105, i32 0, i32 13, i32 9
  %256 = ptrtoint ptr %read8_sync.i243.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %read8_sync.i243.i.i, align 4
  %call.i244.i.i = tail call zeroext i8 %257(ptr noundef %105, i32 noundef 256) #8
  br label %rtl_write_byte.exit247.i.i

rtl_write_byte.exit247.i.i:                       ; preds = %if.then.i245.i.i, %if.end41.i.i.rtl_write_byte.exit247.i.i_crit_edge
  %read8_sync.i248.i.i = getelementptr inbounds %struct.rtl_priv, ptr %105, i32 0, i32 13, i32 9
  %258 = ptrtoint ptr %read8_sync.i248.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %read8_sync.i248.i.i, align 4
  %call.i249.i.i = tail call zeroext i8 %259(ptr noundef %105, i32 noundef 515) #8
  %260 = or i8 %call.i249.i.i, -128
  %261 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %262(ptr noundef %105, i32 noundef 515, i8 noundef zeroext %260) #8
  %263 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i252.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %264, i32 0, i32 1
  %265 = ptrtoint ptr %write_readback.i252.i.i to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %write_readback.i252.i.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %266)
  %tobool.not.i253.i.i = icmp eq i8 %266, 0
  br i1 %tobool.not.i253.i.i, label %rtl_write_byte.exit247.i.i.if.end30.i_crit_edge, label %if.then.i256.i.i

rtl_write_byte.exit247.i.i.if.end30.i_crit_edge:  ; preds = %rtl_write_byte.exit247.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.i

if.then.i256.i.i:                                 ; preds = %rtl_write_byte.exit247.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %267 = ptrtoint ptr %read8_sync.i248.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %read8_sync.i248.i.i, align 4
  %call.i255.i.i = tail call zeroext i8 %268(ptr noundef %105, i32 noundef 515) #8
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then.i256.i.i, %rtl_write_byte.exit247.i.i.if.end30.i_crit_edge, %rtl_write_word.exit242.i.if.end30.i_crit_edge
  %write32_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 13, i32 7
  %269 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %270(ptr noundef %10, i32 noundef 292, i32 noundef -1) #8
  %271 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i244.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %272, i32 0, i32 1
  %273 = ptrtoint ptr %write_readback.i244.i to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %write_readback.i244.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %274)
  %tobool.not.i245.i = icmp eq i8 %274, 0
  br i1 %tobool.not.i245.i, label %if.end30.i.rtl_write_dword.exit.i_crit_edge, label %if.then.i247.i

if.end30.i.rtl_write_dword.exit.i_crit_edge:      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit.i

if.then.i247.i:                                   ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 13, i32 11
  %275 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i246.i = tail call i32 %276(ptr noundef %10, i32 noundef 292) #8
  br label %rtl_write_dword.exit.i

rtl_write_dword.exit.i:                           ; preds = %if.then.i247.i, %if.end30.i.rtl_write_dword.exit.i_crit_edge
  %277 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %278(ptr noundef %10, i32 noundef 300, i8 noundef zeroext -1) #8
  %279 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i250.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %280, i32 0, i32 1
  %281 = ptrtoint ptr %write_readback.i250.i to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %write_readback.i250.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %282)
  %tobool.not.i251.i = icmp eq i8 %282, 0
  br i1 %tobool.not.i251.i, label %rtl_write_dword.exit.i.rtl_write_byte.exit255.i_crit_edge, label %if.then.i254.i

rtl_write_dword.exit.i.rtl_write_byte.exit255.i_crit_edge: ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit255.i

if.then.i254.i:                                   ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %283 = ptrtoint ptr %read8_sync.i166.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %read8_sync.i166.i, align 4
  %call.i253.i = tail call zeroext i8 %284(ptr noundef %10, i32 noundef 300) #8
  br label %rtl_write_byte.exit255.i

rtl_write_byte.exit255.i:                         ; preds = %if.then.i254.i, %rtl_write_dword.exit.i.rtl_write_byte.exit255.i_crit_edge
  %285 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %286(ptr noundef %10, i32 noundef 278, i16 noundef zeroext 10239) #8
  %287 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i258.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %288, i32 0, i32 1
  %289 = ptrtoint ptr %write_readback.i258.i to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %write_readback.i258.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %290)
  %tobool.not.i259.i = icmp eq i8 %290, 0
  br i1 %tobool.not.i259.i, label %rtl_write_byte.exit255.i.rtl_write_word.exit263.i_crit_edge, label %if.then.i262.i

rtl_write_byte.exit255.i.rtl_write_word.exit263.i_crit_edge: ; preds = %rtl_write_byte.exit255.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit263.i

if.then.i262.i:                                   ; preds = %rtl_write_byte.exit255.i
  call void @__sanitizer_cov_trace_pc() #10
  %291 = ptrtoint ptr %read16_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %read16_sync.i.i, align 4
  %call.i261.i = tail call zeroext i16 %292(ptr noundef %10, i32 noundef 278) #8
  br label %rtl_write_word.exit263.i

rtl_write_word.exit263.i:                         ; preds = %if.then.i262.i, %rtl_write_byte.exit255.i.rtl_write_word.exit263.i_crit_edge
  %293 = ptrtoint ptr %read16_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %read16_sync.i.i, align 4
  %call.i265.i = tail call zeroext i16 %294(ptr noundef %10, i32 noundef 268) #8
  %295 = and i16 %call.i265.i, 14
  %296 = or i16 %295, -2191
  %297 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %298(ptr noundef %10, i32 noundef 268, i16 noundef zeroext %296) #8
  %299 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i268.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %300, i32 0, i32 1
  %301 = ptrtoint ptr %write_readback.i268.i to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %write_readback.i268.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %302)
  %tobool.not.i269.i = icmp eq i8 %302, 0
  br i1 %tobool.not.i269.i, label %rtl_write_word.exit263.i.rtl_write_word.exit273.i_crit_edge, label %if.then.i272.i

rtl_write_word.exit263.i.rtl_write_word.exit273.i_crit_edge: ; preds = %rtl_write_word.exit263.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit273.i

if.then.i272.i:                                   ; preds = %rtl_write_word.exit263.i
  call void @__sanitizer_cov_trace_pc() #10
  %303 = ptrtoint ptr %read16_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %read16_sync.i.i, align 4
  %call.i271.i = tail call zeroext i16 %304(ptr noundef %10, i32 noundef 268) #8
  br label %rtl_write_word.exit273.i

rtl_write_word.exit273.i:                         ; preds = %if.then.i272.i, %rtl_write_word.exit263.i.rtl_write_word.exit273.i_crit_edge
  %305 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %306(ptr noundef %10, i32 noundef 1057, i8 noundef zeroext 31) #8
  %307 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i276.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %308, i32 0, i32 1
  %309 = ptrtoint ptr %write_readback.i276.i to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %write_readback.i276.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %310)
  %tobool.not.i277.i = icmp eq i8 %310, 0
  br i1 %tobool.not.i277.i, label %rtl_write_word.exit273.i.rtl_write_byte.exit281.i_crit_edge, label %if.then.i280.i

rtl_write_word.exit273.i.rtl_write_byte.exit281.i_crit_edge: ; preds = %rtl_write_word.exit273.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit281.i

if.then.i280.i:                                   ; preds = %rtl_write_word.exit273.i
  call void @__sanitizer_cov_trace_pc() #10
  %311 = ptrtoint ptr %read8_sync.i166.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %read8_sync.i166.i, align 4
  %call.i279.i = tail call zeroext i8 %312(ptr noundef %10, i32 noundef 1057) #8
  br label %rtl_write_byte.exit281.i

rtl_write_byte.exit281.i:                         ; preds = %if.then.i280.i, %rtl_write_word.exit273.i.rtl_write_byte.exit281.i_crit_edge
  %receive_config.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 3
  %313 = ptrtoint ptr %receive_config.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %receive_config.i, align 4
  %315 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %316(ptr noundef %10, i32 noundef 1544, i32 noundef %314) #8
  %317 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i284.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %318, i32 0, i32 1
  %319 = ptrtoint ptr %write_readback.i284.i to i32
  call void @__asan_load1_noabort(i32 %319)
  %320 = load i8, ptr %write_readback.i284.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %320)
  %tobool.not.i285.i = icmp eq i8 %320, 0
  br i1 %tobool.not.i285.i, label %rtl_write_byte.exit281.i.rtl_write_dword.exit289.i_crit_edge, label %if.then.i288.i

rtl_write_byte.exit281.i.rtl_write_dword.exit289.i_crit_edge: ; preds = %rtl_write_byte.exit281.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit289.i

if.then.i288.i:                                   ; preds = %rtl_write_byte.exit281.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i286.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 13, i32 11
  %321 = ptrtoint ptr %read32_sync.i286.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %read32_sync.i286.i, align 4
  %call.i287.i = tail call i32 %322(ptr noundef %10, i32 noundef 1544) #8
  br label %rtl_write_dword.exit289.i

rtl_write_dword.exit289.i:                        ; preds = %if.then.i288.i, %rtl_write_byte.exit281.i.rtl_write_dword.exit289.i_crit_edge
  %323 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %324(ptr noundef %10, i32 noundef 1700, i16 noundef zeroext -1) #8
  %325 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i292.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %326, i32 0, i32 1
  %327 = ptrtoint ptr %write_readback.i292.i to i32
  call void @__asan_load1_noabort(i32 %327)
  %328 = load i8, ptr %write_readback.i292.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %328)
  %tobool.not.i293.i = icmp eq i8 %328, 0
  br i1 %tobool.not.i293.i, label %rtl_write_dword.exit289.i.rtl_write_word.exit297.i_crit_edge, label %if.then.i296.i

rtl_write_dword.exit289.i.rtl_write_word.exit297.i_crit_edge: ; preds = %rtl_write_dword.exit289.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit297.i

if.then.i296.i:                                   ; preds = %rtl_write_dword.exit289.i
  call void @__sanitizer_cov_trace_pc() #10
  %329 = ptrtoint ptr %read16_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %read16_sync.i.i, align 4
  %call.i295.i = tail call zeroext i16 %330(ptr noundef %10, i32 noundef 1700) #8
  br label %rtl_write_word.exit297.i

rtl_write_word.exit297.i:                         ; preds = %if.then.i296.i, %rtl_write_dword.exit289.i.rtl_write_word.exit297.i_crit_edge
  %transmit_config.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 1, i32 8, i32 2, i32 3
  %331 = ptrtoint ptr %transmit_config.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %transmit_config.i, align 4
  %333 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %334(ptr noundef %10, i32 noundef 1540, i32 noundef %332) #8
  %335 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i300.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %336, i32 0, i32 1
  %337 = ptrtoint ptr %write_readback.i300.i to i32
  call void @__asan_load1_noabort(i32 %337)
  %338 = load i8, ptr %write_readback.i300.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %338)
  %tobool.not.i301.i = icmp eq i8 %338, 0
  br i1 %tobool.not.i301.i, label %rtl_write_word.exit297.i.rtl_write_dword.exit305.i_crit_edge, label %if.then.i304.i

rtl_write_word.exit297.i.rtl_write_dword.exit305.i_crit_edge: ; preds = %rtl_write_word.exit297.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit305.i

if.then.i304.i:                                   ; preds = %rtl_write_word.exit297.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i302.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 13, i32 11
  %339 = ptrtoint ptr %read32_sync.i302.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %read32_sync.i302.i, align 4
  %call.i303.i = tail call i32 %340(ptr noundef %10, i32 noundef 1540) #8
  br label %rtl_write_dword.exit305.i

rtl_write_dword.exit305.i:                        ; preds = %if.then.i304.i, %rtl_write_word.exit297.i.rtl_write_dword.exit305.i_crit_edge
  %341 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %342(ptr noundef %10, i32 noundef 1232, i8 noundef zeroext 0) #8
  %343 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i308.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %344, i32 0, i32 1
  %345 = ptrtoint ptr %write_readback.i308.i to i32
  call void @__asan_load1_noabort(i32 %345)
  %346 = load i8, ptr %write_readback.i308.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %346)
  %tobool.not.i309.i = icmp eq i8 %346, 0
  br i1 %tobool.not.i309.i, label %rtl_write_dword.exit305.i.rtl_write_byte.exit313.i_crit_edge, label %if.then.i312.i

rtl_write_dword.exit305.i.rtl_write_byte.exit313.i_crit_edge: ; preds = %rtl_write_dword.exit305.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit313.i

if.then.i312.i:                                   ; preds = %rtl_write_dword.exit305.i
  call void @__sanitizer_cov_trace_pc() #10
  %347 = ptrtoint ptr %read8_sync.i166.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %read8_sync.i166.i, align 4
  %call.i311.i = tail call zeroext i8 %348(ptr noundef %10, i32 noundef 1232) #8
  br label %rtl_write_byte.exit313.i

rtl_write_byte.exit313.i:                         ; preds = %if.then.i312.i, %rtl_write_dword.exit305.i.rtl_write_byte.exit313.i_crit_edge
  %dma.i = getelementptr %struct.rtl_priv, ptr %10, i32 1, i32 7, i32 5, i32 0, i32 0, i32 3
  %349 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %dma.i, align 4
  %351 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %352(ptr noundef %10, i32 noundef 776, i32 noundef %350) #8
  %353 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i316.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %354, i32 0, i32 1
  %355 = ptrtoint ptr %write_readback.i316.i to i32
  call void @__asan_load1_noabort(i32 %355)
  %356 = load i8, ptr %write_readback.i316.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %356)
  %tobool.not.i317.i = icmp eq i8 %356, 0
  br i1 %tobool.not.i317.i, label %rtl_write_byte.exit313.i.rtl_write_dword.exit321.i_crit_edge, label %if.then.i320.i

rtl_write_byte.exit313.i.rtl_write_dword.exit321.i_crit_edge: ; preds = %rtl_write_byte.exit313.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit321.i

if.then.i320.i:                                   ; preds = %rtl_write_byte.exit313.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i318.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 13, i32 11
  %357 = ptrtoint ptr %read32_sync.i318.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %read32_sync.i318.i, align 4
  %call.i319.i = tail call i32 %358(ptr noundef %10, i32 noundef 776) #8
  br label %rtl_write_dword.exit321.i

rtl_write_dword.exit321.i:                        ; preds = %if.then.i320.i, %rtl_write_byte.exit313.i.rtl_write_dword.exit321.i_crit_edge
  %dma42.i = getelementptr %struct.rtl_priv, ptr %10, i32 1, i32 7, i32 9, i32 0, i32 0, i32 1
  %359 = ptrtoint ptr %dma42.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %dma42.i, align 4
  %361 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %362(ptr noundef %10, i32 noundef 792, i32 noundef %360) #8
  %363 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i324.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %364, i32 0, i32 1
  %365 = ptrtoint ptr %write_readback.i324.i to i32
  call void @__asan_load1_noabort(i32 %365)
  %366 = load i8, ptr %write_readback.i324.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %366)
  %tobool.not.i325.i = icmp eq i8 %366, 0
  br i1 %tobool.not.i325.i, label %rtl_write_dword.exit321.i.rtl_write_dword.exit329.i_crit_edge, label %if.then.i328.i

rtl_write_dword.exit321.i.rtl_write_dword.exit329.i_crit_edge: ; preds = %rtl_write_dword.exit321.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit329.i

if.then.i328.i:                                   ; preds = %rtl_write_dword.exit321.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i326.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 13, i32 11
  %367 = ptrtoint ptr %read32_sync.i326.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %read32_sync.i326.i, align 4
  %call.i327.i = tail call i32 %368(ptr noundef %10, i32 noundef 792) #8
  br label %rtl_write_dword.exit329.i

rtl_write_dword.exit329.i:                        ; preds = %if.then.i328.i, %rtl_write_dword.exit321.i.rtl_write_dword.exit329.i_crit_edge
  %dma48.i = getelementptr %struct.rtl_priv, ptr %10, i32 1, i32 7, i32 3, i32 0, i32 0, i32 4
  %369 = ptrtoint ptr %dma48.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %dma48.i, align 4
  %371 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %372(ptr noundef %10, i32 noundef 800, i32 noundef %370) #8
  %373 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i332.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %374, i32 0, i32 1
  %375 = ptrtoint ptr %write_readback.i332.i to i32
  call void @__asan_load1_noabort(i32 %375)
  %376 = load i8, ptr %write_readback.i332.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %376)
  %tobool.not.i333.i = icmp eq i8 %376, 0
  br i1 %tobool.not.i333.i, label %rtl_write_dword.exit329.i.rtl_write_dword.exit337.i_crit_edge, label %if.then.i336.i

rtl_write_dword.exit329.i.rtl_write_dword.exit337.i_crit_edge: ; preds = %rtl_write_dword.exit329.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit337.i

if.then.i336.i:                                   ; preds = %rtl_write_dword.exit329.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i334.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 13, i32 11
  %377 = ptrtoint ptr %read32_sync.i334.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %read32_sync.i334.i, align 4
  %call.i335.i = tail call i32 %378(ptr noundef %10, i32 noundef 800) #8
  br label %rtl_write_dword.exit337.i

rtl_write_dword.exit337.i:                        ; preds = %if.then.i336.i, %rtl_write_dword.exit329.i.rtl_write_dword.exit337.i_crit_edge
  %dma54.i = getelementptr %struct.rtl_priv, ptr %10, i32 1, i32 7, i32 2, i32 1, i32 4, i32 1
  %379 = ptrtoint ptr %dma54.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %dma54.i, align 4
  %381 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %382(ptr noundef %10, i32 noundef 808, i32 noundef %380) #8
  %383 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i340.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %384, i32 0, i32 1
  %385 = ptrtoint ptr %write_readback.i340.i to i32
  call void @__asan_load1_noabort(i32 %385)
  %386 = load i8, ptr %write_readback.i340.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %386)
  %tobool.not.i341.i = icmp eq i8 %386, 0
  br i1 %tobool.not.i341.i, label %rtl_write_dword.exit337.i.rtl_write_dword.exit345.i_crit_edge, label %if.then.i344.i

rtl_write_dword.exit337.i.rtl_write_dword.exit345.i_crit_edge: ; preds = %rtl_write_dword.exit337.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit345.i

if.then.i344.i:                                   ; preds = %rtl_write_dword.exit337.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i342.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 13, i32 11
  %387 = ptrtoint ptr %read32_sync.i342.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %read32_sync.i342.i, align 4
  %call.i343.i = tail call i32 %388(ptr noundef %10, i32 noundef 808) #8
  br label %rtl_write_dword.exit345.i

rtl_write_dword.exit345.i:                        ; preds = %if.then.i344.i, %rtl_write_dword.exit337.i.rtl_write_dword.exit345.i_crit_edge
  %dma60.i = getelementptr %struct.rtl_priv, ptr %10, i32 1, i32 7, i32 1, i32 1, i32 4, i32 2
  %389 = ptrtoint ptr %dma60.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %dma60.i, align 4
  %391 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %392(ptr noundef %10, i32 noundef 816, i32 noundef %390) #8
  %393 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i348.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %394, i32 0, i32 1
  %395 = ptrtoint ptr %write_readback.i348.i to i32
  call void @__asan_load1_noabort(i32 %395)
  %396 = load i8, ptr %write_readback.i348.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %396)
  %tobool.not.i349.i = icmp eq i8 %396, 0
  br i1 %tobool.not.i349.i, label %rtl_write_dword.exit345.i.rtl_write_dword.exit353.i_crit_edge, label %if.then.i352.i

rtl_write_dword.exit345.i.rtl_write_dword.exit353.i_crit_edge: ; preds = %rtl_write_dword.exit345.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit353.i

if.then.i352.i:                                   ; preds = %rtl_write_dword.exit345.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i350.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 13, i32 11
  %397 = ptrtoint ptr %read32_sync.i350.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %read32_sync.i350.i, align 4
  %call.i351.i = tail call i32 %398(ptr noundef %10, i32 noundef 816) #8
  br label %rtl_write_dword.exit353.i

rtl_write_dword.exit353.i:                        ; preds = %if.then.i352.i, %rtl_write_dword.exit345.i.rtl_write_dword.exit353.i_crit_edge
  %dma66.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 1, i32 7, i32 0, i32 1, i32 4, i32 6
  %399 = ptrtoint ptr %dma66.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %dma66.i, align 4
  %401 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %402(ptr noundef %10, i32 noundef 824, i32 noundef %400) #8
  %403 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i356.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %404, i32 0, i32 1
  %405 = ptrtoint ptr %write_readback.i356.i to i32
  call void @__asan_load1_noabort(i32 %405)
  %406 = load i8, ptr %write_readback.i356.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %406)
  %tobool.not.i357.i = icmp eq i8 %406, 0
  br i1 %tobool.not.i357.i, label %rtl_write_dword.exit353.i.rtl_write_dword.exit361.i_crit_edge, label %if.then.i360.i

rtl_write_dword.exit353.i.rtl_write_dword.exit361.i_crit_edge: ; preds = %rtl_write_dword.exit353.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit361.i

if.then.i360.i:                                   ; preds = %rtl_write_dword.exit353.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i358.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 13, i32 11
  %407 = ptrtoint ptr %read32_sync.i358.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %read32_sync.i358.i, align 4
  %call.i359.i = tail call i32 %408(ptr noundef %10, i32 noundef 824) #8
  br label %rtl_write_dword.exit361.i

rtl_write_dword.exit361.i:                        ; preds = %if.then.i360.i, %rtl_write_dword.exit353.i.rtl_write_dword.exit361.i_crit_edge
  %dma72.i = getelementptr %struct.rtl_priv, ptr %10, i32 1, i32 7, i32 11
  %409 = ptrtoint ptr %dma72.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load i32, ptr %dma72.i, align 4
  %411 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %412(ptr noundef %10, i32 noundef 784, i32 noundef %410) #8
  %413 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i364.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %414, i32 0, i32 1
  %415 = ptrtoint ptr %write_readback.i364.i to i32
  call void @__asan_load1_noabort(i32 %415)
  %416 = load i8, ptr %write_readback.i364.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %416)
  %tobool.not.i365.i = icmp eq i8 %416, 0
  br i1 %tobool.not.i365.i, label %rtl_write_dword.exit361.i.rtl_write_dword.exit369.i_crit_edge, label %if.then.i368.i

rtl_write_dword.exit361.i.rtl_write_dword.exit369.i_crit_edge: ; preds = %rtl_write_dword.exit361.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit369.i

if.then.i368.i:                                   ; preds = %rtl_write_dword.exit361.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i366.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 13, i32 11
  %417 = ptrtoint ptr %read32_sync.i366.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %read32_sync.i366.i, align 4
  %call.i367.i = tail call i32 %418(ptr noundef %10, i32 noundef 784) #8
  br label %rtl_write_dword.exit369.i

rtl_write_dword.exit369.i:                        ; preds = %if.then.i368.i, %rtl_write_dword.exit361.i.rtl_write_dword.exit369.i_crit_edge
  %dma77.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 1, i32 8, i32 2, i32 4, i32 1
  %419 = ptrtoint ptr %dma77.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load i32, ptr %dma77.i, align 4
  %421 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %422(ptr noundef %10, i32 noundef 832, i32 noundef %420) #8
  %423 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i372.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %424, i32 0, i32 1
  %425 = ptrtoint ptr %write_readback.i372.i to i32
  call void @__asan_load1_noabort(i32 %425)
  %426 = load i8, ptr %write_readback.i372.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %426)
  %tobool.not.i373.i = icmp eq i8 %426, 0
  br i1 %tobool.not.i373.i, label %rtl_write_dword.exit369.i.rtl_write_dword.exit377.i_crit_edge, label %if.then.i376.i

rtl_write_dword.exit369.i.rtl_write_dword.exit377.i_crit_edge: ; preds = %rtl_write_dword.exit369.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit377.i

if.then.i376.i:                                   ; preds = %rtl_write_dword.exit369.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i374.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 13, i32 11
  %427 = ptrtoint ptr %read32_sync.i374.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %read32_sync.i374.i, align 4
  %call.i375.i = tail call i32 %428(ptr noundef %10, i32 noundef 832) #8
  br label %rtl_write_dword.exit377.i

rtl_write_dword.exit377.i:                        ; preds = %if.then.i376.i, %rtl_write_dword.exit369.i.rtl_write_dword.exit377.i_crit_edge
  %429 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %430(ptr noundef %10, i32 noundef 771, i8 noundef zeroext 116) #8
  %431 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i380.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %432, i32 0, i32 1
  %433 = ptrtoint ptr %write_readback.i380.i to i32
  call void @__asan_load1_noabort(i32 %433)
  %434 = load i8, ptr %write_readback.i380.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %434)
  %tobool.not.i381.i = icmp eq i8 %434, 0
  br i1 %tobool.not.i381.i, label %rtl_write_dword.exit377.i.rtl_write_byte.exit385.i_crit_edge, label %if.then.i384.i

rtl_write_dword.exit377.i.rtl_write_byte.exit385.i_crit_edge: ; preds = %rtl_write_dword.exit377.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit385.i

if.then.i384.i:                                   ; preds = %rtl_write_dword.exit377.i
  call void @__sanitizer_cov_trace_pc() #10
  %435 = ptrtoint ptr %read8_sync.i166.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %read8_sync.i166.i, align 4
  %call.i383.i = tail call zeroext i8 %436(ptr noundef %10, i32 noundef 771) #8
  br label %rtl_write_byte.exit385.i

rtl_write_byte.exit385.i:                         ; preds = %if.then.i384.i, %rtl_write_dword.exit377.i.rtl_write_byte.exit385.i_crit_edge
  %437 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %438(ptr noundef %10, i32 noundef 772, i32 noundef 0) #8
  %439 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i388.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %440, i32 0, i32 1
  %441 = ptrtoint ptr %write_readback.i388.i to i32
  call void @__asan_load1_noabort(i32 %441)
  %442 = load i8, ptr %write_readback.i388.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %442)
  %tobool.not.i389.i = icmp eq i8 %442, 0
  br i1 %tobool.not.i389.i, label %rtl_write_byte.exit385.i.rtl_write_dword.exit393.i_crit_edge, label %if.then.i392.i

rtl_write_byte.exit385.i.rtl_write_dword.exit393.i_crit_edge: ; preds = %rtl_write_byte.exit385.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit393.i

if.then.i392.i:                                   ; preds = %rtl_write_byte.exit385.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i390.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 13, i32 11
  %443 = ptrtoint ptr %read32_sync.i390.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %read32_sync.i390.i, align 4
  %call.i391.i = tail call i32 %444(ptr noundef %10, i32 noundef 772) #8
  br label %rtl_write_dword.exit393.i

rtl_write_dword.exit393.i:                        ; preds = %if.then.i392.i, %rtl_write_byte.exit385.i.rtl_write_dword.exit393.i_crit_edge
  %445 = ptrtoint ptr %read8_sync.i166.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %read8_sync.i166.i, align 4
  %call.i395.i = tail call zeroext i8 %446(ptr noundef %10, i32 noundef 1536) #8
  %447 = and i8 %call.i395.i, -65
  %448 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %449(ptr noundef %10, i32 noundef 1536, i8 noundef zeroext %447) #8
  %450 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i398.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %451, i32 0, i32 1
  %452 = ptrtoint ptr %write_readback.i398.i to i32
  call void @__asan_load1_noabort(i32 %452)
  %453 = load i8, ptr %write_readback.i398.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %453)
  %tobool.not.i399.i = icmp eq i8 %453, 0
  br i1 %tobool.not.i399.i, label %rtl_write_dword.exit393.i.do.body85.i.preheader_crit_edge, label %if.then.i402.i

rtl_write_dword.exit393.i.do.body85.i.preheader_crit_edge: ; preds = %rtl_write_dword.exit393.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body85.i.preheader

if.then.i402.i:                                   ; preds = %rtl_write_dword.exit393.i
  call void @__sanitizer_cov_trace_pc() #10
  %454 = ptrtoint ptr %read8_sync.i166.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %read8_sync.i166.i, align 4
  %call.i401.i = tail call zeroext i8 %455(ptr noundef %10, i32 noundef 1536) #8
  br label %do.body85.i.preheader

do.body85.i.preheader:                            ; preds = %if.then.i402.i, %rtl_write_dword.exit393.i.do.body85.i.preheader_crit_edge
  br label %do.body85.i

do.body85.i:                                      ; preds = %do.body85.i.do.body85.i_crit_edge, %do.body85.i.preheader
  %retry.1.i = phi i16 [ %inc86.i, %do.body85.i.do.body85.i_crit_edge ], [ %inc.i, %do.body85.i.preheader ]
  %inc86.i = add nuw nsw i16 %retry.1.i, 1
  %456 = ptrtoint ptr %read8_sync.i166.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %read8_sync.i166.i, align 4
  %call.i405.i = tail call zeroext i8 %457(ptr noundef %10, i32 noundef 1536) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 198, i16 %retry.1.i)
  %cmp90.i = icmp ugt i16 %retry.1.i, 198
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i405.i)
  %tobool95.not.i = icmp sgt i8 %call.i405.i, -1
  %or.cond165.i = select i1 %cmp90.i, i1 true, i1 %tobool95.not.i
  br i1 %or.cond165.i, label %do.end97.i, label %do.body85.i.do.body85.i_crit_edge

do.body85.i.do.body85.i_crit_edge:                ; preds = %do.body85.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body85.i

do.end97.i:                                       ; preds = %do.body85.i
  %458 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %priv, align 8
  %sw_led0.i.i = getelementptr inbounds %struct.rtl_priv, ptr %459, i32 0, i32 18, i32 1
  %up_first_time.i.i = getelementptr inbounds %struct.rtl_priv, ptr %459, i32 0, i32 10, i32 2
  %460 = ptrtoint ptr %up_first_time.i.i to i32
  call void @__asan_load1_noabort(i32 %460)
  %461 = load i8, ptr %up_first_time.i.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %461)
  %tobool.not.i407.i = icmp eq i8 %461, 0
  br i1 %tobool.not.i407.i, label %if.end.i.i, label %do.end97.i._rtl8723e_gen_refresh_led_state.exit.i_crit_edge

do.end97.i._rtl8723e_gen_refresh_led_state.exit.i_crit_edge: ; preds = %do.end97.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl8723e_gen_refresh_led_state.exit.i

if.end.i.i:                                       ; preds = %do.end97.i
  %rfoff_reason.i.i = getelementptr inbounds %struct.rtl_priv, ptr %459, i32 0, i32 21, i32 18
  %462 = ptrtoint ptr %rfoff_reason.i.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load i32, ptr %rfoff_reason.i.i, align 4
  %464 = zext i32 %463 to i64
  call void @__sanitizer_cov_trace_switch(i64 %464, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %463, label %if.else6.i.i [
    i32 268435456, label %if.then2.i.i
    i32 0, label %if.then5.i.i
  ]

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rtl8723e_sw_led_on(ptr noundef %hw, ptr noundef %sw_led0.i.i) #8
  br label %_rtl8723e_gen_refresh_led_state.exit.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rtl8723e_sw_led_on(ptr noundef %hw, ptr noundef %sw_led0.i.i) #8
  br label %_rtl8723e_gen_refresh_led_state.exit.i

if.else6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rtl8723e_sw_led_off(ptr noundef %hw, ptr noundef %sw_led0.i.i) #8
  br label %_rtl8723e_gen_refresh_led_state.exit.i

_rtl8723e_gen_refresh_led_state.exit.i:           ; preds = %if.else6.i.i, %if.then5.i.i, %if.then2.i.i, %do.end97.i._rtl8723e_gen_refresh_led_state.exit.i_crit_edge
  %465 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %466(ptr noundef %10, i32 noundef 448, i32 noundef 0) #8
  %467 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i410.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %468, i32 0, i32 1
  %469 = ptrtoint ptr %write_readback.i410.i to i32
  call void @__asan_load1_noabort(i32 %469)
  %470 = load i8, ptr %write_readback.i410.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %470)
  %tobool.not.i411.i = icmp eq i8 %470, 0
  br i1 %tobool.not.i411.i, label %_rtl8723e_gen_refresh_led_state.exit.i.if.end_crit_edge, label %if.then.i414.i

_rtl8723e_gen_refresh_led_state.exit.i.if.end_crit_edge: ; preds = %_rtl8723e_gen_refresh_led_state.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i414.i:                                   ; preds = %_rtl8723e_gen_refresh_led_state.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i412.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 13, i32 11
  %471 = ptrtoint ptr %read32_sync.i412.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %read32_sync.i412.i, align 4
  %call.i413.i = tail call i32 %472(ptr noundef %10, i32 noundef 448) #8
  br label %if.end

do.end14:                                         ; preds = %_rtl8723e_llt_write.exit238.i.i, %_rtl8723e_llt_write.exit215.i.i, %_rtl8723e_llt_write.exit187.thread.i.i, %_rtl8723e_llt_write.exit.i.i, %if.then24.i, %rtl_write_byte.exit.i.do.end14_crit_edge
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #11
  br label %do.body90

if.end:                                           ; preds = %if.then.i414.i, %_rtl8723e_gen_refresh_led_state.exit.i.if.end_crit_edge
  %call17 = tail call i32 @rtl8723_download_fw(ptr noundef %hw, i1 noundef zeroext false, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.13) #8
  br label %do.body90

if.end20:                                         ; preds = %if.end
  %473 = ptrtoint ptr %fw_ready to i32
  call void @__asan_store1_noabort(i32 %473)
  store i8 1, ptr %fw_ready, align 2
  %last_hmeboxnum = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 37
  %474 = ptrtoint ptr %last_hmeboxnum to i32
  call void @__asan_store1_noabort(i32 %474)
  store i8 0, ptr %last_hmeboxnum, align 1
  %call22 = tail call zeroext i1 @rtl8723e_phy_mac_config(ptr noundef %hw) #8
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %475 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %read32_sync.i, align 4
  %call.i = tail call i32 %476(ptr noundef %1, i32 noundef 1544) #8
  %receive_config = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 3
  %and = and i32 %call.i, -769
  %477 = ptrtoint ptr %receive_config to i32
  call void @__asan_store4_noabort(i32 %477)
  store i32 %and, ptr %receive_config, align 4
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %478 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %write32_async.i, align 4
  tail call void %479(ptr noundef %1, i32 noundef 1544, i32 noundef %and) #8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %480 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %481, i32 0, i32 1
  %482 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %482)
  %483 = load i8, ptr %write_readback.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %483)
  %tobool.not.i = icmp eq i8 %483, 0
  br i1 %tobool.not.i, label %if.end20.rtl_write_dword.exit_crit_edge, label %if.then.i

if.end20.rtl_write_dword.exit_crit_edge:          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit

if.then.i:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %484 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %read32_sync.i, align 4
  %call.i195 = tail call i32 %485(ptr noundef %1, i32 noundef 1544) #8
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i, %if.end20.rtl_write_dword.exit_crit_edge
  %call26 = tail call zeroext i1 @rtl8723e_phy_bb_config(ptr noundef %hw) #8
  %rf_mode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 3
  %486 = ptrtoint ptr %rf_mode to i32
  call void @__asan_store1_noabort(i32 %486)
  store i8 0, ptr %rf_mode, align 4
  %call27 = tail call zeroext i1 @rtl8723e_phy_rf_config(ptr noundef %hw) #8
  %version = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 13
  %487 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load i32, ptr %version, align 4
  %489 = trunc i32 %488 to i16
  %trunc = and i16 %489, -3968
  %490 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %490, ptr @__sancov_gen_cov_switch_values.86)
  switch i16 %trunc, label %rtl_write_dword.exit.if.end53_crit_edge [
    i16 128, label %if.then37
    i16 4224, label %if.then51
  ]

rtl_write_dword.exit.if.end53_crit_edge:          ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then37:                                        ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #10
  %491 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %priv, align 8
  %cfg.i197 = getelementptr inbounds %struct.rtl_priv, ptr %492, i32 0, i32 32
  %493 = ptrtoint ptr %cfg.i197 to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %cfg.i197, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %494, i32 0, i32 4
  %495 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load ptr, ptr %ops.i, align 4
  %set_rfreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %496, i32 0, i32 48
  %497 = ptrtoint ptr %set_rfreg.i to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load ptr, ptr %set_rfreg.i, align 4
  tail call void %498(ptr noundef %hw, i32 noundef 0, i32 noundef 26, i32 noundef -1, i32 noundef 197205) #8
  %499 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load ptr, ptr %priv, align 8
  %cfg.i199 = getelementptr inbounds %struct.rtl_priv, ptr %500, i32 0, i32 32
  %501 = ptrtoint ptr %cfg.i199 to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %cfg.i199, align 8
  %ops.i200 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %502, i32 0, i32 4
  %503 = ptrtoint ptr %ops.i200 to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load ptr, ptr %ops.i200, align 4
  %set_rfreg.i201 = getelementptr inbounds %struct.rtl_hal_ops, ptr %504, i32 0, i32 48
  %505 = ptrtoint ptr %set_rfreg.i201 to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %set_rfreg.i201, align 4
  tail call void %506(ptr noundef %hw, i32 noundef 0, i32 noundef 27, i32 noundef -1, i32 noundef 330240) #8
  br label %if.end53

if.then51:                                        ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #10
  %507 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load ptr, ptr %priv, align 8
  %cfg.i203 = getelementptr inbounds %struct.rtl_priv, ptr %508, i32 0, i32 32
  %509 = ptrtoint ptr %cfg.i203 to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %cfg.i203, align 8
  %ops.i204 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %510, i32 0, i32 4
  %511 = ptrtoint ptr %ops.i204 to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load ptr, ptr %ops.i204, align 4
  %set_rfreg.i205 = getelementptr inbounds %struct.rtl_hal_ops, ptr %512, i32 0, i32 48
  %513 = ptrtoint ptr %set_rfreg.i205 to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load ptr, ptr %set_rfreg.i205, align 4
  tail call void %514(ptr noundef %hw, i32 noundef 0, i32 noundef 12, i32 noundef -1, i32 noundef 562350) #8
  %515 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load ptr, ptr %priv, align 8
  %cfg.i207 = getelementptr inbounds %struct.rtl_priv, ptr %516, i32 0, i32 32
  %517 = ptrtoint ptr %cfg.i207 to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load ptr, ptr %cfg.i207, align 8
  %ops.i208 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %518, i32 0, i32 4
  %519 = ptrtoint ptr %ops.i208 to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load ptr, ptr %ops.i208, align 4
  %set_rfreg.i209 = getelementptr inbounds %struct.rtl_hal_ops, ptr %520, i32 0, i32 48
  %521 = ptrtoint ptr %set_rfreg.i209 to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load ptr, ptr %set_rfreg.i209, align 4
  tail call void %522(ptr noundef %hw, i32 noundef 0, i32 noundef 10, i32 noundef -1, i32 noundef 110385) #8
  %523 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load ptr, ptr %priv, align 8
  %cfg.i211 = getelementptr inbounds %struct.rtl_priv, ptr %524, i32 0, i32 32
  %525 = ptrtoint ptr %cfg.i211 to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load ptr, ptr %cfg.i211, align 8
  %ops.i212 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %526, i32 0, i32 4
  %527 = ptrtoint ptr %ops.i212 to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load ptr, ptr %ops.i212, align 4
  %set_rfreg.i213 = getelementptr inbounds %struct.rtl_hal_ops, ptr %528, i32 0, i32 48
  %529 = ptrtoint ptr %set_rfreg.i213 to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load ptr, ptr %set_rfreg.i213, align 4
  tail call void %530(ptr noundef %hw, i32 noundef 0, i32 noundef 21, i32 noundef -1, i32 noundef 586789) #8
  %531 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load ptr, ptr %priv, align 8
  %cfg.i215 = getelementptr inbounds %struct.rtl_priv, ptr %532, i32 0, i32 32
  %533 = ptrtoint ptr %cfg.i215 to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load ptr, ptr %cfg.i215, align 8
  %ops.i216 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %534, i32 0, i32 4
  %535 = ptrtoint ptr %ops.i216 to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load ptr, ptr %ops.i216, align 4
  %set_rfreg.i217 = getelementptr inbounds %struct.rtl_hal_ops, ptr %536, i32 0, i32 48
  %537 = ptrtoint ptr %set_rfreg.i217 to i32
  call void @__asan_load4_noabort(i32 %537)
  %538 = load ptr, ptr %set_rfreg.i217, align 4
  tail call void %538(ptr noundef %hw, i32 noundef 0, i32 noundef 38, i32 noundef -1, i32 noundef 324096) #8
  %539 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load ptr, ptr %priv, align 8
  %cfg.i219 = getelementptr inbounds %struct.rtl_priv, ptr %540, i32 0, i32 32
  %541 = ptrtoint ptr %cfg.i219 to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load ptr, ptr %cfg.i219, align 8
  %ops.i220 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %542, i32 0, i32 4
  %543 = ptrtoint ptr %ops.i220 to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load ptr, ptr %ops.i220, align 4
  %set_rfreg.i221 = getelementptr inbounds %struct.rtl_hal_ops, ptr %544, i32 0, i32 48
  %545 = ptrtoint ptr %set_rfreg.i221 to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load ptr, ptr %set_rfreg.i221, align 4
  tail call void %546(ptr noundef %hw, i32 noundef 0, i32 noundef 30, i32 noundef -1, i32 noundef 278611) #8
  %547 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load ptr, ptr %priv, align 8
  %cfg.i223 = getelementptr inbounds %struct.rtl_priv, ptr %548, i32 0, i32 32
  %549 = ptrtoint ptr %cfg.i223 to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load ptr, ptr %cfg.i223, align 8
  %ops.i224 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %550, i32 0, i32 4
  %551 = ptrtoint ptr %ops.i224 to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load ptr, ptr %ops.i224, align 4
  %set_rfreg.i225 = getelementptr inbounds %struct.rtl_hal_ops, ptr %552, i32 0, i32 48
  %553 = ptrtoint ptr %set_rfreg.i225 to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load ptr, ptr %set_rfreg.i225, align 4
  tail call void %554(ptr noundef %hw, i32 noundef 0, i32 noundef 31, i32 noundef -1, i32 noundef 524801) #8
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.then37, %rtl_write_dword.exit.if.end53_crit_edge
  %555 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load ptr, ptr %priv, align 8
  %cfg.i227 = getelementptr inbounds %struct.rtl_priv, ptr %556, i32 0, i32 32
  %557 = ptrtoint ptr %cfg.i227 to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load ptr, ptr %cfg.i227, align 8
  %ops.i228 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %558, i32 0, i32 4
  %559 = ptrtoint ptr %ops.i228 to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load ptr, ptr %ops.i228, align 4
  %get_rfreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %560, i32 0, i32 47
  %561 = ptrtoint ptr %get_rfreg.i to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load ptr, ptr %get_rfreg.i, align 4
  %call.i229 = tail call i32 %562(ptr noundef %hw, i32 noundef 0, i32 noundef 24, i32 noundef 1048575) #8
  %rfreg_chnlval = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 52
  %563 = ptrtoint ptr %rfreg_chnlval to i32
  call void @__asan_store4_noabort(i32 %563)
  store i32 %call.i229, ptr %rfreg_chnlval, align 4
  %564 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load ptr, ptr %priv, align 8
  %cfg.i231 = getelementptr inbounds %struct.rtl_priv, ptr %565, i32 0, i32 32
  %566 = ptrtoint ptr %cfg.i231 to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load ptr, ptr %cfg.i231, align 8
  %ops.i232 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %567, i32 0, i32 4
  %568 = ptrtoint ptr %ops.i232 to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load ptr, ptr %ops.i232, align 4
  %get_rfreg.i233 = getelementptr inbounds %struct.rtl_hal_ops, ptr %569, i32 0, i32 47
  %570 = ptrtoint ptr %get_rfreg.i233 to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load ptr, ptr %get_rfreg.i233, align 4
  %call.i234 = tail call i32 %571(ptr noundef %hw, i32 noundef 1, i32 noundef 24, i32 noundef 1048575) #8
  %arrayidx57 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 52, i32 1
  %572 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %572)
  store i32 %call.i234, ptr %arrayidx57, align 4
  %573 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load ptr, ptr %priv, align 8
  %cfg.i236 = getelementptr inbounds %struct.rtl_priv, ptr %574, i32 0, i32 32
  %575 = ptrtoint ptr %cfg.i236 to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load ptr, ptr %cfg.i236, align 8
  %ops.i237 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %576, i32 0, i32 4
  %577 = ptrtoint ptr %ops.i237 to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load ptr, ptr %ops.i237, align 4
  %set_bbreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %578, i32 0, i32 46
  %579 = ptrtoint ptr %set_bbreg.i to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load ptr, ptr %set_bbreg.i, align 4
  tail call void %580(ptr noundef %hw, i32 noundef 2048, i32 noundef 16777216, i32 noundef 1) #8
  %581 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load ptr, ptr %priv, align 8
  %cfg.i239 = getelementptr inbounds %struct.rtl_priv, ptr %582, i32 0, i32 32
  %583 = ptrtoint ptr %cfg.i239 to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load ptr, ptr %cfg.i239, align 8
  %ops.i240 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %584, i32 0, i32 4
  %585 = ptrtoint ptr %ops.i240 to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load ptr, ptr %ops.i240, align 4
  %set_bbreg.i241 = getelementptr inbounds %struct.rtl_hal_ops, ptr %586, i32 0, i32 46
  %587 = ptrtoint ptr %set_bbreg.i241 to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load ptr, ptr %set_bbreg.i241, align 4
  tail call void %588(ptr noundef %hw, i32 noundef 2048, i32 noundef 33554432, i32 noundef 1) #8
  %589 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %589)
  %590 = load ptr, ptr %priv, align 8
  %cfg.i243 = getelementptr inbounds %struct.rtl_priv, ptr %590, i32 0, i32 32
  %591 = ptrtoint ptr %cfg.i243 to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load ptr, ptr %cfg.i243, align 8
  %ops.i244 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %592, i32 0, i32 4
  %593 = ptrtoint ptr %ops.i244 to i32
  call void @__asan_load4_noabort(i32 %593)
  %594 = load ptr, ptr %ops.i244, align 4
  %set_bbreg.i245 = getelementptr inbounds %struct.rtl_hal_ops, ptr %594, i32 0, i32 46
  %595 = ptrtoint ptr %set_bbreg.i245 to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load ptr, ptr %set_bbreg.i245, align 4
  tail call void %596(ptr noundef %hw, i32 noundef 2180, i32 noundef 1024, i32 noundef 1) #8
  %597 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load ptr, ptr %priv, align 8
  %write8_async.i.i247 = getelementptr inbounds %struct.rtl_priv, ptr %598, i32 0, i32 13, i32 5
  %599 = ptrtoint ptr %write8_async.i.i247 to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load ptr, ptr %write8_async.i.i247, align 4
  tail call void %600(ptr noundef %598, i32 noundef 1152, i8 noundef zeroext 8) #8
  %cfg.i.i248 = getelementptr inbounds %struct.rtl_priv, ptr %598, i32 0, i32 32
  %601 = ptrtoint ptr %cfg.i.i248 to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load ptr, ptr %cfg.i.i248, align 8
  %write_readback.i.i249 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %602, i32 0, i32 1
  %603 = ptrtoint ptr %write_readback.i.i249 to i32
  call void @__asan_load1_noabort(i32 %603)
  %604 = load i8, ptr %write_readback.i.i249, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %604)
  %tobool.not.i.i250 = icmp eq i8 %604, 0
  br i1 %tobool.not.i.i250, label %if.end53.rtl_write_byte.exit.i254_crit_edge, label %if.then.i.i253

if.end53.rtl_write_byte.exit.i254_crit_edge:      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit.i254

if.then.i.i253:                                   ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i251 = getelementptr inbounds %struct.rtl_priv, ptr %598, i32 0, i32 13, i32 9
  %605 = ptrtoint ptr %read8_sync.i.i251 to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load ptr, ptr %read8_sync.i.i251, align 4
  %call.i.i252 = tail call zeroext i8 %606(ptr noundef %598, i32 noundef 1152) #8
  br label %rtl_write_byte.exit.i254

rtl_write_byte.exit.i254:                         ; preds = %if.then.i.i253, %if.end53.rtl_write_byte.exit.i254_crit_edge
  %607 = ptrtoint ptr %write8_async.i.i247 to i32
  call void @__asan_load4_noabort(i32 %607)
  %608 = load ptr, ptr %write8_async.i.i247, align 4
  tail call void %608(ptr noundef %598, i32 noundef 1539, i8 noundef zeroext 4) #8
  %609 = ptrtoint ptr %cfg.i.i248 to i32
  call void @__asan_load4_noabort(i32 %609)
  %610 = load ptr, ptr %cfg.i.i248, align 8
  %write_readback.i79.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %610, i32 0, i32 1
  %611 = ptrtoint ptr %write_readback.i79.i to i32
  call void @__asan_load1_noabort(i32 %611)
  %612 = load i8, ptr %write_readback.i79.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %612)
  %tobool.not.i80.i = icmp eq i8 %612, 0
  br i1 %tobool.not.i80.i, label %rtl_write_byte.exit.i254.rtl_write_byte.exit84.i_crit_edge, label %if.then.i83.i

rtl_write_byte.exit.i254.rtl_write_byte.exit84.i_crit_edge: ; preds = %rtl_write_byte.exit.i254
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit84.i

if.then.i83.i:                                    ; preds = %rtl_write_byte.exit.i254
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i81.i = getelementptr inbounds %struct.rtl_priv, ptr %598, i32 0, i32 13, i32 9
  %613 = ptrtoint ptr %read8_sync.i81.i to i32
  call void @__asan_load4_noabort(i32 %613)
  %614 = load ptr, ptr %read8_sync.i81.i, align 4
  %call.i82.i = tail call zeroext i8 %614(ptr noundef %598, i32 noundef 1539) #8
  br label %rtl_write_byte.exit84.i

rtl_write_byte.exit84.i:                          ; preds = %if.then.i83.i, %rtl_write_byte.exit.i254.rtl_write_byte.exit84.i_crit_edge
  %write32_async.i.i255 = getelementptr inbounds %struct.rtl_priv, ptr %598, i32 0, i32 13, i32 7
  %615 = ptrtoint ptr %write32_async.i.i255 to i32
  call void @__asan_load4_noabort(i32 %615)
  %616 = load ptr, ptr %write32_async.i.i255, align 4
  tail call void %616(ptr noundef %598, i32 noundef 1088, i32 noundef 4095) #8
  %617 = ptrtoint ptr %cfg.i.i248 to i32
  call void @__asan_load4_noabort(i32 %617)
  %618 = load ptr, ptr %cfg.i.i248, align 8
  %write_readback.i86.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %618, i32 0, i32 1
  %619 = ptrtoint ptr %write_readback.i86.i to i32
  call void @__asan_load1_noabort(i32 %619)
  %620 = load i8, ptr %write_readback.i86.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %620)
  %tobool.not.i87.i = icmp eq i8 %620, 0
  br i1 %tobool.not.i87.i, label %rtl_write_byte.exit84.i.rtl_write_dword.exit.i257_crit_edge, label %if.then.i89.i

rtl_write_byte.exit84.i.rtl_write_dword.exit.i257_crit_edge: ; preds = %rtl_write_byte.exit84.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit.i257

if.then.i89.i:                                    ; preds = %rtl_write_byte.exit84.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i.i256 = getelementptr inbounds %struct.rtl_priv, ptr %598, i32 0, i32 13, i32 11
  %621 = ptrtoint ptr %read32_sync.i.i256 to i32
  call void @__asan_load4_noabort(i32 %621)
  %622 = load ptr, ptr %read32_sync.i.i256, align 4
  %call.i88.i = tail call i32 %622(ptr noundef %598, i32 noundef 1088) #8
  br label %rtl_write_dword.exit.i257

rtl_write_dword.exit.i257:                        ; preds = %if.then.i89.i, %rtl_write_byte.exit84.i.rtl_write_dword.exit.i257_crit_edge
  %623 = ptrtoint ptr %write8_async.i.i247 to i32
  call void @__asan_load4_noabort(i32 %623)
  %624 = load ptr, ptr %write8_async.i.i247, align 4
  tail call void %624(ptr noundef %598, i32 noundef 1307, i8 noundef zeroext 9) #8
  %625 = ptrtoint ptr %cfg.i.i248 to i32
  call void @__asan_load4_noabort(i32 %625)
  %626 = load ptr, ptr %cfg.i.i248, align 8
  %write_readback.i92.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %626, i32 0, i32 1
  %627 = ptrtoint ptr %write_readback.i92.i to i32
  call void @__asan_load1_noabort(i32 %627)
  %628 = load i8, ptr %write_readback.i92.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %628)
  %tobool.not.i93.i = icmp eq i8 %628, 0
  br i1 %tobool.not.i93.i, label %rtl_write_dword.exit.i257.rtl_write_byte.exit97.i_crit_edge, label %if.then.i96.i

rtl_write_dword.exit.i257.rtl_write_byte.exit97.i_crit_edge: ; preds = %rtl_write_dword.exit.i257
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit97.i

if.then.i96.i:                                    ; preds = %rtl_write_dword.exit.i257
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i94.i = getelementptr inbounds %struct.rtl_priv, ptr %598, i32 0, i32 13, i32 9
  %629 = ptrtoint ptr %read8_sync.i94.i to i32
  call void @__asan_load4_noabort(i32 %629)
  %630 = load ptr, ptr %read8_sync.i94.i, align 4
  %call.i95.i = tail call zeroext i8 %630(ptr noundef %598, i32 noundef 1307) #8
  br label %rtl_write_byte.exit97.i

rtl_write_byte.exit97.i:                          ; preds = %if.then.i96.i, %rtl_write_dword.exit.i257.rtl_write_byte.exit97.i_crit_edge
  %631 = ptrtoint ptr %write8_async.i.i247 to i32
  call void @__asan_load4_noabort(i32 %631)
  %632 = load ptr, ptr %write8_async.i.i247, align 4
  tail call void %632(ptr noundef %598, i32 noundef 1116, i8 noundef zeroext 0) #8
  %633 = ptrtoint ptr %cfg.i.i248 to i32
  call void @__asan_load4_noabort(i32 %633)
  %634 = load ptr, ptr %cfg.i.i248, align 8
  %write_readback.i100.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %634, i32 0, i32 1
  %635 = ptrtoint ptr %write_readback.i100.i to i32
  call void @__asan_load1_noabort(i32 %635)
  %636 = load i8, ptr %write_readback.i100.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %636)
  %tobool.not.i101.i = icmp eq i8 %636, 0
  br i1 %tobool.not.i101.i, label %rtl_write_byte.exit97.i.rtl_write_byte.exit105.i_crit_edge, label %if.then.i104.i

rtl_write_byte.exit97.i.rtl_write_byte.exit105.i_crit_edge: ; preds = %rtl_write_byte.exit97.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit105.i

if.then.i104.i:                                   ; preds = %rtl_write_byte.exit97.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i102.i = getelementptr inbounds %struct.rtl_priv, ptr %598, i32 0, i32 13, i32 9
  %637 = ptrtoint ptr %read8_sync.i102.i to i32
  call void @__asan_load4_noabort(i32 %637)
  %638 = load ptr, ptr %read8_sync.i102.i, align 4
  %call.i103.i = tail call zeroext i8 %638(ptr noundef %598, i32 noundef 1116) #8
  br label %rtl_write_byte.exit105.i

rtl_write_byte.exit105.i:                         ; preds = %if.then.i104.i, %rtl_write_byte.exit97.i.rtl_write_byte.exit105.i_crit_edge
  %write16_async.i.i258 = getelementptr inbounds %struct.rtl_priv, ptr %598, i32 0, i32 13, i32 6
  %639 = ptrtoint ptr %write16_async.i.i258 to i32
  call void @__asan_load4_noabort(i32 %639)
  %640 = load ptr, ptr %write16_async.i.i258, align 4
  tail call void %640(ptr noundef %598, i32 noundef 1056, i16 noundef zeroext 8064) #8
  %641 = ptrtoint ptr %cfg.i.i248 to i32
  call void @__asan_load4_noabort(i32 %641)
  %642 = load ptr, ptr %cfg.i.i248, align 8
  %write_readback.i107.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %642, i32 0, i32 1
  %643 = ptrtoint ptr %write_readback.i107.i to i32
  call void @__asan_load1_noabort(i32 %643)
  %644 = load i8, ptr %write_readback.i107.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %644)
  %tobool.not.i108.i = icmp eq i8 %644, 0
  br i1 %tobool.not.i108.i, label %rtl_write_byte.exit105.i.rtl_write_word.exit.i260_crit_edge, label %if.then.i110.i

rtl_write_byte.exit105.i.rtl_write_word.exit.i260_crit_edge: ; preds = %rtl_write_byte.exit105.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit.i260

if.then.i110.i:                                   ; preds = %rtl_write_byte.exit105.i
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i.i259 = getelementptr inbounds %struct.rtl_priv, ptr %598, i32 0, i32 13, i32 10
  %645 = ptrtoint ptr %read16_sync.i.i259 to i32
  call void @__asan_load4_noabort(i32 %645)
  %646 = load ptr, ptr %read16_sync.i.i259, align 4
  %call.i109.i = tail call zeroext i16 %646(ptr noundef %598, i32 noundef 1056) #8
  br label %rtl_write_word.exit.i260

rtl_write_word.exit.i260:                         ; preds = %if.then.i110.i, %rtl_write_byte.exit105.i.rtl_write_word.exit.i260_crit_edge
  %647 = ptrtoint ptr %write16_async.i.i258 to i32
  call void @__asan_load4_noabort(i32 %647)
  %648 = load ptr, ptr %write16_async.i.i258, align 4
  tail call void %648(ptr noundef %598, i32 noundef 1066, i16 noundef zeroext 1799) #8
  %649 = ptrtoint ptr %cfg.i.i248 to i32
  call void @__asan_load4_noabort(i32 %649)
  %650 = load ptr, ptr %cfg.i.i248, align 8
  %write_readback.i113.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %650, i32 0, i32 1
  %651 = ptrtoint ptr %write_readback.i113.i to i32
  call void @__asan_load1_noabort(i32 %651)
  %652 = load i8, ptr %write_readback.i113.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %652)
  %tobool.not.i114.i = icmp eq i8 %652, 0
  br i1 %tobool.not.i114.i, label %rtl_write_word.exit.i260.rtl_write_word.exit118.i_crit_edge, label %if.then.i117.i

rtl_write_word.exit.i260.rtl_write_word.exit118.i_crit_edge: ; preds = %rtl_write_word.exit.i260
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit118.i

if.then.i117.i:                                   ; preds = %rtl_write_word.exit.i260
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i115.i = getelementptr inbounds %struct.rtl_priv, ptr %598, i32 0, i32 13, i32 10
  %653 = ptrtoint ptr %read16_sync.i115.i to i32
  call void @__asan_load4_noabort(i32 %653)
  %654 = load ptr, ptr %read16_sync.i115.i, align 4
  %call.i116.i = tail call zeroext i16 %654(ptr noundef %598, i32 noundef 1066) #8
  br label %rtl_write_word.exit118.i

rtl_write_word.exit118.i:                         ; preds = %if.then.i117.i, %rtl_write_word.exit.i260.rtl_write_word.exit118.i_crit_edge
  %655 = ptrtoint ptr %write32_async.i.i255 to i32
  call void @__asan_load4_noabort(i32 %655)
  %656 = load ptr, ptr %write32_async.i.i255, align 4
  tail call void %656(ptr noundef %598, i32 noundef 1228, i32 noundef 33630210) #8
  %657 = ptrtoint ptr %cfg.i.i248 to i32
  call void @__asan_load4_noabort(i32 %657)
  %658 = load ptr, ptr %cfg.i.i248, align 8
  %write_readback.i121.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %658, i32 0, i32 1
  %659 = ptrtoint ptr %write_readback.i121.i to i32
  call void @__asan_load1_noabort(i32 %659)
  %660 = load i8, ptr %write_readback.i121.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %660)
  %tobool.not.i122.i = icmp eq i8 %660, 0
  br i1 %tobool.not.i122.i, label %rtl_write_word.exit118.i.rtl_write_dword.exit126.i_crit_edge, label %if.then.i125.i

rtl_write_word.exit118.i.rtl_write_dword.exit126.i_crit_edge: ; preds = %rtl_write_word.exit118.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit126.i

if.then.i125.i:                                   ; preds = %rtl_write_word.exit118.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i123.i = getelementptr inbounds %struct.rtl_priv, ptr %598, i32 0, i32 13, i32 11
  %661 = ptrtoint ptr %read32_sync.i123.i to i32
  call void @__asan_load4_noabort(i32 %661)
  %662 = load ptr, ptr %read32_sync.i123.i, align 4
  %call.i124.i = tail call i32 %662(ptr noundef %598, i32 noundef 1228) #8
  br label %rtl_write_dword.exit126.i

rtl_write_dword.exit126.i:                        ; preds = %if.then.i125.i, %rtl_write_word.exit118.i.rtl_write_dword.exit126.i_crit_edge
  %663 = ptrtoint ptr %write8_async.i.i247 to i32
  call void @__asan_load4_noabort(i32 %663)
  %664 = load ptr, ptr %write8_async.i.i247, align 4
  tail call void %664(ptr noundef %598, i32 noundef 1059, i8 noundef zeroext -1) #8
  %665 = ptrtoint ptr %cfg.i.i248 to i32
  call void @__asan_load4_noabort(i32 %665)
  %666 = load ptr, ptr %cfg.i.i248, align 8
  %write_readback.i129.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %666, i32 0, i32 1
  %667 = ptrtoint ptr %write_readback.i129.i to i32
  call void @__asan_load1_noabort(i32 %667)
  %668 = load i8, ptr %write_readback.i129.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %668)
  %tobool.not.i130.i = icmp eq i8 %668, 0
  br i1 %tobool.not.i130.i, label %rtl_write_dword.exit126.i.rtl_write_byte.exit134.i_crit_edge, label %if.then.i133.i

rtl_write_dword.exit126.i.rtl_write_byte.exit134.i_crit_edge: ; preds = %rtl_write_dword.exit126.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit134.i

if.then.i133.i:                                   ; preds = %rtl_write_dword.exit126.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i131.i = getelementptr inbounds %struct.rtl_priv, ptr %598, i32 0, i32 13, i32 9
  %669 = ptrtoint ptr %read8_sync.i131.i to i32
  call void @__asan_load4_noabort(i32 %669)
  %670 = load ptr, ptr %read8_sync.i131.i, align 4
  %call.i132.i = tail call zeroext i8 %670(ptr noundef %598, i32 noundef 1059) #8
  br label %rtl_write_byte.exit134.i

rtl_write_byte.exit134.i:                         ; preds = %if.then.i133.i, %rtl_write_dword.exit126.i.rtl_write_byte.exit134.i_crit_edge
  %671 = ptrtoint ptr %write32_async.i.i255 to i32
  call void @__asan_load4_noabort(i32 %671)
  %672 = load ptr, ptr %write32_async.i.i255, align 4
  tail call void %672(ptr noundef %598, i32 noundef 1072, i32 noundef 16777216) #8
  %673 = ptrtoint ptr %cfg.i.i248 to i32
  call void @__asan_load4_noabort(i32 %673)
  %674 = load ptr, ptr %cfg.i.i248, align 8
  %write_readback.i137.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %674, i32 0, i32 1
  %675 = ptrtoint ptr %write_readback.i137.i to i32
  call void @__asan_load1_noabort(i32 %675)
  %676 = load i8, ptr %write_readback.i137.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %676)
  %tobool.not.i138.i = icmp eq i8 %676, 0
  br i1 %tobool.not.i138.i, label %rtl_write_byte.exit134.i.rtl_write_dword.exit142.i_crit_edge, label %if.then.i141.i

rtl_write_byte.exit134.i.rtl_write_dword.exit142.i_crit_edge: ; preds = %rtl_write_byte.exit134.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit142.i

if.then.i141.i:                                   ; preds = %rtl_write_byte.exit134.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i139.i = getelementptr inbounds %struct.rtl_priv, ptr %598, i32 0, i32 13, i32 11
  %677 = ptrtoint ptr %read32_sync.i139.i to i32
  call void @__asan_load4_noabort(i32 %677)
  %678 = load ptr, ptr %read32_sync.i139.i, align 4
  %call.i140.i = tail call i32 %678(ptr noundef %598, i32 noundef 1072) #8
  br label %rtl_write_dword.exit142.i

rtl_write_dword.exit142.i:                        ; preds = %if.then.i141.i, %rtl_write_byte.exit134.i.rtl_write_dword.exit142.i_crit_edge
  %679 = ptrtoint ptr %write32_async.i.i255 to i32
  call void @__asan_load4_noabort(i32 %679)
  %680 = load ptr, ptr %write32_async.i.i255, align 4
  tail call void %680(ptr noundef %598, i32 noundef 1076, i32 noundef 117835012) #8
  %681 = ptrtoint ptr %cfg.i.i248 to i32
  call void @__asan_load4_noabort(i32 %681)
  %682 = load ptr, ptr %cfg.i.i248, align 8
  %write_readback.i145.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %682, i32 0, i32 1
  %683 = ptrtoint ptr %write_readback.i145.i to i32
  call void @__asan_load1_noabort(i32 %683)
  %684 = load i8, ptr %write_readback.i145.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %684)
  %tobool.not.i146.i = icmp eq i8 %684, 0
  br i1 %tobool.not.i146.i, label %rtl_write_dword.exit142.i.rtl_write_dword.exit150.i_crit_edge, label %if.then.i149.i

rtl_write_dword.exit142.i.rtl_write_dword.exit150.i_crit_edge: ; preds = %rtl_write_dword.exit142.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit150.i

if.then.i149.i:                                   ; preds = %rtl_write_dword.exit142.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i147.i = getelementptr inbounds %struct.rtl_priv, ptr %598, i32 0, i32 13, i32 11
  %685 = ptrtoint ptr %read32_sync.i147.i to i32
  call void @__asan_load4_noabort(i32 %685)
  %686 = load ptr, ptr %read32_sync.i147.i, align 4
  %call.i148.i = tail call i32 %686(ptr noundef %598, i32 noundef 1076) #8
  br label %rtl_write_dword.exit150.i

rtl_write_dword.exit150.i:                        ; preds = %if.then.i149.i, %rtl_write_dword.exit142.i.rtl_write_dword.exit150.i_crit_edge
  %687 = ptrtoint ptr %write32_async.i.i255 to i32
  call void @__asan_load4_noabort(i32 %687)
  %688 = load ptr, ptr %write32_async.i.i255, align 4
  tail call void %688(ptr noundef %598, i32 noundef 1080, i32 noundef 16777216) #8
  %689 = ptrtoint ptr %cfg.i.i248 to i32
  call void @__asan_load4_noabort(i32 %689)
  %690 = load ptr, ptr %cfg.i.i248, align 8
  %write_readback.i153.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %690, i32 0, i32 1
  %691 = ptrtoint ptr %write_readback.i153.i to i32
  call void @__asan_load1_noabort(i32 %691)
  %692 = load i8, ptr %write_readback.i153.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %692)
  %tobool.not.i154.i = icmp eq i8 %692, 0
  br i1 %tobool.not.i154.i, label %rtl_write_dword.exit150.i.rtl_write_dword.exit158.i_crit_edge, label %if.then.i157.i

rtl_write_dword.exit150.i.rtl_write_dword.exit158.i_crit_edge: ; preds = %rtl_write_dword.exit150.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit158.i

if.then.i157.i:                                   ; preds = %rtl_write_dword.exit150.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i155.i = getelementptr inbounds %struct.rtl_priv, ptr %598, i32 0, i32 13, i32 11
  %693 = ptrtoint ptr %read32_sync.i155.i to i32
  call void @__asan_load4_noabort(i32 %693)
  %694 = load ptr, ptr %read32_sync.i155.i, align 4
  %call.i156.i = tail call i32 %694(ptr noundef %598, i32 noundef 1080) #8
  br label %rtl_write_dword.exit158.i

rtl_write_dword.exit158.i:                        ; preds = %if.then.i157.i, %rtl_write_dword.exit150.i.rtl_write_dword.exit158.i_crit_edge
  %695 = ptrtoint ptr %write32_async.i.i255 to i32
  call void @__asan_load4_noabort(i32 %695)
  %696 = load ptr, ptr %write32_async.i.i255, align 4
  tail call void %696(ptr noundef %598, i32 noundef 1084, i32 noundef 117835012) #8
  %697 = ptrtoint ptr %cfg.i.i248 to i32
  call void @__asan_load4_noabort(i32 %697)
  %698 = load ptr, ptr %cfg.i.i248, align 8
  %write_readback.i161.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %698, i32 0, i32 1
  %699 = ptrtoint ptr %write_readback.i161.i to i32
  call void @__asan_load1_noabort(i32 %699)
  %700 = load i8, ptr %write_readback.i161.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %700)
  %tobool.not.i162.i = icmp eq i8 %700, 0
  br i1 %tobool.not.i162.i, label %rtl_write_dword.exit158.i.rtl_write_dword.exit166.i_crit_edge, label %if.then.i165.i

rtl_write_dword.exit158.i.rtl_write_dword.exit166.i_crit_edge: ; preds = %rtl_write_dword.exit158.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit166.i

if.then.i165.i:                                   ; preds = %rtl_write_dword.exit158.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i163.i = getelementptr inbounds %struct.rtl_priv, ptr %598, i32 0, i32 13, i32 11
  %701 = ptrtoint ptr %read32_sync.i163.i to i32
  call void @__asan_load4_noabort(i32 %701)
  %702 = load ptr, ptr %read32_sync.i163.i, align 4
  %call.i164.i = tail call i32 %702(ptr noundef %598, i32 noundef 1084) #8
  br label %rtl_write_dword.exit166.i

rtl_write_dword.exit166.i:                        ; preds = %if.then.i165.i, %rtl_write_dword.exit158.i.rtl_write_dword.exit166.i_crit_edge
  %bt_coexistence.i = getelementptr inbounds %struct.rtl_priv, ptr %598, i32 0, i32 49, i32 9
  %703 = ptrtoint ptr %bt_coexistence.i to i32
  call void @__asan_load1_noabort(i32 %703)
  %704 = load i8, ptr %bt_coexistence.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %704)
  %tobool.not.i261 = icmp eq i8 %704, 0
  br i1 %tobool.not.i261, label %rtl_write_dword.exit166.i.if.else.i_crit_edge, label %land.lhs.true.i

rtl_write_dword.exit166.i.if.else.i_crit_edge:    ; preds = %rtl_write_dword.exit166.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %rtl_write_dword.exit166.i
  %bt_coexist_type.i = getelementptr inbounds %struct.rtl_priv, ptr %598, i32 0, i32 49, i32 11
  %705 = ptrtoint ptr %bt_coexist_type.i to i32
  call void @__asan_load1_noabort(i32 %705)
  %706 = load i8, ptr %bt_coexist_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %706)
  %cmp.i262 = icmp eq i8 %706, 3
  br i1 %cmp.i262, label %if.then.i263, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then.i263:                                     ; preds = %land.lhs.true.i
  %707 = ptrtoint ptr %write32_async.i.i255 to i32
  call void @__asan_load4_noabort(i32 %707)
  %708 = load ptr, ptr %write32_async.i.i255, align 4
  tail call void %708(ptr noundef %598, i32 noundef 1112, i32 noundef -1757252559) #8
  %709 = ptrtoint ptr %cfg.i.i248 to i32
  call void @__asan_load4_noabort(i32 %709)
  %710 = load ptr, ptr %cfg.i.i248, align 8
  %write_readback.i169.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %710, i32 0, i32 1
  %711 = ptrtoint ptr %write_readback.i169.i to i32
  call void @__asan_load1_noabort(i32 %711)
  %712 = load i8, ptr %write_readback.i169.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %712)
  %tobool.not.i170.i = icmp eq i8 %712, 0
  br i1 %tobool.not.i170.i, label %if.then.i263.if.end.i_crit_edge, label %if.then.i263.if.end.sink.split.i_crit_edge

if.then.i263.if.end.sink.split.i_crit_edge:       ; preds = %if.then.i263
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.sink.split.i

if.then.i263.if.end.i_crit_edge:                  ; preds = %if.then.i263
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %rtl_write_dword.exit166.i.if.else.i_crit_edge
  %713 = ptrtoint ptr %write32_async.i.i255 to i32
  call void @__asan_load4_noabort(i32 %713)
  %714 = load ptr, ptr %write32_async.i.i255, align 4
  tail call void %714(ptr noundef %598, i32 noundef 1112, i32 noundef -1183668159) #8
  %715 = ptrtoint ptr %cfg.i.i248 to i32
  call void @__asan_load4_noabort(i32 %715)
  %716 = load ptr, ptr %cfg.i.i248, align 8
  %write_readback.i177.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %716, i32 0, i32 1
  %717 = ptrtoint ptr %write_readback.i177.i to i32
  call void @__asan_load1_noabort(i32 %717)
  %718 = load i8, ptr %write_readback.i177.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %718)
  %tobool.not.i178.i = icmp eq i8 %718, 0
  br i1 %tobool.not.i178.i, label %if.else.i.if.end.i_crit_edge, label %if.else.i.if.end.sink.split.i_crit_edge

if.else.i.if.end.sink.split.i_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.sink.split.i

if.else.i.if.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.sink.split.i:                              ; preds = %if.else.i.if.end.sink.split.i_crit_edge, %if.then.i263.if.end.sink.split.i_crit_edge
  %read32_sync.i179.i = getelementptr inbounds %struct.rtl_priv, ptr %598, i32 0, i32 13, i32 11
  %719 = ptrtoint ptr %read32_sync.i179.i to i32
  call void @__asan_load4_noabort(i32 %719)
  %720 = load ptr, ptr %read32_sync.i179.i, align 4
  %call.i180.i = tail call i32 %720(ptr noundef %598, i32 noundef 1112) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.sink.split.i, %if.else.i.if.end.i_crit_edge, %if.then.i263.if.end.i_crit_edge
  %721 = ptrtoint ptr %write8_async.i.i247 to i32
  call void @__asan_load4_noabort(i32 %721)
  %722 = load ptr, ptr %write8_async.i.i247, align 4
  tail call void %722(ptr noundef %598, i32 noundef 1370, i8 noundef zeroext 2) #8
  %723 = ptrtoint ptr %cfg.i.i248 to i32
  call void @__asan_load4_noabort(i32 %723)
  %724 = load ptr, ptr %cfg.i.i248, align 8
  %write_readback.i185.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %724, i32 0, i32 1
  %725 = ptrtoint ptr %write_readback.i185.i to i32
  call void @__asan_load1_noabort(i32 %725)
  %726 = load i8, ptr %write_readback.i185.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %726)
  %tobool.not.i186.i = icmp eq i8 %726, 0
  br i1 %tobool.not.i186.i, label %if.end.i.rtl_write_byte.exit190.i_crit_edge, label %if.then.i189.i

if.end.i.rtl_write_byte.exit190.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit190.i

if.then.i189.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i187.i = getelementptr inbounds %struct.rtl_priv, ptr %598, i32 0, i32 13, i32 9
  %727 = ptrtoint ptr %read8_sync.i187.i to i32
  call void @__asan_load4_noabort(i32 %727)
  %728 = load ptr, ptr %read8_sync.i187.i, align 4
  %call.i188.i = tail call zeroext i8 %728(ptr noundef %598, i32 noundef 1370) #8
  br label %rtl_write_byte.exit190.i

rtl_write_byte.exit190.i:                         ; preds = %if.then.i189.i, %if.end.i.rtl_write_byte.exit190.i_crit_edge
  %729 = ptrtoint ptr %write8_async.i.i247 to i32
  call void @__asan_load4_noabort(i32 %729)
  %730 = load ptr, ptr %write8_async.i.i247, align 4
  tail call void %730(ptr noundef %598, i32 noundef 1373, i8 noundef zeroext -1) #8
  %731 = ptrtoint ptr %cfg.i.i248 to i32
  call void @__asan_load4_noabort(i32 %731)
  %732 = load ptr, ptr %cfg.i.i248, align 8
  %write_readback.i193.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %732, i32 0, i32 1
  %733 = ptrtoint ptr %write_readback.i193.i to i32
  call void @__asan_load1_noabort(i32 %733)
  %734 = load i8, ptr %write_readback.i193.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %734)
  %tobool.not.i194.i = icmp eq i8 %734, 0
  br i1 %tobool.not.i194.i, label %rtl_write_byte.exit190.i.rtl_write_byte.exit198.i_crit_edge, label %if.then.i197.i

rtl_write_byte.exit190.i.rtl_write_byte.exit198.i_crit_edge: ; preds = %rtl_write_byte.exit190.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit198.i

if.then.i197.i:                                   ; preds = %rtl_write_byte.exit190.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i195.i = getelementptr inbounds %struct.rtl_priv, ptr %598, i32 0, i32 13, i32 9
  %735 = ptrtoint ptr %read8_sync.i195.i to i32
  call void @__asan_load4_noabort(i32 %735)
  %736 = load ptr, ptr %read8_sync.i195.i, align 4
  %call.i196.i = tail call zeroext i8 %736(ptr noundef %598, i32 noundef 1373) #8
  br label %rtl_write_byte.exit198.i

rtl_write_byte.exit198.i:                         ; preds = %if.then.i197.i, %rtl_write_byte.exit190.i.rtl_write_byte.exit198.i_crit_edge
  %reg_bcn_ctrl_val.i = getelementptr inbounds %struct.rtl_priv, ptr %598, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %737 = ptrtoint ptr %reg_bcn_ctrl_val.i to i32
  call void @__asan_store4_noabort(i32 %737)
  store i32 31, ptr %reg_bcn_ctrl_val.i, align 4
  %738 = ptrtoint ptr %write8_async.i.i247 to i32
  call void @__asan_load4_noabort(i32 %738)
  %739 = load ptr, ptr %write8_async.i.i247, align 4
  tail call void %739(ptr noundef %598, i32 noundef 1360, i8 noundef zeroext 31) #8
  %740 = ptrtoint ptr %cfg.i.i248 to i32
  call void @__asan_load4_noabort(i32 %740)
  %741 = load ptr, ptr %cfg.i.i248, align 8
  %write_readback.i201.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %741, i32 0, i32 1
  %742 = ptrtoint ptr %write_readback.i201.i to i32
  call void @__asan_load1_noabort(i32 %742)
  %743 = load i8, ptr %write_readback.i201.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %743)
  %tobool.not.i202.i = icmp eq i8 %743, 0
  br i1 %tobool.not.i202.i, label %rtl_write_byte.exit198.i.rtl_write_byte.exit206.i_crit_edge, label %if.then.i205.i

rtl_write_byte.exit198.i.rtl_write_byte.exit206.i_crit_edge: ; preds = %rtl_write_byte.exit198.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit206.i

if.then.i205.i:                                   ; preds = %rtl_write_byte.exit198.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i203.i = getelementptr inbounds %struct.rtl_priv, ptr %598, i32 0, i32 13, i32 9
  %744 = ptrtoint ptr %read8_sync.i203.i to i32
  call void @__asan_load4_noabort(i32 %744)
  %745 = load ptr, ptr %read8_sync.i203.i, align 4
  %call.i204.i = tail call zeroext i8 %745(ptr noundef %598, i32 noundef 1360) #8
  br label %rtl_write_byte.exit206.i

rtl_write_byte.exit206.i:                         ; preds = %if.then.i205.i, %rtl_write_byte.exit198.i.rtl_write_byte.exit206.i_crit_edge
  %746 = ptrtoint ptr %write8_async.i.i247 to i32
  call void @__asan_load4_noabort(i32 %746)
  %747 = load ptr, ptr %write8_async.i.i247, align 4
  tail call void %747(ptr noundef %598, i32 noundef 1345, i8 noundef zeroext -1) #8
  %748 = ptrtoint ptr %cfg.i.i248 to i32
  call void @__asan_load4_noabort(i32 %748)
  %749 = load ptr, ptr %cfg.i.i248, align 8
  %write_readback.i209.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %749, i32 0, i32 1
  %750 = ptrtoint ptr %write_readback.i209.i to i32
  call void @__asan_load1_noabort(i32 %750)
  %751 = load i8, ptr %write_readback.i209.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %751)
  %tobool.not.i210.i = icmp eq i8 %751, 0
  br i1 %tobool.not.i210.i, label %rtl_write_byte.exit206.i.rtl_write_byte.exit214.i_crit_edge, label %if.then.i213.i

rtl_write_byte.exit206.i.rtl_write_byte.exit214.i_crit_edge: ; preds = %rtl_write_byte.exit206.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit214.i

if.then.i213.i:                                   ; preds = %rtl_write_byte.exit206.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i211.i = getelementptr inbounds %struct.rtl_priv, ptr %598, i32 0, i32 13, i32 9
  %752 = ptrtoint ptr %read8_sync.i211.i to i32
  call void @__asan_load4_noabort(i32 %752)
  %753 = load ptr, ptr %read8_sync.i211.i, align 4
  %call.i212.i = tail call zeroext i8 %753(ptr noundef %598, i32 noundef 1345) #8
  br label %rtl_write_byte.exit214.i

rtl_write_byte.exit214.i:                         ; preds = %if.then.i213.i, %rtl_write_byte.exit206.i.rtl_write_byte.exit214.i_crit_edge
  %754 = ptrtoint ptr %write8_async.i.i247 to i32
  call void @__asan_load4_noabort(i32 %754)
  %755 = load ptr, ptr %write8_async.i.i247, align 4
  tail call void %755(ptr noundef %598, i32 noundef 1345, i8 noundef zeroext -1) #8
  %756 = ptrtoint ptr %cfg.i.i248 to i32
  call void @__asan_load4_noabort(i32 %756)
  %757 = load ptr, ptr %cfg.i.i248, align 8
  %write_readback.i217.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %757, i32 0, i32 1
  %758 = ptrtoint ptr %write_readback.i217.i to i32
  call void @__asan_load1_noabort(i32 %758)
  %759 = load i8, ptr %write_readback.i217.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %759)
  %tobool.not.i218.i = icmp eq i8 %759, 0
  br i1 %tobool.not.i218.i, label %rtl_write_byte.exit214.i.rtl_write_byte.exit222.i_crit_edge, label %if.then.i221.i

rtl_write_byte.exit214.i.rtl_write_byte.exit222.i_crit_edge: ; preds = %rtl_write_byte.exit214.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit222.i

if.then.i221.i:                                   ; preds = %rtl_write_byte.exit214.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i219.i = getelementptr inbounds %struct.rtl_priv, ptr %598, i32 0, i32 13, i32 9
  %760 = ptrtoint ptr %read8_sync.i219.i to i32
  call void @__asan_load4_noabort(i32 %760)
  %761 = load ptr, ptr %read8_sync.i219.i, align 4
  %call.i220.i = tail call zeroext i8 %761(ptr noundef %598, i32 noundef 1345) #8
  br label %rtl_write_byte.exit222.i

rtl_write_byte.exit222.i:                         ; preds = %if.then.i221.i, %rtl_write_byte.exit214.i.rtl_write_byte.exit222.i_crit_edge
  %762 = ptrtoint ptr %write8_async.i.i247 to i32
  call void @__asan_load4_noabort(i32 %762)
  %763 = load ptr, ptr %write8_async.i.i247, align 4
  tail call void %763(ptr noundef %598, i32 noundef 1298, i8 noundef zeroext 28) #8
  %764 = ptrtoint ptr %cfg.i.i248 to i32
  call void @__asan_load4_noabort(i32 %764)
  %765 = load ptr, ptr %cfg.i.i248, align 8
  %write_readback.i225.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %765, i32 0, i32 1
  %766 = ptrtoint ptr %write_readback.i225.i to i32
  call void @__asan_load1_noabort(i32 %766)
  %767 = load i8, ptr %write_readback.i225.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %767)
  %tobool.not.i226.i = icmp eq i8 %767, 0
  br i1 %tobool.not.i226.i, label %rtl_write_byte.exit222.i.rtl_write_byte.exit230.i_crit_edge, label %if.then.i229.i

rtl_write_byte.exit222.i.rtl_write_byte.exit230.i_crit_edge: ; preds = %rtl_write_byte.exit222.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit230.i

if.then.i229.i:                                   ; preds = %rtl_write_byte.exit222.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i227.i = getelementptr inbounds %struct.rtl_priv, ptr %598, i32 0, i32 13, i32 9
  %768 = ptrtoint ptr %read8_sync.i227.i to i32
  call void @__asan_load4_noabort(i32 %768)
  %769 = load ptr, ptr %read8_sync.i227.i, align 4
  %call.i228.i = tail call zeroext i8 %769(ptr noundef %598, i32 noundef 1298) #8
  br label %rtl_write_byte.exit230.i

rtl_write_byte.exit230.i:                         ; preds = %if.then.i229.i, %rtl_write_byte.exit222.i.rtl_write_byte.exit230.i_crit_edge
  %770 = ptrtoint ptr %write8_async.i.i247 to i32
  call void @__asan_load4_noabort(i32 %770)
  %771 = load ptr, ptr %write8_async.i.i247, align 4
  tail call void %771(ptr noundef %598, i32 noundef 1306, i8 noundef zeroext 22) #8
  %772 = ptrtoint ptr %cfg.i.i248 to i32
  call void @__asan_load4_noabort(i32 %772)
  %773 = load ptr, ptr %cfg.i.i248, align 8
  %write_readback.i233.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %773, i32 0, i32 1
  %774 = ptrtoint ptr %write_readback.i233.i to i32
  call void @__asan_load1_noabort(i32 %774)
  %775 = load i8, ptr %write_readback.i233.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %775)
  %tobool.not.i234.i = icmp eq i8 %775, 0
  br i1 %tobool.not.i234.i, label %rtl_write_byte.exit230.i.rtl_write_byte.exit238.i_crit_edge, label %if.then.i237.i

rtl_write_byte.exit230.i.rtl_write_byte.exit238.i_crit_edge: ; preds = %rtl_write_byte.exit230.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit238.i

if.then.i237.i:                                   ; preds = %rtl_write_byte.exit230.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i235.i = getelementptr inbounds %struct.rtl_priv, ptr %598, i32 0, i32 13, i32 9
  %776 = ptrtoint ptr %read8_sync.i235.i to i32
  call void @__asan_load4_noabort(i32 %776)
  %777 = load ptr, ptr %read8_sync.i235.i, align 4
  %call.i236.i = tail call zeroext i8 %777(ptr noundef %598, i32 noundef 1306) #8
  br label %rtl_write_byte.exit238.i

rtl_write_byte.exit238.i:                         ; preds = %if.then.i237.i, %rtl_write_byte.exit230.i.rtl_write_byte.exit238.i_crit_edge
  %778 = ptrtoint ptr %bt_coexistence.i to i32
  call void @__asan_load1_noabort(i32 %778)
  %779 = load i8, ptr %bt_coexistence.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %779)
  %tobool11.not.i = icmp eq i8 %779, 0
  br i1 %tobool11.not.i, label %rtl_write_byte.exit238.i.if.else19.i_crit_edge, label %land.lhs.true12.i

rtl_write_byte.exit238.i.if.else19.i_crit_edge:   ; preds = %rtl_write_byte.exit238.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else19.i

land.lhs.true12.i:                                ; preds = %rtl_write_byte.exit238.i
  %bt_coexist_type14.i = getelementptr inbounds %struct.rtl_priv, ptr %598, i32 0, i32 49, i32 11
  %780 = ptrtoint ptr %bt_coexist_type14.i to i32
  call void @__asan_load1_noabort(i32 %780)
  %781 = load i8, ptr %bt_coexist_type14.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %781)
  %cmp16.i = icmp eq i8 %781, 3
  br i1 %cmp16.i, label %if.then18.i, label %land.lhs.true12.i.if.else19.i_crit_edge

land.lhs.true12.i.if.else19.i_crit_edge:          ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else19.i

if.then18.i:                                      ; preds = %land.lhs.true12.i
  %782 = ptrtoint ptr %write16_async.i.i258 to i32
  call void @__asan_load4_noabort(i32 %782)
  %783 = load ptr, ptr %write16_async.i.i258, align 4
  tail call void %783(ptr noundef %598, i32 noundef 1350, i16 noundef zeroext 32) #8
  %784 = ptrtoint ptr %cfg.i.i248 to i32
  call void @__asan_load4_noabort(i32 %784)
  %785 = load ptr, ptr %cfg.i.i248, align 8
  %write_readback.i241.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %785, i32 0, i32 1
  %786 = ptrtoint ptr %write_readback.i241.i to i32
  call void @__asan_load1_noabort(i32 %786)
  %787 = load i8, ptr %write_readback.i241.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %787)
  %tobool.not.i242.i = icmp eq i8 %787, 0
  br i1 %tobool.not.i242.i, label %if.then18.i.rtl_write_word.exit246.i_crit_edge, label %if.then.i245.i

if.then18.i.rtl_write_word.exit246.i_crit_edge:   ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit246.i

if.then.i245.i:                                   ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i243.i = getelementptr inbounds %struct.rtl_priv, ptr %598, i32 0, i32 13, i32 10
  %788 = ptrtoint ptr %read16_sync.i243.i to i32
  call void @__asan_load4_noabort(i32 %788)
  %789 = load ptr, ptr %read16_sync.i243.i, align 4
  %call.i244.i = tail call zeroext i16 %789(ptr noundef %598, i32 noundef 1350) #8
  br label %rtl_write_word.exit246.i

rtl_write_word.exit246.i:                         ; preds = %if.then.i245.i, %if.then18.i.rtl_write_word.exit246.i_crit_edge
  %790 = ptrtoint ptr %write16_async.i.i258 to i32
  call void @__asan_load4_noabort(i32 %790)
  %791 = load ptr, ptr %write16_async.i.i258, align 4
  tail call void %791(ptr noundef %598, i32 noundef 1224, i16 noundef zeroext 1026) #8
  %792 = ptrtoint ptr %cfg.i.i248 to i32
  call void @__asan_load4_noabort(i32 %792)
  %793 = load ptr, ptr %cfg.i.i248, align 8
  %write_readback.i249.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %793, i32 0, i32 1
  %794 = ptrtoint ptr %write_readback.i249.i to i32
  call void @__asan_load1_noabort(i32 %794)
  %795 = load i8, ptr %write_readback.i249.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %795)
  %tobool.not.i250.i = icmp eq i8 %795, 0
  br i1 %tobool.not.i250.i, label %rtl_write_word.exit246.i.if.end20.i_crit_edge, label %rtl_write_word.exit246.i.if.end20.sink.split.i_crit_edge

rtl_write_word.exit246.i.if.end20.sink.split.i_crit_edge: ; preds = %rtl_write_word.exit246.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.sink.split.i

rtl_write_word.exit246.i.if.end20.i_crit_edge:    ; preds = %rtl_write_word.exit246.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i

if.else19.i:                                      ; preds = %land.lhs.true12.i.if.else19.i_crit_edge, %rtl_write_byte.exit238.i.if.else19.i_crit_edge
  %796 = ptrtoint ptr %write16_async.i.i258 to i32
  call void @__asan_load4_noabort(i32 %796)
  %797 = load ptr, ptr %write16_async.i.i258, align 4
  tail call void %797(ptr noundef %598, i32 noundef 1350, i16 noundef zeroext 32) #8
  %798 = ptrtoint ptr %cfg.i.i248 to i32
  call void @__asan_load4_noabort(i32 %798)
  %799 = load ptr, ptr %cfg.i.i248, align 8
  %write_readback.i257.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %799, i32 0, i32 1
  %800 = ptrtoint ptr %write_readback.i257.i to i32
  call void @__asan_load1_noabort(i32 %800)
  %801 = load i8, ptr %write_readback.i257.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %801)
  %tobool.not.i258.i = icmp eq i8 %801, 0
  br i1 %tobool.not.i258.i, label %if.else19.i.rtl_write_word.exit262.i_crit_edge, label %if.then.i261.i

if.else19.i.rtl_write_word.exit262.i_crit_edge:   ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit262.i

if.then.i261.i:                                   ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i259.i = getelementptr inbounds %struct.rtl_priv, ptr %598, i32 0, i32 13, i32 10
  %802 = ptrtoint ptr %read16_sync.i259.i to i32
  call void @__asan_load4_noabort(i32 %802)
  %803 = load ptr, ptr %read16_sync.i259.i, align 4
  %call.i260.i = tail call zeroext i16 %803(ptr noundef %598, i32 noundef 1350) #8
  br label %rtl_write_word.exit262.i

rtl_write_word.exit262.i:                         ; preds = %if.then.i261.i, %if.else19.i.rtl_write_word.exit262.i_crit_edge
  %804 = ptrtoint ptr %write16_async.i.i258 to i32
  call void @__asan_load4_noabort(i32 %804)
  %805 = load ptr, ptr %write16_async.i.i258, align 4
  tail call void %805(ptr noundef %598, i32 noundef 1350, i16 noundef zeroext 32) #8
  %806 = ptrtoint ptr %cfg.i.i248 to i32
  call void @__asan_load4_noabort(i32 %806)
  %807 = load ptr, ptr %cfg.i.i248, align 8
  %write_readback.i265.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %807, i32 0, i32 1
  %808 = ptrtoint ptr %write_readback.i265.i to i32
  call void @__asan_load1_noabort(i32 %808)
  %809 = load i8, ptr %write_readback.i265.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %809)
  %tobool.not.i266.i = icmp eq i8 %809, 0
  br i1 %tobool.not.i266.i, label %rtl_write_word.exit262.i.if.end20.i_crit_edge, label %rtl_write_word.exit262.i.if.end20.sink.split.i_crit_edge

rtl_write_word.exit262.i.if.end20.sink.split.i_crit_edge: ; preds = %rtl_write_word.exit262.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.sink.split.i

rtl_write_word.exit262.i.if.end20.i_crit_edge:    ; preds = %rtl_write_word.exit262.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i

if.end20.sink.split.i:                            ; preds = %rtl_write_word.exit262.i.if.end20.sink.split.i_crit_edge, %rtl_write_word.exit246.i.if.end20.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 1224, %rtl_write_word.exit246.i.if.end20.sink.split.i_crit_edge ], [ 1350, %rtl_write_word.exit262.i.if.end20.sink.split.i_crit_edge ]
  %read16_sync.i267.i = getelementptr inbounds %struct.rtl_priv, ptr %598, i32 0, i32 13, i32 10
  %810 = ptrtoint ptr %read16_sync.i267.i to i32
  call void @__asan_load4_noabort(i32 %810)
  %811 = load ptr, ptr %read16_sync.i267.i, align 4
  %call.i268.i = tail call zeroext i16 %811(ptr noundef %598, i32 noundef %.sink.i) #8
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.end20.sink.split.i, %rtl_write_word.exit262.i.if.end20.i_crit_edge, %rtl_write_word.exit246.i.if.end20.i_crit_edge
  %812 = ptrtoint ptr %bt_coexistence.i to i32
  call void @__asan_load1_noabort(i32 %812)
  %813 = load i8, ptr %bt_coexistence.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %813)
  %tobool24.not.i = icmp eq i8 %813, 0
  br i1 %tobool24.not.i, label %if.end20.i.if.else32.i_crit_edge, label %land.lhs.true25.i

if.end20.i.if.else32.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else32.i

land.lhs.true25.i:                                ; preds = %if.end20.i
  %bt_coexist_type27.i = getelementptr inbounds %struct.rtl_priv, ptr %598, i32 0, i32 49, i32 11
  %814 = ptrtoint ptr %bt_coexist_type27.i to i32
  call void @__asan_load1_noabort(i32 %814)
  %815 = load i8, ptr %bt_coexist_type27.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %815)
  %cmp29.i = icmp eq i8 %815, 3
  br i1 %cmp29.i, label %if.then31.i, label %land.lhs.true25.i.if.else32.i_crit_edge

land.lhs.true25.i.if.else32.i_crit_edge:          ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else32.i

if.then31.i:                                      ; preds = %land.lhs.true25.i
  %816 = ptrtoint ptr %write32_async.i.i255 to i32
  call void @__asan_load4_noabort(i32 %816)
  %817 = load ptr, ptr %write32_async.i.i255, align 4
  tail call void %817(ptr noundef %598, i32 noundef 1120, i32 noundef 50882150) #8
  %818 = ptrtoint ptr %cfg.i.i248 to i32
  call void @__asan_load4_noabort(i32 %818)
  %819 = load ptr, ptr %cfg.i.i248, align 8
  %write_readback.i273.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %819, i32 0, i32 1
  %820 = ptrtoint ptr %write_readback.i273.i to i32
  call void @__asan_load1_noabort(i32 %820)
  %821 = load i8, ptr %write_readback.i273.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %821)
  %tobool.not.i274.i = icmp eq i8 %821, 0
  br i1 %tobool.not.i274.i, label %if.then31.i.if.end33.i_crit_edge, label %if.then31.i.if.end33.sink.split.i_crit_edge

if.then31.i.if.end33.sink.split.i_crit_edge:      ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.sink.split.i

if.then31.i.if.end33.i_crit_edge:                 ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i

if.else32.i:                                      ; preds = %land.lhs.true25.i.if.else32.i_crit_edge, %if.end20.i.if.else32.i_crit_edge
  %822 = ptrtoint ptr %write32_async.i.i255 to i32
  call void @__asan_load4_noabort(i32 %822)
  %823 = load ptr, ptr %write32_async.i.i255, align 4
  tail call void %823(ptr noundef %598, i32 noundef 1120, i32 noundef 550502) #8
  %824 = ptrtoint ptr %cfg.i.i248 to i32
  call void @__asan_load4_noabort(i32 %824)
  %825 = load ptr, ptr %cfg.i.i248, align 8
  %write_readback.i281.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %825, i32 0, i32 1
  %826 = ptrtoint ptr %write_readback.i281.i to i32
  call void @__asan_load1_noabort(i32 %826)
  %827 = load i8, ptr %write_readback.i281.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %827)
  %tobool.not.i282.i = icmp eq i8 %827, 0
  br i1 %tobool.not.i282.i, label %if.else32.i.if.end33.i_crit_edge, label %if.else32.i.if.end33.sink.split.i_crit_edge

if.else32.i.if.end33.sink.split.i_crit_edge:      ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.sink.split.i

if.else32.i.if.end33.i_crit_edge:                 ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i

if.end33.sink.split.i:                            ; preds = %if.else32.i.if.end33.sink.split.i_crit_edge, %if.then31.i.if.end33.sink.split.i_crit_edge
  %read32_sync.i283.i = getelementptr inbounds %struct.rtl_priv, ptr %598, i32 0, i32 13, i32 11
  %828 = ptrtoint ptr %read32_sync.i283.i to i32
  call void @__asan_load4_noabort(i32 %828)
  %829 = load ptr, ptr %read32_sync.i283.i, align 4
  %call.i284.i = tail call i32 %829(ptr noundef %598, i32 noundef 1120) #8
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.end33.sink.split.i, %if.else32.i.if.end33.i_crit_edge, %if.then31.i.if.end33.i_crit_edge
  %830 = ptrtoint ptr %write8_async.i.i247 to i32
  call void @__asan_load4_noabort(i32 %830)
  %831 = load ptr, ptr %write8_async.i.i247, align 4
  tail call void %831(ptr noundef %598, i32 noundef 1600, i8 noundef zeroext 64) #8
  %832 = ptrtoint ptr %cfg.i.i248 to i32
  call void @__asan_load4_noabort(i32 %832)
  %833 = load ptr, ptr %cfg.i.i248, align 8
  %write_readback.i289.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %833, i32 0, i32 1
  %834 = ptrtoint ptr %write_readback.i289.i to i32
  call void @__asan_load1_noabort(i32 %834)
  %835 = load i8, ptr %write_readback.i289.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %835)
  %tobool.not.i290.i = icmp eq i8 %835, 0
  br i1 %tobool.not.i290.i, label %if.end33.i.rtl_write_byte.exit294.i_crit_edge, label %if.then.i293.i

if.end33.i.rtl_write_byte.exit294.i_crit_edge:    ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit294.i

if.then.i293.i:                                   ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i291.i = getelementptr inbounds %struct.rtl_priv, ptr %598, i32 0, i32 13, i32 9
  %836 = ptrtoint ptr %read8_sync.i291.i to i32
  call void @__asan_load4_noabort(i32 %836)
  %837 = load ptr, ptr %read8_sync.i291.i, align 4
  %call.i292.i = tail call zeroext i8 %837(ptr noundef %598, i32 noundef 1600) #8
  br label %rtl_write_byte.exit294.i

rtl_write_byte.exit294.i:                         ; preds = %if.then.i293.i, %if.end33.i.rtl_write_byte.exit294.i_crit_edge
  %838 = ptrtoint ptr %write16_async.i.i258 to i32
  call void @__asan_load4_noabort(i32 %838)
  %839 = load ptr, ptr %write16_async.i.i258, align 4
  tail call void %839(ptr noundef %598, i32 noundef 1064, i16 noundef zeroext 4112) #8
  %840 = ptrtoint ptr %cfg.i.i248 to i32
  call void @__asan_load4_noabort(i32 %840)
  %841 = load ptr, ptr %cfg.i.i248, align 8
  %write_readback.i297.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %841, i32 0, i32 1
  %842 = ptrtoint ptr %write_readback.i297.i to i32
  call void @__asan_load1_noabort(i32 %842)
  %843 = load i8, ptr %write_readback.i297.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %843)
  %tobool.not.i298.i = icmp eq i8 %843, 0
  br i1 %tobool.not.i298.i, label %rtl_write_byte.exit294.i.rtl_write_word.exit302.i_crit_edge, label %if.then.i301.i

rtl_write_byte.exit294.i.rtl_write_word.exit302.i_crit_edge: ; preds = %rtl_write_byte.exit294.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit302.i

if.then.i301.i:                                   ; preds = %rtl_write_byte.exit294.i
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i299.i = getelementptr inbounds %struct.rtl_priv, ptr %598, i32 0, i32 13, i32 10
  %844 = ptrtoint ptr %read16_sync.i299.i to i32
  call void @__asan_load4_noabort(i32 %844)
  %845 = load ptr, ptr %read16_sync.i299.i, align 4
  %call.i300.i = tail call zeroext i16 %845(ptr noundef %598, i32 noundef 1064) #8
  br label %rtl_write_word.exit302.i

rtl_write_word.exit302.i:                         ; preds = %if.then.i301.i, %rtl_write_byte.exit294.i.rtl_write_word.exit302.i_crit_edge
  %846 = ptrtoint ptr %write16_async.i.i258 to i32
  call void @__asan_load4_noabort(i32 %846)
  %847 = load ptr, ptr %write16_async.i.i258, align 4
  tail call void %847(ptr noundef %598, i32 noundef 1594, i16 noundef zeroext 4112) #8
  %848 = ptrtoint ptr %cfg.i.i248 to i32
  call void @__asan_load4_noabort(i32 %848)
  %849 = load ptr, ptr %cfg.i.i248, align 8
  %write_readback.i305.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %849, i32 0, i32 1
  %850 = ptrtoint ptr %write_readback.i305.i to i32
  call void @__asan_load1_noabort(i32 %850)
  %851 = load i8, ptr %write_readback.i305.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %851)
  %tobool.not.i306.i = icmp eq i8 %851, 0
  br i1 %tobool.not.i306.i, label %rtl_write_word.exit302.i.rtl_write_word.exit310.i_crit_edge, label %if.then.i309.i

rtl_write_word.exit302.i.rtl_write_word.exit310.i_crit_edge: ; preds = %rtl_write_word.exit302.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit310.i

if.then.i309.i:                                   ; preds = %rtl_write_word.exit302.i
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i307.i = getelementptr inbounds %struct.rtl_priv, ptr %598, i32 0, i32 13, i32 10
  %852 = ptrtoint ptr %read16_sync.i307.i to i32
  call void @__asan_load4_noabort(i32 %852)
  %853 = load ptr, ptr %read16_sync.i307.i, align 4
  %call.i308.i = tail call zeroext i16 %853(ptr noundef %598, i32 noundef 1594) #8
  br label %rtl_write_word.exit310.i

rtl_write_word.exit310.i:                         ; preds = %if.then.i309.i, %rtl_write_word.exit302.i.rtl_write_word.exit310.i_crit_edge
  %854 = ptrtoint ptr %write16_async.i.i258 to i32
  call void @__asan_load4_noabort(i32 %854)
  %855 = load ptr, ptr %write16_async.i.i258, align 4
  tail call void %855(ptr noundef %598, i32 noundef 1300, i16 noundef zeroext 4112) #8
  %856 = ptrtoint ptr %cfg.i.i248 to i32
  call void @__asan_load4_noabort(i32 %856)
  %857 = load ptr, ptr %cfg.i.i248, align 8
  %write_readback.i313.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %857, i32 0, i32 1
  %858 = ptrtoint ptr %write_readback.i313.i to i32
  call void @__asan_load1_noabort(i32 %858)
  %859 = load i8, ptr %write_readback.i313.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %859)
  %tobool.not.i314.i = icmp eq i8 %859, 0
  br i1 %tobool.not.i314.i, label %rtl_write_word.exit310.i.rtl_write_word.exit318.i_crit_edge, label %if.then.i317.i

rtl_write_word.exit310.i.rtl_write_word.exit318.i_crit_edge: ; preds = %rtl_write_word.exit310.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit318.i

if.then.i317.i:                                   ; preds = %rtl_write_word.exit310.i
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i315.i = getelementptr inbounds %struct.rtl_priv, ptr %598, i32 0, i32 13, i32 10
  %860 = ptrtoint ptr %read16_sync.i315.i to i32
  call void @__asan_load4_noabort(i32 %860)
  %861 = load ptr, ptr %read16_sync.i315.i, align 4
  %call.i316.i = tail call zeroext i16 %861(ptr noundef %598, i32 noundef 1300) #8
  br label %rtl_write_word.exit318.i

rtl_write_word.exit318.i:                         ; preds = %if.then.i317.i, %rtl_write_word.exit310.i.rtl_write_word.exit318.i_crit_edge
  %862 = ptrtoint ptr %write16_async.i.i258 to i32
  call void @__asan_load4_noabort(i32 %862)
  %863 = load ptr, ptr %write16_async.i.i258, align 4
  tail call void %863(ptr noundef %598, i32 noundef 1302, i16 noundef zeroext 4112) #8
  %864 = ptrtoint ptr %cfg.i.i248 to i32
  call void @__asan_load4_noabort(i32 %864)
  %865 = load ptr, ptr %cfg.i.i248, align 8
  %write_readback.i321.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %865, i32 0, i32 1
  %866 = ptrtoint ptr %write_readback.i321.i to i32
  call void @__asan_load1_noabort(i32 %866)
  %867 = load i8, ptr %write_readback.i321.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %867)
  %tobool.not.i322.i = icmp eq i8 %867, 0
  br i1 %tobool.not.i322.i, label %rtl_write_word.exit318.i.rtl_write_word.exit326.i_crit_edge, label %if.then.i325.i

rtl_write_word.exit318.i.rtl_write_word.exit326.i_crit_edge: ; preds = %rtl_write_word.exit318.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit326.i

if.then.i325.i:                                   ; preds = %rtl_write_word.exit318.i
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i323.i = getelementptr inbounds %struct.rtl_priv, ptr %598, i32 0, i32 13, i32 10
  %868 = ptrtoint ptr %read16_sync.i323.i to i32
  call void @__asan_load4_noabort(i32 %868)
  %869 = load ptr, ptr %read16_sync.i323.i, align 4
  %call.i324.i = tail call zeroext i16 %869(ptr noundef %598, i32 noundef 1302) #8
  br label %rtl_write_word.exit326.i

rtl_write_word.exit326.i:                         ; preds = %if.then.i325.i, %rtl_write_word.exit318.i.rtl_write_word.exit326.i_crit_edge
  %870 = ptrtoint ptr %write32_async.i.i255 to i32
  call void @__asan_load4_noabort(i32 %870)
  %871 = load ptr, ptr %write32_async.i.i255, align 4
  tail call void %871(ptr noundef %598, i32 noundef 1568, i32 noundef -1) #8
  %872 = ptrtoint ptr %cfg.i.i248 to i32
  call void @__asan_load4_noabort(i32 %872)
  %873 = load ptr, ptr %cfg.i.i248, align 8
  %write_readback.i329.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %873, i32 0, i32 1
  %874 = ptrtoint ptr %write_readback.i329.i to i32
  call void @__asan_load1_noabort(i32 %874)
  %875 = load i8, ptr %write_readback.i329.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %875)
  %tobool.not.i330.i = icmp eq i8 %875, 0
  br i1 %tobool.not.i330.i, label %rtl_write_word.exit326.i.rtl_write_dword.exit334.i_crit_edge, label %if.then.i333.i

rtl_write_word.exit326.i.rtl_write_dword.exit334.i_crit_edge: ; preds = %rtl_write_word.exit326.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit334.i

if.then.i333.i:                                   ; preds = %rtl_write_word.exit326.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i331.i = getelementptr inbounds %struct.rtl_priv, ptr %598, i32 0, i32 13, i32 11
  %876 = ptrtoint ptr %read32_sync.i331.i to i32
  call void @__asan_load4_noabort(i32 %876)
  %877 = load ptr, ptr %read32_sync.i331.i, align 4
  %call.i332.i = tail call i32 %877(ptr noundef %598, i32 noundef 1568) #8
  br label %rtl_write_dword.exit334.i

rtl_write_dword.exit334.i:                        ; preds = %if.then.i333.i, %rtl_write_word.exit326.i.rtl_write_dword.exit334.i_crit_edge
  %878 = ptrtoint ptr %write32_async.i.i255 to i32
  call void @__asan_load4_noabort(i32 %878)
  %879 = load ptr, ptr %write32_async.i.i255, align 4
  tail call void %879(ptr noundef %598, i32 noundef 1572, i32 noundef -1) #8
  %880 = ptrtoint ptr %cfg.i.i248 to i32
  call void @__asan_load4_noabort(i32 %880)
  %881 = load ptr, ptr %cfg.i.i248, align 8
  %write_readback.i337.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %881, i32 0, i32 1
  %882 = ptrtoint ptr %write_readback.i337.i to i32
  call void @__asan_load1_noabort(i32 %882)
  %883 = load i8, ptr %write_readback.i337.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %883)
  %tobool.not.i338.i = icmp eq i8 %883, 0
  br i1 %tobool.not.i338.i, label %rtl_write_dword.exit334.i.rtl_write_dword.exit342.i_crit_edge, label %if.then.i341.i

rtl_write_dword.exit334.i.rtl_write_dword.exit342.i_crit_edge: ; preds = %rtl_write_dword.exit334.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit342.i

if.then.i341.i:                                   ; preds = %rtl_write_dword.exit334.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i339.i = getelementptr inbounds %struct.rtl_priv, ptr %598, i32 0, i32 13, i32 11
  %884 = ptrtoint ptr %read32_sync.i339.i to i32
  call void @__asan_load4_noabort(i32 %884)
  %885 = load ptr, ptr %read32_sync.i339.i, align 4
  %call.i340.i = tail call i32 %885(ptr noundef %598, i32 noundef 1572) #8
  br label %rtl_write_dword.exit342.i

rtl_write_dword.exit342.i:                        ; preds = %if.then.i341.i, %rtl_write_dword.exit334.i.rtl_write_dword.exit342.i_crit_edge
  %886 = ptrtoint ptr %write32_async.i.i255 to i32
  call void @__asan_load4_noabort(i32 %886)
  %887 = load ptr, ptr %write32_async.i.i255, align 4
  tail call void %887(ptr noundef %598, i32 noundef 916, i32 noundef 1) #8
  %888 = ptrtoint ptr %cfg.i.i248 to i32
  call void @__asan_load4_noabort(i32 %888)
  %889 = load ptr, ptr %cfg.i.i248, align 8
  %write_readback.i345.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %889, i32 0, i32 1
  %890 = ptrtoint ptr %write_readback.i345.i to i32
  call void @__asan_load1_noabort(i32 %890)
  %891 = load i8, ptr %write_readback.i345.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %891)
  %tobool.not.i346.i = icmp eq i8 %891, 0
  br i1 %tobool.not.i346.i, label %rtl_write_dword.exit342.i._rtl8723e_hw_configure.exit_crit_edge, label %if.then.i349.i

rtl_write_dword.exit342.i._rtl8723e_hw_configure.exit_crit_edge: ; preds = %rtl_write_dword.exit342.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl8723e_hw_configure.exit

if.then.i349.i:                                   ; preds = %rtl_write_dword.exit342.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i347.i = getelementptr inbounds %struct.rtl_priv, ptr %598, i32 0, i32 13, i32 11
  %892 = ptrtoint ptr %read32_sync.i347.i to i32
  call void @__asan_load4_noabort(i32 %892)
  %893 = load ptr, ptr %read32_sync.i347.i, align 4
  %call.i348.i = tail call i32 %893(ptr noundef %598, i32 noundef 916) #8
  br label %_rtl8723e_hw_configure.exit

_rtl8723e_hw_configure.exit:                      ; preds = %if.then.i349.i, %rtl_write_dword.exit342.i._rtl8723e_hw_configure.exit_crit_edge
  tail call void @rtl_cam_reset_all_entry(ptr noundef %hw) #8
  tail call void @rtl8723e_enable_hw_security_config(ptr noundef %hw)
  %rfpwr_state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 24
  %894 = ptrtoint ptr %rfpwr_state to i32
  call void @__asan_store4_noabort(i32 %894)
  store i32 0, ptr %rfpwr_state, align 4
  %895 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %895)
  %896 = load ptr, ptr %cfg.i, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %896, i32 0, i32 4
  %897 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %897)
  %898 = load ptr, ptr %ops, align 4
  %set_hw_reg = getelementptr inbounds %struct.rtl_hal_ops, ptr %898, i32 0, i32 20
  %899 = ptrtoint ptr %set_hw_reg to i32
  call void @__asan_load4_noabort(i32 %899)
  %900 = load ptr, ptr %set_hw_reg, align 4
  tail call void %900(ptr noundef %hw, i8 noundef zeroext 0, ptr noundef %mac80211) #8
  %901 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %901)
  %902 = load ptr, ptr %priv, align 8
  %write8_async.i.i265 = getelementptr inbounds %struct.rtl_priv, ptr %902, i32 0, i32 13, i32 5
  %903 = ptrtoint ptr %write8_async.i.i265 to i32
  call void @__asan_load4_noabort(i32 %903)
  %904 = load ptr, ptr %write8_async.i.i265, align 4
  tail call void %904(ptr noundef %902, i32 noundef 843, i8 noundef zeroext -109) #8
  %cfg.i.i266 = getelementptr inbounds %struct.rtl_priv, ptr %902, i32 0, i32 32
  %905 = ptrtoint ptr %cfg.i.i266 to i32
  call void @__asan_load4_noabort(i32 %905)
  %906 = load ptr, ptr %cfg.i.i266, align 8
  %write_readback.i.i267 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %906, i32 0, i32 1
  %907 = ptrtoint ptr %write_readback.i.i267 to i32
  call void @__asan_load1_noabort(i32 %907)
  %908 = load i8, ptr %write_readback.i.i267, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %908)
  %tobool.not.i.i268 = icmp eq i8 %908, 0
  br i1 %tobool.not.i.i268, label %_rtl8723e_hw_configure.exit.rtl_write_byte.exit.i273_crit_edge, label %if.then.i.i271

_rtl8723e_hw_configure.exit.rtl_write_byte.exit.i273_crit_edge: ; preds = %_rtl8723e_hw_configure.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit.i273

if.then.i.i271:                                   ; preds = %_rtl8723e_hw_configure.exit
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i269 = getelementptr inbounds %struct.rtl_priv, ptr %902, i32 0, i32 13, i32 9
  %909 = ptrtoint ptr %read8_sync.i.i269 to i32
  call void @__asan_load4_noabort(i32 %909)
  %910 = load ptr, ptr %read8_sync.i.i269, align 4
  %call.i.i270 = tail call zeroext i8 %910(ptr noundef %902, i32 noundef 843) #8
  br label %rtl_write_byte.exit.i273

rtl_write_byte.exit.i273:                         ; preds = %if.then.i.i271, %_rtl8723e_hw_configure.exit.rtl_write_byte.exit.i273_crit_edge
  %write16_async.i.i272 = getelementptr inbounds %struct.rtl_priv, ptr %902, i32 0, i32 13, i32 6
  %911 = ptrtoint ptr %write16_async.i.i272 to i32
  call void @__asan_load4_noabort(i32 %911)
  %912 = load ptr, ptr %write16_async.i.i272, align 4
  tail call void %912(ptr noundef %902, i32 noundef 848, i16 noundef zeroext -30964) #8
  %913 = ptrtoint ptr %cfg.i.i266 to i32
  call void @__asan_load4_noabort(i32 %913)
  %914 = load ptr, ptr %cfg.i.i266, align 8
  %write_readback.i10.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %914, i32 0, i32 1
  %915 = ptrtoint ptr %write_readback.i10.i to i32
  call void @__asan_load1_noabort(i32 %915)
  %916 = load i8, ptr %write_readback.i10.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %916)
  %tobool.not.i11.i = icmp eq i8 %916, 0
  br i1 %tobool.not.i11.i, label %rtl_write_byte.exit.i273.rtl_write_word.exit.i275_crit_edge, label %if.then.i13.i

rtl_write_byte.exit.i273.rtl_write_word.exit.i275_crit_edge: ; preds = %rtl_write_byte.exit.i273
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit.i275

if.then.i13.i:                                    ; preds = %rtl_write_byte.exit.i273
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i.i274 = getelementptr inbounds %struct.rtl_priv, ptr %902, i32 0, i32 13, i32 10
  %917 = ptrtoint ptr %read16_sync.i.i274 to i32
  call void @__asan_load4_noabort(i32 %917)
  %918 = load ptr, ptr %read16_sync.i.i274, align 4
  %call.i12.i = tail call zeroext i16 %918(ptr noundef %902, i32 noundef 848) #8
  br label %rtl_write_word.exit.i275

rtl_write_word.exit.i275:                         ; preds = %if.then.i13.i, %rtl_write_byte.exit.i273.rtl_write_word.exit.i275_crit_edge
  %919 = ptrtoint ptr %write8_async.i.i265 to i32
  call void @__asan_load4_noabort(i32 %919)
  %920 = load ptr, ptr %write8_async.i.i265, align 4
  tail call void %920(ptr noundef %902, i32 noundef 850, i8 noundef zeroext 1) #8
  %921 = ptrtoint ptr %cfg.i.i266 to i32
  call void @__asan_load4_noabort(i32 %921)
  %922 = load ptr, ptr %cfg.i.i266, align 8
  %write_readback.i16.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %922, i32 0, i32 1
  %923 = ptrtoint ptr %write_readback.i16.i to i32
  call void @__asan_load1_noabort(i32 %923)
  %924 = load i8, ptr %write_readback.i16.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %924)
  %tobool.not.i17.i = icmp eq i8 %924, 0
  br i1 %tobool.not.i17.i, label %rtl_write_word.exit.i275.rtl_write_byte.exit21.i_crit_edge, label %if.then.i20.i

rtl_write_word.exit.i275.rtl_write_byte.exit21.i_crit_edge: ; preds = %rtl_write_word.exit.i275
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit21.i

if.then.i20.i:                                    ; preds = %rtl_write_word.exit.i275
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i18.i = getelementptr inbounds %struct.rtl_priv, ptr %902, i32 0, i32 13, i32 9
  %925 = ptrtoint ptr %read8_sync.i18.i to i32
  call void @__asan_load4_noabort(i32 %925)
  %926 = load ptr, ptr %read8_sync.i18.i, align 4
  %call.i19.i = tail call zeroext i8 %926(ptr noundef %902, i32 noundef 850) #8
  br label %rtl_write_byte.exit21.i

rtl_write_byte.exit21.i:                          ; preds = %if.then.i20.i, %rtl_write_word.exit.i275.rtl_write_byte.exit21.i_crit_edge
  %support_backdoor.i = getelementptr inbounds %struct.rtl_priv, ptr %902, i32 0, i32 21, i32 6
  %927 = ptrtoint ptr %support_backdoor.i to i32
  call void @__asan_load1_noabort(i32 %927)
  %928 = load i8, ptr %support_backdoor.i, align 2, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %928)
  %tobool.not.i276 = icmp eq i8 %928, 0
  %929 = ptrtoint ptr %write8_async.i.i265 to i32
  call void @__asan_load4_noabort(i32 %929)
  %930 = load ptr, ptr %write8_async.i.i265, align 4
  br i1 %tobool.not.i276, label %if.else.i278, label %if.then.i277

if.then.i277:                                     ; preds = %rtl_write_byte.exit21.i
  tail call void %930(ptr noundef %902, i32 noundef 841, i8 noundef zeroext 27) #8
  %931 = ptrtoint ptr %cfg.i.i266 to i32
  call void @__asan_load4_noabort(i32 %931)
  %932 = load ptr, ptr %cfg.i.i266, align 8
  %write_readback.i24.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %932, i32 0, i32 1
  %933 = ptrtoint ptr %write_readback.i24.i to i32
  call void @__asan_load1_noabort(i32 %933)
  %934 = load i8, ptr %write_readback.i24.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %934)
  %tobool.not.i25.i = icmp eq i8 %934, 0
  br i1 %tobool.not.i25.i, label %if.then.i277.if.end.i280_crit_edge, label %if.then.i277.if.end.sink.split.i279_crit_edge

if.then.i277.if.end.sink.split.i279_crit_edge:    ; preds = %if.then.i277
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.sink.split.i279

if.then.i277.if.end.i280_crit_edge:               ; preds = %if.then.i277
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i280

if.else.i278:                                     ; preds = %rtl_write_byte.exit21.i
  tail call void %930(ptr noundef %902, i32 noundef 841, i8 noundef zeroext 3) #8
  %935 = ptrtoint ptr %cfg.i.i266 to i32
  call void @__asan_load4_noabort(i32 %935)
  %936 = load ptr, ptr %cfg.i.i266, align 8
  %write_readback.i32.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %936, i32 0, i32 1
  %937 = ptrtoint ptr %write_readback.i32.i to i32
  call void @__asan_load1_noabort(i32 %937)
  %938 = load i8, ptr %write_readback.i32.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %938)
  %tobool.not.i33.i = icmp eq i8 %938, 0
  br i1 %tobool.not.i33.i, label %if.else.i278.if.end.i280_crit_edge, label %if.else.i278.if.end.sink.split.i279_crit_edge

if.else.i278.if.end.sink.split.i279_crit_edge:    ; preds = %if.else.i278
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.sink.split.i279

if.else.i278.if.end.i280_crit_edge:               ; preds = %if.else.i278
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i280

if.end.sink.split.i279:                           ; preds = %if.else.i278.if.end.sink.split.i279_crit_edge, %if.then.i277.if.end.sink.split.i279_crit_edge
  %read8_sync.i34.i = getelementptr inbounds %struct.rtl_priv, ptr %902, i32 0, i32 13, i32 9
  %939 = ptrtoint ptr %read8_sync.i34.i to i32
  call void @__asan_load4_noabort(i32 %939)
  %940 = load ptr, ptr %read8_sync.i34.i, align 4
  %call.i35.i = tail call zeroext i8 %940(ptr noundef %902, i32 noundef 841) #8
  br label %if.end.i280

if.end.i280:                                      ; preds = %if.end.sink.split.i279, %if.else.i278.if.end.i280_crit_edge, %if.then.i277.if.end.i280_crit_edge
  %941 = ptrtoint ptr %write16_async.i.i272 to i32
  call void @__asan_load4_noabort(i32 %941)
  %942 = load ptr, ptr %write16_async.i.i272, align 4
  tail call void %942(ptr noundef %902, i32 noundef 848, i16 noundef zeroext 10008) #8
  %943 = ptrtoint ptr %cfg.i.i266 to i32
  call void @__asan_load4_noabort(i32 %943)
  %944 = load ptr, ptr %cfg.i.i266, align 8
  %write_readback.i40.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %944, i32 0, i32 1
  %945 = ptrtoint ptr %write_readback.i40.i to i32
  call void @__asan_load1_noabort(i32 %945)
  %946 = load i8, ptr %write_readback.i40.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %946)
  %tobool.not.i41.i = icmp eq i8 %946, 0
  br i1 %tobool.not.i41.i, label %if.end.i280.rtl_write_word.exit45.i_crit_edge, label %if.then.i44.i

if.end.i280.rtl_write_word.exit45.i_crit_edge:    ; preds = %if.end.i280
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit45.i

if.then.i44.i:                                    ; preds = %if.end.i280
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i42.i = getelementptr inbounds %struct.rtl_priv, ptr %902, i32 0, i32 13, i32 10
  %947 = ptrtoint ptr %read16_sync.i42.i to i32
  call void @__asan_load4_noabort(i32 %947)
  %948 = load ptr, ptr %read16_sync.i42.i, align 4
  %call.i43.i = tail call zeroext i16 %948(ptr noundef %902, i32 noundef 848) #8
  br label %rtl_write_word.exit45.i

rtl_write_word.exit45.i:                          ; preds = %if.then.i44.i, %if.end.i280.rtl_write_word.exit45.i_crit_edge
  %949 = ptrtoint ptr %write8_async.i.i265 to i32
  call void @__asan_load4_noabort(i32 %949)
  %950 = load ptr, ptr %write8_async.i.i265, align 4
  tail call void %950(ptr noundef %902, i32 noundef 850, i8 noundef zeroext 1) #8
  %951 = ptrtoint ptr %cfg.i.i266 to i32
  call void @__asan_load4_noabort(i32 %951)
  %952 = load ptr, ptr %cfg.i.i266, align 8
  %write_readback.i48.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %952, i32 0, i32 1
  %953 = ptrtoint ptr %write_readback.i48.i to i32
  call void @__asan_load1_noabort(i32 %953)
  %954 = load i8, ptr %write_readback.i48.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %954)
  %tobool.not.i49.i = icmp eq i8 %954, 0
  br i1 %tobool.not.i49.i, label %rtl_write_word.exit45.i._rtl8723e_enable_aspm_back_door.exit_crit_edge, label %if.then.i52.i

rtl_write_word.exit45.i._rtl8723e_enable_aspm_back_door.exit_crit_edge: ; preds = %rtl_write_word.exit45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl8723e_enable_aspm_back_door.exit

if.then.i52.i:                                    ; preds = %rtl_write_word.exit45.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i50.i = getelementptr inbounds %struct.rtl_priv, ptr %902, i32 0, i32 13, i32 9
  %955 = ptrtoint ptr %read8_sync.i50.i to i32
  call void @__asan_load4_noabort(i32 %955)
  %956 = load ptr, ptr %read8_sync.i50.i, align 4
  %call.i51.i = tail call zeroext i8 %956(ptr noundef %902, i32 noundef 850) #8
  br label %_rtl8723e_enable_aspm_back_door.exit

_rtl8723e_enable_aspm_back_door.exit:             ; preds = %if.then.i52.i, %rtl_write_word.exit45.i._rtl8723e_enable_aspm_back_door.exit_crit_edge
  %957 = ptrtoint ptr %intf_ops to i32
  call void @__asan_load4_noabort(i32 %957)
  %958 = load ptr, ptr %intf_ops, align 4
  %enable_aspm = getelementptr inbounds %struct.rtl_intf_ops, ptr %958, i32 0, i32 9
  %959 = ptrtoint ptr %enable_aspm to i32
  call void @__asan_load4_noabort(i32 %959)
  %960 = load ptr, ptr %enable_aspm, align 4
  tail call void %960(ptr noundef %hw) #8
  %961 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %961)
  %962 = load ptr, ptr %priv, align 8
  %cfg.i282 = getelementptr inbounds %struct.rtl_priv, ptr %962, i32 0, i32 32
  %963 = ptrtoint ptr %cfg.i282 to i32
  call void @__asan_load4_noabort(i32 %963)
  %964 = load ptr, ptr %cfg.i282, align 8
  %ops.i283 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %964, i32 0, i32 4
  %965 = ptrtoint ptr %ops.i283 to i32
  call void @__asan_load4_noabort(i32 %965)
  %966 = load ptr, ptr %ops.i283, align 4
  %get_btc_status.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %966, i32 0, i32 66
  %967 = ptrtoint ptr %get_btc_status.i to i32
  call void @__asan_load4_noabort(i32 %967)
  %968 = load ptr, ptr %get_btc_status.i, align 4
  %call.i284 = tail call zeroext i1 %968() #8
  br i1 %call.i284, label %if.then.i285, label %_rtl8723e_enable_aspm_back_door.exit.rtl8723e_bt_hw_init.exit_crit_edge

_rtl8723e_enable_aspm_back_door.exit.rtl8723e_bt_hw_init.exit_crit_edge: ; preds = %_rtl8723e_enable_aspm_back_door.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8723e_bt_hw_init.exit

if.then.i285:                                     ; preds = %_rtl8723e_enable_aspm_back_door.exit
  call void @__sanitizer_cov_trace_pc() #10
  %btcoexist.i = getelementptr inbounds %struct.rtl_priv, ptr %962, i32 0, i32 49
  %969 = ptrtoint ptr %btcoexist.i to i32
  call void @__asan_load4_noabort(i32 %969)
  %970 = load ptr, ptr %btcoexist.i, align 8
  %btc_init_hw_config.i = getelementptr inbounds %struct.rtl_btc_ops, ptr %970, i32 0, i32 5
  %971 = ptrtoint ptr %btc_init_hw_config.i to i32
  call void @__asan_load4_noabort(i32 %971)
  %972 = load ptr, ptr %btc_init_hw_config.i, align 4
  tail call void %972(ptr noundef %962) #8
  br label %rtl8723e_bt_hw_init.exit

rtl8723e_bt_hw_init.exit:                         ; preds = %if.then.i285, %_rtl8723e_enable_aspm_back_door.exit.rtl8723e_bt_hw_init.exit_crit_edge
  %973 = ptrtoint ptr %rfpwr_state to i32
  call void @__asan_load4_noabort(i32 %973)
  %974 = load i32, ptr %rfpwr_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %974)
  %cmp61 = icmp eq i32 %974, 0
  br i1 %cmp61, label %if.then63, label %rtl8723e_bt_hw_init.exit.if.end69_crit_edge

rtl8723e_bt_hw_init.exit.if.end69_crit_edge:      ; preds = %rtl8723e_bt_hw_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then63:                                        ; preds = %rtl8723e_bt_hw_init.exit
  tail call void @rtl8723e_phy_set_rfpath_switch(ptr noundef %hw, i1 noundef zeroext true) #8
  %iqk_initialized = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 31
  %975 = ptrtoint ptr %iqk_initialized to i32
  call void @__asan_load1_noabort(i32 %975)
  %976 = load i8, ptr %iqk_initialized, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %976)
  %tobool64.not = icmp eq i8 %976, 0
  br i1 %tobool64.not, label %if.else66, label %if.then65

if.then65:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rtl8723e_phy_iq_calibrate(ptr noundef %hw, i1 noundef zeroext true) #8
  br label %if.end68

if.else66:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rtl8723e_phy_iq_calibrate(ptr noundef %hw, i1 noundef zeroext false) #8
  %977 = ptrtoint ptr %iqk_initialized to i32
  call void @__asan_store1_noabort(i32 %977)
  store i8 1, ptr %iqk_initialized, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.else66, %if.then65
  tail call void @rtl8723e_dm_check_txpower_tracking(ptr noundef %hw) #8
  tail call void @rtl8723e_phy_lc_calibrate(ptr noundef %hw) #8
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %rtl8723e_bt_hw_init.exit.if.end69_crit_edge
  %call70 = tail call zeroext i8 @efuse_read_1byte(ptr noundef %hw, i16 noundef zeroext 506) #8
  %conv71 = zext i8 %call70 to i32
  %and72 = and i32 %conv71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.then74, label %if.end69.if.end75_crit_edge

if.end69.if.end75_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

if.then74:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  %978 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %978)
  %979 = load ptr, ptr %priv, align 8
  %cfg.i288 = getelementptr inbounds %struct.rtl_priv, ptr %979, i32 0, i32 32
  %980 = ptrtoint ptr %cfg.i288 to i32
  call void @__asan_load4_noabort(i32 %980)
  %981 = load ptr, ptr %cfg.i288, align 8
  %ops.i289 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %981, i32 0, i32 4
  %982 = ptrtoint ptr %ops.i289 to i32
  call void @__asan_load4_noabort(i32 %982)
  %983 = load ptr, ptr %ops.i289, align 4
  %set_rfreg.i290 = getelementptr inbounds %struct.rtl_hal_ops, ptr %983, i32 0, i32 48
  %984 = ptrtoint ptr %set_rfreg.i290 to i32
  call void @__asan_load4_noabort(i32 %984)
  %985 = load ptr, ptr %set_rfreg.i290, align 4
  tail call void %985(ptr noundef %hw, i32 noundef 0, i32 noundef 21, i32 noundef 15, i32 noundef 5) #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.14) #8
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %if.end69.if.end75_crit_edge
  %and77 = and i32 %conv71, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %if.then79, label %if.end75.if.end89_crit_edge

if.end75.if.end89_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

if.then79:                                        ; preds = %if.end75
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %986 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %986)
  %987 = load ptr, ptr %read8_sync.i, align 4
  %call.i291 = tail call zeroext i8 %987(ptr noundef %1, i32 noundef 22) #8
  %988 = and i8 %call.i291, 15
  %or = or i8 %988, -128
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %989 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %989)
  %990 = load ptr, ptr %write8_async.i, align 4
  tail call void %990(ptr noundef %1, i32 noundef 22, i8 noundef zeroext %or) #8
  %991 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %991)
  %992 = load ptr, ptr %cfg.i, align 8
  %write_readback.i293 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %992, i32 0, i32 1
  %993 = ptrtoint ptr %write_readback.i293 to i32
  call void @__asan_load1_noabort(i32 %993)
  %994 = load i8, ptr %write_readback.i293, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %994)
  %tobool.not.i294 = icmp eq i8 %994, 0
  br i1 %tobool.not.i294, label %if.then79.rtl_write_byte.exit_crit_edge, label %if.then.i297

if.then79.rtl_write_byte.exit_crit_edge:          ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit

if.then.i297:                                     ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #10
  %995 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %995)
  %996 = load ptr, ptr %read8_sync.i, align 4
  %call.i296 = tail call zeroext i8 %996(ptr noundef %1, i32 noundef 22) #8
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i297, %if.then79.rtl_write_byte.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %997 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %997(i32 noundef 2147480) #8
  %998 = or i8 %988, -112
  %999 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %999)
  %1000 = load ptr, ptr %write8_async.i, align 4
  tail call void %1000(ptr noundef %1, i32 noundef 22, i8 noundef zeroext %998) #8
  %1001 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %1001)
  %1002 = load ptr, ptr %cfg.i, align 8
  %write_readback.i301 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1002, i32 0, i32 1
  %1003 = ptrtoint ptr %write_readback.i301 to i32
  call void @__asan_load1_noabort(i32 %1003)
  %1004 = load i8, ptr %write_readback.i301, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1004)
  %tobool.not.i302 = icmp eq i8 %1004, 0
  br i1 %tobool.not.i302, label %rtl_write_byte.exit.rtl_write_byte.exit307_crit_edge, label %if.then.i305

rtl_write_byte.exit.rtl_write_byte.exit307_crit_edge: ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit307

if.then.i305:                                     ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #10
  %1005 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %1005)
  %1006 = load ptr, ptr %read8_sync.i, align 4
  %call.i304 = tail call zeroext i8 %1006(ptr noundef %1, i32 noundef 22) #8
  br label %rtl_write_byte.exit307

rtl_write_byte.exit307:                           ; preds = %if.then.i305, %rtl_write_byte.exit.rtl_write_byte.exit307_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.15) #8
  br label %if.end89

if.end89:                                         ; preds = %rtl_write_byte.exit307, %if.end75.if.end89_crit_edge
  tail call void @rtl8723e_dm_init(ptr noundef %hw) #8
  br label %do.body90

do.body90:                                        ; preds = %if.end89, %if.then19, %do.end14
  %err.0 = phi i32 [ 1, %if.then19 ], [ 0, %if.end89 ], [ 1, %do.end14 ]
  %and.i = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool98.not = icmp eq i32 %and.i, 0
  br i1 %tobool98.not, label %if.then99, label %do.body90.do.body101_crit_edge

do.body90.do.body101_crit_edge:                   ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body101

if.then99:                                        ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_on() #8
  br label %do.body101

do.body101:                                       ; preds = %if.then99, %do.body90.do.body101_crit_edge
  %1007 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !183
  %and.i.i = and i32 %1007, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool109.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool109.not, label %if.then113, label %do.body101.do.end116_crit_edge, !prof !185

do.body101.do.end116_crit_edge:                   ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end116

if.then113:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end116

do.end116:                                        ; preds = %if.then113, %do.body101.do.end116_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %3) #8, !srcloc !186
  %1008 = ptrtoint ptr %being_init_adapter to i32
  call void @__asan_store1_noabort(i32 %1008)
  store i8 0, ptr %being_init_adapter, align 1
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8723_download_fw(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl8723e_phy_mac_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl8723e_phy_bb_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl8723e_phy_rf_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_cam_reset_all_entry(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723e_bt_hw_init(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
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
declare dso_local void @rtl8723e_phy_set_rfpath_switch(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723e_phy_iq_calibrate(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723e_dm_check_txpower_tracking(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723e_phy_lc_calibrate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @efuse_read_1byte(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723e_dm_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723e_set_check_bssid(ptr noundef %hw, i1 noundef zeroext %check_bssid) local_unnamed_addr #0 align 64 {
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
  br i1 %check_bssid, label %if.then3, label %if.then5

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
  %22 = load i8, ptr %write_readback.i.i, align 1, !range !182
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

if.then5:                                         ; preds = %if.end
  %and = and i32 %3, -193
  %25 = ptrtoint ptr %reg_rcr to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and, ptr %reg_rcr, align 4
  %reg_bcn_ctrl_val.i22 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %26 = ptrtoint ptr %reg_bcn_ctrl_val.i22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %reg_bcn_ctrl_val.i22, align 4
  %or.i = or i32 %27, 16
  store i32 %or.i, ptr %reg_bcn_ctrl_val.i22, align 4
  %conv6.i23 = trunc i32 %or.i to i8
  %write8_async.i.i24 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %28 = ptrtoint ptr %write8_async.i.i24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write8_async.i.i24, align 4
  tail call void %29(ptr noundef %1, i32 noundef 1360, i8 noundef zeroext %conv6.i23) #8
  %cfg.i.i25 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %30 = ptrtoint ptr %cfg.i.i25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cfg.i.i25, align 8
  %write_readback.i.i26 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %write_readback.i.i26 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %write_readback.i.i26, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i.i27 = icmp eq i8 %33, 0
  br i1 %tobool.not.i.i27, label %if.then5._rtl8723e_set_bcn_ctrl_reg.exit31_crit_edge, label %if.then.i.i30

if.then5._rtl8723e_set_bcn_ctrl_reg.exit31_crit_edge: ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl8723e_set_bcn_ctrl_reg.exit31

if.then.i.i30:                                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i28 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %34 = ptrtoint ptr %read8_sync.i.i28 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read8_sync.i.i28, align 4
  %call.i.i29 = tail call zeroext i8 %35(ptr noundef %1, i32 noundef 1360) #8
  br label %_rtl8723e_set_bcn_ctrl_reg.exit31

_rtl8723e_set_bcn_ctrl_reg.exit31:                ; preds = %if.then.i.i30, %if.then5._rtl8723e_set_bcn_ctrl_reg.exit31_crit_edge
  %36 = ptrtoint ptr %cfg.i.i25 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cfg.i.i25, align 8
  %ops7 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %ops7 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops7, align 4
  %set_hw_reg8 = getelementptr inbounds %struct.rtl_hal_ops, ptr %39, i32 0, i32 20
  %40 = ptrtoint ptr %set_hw_reg8 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %set_hw_reg8, align 4
  call void %41(ptr noundef %hw, i8 noundef zeroext 44, ptr noundef nonnull %reg_rcr) #8
  br label %cleanup

cleanup:                                          ; preds = %_rtl8723e_set_bcn_ctrl_reg.exit31, %if.then.i.i, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_rcr) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl8723e_set_network_type(ptr noundef %hw, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  %reg_rcr.i10 = alloca i32, align 4
  %reg_rcr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call = tail call fastcc i32 @_rtl8723e_set_media_status(ptr noundef %hw, i32 noundef %type)
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %type)
  %cmp2.not = icmp eq i32 %type, 3
  br i1 %cmp2.not, label %if.then1.cleanup_crit_edge, label %if.then3

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.then1
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_rcr.i) #8
  %rfpwr_state.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 21, i32 24
  %6 = ptrtoint ptr %rfpwr_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rfpwr_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then3.rtl8723e_set_check_bssid.exit_crit_edge

if.then3.rtl8723e_set_check_bssid.exit_crit_edge: ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8723e_set_check_bssid.exit

if.end.i:                                         ; preds = %if.then3
  %receive_config.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 3
  %8 = ptrtoint ptr %receive_config.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %receive_config.i, align 4
  %or.i = or i32 %9, 192
  %10 = ptrtoint ptr %reg_rcr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or.i, ptr %reg_rcr.i, align 4
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 32
  %11 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i, align 4
  %set_hw_reg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %14, i32 0, i32 20
  %15 = ptrtoint ptr %set_hw_reg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %set_hw_reg.i, align 4
  call void %16(ptr noundef %hw, i8 noundef zeroext 44, ptr noundef nonnull %reg_rcr.i) #8
  %17 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i.i = getelementptr inbounds %struct.rtl_priv, ptr %18, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %reg_bcn_ctrl_val.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reg_bcn_ctrl_val.i.i, align 4
  %and.i.i = and i32 %20, -17
  store i32 %and.i.i, ptr %reg_bcn_ctrl_val.i.i, align 4
  %conv6.i.i = trunc i32 %and.i.i to i8
  %write8_async.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %18, i32 0, i32 13, i32 5
  %21 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write8_async.i.i.i, align 4
  call void %22(ptr noundef %18, i32 noundef 1360, i8 noundef zeroext %conv6.i.i) #8
  %cfg.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %18, i32 0, i32 32
  %23 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %write_readback.i.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %write_readback.i.i.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i.i.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.rtl8723e_set_check_bssid.exit_crit_edge, label %if.then.i.i.i

if.end.i.rtl8723e_set_check_bssid.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8723e_set_check_bssid.exit

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %18, i32 0, i32 13, i32 9
  %27 = ptrtoint ptr %read8_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read8_sync.i.i.i, align 4
  %call.i.i.i = call zeroext i8 %28(ptr noundef %18, i32 noundef 1360) #8
  br label %rtl8723e_set_check_bssid.exit

rtl8723e_set_check_bssid.exit:                    ; preds = %if.then.i.i.i, %if.end.i.rtl8723e_set_check_bssid.exit_crit_edge, %if.then3.rtl8723e_set_check_bssid.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_rcr.i) #8
  br label %cleanup

if.else:                                          ; preds = %if.end
  %29 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_rcr.i10) #8
  %rfpwr_state.i13 = getelementptr inbounds %struct.rtl_priv, ptr %30, i32 0, i32 21, i32 24
  %31 = ptrtoint ptr %rfpwr_state.i13 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rfpwr_state.i13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.not.i14 = icmp eq i32 %32, 0
  br i1 %cmp.not.i14, label %if.end.i15, label %if.else.rtl8723e_set_check_bssid.exit16_crit_edge

if.else.rtl8723e_set_check_bssid.exit16_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8723e_set_check_bssid.exit16

if.end.i15:                                       ; preds = %if.else
  %receive_config.i12 = getelementptr inbounds %struct.rtl_priv, ptr %30, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 3
  %33 = ptrtoint ptr %receive_config.i12 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %receive_config.i12, align 4
  %and.i = and i32 %34, -193
  %35 = ptrtoint ptr %reg_rcr.i10 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %and.i, ptr %reg_rcr.i10, align 4
  %reg_bcn_ctrl_val.i22.i = getelementptr inbounds %struct.rtl_priv, ptr %30, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %36 = ptrtoint ptr %reg_bcn_ctrl_val.i22.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %reg_bcn_ctrl_val.i22.i, align 4
  %or.i.i = or i32 %37, 16
  store i32 %or.i.i, ptr %reg_bcn_ctrl_val.i22.i, align 4
  %conv6.i23.i = trunc i32 %or.i.i to i8
  %write8_async.i.i24.i = getelementptr inbounds %struct.rtl_priv, ptr %30, i32 0, i32 13, i32 5
  %38 = ptrtoint ptr %write8_async.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write8_async.i.i24.i, align 4
  tail call void %39(ptr noundef %30, i32 noundef 1360, i8 noundef zeroext %conv6.i23.i) #8
  %cfg.i.i25.i = getelementptr inbounds %struct.rtl_priv, ptr %30, i32 0, i32 32
  %40 = ptrtoint ptr %cfg.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cfg.i.i25.i, align 8
  %write_readback.i.i26.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %write_readback.i.i26.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %write_readback.i.i26.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i.i27.i = icmp eq i8 %43, 0
  br i1 %tobool.not.i.i27.i, label %if.end.i15._rtl8723e_set_bcn_ctrl_reg.exit31.i_crit_edge, label %if.then.i.i30.i

if.end.i15._rtl8723e_set_bcn_ctrl_reg.exit31.i_crit_edge: ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl8723e_set_bcn_ctrl_reg.exit31.i

if.then.i.i30.i:                                  ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i28.i = getelementptr inbounds %struct.rtl_priv, ptr %30, i32 0, i32 13, i32 9
  %44 = ptrtoint ptr %read8_sync.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read8_sync.i.i28.i, align 4
  %call.i.i29.i = tail call zeroext i8 %45(ptr noundef %30, i32 noundef 1360) #8
  br label %_rtl8723e_set_bcn_ctrl_reg.exit31.i

_rtl8723e_set_bcn_ctrl_reg.exit31.i:              ; preds = %if.then.i.i30.i, %if.end.i15._rtl8723e_set_bcn_ctrl_reg.exit31.i_crit_edge
  %46 = ptrtoint ptr %cfg.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cfg.i.i25.i, align 8
  %ops7.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %ops7.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops7.i, align 4
  %set_hw_reg8.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %49, i32 0, i32 20
  %50 = ptrtoint ptr %set_hw_reg8.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %set_hw_reg8.i, align 4
  call void %51(ptr noundef %hw, i8 noundef zeroext 44, ptr noundef nonnull %reg_rcr.i10) #8
  br label %rtl8723e_set_check_bssid.exit16

rtl8723e_set_check_bssid.exit16:                  ; preds = %_rtl8723e_set_bcn_ctrl_reg.exit31.i, %if.else.rtl8723e_set_check_bssid.exit16_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_rcr.i10) #8
  br label %cleanup

cleanup:                                          ; preds = %rtl8723e_set_check_bssid.exit16, %rtl8723e_set_check_bssid.exit, %if.then1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ 0, %if.then1.cleanup_crit_edge ], [ 0, %rtl8723e_set_check_bssid.exit ], [ 0, %rtl8723e_set_check_bssid.exit16 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_rtl8723e_set_media_status(ptr noundef %hw, i32 noundef %type) unnamed_addr #0 align 64 {
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
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %5 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write32_async.i, align 4
  tail call void %6(ptr noundef %1, i32 noundef 1360, i32 noundef 0) #8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %7 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %write_readback.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %entry.rtl_write_dword.exit_crit_edge, label %if.then.i

entry.rtl_write_dword.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %11 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read32_sync.i, align 4
  %call.i68 = tail call i32 %12(ptr noundef %1, i32 noundef 1360) #8
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i, %entry.rtl_write_dword.exit_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1024, i32 noundef 4, ptr noundef nonnull @.str.37) #8
  %13 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %type, label %do.end [
    i32 0, label %rtl_write_dword.exit.land.lhs.true_crit_edge
    i32 1, label %sw.bb2
    i32 2, label %sw.bb3
    i32 3, label %if.end.thread132
  ]

rtl_write_dword.exit.land.lhs.true_crit_edge:     ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

sw.bb2:                                           ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

sw.bb3:                                           ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

do.end:                                           ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %type) #11
  br label %cleanup

if.end.thread132:                                 ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.41) #8
  br label %if.then24

land.lhs.true:                                    ; preds = %sw.bb3, %sw.bb2, %rtl_write_dword.exit.land.lhs.true_crit_edge
  %.str.40.sink = phi ptr [ @.str.40, %sw.bb3 ], [ @.str.39, %sw.bb2 ], [ @.str.38, %rtl_write_dword.exit.land.lhs.true_crit_edge ]
  %ledaction.0.ph = phi i32 [ 2, %sw.bb3 ], [ 3, %sw.bb2 ], [ 3, %rtl_write_dword.exit.land.lhs.true_crit_edge ]
  %mode.0.ph = phi i8 [ 2, %sw.bb3 ], [ 1, %sw.bb2 ], [ 0, %rtl_write_dword.exit.land.lhs.true_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 5, ptr noundef nonnull %.str.40.sink) #8
  %link_state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 10
  %14 = ptrtoint ptr %link_state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %link_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp8 = icmp ult i32 %15, 2
  br i1 %cmp8, label %land.lhs.true.if.then16_crit_edge, label %if.end

land.lhs.true.if.then16_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16

if.end:                                           ; preds = %land.lhs.true
  %trunc = trunc i8 %mode.0.ph to i2
  %16 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.88)
  switch i2 %trunc, label %if.else25 [
    i2 0, label %if.end.if.then16_crit_edge
    i2 -2, label %if.end.if.then16_crit_edge137
    i2 1, label %if.end.if.then24_crit_edge
  ]

if.end.if.then24_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24

if.end.if.then16_crit_edge137:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16

if.end.if.then16_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16

if.then16:                                        ; preds = %if.end.if.then16_crit_edge, %if.end.if.then16_crit_edge137, %land.lhs.true.if.then16_crit_edge
  %mode.1131 = phi i8 [ %mode.0.ph, %if.end.if.then16_crit_edge ], [ %mode.0.ph, %if.end.if.then16_crit_edge137 ], [ 0, %land.lhs.true.if.then16_crit_edge ]
  %ledaction.1129 = phi i32 [ %ledaction.0.ph, %if.end.if.then16_crit_edge ], [ %ledaction.0.ph, %if.end.if.then16_crit_edge137 ], [ 3, %land.lhs.true.if.then16_crit_edge ]
  %17 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv, align 8
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %18, i32 0, i32 13, i32 9
  %19 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = tail call zeroext i8 %20(ptr noundef %18, i32 noundef 1058) #8
  %21 = and i8 %call.i.i, -65
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %18, i32 0, i32 13, i32 5
  %22 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %23(ptr noundef %18, i32 noundef 1058, i8 noundef zeroext %21) #8
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %18, i32 0, i32 32
  %24 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %write_readback.i.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i.i = icmp eq i8 %27, 0
  br i1 %tobool.not.i.i, label %if.then16.rtl_write_byte.exit.i_crit_edge, label %if.then.i.i

if.then16.rtl_write_byte.exit.i_crit_edge:        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit.i

if.then.i.i:                                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i13.i = tail call zeroext i8 %29(ptr noundef %18, i32 noundef 1058) #8
  br label %rtl_write_byte.exit.i

rtl_write_byte.exit.i:                            ; preds = %if.then.i.i, %if.then16.rtl_write_byte.exit.i_crit_edge
  %30 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %31(ptr noundef %18, i32 noundef 1345, i8 noundef zeroext 100) #8
  %32 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i16.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %write_readback.i16.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %write_readback.i16.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i17.i = icmp eq i8 %35, 0
  br i1 %tobool.not.i17.i, label %rtl_write_byte.exit.i.rtl_write_byte.exit21.i_crit_edge, label %if.then.i20.i

rtl_write_byte.exit.i.rtl_write_byte.exit21.i_crit_edge: ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit21.i

if.then.i20.i:                                    ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i19.i = tail call zeroext i8 %37(ptr noundef %18, i32 noundef 1345) #8
  br label %rtl_write_byte.exit21.i

rtl_write_byte.exit21.i:                          ; preds = %if.then.i20.i, %rtl_write_byte.exit.i.rtl_write_byte.exit21.i_crit_edge
  %38 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i23.i = tail call zeroext i8 %39(ptr noundef %18, i32 noundef 1346) #8
  %40 = and i8 %call.i23.i, -2
  %41 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %42(ptr noundef %18, i32 noundef 1346, i8 noundef zeroext %40) #8
  %43 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i26.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %write_readback.i26.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %write_readback.i26.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i27.i = icmp eq i8 %46, 0
  br i1 %tobool.not.i27.i, label %rtl_write_byte.exit21.i._rtl8723e_stop_tx_beacon.exit_crit_edge, label %if.then.i30.i

rtl_write_byte.exit21.i._rtl8723e_stop_tx_beacon.exit_crit_edge: ; preds = %rtl_write_byte.exit21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl8723e_stop_tx_beacon.exit

if.then.i30.i:                                    ; preds = %rtl_write_byte.exit21.i
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i29.i = tail call zeroext i8 %48(ptr noundef %18, i32 noundef 1346) #8
  br label %_rtl8723e_stop_tx_beacon.exit

_rtl8723e_stop_tx_beacon.exit:                    ; preds = %if.then.i30.i, %rtl_write_byte.exit21.i._rtl8723e_stop_tx_beacon.exit_crit_edge
  %49 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i.i = getelementptr inbounds %struct.rtl_priv, ptr %50, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %51 = ptrtoint ptr %reg_bcn_ctrl_val.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %reg_bcn_ctrl_val.i.i, align 4
  %and.i.i = and i32 %52, -3
  store i32 %and.i.i, ptr %reg_bcn_ctrl_val.i.i, align 4
  %conv6.i.i = trunc i32 %and.i.i to i8
  %write8_async.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %50, i32 0, i32 13, i32 5
  %53 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %54(ptr noundef %50, i32 noundef 1360, i8 noundef zeroext %conv6.i.i) #8
  %cfg.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %50, i32 0, i32 32
  %55 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %write_readback.i.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %write_readback.i.i.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i.i.i = icmp eq i8 %58, 0
  br i1 %tobool.not.i.i.i, label %_rtl8723e_stop_tx_beacon.exit.if.end28_crit_edge, label %if.then.i.i.i

_rtl8723e_stop_tx_beacon.exit.if.end28_crit_edge: ; preds = %_rtl8723e_stop_tx_beacon.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then.i.i.i:                                    ; preds = %_rtl8723e_stop_tx_beacon.exit
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %50, i32 0, i32 13, i32 9
  %59 = ptrtoint ptr %read8_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %read8_sync.i.i.i, align 4
  %call.i.i.i = tail call zeroext i8 %60(ptr noundef %50, i32 noundef 1360) #8
  br label %if.end28

if.then24:                                        ; preds = %if.end.if.then24_crit_edge, %if.end.thread132
  %mode.1136 = phi i8 [ 3, %if.end.thread132 ], [ 1, %if.end.if.then24_crit_edge ]
  %ledaction.1135 = phi i32 [ 2, %if.end.thread132 ], [ %ledaction.0.ph, %if.end.if.then24_crit_edge ]
  %61 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %priv, align 8
  %read8_sync.i.i70 = getelementptr inbounds %struct.rtl_priv, ptr %62, i32 0, i32 13, i32 9
  %63 = ptrtoint ptr %read8_sync.i.i70 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %read8_sync.i.i70, align 4
  %call.i.i71 = tail call zeroext i8 %64(ptr noundef %62, i32 noundef 1058) #8
  %65 = or i8 %call.i.i71, 64
  %write8_async.i.i72 = getelementptr inbounds %struct.rtl_priv, ptr %62, i32 0, i32 13, i32 5
  %66 = ptrtoint ptr %write8_async.i.i72 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %write8_async.i.i72, align 4
  tail call void %67(ptr noundef %62, i32 noundef 1058, i8 noundef zeroext %65) #8
  %cfg.i.i73 = getelementptr inbounds %struct.rtl_priv, ptr %62, i32 0, i32 32
  %68 = ptrtoint ptr %cfg.i.i73 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cfg.i.i73, align 8
  %write_readback.i.i74 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %write_readback.i.i74 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %write_readback.i.i74, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool.not.i.i75 = icmp eq i8 %71, 0
  br i1 %tobool.not.i.i75, label %if.then24.rtl_write_byte.exit.i80_crit_edge, label %if.then.i.i77

if.then24.rtl_write_byte.exit.i80_crit_edge:      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit.i80

if.then.i.i77:                                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %read8_sync.i.i70 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %read8_sync.i.i70, align 4
  %call.i13.i76 = tail call zeroext i8 %73(ptr noundef %62, i32 noundef 1058) #8
  br label %rtl_write_byte.exit.i80

rtl_write_byte.exit.i80:                          ; preds = %if.then.i.i77, %if.then24.rtl_write_byte.exit.i80_crit_edge
  %74 = ptrtoint ptr %write8_async.i.i72 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %write8_async.i.i72, align 4
  tail call void %75(ptr noundef %62, i32 noundef 1345, i8 noundef zeroext -1) #8
  %76 = ptrtoint ptr %cfg.i.i73 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %cfg.i.i73, align 8
  %write_readback.i16.i78 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %write_readback.i16.i78 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %write_readback.i16.i78, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool.not.i17.i79 = icmp eq i8 %79, 0
  br i1 %tobool.not.i17.i79, label %rtl_write_byte.exit.i80.rtl_write_byte.exit21.i86_crit_edge, label %if.then.i20.i82

rtl_write_byte.exit.i80.rtl_write_byte.exit21.i86_crit_edge: ; preds = %rtl_write_byte.exit.i80
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit21.i86

if.then.i20.i82:                                  ; preds = %rtl_write_byte.exit.i80
  call void @__sanitizer_cov_trace_pc() #10
  %80 = ptrtoint ptr %read8_sync.i.i70 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %read8_sync.i.i70, align 4
  %call.i19.i81 = tail call zeroext i8 %81(ptr noundef %62, i32 noundef 1345) #8
  br label %rtl_write_byte.exit21.i86

rtl_write_byte.exit21.i86:                        ; preds = %if.then.i20.i82, %rtl_write_byte.exit.i80.rtl_write_byte.exit21.i86_crit_edge
  %82 = ptrtoint ptr %read8_sync.i.i70 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %read8_sync.i.i70, align 4
  %call.i23.i83 = tail call zeroext i8 %83(ptr noundef %62, i32 noundef 1346) #8
  %84 = or i8 %call.i23.i83, 2
  %85 = ptrtoint ptr %write8_async.i.i72 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %write8_async.i.i72, align 4
  tail call void %86(ptr noundef %62, i32 noundef 1346, i8 noundef zeroext %84) #8
  %87 = ptrtoint ptr %cfg.i.i73 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %cfg.i.i73, align 8
  %write_readback.i26.i84 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %write_readback.i26.i84 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %write_readback.i26.i84, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool.not.i27.i85 = icmp eq i8 %90, 0
  br i1 %tobool.not.i27.i85, label %rtl_write_byte.exit21.i86._rtl8723e_resume_tx_beacon.exit_crit_edge, label %if.then.i30.i88

rtl_write_byte.exit21.i86._rtl8723e_resume_tx_beacon.exit_crit_edge: ; preds = %rtl_write_byte.exit21.i86
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl8723e_resume_tx_beacon.exit

if.then.i30.i88:                                  ; preds = %rtl_write_byte.exit21.i86
  call void @__sanitizer_cov_trace_pc() #10
  %91 = ptrtoint ptr %read8_sync.i.i70 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %read8_sync.i.i70, align 4
  %call.i29.i87 = tail call zeroext i8 %92(ptr noundef %62, i32 noundef 1346) #8
  br label %_rtl8723e_resume_tx_beacon.exit

_rtl8723e_resume_tx_beacon.exit:                  ; preds = %if.then.i30.i88, %rtl_write_byte.exit21.i86._rtl8723e_resume_tx_beacon.exit_crit_edge
  %93 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i.i90 = getelementptr inbounds %struct.rtl_priv, ptr %94, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %95 = ptrtoint ptr %reg_bcn_ctrl_val.i.i90 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %reg_bcn_ctrl_val.i.i90, align 4
  %or.i.i = or i32 %96, 2
  store i32 %or.i.i, ptr %reg_bcn_ctrl_val.i.i90, align 4
  %conv6.i.i91 = trunc i32 %or.i.i to i8
  %write8_async.i.i.i92 = getelementptr inbounds %struct.rtl_priv, ptr %94, i32 0, i32 13, i32 5
  %97 = ptrtoint ptr %write8_async.i.i.i92 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %write8_async.i.i.i92, align 4
  tail call void %98(ptr noundef %94, i32 noundef 1360, i8 noundef zeroext %conv6.i.i91) #8
  %cfg.i.i.i93 = getelementptr inbounds %struct.rtl_priv, ptr %94, i32 0, i32 32
  %99 = ptrtoint ptr %cfg.i.i.i93 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %cfg.i.i.i93, align 8
  %write_readback.i.i.i94 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %write_readback.i.i.i94 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %write_readback.i.i.i94, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool.not.i.i.i95 = icmp eq i8 %102, 0
  br i1 %tobool.not.i.i.i95, label %_rtl8723e_resume_tx_beacon.exit.if.end28_crit_edge, label %if.then.i.i.i98

_rtl8723e_resume_tx_beacon.exit.if.end28_crit_edge: ; preds = %_rtl8723e_resume_tx_beacon.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then.i.i.i98:                                  ; preds = %_rtl8723e_resume_tx_beacon.exit
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i.i96 = getelementptr inbounds %struct.rtl_priv, ptr %94, i32 0, i32 13, i32 9
  %103 = ptrtoint ptr %read8_sync.i.i.i96 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %read8_sync.i.i.i96, align 4
  %call.i.i.i97 = tail call zeroext i8 %104(ptr noundef %94, i32 noundef 1360) #8
  br label %if.end28

if.else25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.44, i32 noundef 2) #8
  br label %if.end28

if.end28:                                         ; preds = %if.else25, %if.then.i.i.i98, %_rtl8723e_resume_tx_beacon.exit.if.end28_crit_edge, %if.then.i.i.i, %_rtl8723e_stop_tx_beacon.exit.if.end28_crit_edge
  %mode.1130 = phi i8 [ 0, %if.else25 ], [ %mode.1131, %_rtl8723e_stop_tx_beacon.exit.if.end28_crit_edge ], [ %mode.1131, %if.then.i.i.i ], [ %mode.1136, %_rtl8723e_resume_tx_beacon.exit.if.end28_crit_edge ], [ %mode.1136, %if.then.i.i.i98 ]
  %ledaction.1128 = phi i32 [ %ledaction.0.ph, %if.else25 ], [ %ledaction.1129, %_rtl8723e_stop_tx_beacon.exit.if.end28_crit_edge ], [ %ledaction.1129, %if.then.i.i.i ], [ %ledaction.1135, %_rtl8723e_resume_tx_beacon.exit.if.end28_crit_edge ], [ %ledaction.1135, %if.then.i.i.i98 ]
  %or66 = or i8 %mode.1130, %4
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %105 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %write8_async.i, align 4
  tail call void %106(ptr noundef %1, i32 noundef 258, i8 noundef zeroext %or66) #8
  %107 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %cfg.i, align 8
  %write_readback.i100 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %write_readback.i100 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %write_readback.i100, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool.not.i101 = icmp eq i8 %110, 0
  br i1 %tobool.not.i101, label %if.end28.rtl_write_byte.exit_crit_edge, label %if.then.i104

if.end28.rtl_write_byte.exit_crit_edge:           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit

if.then.i104:                                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %111 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %read8_sync.i, align 4
  %call.i103 = tail call zeroext i8 %112(ptr noundef %1, i32 noundef 258) #8
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i104, %if.end28.rtl_write_byte.exit_crit_edge
  %113 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %cfg.i, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %114, i32 0, i32 4
  %115 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ops, align 4
  %led_control = getelementptr inbounds %struct.rtl_hal_ops, ptr %116, i32 0, i32 36
  %117 = ptrtoint ptr %led_control to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %led_control, align 4
  tail call void %118(ptr noundef %hw, i32 noundef %ledaction.1128) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %mode.1130)
  %cmp33 = icmp eq i8 %mode.1130, 3
  %119 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %write8_async.i, align 4
  br i1 %cmp33, label %if.then35, label %if.else36

if.then35:                                        ; preds = %rtl_write_byte.exit
  tail call void %120(ptr noundef %1, i32 noundef 1297, i8 noundef zeroext 0) #8
  %121 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %cfg.i, align 8
  %write_readback.i107 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %write_readback.i107 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %write_readback.i107, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool.not.i108 = icmp eq i8 %124, 0
  br i1 %tobool.not.i108, label %if.then35.cleanup_crit_edge, label %if.then.i111

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i111:                                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  %125 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %read8_sync.i, align 4
  %call.i110 = tail call zeroext i8 %126(ptr noundef %1, i32 noundef 1297) #8
  br label %cleanup

if.else36:                                        ; preds = %rtl_write_byte.exit
  tail call void %120(ptr noundef %1, i32 noundef 1297, i8 noundef zeroext 102) #8
  %127 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %cfg.i, align 8
  %write_readback.i115 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %write_readback.i115 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %write_readback.i115, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool.not.i116 = icmp eq i8 %130, 0
  br i1 %tobool.not.i116, label %if.else36.cleanup_crit_edge, label %if.then.i119

if.else36.cleanup_crit_edge:                      ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i119:                                     ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #10
  %131 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %read8_sync.i, align 4
  %call.i118 = tail call zeroext i8 %132(ptr noundef %1, i32 noundef 1297) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i119, %if.else36.cleanup_crit_edge, %if.then.i111, %if.then35.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 1, %do.end ], [ 0, %if.then35.cleanup_crit_edge ], [ 0, %if.then.i111 ], [ 0, %if.else36.cleanup_crit_edge ], [ 0, %if.then.i119 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723e_set_qos(ptr noundef %hw, i32 noundef %aci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void @rtl8723_dm_init_edca_turbo(ptr noundef %hw) #8
  %2 = zext i32 %aci to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.89)
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
  %8 = load i8, ptr %write_readback.i, align 1, !range !182
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
  %16 = load i8, ptr %write_readback.i44, align 1, !range !182
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
  %24 = load i8, ptr %write_readback.i52, align 1, !range !182
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
  %.b41 = load i1, ptr @rtl8723e_set_qos.__already_done, align 1
  br i1 %.b41, label %land.end.sw.epilog_crit_edge, label %if.then, !prof !187

land.end.sw.epilog_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rtl8723e_set_qos.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1230, i32 noundef 9, ptr noundef nonnull @.str.16, i32 noundef %aci) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %land.end.sw.epilog_crit_edge, %if.then.i56, %sw.bb2.sw.epilog_crit_edge, %if.then.i48, %sw.bb1.sw.epilog_crit_edge, %if.then.i, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723e_enable_interrupt(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
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
  tail call void %5(ptr noundef %1, i32 noundef 936, i32 noundef %3) #8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %6 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %write_readback.i, align 1, !range !182
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
  %call.i = tail call i32 %11(ptr noundef %1, i32 noundef 936) #8
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i, %entry.rtl_write_dword.exit_crit_edge
  %arrayidx4 = getelementptr %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 6
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx4, align 4
  %14 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write32_async.i, align 4
  tail call void %15(ptr noundef %1, i32 noundef 940, i32 noundef %13) #8
  %16 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cfg.i, align 8
  %write_readback.i12 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %write_readback.i12 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %write_readback.i12, align 1, !range !182
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
  %call.i15 = tail call i32 %21(ptr noundef %1, i32 noundef 940) #8
  br label %rtl_write_dword.exit17

rtl_write_dword.exit17:                           ; preds = %if.then.i16, %rtl_write_dword.exit.rtl_write_dword.exit17_crit_edge
  %irq_enabled = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1, i32 1
  %22 = ptrtoint ptr %irq_enabled to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %irq_enabled, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723e_disable_interrupt(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
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
  tail call void %3(ptr noundef %1, i32 noundef 936, i32 noundef 0) #8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %write_readback.i, align 1, !range !182
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
  %call.i = tail call i32 %9(ptr noundef %1, i32 noundef 936) #8
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i, %entry.rtl_write_dword.exit_crit_edge
  %10 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write32_async.i, align 4
  tail call void %11(ptr noundef %1, i32 noundef 940, i32 noundef 0) #8
  %12 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cfg.i, align 8
  %write_readback.i7 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %write_readback.i7 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %write_readback.i7, align 1, !range !182
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
  %call.i10 = tail call i32 %17(ptr noundef %1, i32 noundef 940) #8
  br label %rtl_write_dword.exit12

rtl_write_dword.exit12:                           ; preds = %if.then.i11, %rtl_write_dword.exit.rtl_write_dword.exit12_crit_edge
  %irq_enabled = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1, i32 1
  %18 = ptrtoint ptr %irq_enabled to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %irq_enabled, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723e_card_disable(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %link_state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 10
  %2 = ptrtoint ptr %link_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %link_state, align 8
  %call = tail call fastcc i32 @_rtl8723e_set_media_status(ptr noundef %hw, i32 noundef 0)
  %driver_is_goingto_unload = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 1
  %3 = ptrtoint ptr %driver_is_goingto_unload to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %driver_is_goingto_unload, align 4, !range !182
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
  %call.i = tail call zeroext i1 @rtl_hal_pwrseqcmdparsing(ptr noundef %16, i8 noundef zeroext -1, i8 noundef zeroext 15, i8 noundef zeroext 4, ptr noundef nonnull @rtl8723A_enter_lps_flow) #8
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %16, i32 0, i32 13, i32 5
  %17 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %18(ptr noundef %16, i32 noundef 31, i8 noundef zeroext 0) #8
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %16, i32 0, i32 32
  %19 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %write_readback.i.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i.i, label %if.end.rtl_write_byte.exit.i_crit_edge, label %if.then.i.i

if.end.rtl_write_byte.exit.i_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %16, i32 0, i32 13, i32 9
  %23 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = tail call zeroext i8 %24(ptr noundef %16, i32 noundef 31) #8
  br label %rtl_write_byte.exit.i

rtl_write_byte.exit.i:                            ; preds = %if.then.i.i, %if.end.rtl_write_byte.exit.i_crit_edge
  %read8_sync.i33.i = getelementptr inbounds %struct.rtl_priv, ptr %16, i32 0, i32 13, i32 9
  %25 = ptrtoint ptr %read8_sync.i33.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read8_sync.i33.i, align 4
  %call.i34.i = tail call zeroext i8 %26(ptr noundef %16, i32 noundef 128) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i34.i)
  %tobool.not.i = icmp sgt i8 %call.i34.i, -1
  br i1 %tobool.not.i, label %rtl_write_byte.exit.i.if.end.i_crit_edge, label %land.lhs.true.i

rtl_write_byte.exit.i.if.end.i_crit_edge:         ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %rtl_write_byte.exit.i
  %fw_ready.i = getelementptr inbounds %struct.rtl_priv, ptr %16, i32 0, i32 10, i32 38
  %27 = ptrtoint ptr %fw_ready.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %fw_ready.i, align 2, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool4.not.i = icmp eq i8 %28, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rtl8723ae_firmware_selfreset(ptr noundef %hw) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %rtl_write_byte.exit.i.if.end.i_crit_edge
  %29 = ptrtoint ptr %read8_sync.i33.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read8_sync.i33.i, align 4
  %call.i36.i = tail call zeroext i8 %30(ptr noundef %16, i32 noundef 3) #8
  %31 = and i8 %call.i36.i, -5
  %32 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %33(ptr noundef %16, i32 noundef 3, i8 noundef zeroext %31) #8
  %34 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i39.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %write_readback.i39.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %write_readback.i39.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i40.i = icmp eq i8 %37, 0
  br i1 %tobool.not.i40.i, label %if.end.i.rtl_write_byte.exit44.i_crit_edge, label %if.then.i43.i

if.end.i.rtl_write_byte.exit44.i_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit44.i

if.then.i43.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %read8_sync.i33.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read8_sync.i33.i, align 4
  %call.i42.i = tail call zeroext i8 %39(ptr noundef %16, i32 noundef 3) #8
  br label %rtl_write_byte.exit44.i

rtl_write_byte.exit44.i:                          ; preds = %if.then.i43.i, %if.end.i.rtl_write_byte.exit44.i_crit_edge
  %40 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %41(ptr noundef %16, i32 noundef 128, i8 noundef zeroext 0) #8
  %42 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i47.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %write_readback.i47.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %write_readback.i47.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i48.i = icmp eq i8 %45, 0
  br i1 %tobool.not.i48.i, label %rtl_write_byte.exit44.i.rtl_write_byte.exit52.i_crit_edge, label %if.then.i51.i

rtl_write_byte.exit44.i.rtl_write_byte.exit52.i_crit_edge: ; preds = %rtl_write_byte.exit44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit52.i

if.then.i51.i:                                    ; preds = %rtl_write_byte.exit44.i
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %read8_sync.i33.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %read8_sync.i33.i, align 4
  %call.i50.i = tail call zeroext i8 %47(ptr noundef %16, i32 noundef 128) #8
  br label %rtl_write_byte.exit52.i

rtl_write_byte.exit52.i:                          ; preds = %if.then.i51.i, %rtl_write_byte.exit44.i.rtl_write_byte.exit52.i_crit_edge
  %call10.i = tail call zeroext i1 @rtl_hal_pwrseqcmdparsing(ptr noundef %16, i8 noundef zeroext -1, i8 noundef zeroext 15, i8 noundef zeroext 4, ptr noundef nonnull @rtl8723A_card_disable_flow) #8
  %48 = ptrtoint ptr %read8_sync.i33.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %read8_sync.i33.i, align 4
  %call.i54.i = tail call zeroext i8 %49(ptr noundef %16, i32 noundef 29) #8
  %50 = and i8 %call.i54.i, -2
  %51 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %52(ptr noundef %16, i32 noundef 29, i8 noundef zeroext %50) #8
  %53 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i57.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %write_readback.i57.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %write_readback.i57.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i58.i = icmp eq i8 %56, 0
  br i1 %tobool.not.i58.i, label %rtl_write_byte.exit52.i.rtl_write_byte.exit62.i_crit_edge, label %if.then.i61.i

rtl_write_byte.exit52.i.rtl_write_byte.exit62.i_crit_edge: ; preds = %rtl_write_byte.exit52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit62.i

if.then.i61.i:                                    ; preds = %rtl_write_byte.exit52.i
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %read8_sync.i33.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %read8_sync.i33.i, align 4
  %call.i60.i = tail call zeroext i8 %58(ptr noundef %16, i32 noundef 29) #8
  br label %rtl_write_byte.exit62.i

rtl_write_byte.exit62.i:                          ; preds = %if.then.i61.i, %rtl_write_byte.exit52.i.rtl_write_byte.exit62.i_crit_edge
  %59 = ptrtoint ptr %read8_sync.i33.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %read8_sync.i33.i, align 4
  %call.i64.i = tail call zeroext i8 %60(ptr noundef %16, i32 noundef 29) #8
  %61 = or i8 %call.i64.i, 1
  %62 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %63(ptr noundef %16, i32 noundef 29, i8 noundef zeroext %61) #8
  %64 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i67.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %write_readback.i67.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %write_readback.i67.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool.not.i68.i = icmp eq i8 %67, 0
  br i1 %tobool.not.i68.i, label %rtl_write_byte.exit62.i.rtl_write_byte.exit72.i_crit_edge, label %if.then.i71.i

rtl_write_byte.exit62.i.rtl_write_byte.exit72.i_crit_edge: ; preds = %rtl_write_byte.exit62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit72.i

if.then.i71.i:                                    ; preds = %rtl_write_byte.exit62.i
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %read8_sync.i33.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %read8_sync.i33.i, align 4
  %call.i70.i = tail call zeroext i8 %69(ptr noundef %16, i32 noundef 29) #8
  br label %rtl_write_byte.exit72.i

rtl_write_byte.exit72.i:                          ; preds = %if.then.i71.i, %rtl_write_byte.exit62.i.rtl_write_byte.exit72.i_crit_edge
  %70 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %71(ptr noundef %16, i32 noundef 28, i8 noundef zeroext 14) #8
  %72 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i75.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %write_readback.i75.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %write_readback.i75.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool.not.i76.i = icmp eq i8 %75, 0
  br i1 %tobool.not.i76.i, label %rtl_write_byte.exit72.i._rtl8723e_poweroff_adapter.exit_crit_edge, label %if.then.i79.i

rtl_write_byte.exit72.i._rtl8723e_poweroff_adapter.exit_crit_edge: ; preds = %rtl_write_byte.exit72.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl8723e_poweroff_adapter.exit

if.then.i79.i:                                    ; preds = %rtl_write_byte.exit72.i
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %read8_sync.i33.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %read8_sync.i33.i, align 4
  %call.i78.i = tail call zeroext i8 %77(ptr noundef %16, i32 noundef 28) #8
  br label %_rtl8723e_poweroff_adapter.exit

_rtl8723e_poweroff_adapter.exit:                  ; preds = %if.then.i79.i, %rtl_write_byte.exit72.i._rtl8723e_poweroff_adapter.exit_crit_edge
  %iqk_initialized = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 31
  %78 = ptrtoint ptr %iqk_initialized to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %iqk_initialized, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723e_interrupt_recognized(ptr nocapture noundef readonly %hw, ptr nocapture noundef writeonly %intvec) local_unnamed_addr #0 align 64 {
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
  %call.i = tail call i32 %3(ptr noundef %1, i32 noundef 928) #8
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
  tail call void %8(ptr noundef %1, i32 noundef 928, i32 noundef %and) #8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %9 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %write_readback.i, align 1, !range !182
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
  %call.i8 = tail call i32 %14(ptr noundef %1, i32 noundef 928) #8
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i, %entry.rtl_write_dword.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723e_set_beacon_related_registers(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
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
  tail call void %5(ptr noundef %1, i32 noundef 936, i32 noundef 0) #8
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %6 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %write_readback.i.i, align 1, !range !182
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
  %call.i.i = tail call i32 %11(ptr noundef %1, i32 noundef 936) #8
  br label %rtl_write_dword.exit.i

rtl_write_dword.exit.i:                           ; preds = %if.then.i.i, %entry.rtl_write_dword.exit.i_crit_edge
  %12 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %13(ptr noundef %1, i32 noundef 940, i32 noundef 0) #8
  %14 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i7.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %write_readback.i7.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %write_readback.i7.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i8.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i8.i, label %rtl_write_dword.exit.i.rtl8723e_disable_interrupt.exit_crit_edge, label %if.then.i11.i

rtl_write_dword.exit.i.rtl8723e_disable_interrupt.exit_crit_edge: ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8723e_disable_interrupt.exit

if.then.i11.i:                                    ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i9.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %18 = ptrtoint ptr %read32_sync.i9.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read32_sync.i9.i, align 4
  %call.i10.i = tail call i32 %19(ptr noundef %1, i32 noundef 940) #8
  br label %rtl8723e_disable_interrupt.exit

rtl8723e_disable_interrupt.exit:                  ; preds = %if.then.i11.i, %rtl_write_dword.exit.i.rtl8723e_disable_interrupt.exit_crit_edge
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
  %26 = load i8, ptr %write_readback.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i, label %rtl8723e_disable_interrupt.exit.rtl_write_word.exit_crit_edge, label %if.then.i

rtl8723e_disable_interrupt.exit.rtl_write_word.exit_crit_edge: ; preds = %rtl8723e_disable_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit

if.then.i:                                        ; preds = %rtl8723e_disable_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %27 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read16_sync.i, align 4
  %call.i = tail call zeroext i16 %28(ptr noundef %1, i32 noundef 1370) #8
  br label %rtl_write_word.exit

rtl_write_word.exit:                              ; preds = %if.then.i, %rtl8723e_disable_interrupt.exit.rtl_write_word.exit_crit_edge
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
  %34 = load i8, ptr %write_readback.i12, align 1, !range !182
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
  %42 = load i8, ptr %write_readback.i20, align 1, !range !182
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
  %50 = load i8, ptr %write_readback.i27, align 1, !range !182
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
  %58 = load i8, ptr %write_readback.i33, align 1, !range !182
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
  %66 = load i8, ptr %write_readback.i41, align 1, !range !182
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
  tail call void %74(ptr noundef %70, i32 noundef 936, i32 noundef %72) #8
  %cfg.i.i49 = getelementptr inbounds %struct.rtl_priv, ptr %70, i32 0, i32 32
  %75 = ptrtoint ptr %cfg.i.i49 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cfg.i.i49, align 8
  %write_readback.i.i50 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %write_readback.i.i50 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %write_readback.i.i50, align 1, !range !182
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
  %call.i.i53 = tail call i32 %80(ptr noundef %70, i32 noundef 936) #8
  br label %rtl_write_dword.exit.i55

rtl_write_dword.exit.i55:                         ; preds = %if.then.i.i54, %rtl_write_byte.exit46.rtl_write_dword.exit.i55_crit_edge
  %arrayidx4.i = getelementptr %struct.rtl_priv, ptr %70, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 6
  %81 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx4.i, align 4
  %83 = ptrtoint ptr %write32_async.i.i48 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %write32_async.i.i48, align 4
  tail call void %84(ptr noundef %70, i32 noundef 940, i32 noundef %82) #8
  %85 = ptrtoint ptr %cfg.i.i49 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %cfg.i.i49, align 8
  %write_readback.i12.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %write_readback.i12.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %write_readback.i12.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool.not.i13.i = icmp eq i8 %88, 0
  br i1 %tobool.not.i13.i, label %rtl_write_dword.exit.i55.rtl8723e_enable_interrupt.exit_crit_edge, label %if.then.i16.i

rtl_write_dword.exit.i55.rtl8723e_enable_interrupt.exit_crit_edge: ; preds = %rtl_write_dword.exit.i55
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8723e_enable_interrupt.exit

if.then.i16.i:                                    ; preds = %rtl_write_dword.exit.i55
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i14.i = getelementptr inbounds %struct.rtl_priv, ptr %70, i32 0, i32 13, i32 11
  %89 = ptrtoint ptr %read32_sync.i14.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %read32_sync.i14.i, align 4
  %call.i15.i = tail call i32 %90(ptr noundef %70, i32 noundef 940) #8
  br label %rtl8723e_enable_interrupt.exit

rtl8723e_enable_interrupt.exit:                   ; preds = %if.then.i16.i, %rtl_write_dword.exit.i55.rtl8723e_enable_interrupt.exit_crit_edge
  %irq_enabled.i56 = getelementptr inbounds %struct.rtl_priv, ptr %70, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1, i32 1
  %91 = ptrtoint ptr %irq_enabled.i56 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %irq_enabled.i56, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723e_set_beacon_interval(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1024, i32 noundef 3, ptr noundef nonnull @.str.17, i32 noundef %conv2) #8
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %write32_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 13, i32 7
  %6 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %7(ptr noundef %5, i32 noundef 936, i32 noundef 0) #8
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 32
  %8 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %write_readback.i.i, align 1, !range !182
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
  %call.i.i = tail call i32 %13(ptr noundef %5, i32 noundef 936) #8
  br label %rtl_write_dword.exit.i

rtl_write_dword.exit.i:                           ; preds = %if.then.i.i, %entry.rtl_write_dword.exit.i_crit_edge
  %14 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %15(ptr noundef %5, i32 noundef 940, i32 noundef 0) #8
  %16 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i7.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %write_readback.i7.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %write_readback.i7.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i8.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i8.i, label %rtl_write_dword.exit.i.rtl8723e_disable_interrupt.exit_crit_edge, label %if.then.i11.i

rtl_write_dword.exit.i.rtl8723e_disable_interrupt.exit_crit_edge: ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8723e_disable_interrupt.exit

if.then.i11.i:                                    ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i9.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 13, i32 11
  %20 = ptrtoint ptr %read32_sync.i9.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read32_sync.i9.i, align 4
  %call.i10.i = tail call i32 %21(ptr noundef %5, i32 noundef 940) #8
  br label %rtl8723e_disable_interrupt.exit

rtl8723e_disable_interrupt.exit:                  ; preds = %if.then.i11.i, %rtl_write_dword.exit.i.rtl8723e_disable_interrupt.exit_crit_edge
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
  %28 = load i8, ptr %write_readback.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i, label %rtl8723e_disable_interrupt.exit.rtl_write_word.exit_crit_edge, label %if.then.i

rtl8723e_disable_interrupt.exit.rtl_write_word.exit_crit_edge: ; preds = %rtl8723e_disable_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit

if.then.i:                                        ; preds = %rtl8723e_disable_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %29 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read16_sync.i, align 4
  %call.i = tail call zeroext i16 %30(ptr noundef %1, i32 noundef 1364) #8
  br label %rtl_write_word.exit

rtl_write_word.exit:                              ; preds = %if.then.i, %rtl8723e_disable_interrupt.exit.rtl_write_word.exit_crit_edge
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
  tail call void %36(ptr noundef %32, i32 noundef 936, i32 noundef %34) #8
  %cfg.i.i10 = getelementptr inbounds %struct.rtl_priv, ptr %32, i32 0, i32 32
  %37 = ptrtoint ptr %cfg.i.i10 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cfg.i.i10, align 8
  %write_readback.i.i11 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %write_readback.i.i11 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %write_readback.i.i11, align 1, !range !182
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
  %call.i.i14 = tail call i32 %42(ptr noundef %32, i32 noundef 936) #8
  br label %rtl_write_dword.exit.i16

rtl_write_dword.exit.i16:                         ; preds = %if.then.i.i15, %rtl_write_word.exit.rtl_write_dword.exit.i16_crit_edge
  %arrayidx4.i = getelementptr %struct.rtl_priv, ptr %32, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 6
  %43 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx4.i, align 4
  %45 = ptrtoint ptr %write32_async.i.i9 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write32_async.i.i9, align 4
  tail call void %46(ptr noundef %32, i32 noundef 940, i32 noundef %44) #8
  %47 = ptrtoint ptr %cfg.i.i10 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cfg.i.i10, align 8
  %write_readback.i12.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %write_readback.i12.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %write_readback.i12.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i13.i = icmp eq i8 %50, 0
  br i1 %tobool.not.i13.i, label %rtl_write_dword.exit.i16.rtl8723e_enable_interrupt.exit_crit_edge, label %if.then.i16.i

rtl_write_dword.exit.i16.rtl8723e_enable_interrupt.exit_crit_edge: ; preds = %rtl_write_dword.exit.i16
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8723e_enable_interrupt.exit

if.then.i16.i:                                    ; preds = %rtl_write_dword.exit.i16
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i14.i = getelementptr inbounds %struct.rtl_priv, ptr %32, i32 0, i32 13, i32 11
  %51 = ptrtoint ptr %read32_sync.i14.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %read32_sync.i14.i, align 4
  %call.i15.i = tail call i32 %52(ptr noundef %32, i32 noundef 940) #8
  br label %rtl8723e_enable_interrupt.exit

rtl8723e_enable_interrupt.exit:                   ; preds = %if.then.i16.i, %rtl_write_dword.exit.i16.rtl8723e_enable_interrupt.exit_crit_edge
  %irq_enabled.i17 = getelementptr inbounds %struct.rtl_priv, ptr %32, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1, i32 1
  %53 = ptrtoint ptr %irq_enabled.i17 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %irq_enabled.i17, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723e_update_interrupt_mask(ptr nocapture noundef readonly %hw, i32 noundef %add_msr, i32 noundef %rm_msr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 128, i32 noundef 4, ptr noundef nonnull @.str.18, i32 noundef %add_msr, i32 noundef %rm_msr) #8
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
  tail call void %9(ptr noundef %7, i32 noundef 936, i32 noundef 0) #8
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 32
  %10 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %write_readback.i.i, align 1, !range !182
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
  %call.i.i = tail call i32 %15(ptr noundef %7, i32 noundef 936) #8
  br label %rtl_write_dword.exit.i

rtl_write_dword.exit.i:                           ; preds = %if.then.i.i, %if.end7.rtl_write_dword.exit.i_crit_edge
  %16 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %17(ptr noundef %7, i32 noundef 940, i32 noundef 0) #8
  %18 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i7.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %write_readback.i7.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %write_readback.i7.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i8.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i8.i, label %rtl_write_dword.exit.i.rtl8723e_disable_interrupt.exit_crit_edge, label %if.then.i11.i

rtl_write_dword.exit.i.rtl8723e_disable_interrupt.exit_crit_edge: ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8723e_disable_interrupt.exit

if.then.i11.i:                                    ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i9.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 13, i32 11
  %22 = ptrtoint ptr %read32_sync.i9.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read32_sync.i9.i, align 4
  %call.i10.i = tail call i32 %23(ptr noundef %7, i32 noundef 940) #8
  br label %rtl8723e_disable_interrupt.exit

rtl8723e_disable_interrupt.exit:                  ; preds = %if.then.i11.i, %rtl_write_dword.exit.i.rtl8723e_disable_interrupt.exit_crit_edge
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
  tail call void %30(ptr noundef %26, i32 noundef 936, i32 noundef %28) #8
  %cfg.i.i18 = getelementptr inbounds %struct.rtl_priv, ptr %26, i32 0, i32 32
  %31 = ptrtoint ptr %cfg.i.i18 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cfg.i.i18, align 8
  %write_readback.i.i19 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %write_readback.i.i19 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %write_readback.i.i19, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i.i20 = icmp eq i8 %34, 0
  br i1 %tobool.not.i.i20, label %rtl8723e_disable_interrupt.exit.rtl_write_dword.exit.i24_crit_edge, label %if.then.i.i23

rtl8723e_disable_interrupt.exit.rtl_write_dword.exit.i24_crit_edge: ; preds = %rtl8723e_disable_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit.i24

if.then.i.i23:                                    ; preds = %rtl8723e_disable_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i.i21 = getelementptr inbounds %struct.rtl_priv, ptr %26, i32 0, i32 13, i32 11
  %35 = ptrtoint ptr %read32_sync.i.i21 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read32_sync.i.i21, align 4
  %call.i.i22 = tail call i32 %36(ptr noundef %26, i32 noundef 936) #8
  br label %rtl_write_dword.exit.i24

rtl_write_dword.exit.i24:                         ; preds = %if.then.i.i23, %rtl8723e_disable_interrupt.exit.rtl_write_dword.exit.i24_crit_edge
  %arrayidx4.i = getelementptr %struct.rtl_priv, ptr %26, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 6
  %37 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx4.i, align 4
  %39 = ptrtoint ptr %write32_async.i.i17 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write32_async.i.i17, align 4
  tail call void %40(ptr noundef %26, i32 noundef 940, i32 noundef %38) #8
  %41 = ptrtoint ptr %cfg.i.i18 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cfg.i.i18, align 8
  %write_readback.i12.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %write_readback.i12.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %write_readback.i12.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i13.i = icmp eq i8 %44, 0
  br i1 %tobool.not.i13.i, label %rtl_write_dword.exit.i24.rtl8723e_enable_interrupt.exit_crit_edge, label %if.then.i16.i

rtl_write_dword.exit.i24.rtl8723e_enable_interrupt.exit_crit_edge: ; preds = %rtl_write_dword.exit.i24
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8723e_enable_interrupt.exit

if.then.i16.i:                                    ; preds = %rtl_write_dword.exit.i24
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i14.i = getelementptr inbounds %struct.rtl_priv, ptr %26, i32 0, i32 13, i32 11
  %45 = ptrtoint ptr %read32_sync.i14.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %read32_sync.i14.i, align 4
  %call.i15.i = tail call i32 %46(ptr noundef %26, i32 noundef 940) #8
  br label %rtl8723e_enable_interrupt.exit

rtl8723e_enable_interrupt.exit:                   ; preds = %if.then.i16.i, %rtl_write_dword.exit.i24.rtl8723e_enable_interrupt.exit_crit_edge
  %irq_enabled.i25 = getelementptr inbounds %struct.rtl_priv, ptr %26, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1, i32 1
  %47 = ptrtoint ptr %irq_enabled.i25 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %irq_enabled.i25, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723e_read_eeprom_info(ptr noundef %hw) local_unnamed_addr #0 align 64 {
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
  %arrayidx = getelementptr %struct.rtl_hal_cfg, ptr %3, i32 0, i32 8, i32 11
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %6 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read32_sync.i, align 4
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef %5) #8
  %and = and i32 %call.i, -769
  %8 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cfg, align 8
  %arrayidx6 = getelementptr %struct.rtl_hal_cfg, ptr %9, i32 0, i32 8, i32 11
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx6, align 4
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %12 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write32_async.i, align 4
  tail call void %13(ptr noundef %1, i32 noundef %11, i32 noundef %and) #8
  %14 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cfg, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %write_readback.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %entry.rtl_write_dword.exit_crit_edge, label %if.then.i

entry.rtl_write_dword.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read32_sync.i, align 4
  %call.i58 = tail call i32 %19(ptr noundef %1, i32 noundef %11) #8
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i, %entry.rtl_write_dword.exit_crit_edge
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv, align 8
  %read32_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %21, i32 0, i32 13, i32 11
  %22 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i.i = tail call i32 %23(ptr noundef %21, i32 noundef 240) #8
  %and.i = and i32 %call.i.i, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i59 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i59, label %if.else.i, label %if.then.i60

if.then.i60:                                      ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #10
  %and1.i = lshr i32 %call.i.i, 12
  %24 = and i32 %and1.i, 128
  %and3.i = lshr i32 %call.i.i, 16
  %and3.lobit.i = and i32 %and3.i, 1
  %or6.i = or i32 %24, %and3.lobit.i
  br label %if.end28.i

if.else.i:                                        ; preds = %rtl_write_dword.exit
  %and7.i = and i32 %call.i.i, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  %25 = lshr exact i32 %and7.i, 12
  %and11.i = lshr i32 %call.i.i, 16
  %and11.lobit.i = and i32 %and11.i, 1
  %and18.i = and i32 %call.i.i, 61440
  %or19.i = select i1 %tobool8.not.i, i32 0, i32 %and18.i
  %or10.i = or i32 %25, %and11.lobit.i
  %or14.i = or i32 %or10.i, %or19.i
  %version.0.i = or i32 %or14.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.lobit.i)
  %cmp.not.i = icmp eq i32 %and11.lobit.i, 0
  br i1 %cmp.not.i, label %if.else.i.if.end28.i_crit_edge, label %if.then23.i

if.else.i.if.end28.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i

if.then23.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i80.i = tail call i32 %27(ptr noundef %21, i32 noundef 244) #8
  %and25.i = lshr i32 %call.i80.i, 20
  %shr.i = and i32 %and25.i, 3840
  %or26.i = or i32 %shr.i, %version.0.i
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then23.i, %if.else.i.if.end28.i_crit_edge, %if.then.i60
  %version.1.i = phi i32 [ %or6.i, %if.then.i60 ], [ %or26.i, %if.then23.i ], [ %version.0.i, %if.else.i.if.end28.i_crit_edge ]
  %and29.i = and i32 %version.1.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and29.i)
  %cmp30.i = icmp eq i32 %and29.i, 1
  br i1 %cmp30.i, label %if.then33.i, label %if.end28.i.if.end38.i_crit_edge

if.end28.i.if.end38.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.i

if.then33.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i82.i = tail call i32 %29(ptr noundef %21, i32 noundef 104) #8
  %and35.i = lshr i32 %call.i82.i, 1
  %and35.lobit.i = and i32 %and35.i, 1
  %polarity_ctl.i = getelementptr inbounds %struct.rtl_priv, ptr %21, i32 0, i32 14, i32 62
  %30 = ptrtoint ptr %polarity_ctl.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and35.lobit.i, ptr %polarity_ctl.i, align 4
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then33.i, %if.end28.i.if.end38.i_crit_edge
  %31 = zext i32 %version.1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %version.1.i, label %do.end.i [
    i32 129, label %sw.bb.i
    i32 137, label %sw.bb39.i
    i32 4233, label %sw.bb40.i
  ]

sw.bb.i:                                          ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %21, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.45) #8
  br label %sw.epilog.i

sw.bb39.i:                                        ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %21, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.46) #8
  br label %sw.epilog.i

sw.bb40.i:                                        ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %21, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.47) #8
  br label %sw.epilog.i

do.end.i:                                         ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  %call41.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #11
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.end.i, %sw.bb40.i, %sw.bb39.i, %sw.bb.i
  br i1 %cmp30.i, label %if.then46.i, label %sw.epilog.i._rtl8723e_read_chip_version.exit_crit_edge

sw.epilog.i._rtl8723e_read_chip_version.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl8723e_read_chip_version.exit

if.then46.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %rf_type.i = getelementptr inbounds %struct.rtl_priv, ptr %21, i32 0, i32 14, i32 4
  %32 = ptrtoint ptr %rf_type.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %rf_type.i, align 1
  br label %_rtl8723e_read_chip_version.exit

_rtl8723e_read_chip_version.exit:                 ; preds = %if.then46.i, %sw.epilog.i._rtl8723e_read_chip_version.exit_crit_edge
  %rf_type48.i = getelementptr inbounds %struct.rtl_priv, ptr %21, i32 0, i32 14, i32 4
  %33 = ptrtoint ptr %rf_type48.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %rf_type48.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %34)
  %cmp49.i = icmp eq i8 %34, 2
  %cond51.i = select i1 %cmp49.i, ptr @.str.51, ptr @.str.52
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %21, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.50, ptr noundef nonnull %cond51.i) #8
  %version = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 13
  %35 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %version.1.i, ptr %version, align 4
  %rf_type.i61 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 4
  %36 = ptrtoint ptr %rf_type.i61 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %rf_type.i61, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp = icmp eq i8 %37, 0
  br i1 %cmp, label %_rtl8723e_read_chip_version.exit.if.end_crit_edge, label %if.else

_rtl8723e_read_chip_version.exit.if.end_crit_edge: ; preds = %_rtl8723e_read_chip_version.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.else:                                          ; preds = %_rtl8723e_read_chip_version.exit
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx13 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 15, i32 1
  %38 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %arrayidx13, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %_rtl8723e_read_chip_version.exit.if.end_crit_edge
  %39 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 15
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %39, align 2
  %41 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %version, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.19, i32 noundef %42) #8
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %43 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %read8_sync.i, align 4
  %call.i62 = tail call zeroext i8 %44(ptr noundef %1, i32 noundef 10) #8
  %conv19 = zext i8 %call.i62 to i32
  %and20 = and i32 %conv19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool.not = icmp eq i32 %and20, 0
  %.str.21..str.20 = select i1 %tobool.not, ptr @.str.21, ptr @.str.20
  %45 = lshr exact i32 %and20, 3
  %46 = trunc i32 %45 to i16
  %47 = xor i16 %46, 2
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 3, ptr noundef nonnull %.str.21..str.20) #8
  %48 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 9
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %47, ptr %48, align 2
  %and26 = and i32 %conv19, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.else29, label %if.then28

if.then28:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.22) #8
  %autoload_failflag = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 7
  %50 = ptrtoint ptr %autoload_failflag to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %autoload_failflag, align 1
  tail call fastcc void @_rtl8723e_read_adapter_info(ptr noundef %hw)
  br label %if.end32

if.else29:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %autoload_failflag30 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 7
  %51 = ptrtoint ptr %autoload_failflag30 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %autoload_failflag30, align 1
  tail call fastcc void @_rtl8723e_read_adapter_info(ptr noundef %hw)
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #11
  br label %if.end32

if.end32:                                         ; preds = %if.else29, %if.then28
  %52 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %priv, align 8
  %ledctl.i = getelementptr inbounds %struct.rtl_priv, ptr %53, i32 0, i32 18
  %oem_id.i = getelementptr inbounds %struct.rtl_priv, ptr %53, i32 0, i32 10, i32 12
  %54 = ptrtoint ptr %oem_id.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %oem_id.i, align 1
  %56 = ptrtoint ptr %ledctl.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %ledctl.i, align 8
  %conv7.i = zext i8 %55 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %53, i64 noundef 4, i32 noundef 3, ptr noundef nonnull @.str.66, i32 noundef %conv7.i) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_rtl8723e_read_adapter_info(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  %params = alloca [10 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %params) #8
  %2 = call ptr @memcpy(ptr %params, ptr @__const._rtl8723e_read_adapter_info.params, i32 40)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 256) #12
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %entry.cleanup_crit_edge, label %if.end6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %entry
  %call7 = call i32 @rtl_get_hwinfo(ptr noundef %hw, ptr noundef %1, i32 noundef 256, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %params) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.exit_crit_edge

if.end6.exit_crit_edge:                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end10:                                         ; preds = %if.end6
  %autoload_failflag = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 7
  %4 = ptrtoint ptr %autoload_failflag to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %autoload_failflag, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool11.not = icmp eq i8 %5, 0
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 8
  %eeprom_chnlarea_txpwr_cck.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 29
  %eeprom_chnlarea_txpwr_ht40_1s.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 30
  br i1 %tobool11.not, label %if.then43.2.i, label %if.end48.1.thread.i

if.end48.1.thread.i:                              ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %eeprom_chnlarea_txpwr_cck.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 34, ptr %eeprom_chnlarea_txpwr_cck.i, align 1
  %9 = ptrtoint ptr %eeprom_chnlarea_txpwr_ht40_1s.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 34, ptr %eeprom_chnlarea_txpwr_ht40_1s.i, align 1
  %arrayidx28.1.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 29, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx28.1.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 34, ptr %arrayidx28.1.i, align 1
  %arrayidx33.1.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 30, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx33.1.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 34, ptr %arrayidx33.1.i, align 1
  %arrayidx28.2.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 29, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx28.2.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 34, ptr %arrayidx28.2.i, align 1
  %arrayidx33.2.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 30, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx33.2.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 34, ptr %arrayidx33.2.i, align 1
  %eprom_chnl_txpwr_ht40_2sdf885.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 31
  %14 = ptrtoint ptr %eprom_chnl_txpwr_ht40_2sdf885.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %eprom_chnl_txpwr_ht40_2sdf885.i, align 1
  %arrayidx60890.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 31, i32 1, i32 0
  %15 = ptrtoint ptr %arrayidx60890.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx60890.i, align 1
  %arrayidx53.1897.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 31, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx53.1897.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx53.1897.i, align 1
  %arrayidx60.1898.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 31, i32 1, i32 1
  %17 = ptrtoint ptr %arrayidx60.1898.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %arrayidx60.1898.i, align 1
  br label %if.end48.2.i

if.then43.2.i:                                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr i8, ptr %call7.i.i, i32 16
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i, align 8
  %20 = ptrtoint ptr %eeprom_chnlarea_txpwr_cck.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %eeprom_chnlarea_txpwr_cck.i, align 1
  %arrayidx19.i = getelementptr i8, ptr %call7.i.i, i32 22
  %21 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx19.i, align 2
  %23 = ptrtoint ptr %eeprom_chnlarea_txpwr_ht40_1s.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %eeprom_chnlarea_txpwr_ht40_1s.i, align 1
  %arrayidx.1.i = getelementptr i8, ptr %call7.i.i, i32 17
  %24 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.1.i, align 1
  %arrayidx13.1.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 29, i32 0, i32 1
  %26 = ptrtoint ptr %arrayidx13.1.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %arrayidx13.1.i, align 1
  %arrayidx19.1.i = getelementptr i8, ptr %call7.i.i, i32 23
  %27 = ptrtoint ptr %arrayidx19.1.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx19.1.i, align 1
  %arrayidx23.1.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 30, i32 0, i32 1
  %29 = ptrtoint ptr %arrayidx23.1.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %arrayidx23.1.i, align 1
  %arrayidx.2.i = getelementptr i8, ptr %call7.i.i, i32 18
  %30 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.2.i, align 2
  %arrayidx13.2.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 29, i32 0, i32 2
  %32 = ptrtoint ptr %arrayidx13.2.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %arrayidx13.2.i, align 1
  %arrayidx19.2.i = getelementptr i8, ptr %call7.i.i, i32 24
  %33 = ptrtoint ptr %arrayidx19.2.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx19.2.i, align 8
  %arrayidx23.2.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 30, i32 0, i32 2
  %35 = ptrtoint ptr %arrayidx23.2.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %arrayidx23.2.i, align 1
  %eprom_chnl_txpwr_ht40_2sdf.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 31
  %arrayidx46.i = getelementptr i8, ptr %call7.i.i, i32 102
  %36 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx46.i, align 2
  %and.i = and i8 %37, 15
  %38 = ptrtoint ptr %eprom_chnl_txpwr_ht40_2sdf.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %and.i, ptr %eprom_chnl_txpwr_ht40_2sdf.i, align 1
  %39 = lshr i8 %37, 4
  %arrayidx60.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 31, i32 1, i32 0
  %40 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %arrayidx60.i, align 1
  %arrayidx46.1.i = getelementptr i8, ptr %call7.i.i, i32 103
  %41 = ptrtoint ptr %arrayidx46.1.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx46.1.i, align 1
  %and.1.i = and i8 %42, 15
  %arrayidx53.1.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 31, i32 0, i32 1
  %43 = ptrtoint ptr %arrayidx53.1.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %and.1.i, ptr %arrayidx53.1.i, align 1
  %44 = lshr i8 %42, 4
  %arrayidx60.1.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 31, i32 1, i32 1
  %45 = ptrtoint ptr %arrayidx60.1.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %arrayidx60.1.i, align 1
  %arrayidx46.2.i = getelementptr i8, ptr %call7.i.i, i32 104
  %46 = ptrtoint ptr %arrayidx46.2.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx46.2.i, align 8
  br label %if.end48.2.i

if.end48.2.i:                                     ; preds = %if.then43.2.i, %if.end48.1.thread.i
  %arrayidx60.1901.i = phi ptr [ %arrayidx60.1.i, %if.then43.2.i ], [ %arrayidx60.1898.i, %if.end48.1.thread.i ]
  %eprom_chnl_txpwr_ht40_2sdf886891900.i = phi ptr [ %eprom_chnl_txpwr_ht40_2sdf.i, %if.then43.2.i ], [ %eprom_chnl_txpwr_ht40_2sdf885.i, %if.end48.1.thread.i ]
  %arrayidx60892899.i = phi ptr [ %arrayidx60.i, %if.then43.2.i ], [ %arrayidx60890.i, %if.end48.1.thread.i ]
  %tempval.0.2.i = phi i8 [ %47, %if.then43.2.i ], [ 0, %if.end48.1.thread.i ]
  %and.2.i = and i8 %tempval.0.2.i, 15
  %arrayidx53.2.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 31, i32 0, i32 2
  %48 = ptrtoint ptr %arrayidx53.2.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %and.2.i, ptr %arrayidx53.2.i, align 1
  %49 = lshr i8 %tempval.0.2.i, 4
  %arrayidx60.2.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 31, i32 1, i32 2
  %50 = ptrtoint ptr %arrayidx60.2.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %arrayidx60.2.i, align 1
  %51 = ptrtoint ptr %eeprom_chnlarea_txpwr_cck.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %eeprom_chnlarea_txpwr_cck.i, align 1
  %conv81.i = zext i8 %52 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.53, i32 noundef 0, i32 noundef 0, i32 noundef %conv81.i) #8
  %arrayidx80.1.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 29, i32 0, i32 1
  %53 = ptrtoint ptr %arrayidx80.1.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx80.1.i, align 1
  %conv81.1.i = zext i8 %54 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.53, i32 noundef 0, i32 noundef 1, i32 noundef %conv81.1.i) #8
  %arrayidx80.2.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 29, i32 0, i32 2
  %55 = ptrtoint ptr %arrayidx80.2.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx80.2.i, align 1
  %conv81.2.i = zext i8 %56 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.53, i32 noundef 0, i32 noundef 2, i32 noundef %conv81.2.i) #8
  %arrayidx80.1841.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 29, i32 1, i32 0
  %57 = ptrtoint ptr %arrayidx80.1841.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx80.1841.i, align 1
  %conv81.1842.i = zext i8 %58 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.53, i32 noundef 1, i32 noundef 0, i32 noundef %conv81.1842.i) #8
  %arrayidx80.1.1.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 29, i32 1, i32 1
  %59 = ptrtoint ptr %arrayidx80.1.1.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx80.1.1.i, align 1
  %conv81.1.1.i = zext i8 %60 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.53, i32 noundef 1, i32 noundef 1, i32 noundef %conv81.1.1.i) #8
  %arrayidx80.2.1.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 29, i32 1, i32 2
  %61 = ptrtoint ptr %arrayidx80.2.1.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx80.2.1.i, align 1
  %conv81.2.1.i = zext i8 %62 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.53, i32 noundef 1, i32 noundef 2, i32 noundef %conv81.2.1.i) #8
  %63 = ptrtoint ptr %eeprom_chnlarea_txpwr_ht40_1s.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %eeprom_chnlarea_txpwr_ht40_1s.i, align 1
  %conv105.i = zext i8 %64 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.54, i32 noundef 0, i32 noundef 0, i32 noundef %conv105.i) #8
  %arrayidx104.1.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 30, i32 0, i32 1
  %65 = ptrtoint ptr %arrayidx104.1.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx104.1.i, align 1
  %conv105.1.i = zext i8 %66 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.54, i32 noundef 0, i32 noundef 1, i32 noundef %conv105.1.i) #8
  %arrayidx104.2.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 30, i32 0, i32 2
  %67 = ptrtoint ptr %arrayidx104.2.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx104.2.i, align 1
  %conv105.2.i = zext i8 %68 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.54, i32 noundef 0, i32 noundef 2, i32 noundef %conv105.2.i) #8
  %arrayidx104.1843.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 30, i32 1, i32 0
  %69 = ptrtoint ptr %arrayidx104.1843.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx104.1843.i, align 1
  %conv105.1844.i = zext i8 %70 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.54, i32 noundef 1, i32 noundef 0, i32 noundef %conv105.1844.i) #8
  %arrayidx104.1.1.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 30, i32 1, i32 1
  %71 = ptrtoint ptr %arrayidx104.1.1.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx104.1.1.i, align 1
  %conv105.1.1.i = zext i8 %72 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.54, i32 noundef 1, i32 noundef 1, i32 noundef %conv105.1.1.i) #8
  %arrayidx104.2.1.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 30, i32 1, i32 2
  %73 = ptrtoint ptr %arrayidx104.2.1.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx104.2.1.i, align 1
  %conv105.2.1.i = zext i8 %74 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.54, i32 noundef 1, i32 noundef 2, i32 noundef %conv105.2.1.i) #8
  %75 = ptrtoint ptr %eprom_chnl_txpwr_ht40_2sdf886891900.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %eprom_chnl_txpwr_ht40_2sdf886891900.i, align 1
  %conv129.i = zext i8 %76 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.55, i32 noundef 0, i32 noundef 0, i32 noundef %conv129.i) #8
  %arrayidx128.1.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 31, i32 0, i32 1
  %77 = ptrtoint ptr %arrayidx128.1.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx128.1.i, align 1
  %conv129.1.i = zext i8 %78 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.55, i32 noundef 0, i32 noundef 1, i32 noundef %conv129.1.i) #8
  %79 = ptrtoint ptr %arrayidx53.2.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx53.2.i, align 1
  %conv129.2.i = zext i8 %80 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.55, i32 noundef 0, i32 noundef 2, i32 noundef %conv129.2.i) #8
  %81 = ptrtoint ptr %arrayidx60892899.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx60892899.i, align 1
  %conv129.1846.i = zext i8 %82 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.55, i32 noundef 1, i32 noundef 0, i32 noundef %conv129.1846.i) #8
  %83 = ptrtoint ptr %arrayidx60.1901.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx60.1901.i, align 1
  %conv129.1.1.i = zext i8 %84 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.55, i32 noundef 1, i32 noundef 1, i32 noundef %conv129.1.1.i) #8
  %85 = ptrtoint ptr %arrayidx60.2.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx60.2.i, align 1
  %conv129.2.1.i = zext i8 %86 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.55, i32 noundef 1, i32 noundef 2, i32 noundef %conv129.2.1.i) #8
  br label %for.body145.i

for.body145.i:                                    ; preds = %for.body145.i.for.body145.i_crit_edge, %if.end48.2.i
  %indvars.iv.i = phi i32 [ 0, %if.end48.2.i ], [ %indvars.iv.next.i, %for.body145.i.for.body145.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %indvars.iv.i)
  %87 = icmp ult i32 %indvars.iv.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %indvars.iv.i)
  %88 = icmp ult i32 %indvars.iv.i, 9
  %..i.i = select i1 %88, i32 1, i32 2
  %group.0.i.i = select i1 %87, i32 0, i32 %..i.i
  %arrayidx151.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 29, i32 0, i32 %group.0.i.i
  %89 = ptrtoint ptr %arrayidx151.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx151.i, align 1
  %arrayidx155.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 38, i32 0, i32 %indvars.iv.i
  %91 = ptrtoint ptr %arrayidx155.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %90, ptr %arrayidx155.i, align 1
  %arrayidx160.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 30, i32 0, i32 %group.0.i.i
  %92 = ptrtoint ptr %arrayidx160.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx160.i, align 1
  %arrayidx164.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 39, i32 0, i32 %indvars.iv.i
  %94 = ptrtoint ptr %arrayidx164.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %arrayidx164.i, align 1
  %conv170.i = zext i8 %93 to i32
  %arrayidx175.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 31, i32 0, i32 %group.0.i.i
  %95 = ptrtoint ptr %arrayidx175.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx175.i, align 1
  %conv176.i = zext i8 %96 to i32
  %sub.i = sub nsw i32 %conv170.i, %conv176.i
  %97 = call i32 @llvm.smax.i32(i32 %sub.i, i32 0) #8
  %98 = trunc i32 %97 to i8
  %99 = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 40, i32 0, i32 %indvars.iv.i
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %98, ptr %99, align 1
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 14
  br i1 %exitcond.not.i, label %for.body145.i.for.body212.i_crit_edge, label %for.body145.i.for.body145.i_crit_edge

for.body145.i.for.body145.i_crit_edge:            ; preds = %for.body145.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body145.i

for.body145.i.for.body212.i_crit_edge:            ; preds = %for.body145.i
  br label %for.body212.i

for.body212.i:                                    ; preds = %for.body212.i.for.body212.i_crit_edge, %for.body145.i.for.body212.i_crit_edge
  %indvars.iv848.i = phi i32 [ %indvars.iv.next849.i, %for.body212.i.for.body212.i_crit_edge ], [ 0, %for.body145.i.for.body212.i_crit_edge ]
  %arrayidx219.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 38, i32 0, i32 %indvars.iv848.i
  %101 = ptrtoint ptr %arrayidx219.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx219.i, align 1
  %conv220.i = zext i8 %102 to i32
  %arrayidx225.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 39, i32 0, i32 %indvars.iv848.i
  %103 = ptrtoint ptr %arrayidx225.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx225.i, align 1
  %conv226.i = zext i8 %104 to i32
  %arrayidx231.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 40, i32 0, i32 %indvars.iv848.i
  %105 = ptrtoint ptr %arrayidx231.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx231.i, align 1
  %conv232.i = zext i8 %106 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.56, i32 noundef 0, i32 noundef %indvars.iv848.i, i32 noundef %conv220.i, i32 noundef %conv226.i, i32 noundef %conv232.i) #8
  %indvars.iv.next849.i = add nuw nsw i32 %indvars.iv848.i, 1
  %exitcond850.not.i = icmp eq i32 %indvars.iv.next849.i, 14
  br i1 %exitcond850.not.i, label %for.body212.i.for.body145.1.i_crit_edge, label %for.body212.i.for.body212.i_crit_edge

for.body212.i.for.body212.i_crit_edge:            ; preds = %for.body212.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body212.i

for.body212.i.for.body145.1.i_crit_edge:          ; preds = %for.body212.i
  br label %for.body145.1.i

for.body145.1.i:                                  ; preds = %for.body145.1.i.for.body145.1.i_crit_edge, %for.body212.i.for.body145.1.i_crit_edge
  %indvars.iv.1.i = phi i32 [ %indvars.iv.next.1.i, %for.body145.1.i.for.body145.1.i_crit_edge ], [ 0, %for.body212.i.for.body145.1.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %indvars.iv.1.i)
  %107 = icmp ult i32 %indvars.iv.1.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %indvars.iv.1.i)
  %108 = icmp ult i32 %indvars.iv.1.i, 9
  %..i.1.i = select i1 %108, i32 1, i32 2
  %group.0.i.1.i = select i1 %107, i32 0, i32 %..i.1.i
  %arrayidx151.1.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 29, i32 1, i32 %group.0.i.1.i
  %109 = ptrtoint ptr %arrayidx151.1.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx151.1.i, align 1
  %arrayidx155.1.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 38, i32 1, i32 %indvars.iv.1.i
  %111 = ptrtoint ptr %arrayidx155.1.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %110, ptr %arrayidx155.1.i, align 1
  %arrayidx160.1.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 30, i32 1, i32 %group.0.i.1.i
  %112 = ptrtoint ptr %arrayidx160.1.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx160.1.i, align 1
  %arrayidx164.1.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 39, i32 1, i32 %indvars.iv.1.i
  %114 = ptrtoint ptr %arrayidx164.1.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %113, ptr %arrayidx164.1.i, align 1
  %conv170.1.i = zext i8 %113 to i32
  %arrayidx175.1.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 31, i32 1, i32 %group.0.i.1.i
  %115 = ptrtoint ptr %arrayidx175.1.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx175.1.i, align 1
  %conv176.1.i = zext i8 %116 to i32
  %sub.1.i = sub nsw i32 %conv170.1.i, %conv176.1.i
  %117 = call i32 @llvm.smax.i32(i32 %sub.1.i, i32 0) #8
  %118 = trunc i32 %117 to i8
  %119 = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 40, i32 1, i32 %indvars.iv.1.i
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %118, ptr %119, align 1
  %indvars.iv.next.1.i = add nuw nsw i32 %indvars.iv.1.i, 1
  %exitcond.1.not.i = icmp eq i32 %indvars.iv.next.1.i, 14
  br i1 %exitcond.1.not.i, label %for.body145.1.i.for.body212.1.i_crit_edge, label %for.body145.1.i.for.body145.1.i_crit_edge

for.body145.1.i.for.body145.1.i_crit_edge:        ; preds = %for.body145.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body145.1.i

for.body145.1.i.for.body212.1.i_crit_edge:        ; preds = %for.body145.1.i
  br label %for.body212.1.i

for.body212.1.i:                                  ; preds = %for.body212.1.i.for.body212.1.i_crit_edge, %for.body145.1.i.for.body212.1.i_crit_edge
  %indvars.iv848.1.i = phi i32 [ %indvars.iv.next849.1.i, %for.body212.1.i.for.body212.1.i_crit_edge ], [ 0, %for.body145.1.i.for.body212.1.i_crit_edge ]
  %arrayidx219.1.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 38, i32 1, i32 %indvars.iv848.1.i
  %121 = ptrtoint ptr %arrayidx219.1.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx219.1.i, align 1
  %conv220.1.i = zext i8 %122 to i32
  %arrayidx225.1.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 39, i32 1, i32 %indvars.iv848.1.i
  %123 = ptrtoint ptr %arrayidx225.1.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx225.1.i, align 1
  %conv226.1.i = zext i8 %124 to i32
  %arrayidx231.1.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 40, i32 1, i32 %indvars.iv848.1.i
  %125 = ptrtoint ptr %arrayidx231.1.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx231.1.i, align 1
  %conv232.1.i = zext i8 %126 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.56, i32 noundef 1, i32 noundef %indvars.iv848.1.i, i32 noundef %conv220.1.i, i32 noundef %conv226.1.i, i32 noundef %conv232.1.i) #8
  %indvars.iv.next849.1.i = add nuw nsw i32 %indvars.iv848.1.i, 1
  %exitcond850.1.not.i = icmp eq i32 %indvars.iv.next849.1.i, 14
  br i1 %exitcond850.1.not.i, label %for.inc236.1.i, label %for.body212.1.i.for.body212.1.i_crit_edge

for.body212.1.i.for.body212.1.i_crit_edge:        ; preds = %for.body212.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body212.1.i

for.inc236.1.i:                                   ; preds = %for.body212.1.i
  br i1 %tobool11.not, label %if.then245.2.i, label %if.else256.2.i

if.then245.2.i:                                   ; preds = %for.inc236.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx248.i = getelementptr i8, ptr %call7.i.i, i32 34
  %127 = ptrtoint ptr %arrayidx248.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx248.i, align 2
  %arrayidx250.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 28, i32 0
  %129 = ptrtoint ptr %arrayidx250.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %128, ptr %arrayidx250.i, align 1
  %arrayidx253.i = getelementptr i8, ptr %call7.i.i, i32 37
  %130 = ptrtoint ptr %arrayidx253.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx253.i, align 1
  %132 = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 27, i32 0
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %131, ptr %132, align 1
  %arrayidx248.1.i = getelementptr i8, ptr %call7.i.i, i32 35
  %134 = ptrtoint ptr %arrayidx248.1.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx248.1.i, align 1
  %arrayidx250.1.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 28, i32 1
  %136 = ptrtoint ptr %arrayidx250.1.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %135, ptr %arrayidx250.1.i, align 1
  %arrayidx253.1.i = getelementptr i8, ptr %call7.i.i, i32 38
  %137 = ptrtoint ptr %arrayidx253.1.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx253.1.i, align 2
  %139 = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 27, i32 1
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %138, ptr %139, align 1
  %arrayidx248.2.i = getelementptr i8, ptr %call7.i.i, i32 36
  %141 = ptrtoint ptr %arrayidx248.2.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx248.2.i, align 4
  %arrayidx250.2.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 28, i32 2
  %143 = ptrtoint ptr %arrayidx250.2.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %142, ptr %arrayidx250.2.i, align 1
  %arrayidx253.2.i = getelementptr i8, ptr %call7.i.i, i32 39
  %144 = ptrtoint ptr %arrayidx253.2.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx253.2.i, align 1
  br label %for.inc264.2.i

if.else256.2.i:                                   ; preds = %for.inc236.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx259.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 28, i32 0
  %146 = ptrtoint ptr %arrayidx259.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 0, ptr %arrayidx259.i, align 1
  %147 = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 27, i32 0
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 0, ptr %147, align 1
  %arrayidx259.1.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 28, i32 1
  %149 = ptrtoint ptr %arrayidx259.1.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 0, ptr %arrayidx259.1.i, align 1
  %150 = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 27, i32 1
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 0, ptr %150, align 1
  %arrayidx259.2.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 28, i32 2
  %152 = ptrtoint ptr %arrayidx259.2.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 0, ptr %arrayidx259.2.i, align 1
  br label %for.inc264.2.i

for.inc264.2.i:                                   ; preds = %if.else256.2.i, %if.then245.2.i
  %.sink883.i = phi i8 [ 0, %if.else256.2.i ], [ %145, %if.then245.2.i ]
  %153 = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 27, i32 2
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %.sink883.i, ptr %153, align 1
  %pwrgroup_ht20.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 36
  %pwrgroup_ht40.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 37
  br label %if.end333.i

if.end333.i:                                      ; preds = %if.end333.i.if.end333.i_crit_edge, %for.inc264.2.i
  %indvars.iv858.i = phi i32 [ 0, %for.inc264.2.i ], [ %indvars.iv.next859.i, %if.end333.i.if.end333.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %indvars.iv858.i)
  %155 = icmp ult i32 %indvars.iv858.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %indvars.iv858.i)
  %156 = icmp ult i32 %indvars.iv858.i, 9
  %157 = select i1 %156, i32 1, i32 2
  %idxprom284.i = select i1 %155, i32 0, i32 %157
  %arrayidx285.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 27, i32 %idxprom284.i
  %158 = ptrtoint ptr %arrayidx285.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %arrayidx285.i, align 1
  %160 = and i8 %159, 15
  %arrayidx292.i = getelementptr [59 x i8], ptr %pwrgroup_ht20.i, i32 0, i32 %indvars.iv858.i
  %161 = ptrtoint ptr %arrayidx292.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %160, ptr %arrayidx292.i, align 1
  %arrayidx295.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 28, i32 %idxprom284.i
  %162 = ptrtoint ptr %arrayidx295.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %arrayidx295.i, align 1
  %164 = and i8 %163, 15
  %arrayidx302.i = getelementptr [59 x i8], ptr %pwrgroup_ht40.i, i32 0, i32 %indvars.iv858.i
  %165 = ptrtoint ptr %arrayidx302.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %164, ptr %arrayidx302.i, align 1
  %conv341.i = zext i8 %160 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.57, i32 noundef 0, i32 noundef %indvars.iv858.i, i32 noundef %conv341.i) #8
  %arrayidx348.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 37, i32 0, i32 %indvars.iv858.i
  %166 = ptrtoint ptr %arrayidx348.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %arrayidx348.i, align 1
  %conv349.i = zext i8 %167 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.58, i32 noundef 0, i32 noundef %indvars.iv858.i, i32 noundef %conv349.i) #8
  %indvars.iv.next859.i = add nuw nsw i32 %indvars.iv858.i, 1
  %exitcond860.not.i = icmp eq i32 %indvars.iv.next859.i, 14
  br i1 %exitcond860.not.i, label %if.end333.i.if.end333.1.i_crit_edge, label %if.end333.i.if.end333.i_crit_edge

if.end333.i.if.end333.i_crit_edge:                ; preds = %if.end333.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end333.i

if.end333.i.if.end333.1.i_crit_edge:              ; preds = %if.end333.i
  br label %if.end333.1.i

if.end333.1.i:                                    ; preds = %if.end333.1.i.if.end333.1.i_crit_edge, %if.end333.i.if.end333.1.i_crit_edge
  %indvars.iv858.1.i = phi i32 [ %indvars.iv.next859.1.i, %if.end333.1.i.if.end333.1.i_crit_edge ], [ 0, %if.end333.i.if.end333.1.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %indvars.iv858.1.i)
  %168 = icmp ult i32 %indvars.iv858.1.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %indvars.iv858.1.i)
  %169 = icmp ult i32 %indvars.iv858.1.i, 9
  %170 = select i1 %169, i32 1, i32 2
  %idxprom309.1.i = select i1 %168, i32 0, i32 %170
  %arrayidx310.1.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 27, i32 %idxprom309.1.i
  %171 = ptrtoint ptr %arrayidx310.1.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %arrayidx310.1.i, align 1
  %173 = lshr i8 %172, 4
  %arrayidx319.1.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 36, i32 1, i32 %indvars.iv858.1.i
  %174 = ptrtoint ptr %arrayidx319.1.i to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %173, ptr %arrayidx319.1.i, align 1
  %arrayidx322.1.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 28, i32 %idxprom309.1.i
  %175 = ptrtoint ptr %arrayidx322.1.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %arrayidx322.1.i, align 1
  %177 = lshr i8 %176, 4
  %arrayidx331.1.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 37, i32 1, i32 %indvars.iv858.1.i
  %178 = ptrtoint ptr %arrayidx331.1.i to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %177, ptr %arrayidx331.1.i, align 1
  %conv341.1.i = zext i8 %173 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.57, i32 noundef 1, i32 noundef %indvars.iv858.1.i, i32 noundef %conv341.1.i) #8
  %179 = ptrtoint ptr %arrayidx331.1.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %arrayidx331.1.i, align 1
  %conv349.1.i = zext i8 %180 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.58, i32 noundef 1, i32 noundef %indvars.iv858.1.i, i32 noundef %conv349.1.i) #8
  %indvars.iv.next859.1.i = add nuw nsw i32 %indvars.iv858.1.i, 1
  %exitcond860.1.not.i = icmp eq i32 %indvars.iv.next859.1.i, 14
  br i1 %exitcond860.1.not.i, label %for.inc353.1.i, label %if.end333.1.i.if.end333.1.i_crit_edge

if.end333.1.i.if.end333.1.i_crit_edge:            ; preds = %if.end333.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end333.1.i

for.inc353.1.i:                                   ; preds = %if.end333.1.i
  %txpwr_ht20diff.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 42
  %txpwr_legacyhtdiff.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 44
  br label %for.body360.i

for.body360.i:                                    ; preds = %if.end423.i.for.body360.i_crit_edge, %for.inc353.1.i
  %indvars.iv865.i = phi i32 [ 0, %for.inc353.1.i ], [ %indvars.iv.next866.i, %if.end423.i.for.body360.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %indvars.iv865.i)
  %181 = icmp ult i32 %indvars.iv865.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %indvars.iv865.i)
  %182 = icmp ult i32 %indvars.iv865.i, 9
  %..i798.i = select i1 %182, i8 1, i8 2
  %group.0.i799.i = select i1 %181, i8 0, i8 %..i798.i
  br i1 %tobool11.not, label %if.then364.i, label %for.body360.i.if.end369.i_crit_edge

for.body360.i.if.end369.i_crit_edge:              ; preds = %for.body360.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end369.i

if.then364.i:                                     ; preds = %for.body360.i
  call void @__sanitizer_cov_trace_pc() #10
  %183 = or i8 %group.0.i799.i, 28
  %add366.i = zext i8 %183 to i32
  %arrayidx367.i = getelementptr i8, ptr %call7.i.i, i32 %add366.i
  %184 = ptrtoint ptr %arrayidx367.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %arrayidx367.i, align 1
  br label %if.end369.i

if.end369.i:                                      ; preds = %if.then364.i, %for.body360.i.if.end369.i_crit_edge
  %tempval.1.i = phi i8 [ %185, %if.then364.i ], [ 2, %for.body360.i.if.end369.i_crit_edge ]
  %and371.i = and i8 %tempval.1.i, 15
  %arrayidx375.i = getelementptr [59 x i8], ptr %txpwr_ht20diff.i, i32 0, i32 %indvars.iv865.i
  %186 = ptrtoint ptr %arrayidx375.i to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 %and371.i, ptr %arrayidx375.i, align 1
  %187 = lshr i8 %tempval.1.i, 4
  %arrayidx383.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 42, i32 1, i32 %indvars.iv865.i
  %188 = ptrtoint ptr %arrayidx383.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %187, ptr %arrayidx383.i, align 1
  %189 = and i8 %tempval.1.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %189)
  %tobool390.not.i = icmp eq i8 %189, 0
  br i1 %tobool390.not.i, label %if.end369.i.if.end398.i_crit_edge, label %if.then391.i

if.end369.i.if.end398.i_crit_edge:                ; preds = %if.end369.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end398.i

if.then391.i:                                     ; preds = %if.end369.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.i = or i8 %tempval.1.i, -16
  %190 = ptrtoint ptr %arrayidx375.i to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 %or.i, ptr %arrayidx375.i, align 1
  br label %if.end398.i

if.end398.i:                                      ; preds = %if.then391.i, %if.end369.i.if.end398.i_crit_edge
  %191 = ptrtoint ptr %arrayidx383.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %arrayidx383.i, align 1
  %193 = and i8 %192, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %193)
  %tobool405.not.i = icmp eq i8 %193, 0
  br i1 %tobool405.not.i, label %if.end398.i.if.end414.i_crit_edge, label %if.then406.i

if.end398.i.if.end414.i_crit_edge:                ; preds = %if.end398.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end414.i

if.then406.i:                                     ; preds = %if.end398.i
  call void @__sanitizer_cov_trace_pc() #10
  %or412.i = or i8 %192, -16
  %194 = ptrtoint ptr %arrayidx383.i to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 %or412.i, ptr %arrayidx383.i, align 1
  br label %if.end414.i

if.end414.i:                                      ; preds = %if.then406.i, %if.end398.i.if.end414.i_crit_edge
  br i1 %tobool11.not, label %if.then418.i, label %if.end414.i.if.end423.i_crit_edge

if.end414.i.if.end423.i_crit_edge:                ; preds = %if.end414.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end423.i

if.then418.i:                                     ; preds = %if.end414.i
  call void @__sanitizer_cov_trace_pc() #10
  %narrow.i = add nuw nsw i8 %group.0.i799.i, 31
  %add420.i = zext i8 %narrow.i to i32
  %arrayidx421.i = getelementptr i8, ptr %call7.i.i, i32 %add420.i
  %195 = ptrtoint ptr %arrayidx421.i to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %arrayidx421.i, align 1
  br label %if.end423.i

if.end423.i:                                      ; preds = %if.then418.i, %if.end414.i.if.end423.i_crit_edge
  %tempval.2.i = phi i8 [ %196, %if.then418.i ], [ 3, %if.end414.i.if.end423.i_crit_edge ]
  %and425.i = and i8 %tempval.2.i, 15
  %arrayidx429.i = getelementptr [59 x i8], ptr %txpwr_legacyhtdiff.i, i32 0, i32 %indvars.iv865.i
  %197 = ptrtoint ptr %arrayidx429.i to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 %and425.i, ptr %arrayidx429.i, align 1
  %198 = lshr i8 %tempval.2.i, 4
  %arrayidx437.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 44, i32 1, i32 %indvars.iv865.i
  %199 = ptrtoint ptr %arrayidx437.i to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 %198, ptr %arrayidx437.i, align 1
  %indvars.iv.next866.i = add nuw nsw i32 %indvars.iv865.i, 1
  %exitcond867.not.i = icmp eq i32 %indvars.iv.next866.i, 14
  br i1 %exitcond867.not.i, label %for.end440.i, label %if.end423.i.for.body360.i_crit_edge

if.end423.i.for.body360.i_crit_edge:              ; preds = %if.end423.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body360.i

for.end440.i:                                     ; preds = %if.end423.i
  %arrayidx443.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 44, i32 0, i32 7
  %200 = ptrtoint ptr %arrayidx443.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %arrayidx443.i, align 1
  %legacy_ht_txpowerdiff.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 61
  %202 = ptrtoint ptr %legacy_ht_txpowerdiff.i to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 %201, ptr %legacy_ht_txpowerdiff.i, align 1
  %203 = ptrtoint ptr %txpwr_ht20diff.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %txpwr_ht20diff.i, align 1
  %conv454.i = sext i8 %204 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.59, i32 noundef 0, i32 noundef %conv454.i) #8
  %arrayidx453.1.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 42, i32 0, i32 1
  %205 = ptrtoint ptr %arrayidx453.1.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %arrayidx453.1.i, align 1
  %conv454.1.i = sext i8 %206 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.59, i32 noundef 1, i32 noundef %conv454.1.i) #8
  %arrayidx453.2.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 42, i32 0, i32 2
  %207 = ptrtoint ptr %arrayidx453.2.i to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %arrayidx453.2.i, align 1
  %conv454.2.i = sext i8 %208 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.59, i32 noundef 2, i32 noundef %conv454.2.i) #8
  %arrayidx453.3.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 42, i32 0, i32 3
  %209 = ptrtoint ptr %arrayidx453.3.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %arrayidx453.3.i, align 1
  %conv454.3.i = sext i8 %210 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.59, i32 noundef 3, i32 noundef %conv454.3.i) #8
  %arrayidx453.4.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 42, i32 0, i32 4
  %211 = ptrtoint ptr %arrayidx453.4.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %arrayidx453.4.i, align 1
  %conv454.4.i = sext i8 %212 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.59, i32 noundef 4, i32 noundef %conv454.4.i) #8
  %arrayidx453.5.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 42, i32 0, i32 5
  %213 = ptrtoint ptr %arrayidx453.5.i to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %arrayidx453.5.i, align 1
  %conv454.5.i = sext i8 %214 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.59, i32 noundef 5, i32 noundef %conv454.5.i) #8
  %arrayidx453.6.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 42, i32 0, i32 6
  %215 = ptrtoint ptr %arrayidx453.6.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %arrayidx453.6.i, align 1
  %conv454.6.i = sext i8 %216 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.59, i32 noundef 6, i32 noundef %conv454.6.i) #8
  %arrayidx453.7.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 42, i32 0, i32 7
  %217 = ptrtoint ptr %arrayidx453.7.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %arrayidx453.7.i, align 1
  %conv454.7.i = sext i8 %218 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.59, i32 noundef 7, i32 noundef %conv454.7.i) #8
  %arrayidx453.8.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 42, i32 0, i32 8
  %219 = ptrtoint ptr %arrayidx453.8.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %arrayidx453.8.i, align 1
  %conv454.8.i = sext i8 %220 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.59, i32 noundef 8, i32 noundef %conv454.8.i) #8
  %arrayidx453.9.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 42, i32 0, i32 9
  %221 = ptrtoint ptr %arrayidx453.9.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %arrayidx453.9.i, align 1
  %conv454.9.i = sext i8 %222 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.59, i32 noundef 9, i32 noundef %conv454.9.i) #8
  %arrayidx453.10.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 42, i32 0, i32 10
  %223 = ptrtoint ptr %arrayidx453.10.i to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %arrayidx453.10.i, align 1
  %conv454.10.i = sext i8 %224 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.59, i32 noundef 10, i32 noundef %conv454.10.i) #8
  %arrayidx453.11.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 42, i32 0, i32 11
  %225 = ptrtoint ptr %arrayidx453.11.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %arrayidx453.11.i, align 1
  %conv454.11.i = sext i8 %226 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.59, i32 noundef 11, i32 noundef %conv454.11.i) #8
  %arrayidx453.12.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 42, i32 0, i32 12
  %227 = ptrtoint ptr %arrayidx453.12.i to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %arrayidx453.12.i, align 1
  %conv454.12.i = sext i8 %228 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.59, i32 noundef 12, i32 noundef %conv454.12.i) #8
  %arrayidx453.13.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 42, i32 0, i32 13
  %229 = ptrtoint ptr %arrayidx453.13.i to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %arrayidx453.13.i, align 1
  %conv454.13.i = sext i8 %230 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.59, i32 noundef 13, i32 noundef %conv454.13.i) #8
  %231 = ptrtoint ptr %txpwr_legacyhtdiff.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %txpwr_legacyhtdiff.i, align 1
  %conv468.i = sext i8 %232 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.60, i32 noundef 0, i32 noundef %conv468.i) #8
  %arrayidx467.1.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 44, i32 0, i32 1
  %233 = ptrtoint ptr %arrayidx467.1.i to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %arrayidx467.1.i, align 1
  %conv468.1.i = sext i8 %234 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.60, i32 noundef 1, i32 noundef %conv468.1.i) #8
  %arrayidx467.2.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 44, i32 0, i32 2
  %235 = ptrtoint ptr %arrayidx467.2.i to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %arrayidx467.2.i, align 1
  %conv468.2.i = sext i8 %236 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.60, i32 noundef 2, i32 noundef %conv468.2.i) #8
  %arrayidx467.3.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 44, i32 0, i32 3
  %237 = ptrtoint ptr %arrayidx467.3.i to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %arrayidx467.3.i, align 1
  %conv468.3.i = sext i8 %238 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.60, i32 noundef 3, i32 noundef %conv468.3.i) #8
  %arrayidx467.4.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 44, i32 0, i32 4
  %239 = ptrtoint ptr %arrayidx467.4.i to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %arrayidx467.4.i, align 1
  %conv468.4.i = sext i8 %240 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.60, i32 noundef 4, i32 noundef %conv468.4.i) #8
  %arrayidx467.5.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 44, i32 0, i32 5
  %241 = ptrtoint ptr %arrayidx467.5.i to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %arrayidx467.5.i, align 1
  %conv468.5.i = sext i8 %242 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.60, i32 noundef 5, i32 noundef %conv468.5.i) #8
  %arrayidx467.6.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 44, i32 0, i32 6
  %243 = ptrtoint ptr %arrayidx467.6.i to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %arrayidx467.6.i, align 1
  %conv468.6.i = sext i8 %244 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.60, i32 noundef 6, i32 noundef %conv468.6.i) #8
  %245 = ptrtoint ptr %arrayidx443.i to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %arrayidx443.i, align 1
  %conv468.7.i = sext i8 %246 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.60, i32 noundef 7, i32 noundef %conv468.7.i) #8
  %arrayidx467.8.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 44, i32 0, i32 8
  %247 = ptrtoint ptr %arrayidx467.8.i to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %arrayidx467.8.i, align 1
  %conv468.8.i = sext i8 %248 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.60, i32 noundef 8, i32 noundef %conv468.8.i) #8
  %arrayidx467.9.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 44, i32 0, i32 9
  %249 = ptrtoint ptr %arrayidx467.9.i to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %arrayidx467.9.i, align 1
  %conv468.9.i = sext i8 %250 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.60, i32 noundef 9, i32 noundef %conv468.9.i) #8
  %arrayidx467.10.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 44, i32 0, i32 10
  %251 = ptrtoint ptr %arrayidx467.10.i to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %arrayidx467.10.i, align 1
  %conv468.10.i = sext i8 %252 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.60, i32 noundef 10, i32 noundef %conv468.10.i) #8
  %arrayidx467.11.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 44, i32 0, i32 11
  %253 = ptrtoint ptr %arrayidx467.11.i to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %arrayidx467.11.i, align 1
  %conv468.11.i = sext i8 %254 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.60, i32 noundef 11, i32 noundef %conv468.11.i) #8
  %arrayidx467.12.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 44, i32 0, i32 12
  %255 = ptrtoint ptr %arrayidx467.12.i to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %arrayidx467.12.i, align 1
  %conv468.12.i = sext i8 %256 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.60, i32 noundef 12, i32 noundef %conv468.12.i) #8
  %arrayidx467.13.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 44, i32 0, i32 13
  %257 = ptrtoint ptr %arrayidx467.13.i to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %arrayidx467.13.i, align 1
  %conv468.13.i = sext i8 %258 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.60, i32 noundef 13, i32 noundef %conv468.13.i) #8
  %arrayidx481.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 42, i32 1, i32 0
  %259 = ptrtoint ptr %arrayidx481.i to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %arrayidx481.i, align 1
  %conv482.i = sext i8 %260 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.61, i32 noundef 0, i32 noundef %conv482.i) #8
  %arrayidx481.1.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 42, i32 1, i32 1
  %261 = ptrtoint ptr %arrayidx481.1.i to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %arrayidx481.1.i, align 1
  %conv482.1.i = sext i8 %262 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.61, i32 noundef 1, i32 noundef %conv482.1.i) #8
  %arrayidx481.2.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 42, i32 1, i32 2
  %263 = ptrtoint ptr %arrayidx481.2.i to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %arrayidx481.2.i, align 1
  %conv482.2.i = sext i8 %264 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.61, i32 noundef 2, i32 noundef %conv482.2.i) #8
  %arrayidx481.3.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 42, i32 1, i32 3
  %265 = ptrtoint ptr %arrayidx481.3.i to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %arrayidx481.3.i, align 1
  %conv482.3.i = sext i8 %266 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.61, i32 noundef 3, i32 noundef %conv482.3.i) #8
  %arrayidx481.4.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 42, i32 1, i32 4
  %267 = ptrtoint ptr %arrayidx481.4.i to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %arrayidx481.4.i, align 1
  %conv482.4.i = sext i8 %268 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.61, i32 noundef 4, i32 noundef %conv482.4.i) #8
  %arrayidx481.5.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 42, i32 1, i32 5
  %269 = ptrtoint ptr %arrayidx481.5.i to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %arrayidx481.5.i, align 1
  %conv482.5.i = sext i8 %270 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.61, i32 noundef 5, i32 noundef %conv482.5.i) #8
  %arrayidx481.6.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 42, i32 1, i32 6
  %271 = ptrtoint ptr %arrayidx481.6.i to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %arrayidx481.6.i, align 1
  %conv482.6.i = sext i8 %272 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.61, i32 noundef 6, i32 noundef %conv482.6.i) #8
  %arrayidx481.7.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 42, i32 1, i32 7
  %273 = ptrtoint ptr %arrayidx481.7.i to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %arrayidx481.7.i, align 1
  %conv482.7.i = sext i8 %274 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.61, i32 noundef 7, i32 noundef %conv482.7.i) #8
  %arrayidx481.8.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 42, i32 1, i32 8
  %275 = ptrtoint ptr %arrayidx481.8.i to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %arrayidx481.8.i, align 1
  %conv482.8.i = sext i8 %276 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.61, i32 noundef 8, i32 noundef %conv482.8.i) #8
  %arrayidx481.9.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 42, i32 1, i32 9
  %277 = ptrtoint ptr %arrayidx481.9.i to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %arrayidx481.9.i, align 1
  %conv482.9.i = sext i8 %278 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.61, i32 noundef 9, i32 noundef %conv482.9.i) #8
  %arrayidx481.10.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 42, i32 1, i32 10
  %279 = ptrtoint ptr %arrayidx481.10.i to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %arrayidx481.10.i, align 1
  %conv482.10.i = sext i8 %280 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.61, i32 noundef 10, i32 noundef %conv482.10.i) #8
  %arrayidx481.11.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 42, i32 1, i32 11
  %281 = ptrtoint ptr %arrayidx481.11.i to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %arrayidx481.11.i, align 1
  %conv482.11.i = sext i8 %282 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.61, i32 noundef 11, i32 noundef %conv482.11.i) #8
  %arrayidx481.12.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 42, i32 1, i32 12
  %283 = ptrtoint ptr %arrayidx481.12.i to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %arrayidx481.12.i, align 1
  %conv482.12.i = sext i8 %284 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.61, i32 noundef 12, i32 noundef %conv482.12.i) #8
  %arrayidx481.13.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 42, i32 1, i32 13
  %285 = ptrtoint ptr %arrayidx481.13.i to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %arrayidx481.13.i, align 1
  %conv482.13.i = sext i8 %286 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.61, i32 noundef 13, i32 noundef %conv482.13.i) #8
  %arrayidx495.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 44, i32 1, i32 0
  %287 = ptrtoint ptr %arrayidx495.i to i32
  call void @__asan_load1_noabort(i32 %287)
  %288 = load i8, ptr %arrayidx495.i, align 1
  %conv496.i = sext i8 %288 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.62, i32 noundef 0, i32 noundef %conv496.i) #8
  %arrayidx495.1.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 44, i32 1, i32 1
  %289 = ptrtoint ptr %arrayidx495.1.i to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %arrayidx495.1.i, align 1
  %conv496.1.i = sext i8 %290 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.62, i32 noundef 1, i32 noundef %conv496.1.i) #8
  %arrayidx495.2.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 44, i32 1, i32 2
  %291 = ptrtoint ptr %arrayidx495.2.i to i32
  call void @__asan_load1_noabort(i32 %291)
  %292 = load i8, ptr %arrayidx495.2.i, align 1
  %conv496.2.i = sext i8 %292 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.62, i32 noundef 2, i32 noundef %conv496.2.i) #8
  %arrayidx495.3.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 44, i32 1, i32 3
  %293 = ptrtoint ptr %arrayidx495.3.i to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %arrayidx495.3.i, align 1
  %conv496.3.i = sext i8 %294 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.62, i32 noundef 3, i32 noundef %conv496.3.i) #8
  %arrayidx495.4.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 44, i32 1, i32 4
  %295 = ptrtoint ptr %arrayidx495.4.i to i32
  call void @__asan_load1_noabort(i32 %295)
  %296 = load i8, ptr %arrayidx495.4.i, align 1
  %conv496.4.i = sext i8 %296 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.62, i32 noundef 4, i32 noundef %conv496.4.i) #8
  %arrayidx495.5.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 44, i32 1, i32 5
  %297 = ptrtoint ptr %arrayidx495.5.i to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %arrayidx495.5.i, align 1
  %conv496.5.i = sext i8 %298 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.62, i32 noundef 5, i32 noundef %conv496.5.i) #8
  %arrayidx495.6.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 44, i32 1, i32 6
  %299 = ptrtoint ptr %arrayidx495.6.i to i32
  call void @__asan_load1_noabort(i32 %299)
  %300 = load i8, ptr %arrayidx495.6.i, align 1
  %conv496.6.i = sext i8 %300 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.62, i32 noundef 6, i32 noundef %conv496.6.i) #8
  %arrayidx495.7.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 44, i32 1, i32 7
  %301 = ptrtoint ptr %arrayidx495.7.i to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %arrayidx495.7.i, align 1
  %conv496.7.i = sext i8 %302 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.62, i32 noundef 7, i32 noundef %conv496.7.i) #8
  %arrayidx495.8.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 44, i32 1, i32 8
  %303 = ptrtoint ptr %arrayidx495.8.i to i32
  call void @__asan_load1_noabort(i32 %303)
  %304 = load i8, ptr %arrayidx495.8.i, align 1
  %conv496.8.i = sext i8 %304 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.62, i32 noundef 8, i32 noundef %conv496.8.i) #8
  %arrayidx495.9.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 44, i32 1, i32 9
  %305 = ptrtoint ptr %arrayidx495.9.i to i32
  call void @__asan_load1_noabort(i32 %305)
  %306 = load i8, ptr %arrayidx495.9.i, align 1
  %conv496.9.i = sext i8 %306 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.62, i32 noundef 9, i32 noundef %conv496.9.i) #8
  %arrayidx495.10.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 44, i32 1, i32 10
  %307 = ptrtoint ptr %arrayidx495.10.i to i32
  call void @__asan_load1_noabort(i32 %307)
  %308 = load i8, ptr %arrayidx495.10.i, align 1
  %conv496.10.i = sext i8 %308 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.62, i32 noundef 10, i32 noundef %conv496.10.i) #8
  %arrayidx495.11.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 44, i32 1, i32 11
  %309 = ptrtoint ptr %arrayidx495.11.i to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %arrayidx495.11.i, align 1
  %conv496.11.i = sext i8 %310 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.62, i32 noundef 11, i32 noundef %conv496.11.i) #8
  %arrayidx495.12.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 44, i32 1, i32 12
  %311 = ptrtoint ptr %arrayidx495.12.i to i32
  call void @__asan_load1_noabort(i32 %311)
  %312 = load i8, ptr %arrayidx495.12.i, align 1
  %conv496.12.i = sext i8 %312 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.62, i32 noundef 12, i32 noundef %conv496.12.i) #8
  %arrayidx495.13.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 44, i32 1, i32 13
  %313 = ptrtoint ptr %arrayidx495.13.i to i32
  call void @__asan_load1_noabort(i32 %313)
  %314 = load i8, ptr %arrayidx495.13.i, align 1
  %conv496.13.i = sext i8 %314 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.62, i32 noundef 13, i32 noundef %conv496.13.i) #8
  br i1 %tobool11.not, label %if.end529.i, label %if.end529.thread.i

if.end529.thread.i:                               ; preds = %for.end440.i
  call void @__sanitizer_cov_trace_pc() #10
  %eeprom_regulatory507.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 54
  %315 = ptrtoint ptr %eeprom_regulatory507.i to i32
  call void @__asan_store1_noabort(i32 %315)
  store i8 0, ptr %eeprom_regulatory507.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.63, i32 noundef 0) #8
  %eeprom_tssi516.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 25
  %316 = ptrtoint ptr %eeprom_tssi516.i to i32
  call void @__asan_store1_noabort(i32 %316)
  store i8 0, ptr %eeprom_tssi516.i, align 2
  %arrayidx523.c.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 25, i32 1
  %317 = ptrtoint ptr %arrayidx523.c.i to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %arrayidx523.c.i, align 1
  %conv524.c.i = zext i8 %318 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.64, i32 noundef 0, i32 noundef %conv524.c.i) #8
  %eeprom_thermalmeter805.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 55
  %319 = ptrtoint ptr %eeprom_thermalmeter805.i to i32
  call void @__asan_store1_noabort(i32 %319)
  store i8 18, ptr %eeprom_thermalmeter805.i, align 4
  br label %if.then539.i

if.end529.i:                                      ; preds = %for.end440.i
  %arrayidx502.i = getelementptr i8, ptr %call7.i.i, i32 43
  %320 = ptrtoint ptr %arrayidx502.i to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %arrayidx502.i, align 1
  %322 = and i8 %321, 7
  %eeprom_regulatory.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 54
  %323 = ptrtoint ptr %eeprom_regulatory.i to i32
  call void @__asan_store1_noabort(i32 %323)
  store i8 %322, ptr %eeprom_regulatory.i, align 1
  %conv510.c787.i = zext i8 %322 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.63, i32 noundef %conv510.c787.i) #8
  %arrayidx513.i = getelementptr i8, ptr %call7.i.i, i32 41
  %324 = ptrtoint ptr %arrayidx513.i to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %arrayidx513.i, align 1
  %eeprom_tssi.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 25
  %326 = ptrtoint ptr %eeprom_tssi.i to i32
  call void @__asan_store1_noabort(i32 %326)
  store i8 %325, ptr %eeprom_tssi.i, align 2
  %conv521.c789.i = zext i8 %325 to i32
  %arrayidx523.c790.i = getelementptr %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 25, i32 1
  %327 = ptrtoint ptr %arrayidx523.c790.i to i32
  call void @__asan_load1_noabort(i32 %327)
  %328 = load i8, ptr %arrayidx523.c790.i, align 1
  %conv524.c791.i = zext i8 %328 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.64, i32 noundef %conv521.c789.i, i32 noundef %conv524.c791.i) #8
  %arrayidx527.i = getelementptr i8, ptr %call7.i.i, i32 42
  %329 = ptrtoint ptr %arrayidx527.i to i32
  call void @__asan_load1_noabort(i32 %329)
  %330 = load i8, ptr %arrayidx527.i, align 2
  %331 = and i8 %330, 31
  %eeprom_thermalmeter.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 55
  %332 = ptrtoint ptr %eeprom_thermalmeter.i to i32
  call void @__asan_store1_noabort(i32 %332)
  store i8 %331, ptr %eeprom_thermalmeter.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %331)
  %cmp535.i = icmp eq i8 %331, 31
  br i1 %cmp535.i, label %if.end529.i.if.then539.i_crit_edge, label %if.end529.i._rtl8723e_read_txpower_info_from_hwpg.exit_crit_edge

if.end529.i._rtl8723e_read_txpower_info_from_hwpg.exit_crit_edge: ; preds = %if.end529.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl8723e_read_txpower_info_from_hwpg.exit

if.end529.i.if.then539.i_crit_edge:               ; preds = %if.end529.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then539.i

if.then539.i:                                     ; preds = %if.end529.i.if.then539.i_crit_edge, %if.end529.thread.i
  %eeprom_thermalmeter809.i = phi ptr [ %eeprom_thermalmeter805.i, %if.end529.thread.i ], [ %eeprom_thermalmeter.i, %if.end529.i.if.then539.i_crit_edge ]
  %apk_thermalmeterignore.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 62
  %333 = ptrtoint ptr %apk_thermalmeterignore.i to i32
  call void @__asan_store1_noabort(i32 %333)
  store i8 1, ptr %apk_thermalmeterignore.i, align 2
  br label %_rtl8723e_read_txpower_info_from_hwpg.exit

_rtl8723e_read_txpower_info_from_hwpg.exit:       ; preds = %if.then539.i, %if.end529.i._rtl8723e_read_txpower_info_from_hwpg.exit_crit_edge
  %eeprom_thermalmeter808.i = phi ptr [ %eeprom_thermalmeter.i, %if.end529.i._rtl8723e_read_txpower_info_from_hwpg.exit_crit_edge ], [ %eeprom_thermalmeter809.i, %if.then539.i ]
  %334 = ptrtoint ptr %eeprom_thermalmeter808.i to i32
  call void @__asan_load1_noabort(i32 %334)
  %335 = load i8, ptr %eeprom_thermalmeter808.i, align 4
  %thermalmeter.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 56
  %336 = ptrtoint ptr %thermalmeter.i to i32
  call void @__asan_store1_noabort(i32 %336)
  store i8 %335, ptr %thermalmeter.i, align 1
  %conv544.i = zext i8 %335 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.65, i32 noundef %conv544.i) #8
  %337 = ptrtoint ptr %autoload_failflag to i32
  call void @__asan_load1_noabort(i32 %337)
  %338 = load i8, ptr %autoload_failflag, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %338)
  %tobool13 = icmp ne i8 %338, 0
  call void @rtl8723e_read_bt_coexist_info_from_hwpg(ptr noundef %hw, i1 noundef zeroext %tobool13, ptr noundef nonnull %call7.i.i)
  %oem_id = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 12
  %339 = ptrtoint ptr %oem_id to i32
  call void @__asan_load1_noabort(i32 %339)
  %340 = load i8, ptr %oem_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %340)
  %cmp.not = icmp eq i8 %340, 0
  br i1 %cmp.not, label %if.end16, label %_rtl8723e_read_txpower_info_from_hwpg.exit.exit_crit_edge

_rtl8723e_read_txpower_info_from_hwpg.exit.exit_crit_edge: ; preds = %_rtl8723e_read_txpower_info_from_hwpg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end16:                                         ; preds = %_rtl8723e_read_txpower_info_from_hwpg.exit
  %eeprom_oemid = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 14
  %341 = ptrtoint ptr %eeprom_oemid to i32
  call void @__asan_load1_noabort(i32 %341)
  %342 = load i8, ptr %eeprom_oemid, align 4
  %343 = zext i8 %342 to i64
  call void @__sanitizer_cov_trace_switch(i64 %343, ptr @__sancov_gen_cov_switch_values.91)
  switch i8 %342, label %sw.default [
    i8 0, label %sw.bb
    i8 4, label %if.end16.exit.sink.split_crit_edge
    i8 16, label %sw.bb109
    i8 13, label %sw.bb111
    i8 -2, label %if.end16.exit_crit_edge
  ]

if.end16.exit_crit_edge:                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end16.exit.sink.split_crit_edge:               ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb:                                            ; preds = %if.end16
  %eeprom_did = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 11
  %344 = ptrtoint ptr %eeprom_did to i32
  call void @__asan_load2_noabort(i32 %344)
  %345 = load i16, ptr %eeprom_did, align 2
  %346 = zext i16 %345 to i64
  call void @__sanitizer_cov_trace_switch(i64 %346, ptr @__sancov_gen_cov_switch_values.92)
  switch i16 %345, label %sw.bb.exit_crit_edge [
    i16 -32394, label %sw.bb19
    i16 -32392, label %sw.bb79
  ]

sw.bb.exit_crit_edge:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

sw.bb19:                                          ; preds = %sw.bb
  %eeprom_svid = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 12
  %347 = ptrtoint ptr %eeprom_svid to i32
  call void @__asan_load2_noabort(i32 %347)
  %348 = load i16, ptr %eeprom_svid, align 4
  %349 = zext i16 %348 to i64
  call void @__sanitizer_cov_trace_switch(i64 %349, ptr @__sancov_gen_cov_switch_values.93)
  switch i16 %348, label %sw.bb19.exit_crit_edge [
    i16 4332, label %sw.bb21
    i16 4133, label %sw.bb19.exit.sink.split_crit_edge
    i16 4136, label %sw.bb53
    i16 4156, label %sw.bb60
    i16 6706, label %sw.bb66
    i16 4163, label %sw.bb72
  ]

sw.bb19.exit.sink.split_crit_edge:                ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb19.exit_crit_edge:                           ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

sw.bb21:                                          ; preds = %sw.bb19
  %eeprom_smid = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 13
  %350 = ptrtoint ptr %eeprom_smid to i32
  call void @__asan_load2_noabort(i32 %350)
  %351 = load i16, ptr %eeprom_smid, align 2
  %352 = zext i16 %351 to i64
  call void @__sanitizer_cov_trace_switch(i64 %352, ptr @__sancov_gen_cov_switch_values.94)
  switch i16 %351, label %sw.bb21.exit_crit_edge [
    i16 -28284, label %sw.bb21.exit.sink.split_crit_edge
    i16 -28283, label %sw.bb21.exit.sink.split_crit_edge1
    i16 -28287, label %sw.bb21.exit.sink.split_crit_edge2
    i16 -28286, label %sw.bb21.exit.sink.split_crit_edge3
    i16 -28332, label %sw.bb21.exit.sink.split_crit_edge4
    i16 -28331, label %sw.bb21.exit.sink.split_crit_edge5
    i16 -28335, label %sw.bb21.exit.sink.split_crit_edge6
    i16 -28334, label %sw.bb21.exit.sink.split_crit_edge7
    i16 -32380, label %sw.bb21.exit.sink.split_crit_edge8
    i16 -32379, label %sw.bb21.exit.sink.split_crit_edge9
    i16 -32383, label %sw.bb21.exit.sink.split_crit_edge10
    i16 -32382, label %sw.bb21.exit.sink.split_crit_edge11
    i16 -32428, label %sw.bb21.exit.sink.split_crit_edge12
    i16 -32427, label %sw.bb21.exit.sink.split_crit_edge13
    i16 -32431, label %sw.bb21.exit.sink.split_crit_edge14
    i16 -32430, label %sw.bb21.exit.sink.split_crit_edge15
    i16 29047, label %sw.bb21.exit.sink.split_crit_edge16
    i16 29048, label %sw.bb21.exit.sink.split_crit_edge17
    i16 29049, label %sw.bb21.exit.sink.split_crit_edge18
    i16 29050, label %sw.bb21.exit.sink.split_crit_edge19
    i16 29051, label %sw.bb21.exit.sink.split_crit_edge20
    i16 29052, label %sw.bb21.exit.sink.split_crit_edge21
    i16 29053, label %sw.bb21.exit.sink.split_crit_edge22
    i16 29054, label %sw.bb21.exit.sink.split_crit_edge23
    i16 29055, label %sw.bb21.exit.sink.split_crit_edge24
    i16 29056, label %sw.bb21.exit.sink.split_crit_edge25
    i16 29012, label %sw.bb21.exit.sink.split_crit_edge26
    i16 29013, label %sw.bb21.exit.sink.split_crit_edge27
    i16 29009, label %sw.bb21.exit.sink.split_crit_edge28
    i16 29010, label %sw.bb21.exit.sink.split_crit_edge29
    i16 24951, label %sw.bb21.exit.sink.split_crit_edge30
    i16 24952, label %sw.bb21.exit.sink.split_crit_edge31
    i16 24953, label %sw.bb21.exit.sink.split_crit_edge32
    i16 24954, label %sw.bb21.exit.sink.split_crit_edge33
    i16 24955, label %sw.bb21.exit.sink.split_crit_edge34
    i16 24956, label %sw.bb21.exit.sink.split_crit_edge35
    i16 24957, label %sw.bb21.exit.sink.split_crit_edge36
    i16 24958, label %sw.bb21.exit.sink.split_crit_edge37
    i16 24959, label %sw.bb21.exit.sink.split_crit_edge38
    i16 24960, label %sw.bb21.exit.sink.split_crit_edge39
    i16 24916, label %sw.bb21.exit.sink.split_crit_edge40
    i16 24917, label %sw.bb21.exit.sink.split_crit_edge41
    i16 24913, label %sw.bb21.exit.sink.split_crit_edge42
    i16 24914, label %sw.bb21.exit.sink.split_crit_edge43
    i16 -28271, label %sw.bb21.sw.bb41_crit_edge
    i16 -28270, label %sw.bb21.sw.bb41_crit_edge44
    i16 -28269, label %sw.bb21.sw.bb41_crit_edge45
    i16 -32367, label %sw.bb21.sw.bb41_crit_edge46
    i16 -32366, label %sw.bb21.sw.bb41_crit_edge47
    i16 -32365, label %sw.bb21.sw.bb41_crit_edge48
    i16 29073, label %sw.bb21.sw.bb41_crit_edge49
    i16 29074, label %sw.bb21.sw.bb41_crit_edge50
    i16 29075, label %sw.bb21.sw.bb41_crit_edge51
    i16 24977, label %sw.bb21.sw.bb41_crit_edge52
    i16 24978, label %sw.bb21.sw.bb41_crit_edge53
    i16 24979, label %sw.bb21.sw.bb41_crit_edge54
    i16 -32361, label %sw.bb21.sw.bb43_crit_edge
    i16 -28266, label %sw.bb21.sw.bb43_crit_edge55
    i16 -32253, label %sw.bb45
    i16 -32363, label %sw.bb21.sw.bb49_crit_edge
    i16 -28267, label %sw.bb21.sw.bb49_crit_edge56
    i16 29076, label %sw.bb21.sw.bb49_crit_edge57
    i16 -28160, label %sw.bb21.sw.bb49_crit_edge58
    i16 -32256, label %sw.bb21.sw.bb49_crit_edge59
    i16 -32255, label %sw.bb21.sw.bb49_crit_edge60
    i16 -32254, label %sw.bb21.sw.bb49_crit_edge61
  ]

sw.bb21.sw.bb49_crit_edge61:                      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb49

sw.bb21.sw.bb49_crit_edge60:                      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb49

sw.bb21.sw.bb49_crit_edge59:                      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb49

sw.bb21.sw.bb49_crit_edge58:                      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb49

sw.bb21.sw.bb49_crit_edge57:                      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb49

sw.bb21.sw.bb49_crit_edge56:                      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb49

sw.bb21.sw.bb49_crit_edge:                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb49

sw.bb21.sw.bb43_crit_edge55:                      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb43

sw.bb21.sw.bb43_crit_edge:                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb43

sw.bb21.sw.bb41_crit_edge54:                      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb41

sw.bb21.sw.bb41_crit_edge53:                      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb41

sw.bb21.sw.bb41_crit_edge52:                      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb41

sw.bb21.sw.bb41_crit_edge51:                      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb41

sw.bb21.sw.bb41_crit_edge50:                      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb41

sw.bb21.sw.bb41_crit_edge49:                      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb41

sw.bb21.sw.bb41_crit_edge48:                      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb41

sw.bb21.sw.bb41_crit_edge47:                      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb41

sw.bb21.sw.bb41_crit_edge46:                      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb41

sw.bb21.sw.bb41_crit_edge45:                      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb41

sw.bb21.sw.bb41_crit_edge44:                      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb41

sw.bb21.sw.bb41_crit_edge:                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb41

sw.bb21.exit.sink.split_crit_edge43:              ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb21.exit.sink.split_crit_edge42:              ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb21.exit.sink.split_crit_edge41:              ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb21.exit.sink.split_crit_edge40:              ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb21.exit.sink.split_crit_edge39:              ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb21.exit.sink.split_crit_edge38:              ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb21.exit.sink.split_crit_edge37:              ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb21.exit.sink.split_crit_edge36:              ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb21.exit.sink.split_crit_edge35:              ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb21.exit.sink.split_crit_edge34:              ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb21.exit.sink.split_crit_edge33:              ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb21.exit.sink.split_crit_edge32:              ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb21.exit.sink.split_crit_edge31:              ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb21.exit.sink.split_crit_edge30:              ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb21.exit.sink.split_crit_edge29:              ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb21.exit.sink.split_crit_edge28:              ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb21.exit.sink.split_crit_edge27:              ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb21.exit.sink.split_crit_edge26:              ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb21.exit.sink.split_crit_edge25:              ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb21.exit.sink.split_crit_edge24:              ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb21.exit.sink.split_crit_edge23:              ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb21.exit.sink.split_crit_edge22:              ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb21.exit.sink.split_crit_edge21:              ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb21.exit.sink.split_crit_edge20:              ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb21.exit.sink.split_crit_edge19:              ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb21.exit.sink.split_crit_edge18:              ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb21.exit.sink.split_crit_edge17:              ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb21.exit.sink.split_crit_edge16:              ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb21.exit.sink.split_crit_edge15:              ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb21.exit.sink.split_crit_edge14:              ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb21.exit.sink.split_crit_edge13:              ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb21.exit.sink.split_crit_edge12:              ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb21.exit.sink.split_crit_edge11:              ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb21.exit.sink.split_crit_edge10:              ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb21.exit.sink.split_crit_edge9:               ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb21.exit.sink.split_crit_edge8:               ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb21.exit.sink.split_crit_edge7:               ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb21.exit.sink.split_crit_edge6:               ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb21.exit.sink.split_crit_edge5:               ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb21.exit.sink.split_crit_edge4:               ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb21.exit.sink.split_crit_edge3:               ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb21.exit.sink.split_crit_edge2:               ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb21.exit.sink.split_crit_edge1:               ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb21.exit.sink.split_crit_edge:                ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb21.exit_crit_edge:                           ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

sw.bb41:                                          ; preds = %sw.bb21.sw.bb41_crit_edge, %sw.bb21.sw.bb41_crit_edge44, %sw.bb21.sw.bb41_crit_edge45, %sw.bb21.sw.bb41_crit_edge46, %sw.bb21.sw.bb41_crit_edge47, %sw.bb21.sw.bb41_crit_edge48, %sw.bb21.sw.bb41_crit_edge49, %sw.bb21.sw.bb41_crit_edge50, %sw.bb21.sw.bb41_crit_edge51, %sw.bb21.sw.bb41_crit_edge52, %sw.bb21.sw.bb41_crit_edge53, %sw.bb21.sw.bb41_crit_edge54
  br label %exit.sink.split

sw.bb43:                                          ; preds = %sw.bb21.sw.bb43_crit_edge, %sw.bb21.sw.bb43_crit_edge55
  br label %exit.sink.split

sw.bb45:                                          ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb49:                                          ; preds = %sw.bb21.sw.bb49_crit_edge, %sw.bb21.sw.bb49_crit_edge56, %sw.bb21.sw.bb49_crit_edge57, %sw.bb21.sw.bb49_crit_edge58, %sw.bb21.sw.bb49_crit_edge59, %sw.bb21.sw.bb49_crit_edge60, %sw.bb21.sw.bb49_crit_edge61
  br label %exit.sink.split

sw.bb53:                                          ; preds = %sw.bb19
  %eeprom_smid54 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 13
  %353 = ptrtoint ptr %eeprom_smid54 to i32
  call void @__asan_load2_noabort(i32 %353)
  %354 = load i16, ptr %eeprom_smid54, align 2
  %355 = zext i16 %354 to i64
  call void @__sanitizer_cov_trace_switch(i64 %355, ptr @__sancov_gen_cov_switch_values.95)
  switch i16 %354, label %sw.bb53.exit_crit_edge [
    i16 -32364, label %sw.bb53.exit.sink.split_crit_edge
    i16 -32360, label %sw.bb53.exit.sink.split_crit_edge62
    i16 -28265, label %sw.bb53.exit.sink.split_crit_edge63
    i16 -28264, label %sw.bb53.exit.sink.split_crit_edge64
  ]

sw.bb53.exit.sink.split_crit_edge64:              ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb53.exit.sink.split_crit_edge63:              ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb53.exit.sink.split_crit_edge62:              ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb53.exit.sink.split_crit_edge:                ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb53.exit_crit_edge:                           ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

sw.bb60:                                          ; preds = %sw.bb19
  %eeprom_smid61 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 13
  %356 = ptrtoint ptr %eeprom_smid61 to i32
  call void @__asan_load2_noabort(i32 %356)
  %357 = load i16, ptr %eeprom_smid61, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5673, i16 %357)
  %cond121 = icmp eq i16 %357, 5673
  br i1 %cond121, label %sw.bb60.exit.sink.split_crit_edge, label %sw.bb60.exit_crit_edge

sw.bb60.exit_crit_edge:                           ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

sw.bb60.exit.sink.split_crit_edge:                ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb66:                                          ; preds = %sw.bb19
  %eeprom_smid67 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 13
  %358 = ptrtoint ptr %eeprom_smid67 to i32
  call void @__asan_load2_noabort(i32 %358)
  %359 = load i16, ptr %eeprom_smid67, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8981, i16 %359)
  %cond120 = icmp eq i16 %359, 8981
  br i1 %cond120, label %sw.bb66.exit.sink.split_crit_edge, label %sw.bb66.exit_crit_edge

sw.bb66.exit_crit_edge:                           ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

sw.bb66.exit.sink.split_crit_edge:                ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb72:                                          ; preds = %sw.bb19
  %eeprom_smid73 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 13
  %360 = ptrtoint ptr %eeprom_smid73 to i32
  call void @__asan_load2_noabort(i32 %360)
  %361 = load i16, ptr %eeprom_smid73, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31563, i16 %361)
  %cond119 = icmp eq i16 %361, -31563
  br i1 %cond119, label %sw.bb72.exit.sink.split_crit_edge, label %sw.bb72.exit_crit_edge

sw.bb72.exit_crit_edge:                           ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

sw.bb72.exit.sink.split_crit_edge:                ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb79:                                          ; preds = %sw.bb
  %eeprom_svid80 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 12
  %362 = ptrtoint ptr %eeprom_svid80 to i32
  call void @__asan_load2_noabort(i32 %362)
  %363 = load i16, ptr %eeprom_svid80, align 4
  %364 = zext i16 %363 to i64
  call void @__sanitizer_cov_trace_switch(i64 %364, ptr @__sancov_gen_cov_switch_values.96)
  switch i16 %363, label %sw.bb79.exit_crit_edge [
    i16 4332, label %sw.bb82
    i16 4133, label %sw.bb79.exit.sink.split_crit_edge
    i16 4163, label %sw.bb99
  ]

sw.bb79.exit.sink.split_crit_edge:                ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb79.exit_crit_edge:                           ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

sw.bb82:                                          ; preds = %sw.bb79
  %eeprom_smid83 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 13
  %365 = ptrtoint ptr %eeprom_smid83 to i32
  call void @__asan_load2_noabort(i32 %365)
  %366 = load i16, ptr %eeprom_smid83, align 2
  %367 = zext i16 %366 to i64
  call void @__sanitizer_cov_trace_switch(i64 %367, ptr @__sancov_gen_cov_switch_values.97)
  switch i16 %366, label %sw.bb82.exit_crit_edge [
    i16 -28284, label %sw.bb82.exit.sink.split_crit_edge
    i16 -28283, label %sw.bb82.exit.sink.split_crit_edge65
    i16 -28287, label %sw.bb82.exit.sink.split_crit_edge66
    i16 -28286, label %sw.bb82.exit.sink.split_crit_edge67
    i16 -32380, label %sw.bb82.exit.sink.split_crit_edge68
    i16 -32379, label %sw.bb82.exit.sink.split_crit_edge69
    i16 -32383, label %sw.bb82.exit.sink.split_crit_edge70
    i16 -32382, label %sw.bb82.exit.sink.split_crit_edge71
    i16 29060, label %sw.bb82.exit.sink.split_crit_edge72
    i16 29061, label %sw.bb82.exit.sink.split_crit_edge73
    i16 29057, label %sw.bb82.exit.sink.split_crit_edge74
    i16 29058, label %sw.bb82.exit.sink.split_crit_edge75
    i16 24964, label %sw.bb82.exit.sink.split_crit_edge76
    i16 24965, label %sw.bb82.exit.sink.split_crit_edge77
    i16 24961, label %sw.bb82.exit.sink.split_crit_edge78
    i16 24962, label %sw.bb82.exit.sink.split_crit_edge79
    i16 -32378, label %sw.bb94
  ]

sw.bb82.exit.sink.split_crit_edge79:              ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb82.exit.sink.split_crit_edge78:              ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb82.exit.sink.split_crit_edge77:              ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb82.exit.sink.split_crit_edge76:              ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb82.exit.sink.split_crit_edge75:              ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb82.exit.sink.split_crit_edge74:              ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb82.exit.sink.split_crit_edge73:              ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb82.exit.sink.split_crit_edge72:              ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb82.exit.sink.split_crit_edge71:              ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb82.exit.sink.split_crit_edge70:              ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb82.exit.sink.split_crit_edge69:              ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb82.exit.sink.split_crit_edge68:              ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb82.exit.sink.split_crit_edge67:              ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb82.exit.sink.split_crit_edge66:              ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb82.exit.sink.split_crit_edge65:              ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb82.exit.sink.split_crit_edge:                ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb82.exit_crit_edge:                           ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

sw.bb94:                                          ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb99:                                          ; preds = %sw.bb79
  %eeprom_smid100 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 13
  %368 = ptrtoint ptr %eeprom_smid100 to i32
  call void @__asan_load2_noabort(i32 %368)
  %369 = load i16, ptr %eeprom_smid100, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31610, i16 %369)
  %cond = icmp eq i16 %369, -31610
  br i1 %cond, label %sw.bb99.exit.sink.split_crit_edge, label %sw.bb99.exit_crit_edge

sw.bb99.exit_crit_edge:                           ; preds = %sw.bb99
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

sw.bb99.exit.sink.split_crit_edge:                ; preds = %sw.bb99
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb109:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.bb111:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

sw.default:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split

exit.sink.split:                                  ; preds = %sw.default, %sw.bb111, %sw.bb109, %sw.bb99.exit.sink.split_crit_edge, %sw.bb94, %sw.bb82.exit.sink.split_crit_edge, %sw.bb82.exit.sink.split_crit_edge65, %sw.bb82.exit.sink.split_crit_edge66, %sw.bb82.exit.sink.split_crit_edge67, %sw.bb82.exit.sink.split_crit_edge68, %sw.bb82.exit.sink.split_crit_edge69, %sw.bb82.exit.sink.split_crit_edge70, %sw.bb82.exit.sink.split_crit_edge71, %sw.bb82.exit.sink.split_crit_edge72, %sw.bb82.exit.sink.split_crit_edge73, %sw.bb82.exit.sink.split_crit_edge74, %sw.bb82.exit.sink.split_crit_edge75, %sw.bb82.exit.sink.split_crit_edge76, %sw.bb82.exit.sink.split_crit_edge77, %sw.bb82.exit.sink.split_crit_edge78, %sw.bb82.exit.sink.split_crit_edge79, %sw.bb79.exit.sink.split_crit_edge, %sw.bb72.exit.sink.split_crit_edge, %sw.bb66.exit.sink.split_crit_edge, %sw.bb60.exit.sink.split_crit_edge, %sw.bb53.exit.sink.split_crit_edge, %sw.bb53.exit.sink.split_crit_edge62, %sw.bb53.exit.sink.split_crit_edge63, %sw.bb53.exit.sink.split_crit_edge64, %sw.bb49, %sw.bb45, %sw.bb43, %sw.bb41, %sw.bb21.exit.sink.split_crit_edge, %sw.bb21.exit.sink.split_crit_edge1, %sw.bb21.exit.sink.split_crit_edge2, %sw.bb21.exit.sink.split_crit_edge3, %sw.bb21.exit.sink.split_crit_edge4, %sw.bb21.exit.sink.split_crit_edge5, %sw.bb21.exit.sink.split_crit_edge6, %sw.bb21.exit.sink.split_crit_edge7, %sw.bb21.exit.sink.split_crit_edge8, %sw.bb21.exit.sink.split_crit_edge9, %sw.bb21.exit.sink.split_crit_edge10, %sw.bb21.exit.sink.split_crit_edge11, %sw.bb21.exit.sink.split_crit_edge12, %sw.bb21.exit.sink.split_crit_edge13, %sw.bb21.exit.sink.split_crit_edge14, %sw.bb21.exit.sink.split_crit_edge15, %sw.bb21.exit.sink.split_crit_edge16, %sw.bb21.exit.sink.split_crit_edge17, %sw.bb21.exit.sink.split_crit_edge18, %sw.bb21.exit.sink.split_crit_edge19, %sw.bb21.exit.sink.split_crit_edge20, %sw.bb21.exit.sink.split_crit_edge21, %sw.bb21.exit.sink.split_crit_edge22, %sw.bb21.exit.sink.split_crit_edge23, %sw.bb21.exit.sink.split_crit_edge24, %sw.bb21.exit.sink.split_crit_edge25, %sw.bb21.exit.sink.split_crit_edge26, %sw.bb21.exit.sink.split_crit_edge27, %sw.bb21.exit.sink.split_crit_edge28, %sw.bb21.exit.sink.split_crit_edge29, %sw.bb21.exit.sink.split_crit_edge30, %sw.bb21.exit.sink.split_crit_edge31, %sw.bb21.exit.sink.split_crit_edge32, %sw.bb21.exit.sink.split_crit_edge33, %sw.bb21.exit.sink.split_crit_edge34, %sw.bb21.exit.sink.split_crit_edge35, %sw.bb21.exit.sink.split_crit_edge36, %sw.bb21.exit.sink.split_crit_edge37, %sw.bb21.exit.sink.split_crit_edge38, %sw.bb21.exit.sink.split_crit_edge39, %sw.bb21.exit.sink.split_crit_edge40, %sw.bb21.exit.sink.split_crit_edge41, %sw.bb21.exit.sink.split_crit_edge42, %sw.bb21.exit.sink.split_crit_edge43, %sw.bb19.exit.sink.split_crit_edge, %if.end16.exit.sink.split_crit_edge
  %.sink = phi i8 [ 17, %sw.bb109 ], [ 19, %sw.bb111 ], [ 0, %sw.default ], [ 34, %sw.bb94 ], [ 18, %sw.bb49 ], [ 34, %sw.bb45 ], [ 28, %sw.bb43 ], [ 30, %sw.bb41 ], [ 9, %sw.bb21.exit.sink.split_crit_edge ], [ 9, %sw.bb21.exit.sink.split_crit_edge1 ], [ 9, %sw.bb21.exit.sink.split_crit_edge2 ], [ 9, %sw.bb21.exit.sink.split_crit_edge3 ], [ 9, %sw.bb21.exit.sink.split_crit_edge4 ], [ 9, %sw.bb21.exit.sink.split_crit_edge5 ], [ 9, %sw.bb21.exit.sink.split_crit_edge6 ], [ 9, %sw.bb21.exit.sink.split_crit_edge7 ], [ 9, %sw.bb21.exit.sink.split_crit_edge8 ], [ 9, %sw.bb21.exit.sink.split_crit_edge9 ], [ 9, %sw.bb21.exit.sink.split_crit_edge10 ], [ 9, %sw.bb21.exit.sink.split_crit_edge11 ], [ 9, %sw.bb21.exit.sink.split_crit_edge12 ], [ 9, %sw.bb21.exit.sink.split_crit_edge13 ], [ 9, %sw.bb21.exit.sink.split_crit_edge14 ], [ 9, %sw.bb21.exit.sink.split_crit_edge15 ], [ 9, %sw.bb21.exit.sink.split_crit_edge16 ], [ 9, %sw.bb21.exit.sink.split_crit_edge17 ], [ 9, %sw.bb21.exit.sink.split_crit_edge18 ], [ 9, %sw.bb21.exit.sink.split_crit_edge19 ], [ 9, %sw.bb21.exit.sink.split_crit_edge20 ], [ 9, %sw.bb21.exit.sink.split_crit_edge21 ], [ 9, %sw.bb21.exit.sink.split_crit_edge22 ], [ 9, %sw.bb21.exit.sink.split_crit_edge23 ], [ 9, %sw.bb21.exit.sink.split_crit_edge24 ], [ 9, %sw.bb21.exit.sink.split_crit_edge25 ], [ 9, %sw.bb21.exit.sink.split_crit_edge26 ], [ 9, %sw.bb21.exit.sink.split_crit_edge27 ], [ 9, %sw.bb21.exit.sink.split_crit_edge28 ], [ 9, %sw.bb21.exit.sink.split_crit_edge29 ], [ 9, %sw.bb21.exit.sink.split_crit_edge30 ], [ 9, %sw.bb21.exit.sink.split_crit_edge31 ], [ 9, %sw.bb21.exit.sink.split_crit_edge32 ], [ 9, %sw.bb21.exit.sink.split_crit_edge33 ], [ 9, %sw.bb21.exit.sink.split_crit_edge34 ], [ 9, %sw.bb21.exit.sink.split_crit_edge35 ], [ 9, %sw.bb21.exit.sink.split_crit_edge36 ], [ 9, %sw.bb21.exit.sink.split_crit_edge37 ], [ 9, %sw.bb21.exit.sink.split_crit_edge38 ], [ 9, %sw.bb21.exit.sink.split_crit_edge39 ], [ 9, %sw.bb21.exit.sink.split_crit_edge40 ], [ 9, %sw.bb21.exit.sink.split_crit_edge41 ], [ 9, %sw.bb21.exit.sink.split_crit_edge42 ], [ 9, %sw.bb21.exit.sink.split_crit_edge43 ], [ 24, %sw.bb19.exit.sink.split_crit_edge ], [ 33, %sw.bb53.exit.sink.split_crit_edge ], [ 33, %sw.bb53.exit.sink.split_crit_edge62 ], [ 33, %sw.bb53.exit.sink.split_crit_edge63 ], [ 33, %sw.bb53.exit.sink.split_crit_edge64 ], [ 27, %sw.bb60.exit.sink.split_crit_edge ], [ 19, %sw.bb66.exit.sink.split_crit_edge ], [ 35, %sw.bb72.exit.sink.split_crit_edge ], [ 9, %sw.bb82.exit.sink.split_crit_edge ], [ 9, %sw.bb82.exit.sink.split_crit_edge65 ], [ 9, %sw.bb82.exit.sink.split_crit_edge66 ], [ 9, %sw.bb82.exit.sink.split_crit_edge67 ], [ 9, %sw.bb82.exit.sink.split_crit_edge68 ], [ 9, %sw.bb82.exit.sink.split_crit_edge69 ], [ 9, %sw.bb82.exit.sink.split_crit_edge70 ], [ 9, %sw.bb82.exit.sink.split_crit_edge71 ], [ 9, %sw.bb82.exit.sink.split_crit_edge72 ], [ 9, %sw.bb82.exit.sink.split_crit_edge73 ], [ 9, %sw.bb82.exit.sink.split_crit_edge74 ], [ 9, %sw.bb82.exit.sink.split_crit_edge75 ], [ 9, %sw.bb82.exit.sink.split_crit_edge76 ], [ 9, %sw.bb82.exit.sink.split_crit_edge77 ], [ 9, %sw.bb82.exit.sink.split_crit_edge78 ], [ 9, %sw.bb82.exit.sink.split_crit_edge79 ], [ 24, %sw.bb79.exit.sink.split_crit_edge ], [ 35, %sw.bb99.exit.sink.split_crit_edge ], [ 9, %if.end16.exit.sink.split_crit_edge ]
  %370 = ptrtoint ptr %oem_id to i32
  call void @__asan_store1_noabort(i32 %370)
  store i8 %.sink, ptr %oem_id, align 1
  br label %exit

exit:                                             ; preds = %exit.sink.split, %sw.bb99.exit_crit_edge, %sw.bb82.exit_crit_edge, %sw.bb79.exit_crit_edge, %sw.bb72.exit_crit_edge, %sw.bb66.exit_crit_edge, %sw.bb60.exit_crit_edge, %sw.bb53.exit_crit_edge, %sw.bb21.exit_crit_edge, %sw.bb19.exit_crit_edge, %sw.bb.exit_crit_edge, %if.end16.exit_crit_edge, %_rtl8723e_read_txpower_info_from_hwpg.exit.exit_crit_edge, %if.end6.exit_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %params) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723e_update_hal_rate_tbl(ptr noundef %hw, ptr nocapture noundef %sta, i8 noundef zeroext %rssi_level, i1 noundef zeroext %update_bw) local_unnamed_addr #0 align 64 {
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
  %3 = load i8, ptr %useramask, align 1, !range !182
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
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %12, label %if.then.if.end30.i_crit_edge [
    i32 2, label %if.then.i
    i32 3, label %if.then.if.then27.i_crit_edge
    i32 1, label %if.then.if.then27.i_crit_edge20
  ]

if.then.if.then27.i_crit_edge20:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then27.i

if.then.if.then27.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then27.i

if.then.if.end30.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %bw_40.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 41
  %14 = ptrtoint ptr %bw_40.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bw_40.i, align 1
  br label %if.end30.i

if.then27.i:                                      ; preds = %if.then.if.then27.i_crit_edge, %if.then.if.then27.i_crit_edge20
  %aid.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 2
  %16 = ptrtoint ptr %aid.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %aid.i, align 2
  %18 = add i16 %17, 1
  %19 = and i16 %18, 255
  %phi.cast.i = zext i16 %19 to i32
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then27.i, %if.then.i, %if.then.if.end30.i_crit_edge
  %curtxbw_40mhz.0.i = phi i8 [ %15, %if.then.i ], [ %8, %if.then27.i ], [ %8, %if.then.if.end30.i_crit_edge ]
  %macid.0.i = phi i32 [ 0, %if.then.i ], [ %phi.cast.i, %if.then27.i ], [ 0, %if.then.if.end30.i_crit_edge ]
  %current_bandtype.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 53
  %20 = ptrtoint ptr %current_bandtype.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %current_bandtype.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp31.i = icmp eq i32 %21, 1
  br i1 %cmp31.i, label %if.then33.i, label %if.else34.i

if.then33.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr [6 x i32], ptr %sta, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 4
  %shl.i = shl i32 %23, 4
  br label %if.end37.i

if.else34.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %sta to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sta, align 4
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.else34.i, %if.then33.i
  %ratr_bitmap.0.i = phi i32 [ %shl.i, %if.then33.i ], [ %25, %if.else34.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp39.i = icmp eq i32 %12, 1
  %spec.select.i = select i1 %cmp39.i, i32 4095, i32 %ratr_bitmap.0.i
  %mcs.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4
  %arrayidx44.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4, i32 0, i32 1
  %26 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx44.i, align 1
  %conv45.i = zext i8 %27 to i32
  %shl46.i = shl nuw nsw i32 %conv45.i, 20
  %28 = ptrtoint ptr %mcs.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %mcs.i, align 1
  %conv51.i = zext i8 %29 to i32
  %shl52.i = shl nuw nsw i32 %conv51.i, 12
  %or.i = or i32 %shl46.i, %spec.select.i
  %or53.i = or i32 %or.i, %shl52.i
  %30 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.99)
  switch i16 %10, label %sw.default.i [
    i16 2, label %sw.bb.i
    i16 4, label %sw.bb61.i
    i16 1, label %sw.bb77.i
    i16 16, label %if.end37.i.sw.bb79.i_crit_edge
    i16 32, label %if.end37.i.sw.bb79.i_crit_edge21
  ]

if.end37.i.sw.bb79.i_crit_edge21:                 ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb79.i

if.end37.i.sw.bb79.i_crit_edge:                   ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb79.i

sw.bb.i:                                          ; preds = %if.end37.i
  %and54.i = and i32 %spec.select.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i)
  %tobool55.not.i = icmp eq i32 %and54.i, 0
  br i1 %tobool55.not.i, label %if.else58.i, label %if.then56.i

if.then56.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %and57.i = and i32 %spec.select.i, 13
  br label %rtl8723e_update_hal_rate_mask.exit

if.else58.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %and59.i = and i32 %spec.select.i, 15
  br label %rtl8723e_update_hal_rate_mask.exit

sw.bb61.i:                                        ; preds = %if.end37.i
  %31 = zext i8 %rssi_level to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.100)
  switch i8 %rssi_level, label %if.else73.i [
    i8 1, label %if.then65.i
    i8 2, label %if.then71.i
  ]

if.then65.i:                                      ; preds = %sw.bb61.i
  call void @__sanitizer_cov_trace_pc() #10
  %and66.i = and i32 %spec.select.i, 3840
  br label %rtl8723e_update_hal_rate_mask.exit

if.then71.i:                                      ; preds = %sw.bb61.i
  call void @__sanitizer_cov_trace_pc() #10
  %and72.i = and i32 %spec.select.i, 4080
  br label %rtl8723e_update_hal_rate_mask.exit

if.else73.i:                                      ; preds = %sw.bb61.i
  call void @__sanitizer_cov_trace_pc() #10
  %and74.i = and i32 %spec.select.i, 4085
  br label %rtl8723e_update_hal_rate_mask.exit

sw.bb77.i:                                        ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  %and78.i = and i32 %spec.select.i, 4080
  br label %rtl8723e_update_hal_rate_mask.exit

sw.bb79.i:                                        ; preds = %if.end37.i.sw.bb79.i_crit_edge, %if.end37.i.sw.bb79.i_crit_edge21
  %rf_type.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 4
  %32 = ptrtoint ptr %rf_type.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %rf_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %33)
  %switch.i = icmp ult i8 %33, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %curtxbw_40mhz.0.i)
  %tobool89.not.i = icmp eq i8 %curtxbw_40mhz.0.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %rssi_level)
  %switch.selectcmp15.i = icmp eq i8 %rssi_level, 2
  br i1 %switch.i, label %if.then88.i, label %if.else123.i

if.then88.i:                                      ; preds = %sw.bb79.i
  br i1 %tobool89.not.i, label %if.else106.i, label %if.then90.i

if.then90.i:                                      ; preds = %if.then88.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.select.i = select i1 %switch.selectcmp15.i, i32 1044480, i32 1044501
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %rssi_level)
  %switch.selectcmp13.i = icmp eq i8 %rssi_level, 1
  %switch.select14.i = select i1 %switch.selectcmp13.i, i32 983040, i32 %switch.select.i
  br label %if.end158.i

if.else106.i:                                     ; preds = %if.then88.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.select16.i = select i1 %switch.selectcmp15.i, i32 1044480, i32 1044485
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %rssi_level)
  %switch.selectcmp17.i = icmp eq i8 %rssi_level, 1
  %switch.select18.i = select i1 %switch.selectcmp17.i, i32 983040, i32 %switch.select16.i
  br label %lor.lhs.false163.i

if.else123.i:                                     ; preds = %sw.bb79.i
  br i1 %tobool89.not.i, label %if.else141.i, label %if.then125.i

if.then125.i:                                     ; preds = %if.else123.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.select20.i = select i1 %switch.selectcmp15.i, i32 252702720, i32 252702741
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %rssi_level)
  %switch.selectcmp21.i = icmp eq i8 %rssi_level, 1
  %switch.select22.i = select i1 %switch.selectcmp21.i, i32 252641280, i32 %switch.select20.i
  br label %if.end158.i

if.else141.i:                                     ; preds = %if.else123.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.select24.i = select i1 %switch.selectcmp15.i, i32 252702720, i32 252702725
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %rssi_level)
  %switch.selectcmp25.i = icmp eq i8 %rssi_level, 1
  %switch.select26.i = select i1 %switch.selectcmp25.i, i32 252641280, i32 %switch.select24.i
  br label %lor.lhs.false163.i

if.end158.i:                                      ; preds = %if.then125.i, %if.then90.i
  %.sink.i = phi i32 [ %switch.select14.i, %if.then90.i ], [ %switch.select22.i, %if.then125.i ]
  %and136.i = and i32 %.sink.i, %or53.i
  %34 = and i16 %5, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool162.not.i = icmp eq i16 %34, 0
  br i1 %tobool162.not.i, label %if.end158.i.rtl8723e_update_hal_rate_mask.exit_crit_edge, label %if.end158.i.if.then168.i_crit_edge

if.end158.i.if.then168.i_crit_edge:               ; preds = %if.end158.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then168.i

if.end158.i.rtl8723e_update_hal_rate_mask.exit_crit_edge: ; preds = %if.end158.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8723e_update_hal_rate_mask.exit

lor.lhs.false163.i:                               ; preds = %if.else141.i, %if.else106.i
  %.sink12.i = phi i32 [ %switch.select18.i, %if.else106.i ], [ %switch.select26.i, %if.else141.i ]
  %and152.i = and i32 %.sink12.i, %or53.i
  %35 = and i16 %5, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool167.not.i = icmp eq i16 %35, 0
  br i1 %tobool167.not.i, label %lor.lhs.false163.i.rtl8723e_update_hal_rate_mask.exit_crit_edge, label %lor.lhs.false163.i.if.then168.i_crit_edge

lor.lhs.false163.i.if.then168.i_crit_edge:        ; preds = %lor.lhs.false163.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then168.i

lor.lhs.false163.i.rtl8723e_update_hal_rate_mask.exit_crit_edge: ; preds = %lor.lhs.false163.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8723e_update_hal_rate_mask.exit

if.then168.i:                                     ; preds = %lor.lhs.false163.i.if.then168.i_crit_edge, %if.end158.i.if.then168.i_crit_edge
  %ratr_bitmap.26.i = phi i32 [ %and152.i, %lor.lhs.false163.i.if.then168.i_crit_edge ], [ %and136.i, %if.end158.i.if.then168.i_crit_edge ]
  %trunc.i = trunc i32 %macid.0.i to i16
  %36 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.101)
  switch i16 %trunc.i, label %sw.epilog.fold.split.i [
    i16 0, label %if.then168.i.rtl8723e_update_hal_rate_mask.exit_crit_edge
    i16 1, label %if.then177.i
  ]

if.then168.i.rtl8723e_update_hal_rate_mask.exit_crit_edge: ; preds = %if.then168.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8723e_update_hal_rate_mask.exit

if.then177.i:                                     ; preds = %if.then168.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8723e_update_hal_rate_mask.exit

sw.default.i:                                     ; preds = %if.end37.i
  %rf_type181.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 4
  %37 = ptrtoint ptr %rf_type181.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %rf_type181.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %38)
  %cmp183.i = icmp eq i8 %38, 1
  br i1 %cmp183.i, label %if.then185.i, label %if.else187.i

if.then185.i:                                     ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #10
  %and186.i = and i32 %or53.i, 1044735
  br label %rtl8723e_update_hal_rate_mask.exit

if.else187.i:                                     ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #10
  %and188.i = and i32 %or53.i, 252702975
  br label %rtl8723e_update_hal_rate_mask.exit

sw.epilog.fold.split.i:                           ; preds = %if.then168.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8723e_update_hal_rate_mask.exit

rtl8723e_update_hal_rate_mask.exit:               ; preds = %sw.epilog.fold.split.i, %if.else187.i, %if.then185.i, %if.then177.i, %if.then168.i.rtl8723e_update_hal_rate_mask.exit_crit_edge, %lor.lhs.false163.i.rtl8723e_update_hal_rate_mask.exit_crit_edge, %if.end158.i.rtl8723e_update_hal_rate_mask.exit_crit_edge, %sw.bb77.i, %if.else73.i, %if.then71.i, %if.then65.i, %if.else58.i, %if.then56.i
  %ratr_bitmap.3.i = phi i32 [ %and186.i, %if.then185.i ], [ %and188.i, %if.else187.i ], [ %ratr_bitmap.26.i, %if.then177.i ], [ %and152.i, %lor.lhs.false163.i.rtl8723e_update_hal_rate_mask.exit_crit_edge ], [ %and78.i, %sw.bb77.i ], [ %and66.i, %if.then65.i ], [ %and72.i, %if.then71.i ], [ %and74.i, %if.else73.i ], [ %and57.i, %if.then56.i ], [ %and59.i, %if.else58.i ], [ %ratr_bitmap.26.i, %if.then168.i.rtl8723e_update_hal_rate_mask.exit_crit_edge ], [ %ratr_bitmap.26.i, %sw.epilog.fold.split.i ], [ %and136.i, %if.end158.i.rtl8723e_update_hal_rate_mask.exit_crit_edge ]
  %ratr_index.0.i = phi i8 [ 0, %if.then185.i ], [ 0, %if.else187.i ], [ 0, %if.then177.i ], [ 0, %lor.lhs.false163.i.rtl8723e_update_hal_rate_mask.exit_crit_edge ], [ 5, %sw.bb77.i ], [ 4, %if.then65.i ], [ 4, %if.then71.i ], [ 4, %if.else73.i ], [ 6, %if.then56.i ], [ 6, %if.else58.i ], [ 0, %if.then168.i.rtl8723e_update_hal_rate_mask.exit_crit_edge ], [ 0, %sw.epilog.fold.split.i ], [ 0, %if.end158.i.rtl8723e_update_hal_rate_mask.exit_crit_edge ]
  %shortgi.0.off0.i = phi i32 [ 0, %if.then185.i ], [ 0, %if.else187.i ], [ 0, %if.then177.i ], [ 0, %lor.lhs.false163.i.rtl8723e_update_hal_rate_mask.exit_crit_edge ], [ 0, %sw.bb77.i ], [ 0, %if.then65.i ], [ 0, %if.then71.i ], [ 0, %if.else73.i ], [ 0, %if.then56.i ], [ 0, %if.else58.i ], [ 32, %if.then168.i.rtl8723e_update_hal_rate_mask.exit_crit_edge ], [ 0, %sw.epilog.fold.split.i ], [ 0, %if.end158.i.rtl8723e_update_hal_rate_mask.exit_crit_edge ]
  %39 = getelementptr inbounds [5 x i8], ptr %rate_mask.i, i32 0, i32 4
  %ratr_index190.i = getelementptr inbounds %struct.rtl_sta_info, ptr %drv_priv.i, i32 0, i32 5
  %40 = ptrtoint ptr %ratr_index190.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %ratr_index.0.i, ptr %ratr_index190.i, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4194304, i32 noundef 3, ptr noundef nonnull @.str.67, i32 noundef %ratr_bitmap.3.i) #8
  %conv192.i = zext i8 %ratr_index.0.i to i32
  %shl193.i = shl nuw nsw i32 %conv192.i, 28
  %or194.i = or i32 %shl193.i, %ratr_bitmap.3.i
  %41 = ptrtoint ptr %rate_mask.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or194.i, ptr %rate_mask.i, align 4
  %or199.i = or i32 %shortgi.0.off0.i, %macid.0.i
  %42 = trunc i32 %or199.i to i8
  %conv201.i = or i8 %42, -128
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv201.i, ptr %39, align 4
  %44 = lshr i32 %or194.i, 24
  %45 = lshr i32 %ratr_bitmap.3.i, 16
  %conv207.i = and i32 %45, 255
  %46 = lshr i32 %ratr_bitmap.3.i, 8
  %conv209.i = and i32 %46, 255
  %conv211.i = and i32 %ratr_bitmap.3.i, 255
  %conv213.i = zext i8 %conv201.i to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4194304, i32 noundef 3, ptr noundef nonnull @.str.68, i32 noundef %conv192.i, i32 noundef %ratr_bitmap.3.i, i32 noundef %44, i32 noundef %conv207.i, i32 noundef %conv209.i, i32 noundef %conv211.i, i32 noundef %conv213.i) #8
  call void @rtl8723e_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 6, i32 noundef 5, ptr noundef nonnull %rate_mask.i) #8
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %rate_mask.i) #8
  br label %if.end

if.else:                                          ; preds = %entry
  %ht_enable.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 38
  %47 = ptrtoint ptr %ht_enable.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %ht_enable.i, align 8
  %bw_40.i6 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 41
  %49 = ptrtoint ptr %bw_40.i6 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %bw_40.i6, align 1
  %ht_cap.i7 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3
  %51 = ptrtoint ptr %ht_cap.i7 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %ht_cap.i7, align 4
  %mode.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 42
  %53 = ptrtoint ptr %mode.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %mode.i, align 4
  %current_bandtype.i8 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 53
  %55 = ptrtoint ptr %current_bandtype.i8 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %current_bandtype.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %56)
  %cmp.i = icmp eq i32 %56, 1
  br i1 %cmp.i, label %if.then.i11, label %if.else.i

if.then.i11:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i9 = getelementptr [6 x i32], ptr %sta, i32 0, i32 1
  %57 = ptrtoint ptr %arrayidx.i9 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.i9, align 4
  %shl.i10 = shl i32 %58, 4
  br label %if.end.i

if.else.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %sta to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %sta, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i11
  %ratr_value.0.i = phi i32 [ %shl.i10, %if.then.i11 ], [ %60, %if.else.i ]
  %opmode.i12 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 8
  %61 = ptrtoint ptr %opmode.i12 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %opmode.i12, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %62)
  %cmp16.i = icmp eq i32 %62, 1
  %spec.select.i13 = select i1 %cmp16.i, i32 4095, i32 %ratr_value.0.i
  %mcs.i14 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4
  %arrayidx21.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4, i32 0, i32 1
  %63 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx21.i, align 1
  %conv22.i = zext i8 %64 to i32
  %shl23.i = shl nuw nsw i32 %conv22.i, 20
  %65 = ptrtoint ptr %mcs.i14 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %mcs.i14, align 1
  %conv28.i = zext i8 %66 to i32
  %shl29.i = shl nuw nsw i32 %conv28.i, 12
  %or.i15 = or i32 %shl23.i, %spec.select.i13
  %or30.i = or i32 %or.i15, %shl29.i
  %67 = zext i16 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.102)
  switch i16 %54, label %sw.default.i19 [
    i16 2, label %sw.bb.i16
    i16 4, label %sw.bb38.i
    i16 16, label %if.end.i.sw.bb40.i_crit_edge
    i16 32, label %if.end.i.sw.bb40.i_crit_edge22
  ]

if.end.i.sw.bb40.i_crit_edge22:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb40.i

if.end.i.sw.bb40.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb40.i

sw.bb.i16:                                        ; preds = %if.end.i
  %and31.i = and i32 %spec.select.i13, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  br i1 %tobool32.not.i, label %if.else35.i, label %if.then33.i17

if.then33.i17:                                    ; preds = %sw.bb.i16
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

sw.bb40.i:                                        ; preds = %if.end.i.sw.bb40.i_crit_edge, %if.end.i.sw.bb40.i_crit_edge22
  %rf_type.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 4
  %68 = ptrtoint ptr %rf_type.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %rf_type.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %69)
  %70 = icmp ult i8 %69, 2
  %ratr_mask.0.i = select i1 %70, i32 1044485, i32 252702725
  %and51.i = and i32 %ratr_mask.0.i, %or30.i
  br label %sw.epilog.i

sw.default.i19:                                   ; preds = %if.end.i
  %rf_type.i18 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 4
  %71 = ptrtoint ptr %rf_type.i18 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %rf_type.i18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %72)
  %cmp53.i = icmp eq i8 %72, 1
  br i1 %cmp53.i, label %if.then55.i, label %if.else57.i

if.then55.i:                                      ; preds = %sw.default.i19
  call void @__sanitizer_cov_trace_pc() #10
  %and56.i = and i32 %or30.i, 1044735
  br label %sw.epilog.i

if.else57.i:                                      ; preds = %sw.default.i19
  call void @__sanitizer_cov_trace_pc() #10
  %and58.i = and i32 %or30.i, 252702975
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.else57.i, %if.then55.i, %sw.bb40.i, %sw.bb38.i, %if.else35.i, %if.then33.i17
  %ratr_value.2.i = phi i32 [ %and56.i, %if.then55.i ], [ %and58.i, %if.else57.i ], [ %and51.i, %sw.bb40.i ], [ %and39.i, %sw.bb38.i ], [ %and34.i, %if.then33.i17 ], [ %and36.i, %if.else35.i ]
  %b_nmode.0.i = phi i8 [ %48, %if.then55.i ], [ %48, %if.else57.i ], [ 1, %sw.bb40.i ], [ %48, %sw.bb38.i ], [ %48, %if.then33.i17 ], [ %48, %if.else35.i ]
  %bt_coexistence.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 9
  %73 = ptrtoint ptr %bt_coexistence.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %bt_coexistence.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool61.not.i = icmp eq i8 %74, 0
  br i1 %tobool61.not.i, label %sw.epilog.i.if.end89.i_crit_edge, label %land.lhs.true.i

sw.epilog.i.if.end89.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89.i

land.lhs.true.i:                                  ; preds = %sw.epilog.i
  %bt_coexist_type.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 11
  %75 = ptrtoint ptr %bt_coexist_type.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %bt_coexist_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %76)
  %cmp64.i = icmp eq i8 %76, 3
  br i1 %cmp64.i, label %land.lhs.true66.i, label %land.lhs.true.i.if.end89.i_crit_edge

land.lhs.true.i.if.end89.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89.i

land.lhs.true66.i:                                ; preds = %land.lhs.true.i
  %bt_cur_state.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 13
  %77 = ptrtoint ptr %bt_cur_state.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %bt_cur_state.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool69.not.i = icmp eq i8 %78, 0
  br i1 %tobool69.not.i, label %land.lhs.true66.i.if.end89.i_crit_edge, label %land.lhs.true70.i

land.lhs.true66.i.if.end89.i_crit_edge:           ; preds = %land.lhs.true66.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89.i

land.lhs.true70.i:                                ; preds = %land.lhs.true66.i
  %bt_ant_isolation.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 14
  %79 = ptrtoint ptr %bt_ant_isolation.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %bt_ant_isolation.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool73.not.i = icmp eq i8 %80, 0
  br i1 %tobool73.not.i, label %land.lhs.true70.i.if.end89.i_crit_edge, label %land.lhs.true74.i

land.lhs.true70.i.if.end89.i_crit_edge:           ; preds = %land.lhs.true70.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89.i

land.lhs.true74.i:                                ; preds = %land.lhs.true70.i
  %bt_service.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 16
  %81 = ptrtoint ptr %bt_service.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %bt_service.i, align 4
  %83 = zext i8 %82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.103)
  switch i8 %82, label %land.lhs.true74.i.if.end89.i_crit_edge [
    i8 0, label %land.lhs.true74.i.if.then85.i_crit_edge
    i8 7, label %land.lhs.true74.i.if.then85.i_crit_edge23
  ]

land.lhs.true74.i.if.then85.i_crit_edge23:        ; preds = %land.lhs.true74.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then85.i

land.lhs.true74.i.if.then85.i_crit_edge:          ; preds = %land.lhs.true74.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then85.i

land.lhs.true74.i.if.end89.i_crit_edge:           ; preds = %land.lhs.true74.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89.i

if.then85.i:                                      ; preds = %land.lhs.true74.i.if.then85.i_crit_edge, %land.lhs.true74.i.if.then85.i_crit_edge23
  %and86.i = and i32 %ratr_value.2.i, 268423104
  br label %if.end89.i

if.end89.i:                                       ; preds = %if.then85.i, %land.lhs.true74.i.if.end89.i_crit_edge, %land.lhs.true70.i.if.end89.i_crit_edge, %land.lhs.true66.i.if.end89.i_crit_edge, %land.lhs.true.i.if.end89.i_crit_edge, %sw.epilog.i.if.end89.i_crit_edge
  %ratr_value.3.i = phi i32 [ %and86.i, %if.then85.i ], [ %ratr_value.2.i, %land.lhs.true74.i.if.end89.i_crit_edge ], [ %ratr_value.2.i, %land.lhs.true70.i.if.end89.i_crit_edge ], [ %ratr_value.2.i, %land.lhs.true66.i.if.end89.i_crit_edge ], [ %ratr_value.2.i, %land.lhs.true.i.if.end89.i_crit_edge ], [ %ratr_value.2.i, %sw.epilog.i.if.end89.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %b_nmode.0.i)
  %tobool91.not.i = icmp eq i8 %b_nmode.0.i, 0
  br i1 %tobool91.not.i, label %if.end89.i.if.end125.i_crit_edge, label %land.lhs.true92.i

if.end89.i.if.end125.i_crit_edge:                 ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end125.i

land.lhs.true92.i:                                ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool94.not.i = icmp eq i8 %50, 0
  %84 = and i16 %52, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %84)
  %tobool97.not.i = icmp eq i16 %84, 0
  %or.cond.i = select i1 %tobool94.not.i, i1 true, i1 %tobool97.not.i
  br i1 %or.cond.i, label %lor.lhs.false98.i, label %land.lhs.true92.i.if.then103.i_crit_edge

land.lhs.true92.i.if.then103.i_crit_edge:         ; preds = %land.lhs.true92.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then103.i

lor.lhs.false98.i:                                ; preds = %land.lhs.true92.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool99.not.i = icmp ne i8 %50, 0
  %85 = and i16 %52, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %85)
  %tobool102.not.i = icmp eq i16 %85, 0
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
  %86 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %87(ptr noundef %1, i32 noundef 1092, i32 noundef %ratr_value.4.i) #8
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %88 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %write_readback.i.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool.not.i.i = icmp eq i8 %91, 0
  br i1 %tobool.not.i.i, label %if.end125.i.rtl8723e_update_hal_rate_table.exit_crit_edge, label %if.then.i.i

if.end125.i.rtl8723e_update_hal_rate_table.exit_crit_edge: ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8723e_update_hal_rate_table.exit

if.then.i.i:                                      ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %92 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i.i = tail call i32 %93(ptr noundef %1, i32 noundef 1092) #8
  br label %rtl8723e_update_hal_rate_table.exit

rtl8723e_update_hal_rate_table.exit:              ; preds = %if.then.i.i, %if.end125.i.rtl8723e_update_hal_rate_table.exit_crit_edge
  %read32_sync.i171.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %94 = ptrtoint ptr %read32_sync.i171.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %read32_sync.i171.i, align 4
  %call.i172.i = tail call i32 %95(ptr noundef %1, i32 noundef 1092) #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4194304, i32 noundef 3, ptr noundef nonnull @.str.69, i32 noundef %call.i172.i) #8
  br label %if.end

if.end:                                           ; preds = %rtl8723e_update_hal_rate_table.exit, %rtl8723e_update_hal_rate_mask.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723e_update_channel_access_setting(ptr noundef %hw) local_unnamed_addr #0 align 64 {
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
define dso_local zeroext i1 @rtl8723e_gpio_radio_on_off_checking(ptr nocapture noundef readonly %hw, ptr nocapture noundef writeonly %valid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %being_init_adapter = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 4
  %2 = ptrtoint ptr %being_init_adapter to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %being_init_adapter, align 1, !range !182
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
  %5 = load i8, ptr %swrf_processing, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %rf_ps_lock = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 7, i32 5
  tail call void @_raw_spin_lock(ptr noundef %rf_ps_lock) #8
  %rfchange_inprogress = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 2
  %6 = ptrtoint ptr %rfchange_inprogress to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rfchange_inprogress, align 2, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not = icmp eq i8 %7, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %rf_ps_lock) #8
  br label %cleanup

if.else:                                          ; preds = %if.end4
  %8 = ptrtoint ptr %rfchange_inprogress to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %rfchange_inprogress, align 2
  tail call void @_raw_spin_unlock(ptr noundef %rf_ps_lock) #8
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %9 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %10(ptr noundef %1, i32 noundef 98) #8
  %11 = and i8 %call.i, -3
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %12 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write8_async.i, align 4
  tail call void %13(ptr noundef %1, i32 noundef 98, i8 noundef zeroext %11) #8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %14 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %write_readback.i, align 1, !range !182
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
  %call.i95 = tail call zeroext i8 %19(ptr noundef %1, i32 noundef 98) #8
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %if.else.rtl_write_byte.exit_crit_edge
  %20 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read8_sync.i, align 4
  %call.i97 = tail call zeroext i8 %21(ptr noundef %1, i32 noundef 96) #8
  %polarity_ctl = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 62
  %22 = ptrtoint ptr %polarity_ctl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %polarity_ctl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool15.not = icmp eq i32 %23, 0
  %24 = and i8 %call.i97, 2
  %25 = xor i8 %24, 2
  %e_rfpowerstate_toset.0.in = select i1 %tobool15.not, i8 %25, i8 %24
  %hwradiooff = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 4
  %26 = ptrtoint ptr %hwradiooff to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %hwradiooff, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool26.not = icmp ne i8 %27, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %e_rfpowerstate_toset.0.in)
  %cmp = icmp eq i8 %e_rfpowerstate_toset.0.in, 0
  %or.cond = select i1 %tobool26.not, i1 %cmp, i1 false
  br i1 %or.cond, label %rtl_write_byte.exit.if.then42_crit_edge, label %if.else31

rtl_write_byte.exit.if.then42_crit_edge:          ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then42

if.else31:                                        ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool33.not = icmp eq i8 %27, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %e_rfpowerstate_toset.0.in)
  %cmp35 = icmp eq i8 %e_rfpowerstate_toset.0.in, 2
  %or.cond93 = select i1 %tobool33.not, i1 %cmp35, i1 false
  br i1 %or.cond93, label %if.else31.if.then42_crit_edge, label %if.else48

if.else31.if.then42_crit_edge:                    ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then42

if.then42:                                        ; preds = %if.else31.if.then42_crit_edge, %rtl_write_byte.exit.if.then42_crit_edge
  %.str.26.sink = phi ptr [ @.str.25, %rtl_write_byte.exit.if.then42_crit_edge ], [ @.str.26, %if.else31.if.then42_crit_edge ]
  %storemerge = phi i8 [ 0, %rtl_write_byte.exit.if.then42_crit_edge ], [ 1, %if.else31.if.then42_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 3, ptr noundef nonnull %.str.26.sink) #8
  %28 = ptrtoint ptr %hwradiooff to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %storemerge, ptr %hwradiooff, align 4
  br label %if.end58

if.else48:                                        ; preds = %if.else31
  %reg_rfps_level = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 20
  %29 = ptrtoint ptr %reg_rfps_level to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %reg_rfps_level, align 4
  %and49 = and i32 %30, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.else48.if.end58_crit_edge, label %if.then51

if.else48.if.end58_crit_edge:                     ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then51:                                        ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #10
  %cur_ps_level = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 19
  %31 = ptrtoint ptr %cur_ps_level to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cur_ps_level, align 4
  %or = or i32 %32, 8
  store i32 %or, ptr %cur_ps_level, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then51, %if.else48.if.end58_crit_edge, %if.then42
  tail call void @_raw_spin_lock(ptr noundef %rf_ps_lock) #8
  %33 = ptrtoint ptr %rfchange_inprogress to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %rfchange_inprogress, align 2
  tail call void @_raw_spin_unlock(ptr noundef %rf_ps_lock) #8
  %34 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %valid, align 1
  %35 = ptrtoint ptr %hwradiooff to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %hwradiooff, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool60.not = icmp eq i8 %36, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then6 ], [ %tobool60.not, %if.end58 ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723e_set_key(ptr noundef %hw, i32 noundef %key_index, ptr noundef %p_macaddr, i1 noundef zeroext %is_group, i8 noundef zeroext %enc_algo, i1 noundef zeroext %is_wepkey, i1 noundef zeroext %clear_all) local_unnamed_addr #0 align 64 {
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %conv21) #8
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
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.rtl8723e_set_key, i32 0, i32 %14
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
  %17 = load i8, ptr %use_defaultkey, align 2, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool29.not = icmp eq i8 %17, 0
  br i1 %tobool29.not, label %if.else34, label %lor.lhs.false.if.then31_crit_edge

lor.lhs.false.if.then31_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31

if.then31:                                        ; preds = %lor.lhs.false.if.then31_crit_edge, %sw.epilog.if.then31_crit_edge
  %arrayidx32 = getelementptr [4 x [6 x i8]], ptr @rtl8723e_set_key.cam_const_addr, i32 0, i32 %key_index
  br label %if.end50

if.else34:                                        ; preds = %lor.lhs.false
  br i1 %is_group, label %if.else34.if.end50_crit_edge, label %if.else37

if.else34.if.end50_crit_edge:                     ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.else37:                                        ; preds = %if.else34
  %opmode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 8
  %18 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %opmode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp38 = icmp eq i32 %19, 3
  br i1 %cmp38, label %if.then40, label %if.else37.if.end50_crit_edge

if.else37.if.end50_crit_edge:                     ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then40:                                        ; preds = %if.else37
  %call = tail call zeroext i8 @rtl_cam_get_free_entry(ptr noundef %hw, ptr noundef %p_macaddr) #8
  %conv41 = zext i8 %call to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %call)
  %cmp42 = icmp ugt i8 %call, 31
  br i1 %cmp42, label %do.end, label %if.then40.if.end50_crit_edge

if.then40.if.end50_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

do.end:                                           ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #11
  br label %cleanup

if.end50:                                         ; preds = %if.then40.if.end50_crit_edge, %if.else37.if.end50_crit_edge, %if.else34.if.end50_crit_edge, %if.then31
  %macaddr.0 = phi ptr [ %arrayidx32, %if.then31 ], [ @rtl8723e_set_key.cam_const_broad, %if.else34.if.end50_crit_edge ], [ %p_macaddr, %if.else37.if.end50_crit_edge ], [ %p_macaddr, %if.then40.if.end50_crit_edge ]
  %entry_id.1 = phi i32 [ %key_index, %if.then31 ], [ %key_index, %if.else34.if.end50_crit_edge ], [ 4, %if.else37.if.end50_crit_edge ], [ %conv41, %if.then40.if.end50_crit_edge ]
  %is_pairwise.0.off0 = phi i1 [ false, %if.then31 ], [ false, %if.else34.if.end50_crit_edge ], [ true, %if.else37.if.end50_crit_edge ], [ true, %if.then40.if.end50_crit_edge ]
  %key_index.addr.0 = phi i32 [ %key_index, %if.then31 ], [ %key_index, %if.else34.if.end50_crit_edge ], [ 0, %if.else37.if.end50_crit_edge ], [ 0, %if.then40.if.end50_crit_edge ]
  %arrayidx53 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 8, i32 %key_index.addr.0
  %20 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx53, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp55 = icmp eq i8 %21, 0
  br i1 %cmp55, label %if.then57, label %if.else64

if.then57:                                        ; preds = %if.end50
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 3, ptr noundef nonnull @.str.30, i32 noundef %entry_id.1) #8
  %opmode58 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 8
  %22 = ptrtoint ptr %opmode58 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %opmode58, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %cmp59 = icmp eq i32 %23, 3
  br i1 %cmp59, label %if.then61, label %if.then57.if.end62_crit_edge

if.then57.if.end62_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

if.then61:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rtl_cam_del_entry(ptr noundef %hw, ptr noundef %p_macaddr) #8
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.then57.if.end62_crit_edge
  %call63 = tail call i32 @rtl_cam_delete_one_entry(ptr noundef %hw, ptr noundef %p_macaddr, i32 noundef %entry_id.1) #8
  br label %cleanup

if.else64:                                        ; preds = %if.end50
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 3, ptr noundef nonnull @.str.31) #8
  br i1 %is_pairwise.0.off0, label %if.then66, label %if.else73

if.then66:                                        ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 3, ptr noundef nonnull @.str.32) #8
  %arrayidx70 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 7, i32 %key_index.addr.0
  %call72 = tail call zeroext i8 @rtl_cam_add_one_entry(ptr noundef %hw, ptr noundef %macaddr.0, i32 noundef %key_index.addr.0, i32 noundef %entry_id.1, i32 noundef %enc_algo.addr.0, i32 noundef 0, ptr noundef %arrayidx70) #8
  br label %cleanup

if.else73:                                        ; preds = %if.else64
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 3, ptr noundef nonnull @.str.33) #8
  %opmode74 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 8
  %24 = ptrtoint ptr %opmode74 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %opmode74, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp75 = icmp eq i32 %25, 1
  br i1 %cmp75, label %if.then77, label %if.else73.if.end85_crit_edge

if.else73.if.end85_crit_edge:                     ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

if.then77:                                        ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #10
  %dev_addr = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 19
  %arrayidx82 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 7, i32 %entry_id.1
  %call84 = tail call zeroext i8 @rtl_cam_add_one_entry(ptr noundef %hw, ptr noundef %dev_addr, i32 noundef 0, i32 noundef 4, i32 noundef %enc_algo.addr.0, i32 noundef 0, ptr noundef %arrayidx82) #8
  br label %if.end85

if.end85:                                         ; preds = %if.then77, %if.else73.if.end85_crit_edge
  %arrayidx89 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 7, i32 %entry_id.1
  %call91 = tail call zeroext i8 @rtl_cam_add_one_entry(ptr noundef %hw, ptr noundef %macaddr.0, i32 noundef %key_index.addr.0, i32 noundef %entry_id.1, i32 noundef %enc_algo.addr.0, i32 noundef 0, ptr noundef %arrayidx89) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end85, %if.then66, %if.end62, %do.end, %if.then
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723e_read_bt_coexist_info_from_hwpg(ptr nocapture noundef readonly %hw, i1 noundef zeroext %auto_load_fail, ptr nocapture noundef readonly %hwinfo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  br i1 %auto_load_fail, label %if.else18, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %2 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read32_sync.i, align 4
  %call.i = tail call i32 %3(ptr noundef %1, i32 noundef 104) #8
  %and = lshr i32 %call.i, 18
  %4 = trunc i32 %and to i8
  %5 = and i8 %4, 1
  %6 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %5, ptr %6, align 8
  %arrayidx = getelementptr i8, ptr %hwinfo, i32 46
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %eeprom_bt_type = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 5
  %10 = ptrtoint ptr %eeprom_bt_type to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 6, ptr %eeprom_bt_type, align 1
  %and6 = and i8 %9, 1
  %eeprom_bt_ant_num = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 6
  %11 = ptrtoint ptr %eeprom_bt_ant_num to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %and6, ptr %eeprom_bt_ant_num, align 2
  %and10 = lshr i8 %9, 4
  %12 = and i8 %and10, 1
  %eeprom_bt_ant_isol = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 7
  %13 = ptrtoint ptr %eeprom_bt_ant_isol to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %eeprom_bt_ant_isol, align 1
  %14 = lshr i8 %9, 5
  %15 = and i8 %14, 1
  br label %if.end29

if.else18:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %eeprom_bt_coexist20 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 4
  %16 = ptrtoint ptr %eeprom_bt_coexist20 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %eeprom_bt_coexist20, align 8
  %eeprom_bt_type22 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 5
  %17 = ptrtoint ptr %eeprom_bt_type22 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 6, ptr %eeprom_bt_type22, align 1
  %eeprom_bt_ant_num24 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 6
  %18 = ptrtoint ptr %eeprom_bt_ant_num24 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %eeprom_bt_ant_num24, align 2
  %eeprom_bt_ant_isol26 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 7
  %19 = ptrtoint ptr %eeprom_bt_ant_isol26 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %eeprom_bt_ant_isol26, align 1
  br label %if.end29

if.end29:                                         ; preds = %if.else18, %if.then
  %.sink = phi i8 [ 0, %if.else18 ], [ %15, %if.then ]
  %eeprom_bt_radio_shared28 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 8
  %20 = ptrtoint ptr %eeprom_bt_radio_shared28 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %.sink, ptr %eeprom_bt_radio_shared28, align 4
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
  %eeprom_bt_ant_isol.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 49, i32 7
  %32 = ptrtoint ptr %eeprom_bt_ant_isol.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %eeprom_bt_ant_isol.i, align 1
  %bt_ant_isolation.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 49, i32 14
  %34 = ptrtoint ptr %bt_ant_isolation.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %bt_ant_isolation.i, align 2
  %eeprom_bt_radio_shared.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 49, i32 8
  %35 = ptrtoint ptr %eeprom_bt_radio_shared.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %eeprom_bt_radio_shared.i, align 4
  %bt_radio_shared_type.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 49, i32 17
  %37 = ptrtoint ptr %bt_radio_shared_type.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %bt_radio_shared_type.i, align 1
  %conv.i = zext i8 %24 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %22, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.70, i32 noundef %conv.i) #8
  %38 = ptrtoint ptr %bt_coexistence.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %bt_coexistence.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i = icmp eq i8 %39, 0
  br i1 %tobool.not.i, label %if.end29.rtl8723e_bt_var_init.exit_crit_edge, label %if.then.i

if.end29.rtl8723e_bt_var_init.exit_crit_edge:     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl8723e_bt_var_init.exit

if.then.i:                                        ; preds = %if.end29
  %bt_busy_traffic.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 49, i32 26
  %40 = ptrtoint ptr %bt_busy_traffic.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %bt_busy_traffic.i, align 1
  %bt_traffic_mode_set.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 49, i32 27
  %41 = ptrtoint ptr %bt_traffic_mode_set.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %bt_traffic_mode_set.i, align 2
  %bt_non_traffic_mode_set.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 49, i32 28
  %42 = ptrtoint ptr %bt_non_traffic_mode_set.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %bt_non_traffic_mode_set.i, align 1
  %cstate.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 49, i32 32
  %43 = ptrtoint ptr %cstate.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %cstate.i, align 4
  %previous_state.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 49, i32 33
  %44 = ptrtoint ptr %previous_state.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %previous_state.i, align 8
  %45 = ptrtoint ptr %bt_ant_num.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %bt_ant_num.i, align 2
  %47 = zext i8 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.104)
  switch i8 %46, label %if.then.i.if.end30.i_crit_edge [
    i8 0, label %if.then.i.if.end30.sink.split.i_crit_edge
    i8 1, label %if.then29.i
  ]

if.then.i.if.end30.sink.split.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.sink.split.i

if.then.i.if.end30.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.i

if.then29.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.sink.split.i

if.end30.sink.split.i:                            ; preds = %if.then29.i, %if.then.i.if.end30.sink.split.i_crit_edge
  %.str.72.sink.i = phi ptr [ @.str.72, %if.then29.i ], [ @.str.71, %if.then.i.if.end30.sink.split.i_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %22, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull %.str.72.sink.i) #8
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.end30.sink.split.i, %if.then.i.if.end30.i_crit_edge
  %48 = ptrtoint ptr %bt_coexist_type.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %bt_coexist_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %49)
  %50 = icmp ult i8 %49, 6
  br i1 %50, label %switch.lookup, label %if.end30.i.sw.epilog.i_crit_edge

if.end30.i.sw.epilog.i_crit_edge:                 ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  %51 = sext i8 %49 to i32
  %switch.gep = getelementptr inbounds [6 x ptr], ptr @switch.table.rtl8723e_read_bt_coexist_info_from_hwpg, i32 0, i32 %51
  %52 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %52)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %if.end30.i.sw.epilog.i_crit_edge
  %.str.79.sink.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.79, %if.end30.i.sw.epilog.i_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %22, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull %.str.79.sink.i) #8
  %53 = ptrtoint ptr %bt_ant_isolation.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %bt_ant_isolation.i, align 2
  %conv41.i = zext i8 %54 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %22, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.80, i32 noundef %conv41.i) #8
  %55 = ptrtoint ptr %bt_radio_shared_type.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %bt_radio_shared_type.i, align 1
  %conv44.i = zext i8 %56 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %22, i64 noundef 1073741824, i32 noundef 5, ptr noundef nonnull @.str.81, i32 noundef %conv44.i) #8
  %bt_active_zero_cnt.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 49, i32 41
  %57 = ptrtoint ptr %bt_active_zero_cnt.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %bt_active_zero_cnt.i, align 1
  %cur_bt_disabled.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 49, i32 42
  %58 = ptrtoint ptr %cur_bt_disabled.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %cur_bt_disabled.i, align 2
  %pre_bt_disabled.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 49, i32 43
  %59 = ptrtoint ptr %pre_bt_disabled.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %pre_bt_disabled.i, align 1
  br label %rtl8723e_bt_var_init.exit

rtl8723e_bt_var_init.exit:                        ; preds = %sw.epilog.i, %if.end29.rtl8723e_bt_var_init.exit_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtl8723e_bt_reg_init(ptr nocapture noundef readonly %hw) local_unnamed_addr #4 align 64 {
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
define dso_local void @rtl8723e_suspend(ptr nocapture noundef %hw) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtl8723e_resume(ptr nocapture noundef %hw) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl_hal_pwrseqcmdparsing(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723e_sw_led_on(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723e_sw_led_off(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723ae_firmware_selfreset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl_get_hwinfo(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723e_fill_h2c_cmd(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !28, !30, !32, !34, !35, !37, !39, !41, !43, !45, !47, !49, !50, !51, !52, !54, !56, !58, !60, !62, !64, !65, !66, !67, !69, !71, !73, !75, !77, !79, !80, !81, !82, !84, !86, !88, !90, !92, !94, !95, !96, !97, !99, !101, !103, !105, !107, !108, !109, !110, !112, !113, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170}
!llvm.module.flags = !{!172, !173, !174, !175, !176, !177, !178, !179}
!llvm.ident = !{!180}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 125, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 190, i32 4}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 230, i32 5}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 245, i32 4}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 292, i32 5}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 331, i32 6}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 355, i32 4}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 881, i32 2}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 887, i32 3}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 903, i32 2}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 938, i32 3}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @rtl8723e_hw_init._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @rtl8723e_hw_init._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 945, i32 3}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 1012, i32 3}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 1021, i32 3}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 1230, i32 3}
!34 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 1352, i32 2}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 1365, i32 2}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 1808, i32 2}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 1813, i32 3}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 1816, i32 3}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 1820, i32 3}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 1826, i32 3}
!49 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @rtl8723e_read_eeprom_info._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @rtl8723e_read_eeprom_info._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 2113, i32 3}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 2120, i32 3}
!56 = !{ptr @rtl8723e_set_key.cam_const_addr, !57, !"cam_const_addr", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 2157, i32 12}
!58 = !{ptr @rtl8723e_set_key.cam_const_broad, !59, !"cam_const_broad", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 2163, i32 12}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 2172, i32 3}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 2218, i32 7}
!64 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @rtl8723e_set_key._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @rtl8723e_set_key._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 2231, i32 4}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 2238, i32 4}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 2241, i32 5}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 2249, i32 5}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 706, i32 3}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 551, i32 4}
!79 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @_rtl8723e_llt_write._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @_rtl8723e_llt_write._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 1106, i32 2}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 1112, i32 3}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 1117, i32 3}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 1123, i32 3}
!90 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 1129, i32 3}
!92 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 1133, i32 3}
!94 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @_rtl8723e_set_media_status._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @_rtl8723e_set_media_status._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 1155, i32 3}
!99 = !{ptr @.str.45, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 1072, i32 3}
!101 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 1076, i32 3}
!103 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 1080, i32 3}
!105 = !{ptr @.str.48, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 1084, i32 3}
!107 = !{ptr @.str.49, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @_rtl8723e_read_chip_version._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @_rtl8723e_read_chip_version._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.50, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 1091, i32 2}
!112 = !{ptr @.str.51, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.52, !111, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 1427, i32 4}
!116 = !{ptr @.str.54, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 1433, i32 4}
!118 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 1440, i32 4}
!120 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 1472, i32 4}
!122 = !{ptr @.str.57, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 1511, i32 4}
!124 = !{ptr @.str.58, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 1514, i32 4}
!126 = !{ptr @.str.59, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 1554, i32 3}
!128 = !{ptr @.str.60, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 1558, i32 3}
!130 = !{ptr @.str.61, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 1562, i32 3}
!132 = !{ptr @.str.62, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 1566, i32 3}
!134 = !{ptr @.str.63, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 1574, i32 2}
!136 = !{ptr @.str.64, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 1582, i32 2}
!138 = !{ptr @.str.65, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 1597, i32 2}
!140 = !{ptr @.str.66, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 1784, i32 2}
!142 = !{ptr @.str.67, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 2038, i32 2}
!144 = !{ptr @.str.68, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 2043, i32 2}
!146 = !{ptr @.str.69, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 1916, i32 2}
!148 = !{ptr @.str.70, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 2290, i32 2}
!150 = !{ptr @.str.71, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 2303, i32 4}
!152 = !{ptr @.str.72, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 2306, i32 4}
!154 = !{ptr @.str.73, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 2311, i32 4}
!156 = !{ptr @.str.74, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 2315, i32 4}
!158 = !{ptr @.str.75, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 2319, i32 4}
!160 = !{ptr @.str.76, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 2323, i32 4}
!162 = !{ptr @.str.77, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 2327, i32 4}
!164 = !{ptr @.str.78, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 2331, i32 4}
!166 = !{ptr @.str.79, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 2335, i32 4}
!168 = !{ptr @.str.80, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 2339, i32 3}
!170 = !{ptr @.str.81, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/hw.c", i32 2342, i32 3}
!172 = !{i32 1, !"wchar_size", i32 2}
!173 = !{i32 1, !"min_enum_size", i32 4}
!174 = !{i32 8, !"branch-target-enforcement", i32 0}
!175 = !{i32 8, !"sign-return-address", i32 0}
!176 = !{i32 8, !"sign-return-address-all", i32 0}
!177 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!178 = !{i32 7, !"uwtable", i32 1}
!179 = !{i32 7, !"frame-pointer", i32 2}
!180 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!181 = !{!"auto-init"}
!182 = !{i8 0, i8 2}
!183 = !{i64 954494}
!184 = !{i64 952007}
!185 = !{!"branch_weights", i32 1, i32 2000}
!186 = !{i64 954779}
!187 = !{!"branch_weights", i32 2000, i32 1}
