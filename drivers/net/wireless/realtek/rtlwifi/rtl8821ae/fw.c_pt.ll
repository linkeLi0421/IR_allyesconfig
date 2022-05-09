; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/fw.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/fw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.rtlwifi_firmware_header = type { i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32 }
%struct.rtl_btc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s Firmware SIZE %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Wowlan\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Normal\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Firmware Version(%d), Signature(%#x)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Firmware is not ready to run!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Firmware is ready to run!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Re-Download Firmware failed!!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Re-Download Firmware Success !!\0A\00", [63 x i8] zeroinitializer }, align 32
@rtl8821ae_fill_h2c_cmd.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/wireless/realtek/rtlwifi/rtl8821ae/fw.c\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"rtl8821ae: error H2C cmd because of Fw download fail!!!\0A\00", [39 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"_8051Reset8812ae(): 8051 reset success .\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"FW LPS mode = %d (coex:%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"rtl92c_set_fw_pwrmode(): u1_h2c_set_pwrmode\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"enable(%d)\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"wowlan mode: cmd 0x80: Content:\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"enable=%d, ARP offload=%d, GTK offload=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"remote_wake_ctrl: cmd 0x4: Content:\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Enable(%d)\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"keep alive: cmd 0x3: Content:\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"disconnect_decision_ctrl: cmd 0x4: Content:\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"PairwiseEncAlgorithm=%d, GroupEncAlgorithm=%d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"rtl8821ae_set_global_info: cmd 0x82:\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"rtl8812ae_set_fw_rsvdpagepkt(): packet data\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"H2C_RSVDPAGE:\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wowlan H2C_RSVDPAGE:\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Set RSVD page location to Fw FAIL!!!!!!.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"rtl8821ae_set_fw_rsvdpagepkt(): packet data\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Set RSVD page location to Fw.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"P2P_PS_DISABLE\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"P2P_PS_ENABLE\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"P2P_PS_SCAN\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"P2P_PS_SCAN_DONE\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"FW size is %d bytes,\0A\00", [42 x i8] zeroinitializer }, align 32
@_rtl8821ae_write_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.8, i32 50, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013rtl8821ae: Page numbers should not greater then 8\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"_rtl8821ae_write_fw\00", [44 x i8] zeroinitializer }, align 32
@_rtl8821ae_write_fw._entry_ptr = internal global ptr @_rtl8821ae_write_fw._entry, section ".printk_index", align 4
@.str.35 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"chksum report fail! REG_MCUFWDL:0x%08x .\0A\00", [54 x i8] zeroinitializer }, align 32
@_rtl8821ae_fw_free_to_go._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.8, i32 100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013rtl8821ae: Polling FW ready fail!! REG_MCUFWDL:0x%08x .\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"_rtl8821ae_fw_free_to_go\00", [39 x i8] zeroinitializer }, align 32
@_rtl8821ae_fw_free_to_go._entry_ptr = internal global ptr @_rtl8821ae_fw_free_to_go._entry, section ".printk_index", align 4
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"come in\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"H2C set in progress! Wait to set..element_id(%d).\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Wait 100 us (%d times)...\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"switch case %#x not processed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Waiting too long for FW read clear HMEBox(%d)!\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Waiting for FW read clear HMEBox(%d)!!! 0x130 = %2x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Write H2C register BOX[%d] fail!!!!! Fw do not read.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Write element_id box_reg(%4x) = %2x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pHalData->last_hmeboxnum  = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"go out\0A\00", [24 x i8] zeroinitializer }, align 32
@reserved_page_packet_8812 = internal global { <{ [2616 x i8], [1480 x i8] }>, [1024 x i8] } { <{ [2616 x i8], [1480 x i8] }> <{ [2616 x i8] c"\80\00\00\00\FF\FF\FF\FF\FF\FF\00\E0L\02Q\02\84\C9\B2\A7\B3n`\00\00\00\00\00\00\00\00\00d\00 \04\00\03215\01\08\82\84\8B\96\0C\12\18$\03\01\01\06\02\00\00*\01\022\040H`l-\1A\ED\09\03\FF\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00=\00\DD\07\00\E0L\02\02\08\04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00(\8C\00\12\00\00\00\00\00\00\00\81\00\00\04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\A4\10\09\C0\84\C9\B2\A7\B3n\00\E0L\02Q\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\18\00(\8C\00\12\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\00\00\00\00\00\00H\01\00\00\84\C9\B2\A7\B3n\00\E0L\02Q\02\84\C9\B2\A7\B3n\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1A\00(\8C\00\12\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\00\00\00\00\00\00\C8\01\00\00\84\C9\B2\A7\B3n\00\E0L\02Q\02\84\C9\B2\A7\B3n\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1A\00(\8C\00\12\00\00\00\00\80\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\00\00\00\00\00\00\C8\01\00\00\84\C9\B2\A7\B3n\00\E0L\02Q\02\84\C9\B2\A7\B3n\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00<\00(\8C\00\12\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\00\00\00\00\00\00\08\01\00\00\84\C9\B2\A7\B3n\00\E0L\02Q\02\84\C9\B2\A7\B3n\00\00\AA\AA\03\00\00\00\08\06\00\01\08\00\06\04\00\02\00\E0L\02Q\02\00\00\00\00\00\E0L\02Q\02", [1480 x i8] zeroinitializer }>, [1024 x i8] zeroinitializer }, align 32
@reserved_page_packet_8821 = internal global { <{ [1336 x i8], [712 x i8] }>, [512 x i8] } { <{ [1336 x i8], [712 x i8] }> <{ [1336 x i8] c"\80\00\00\00\FF\FF\FF\FF\FF\FF\00\E0L\02\E2d@\16\9F#\D4F \00\00\00\00\00\00\00\00\00d\00 \04\00\06dlink1\01\08\82\84\8B\96\0C\180H\03\01\0B\06\02\00\00*\01\8B2\04\12$`l\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00(\8C\00\12\00\00\00\00\00\00\00\81\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\A4\10\01\C0@\16\9F#\D4F\00\E0L\02\E2d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\18\00(\8C\00\12\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\00\00\00\00\00\00H\01\00\00@\16\9F#\D4F\00\E0L\02\E2d@\16\9F#\D4F\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1A\00(\8C\00\12\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\00\00\00\00\00\00\C8\01\00\00\84\C9\B2\A7\B3n\00\E0L\02Q\02\84\C9\B2\A7\B3n\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1A\00(\8C\00\12\00\00\00\00\80\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\00\00\00\00\00\00\C8\01\00\00\84\C9\B2\A7\B3n\00\E0L\02Q\02\84\C9\B2\A7\B3n\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00<\00(\8C\00\12\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\00\00\00\00\00\00\08\01\00\00\84\C9\B2\A7\B3n\00\E0L\02Q\02\84\C9\B2\A7\B3n\00\00\AA\AA\03\00\00\00\08\06\00\01\08\00\06\04\00\02\00\E0L\02Q\02\00\00\00\00\00\E0L\02Q\02", [712 x i8] zeroinitializer }>, [512 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 33, i64 149]
@__sancov_gen_cov_switch_values.50 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.51 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.52 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 157, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 163, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 183, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 186, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 202, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 207, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 422, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 461, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 481, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 544, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 593, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 610, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 627, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 639, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 654, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 661, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 680, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 693, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 707, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1621, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1636, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1641, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1649, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1759, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1774, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1818, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1822, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1876, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1880, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 42, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 50, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 78, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 99, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 252, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 257, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 265, i32 5 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 303, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 327, i32 6 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 338, i32 5 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 345, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 354, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 403, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 412, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant [26 x i8] c"reserved_page_packet_8812\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 992, i32 11 }
@___asan_gen_.206 = private unnamed_addr constant [26 x i8] c"reserved_page_packet_8821\00", align 1
@___asan_gen_.207 = private constant [55 x i8] c"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/fw.c\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 724, i32 11 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @_rtl8821ae_fw_free_to_go._entry, ptr @_rtl8821ae_fw_free_to_go._entry_ptr, ptr @_rtl8821ae_write_fw._entry, ptr @_rtl8821ae_write_fw._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @reserved_page_packet_8812, ptr @reserved_page_packet_8821], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl8821ae_write_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl8821ae_fw_free_to_go._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reserved_page_packet_8812 to i32), i32 4096, i32 5120, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reserved_page_packet_8821 to i32), i32 2048, i32 2560, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl8821ae_download_fw(ptr noundef %hw, i1 noundef zeroext %buse_wake_on_wlan_fw) local_unnamed_addr #0 align 64 {
entry:
  %size.addr.i = alloca i32, align 4
  %support_remote_wakeup = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %support_remote_wakeup) #5
  %2 = ptrtoint ptr %support_remote_wakeup to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %support_remote_wakeup, align 1, !annotation !109
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %3 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cfg, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %get_hw_reg = getelementptr inbounds %struct.rtl_hal_ops, ptr %6, i32 0, i32 19
  %7 = ptrtoint ptr %get_hw_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %get_hw_reg, align 4
  call void %8(ptr noundef %hw, i8 noundef zeroext 92, ptr noundef nonnull %support_remote_wakeup) #5
  %9 = ptrtoint ptr %support_remote_wakeup to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %support_remote_wakeup, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.then
  %count.0.i = phi i16 [ 0, %if.then ], [ %inc.i, %do.body.i.do.body.i_crit_edge ]
  %11 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = call zeroext i8 %12(ptr noundef %1, i32 noundef 460) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %13(i32 noundef 214748000) #5
  %14 = and i8 %call.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp ne i8 %14, 0
  %inc.i = add nuw nsw i16 %count.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 999, i16 %count.0.i)
  %cmp.i = icmp ult i16 %count.0.i, 999
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %do.body.i.do.body.i_crit_edge, label %do.body.i.if.end_crit_edge

do.body.i.if.end_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

if.end:                                           ; preds = %do.body.i.if.end_crit_edge, %entry.if.end_crit_edge
  br i1 %buse_wake_on_wlan_fw, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %wowlan_firmware = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 75
  %15 = ptrtoint ptr %wowlan_firmware to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wowlan_firmware, align 4
  %tobool6.not = icmp eq ptr %16, null
  br i1 %tobool6.not, label %if.then5.cleanup_crit_edge, label %if.end8

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  %version10 = getelementptr inbounds %struct.rtlwifi_firmware_header, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %version10 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %version10, align 4
  %19 = call i16 @llvm.bswap.i16(i16 %18)
  %fw_version = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 34
  %20 = ptrtoint ptr %fw_version to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %fw_version, align 4
  %subversion = getelementptr inbounds %struct.rtlwifi_firmware_header, ptr %16, i32 0, i32 4
  %21 = ptrtoint ptr %subversion to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %subversion, align 2
  %conv = zext i8 %22 to i16
  %fw_subversion = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 35
  %23 = ptrtoint ptr %fw_subversion to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv, ptr %fw_subversion, align 2
  %wowlan_fwsize = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 74
  br label %if.end23

if.else:                                          ; preds = %if.end
  %pfirmware = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 33
  %24 = ptrtoint ptr %pfirmware to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pfirmware, align 8
  %tobool12.not = icmp eq ptr %25, null
  br i1 %tobool12.not, label %if.else.cleanup_crit_edge, label %if.end14

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %version16 = getelementptr inbounds %struct.rtlwifi_firmware_header, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %version16 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %version16, align 4
  %28 = call i16 @llvm.bswap.i16(i16 %27)
  %fw_version17 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 34
  %29 = ptrtoint ptr %fw_version17 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %fw_version17, align 4
  %subversion18 = getelementptr inbounds %struct.rtlwifi_firmware_header, ptr %25, i32 0, i32 4
  %30 = ptrtoint ptr %subversion18 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %subversion18, align 2
  %conv19 = zext i8 %31 to i16
  %fw_subversion20 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 35
  %32 = ptrtoint ptr %fw_subversion20 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv19, ptr %fw_subversion20, align 2
  %fwsize22 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 32
  br label %if.end23

if.end23:                                         ; preds = %if.end14, %if.end8
  %cond = phi ptr [ @.str.2, %if.end14 ], [ @.str.1, %if.end8 ]
  %pfwheader.0 = phi ptr [ %25, %if.end14 ], [ %16, %if.end8 ]
  %pfwdata.0.in = phi ptr [ %pfirmware, %if.end14 ], [ %wowlan_firmware, %if.end8 ]
  %fwsize.0.in = phi ptr [ %fwsize22, %if.end14 ], [ %wowlan_fwsize, %if.end8 ]
  %33 = ptrtoint ptr %fwsize.0.in to i32
  call void @__asan_load4_noabort(i32 %33)
  %fwsize.0 = load i32, ptr %fwsize.0.in, align 4
  %34 = ptrtoint ptr %pfwdata.0.in to i32
  call void @__asan_load4_noabort(i32 %34)
  %pfwdata.0 = load ptr, ptr %pfwdata.0.in, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 2, i32 noundef 3, ptr noundef nonnull @.str, ptr noundef nonnull %cond, i32 noundef %fwsize.0) #5
  %35 = ptrtoint ptr %pfwheader.0 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %pfwheader.0, align 4
  %37 = and i16 %36, -3841
  %38 = zext i16 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values)
  switch i16 %37, label %if.end23.if.end38_crit_edge [
    i16 149, label %if.end23.if.then33_crit_edge
    i16 33, label %if.end23.if.then33_crit_edge137
  ]

if.end23.if.then33_crit_edge137:                  ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then33

if.end23.if.then33_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then33

if.end23.if.end38_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.then33:                                        ; preds = %if.end23.if.then33_crit_edge, %if.end23.if.then33_crit_edge137
  %version34 = getelementptr inbounds %struct.rtlwifi_firmware_header, ptr %pfwheader.0, i32 0, i32 3
  %39 = ptrtoint ptr %version34 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %version34, align 4
  %conv35 = zext i16 %40 to i32
  %conv37 = zext i16 %36 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 2, i32 noundef 3, ptr noundef nonnull @.str.3, i32 noundef %conv35, i32 noundef %conv37) #5
  %add.ptr = getelementptr i8, ptr %pfwdata.0, i32 32
  %sub = add i32 %fwsize.0, -32
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %if.end23.if.end38_crit_edge
  %pfwdata.1 = phi ptr [ %add.ptr, %if.then33 ], [ %pfwdata.0, %if.end23.if.end38_crit_edge ]
  %fwsize.1 = phi i32 [ %sub, %if.then33 ], [ %fwsize.0, %if.end23.if.end38_crit_edge ]
  %mac_func_enable = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 6
  %41 = ptrtoint ptr %mac_func_enable to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %mac_func_enable, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool39.not = icmp eq i8 %42, 0
  br i1 %tobool39.not, label %if.end38.if.end46_crit_edge, label %if.then40

if.end38.if.end46_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

if.then40:                                        ; preds = %if.end38
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %43 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %read8_sync.i, align 4
  %call.i = call zeroext i8 %44(ptr noundef %1, i32 noundef 128) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i)
  %tobool43.not = icmp sgt i8 %call.i, -1
  br i1 %tobool43.not, label %if.then40.if.end46_crit_edge, label %if.then44

if.then40.if.end46_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

if.then44:                                        ; preds = %if.then40
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %45 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write8_async.i, align 4
  call void %46(ptr noundef %1, i32 noundef 128, i8 noundef zeroext 0) #5
  %47 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cfg, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %write_readback.i, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i98 = icmp eq i8 %50, 0
  br i1 %tobool.not.i98, label %if.then44.rtl_write_byte.exit_crit_edge, label %if.then.i

if.then44.rtl_write_byte.exit_crit_edge:          ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #7
  %51 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %read8_sync.i, align 4
  %call.i100 = call zeroext i8 %52(ptr noundef %1, i32 noundef 128) #5
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %if.then44.rtl_write_byte.exit_crit_edge
  call void @rtl8821ae_firmware_selfreset(ptr noundef %hw)
  br label %if.end46

if.end46:                                         ; preds = %rtl_write_byte.exit, %if.then40.if.end46_crit_edge, %if.end38.if.end46_crit_edge
  %53 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %priv, align 8
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %54, i32 0, i32 13, i32 5
  %55 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write8_async.i.i, align 4
  call void %56(ptr noundef %54, i32 noundef 128, i8 noundef zeroext 5) #5
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %54, i32 0, i32 32
  %57 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %write_readback.i.i, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool.not.i.i = icmp eq i8 %60, 0
  br i1 %tobool.not.i.i, label %if.end46.rtl_write_byte.exit.i_crit_edge, label %if.then.i.i

if.end46.rtl_write_byte.exit.i_crit_edge:         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit.i

if.then.i.i:                                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  %read8_sync.i.i102 = getelementptr inbounds %struct.rtl_priv, ptr %54, i32 0, i32 13, i32 9
  %61 = ptrtoint ptr %read8_sync.i.i102 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %read8_sync.i.i102, align 4
  %call.i.i103 = call zeroext i8 %62(ptr noundef %54, i32 noundef 128) #5
  br label %rtl_write_byte.exit.i

rtl_write_byte.exit.i:                            ; preds = %if.then.i.i, %if.end46.rtl_write_byte.exit.i_crit_edge
  %read8_sync.i15.i = getelementptr inbounds %struct.rtl_priv, ptr %54, i32 0, i32 13, i32 9
  %63 = ptrtoint ptr %read8_sync.i15.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %read8_sync.i15.i, align 4
  %call.i16.i = call zeroext i8 %64(ptr noundef %54, i32 noundef 130) #5
  %65 = and i8 %call.i16.i, -9
  %66 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %write8_async.i.i, align 4
  call void %67(ptr noundef %54, i32 noundef 130, i8 noundef zeroext %65) #5
  %68 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i19.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %write_readback.i19.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %write_readback.i19.i, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool.not.i20.i = icmp eq i8 %71, 0
  br i1 %tobool.not.i20.i, label %rtl_write_byte.exit.i._rtl8821ae_enable_fw_download.exit_crit_edge, label %if.end.sink.split.i

rtl_write_byte.exit.i._rtl8821ae_enable_fw_download.exit_crit_edge: ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %_rtl8821ae_enable_fw_download.exit

if.end.sink.split.i:                              ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %72 = ptrtoint ptr %read8_sync.i15.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %read8_sync.i15.i, align 4
  %call.i34.i = call zeroext i8 %73(ptr noundef %54, i32 noundef 130) #5
  br label %_rtl8821ae_enable_fw_download.exit

_rtl8821ae_enable_fw_download.exit:               ; preds = %if.end.sink.split.i, %rtl_write_byte.exit.i._rtl8821ae_enable_fw_download.exit_crit_edge
  %74 = ptrtoint ptr %read8_sync.i15.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %read8_sync.i15.i, align 4
  %call.i38.i = call zeroext i8 %75(ptr noundef %54, i32 noundef 128) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size.addr.i)
  %76 = ptrtoint ptr %size.addr.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %fwsize.1, ptr %size.addr.i, align 4
  %77 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %priv, align 8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %78, i64 noundef 2, i32 noundef 4, ptr noundef nonnull @.str.32, i32 noundef %fwsize.1) #5
  call void @rtl_fill_dummy(ptr noundef %pfwdata.1, ptr noundef nonnull %size.addr.i) #5
  %79 = ptrtoint ptr %size.addr.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %size.addr.i, align 4
  %div1.i = lshr i32 %80, 12
  %rem.i = and i32 %80, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 36863, i32 %80)
  %cmp.i105 = icmp ugt i32 %80, 36863
  br i1 %cmp.i105, label %if.end.thread.i, label %if.end.i

if.end.thread.i:                                  ; preds = %_rtl8821ae_enable_fw_download.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call.i106 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #8
  br label %for.body.preheader.i

if.end.i:                                         ; preds = %_rtl8821ae_enable_fw_download.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %80)
  %cmp12.not.i = icmp ult i32 %80, 4096
  br i1 %cmp12.not.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.preheader.i_crit_edge

if.end.i.for.body.preheader.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.preheader.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.preheader.i:                             ; preds = %if.end.i.for.body.preheader.i_crit_edge, %if.end.thread.i
  %umax.i = call i32 @llvm.umax.i32(i32 %div1.i, i32 1) #5
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %page.03.i = phi i32 [ %inc.i107, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %mul.i = shl i32 %page.03.i, 12
  %add.ptr.i = getelementptr i8, ptr %pfwdata.1, i32 %mul.i
  call void @rtl_fw_page_write(ptr noundef %hw, i32 noundef %page.03.i, ptr noundef %add.ptr.i, i32 noundef 4096) #5
  %inc.i107 = add nuw nsw i32 %page.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i107, %umax.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i108 = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i108, label %for.end.i._rtl8821ae_write_fw.exit_crit_edge, label %if.then2.i

for.end.i._rtl8821ae_write_fw.exit_crit_edge:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %_rtl8821ae_write_fw.exit

if.then2.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %mul3.i = and i32 %80, -4096
  %add.ptr4.i = getelementptr i8, ptr %pfwdata.1, i32 %mul3.i
  call void @rtl_fw_page_write(ptr noundef %hw, i32 noundef %div1.i, ptr noundef %add.ptr4.i, i32 noundef %rem.i) #5
  br label %_rtl8821ae_write_fw.exit

_rtl8821ae_write_fw.exit:                         ; preds = %if.then2.i, %for.end.i._rtl8821ae_write_fw.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.addr.i)
  %81 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %priv, align 8
  %read8_sync.i27.i = getelementptr inbounds %struct.rtl_priv, ptr %82, i32 0, i32 13, i32 9
  %83 = ptrtoint ptr %read8_sync.i27.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %read8_sync.i27.i, align 4
  %call.i28.i = call zeroext i8 %84(ptr noundef %82, i32 noundef 128) #5
  %85 = and i8 %call.i28.i, -2
  %write8_async.i29.i = getelementptr inbounds %struct.rtl_priv, ptr %82, i32 0, i32 13, i32 5
  %86 = ptrtoint ptr %write8_async.i29.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %write8_async.i29.i, align 4
  call void %87(ptr noundef %82, i32 noundef 128, i8 noundef zeroext %85) #5
  %cfg.i30.i = getelementptr inbounds %struct.rtl_priv, ptr %82, i32 0, i32 32
  %88 = ptrtoint ptr %cfg.i30.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %cfg.i30.i, align 8
  %write_readback.i31.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %write_readback.i31.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %write_readback.i31.i, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool.not.i32.i = icmp eq i8 %91, 0
  br i1 %tobool.not.i32.i, label %_rtl8821ae_write_fw.exit._rtl8821ae_enable_fw_download.exit114_crit_edge, label %if.end.sink.split.i111

_rtl8821ae_write_fw.exit._rtl8821ae_enable_fw_download.exit114_crit_edge: ; preds = %_rtl8821ae_write_fw.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %_rtl8821ae_enable_fw_download.exit114

if.end.sink.split.i111:                           ; preds = %_rtl8821ae_write_fw.exit
  call void @__sanitizer_cov_trace_pc() #7
  %92 = ptrtoint ptr %read8_sync.i27.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %read8_sync.i27.i, align 4
  %call.i34.i110 = call zeroext i8 %93(ptr noundef %82, i32 noundef 128) #5
  br label %_rtl8821ae_enable_fw_download.exit114

_rtl8821ae_enable_fw_download.exit114:            ; preds = %if.end.sink.split.i111, %_rtl8821ae_write_fw.exit._rtl8821ae_enable_fw_download.exit114_crit_edge
  %94 = ptrtoint ptr %read8_sync.i27.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %read8_sync.i27.i, align 4
  %call.i38.i112 = call zeroext i8 %95(ptr noundef %82, i32 noundef 128) #5
  %96 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %priv, align 8
  %read32_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %97, i32 0, i32 13, i32 11
  br label %do.body.i121

do.body.i121:                                     ; preds = %do.body.i121.do.body.i121_crit_edge, %_rtl8821ae_enable_fw_download.exit114
  %counter.0.i = phi i32 [ 0, %_rtl8821ae_enable_fw_download.exit114 ], [ %inc.i117, %do.body.i121.do.body.i121_crit_edge ]
  %98 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i.i116 = call i32 %99(ptr noundef %97, i32 noundef 128) #5
  %inc.i117 = add nuw nsw i32 %counter.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000, i32 %counter.0.i)
  %cmp.i118 = icmp ult i32 %counter.0.i, 6000
  %and.i = and i32 %call.i.i116, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i119 = icmp eq i32 %and.i, 0
  %or.cond.i120 = select i1 %cmp.i118, i1 %tobool.not.i119, i1 false
  br i1 %or.cond.i120, label %do.body.i121.do.body.i121_crit_edge, label %do.end.i

do.body.i121.do.body.i121_crit_edge:              ; preds = %do.body.i121
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i121

do.end.i:                                         ; preds = %do.body.i121
  call void @__sanitizer_cov_trace_const_cmp4(i32 5998, i32 %counter.0.i)
  %cmp1.i = icmp ugt i32 %counter.0.i, 5998
  br i1 %cmp1.i, label %if.then.i122, label %if.end.i126

if.then.i122:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %97, i64 noundef 1, i32 noundef 4, ptr noundef nonnull @.str.35, i32 noundef %call.i.i116) #5
  br label %if.then49

if.end.i126:                                      ; preds = %do.end.i
  %100 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i35.i = call i32 %101(ptr noundef %97, i32 noundef 128) #5
  %or.i = and i32 %call.i35.i, -67
  %and3.i = or i32 %or.i, 2
  %write32_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %97, i32 0, i32 13, i32 7
  %102 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %write32_async.i.i, align 4
  call void %103(ptr noundef %97, i32 noundef 128, i32 noundef %and3.i) #5
  %cfg.i.i123 = getelementptr inbounds %struct.rtl_priv, ptr %97, i32 0, i32 32
  %104 = ptrtoint ptr %cfg.i.i123 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %cfg.i.i123, align 8
  %write_readback.i.i124 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %write_readback.i.i124 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %write_readback.i.i124, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool.not.i.i125 = icmp eq i8 %107, 0
  br i1 %tobool.not.i.i125, label %if.end.i126.rtl_write_dword.exit.i_crit_edge, label %if.then.i.i127

if.end.i126.rtl_write_dword.exit.i_crit_edge:     ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_dword.exit.i

if.then.i.i127:                                   ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #7
  %108 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i37.i = call i32 %109(ptr noundef %97, i32 noundef 128) #5
  br label %rtl_write_dword.exit.i

rtl_write_dword.exit.i:                           ; preds = %if.then.i.i127, %if.end.i126.rtl_write_dword.exit.i_crit_edge
  call void @rtl8821ae_firmware_selfreset(ptr noundef %hw) #5
  br label %do.body4.i

do.body4.i:                                       ; preds = %if.end9.i.do.body4.i_crit_edge, %rtl_write_dword.exit.i
  %counter.1.i = phi i32 [ 0, %rtl_write_dword.exit.i ], [ %inc11.i, %if.end9.i.do.body4.i_crit_edge ]
  %110 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i39.i = call i32 %111(ptr noundef %97, i32 noundef 128) #5
  %and6.i = and i32 %call.i39.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.else50

if.end9.i:                                        ; preds = %do.body4.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %112 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %112(i32 noundef 1073740) #5
  %inc11.i = add nuw nsw i32 %counter.1.i, 1
  %exitcond.not.i128 = icmp eq i32 %inc11.i, 6001
  br i1 %exitcond.not.i128, label %do.end16.i, label %if.end9.i.do.body4.i_crit_edge

if.end9.i.do.body4.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body4.i

do.end16.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %call.i39.i) #8
  br label %if.then49

if.then49:                                        ; preds = %do.end16.i, %if.then.i122
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 3, ptr noundef nonnull @.str.4) #5
  br label %cleanup

if.else50:                                        ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 2, i32 noundef 4, ptr noundef nonnull @.str.5) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else50, %if.then49, %if.else.cleanup_crit_edge, %if.then5.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then5.cleanup_crit_edge ], [ 1, %if.else.cleanup_crit_edge ], [ 0, %if.else50 ], [ 0, %if.then49 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %support_remote_wakeup) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8821ae_firmware_selfreset(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %hw_type = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 10
  %2 = ptrtoint ptr %hw_type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hw_type, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %3)
  %cmp = icmp eq i16 %3, 14
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %4 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %5(ptr noundef %1, i32 noundef 29) #5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = and i8 %call.i, -9
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %7 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write8_async.i, align 4
  tail call void %8(ptr noundef %1, i32 noundef 29, i8 noundef zeroext %6) #5
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %9 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %write_readback.i, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.if.end.sink.split_crit_edge

if.then.if.end.sink.split_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.sink.split

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = and i8 %call.i, -2
  %write8_async.i55 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %14 = ptrtoint ptr %write8_async.i55 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write8_async.i55, align 4
  tail call void %15(ptr noundef %1, i32 noundef 29, i8 noundef zeroext %13) #5
  %cfg.i56 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %16 = ptrtoint ptr %cfg.i56 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cfg.i56, align 8
  %write_readback.i57 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %write_readback.i57 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %write_readback.i57, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i58 = icmp eq i8 %19, 0
  br i1 %tobool.not.i58, label %if.else.if.end_crit_edge, label %if.else.if.end.sink.split_crit_edge

if.else.if.end.sink.split_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.sink.split

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.sink.split:                                ; preds = %if.else.if.end.sink.split_crit_edge, %if.then.if.end.sink.split_crit_edge
  %20 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read8_sync.i, align 4
  %call.i60 = tail call zeroext i8 %21(ptr noundef %1, i32 noundef 29) #5
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.else.if.end_crit_edge, %if.then.if.end_crit_edge
  %read8_sync.i63 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %22 = ptrtoint ptr %read8_sync.i63 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read8_sync.i63, align 4
  %call.i64 = tail call zeroext i8 %23(ptr noundef %1, i32 noundef 3) #5
  %24 = and i8 %call.i64, -5
  %write8_async.i65 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %25 = ptrtoint ptr %write8_async.i65 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write8_async.i65, align 4
  tail call void %26(ptr noundef %1, i32 noundef 3, i8 noundef zeroext %24) #5
  %cfg.i66 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %27 = ptrtoint ptr %cfg.i66 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cfg.i66, align 8
  %write_readback.i67 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %write_readback.i67 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %write_readback.i67, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i68 = icmp eq i8 %30, 0
  br i1 %tobool.not.i68, label %if.end.rtl_write_byte.exit72_crit_edge, label %if.then.i71

if.end.rtl_write_byte.exit72_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit72

if.then.i71:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %read8_sync.i63 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read8_sync.i63, align 4
  %call.i70 = tail call zeroext i8 %32(ptr noundef %1, i32 noundef 3) #5
  br label %rtl_write_byte.exit72

rtl_write_byte.exit72:                            ; preds = %if.then.i71, %if.end.rtl_write_byte.exit72_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 10737400) #5
  %34 = ptrtoint ptr %hw_type to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %hw_type, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %35)
  %cmp16 = icmp eq i16 %35, 14
  %36 = ptrtoint ptr %read8_sync.i63 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read8_sync.i63, align 4
  %call.i74 = tail call zeroext i8 %37(ptr noundef %1, i32 noundef 29) #5
  br i1 %cmp16, label %if.then18, label %if.else22

if.then18:                                        ; preds = %rtl_write_byte.exit72
  %38 = or i8 %call.i74, 8
  %39 = ptrtoint ptr %write8_async.i65 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write8_async.i65, align 4
  tail call void %40(ptr noundef %1, i32 noundef 29, i8 noundef zeroext %38) #5
  %41 = ptrtoint ptr %cfg.i66 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cfg.i66, align 8
  %write_readback.i77 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %write_readback.i77 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %write_readback.i77, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i78 = icmp eq i8 %44, 0
  br i1 %tobool.not.i78, label %if.then18.if.end27_crit_edge, label %if.then18.if.end27.sink.split_crit_edge

if.then18.if.end27.sink.split_crit_edge:          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27.sink.split

if.then18.if.end27_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.else22:                                        ; preds = %rtl_write_byte.exit72
  %45 = or i8 %call.i74, 1
  %46 = ptrtoint ptr %write8_async.i65 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write8_async.i65, align 4
  tail call void %47(ptr noundef %1, i32 noundef 29, i8 noundef zeroext %45) #5
  %48 = ptrtoint ptr %cfg.i66 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cfg.i66, align 8
  %write_readback.i87 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %write_readback.i87 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %write_readback.i87, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i88 = icmp eq i8 %51, 0
  br i1 %tobool.not.i88, label %if.else22.if.end27_crit_edge, label %if.else22.if.end27.sink.split_crit_edge

if.else22.if.end27.sink.split_crit_edge:          ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27.sink.split

if.else22.if.end27_crit_edge:                     ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.end27.sink.split:                              ; preds = %if.else22.if.end27.sink.split_crit_edge, %if.then18.if.end27.sink.split_crit_edge
  %52 = ptrtoint ptr %read8_sync.i63 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %read8_sync.i63, align 4
  %call.i90 = tail call zeroext i8 %53(ptr noundef %1, i32 noundef 29) #5
  br label %if.end27

if.end27:                                         ; preds = %if.end27.sink.split, %if.else22.if.end27_crit_edge, %if.then18.if.end27_crit_edge
  %54 = ptrtoint ptr %read8_sync.i63 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %read8_sync.i63, align 4
  %call.i94 = tail call zeroext i8 %55(ptr noundef %1, i32 noundef 3) #5
  %56 = or i8 %call.i94, 4
  %57 = ptrtoint ptr %write8_async.i65 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %write8_async.i65, align 4
  tail call void %58(ptr noundef %1, i32 noundef 3, i8 noundef zeroext %56) #5
  %59 = ptrtoint ptr %cfg.i66 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cfg.i66, align 8
  %write_readback.i97 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %write_readback.i97 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %write_readback.i97, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not.i98 = icmp eq i8 %62, 0
  br i1 %tobool.not.i98, label %if.end27.rtl_write_byte.exit102_crit_edge, label %if.then.i101

if.end27.rtl_write_byte.exit102_crit_edge:        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit102

if.then.i101:                                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  %63 = ptrtoint ptr %read8_sync.i63 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %read8_sync.i63, align 4
  %call.i100 = tail call zeroext i8 %64(ptr noundef %1, i32 noundef 3) #5
  br label %rtl_write_byte.exit102

rtl_write_byte.exit102:                           ; preds = %if.then.i101, %if.end27.rtl_write_byte.exit102_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.10) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8821ae_set_fw_related_for_wowlan(ptr noundef %hw, i1 noundef zeroext %used_wowlan_fw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call = tail call i32 @rtl8821ae_download_fw(ptr noundef %hw, i1 noundef zeroext %used_wowlan_fw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 3, ptr noundef nonnull @.str.6) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 3, ptr noundef nonnull @.str.7) #5
  %fw_current_inpsmode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 13
  %2 = ptrtoint ptr %fw_current_inpsmode to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %fw_current_inpsmode, align 1
  %fw_ps_state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 49
  %3 = ptrtoint ptr %fw_ps_state to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %fw_ps_state, align 1
  %fw_clk_change_in_progress = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 47
  %4 = ptrtoint ptr %fw_clk_change_in_progress to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %fw_clk_change_in_progress, align 1
  %allow_sw_to_change_hwclc = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 48
  %5 = ptrtoint ptr %allow_sw_to_change_hwclc to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %allow_sw_to_change_hwclc, align 8
  %last_hmeboxnum = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 37
  %6 = ptrtoint ptr %last_hmeboxnum to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %last_hmeboxnum, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %.sink = phi i8 [ 1, %if.end ], [ 0, %if.then ]
  %7 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 38
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %.sink, ptr %7, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8821ae_fill_h2c_cmd(ptr nocapture noundef readonly %hw, i8 noundef zeroext %element_id, i32 noundef %cmd_len, ptr nocapture noundef readonly %cmdbuffer) local_unnamed_addr #0 align 64 {
entry:
  %boxcontent.sroa.7.sroa.0.i = alloca i24, align 4
  %boxextcontent.sroa.0.i = alloca i32, align 4
  %tmp_cmdbuf.sroa.0 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_cmdbuf.sroa.0)
  %fw_ready = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 38
  %2 = ptrtoint ptr %fw_ready to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fw_ready, align 2, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.end, label %if.end36

land.end:                                         ; preds = %entry
  %.b43 = load i1, ptr @rtl8821ae_fill_h2c_cmd.__already_done, align 1
  br i1 %.b43, label %land.end.cleanup_crit_edge, label %if.then7, !prof !111

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then7:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rtl8821ae_fill_h2c_cmd.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 423, i32 noundef 9, ptr noundef nonnull @.str.9) #5
  br label %cleanup

if.end36:                                         ; preds = %entry
  %4 = ptrtoint ptr %tmp_cmdbuf.sroa.0 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %tmp_cmdbuf.sroa.0, align 8
  %5 = call ptr @memcpy(ptr %tmp_cmdbuf.sroa.0, ptr %cmdbuffer, i32 %cmd_len)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %boxcontent.sroa.7.sroa.0.i)
  %6 = ptrtoint ptr %boxcontent.sroa.7.sroa.0.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %boxcontent.sroa.7.sroa.0.i, align 4
  %boxcontent.sroa.7.sroa.0.i.1.i.1..sroa_idx = getelementptr inbounds i8, ptr %boxcontent.sroa.7.sroa.0.i, i32 1
  %7 = ptrtoint ptr %boxcontent.sroa.7.sroa.0.i.1.i.1..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %boxcontent.sroa.7.sroa.0.i.1.i.1..sroa_idx, align 1
  %boxcontent.sroa.7.sroa.0.i.2.i.2..sroa_idx = getelementptr inbounds i8, ptr %boxcontent.sroa.7.sroa.0.i, i32 2
  %8 = ptrtoint ptr %boxcontent.sroa.7.sroa.0.i.2.i.2..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %boxcontent.sroa.7.sroa.0.i.2.i.2..sroa_idx, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %boxextcontent.sroa.0.i)
  %9 = ptrtoint ptr %boxextcontent.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %boxextcontent.sroa.0.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.38) #5
  %h2c_lock.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 7, i32 4
  %call4316.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %h2c_lock.i) #5
  %h2c_setinprogress.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 36
  %10 = ptrtoint ptr %h2c_setinprogress.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %h2c_setinprogress.i, align 8, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not317.i = icmp eq i8 %11, 0
  %.pre.i = zext i8 %element_id to i32
  br i1 %tobool.not317.i, label %if.end36.if.else.i_crit_edge, label %if.end36.if.then.i_crit_edge

if.end36.if.then.i_crit_edge:                     ; preds = %if.end36
  br label %if.then.i

if.end36.if.else.i_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

if.then.i:                                        ; preds = %while.end.i.if.then.i_crit_edge, %if.end36.if.then.i_crit_edge
  %call4319.i = phi i32 [ %call4.i, %while.end.i.if.then.i_crit_edge ], [ %call4316.i, %if.end36.if.then.i_crit_edge ]
  %h2c_waitcounter.0318.i = phi i32 [ %h2c_waitcounter.1.lcssa.i, %while.end.i.if.then.i_crit_edge ], [ 0, %if.end36.if.then.i_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.39, i32 noundef %.pre.i) #5
  %12 = ptrtoint ptr %h2c_setinprogress.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %h2c_setinprogress.i, align 8, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool10.not312.i = icmp eq i8 %13, 0
  br i1 %tobool10.not312.i, label %if.then.i.while.end.i_crit_edge, label %if.then.i.while.body11.i_crit_edge

if.then.i.while.body11.i_crit_edge:               ; preds = %if.then.i
  br label %while.body11.i

if.then.i.while.end.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.body11.i:                                   ; preds = %do.body18.i.while.body11.i_crit_edge, %if.then.i.while.body11.i_crit_edge
  %flag.0314.i = phi i32 [ %call27.i, %do.body18.i.while.body11.i_crit_edge ], [ %call4319.i, %if.then.i.while.body11.i_crit_edge ]
  %h2c_waitcounter.1313.i = phi i32 [ %inc.i, %do.body18.i.while.body11.i_crit_edge ], [ %h2c_waitcounter.0318.i, %if.then.i.while.body11.i_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %h2c_lock.i, i32 noundef %flag.0314.i) #5
  %inc.i = add i32 %h2c_waitcounter.1313.i, 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.40, i32 noundef %inc.i) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 21474800) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %inc.i)
  %cmp14.i = icmp ugt i32 %inc.i, 1000
  br i1 %cmp14.i, label %while.body11.i._rtl8821ae_fill_h2c_command.exit_crit_edge, label %do.body18.i

while.body11.i._rtl8821ae_fill_h2c_command.exit_crit_edge: ; preds = %while.body11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %_rtl8821ae_fill_h2c_command.exit

do.body18.i:                                      ; preds = %while.body11.i
  %call27.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %h2c_lock.i) #5
  %15 = ptrtoint ptr %h2c_setinprogress.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %h2c_setinprogress.i, align 8, !range !110
  %tobool10.not.i = icmp eq i8 %16, 0
  br i1 %tobool10.not.i, label %do.body18.i.while.end.i_crit_edge, label %do.body18.i.while.body11.i_crit_edge

do.body18.i.while.body11.i_crit_edge:             ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body11.i

do.body18.i.while.end.i_crit_edge:                ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.end.i:                                      ; preds = %do.body18.i.while.end.i_crit_edge, %if.then.i.while.end.i_crit_edge
  %h2c_waitcounter.1.lcssa.i = phi i32 [ %h2c_waitcounter.0318.i, %if.then.i.while.end.i_crit_edge ], [ %inc.i, %do.body18.i.while.end.i_crit_edge ]
  %flag.0.lcssa.i = phi i32 [ %call4319.i, %if.then.i.while.end.i_crit_edge ], [ %call27.i, %do.body18.i.while.end.i_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %h2c_lock.i, i32 noundef %flag.0.lcssa.i) #5
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %h2c_lock.i) #5
  %17 = ptrtoint ptr %h2c_setinprogress.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %h2c_setinprogress.i, align 8, !range !110
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %while.end.i.if.else.i_crit_edge, label %while.end.i.if.then.i_crit_edge

while.end.i.if.then.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

while.end.i.if.else.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

if.else.i:                                        ; preds = %while.end.i.if.else.i_crit_edge, %if.end36.if.else.i_crit_edge
  %call4.lcssa.i = phi i32 [ %call4316.i, %if.end36.if.else.i_crit_edge ], [ %call4.i, %while.end.i.if.else.i_crit_edge ]
  %19 = ptrtoint ptr %h2c_setinprogress.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %h2c_setinprogress.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %h2c_lock.i, i32 noundef %call4.lcssa.i) #5
  %last_hmeboxnum.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 37
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %sub.i = add nsw i32 %cmd_len, -3
  %write8_async.i283.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %cfg.i284.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %20 = ptrtoint ptr %last_hmeboxnum.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %last_hmeboxnum.i, align 1
  %conv42.i = zext i8 %21 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %21)
  %22 = icmp ult i8 %21, 4
  br i1 %22, label %switch.lookup, label %sw.default.i

sw.default.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 4, ptr noundef nonnull @.str.41, i32 noundef %conv42.i) #5
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %switch.idx.cast = zext i8 %21 to i32
  %switch.idx.mult = shl nuw nsw i32 %switch.idx.cast, 2
  %switch.offset = add nuw nsw i32 %switch.idx.mult, 464
  %switch.idx.cast58 = zext i8 %21 to i32
  %switch.idx.mult59 = shl nuw nsw i32 %switch.idx.cast58, 2
  %switch.offset60 = add nuw nsw i32 %switch.idx.mult59, 496
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %sw.default.i
  %box_reg.1.i = phi i32 [ 0, %sw.default.i ], [ %switch.offset, %switch.lookup ]
  %box_extreg.1.i = phi i32 [ 0, %sw.default.i ], [ %switch.offset60, %switch.lookup ]
  %23 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = tail call zeroext i8 %24(ptr noundef %1, i32 noundef 256) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -22, i8 %call.i.i)
  %cmp49.not.i = icmp eq i8 %call.i.i, -22
  br i1 %cmp49.not.i, label %if.else52.i, label %if.then65.i

if.else52.i:                                      ; preds = %sw.epilog.i
  %25 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i262.i = tail call zeroext i8 %26(ptr noundef %1, i32 noundef 528) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -22, i8 %call.i262.i)
  %cmp55.i = icmp eq i8 %call.i262.i, -22
  br i1 %cmp55.i, label %if.else52.i.if.then61.i_crit_edge, label %lor.lhs.false.i

if.else52.i.if.then61.i_crit_edge:                ; preds = %if.else52.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then61.i

lor.lhs.false.i:                                  ; preds = %if.else52.i
  %27 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i264.i = tail call zeroext i8 %28(ptr noundef %1, i32 noundef 1050) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -22, i8 %call.i264.i)
  %cmp59.i = icmp eq i8 %call.i264.i, -22
  br i1 %cmp59.i, label %lor.lhs.false.i.if.then61.i_crit_edge, label %lor.lhs.false.i.if.then85.i_crit_edge

lor.lhs.false.i.if.then85.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then85.i

lor.lhs.false.i.if.then61.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then61.i

if.then61.i:                                      ; preds = %lor.lhs.false.i.if.then61.i_crit_edge, %if.else52.i.if.then61.i_crit_edge
  %29 = ptrtoint ptr %write8_async.i283.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write8_async.i283.i, align 4
  tail call void %30(ptr noundef %1, i32 noundef 255, i8 noundef zeroext -1) #5
  %31 = ptrtoint ptr %cfg.i284.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cfg.i284.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %write_readback.i.i, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i.i = icmp eq i8 %34, 0
  br i1 %tobool.not.i.i, label %if.then61.i.if.then85.i_crit_edge, label %if.then.i.i

if.then61.i.if.then85.i_crit_edge:                ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then85.i

if.then.i.i:                                      ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i266.i = tail call zeroext i8 %36(ptr noundef %1, i32 noundef 255) #5
  br label %if.then85.i

if.then65.i:                                      ; preds = %sw.epilog.i
  %37 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %priv, align 8
  %read8_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %38, i32 0, i32 13, i32 9
  %39 = ptrtoint ptr %read8_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read8_sync.i.i.i, align 4
  %call.i.i.i = tail call zeroext i8 %40(ptr noundef %38, i32 noundef 460) #5
  %41 = shl nuw i32 1, %conv42.i
  %conv.i.pn323.i = zext i8 %call.i.i.i to i32
  %isfw_read.1.in.in324.i = and i32 %41, %conv.i.pn323.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %isfw_read.1.in.in324.i)
  %isfw_read.1.in325.i = icmp eq i32 %isfw_read.1.in.in324.i, 0
  br i1 %isfw_read.1.in325.i, label %if.then65.i.if.end87.i_crit_edge, label %if.then65.i.while.body70.i_crit_edge

if.then65.i.while.body70.i_crit_edge:             ; preds = %if.then65.i
  br label %while.body70.i

if.then65.i.if.end87.i_crit_edge:                 ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end87.i

while.body70.i:                                   ; preds = %if.end76.i.while.body70.i_crit_edge, %if.then65.i.while.body70.i_crit_edge
  %wait_h2c_limmit.0326.i = phi i8 [ %dec.i, %if.end76.i.while.body70.i_crit_edge ], [ 100, %if.then65.i.while.body70.i_crit_edge ]
  %dec.i = add nsw i8 %wait_h2c_limmit.0326.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec.i)
  %cmp72.i = icmp eq i8 %dec.i, 0
  br i1 %cmp72.i, label %if.end83.thread300.i, label %if.end76.i

if.end83.thread300.i:                             ; preds = %while.body70.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.42, i32 noundef %conv42.i) #5
  br label %if.then85.i

if.end76.i:                                       ; preds = %while.body70.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 2147480) #5
  %43 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %priv, align 8
  %read8_sync.i.i268.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 13, i32 9
  %45 = ptrtoint ptr %read8_sync.i.i268.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %read8_sync.i.i268.i, align 4
  %call.i.i269.i = tail call zeroext i8 %46(ptr noundef %44, i32 noundef 460) #5
  %47 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i274.i = tail call zeroext i8 %48(ptr noundef %1, i32 noundef 304) #5
  %conv81.i = zext i8 %call.i274.i to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.43, i32 noundef %conv42.i, i32 noundef %conv81.i) #5
  %conv.i.pn.i = zext i8 %call.i.i269.i to i32
  %isfw_read.1.in.in.i = and i32 %41, %conv.i.pn.i
  %isfw_read.1.in.i = icmp eq i32 %isfw_read.1.in.in.i, 0
  br i1 %isfw_read.1.in.i, label %if.end76.i.if.end87.i_crit_edge, label %if.end76.i.while.body70.i_crit_edge

if.end76.i.while.body70.i_crit_edge:              ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body70.i

if.end76.i.if.end87.i_crit_edge:                  ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end87.i

if.then85.i:                                      ; preds = %if.end83.thread300.i, %if.then.i.i, %if.then61.i.if.then85.i_crit_edge, %lor.lhs.false.i.if.then85.i_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.44, i32 noundef %conv42.i) #5
  br label %do.body154.i

if.end87.i:                                       ; preds = %if.end76.i.if.end87.i_crit_edge, %if.then65.i.if.end87.i_crit_edge
  %49 = ptrtoint ptr %boxcontent.sroa.7.sroa.0.i to i32
  call void @__asan_storeN_noabort(i32 %49, i32 3)
  store i24 0, ptr %boxcontent.sroa.7.sroa.0.i, align 4
  %50 = ptrtoint ptr %boxextcontent.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %boxextcontent.sroa.0.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.45, i32 noundef %box_reg.1.i, i32 noundef %.pre.i) #5
  %51 = zext i32 %cmd_len to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %cmd_len, label %sw.default137.i [
    i32 1, label %if.end87.i.sw.bb91.i_crit_edge
    i32 2, label %if.end87.i.sw.bb91.i_crit_edge63
    i32 3, label %if.end87.i.sw.bb91.i_crit_edge64
    i32 4, label %if.end87.i.sw.bb102.i_crit_edge
    i32 5, label %if.end87.i.sw.bb102.i_crit_edge65
    i32 6, label %if.end87.i.sw.bb102.i_crit_edge66
    i32 7, label %if.end87.i.sw.bb102.i_crit_edge67
  ]

if.end87.i.sw.bb102.i_crit_edge67:                ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb102.i

if.end87.i.sw.bb102.i_crit_edge66:                ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb102.i

if.end87.i.sw.bb102.i_crit_edge65:                ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb102.i

if.end87.i.sw.bb102.i_crit_edge:                  ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb102.i

if.end87.i.sw.bb91.i_crit_edge64:                 ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb91.i

if.end87.i.sw.bb91.i_crit_edge63:                 ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb91.i

if.end87.i.sw.bb91.i_crit_edge:                   ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb91.i

sw.bb91.i:                                        ; preds = %if.end87.i.sw.bb91.i_crit_edge, %if.end87.i.sw.bb91.i_crit_edge63, %if.end87.i.sw.bb91.i_crit_edge64
  %52 = call ptr @memcpy(ptr %boxcontent.sroa.7.sroa.0.i, ptr %tmp_cmdbuf.sroa.0, i32 %cmd_len)
  %53 = ptrtoint ptr %write8_async.i283.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write8_async.i283.i, align 4
  tail call void %54(ptr noundef %1, i32 noundef %box_reg.1.i, i8 noundef zeroext %element_id) #5
  %55 = ptrtoint ptr %cfg.i284.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cfg.i284.i, align 8
  %write_readback.i277.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %write_readback.i277.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %write_readback.i277.i, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i278.i = icmp eq i8 %58, 0
  br i1 %tobool.not.i278.i, label %sw.bb91.i.rtl_write_byte.exit282.i_crit_edge, label %if.then.i281.i

sw.bb91.i.rtl_write_byte.exit282.i_crit_edge:     ; preds = %sw.bb91.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit282.i

if.then.i281.i:                                   ; preds = %sw.bb91.i
  call void @__sanitizer_cov_trace_pc() #7
  %59 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i280.i = tail call zeroext i8 %60(ptr noundef %1, i32 noundef %box_reg.1.i) #5
  br label %rtl_write_byte.exit282.i

rtl_write_byte.exit282.i:                         ; preds = %if.then.i281.i, %sw.bb91.i.rtl_write_byte.exit282.i_crit_edge
  %add.1.i = or i32 %box_reg.1.i, 1
  %61 = ptrtoint ptr %boxcontent.sroa.7.sroa.0.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %boxcontent.sroa.7.sroa.0.i.0.boxcontent.sroa.7.sroa.0.i.0.boxcontent.sroa.7.sroa.0.0.boxcontent.sroa.7.sroa.0.0.boxcontent.sroa.7.1.344.i = load i8, ptr %boxcontent.sroa.7.sroa.0.i, align 4
  %62 = ptrtoint ptr %write8_async.i283.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write8_async.i283.i, align 4
  tail call void %63(ptr noundef %1, i32 noundef %add.1.i, i8 noundef zeroext %boxcontent.sroa.7.sroa.0.i.0.boxcontent.sroa.7.sroa.0.i.0.boxcontent.sroa.7.sroa.0.0.boxcontent.sroa.7.sroa.0.0.boxcontent.sroa.7.1.344.i) #5
  %64 = ptrtoint ptr %cfg.i284.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cfg.i284.i, align 8
  %write_readback.i277.1.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %write_readback.i277.1.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %write_readback.i277.1.i, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool.not.i278.1.i = icmp eq i8 %67, 0
  br i1 %tobool.not.i278.1.i, label %rtl_write_byte.exit282.i.rtl_write_byte.exit282.1.i_crit_edge, label %if.then.i281.1.i

rtl_write_byte.exit282.i.rtl_write_byte.exit282.1.i_crit_edge: ; preds = %rtl_write_byte.exit282.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit282.1.i

if.then.i281.1.i:                                 ; preds = %rtl_write_byte.exit282.i
  call void @__sanitizer_cov_trace_pc() #7
  %68 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i280.1.i = tail call zeroext i8 %69(ptr noundef %1, i32 noundef %add.1.i) #5
  br label %rtl_write_byte.exit282.1.i

rtl_write_byte.exit282.1.i:                       ; preds = %if.then.i281.1.i, %rtl_write_byte.exit282.i.rtl_write_byte.exit282.1.i_crit_edge
  %add.2.i = or i32 %box_reg.1.i, 2
  %70 = ptrtoint ptr %boxcontent.sroa.7.sroa.0.i.1.i.1..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %70)
  %boxcontent.sroa.7.sroa.0.i.1.boxcontent.sroa.7.sroa.0.i.1.boxcontent.sroa.7.sroa.0.1.boxcontent.sroa.7.sroa.0.1.boxcontent.sroa.7.2.345.i = load i8, ptr %boxcontent.sroa.7.sroa.0.i.1.i.1..sroa_idx, align 1
  %71 = ptrtoint ptr %write8_async.i283.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %write8_async.i283.i, align 4
  tail call void %72(ptr noundef %1, i32 noundef %add.2.i, i8 noundef zeroext %boxcontent.sroa.7.sroa.0.i.1.boxcontent.sroa.7.sroa.0.i.1.boxcontent.sroa.7.sroa.0.1.boxcontent.sroa.7.sroa.0.1.boxcontent.sroa.7.2.345.i) #5
  %73 = ptrtoint ptr %cfg.i284.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %cfg.i284.i, align 8
  %write_readback.i277.2.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %write_readback.i277.2.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %write_readback.i277.2.i, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool.not.i278.2.i = icmp eq i8 %76, 0
  br i1 %tobool.not.i278.2.i, label %rtl_write_byte.exit282.1.i.rtl_write_byte.exit282.2.i_crit_edge, label %if.then.i281.2.i

rtl_write_byte.exit282.1.i.rtl_write_byte.exit282.2.i_crit_edge: ; preds = %rtl_write_byte.exit282.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit282.2.i

if.then.i281.2.i:                                 ; preds = %rtl_write_byte.exit282.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %77 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i280.2.i = tail call zeroext i8 %78(ptr noundef %1, i32 noundef %add.2.i) #5
  br label %rtl_write_byte.exit282.2.i

rtl_write_byte.exit282.2.i:                       ; preds = %if.then.i281.2.i, %rtl_write_byte.exit282.1.i.rtl_write_byte.exit282.2.i_crit_edge
  %add.3.i = or i32 %box_reg.1.i, 3
  %79 = ptrtoint ptr %boxcontent.sroa.7.sroa.0.i.2.i.2..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %79)
  %boxcontent.sroa.7.sroa.0.i.2.boxcontent.sroa.7.sroa.0.i.2.boxcontent.sroa.7.sroa.0.2.boxcontent.sroa.7.sroa.0.2.boxcontent.sroa.7.3.346.i = load i8, ptr %boxcontent.sroa.7.sroa.0.i.2.i.2..sroa_idx, align 2
  %80 = ptrtoint ptr %write8_async.i283.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %write8_async.i283.i, align 4
  tail call void %81(ptr noundef %1, i32 noundef %add.3.i, i8 noundef zeroext %boxcontent.sroa.7.sroa.0.i.2.boxcontent.sroa.7.sroa.0.i.2.boxcontent.sroa.7.sroa.0.2.boxcontent.sroa.7.sroa.0.2.boxcontent.sroa.7.3.346.i) #5
  %82 = ptrtoint ptr %cfg.i284.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cfg.i284.i, align 8
  %write_readback.i277.3.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %write_readback.i277.3.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %write_readback.i277.3.i, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool.not.i278.3.i = icmp eq i8 %85, 0
  br i1 %tobool.not.i278.3.i, label %rtl_write_byte.exit282.2.i.sw.epilog138.i_crit_edge, label %if.then.i281.3.i

rtl_write_byte.exit282.2.i.sw.epilog138.i_crit_edge: ; preds = %rtl_write_byte.exit282.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog138.i

if.then.i281.3.i:                                 ; preds = %rtl_write_byte.exit282.2.i
  call void @__sanitizer_cov_trace_pc() #7
  %86 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i280.3.i = tail call zeroext i8 %87(ptr noundef %1, i32 noundef %add.3.i) #5
  br label %sw.epilog138.i

sw.bb102.i:                                       ; preds = %if.end87.i.sw.bb102.i_crit_edge, %if.end87.i.sw.bb102.i_crit_edge65, %if.end87.i.sw.bb102.i_crit_edge66, %if.end87.i.sw.bb102.i_crit_edge67
  %tmp_cmdbuf.sroa.0.3.add.ptr106.i.sroa_idx = getelementptr inbounds i8, ptr %tmp_cmdbuf.sroa.0, i32 3
  %88 = call ptr @memcpy(ptr %boxextcontent.sroa.0.i, ptr %tmp_cmdbuf.sroa.0.3.add.ptr106.i.sroa_idx, i32 %sub.i)
  %89 = ptrtoint ptr %tmp_cmdbuf.sroa.0 to i32
  call void @__asan_loadN_noabort(i32 %89, i32 3)
  %tmp_cmdbuf.sroa.0.0.tmp_cmdbuf.sroa.0.0.tmp_cmdbuf.sroa.0.0.boxcontent.sroa.7.sroa.0.0.copyload.i = load i24, ptr %tmp_cmdbuf.sroa.0, align 8
  %90 = ptrtoint ptr %boxcontent.sroa.7.sroa.0.i to i32
  call void @__asan_storeN_noabort(i32 %90, i32 3)
  store i24 %tmp_cmdbuf.sroa.0.0.tmp_cmdbuf.sroa.0.0.tmp_cmdbuf.sroa.0.0.boxcontent.sroa.7.sroa.0.0.copyload.i, ptr %boxcontent.sroa.7.sroa.0.i, align 4
  %91 = ptrtoint ptr %boxextcontent.sroa.0.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %boxextcontent.sroa.0.i.0.boxextcontent.sroa.0.i.0.boxextcontent.sroa.0.0.boxextcontent.sroa.0.0..i = load i8, ptr %boxextcontent.sroa.0.i, align 4
  %92 = ptrtoint ptr %write8_async.i283.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %write8_async.i283.i, align 4
  tail call void %93(ptr noundef %1, i32 noundef %box_extreg.1.i, i8 noundef zeroext %boxextcontent.sroa.0.i.0.boxextcontent.sroa.0.i.0.boxextcontent.sroa.0.0.boxextcontent.sroa.0.0..i) #5
  %94 = ptrtoint ptr %cfg.i284.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %cfg.i284.i, align 8
  %write_readback.i285.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %write_readback.i285.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %write_readback.i285.i, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool.not.i286.i = icmp eq i8 %97, 0
  br i1 %tobool.not.i286.i, label %sw.bb102.i.rtl_write_byte.exit290.i_crit_edge, label %if.then.i289.i

sw.bb102.i.rtl_write_byte.exit290.i_crit_edge:    ; preds = %sw.bb102.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit290.i

if.then.i289.i:                                   ; preds = %sw.bb102.i
  call void @__sanitizer_cov_trace_pc() #7
  %98 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i288.i = tail call zeroext i8 %99(ptr noundef %1, i32 noundef %box_extreg.1.i) #5
  br label %rtl_write_byte.exit290.i

rtl_write_byte.exit290.i:                         ; preds = %if.then.i289.i, %sw.bb102.i.rtl_write_byte.exit290.i_crit_edge
  %add118.1.i = or i32 %box_extreg.1.i, 1
  %boxextcontent.sroa.0.i.1.i.1..sroa_idx = getelementptr inbounds i8, ptr %boxextcontent.sroa.0.i, i32 1
  %100 = ptrtoint ptr %boxextcontent.sroa.0.i.1.i.1..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %100)
  %boxextcontent.sroa.0.i.1.boxextcontent.sroa.0.i.1.boxextcontent.sroa.0.1.boxextcontent.sroa.0.1..i = load i8, ptr %boxextcontent.sroa.0.i.1.i.1..sroa_idx, align 1
  %101 = ptrtoint ptr %write8_async.i283.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %write8_async.i283.i, align 4
  tail call void %102(ptr noundef %1, i32 noundef %add118.1.i, i8 noundef zeroext %boxextcontent.sroa.0.i.1.boxextcontent.sroa.0.i.1.boxextcontent.sroa.0.1.boxextcontent.sroa.0.1..i) #5
  %103 = ptrtoint ptr %cfg.i284.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %cfg.i284.i, align 8
  %write_readback.i285.1.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %write_readback.i285.1.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %write_readback.i285.1.i, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool.not.i286.1.i = icmp eq i8 %106, 0
  br i1 %tobool.not.i286.1.i, label %rtl_write_byte.exit290.i.rtl_write_byte.exit290.1.i_crit_edge, label %if.then.i289.1.i

rtl_write_byte.exit290.i.rtl_write_byte.exit290.1.i_crit_edge: ; preds = %rtl_write_byte.exit290.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit290.1.i

if.then.i289.1.i:                                 ; preds = %rtl_write_byte.exit290.i
  call void @__sanitizer_cov_trace_pc() #7
  %107 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i288.1.i = tail call zeroext i8 %108(ptr noundef %1, i32 noundef %add118.1.i) #5
  br label %rtl_write_byte.exit290.1.i

rtl_write_byte.exit290.1.i:                       ; preds = %if.then.i289.1.i, %rtl_write_byte.exit290.i.rtl_write_byte.exit290.1.i_crit_edge
  %add118.2.i = or i32 %box_extreg.1.i, 2
  %boxextcontent.sroa.0.i.2.i.2..sroa_idx = getelementptr inbounds i8, ptr %boxextcontent.sroa.0.i, i32 2
  %109 = ptrtoint ptr %boxextcontent.sroa.0.i.2.i.2..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %109)
  %boxextcontent.sroa.0.i.2.boxextcontent.sroa.0.i.2.boxextcontent.sroa.0.2.boxextcontent.sroa.0.2..i = load i8, ptr %boxextcontent.sroa.0.i.2.i.2..sroa_idx, align 2
  %110 = ptrtoint ptr %write8_async.i283.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %write8_async.i283.i, align 4
  tail call void %111(ptr noundef %1, i32 noundef %add118.2.i, i8 noundef zeroext %boxextcontent.sroa.0.i.2.boxextcontent.sroa.0.i.2.boxextcontent.sroa.0.2.boxextcontent.sroa.0.2..i) #5
  %112 = ptrtoint ptr %cfg.i284.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %cfg.i284.i, align 8
  %write_readback.i285.2.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %write_readback.i285.2.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %write_readback.i285.2.i, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool.not.i286.2.i = icmp eq i8 %115, 0
  br i1 %tobool.not.i286.2.i, label %rtl_write_byte.exit290.1.i.rtl_write_byte.exit290.2.i_crit_edge, label %if.then.i289.2.i

rtl_write_byte.exit290.1.i.rtl_write_byte.exit290.2.i_crit_edge: ; preds = %rtl_write_byte.exit290.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit290.2.i

if.then.i289.2.i:                                 ; preds = %rtl_write_byte.exit290.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %116 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i288.2.i = tail call zeroext i8 %117(ptr noundef %1, i32 noundef %add118.2.i) #5
  br label %rtl_write_byte.exit290.2.i

rtl_write_byte.exit290.2.i:                       ; preds = %if.then.i289.2.i, %rtl_write_byte.exit290.1.i.rtl_write_byte.exit290.2.i_crit_edge
  %add118.3.i = or i32 %box_extreg.1.i, 3
  %boxextcontent.sroa.0.i.3.i.3..sroa_idx = getelementptr inbounds i8, ptr %boxextcontent.sroa.0.i, i32 3
  %118 = ptrtoint ptr %boxextcontent.sroa.0.i.3.i.3..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %118)
  %boxextcontent.sroa.0.i.3.boxextcontent.sroa.0.i.3.boxextcontent.sroa.0.3.boxextcontent.sroa.0.3..i = load i8, ptr %boxextcontent.sroa.0.i.3.i.3..sroa_idx, align 1
  %119 = ptrtoint ptr %write8_async.i283.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %write8_async.i283.i, align 4
  tail call void %120(ptr noundef %1, i32 noundef %add118.3.i, i8 noundef zeroext %boxextcontent.sroa.0.i.3.boxextcontent.sroa.0.i.3.boxextcontent.sroa.0.3.boxextcontent.sroa.0.3..i) #5
  %121 = ptrtoint ptr %cfg.i284.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %cfg.i284.i, align 8
  %write_readback.i285.3.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %write_readback.i285.3.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %write_readback.i285.3.i, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool.not.i286.3.i = icmp eq i8 %124, 0
  br i1 %tobool.not.i286.3.i, label %rtl_write_byte.exit290.2.i.rtl_write_byte.exit290.3.i_crit_edge, label %if.then.i289.3.i

rtl_write_byte.exit290.2.i.rtl_write_byte.exit290.3.i_crit_edge: ; preds = %rtl_write_byte.exit290.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit290.3.i

if.then.i289.3.i:                                 ; preds = %rtl_write_byte.exit290.2.i
  call void @__sanitizer_cov_trace_pc() #7
  %125 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i288.3.i = tail call zeroext i8 %126(ptr noundef %1, i32 noundef %add118.3.i) #5
  br label %rtl_write_byte.exit290.3.i

rtl_write_byte.exit290.3.i:                       ; preds = %if.then.i289.3.i, %rtl_write_byte.exit290.2.i.rtl_write_byte.exit290.3.i_crit_edge
  %127 = ptrtoint ptr %write8_async.i283.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %write8_async.i283.i, align 4
  tail call void %128(ptr noundef %1, i32 noundef %box_reg.1.i, i8 noundef zeroext %element_id) #5
  %129 = ptrtoint ptr %cfg.i284.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %cfg.i284.i, align 8
  %write_readback.i293.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %write_readback.i293.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %write_readback.i293.i, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %tobool.not.i294.i = icmp eq i8 %132, 0
  br i1 %tobool.not.i294.i, label %rtl_write_byte.exit290.3.i.rtl_write_byte.exit298.i_crit_edge, label %if.then.i297.i

rtl_write_byte.exit290.3.i.rtl_write_byte.exit298.i_crit_edge: ; preds = %rtl_write_byte.exit290.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit298.i

if.then.i297.i:                                   ; preds = %rtl_write_byte.exit290.3.i
  call void @__sanitizer_cov_trace_pc() #7
  %133 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i296.i = tail call zeroext i8 %134(ptr noundef %1, i32 noundef %box_reg.1.i) #5
  br label %rtl_write_byte.exit298.i

rtl_write_byte.exit298.i:                         ; preds = %if.then.i297.i, %rtl_write_byte.exit290.3.i.rtl_write_byte.exit298.i_crit_edge
  %add131.1.i = or i32 %box_reg.1.i, 1
  %135 = ptrtoint ptr %boxcontent.sroa.7.sroa.0.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %boxcontent.sroa.7.sroa.0.i.0.boxcontent.sroa.7.sroa.0.i.0.boxcontent.sroa.7.sroa.0.0.boxcontent.sroa.7.sroa.0.0.boxcontent.sroa.7.1..i = load i8, ptr %boxcontent.sroa.7.sroa.0.i, align 4
  %136 = ptrtoint ptr %write8_async.i283.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %write8_async.i283.i, align 4
  tail call void %137(ptr noundef %1, i32 noundef %add131.1.i, i8 noundef zeroext %boxcontent.sroa.7.sroa.0.i.0.boxcontent.sroa.7.sroa.0.i.0.boxcontent.sroa.7.sroa.0.0.boxcontent.sroa.7.sroa.0.0.boxcontent.sroa.7.1..i) #5
  %138 = ptrtoint ptr %cfg.i284.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %cfg.i284.i, align 8
  %write_readback.i293.1.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %139, i32 0, i32 1
  %140 = ptrtoint ptr %write_readback.i293.1.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %write_readback.i293.1.i, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool.not.i294.1.i = icmp eq i8 %141, 0
  br i1 %tobool.not.i294.1.i, label %rtl_write_byte.exit298.i.rtl_write_byte.exit298.1.i_crit_edge, label %if.then.i297.1.i

rtl_write_byte.exit298.i.rtl_write_byte.exit298.1.i_crit_edge: ; preds = %rtl_write_byte.exit298.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit298.1.i

if.then.i297.1.i:                                 ; preds = %rtl_write_byte.exit298.i
  call void @__sanitizer_cov_trace_pc() #7
  %142 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i296.1.i = tail call zeroext i8 %143(ptr noundef %1, i32 noundef %add131.1.i) #5
  br label %rtl_write_byte.exit298.1.i

rtl_write_byte.exit298.1.i:                       ; preds = %if.then.i297.1.i, %rtl_write_byte.exit298.i.rtl_write_byte.exit298.1.i_crit_edge
  %add131.2.i = or i32 %box_reg.1.i, 2
  %144 = ptrtoint ptr %boxcontent.sroa.7.sroa.0.i.1.i.1..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %144)
  %boxcontent.sroa.7.sroa.0.i.1.boxcontent.sroa.7.sroa.0.i.1.boxcontent.sroa.7.sroa.0.1.boxcontent.sroa.7.sroa.0.1.boxcontent.sroa.7.2..i = load i8, ptr %boxcontent.sroa.7.sroa.0.i.1.i.1..sroa_idx, align 1
  %145 = ptrtoint ptr %write8_async.i283.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %write8_async.i283.i, align 4
  tail call void %146(ptr noundef %1, i32 noundef %add131.2.i, i8 noundef zeroext %boxcontent.sroa.7.sroa.0.i.1.boxcontent.sroa.7.sroa.0.i.1.boxcontent.sroa.7.sroa.0.1.boxcontent.sroa.7.sroa.0.1.boxcontent.sroa.7.2..i) #5
  %147 = ptrtoint ptr %cfg.i284.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %cfg.i284.i, align 8
  %write_readback.i293.2.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %148, i32 0, i32 1
  %149 = ptrtoint ptr %write_readback.i293.2.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %write_readback.i293.2.i, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool.not.i294.2.i = icmp eq i8 %150, 0
  br i1 %tobool.not.i294.2.i, label %rtl_write_byte.exit298.1.i.rtl_write_byte.exit298.2.i_crit_edge, label %if.then.i297.2.i

rtl_write_byte.exit298.1.i.rtl_write_byte.exit298.2.i_crit_edge: ; preds = %rtl_write_byte.exit298.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit298.2.i

if.then.i297.2.i:                                 ; preds = %rtl_write_byte.exit298.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %151 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i296.2.i = tail call zeroext i8 %152(ptr noundef %1, i32 noundef %add131.2.i) #5
  br label %rtl_write_byte.exit298.2.i

rtl_write_byte.exit298.2.i:                       ; preds = %if.then.i297.2.i, %rtl_write_byte.exit298.1.i.rtl_write_byte.exit298.2.i_crit_edge
  %add131.3.i = or i32 %box_reg.1.i, 3
  %153 = ptrtoint ptr %boxcontent.sroa.7.sroa.0.i.2.i.2..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %153)
  %boxcontent.sroa.7.sroa.0.i.2.boxcontent.sroa.7.sroa.0.i.2.boxcontent.sroa.7.sroa.0.2.boxcontent.sroa.7.sroa.0.2.boxcontent.sroa.7.3..i = load i8, ptr %boxcontent.sroa.7.sroa.0.i.2.i.2..sroa_idx, align 2
  %154 = ptrtoint ptr %write8_async.i283.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %write8_async.i283.i, align 4
  tail call void %155(ptr noundef %1, i32 noundef %add131.3.i, i8 noundef zeroext %boxcontent.sroa.7.sroa.0.i.2.boxcontent.sroa.7.sroa.0.i.2.boxcontent.sroa.7.sroa.0.2.boxcontent.sroa.7.sroa.0.2.boxcontent.sroa.7.3..i) #5
  %156 = ptrtoint ptr %cfg.i284.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %cfg.i284.i, align 8
  %write_readback.i293.3.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %157, i32 0, i32 1
  %158 = ptrtoint ptr %write_readback.i293.3.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %write_readback.i293.3.i, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %tobool.not.i294.3.i = icmp eq i8 %159, 0
  br i1 %tobool.not.i294.3.i, label %rtl_write_byte.exit298.2.i.sw.epilog138.i_crit_edge, label %if.then.i297.3.i

rtl_write_byte.exit298.2.i.sw.epilog138.i_crit_edge: ; preds = %rtl_write_byte.exit298.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog138.i

if.then.i297.3.i:                                 ; preds = %rtl_write_byte.exit298.2.i
  call void @__sanitizer_cov_trace_pc() #7
  %160 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i296.3.i = tail call zeroext i8 %161(ptr noundef %1, i32 noundef %add131.3.i) #5
  br label %sw.epilog138.i

sw.default137.i:                                  ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 4, ptr noundef nonnull @.str.41, i32 noundef %cmd_len) #5
  br label %sw.epilog138.i

sw.epilog138.i:                                   ; preds = %sw.default137.i, %if.then.i297.3.i, %rtl_write_byte.exit298.2.i.sw.epilog138.i_crit_edge, %if.then.i281.3.i, %rtl_write_byte.exit282.2.i.sw.epilog138.i_crit_edge
  %add140.i = add i8 %21, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %add140.i)
  %cmp145.i = icmp eq i8 %add140.i, 4
  %spec.select.i = select i1 %cmp145.i, i8 0, i8 %add140.i
  %162 = ptrtoint ptr %last_hmeboxnum.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %spec.select.i, ptr %last_hmeboxnum.i, align 1
  %conv151.i = zext i8 %spec.select.i to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.46, i32 noundef %conv151.i) #5
  br label %do.body154.i

do.body154.i:                                     ; preds = %sw.epilog138.i, %if.then85.i
  %call163.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %h2c_lock.i) #5
  %163 = ptrtoint ptr %h2c_setinprogress.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 0, ptr %h2c_setinprogress.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %h2c_lock.i, i32 noundef %call163.i) #5
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.47) #5
  br label %_rtl8821ae_fill_h2c_command.exit

_rtl8821ae_fill_h2c_command.exit:                 ; preds = %do.body154.i, %while.body11.i._rtl8821ae_fill_h2c_command.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %boxextcontent.sroa.0.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %boxcontent.sroa.7.sroa.0.i)
  br label %cleanup

cleanup:                                          ; preds = %_rtl8821ae_fill_h2c_command.exit, %if.then7, %land.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_cmdbuf.sroa.0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8821ae_set_fw_pwrmode_cmd(ptr nocapture noundef readonly %hw, i8 noundef zeroext %mode) local_unnamed_addr #0 align 64 {
entry:
  %u1_h2c_set_pwrmode = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %u1_h2c_set_pwrmode) #5
  %2 = getelementptr inbounds i8, ptr %u1_h2c_set_pwrmode, i32 1
  %3 = call ptr @memset(ptr %2, i32 0, i32 6)
  %btcoexist = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49
  %4 = ptrtoint ptr %btcoexist to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %btcoexist, align 8
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %6 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %get_btc_status = getelementptr inbounds %struct.rtl_hal_ops, ptr %9, i32 0, i32 66
  %10 = ptrtoint ptr %get_btc_status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_btc_status, align 4
  %call = tail call zeroext i1 %11() #5
  br i1 %call, label %cond.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %btc_is_bt_ctrl_lps = getelementptr inbounds %struct.rtl_btc_ops, ptr %5, i32 0, i32 27
  %12 = ptrtoint ptr %btc_is_bt_ctrl_lps to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %btc_is_bt_ctrl_lps, align 4
  %call3 = tail call zeroext i1 %13(ptr noundef %1) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i1 [ %call3, %cond.true ], [ false, %entry.cond.end_crit_edge ]
  %14 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cfg, align 8
  %ops5 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %ops5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops5, align 4
  %get_btc_status6 = getelementptr inbounds %struct.rtl_hal_ops, ptr %17, i32 0, i32 66
  %18 = ptrtoint ptr %get_btc_status6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %get_btc_status6, align 4
  %call7 = tail call zeroext i1 %19() #5
  br i1 %call7, label %cond.true9, label %cond.end.cond.end13_crit_edge

cond.end.cond.end13_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end13

cond.true9:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %btc_is_bt_lps_on = getelementptr inbounds %struct.rtl_btc_ops, ptr %5, i32 0, i32 29
  %20 = ptrtoint ptr %btc_is_bt_lps_on to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %btc_is_bt_lps_on, align 4
  %call10 = tail call zeroext i1 %21(ptr noundef %1) #5
  %phi.cast = zext i1 %call10 to i8
  br label %cond.end13

cond.end13:                                       ; preds = %cond.true9, %cond.end.cond.end13_crit_edge
  %cond14 = phi i8 [ %phi.cast, %cond.true9 ], [ 0, %cond.end.cond.end13_crit_edge ]
  %spec.select = select i1 %cond, i8 %cond14, i8 %mode
  %conv22 = zext i8 %spec.select to i32
  %conv24 = zext i1 %cond to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 65536, i32 noundef 3, ptr noundef nonnull @.str.11, i32 noundef %conv22, i32 noundef %conv24) #5
  %22 = zext i8 %spec.select to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.51)
  switch i8 %spec.select, label %sw.epilog [
    i8 1, label %cond.end13.sw.epilog.thread_crit_edge
    i8 2, label %sw.bb26
    i8 3, label %sw.bb27
  ]

cond.end13.sw.epilog.thread_crit_edge:            ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.thread

sw.bb26:                                          ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.thread

sw.bb27:                                          ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #7
  %reg_max_lps_awakeintvl = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 14
  %23 = ptrtoint ptr %reg_max_lps_awakeintvl to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %reg_max_lps_awakeintvl, align 2
  br label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %sw.bb27, %sw.bb26, %cond.end13.sw.epilog.thread_crit_edge
  %rlbm.0.ph = phi i8 [ 0, %cond.end13.sw.epilog.thread_crit_edge ], [ 1, %sw.bb26 ], [ 2, %sw.bb27 ]
  %awake_intvl.0.ph = phi i8 [ 2, %cond.end13.sw.epilog.thread_crit_edge ], [ 2, %sw.bb26 ], [ %24, %sw.bb27 ]
  %p2p138 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 14
  %25 = ptrtoint ptr %p2p138 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %p2p138, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool28.not139 = icmp eq i8 %26, 0
  %spec.select115140 = select i1 %tobool28.not139, i8 %rlbm.0.ph, i8 1
  %spec.select116141 = select i1 %tobool28.not139, i8 %awake_intvl.0.ph, i8 2
  br label %if.else

sw.epilog:                                        ; preds = %cond.end13
  %p2p = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 14
  %27 = ptrtoint ptr %p2p to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %p2p, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool28.not = icmp eq i8 %28, 0
  %spec.select115 = select i1 %tobool28.not, i8 2, i8 1
  %spec.select116 = select i1 %tobool28.not, i8 4, i8 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.select)
  %cmp = icmp eq i8 %spec.select, 0
  br i1 %cmp, label %sw.epilog.u8p_replace_bits.exit_crit_edge, label %sw.epilog.if.else_crit_edge

sw.epilog.if.else_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

sw.epilog.u8p_replace_bits.exit_crit_edge:        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %u8p_replace_bits.exit

if.else:                                          ; preds = %sw.epilog.if.else_crit_edge, %sw.epilog.thread
  %spec.select116146 = phi i8 [ %spec.select116141, %sw.epilog.thread ], [ %spec.select116, %sw.epilog.if.else_crit_edge ]
  %spec.select115145 = phi i8 [ %spec.select115140, %sw.epilog.thread ], [ %spec.select115, %sw.epilog.if.else_crit_edge ]
  %p2p143 = phi ptr [ %p2p138, %sw.epilog.thread ], [ %p2p, %sw.epilog.if.else_crit_edge ]
  br i1 %cond, label %if.then35, label %if.else.u8p_replace_bits.exit_crit_edge

if.else.u8p_replace_bits.exit_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %u8p_replace_bits.exit

if.then35:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %btc_get_lps_val = getelementptr inbounds %struct.rtl_btc_ops, ptr %5, i32 0, i32 25
  %29 = ptrtoint ptr %btc_get_lps_val to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %btc_get_lps_val, align 4
  %call36 = tail call zeroext i8 %30(ptr noundef %1) #5
  %btc_get_rpwm_val = getelementptr inbounds %struct.rtl_btc_ops, ptr %5, i32 0, i32 26
  %31 = ptrtoint ptr %btc_get_rpwm_val to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %btc_get_rpwm_val, align 4
  %call37 = tail call zeroext i8 %32(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %spec.select115145)
  %cmp39 = icmp ne i8 %spec.select115145, 2
  %33 = and i8 %call36, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool42.not = icmp eq i8 %33, 0
  %or.cond = select i1 %cmp39, i1 true, i1 %tobool42.not
  %spec.select117 = select i1 %or.cond, i8 %spec.select115145, i8 2
  %spec.select118 = select i1 %or.cond, i8 %spec.select116146, i8 2
  br label %u8p_replace_bits.exit

u8p_replace_bits.exit:                            ; preds = %if.then35, %if.else.u8p_replace_bits.exit_crit_edge, %sw.epilog.u8p_replace_bits.exit_crit_edge
  %p2p144 = phi ptr [ %p2p, %sw.epilog.u8p_replace_bits.exit_crit_edge ], [ %p2p143, %if.else.u8p_replace_bits.exit_crit_edge ], [ %p2p143, %if.then35 ]
  %rlbm.2 = phi i8 [ %spec.select115, %sw.epilog.u8p_replace_bits.exit_crit_edge ], [ %spec.select115145, %if.else.u8p_replace_bits.exit_crit_edge ], [ %spec.select117, %if.then35 ]
  %power_state.0 = phi i8 [ 12, %sw.epilog.u8p_replace_bits.exit_crit_edge ], [ 0, %if.else.u8p_replace_bits.exit_crit_edge ], [ %call37, %if.then35 ]
  %byte5.0 = phi i8 [ 64, %sw.epilog.u8p_replace_bits.exit_crit_edge ], [ 64, %if.else.u8p_replace_bits.exit_crit_edge ], [ %call36, %if.then35 ]
  %awake_intvl.2 = phi i8 [ %spec.select116, %sw.epilog.u8p_replace_bits.exit_crit_edge ], [ %spec.select116146, %if.else.u8p_replace_bits.exit_crit_edge ], [ %spec.select118, %if.then35 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.select)
  %tobool49.not = icmp ne i8 %spec.select, 0
  %conv51 = zext i1 %tobool49.not to i8
  %34 = ptrtoint ptr %u1_h2c_set_pwrmode to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv51, ptr %u1_h2c_set_pwrmode, align 1
  %add.ptr = getelementptr inbounds i8, ptr %u1_h2c_set_pwrmode, i32 1
  %35 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %add.ptr, align 1
  %and.i = and i8 %36, -16
  %or.i = or i8 %and.i, %rlbm.2
  store i8 %or.i, ptr %add.ptr, align 1
  br i1 %cond, label %u8p_replace_bits.exit.u8p_replace_bits.exit135_crit_edge, label %cond.false58

u8p_replace_bits.exit.u8p_replace_bits.exit135_crit_edge: ; preds = %u8p_replace_bits.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %u8p_replace_bits.exit135

cond.false58:                                     ; preds = %u8p_replace_bits.exit
  %37 = ptrtoint ptr %p2p144 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %p2p144, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool62.not = icmp eq i8 %38, 0
  br i1 %tobool62.not, label %cond.false58.u8p_replace_bits.exit135_crit_edge, label %cond.true63

cond.false58.u8p_replace_bits.exit135_crit_edge:  ; preds = %cond.false58
  call void @__sanitizer_cov_trace_pc() #7
  br label %u8p_replace_bits.exit135

cond.true63:                                      ; preds = %cond.false58
  call void @__sanitizer_cov_trace_pc() #7
  %smart_ps = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 41
  %39 = ptrtoint ptr %smart_ps to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %smart_ps, align 1
  %phi.bo = shl i8 %40, 4
  br label %u8p_replace_bits.exit135

u8p_replace_bits.exit135:                         ; preds = %cond.true63, %cond.false58.u8p_replace_bits.exit135_crit_edge, %u8p_replace_bits.exit.u8p_replace_bits.exit135_crit_edge
  %cond69 = phi i8 [ 0, %u8p_replace_bits.exit.u8p_replace_bits.exit135_crit_edge ], [ %phi.bo, %cond.true63 ], [ 16, %cond.false58.u8p_replace_bits.exit135_crit_edge ]
  %or.i134 = or i8 %cond69, %rlbm.2
  %41 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %or.i134, ptr %add.ptr, align 1
  %add.ptr72 = getelementptr inbounds i8, ptr %u1_h2c_set_pwrmode, i32 2
  %42 = ptrtoint ptr %add.ptr72 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %awake_intvl.2, ptr %add.ptr72, align 1
  %add.ptr74 = getelementptr inbounds i8, ptr %u1_h2c_set_pwrmode, i32 3
  %43 = ptrtoint ptr %add.ptr74 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %add.ptr74, align 1
  %add.ptr76 = getelementptr inbounds i8, ptr %u1_h2c_set_pwrmode, i32 4
  %44 = ptrtoint ptr %add.ptr76 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %power_state.0, ptr %add.ptr76, align 1
  %add.ptr78 = getelementptr inbounds i8, ptr %u1_h2c_set_pwrmode, i32 5
  %45 = ptrtoint ptr %add.ptr78 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %byte5.0, ptr %add.ptr78, align 1
  call void @_rtl_dbg_print_data(ptr noundef %1, i64 noundef 8388608, i32 noundef 3, ptr noundef nonnull @.str.12, ptr noundef nonnull %u1_h2c_set_pwrmode, i32 noundef 7) #5
  %46 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cfg, align 8
  %ops81 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %ops81 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops81, align 4
  %get_btc_status82 = getelementptr inbounds %struct.rtl_hal_ops, ptr %49, i32 0, i32 66
  %50 = ptrtoint ptr %get_btc_status82 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %get_btc_status82, align 4
  %call83 = call zeroext i1 %51() #5
  br i1 %call83, label %if.then84, label %u8p_replace_bits.exit135.if.end86_crit_edge

u8p_replace_bits.exit135.if.end86_crit_edge:      ; preds = %u8p_replace_bits.exit135
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end86

if.then84:                                        ; preds = %u8p_replace_bits.exit135
  call void @__sanitizer_cov_trace_pc() #7
  %btc_record_pwr_mode = getelementptr inbounds %struct.rtl_btc_ops, ptr %5, i32 0, i32 24
  %52 = ptrtoint ptr %btc_record_pwr_mode to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %btc_record_pwr_mode, align 4
  call void %53(ptr noundef %1, ptr noundef nonnull %u1_h2c_set_pwrmode, i8 noundef zeroext 7) #5
  br label %if.end86

if.end86:                                         ; preds = %if.then84, %u8p_replace_bits.exit135.if.end86_crit_edge
  call void @rtl8821ae_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 32, i32 noundef 7, ptr noundef nonnull %u1_h2c_set_pwrmode)
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %u1_h2c_set_pwrmode) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print_data(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8821ae_set_fw_media_status_rpt_cmd(ptr nocapture noundef readonly %hw, i8 noundef zeroext %mstatus) local_unnamed_addr #0 align 64 {
entry:
  %parm = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %parm) #5
  %0 = call ptr @memset(ptr %parm, i32 0, i32 3)
  %add.ptr = getelementptr inbounds i8, ptr %parm, i32 1
  %1 = and i8 %mstatus, 1
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %add.ptr, align 1
  call void @rtl8821ae_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 1, i32 noundef 3, ptr noundef nonnull %parm)
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %parm) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8821ae_set_fw_ap_off_load_cmd(ptr nocapture noundef readonly %hw, i8 noundef zeroext %ap_offload_enable) local_unnamed_addr #0 align 64 {
entry:
  %u1_apoffload_parm = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %u1_apoffload_parm) #5
  %2 = ptrtoint ptr %u1_apoffload_parm to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %ap_offload_enable, ptr %u1_apoffload_parm, align 1
  %hiddenssid = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 53
  %3 = ptrtoint ptr %hiddenssid to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %hiddenssid, align 4, !range !110
  %add.ptr = getelementptr inbounds i8, ptr %u1_apoffload_parm, i32 1
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %add.ptr, align 1
  %add.ptr3 = getelementptr inbounds i8, ptr %u1_apoffload_parm, i32 2
  %6 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %add.ptr3, align 1
  call void @rtl8821ae_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 8, i32 noundef 3, ptr noundef nonnull %u1_apoffload_parm)
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %u1_apoffload_parm) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8821ae_set_fw_wowlan_mode(ptr nocapture noundef readonly %hw, i1 noundef zeroext %func_en) local_unnamed_addr #0 align 64 {
entry:
  %fw_wowlan_info = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %fw_wowlan_info) #5
  %conv = zext i1 %func_en to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 65536, i32 noundef 4, ptr noundef nonnull @.str.13, i32 noundef %conv) #5
  %conv8.i.i = zext i1 %func_en to i8
  %wo_wlan_mode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 42
  %2 = ptrtoint ptr %wo_wlan_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %wo_wlan_mode, align 2
  %4 = and i8 %3, 2
  %or.i42 = or i8 %4, %conv8.i.i
  %5 = shl i8 %3, 2
  %6 = and i8 %5, 4
  %or.i55 = or i8 %or.i42, %6
  %or.i68 = or i8 %or.i55, -128
  %7 = ptrtoint ptr %fw_wowlan_info to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %or.i68, ptr %fw_wowlan_info, align 1
  %add.ptr = getelementptr inbounds i8, ptr %fw_wowlan_info, i32 1
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %add.ptr, align 1
  %add.ptr23 = getelementptr inbounds i8, ptr %fw_wowlan_info, i32 2
  %9 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %add.ptr23, align 1
  call void @_rtl_dbg_print_data(ptr noundef %1, i64 noundef 65536, i32 noundef 3, ptr noundef nonnull @.str.14, ptr noundef nonnull %fw_wowlan_info, i32 noundef 3) #5
  call void @rtl8821ae_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext -128, i32 noundef 3, ptr noundef nonnull %fw_wowlan_info)
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %fw_wowlan_info) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8821ae_set_fw_remote_wake_ctrl_cmd(ptr nocapture noundef readonly %hw, i8 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  %remote_wake_ctrl_parm = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %remote_wake_ctrl_parm) #5
  %conv = zext i8 %enable to i32
  %arp_offload_enable = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 43
  %2 = ptrtoint ptr %arp_offload_enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arp_offload_enable, align 1
  %conv4 = zext i8 %3 to i32
  %gtk_offload_enable = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 44
  %4 = ptrtoint ptr %gtk_offload_enable to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %gtk_offload_enable, align 4
  %conv5 = zext i8 %5 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 65536, i32 noundef 4, ptr noundef nonnull @.str.15, i32 noundef %conv, i32 noundef %conv4, i32 noundef %conv5) #5
  %6 = and i8 %enable, 1
  %7 = ptrtoint ptr %arp_offload_enable to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arp_offload_enable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.not = icmp eq i8 %8, 0
  %conv8.i.i41 = select i1 %tobool.not.not, i8 0, i8 2
  %or.i42 = or i8 %conv8.i.i41, %6
  %9 = ptrtoint ptr %gtk_offload_enable to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %gtk_offload_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool13.not.not = icmp eq i8 %10, 0
  %conv8.i.i54 = select i1 %tobool13.not.not, i8 0, i8 8
  %or.i55 = or i8 %conv8.i.i54, %or.i42
  %real_wow_v2_enable = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 77
  %11 = ptrtoint ptr %real_wow_v2_enable to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %real_wow_v2_enable, align 1, !range !110
  %13 = shl nuw nsw i8 %12, 6
  %or.i68 = or i8 %or.i55, %13
  %14 = ptrtoint ptr %remote_wake_ctrl_parm to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %or.i68, ptr %remote_wake_ctrl_parm, align 1
  call void @_rtl_dbg_print_data(ptr noundef %1, i64 noundef 65536, i32 noundef 5, ptr noundef nonnull @.str.16, ptr noundef nonnull %remote_wake_ctrl_parm, i32 noundef 1) #5
  call void @rtl8821ae_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext -127, i32 noundef 1, ptr noundef nonnull %remote_wake_ctrl_parm)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %remote_wake_ctrl_parm) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8821ae_set_fw_keep_alive_cmd(ptr nocapture noundef readonly %hw, i1 noundef zeroext %func_en) local_unnamed_addr #0 align 64 {
entry:
  %keep_alive_info = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %keep_alive_info) #5
  %2 = getelementptr inbounds i8, ptr %keep_alive_info, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %2, align 1
  %conv = zext i1 %func_en to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 65536, i32 noundef 4, ptr noundef nonnull @.str.17, i32 noundef %conv) #5
  %conv8.i.i = zext i1 %func_en to i8
  %or.i15 = or i8 %conv8.i.i, 2
  %4 = ptrtoint ptr %keep_alive_info to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %or.i15, ptr %keep_alive_info, align 1
  %add.ptr = getelementptr inbounds i8, ptr %keep_alive_info, i32 1
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 10, ptr %add.ptr, align 1
  call void @_rtl_dbg_print_data(ptr noundef %1, i64 noundef 65536, i32 noundef 5, ptr noundef nonnull @.str.18, ptr noundef nonnull %keep_alive_info, i32 noundef 3) #5
  call void @rtl8821ae_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 3, i32 noundef 3, ptr noundef nonnull %keep_alive_info)
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %keep_alive_info) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8821ae_set_fw_disconnect_decision_ctrl_cmd(ptr nocapture noundef readonly %hw, i1 noundef zeroext %enabled) local_unnamed_addr #0 align 64 {
entry:
  %parm = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %parm) #5
  %conv8.i.i = zext i1 %enabled to i8
  %or.i13 = or i8 %conv8.i.i, 2
  %2 = ptrtoint ptr %parm to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %or.i13, ptr %parm, align 1
  %add.ptr = getelementptr inbounds i8, ptr %parm, i32 1
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 30, ptr %add.ptr, align 1
  %add.ptr4 = getelementptr inbounds i8, ptr %parm, i32 2
  %4 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 3, ptr %add.ptr4, align 1
  call void @_rtl_dbg_print_data(ptr noundef %1, i64 noundef 65536, i32 noundef 5, ptr noundef nonnull @.str.19, ptr noundef nonnull %parm, i32 noundef 3) #5
  call void @rtl8821ae_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 4, i32 noundef 3, ptr noundef nonnull %parm)
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %parm) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8821ae_set_fw_global_info_cmd(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  %remote_wakeup_sec_info = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %remote_wakeup_sec_info) #5
  %pairwise_enc_algorithm = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 3
  %2 = ptrtoint ptr %pairwise_enc_algorithm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pairwise_enc_algorithm, align 4
  %group_enc_algorithm = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 4
  %4 = ptrtoint ptr %group_enc_algorithm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %group_enc_algorithm, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 65536, i32 noundef 4, ptr noundef nonnull @.str.20, i32 noundef %3, i32 noundef %5) #5
  %6 = ptrtoint ptr %pairwise_enc_algorithm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pairwise_enc_algorithm, align 4
  %conv = trunc i32 %7 to i8
  %8 = ptrtoint ptr %remote_wakeup_sec_info to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %remote_wakeup_sec_info, align 2
  %9 = ptrtoint ptr %group_enc_algorithm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %group_enc_algorithm, align 4
  %conv4 = trunc i32 %10 to i8
  %add.ptr = getelementptr inbounds i8, ptr %remote_wakeup_sec_info, i32 1
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv4, ptr %add.ptr, align 1
  call void @rtl8821ae_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext -126, i32 noundef 2, ptr noundef nonnull %remote_wakeup_sec_info)
  call void @_rtl_dbg_print_data(ptr noundef %1, i64 noundef 8388608, i32 noundef 5, ptr noundef nonnull @.str.21, ptr noundef nonnull %remote_wakeup_sec_info, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %remote_wakeup_sec_info) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8812ae_set_fw_rsvdpagepkt(ptr noundef %hw, i1 noundef zeroext %b_dl_finished, i1 noundef zeroext %dl_whole_packets) local_unnamed_addr #0 align 64 {
entry:
  %u1rsvdpageloc = alloca [5 x i8], align 1
  %u1rsvdpageloc2 = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mac80211 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %u1rsvdpageloc) #5
  %2 = call ptr @memset(ptr %u1rsvdpageloc, i32 0, i32 5)
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %u1rsvdpageloc2) #5
  %3 = call ptr @memset(ptr %u1rsvdpageloc2, i32 0, i32 7)
  %4 = ptrtoint ptr %mac80211 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mac80211, align 8
  store i8 %5, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 10), align 1
  %arrayidx5 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx5, align 1
  store i8 %7, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 11), align 1
  %arrayidx10 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx10, align 2
  store i8 %9, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 12), align 1
  %arrayidx15 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 0, i32 3
  %10 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx15, align 1
  store i8 %11, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 13), align 1
  %arrayidx20 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 0, i32 4
  %12 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx20, align 4
  store i8 %13, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 14), align 1
  %arrayidx25 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 0, i32 5
  %14 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx25, align 1
  store i8 %15, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 15), align 1
  %bssid = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 34
  %16 = ptrtoint ptr %bssid to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bssid, align 2
  store i8 %17, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 16), align 1
  %arrayidx34 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 34, i32 1
  %18 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx34, align 1
  store i8 %19, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 17), align 1
  %arrayidx39 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 34, i32 2
  %20 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx39, align 2
  store i8 %21, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 18), align 1
  %arrayidx44 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 34, i32 3
  %22 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx44, align 1
  store i8 %23, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 19), align 1
  %arrayidx49 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 34, i32 4
  %24 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx49, align 2
  store i8 %25, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 20), align 1
  %arrayidx54 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 34, i32 5
  %26 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx54, align 1
  store i8 %27, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 21), align 1
  br i1 %b_dl_finished, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  %assoc_id = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 52
  %28 = ptrtoint ptr %assoc_id to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %assoc_id, align 2
  %30 = or i16 %29, -16384
  store i16 %30, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 514), align 2
  %31 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bssid, align 4
  store i32 %32, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 516), align 4
  %33 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx49, align 2
  store i16 %34, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 520), align 2
  %35 = ptrtoint ptr %mac80211 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mac80211, align 4
  store i32 %36, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 522), align 4
  %37 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx20, align 2
  store i16 %38, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 526), align 2
  %add.ptr66 = getelementptr inbounds i8, ptr %u1rsvdpageloc, i32 1
  %39 = ptrtoint ptr %add.ptr66 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %add.ptr66, align 1
  %40 = lshr i32 %32, 24
  %41 = trunc i32 %40 to i8
  store i8 %41, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 1028), align 1
  %42 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx34, align 1
  store i8 %43, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 1029), align 1
  %44 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx39, align 2
  store i8 %45, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 1030), align 1
  %46 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx44, align 1
  store i8 %47, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 1031), align 1
  %48 = load i8, ptr %arrayidx49, align 2
  store i8 %48, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 1032), align 1
  %49 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx54, align 1
  store i8 %50, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 1033), align 1
  %51 = lshr i32 %36, 24
  %52 = trunc i32 %51 to i8
  store i8 %52, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 1034), align 1
  %53 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx5, align 1
  store i8 %54, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 1035), align 1
  %55 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx10, align 2
  store i8 %56, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 1036), align 1
  %57 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx15, align 1
  store i8 %58, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 1037), align 1
  %59 = load i8, ptr %arrayidx20, align 4
  store i8 %59, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 1038), align 1
  %60 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx25, align 1
  store i8 %61, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 1039), align 1
  store i8 %41, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 1040), align 1
  %62 = load i8, ptr %arrayidx34, align 1
  store i8 %62, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 1041), align 1
  %63 = load i8, ptr %arrayidx39, align 2
  store i8 %63, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 1042), align 1
  %64 = load i8, ptr %arrayidx44, align 1
  store i8 %64, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 1043), align 1
  %65 = load i8, ptr %arrayidx49, align 2
  store i8 %65, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 1044), align 1
  %66 = load i8, ptr %arrayidx54, align 1
  store i8 %66, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 1045), align 1
  %add.ptr158 = getelementptr inbounds i8, ptr %u1rsvdpageloc, i32 2
  %67 = ptrtoint ptr %add.ptr158 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 2, ptr %add.ptr158, align 1
  store i8 %41, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 1540), align 1
  %68 = load i8, ptr %arrayidx34, align 1
  store i8 %68, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 1541), align 1
  %69 = load i8, ptr %arrayidx39, align 2
  store i8 %69, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 1542), align 1
  %70 = load i8, ptr %arrayidx44, align 1
  store i8 %70, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 1543), align 1
  %71 = load i8, ptr %arrayidx49, align 2
  store i8 %71, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 1544), align 1
  %72 = load i8, ptr %arrayidx54, align 1
  store i8 %72, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 1545), align 1
  store i8 %52, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 1546), align 1
  %73 = load i8, ptr %arrayidx5, align 1
  store i8 %73, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 1547), align 1
  %74 = load i8, ptr %arrayidx10, align 2
  store i8 %74, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 1548), align 1
  %75 = load i8, ptr %arrayidx15, align 1
  store i8 %75, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 1549), align 1
  %76 = load i8, ptr %arrayidx20, align 4
  store i8 %76, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 1550), align 1
  %77 = load i8, ptr %arrayidx25, align 1
  store i8 %77, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 1551), align 1
  store i8 %41, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 1552), align 1
  %78 = load i8, ptr %arrayidx34, align 1
  store i8 %78, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 1553), align 1
  %79 = load i8, ptr %arrayidx39, align 2
  store i8 %79, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 1554), align 1
  %80 = load i8, ptr %arrayidx44, align 1
  store i8 %80, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 1555), align 1
  %81 = load i8, ptr %arrayidx49, align 2
  store i8 %81, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 1556), align 1
  %82 = load i8, ptr %arrayidx54, align 1
  store i8 %82, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 1557), align 1
  %add.ptr250 = getelementptr inbounds i8, ptr %u1rsvdpageloc, i32 3
  %83 = ptrtoint ptr %add.ptr250 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 3, ptr %add.ptr250, align 1
  store i8 %41, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 2052), align 1
  %84 = load i8, ptr %arrayidx34, align 1
  store i8 %84, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 2053), align 1
  %85 = load i8, ptr %arrayidx39, align 2
  store i8 %85, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 2054), align 1
  %86 = load i8, ptr %arrayidx44, align 1
  store i8 %86, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 2055), align 1
  %87 = load i8, ptr %arrayidx49, align 2
  store i8 %87, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 2056), align 1
  %88 = load i8, ptr %arrayidx54, align 1
  store i8 %88, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 2057), align 1
  %89 = load i8, ptr %mac80211, align 8
  store i8 %89, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 2058), align 1
  %90 = load i8, ptr %arrayidx5, align 1
  store i8 %90, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 2059), align 1
  %91 = load i8, ptr %arrayidx10, align 2
  store i8 %91, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 2060), align 1
  %92 = load i8, ptr %arrayidx15, align 1
  store i8 %92, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 2061), align 1
  %93 = load i8, ptr %arrayidx20, align 4
  store i8 %93, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 2062), align 1
  %94 = load i8, ptr %arrayidx25, align 1
  store i8 %94, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 2063), align 1
  store i8 %41, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 2064), align 1
  %95 = load i8, ptr %arrayidx34, align 1
  store i8 %95, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 2065), align 1
  %96 = load i8, ptr %arrayidx39, align 2
  store i8 %96, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 2066), align 1
  %97 = load i8, ptr %arrayidx44, align 1
  store i8 %97, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 2067), align 1
  %98 = load i8, ptr %arrayidx49, align 2
  store i8 %98, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 2068), align 1
  %99 = load i8, ptr %arrayidx54, align 1
  store i8 %99, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 2069), align 1
  %add.ptr342 = getelementptr inbounds i8, ptr %u1rsvdpageloc, i32 4
  %100 = ptrtoint ptr %add.ptr342 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 4, ptr %add.ptr342, align 1
  br i1 %dl_whole_packets, label %if.end345, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end345:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  store i8 %41, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 2564), align 1
  %101 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx34, align 1
  store i8 %102, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 2565), align 1
  %103 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx39, align 2
  store i8 %104, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 2566), align 1
  %105 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx44, align 1
  store i8 %106, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 2567), align 1
  %107 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx49, align 2
  store i8 %108, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 2568), align 1
  %109 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx54, align 1
  store i8 %110, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 2569), align 1
  %111 = ptrtoint ptr %mac80211 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %mac80211, align 8
  store i8 %112, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 2570), align 1
  %113 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx5, align 1
  store i8 %114, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 2571), align 1
  %115 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx10, align 2
  store i8 %116, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 2572), align 1
  %117 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx15, align 1
  store i8 %118, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 2573), align 1
  %119 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx20, align 4
  store i8 %120, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 2574), align 1
  %121 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx25, align 1
  store i8 %122, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 2575), align 1
  store i8 %41, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 2576), align 1
  %123 = load i8, ptr %arrayidx34, align 1
  store i8 %123, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 2577), align 1
  %124 = load i8, ptr %arrayidx39, align 2
  store i8 %124, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 2578), align 1
  %125 = load i8, ptr %arrayidx44, align 1
  store i8 %125, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 2579), align 1
  %126 = load i8, ptr %arrayidx49, align 2
  store i8 %126, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 2580), align 1
  %127 = load i8, ptr %arrayidx54, align 1
  store i8 %127, ptr getelementptr inbounds (<{ [2616 x i8], [1480 x i8] }>, ptr @reserved_page_packet_8812, i32 0, i32 0, i32 2581), align 1
  %add.ptr437 = getelementptr inbounds i8, ptr %u1rsvdpageloc2, i32 1
  %128 = ptrtoint ptr %add.ptr437 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 5, ptr %add.ptr437, align 1
  %129 = ptrtoint ptr %u1rsvdpageloc2 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 6, ptr %u1rsvdpageloc2, align 1
  %add.ptr440 = getelementptr inbounds i8, ptr %u1rsvdpageloc2, i32 5
  %130 = ptrtoint ptr %add.ptr440 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 7, ptr %add.ptr440, align 1
  br label %out

out:                                              ; preds = %if.end345, %if.end.out_crit_edge, %entry.out_crit_edge
  %totalpacketlen.0 = phi i32 [ 4056, %if.end345 ], [ 472, %entry.out_crit_edge ], [ 2520, %if.end.out_crit_edge ]
  tail call void @_rtl_dbg_print_data(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.22, ptr noundef nonnull @reserved_page_packet_8812, i32 noundef %totalpacketlen.0) #5
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %totalpacketlen.0, i32 noundef 2592) #5
  %tobool441.not = icmp eq ptr %call.i.i, null
  br i1 %tobool441.not, label %out.cleanup_crit_edge, label %if.end443

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end443:                                        ; preds = %out
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %totalpacketlen.0) #5
  %131 = call ptr @memcpy(ptr %call.i, ptr @reserved_page_packet_8812, i32 %totalpacketlen.0)
  %call445 = tail call zeroext i1 @rtl_cmd_send_packet(ptr noundef %hw, ptr noundef nonnull %call.i.i) #5
  %call445.not = xor i1 %call445, true
  %brmerge = select i1 %b_dl_finished, i1 true, i1 %call445.not
  br i1 %brmerge, label %if.end443.if.end461_crit_edge, label %if.then453

if.end443.if.end461_crit_edge:                    ; preds = %if.end443
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end461

if.then453:                                       ; preds = %if.end443
  call void @_rtl_dbg_print_data(ptr noundef %1, i64 noundef 8388608, i32 noundef 3, ptr noundef nonnull @.str.23, ptr noundef nonnull %u1rsvdpageloc, i32 noundef 5) #5
  call void @rtl8821ae_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 0, i32 noundef 5, ptr noundef nonnull %u1rsvdpageloc)
  br i1 %dl_whole_packets, label %if.then457, label %if.then453.if.end461_crit_edge

if.then453.if.end461_crit_edge:                   ; preds = %if.then453
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end461

if.then457:                                       ; preds = %if.then453
  call void @__sanitizer_cov_trace_pc() #7
  call void @_rtl_dbg_print_data(ptr noundef %1, i64 noundef 8388608, i32 noundef 3, ptr noundef nonnull @.str.24, ptr noundef nonnull %u1rsvdpageloc2, i32 noundef 7) #5
  call void @rtl8821ae_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext -125, i32 noundef 7, ptr noundef nonnull %u1rsvdpageloc2)
  br label %if.end461

if.end461:                                        ; preds = %if.then457, %if.then453.if.end461_crit_edge, %if.end443.if.end461_crit_edge
  br i1 %call445, label %if.end461.cleanup_crit_edge, label %if.then463

if.end461.cleanup_crit_edge:                      ; preds = %if.end461
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then463:                                       ; preds = %if.end461
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.25) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then463, %if.end461.cleanup_crit_edge, %out.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %u1rsvdpageloc2) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %u1rsvdpageloc) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl_cmd_send_packet(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8821ae_set_fw_rsvdpagepkt(ptr noundef %hw, i1 noundef zeroext %b_dl_finished, i1 noundef zeroext %dl_whole_packets) local_unnamed_addr #0 align 64 {
entry:
  %u1rsvdpageloc = alloca [5 x i8], align 1
  %u1rsvdpageloc2 = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mac80211 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %u1rsvdpageloc) #5
  %2 = call ptr @memset(ptr %u1rsvdpageloc, i32 0, i32 5)
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %u1rsvdpageloc2) #5
  %3 = call ptr @memset(ptr %u1rsvdpageloc2, i32 0, i32 7)
  %4 = ptrtoint ptr %mac80211 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mac80211, align 8
  store i8 %5, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 10), align 1
  %arrayidx6 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx6, align 1
  store i8 %7, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 11), align 1
  %arrayidx11 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx11, align 2
  store i8 %9, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 12), align 1
  %arrayidx16 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 0, i32 3
  %10 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx16, align 1
  store i8 %11, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 13), align 1
  %arrayidx21 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 0, i32 4
  %12 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx21, align 4
  store i8 %13, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 14), align 1
  %arrayidx26 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 0, i32 5
  %14 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx26, align 1
  store i8 %15, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 15), align 1
  %bssid = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 34
  %16 = ptrtoint ptr %bssid to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bssid, align 2
  store i8 %17, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 16), align 1
  %arrayidx35 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 34, i32 1
  %18 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx35, align 1
  store i8 %19, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 17), align 1
  %arrayidx40 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 34, i32 2
  %20 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx40, align 2
  store i8 %21, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 18), align 1
  %arrayidx45 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 34, i32 3
  %22 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx45, align 1
  store i8 %23, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 19), align 1
  %arrayidx50 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 34, i32 4
  %24 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx50, align 2
  store i8 %25, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 20), align 1
  %arrayidx55 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 34, i32 5
  %26 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx55, align 1
  store i8 %27, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 21), align 1
  br i1 %b_dl_finished, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  %assoc_id = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 52
  %28 = ptrtoint ptr %assoc_id to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %assoc_id, align 2
  %30 = or i16 %29, -16384
  store i16 %30, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 258), align 2
  %31 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bssid, align 4
  store i32 %32, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 260), align 4
  %33 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx50, align 2
  store i16 %34, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 264), align 2
  %35 = ptrtoint ptr %mac80211 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mac80211, align 4
  store i32 %36, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 266), align 4
  %37 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx21, align 2
  store i16 %38, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 270), align 2
  %add.ptr67 = getelementptr inbounds i8, ptr %u1rsvdpageloc, i32 1
  %39 = ptrtoint ptr %add.ptr67 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %add.ptr67, align 1
  %40 = lshr i32 %32, 24
  %41 = trunc i32 %40 to i8
  store i8 %41, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 516), align 1
  %42 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx35, align 1
  store i8 %43, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 517), align 1
  %44 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx40, align 2
  store i8 %45, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 518), align 1
  %46 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx45, align 1
  store i8 %47, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 519), align 1
  %48 = load i8, ptr %arrayidx50, align 2
  store i8 %48, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 520), align 1
  %49 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx55, align 1
  store i8 %50, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 521), align 1
  %51 = lshr i32 %36, 24
  %52 = trunc i32 %51 to i8
  store i8 %52, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 522), align 1
  %53 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx6, align 1
  store i8 %54, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 523), align 1
  %55 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx11, align 2
  store i8 %56, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 524), align 1
  %57 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx16, align 1
  store i8 %58, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 525), align 1
  %59 = load i8, ptr %arrayidx21, align 4
  store i8 %59, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 526), align 1
  %60 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx26, align 1
  store i8 %61, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 527), align 1
  store i8 %41, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 528), align 1
  %62 = load i8, ptr %arrayidx35, align 1
  store i8 %62, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 529), align 1
  %63 = load i8, ptr %arrayidx40, align 2
  store i8 %63, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 530), align 1
  %64 = load i8, ptr %arrayidx45, align 1
  store i8 %64, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 531), align 1
  %65 = load i8, ptr %arrayidx50, align 2
  store i8 %65, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 532), align 1
  %66 = load i8, ptr %arrayidx55, align 1
  store i8 %66, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 533), align 1
  %add.ptr159 = getelementptr inbounds i8, ptr %u1rsvdpageloc, i32 2
  %67 = ptrtoint ptr %add.ptr159 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 2, ptr %add.ptr159, align 1
  store i8 %41, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 772), align 1
  %68 = load i8, ptr %arrayidx35, align 1
  store i8 %68, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 773), align 1
  %69 = load i8, ptr %arrayidx40, align 2
  store i8 %69, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 774), align 1
  %70 = load i8, ptr %arrayidx45, align 1
  store i8 %70, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 775), align 1
  %71 = load i8, ptr %arrayidx50, align 2
  store i8 %71, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 776), align 1
  %72 = load i8, ptr %arrayidx55, align 1
  store i8 %72, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 777), align 1
  store i8 %52, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 778), align 1
  %73 = load i8, ptr %arrayidx6, align 1
  store i8 %73, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 779), align 1
  %74 = load i8, ptr %arrayidx11, align 2
  store i8 %74, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 780), align 1
  %75 = load i8, ptr %arrayidx16, align 1
  store i8 %75, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 781), align 1
  %76 = load i8, ptr %arrayidx21, align 4
  store i8 %76, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 782), align 1
  %77 = load i8, ptr %arrayidx26, align 1
  store i8 %77, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 783), align 1
  store i8 %41, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 784), align 1
  %78 = load i8, ptr %arrayidx35, align 1
  store i8 %78, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 785), align 1
  %79 = load i8, ptr %arrayidx40, align 2
  store i8 %79, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 786), align 1
  %80 = load i8, ptr %arrayidx45, align 1
  store i8 %80, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 787), align 1
  %81 = load i8, ptr %arrayidx50, align 2
  store i8 %81, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 788), align 1
  %82 = load i8, ptr %arrayidx55, align 1
  store i8 %82, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 789), align 1
  %add.ptr251 = getelementptr inbounds i8, ptr %u1rsvdpageloc, i32 3
  %83 = ptrtoint ptr %add.ptr251 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 3, ptr %add.ptr251, align 1
  store i8 %41, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 1028), align 1
  %84 = load i8, ptr %arrayidx35, align 1
  store i8 %84, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 1029), align 1
  %85 = load i8, ptr %arrayidx40, align 2
  store i8 %85, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 1030), align 1
  %86 = load i8, ptr %arrayidx45, align 1
  store i8 %86, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 1031), align 1
  %87 = load i8, ptr %arrayidx50, align 2
  store i8 %87, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 1032), align 1
  %88 = load i8, ptr %arrayidx55, align 1
  store i8 %88, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 1033), align 1
  store i8 %52, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 1034), align 1
  %89 = load i8, ptr %arrayidx6, align 1
  store i8 %89, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 1035), align 1
  %90 = load i8, ptr %arrayidx11, align 2
  store i8 %90, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 1036), align 1
  %91 = load i8, ptr %arrayidx16, align 1
  store i8 %91, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 1037), align 1
  %92 = load i8, ptr %arrayidx21, align 4
  store i8 %92, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 1038), align 1
  %93 = load i8, ptr %arrayidx26, align 1
  store i8 %93, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 1039), align 1
  store i8 %41, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 1040), align 1
  %94 = load i8, ptr %arrayidx35, align 1
  store i8 %94, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 1041), align 1
  %95 = load i8, ptr %arrayidx40, align 2
  store i8 %95, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 1042), align 1
  %96 = load i8, ptr %arrayidx45, align 1
  store i8 %96, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 1043), align 1
  %97 = load i8, ptr %arrayidx50, align 2
  store i8 %97, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 1044), align 1
  %98 = load i8, ptr %arrayidx55, align 1
  store i8 %98, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 1045), align 1
  %add.ptr343 = getelementptr inbounds i8, ptr %u1rsvdpageloc, i32 4
  %99 = ptrtoint ptr %add.ptr343 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 4, ptr %add.ptr343, align 1
  br i1 %dl_whole_packets, label %if.end346, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end346:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  store i8 %41, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 1284), align 1
  %100 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx35, align 1
  store i8 %101, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 1285), align 1
  %102 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx40, align 2
  store i8 %103, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 1286), align 1
  %104 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx45, align 1
  store i8 %105, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 1287), align 1
  %106 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx50, align 2
  store i8 %107, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 1288), align 1
  %108 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx55, align 1
  store i8 %109, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 1289), align 1
  store i8 %52, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 1290), align 1
  %110 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx6, align 1
  store i8 %111, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 1291), align 1
  %112 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx11, align 2
  store i8 %113, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 1292), align 1
  %114 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx16, align 1
  store i8 %115, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 1293), align 1
  %116 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx21, align 4
  store i8 %117, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 1294), align 1
  %118 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx26, align 1
  store i8 %119, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 1295), align 1
  store i8 %41, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 1296), align 1
  %120 = load i8, ptr %arrayidx35, align 1
  store i8 %120, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 1297), align 1
  %121 = load i8, ptr %arrayidx40, align 2
  store i8 %121, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 1298), align 1
  %122 = load i8, ptr %arrayidx45, align 1
  store i8 %122, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 1299), align 1
  %123 = load i8, ptr %arrayidx50, align 2
  store i8 %123, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 1300), align 1
  %124 = load i8, ptr %arrayidx55, align 1
  store i8 %124, ptr getelementptr inbounds (<{ [1336 x i8], [712 x i8] }>, ptr @reserved_page_packet_8821, i32 0, i32 0, i32 1301), align 1
  %add.ptr438 = getelementptr inbounds i8, ptr %u1rsvdpageloc2, i32 1
  %125 = ptrtoint ptr %add.ptr438 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 5, ptr %add.ptr438, align 1
  %126 = ptrtoint ptr %u1rsvdpageloc2 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 6, ptr %u1rsvdpageloc2, align 1
  %add.ptr441 = getelementptr inbounds i8, ptr %u1rsvdpageloc2, i32 5
  %127 = ptrtoint ptr %add.ptr441 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 7, ptr %add.ptr441, align 1
  br label %out

out:                                              ; preds = %if.end346, %if.end.out_crit_edge, %entry.out_crit_edge
  %totalpacketlen.0 = phi i32 [ 2008, %if.end346 ], [ 216, %entry.out_crit_edge ], [ 1240, %if.end.out_crit_edge ]
  tail call void @_rtl_dbg_print_data(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.26, ptr noundef nonnull @reserved_page_packet_8821, i32 noundef %totalpacketlen.0) #5
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %totalpacketlen.0, i32 noundef 2592) #5
  %tobool442.not = icmp eq ptr %call.i.i, null
  br i1 %tobool442.not, label %out.cleanup_crit_edge, label %if.end444

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end444:                                        ; preds = %out
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %totalpacketlen.0) #5
  %128 = call ptr @memcpy(ptr %call.i, ptr @reserved_page_packet_8821, i32 %totalpacketlen.0)
  %call446 = tail call zeroext i1 @rtl_cmd_send_packet(ptr noundef %hw, ptr noundef nonnull %call.i.i) #5
  %call446.not = xor i1 %call446, true
  %brmerge = select i1 %b_dl_finished, i1 true, i1 %call446.not
  br i1 %brmerge, label %if.end444.if.end462_crit_edge, label %if.then454

if.end444.if.end462_crit_edge:                    ; preds = %if.end444
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end462

if.then454:                                       ; preds = %if.end444
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 65536, i32 noundef 4, ptr noundef nonnull @.str.27) #5
  call void @_rtl_dbg_print_data(ptr noundef %1, i64 noundef 8388608, i32 noundef 3, ptr noundef nonnull @.str.23, ptr noundef nonnull %u1rsvdpageloc, i32 noundef 5) #5
  call void @rtl8821ae_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 0, i32 noundef 5, ptr noundef nonnull %u1rsvdpageloc)
  br i1 %dl_whole_packets, label %if.then458, label %if.then454.if.end462_crit_edge

if.then454.if.end462_crit_edge:                   ; preds = %if.then454
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end462

if.then458:                                       ; preds = %if.then454
  call void @__sanitizer_cov_trace_pc() #7
  call void @_rtl_dbg_print_data(ptr noundef %1, i64 noundef 8388608, i32 noundef 3, ptr noundef nonnull @.str.24, ptr noundef nonnull %u1rsvdpageloc2, i32 noundef 7) #5
  call void @rtl8821ae_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext -125, i32 noundef 7, ptr noundef nonnull %u1rsvdpageloc2)
  br label %if.end462

if.end462:                                        ; preds = %if.then458, %if.then454.if.end462_crit_edge, %if.end444.if.end462_crit_edge
  br i1 %call446, label %if.end462.cleanup_crit_edge, label %if.then464

if.end462.cleanup_crit_edge:                      ; preds = %if.end462
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then464:                                       ; preds = %if.end462
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.25) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then464, %if.end462.cleanup_crit_edge, %out.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %u1rsvdpageloc2) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %u1rsvdpageloc) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8821ae_set_p2p_ps_offload_cmd(ptr nocapture noundef readonly %hw, i8 noundef zeroext %p2p_ps_state) local_unnamed_addr #0 align 64 {
entry:
  %u1_ctwindow_period.i = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %p2p_ps_offload4 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 46
  %2 = zext i8 %p2p_ps_state to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.52)
  switch i8 %p2p_ps_state, label %entry.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb5
    i8 2, label %sw.bb91
    i8 3, label %sw.bb95
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 2, i32 noundef 4, ptr noundef nonnull @.str.28) #5
  %3 = ptrtoint ptr %p2p_ps_offload4 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %p2p_ps_offload4, align 1
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 2, i32 noundef 4, ptr noundef nonnull @.str.29) #5
  %ctwindow6 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 39, i32 3
  %4 = ptrtoint ptr %ctwindow6 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ctwindow6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not = icmp eq i8 %5, 0
  br i1 %cmp.not, label %sw.bb5.if.end_crit_edge, label %if.then

sw.bb5.if.end_crit_edge:                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %p2p_ps_offload4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %p2p_ps_offload4, align 1
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %p2p_ps_offload4, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %u1_ctwindow_period.i) #5
  %7 = ptrtoint ptr %u1_ctwindow_period.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %5, ptr %u1_ctwindow_period.i, align 1
  call void @rtl8821ae_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 68, i32 noundef 1, ptr noundef nonnull %u1_ctwindow_period.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %u1_ctwindow_period.i) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb5.if.end_crit_edge
  %noa_num = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 39, i32 5
  %8 = ptrtoint ptr %noa_num to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %noa_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp14194.not = icmp eq i8 %9, 0
  br i1 %cmp14194.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  br label %for.body

for.body:                                         ; preds = %rtl_write_dword.exit183.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %rtl_write_dword.exit183.for.body_crit_edge ]
  %10 = trunc i32 %indvars.iv to i8
  %shl = shl i8 %10, 4
  %11 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write8_async.i, align 4
  tail call void %12(ptr noundef %1, i32 noundef 1487, i8 noundef zeroext %shl) #5
  %13 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %write_readback.i, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %for.body.rtl_write_byte.exit_crit_edge, label %if.then.i

for.body.rtl_write_byte.exit_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %18(ptr noundef %1, i32 noundef 1487) #5
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %for.body.rtl_write_byte.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %indvars.iv)
  %cmp19 = icmp eq i32 %indvars.iv, 0
  %19 = ptrtoint ptr %p2p_ps_offload4 to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load22 = load i8, ptr %p2p_ps_offload4, align 1
  %. = select i1 %cmp19, i8 16, i8 8
  %bf.set27 = or i8 %bf.load22, %.
  store i8 %bf.set27, ptr %p2p_ps_offload4, align 1
  %arrayidx = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 39, i32 7, i32 %indvars.iv
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %22 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write32_async.i, align 4
  tail call void %23(ptr noundef %1, i32 noundef 1504, i32 noundef %21) #5
  %24 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cfg.i, align 8
  %write_readback.i154 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %write_readback.i154 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %write_readback.i154, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i155 = icmp eq i8 %27, 0
  br i1 %tobool.not.i155, label %rtl_write_byte.exit.rtl_write_dword.exit_crit_edge, label %if.then.i157

rtl_write_byte.exit.rtl_write_dword.exit_crit_edge: ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_dword.exit

if.then.i157:                                     ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read32_sync.i, align 4
  %call.i156 = tail call i32 %29(ptr noundef %1, i32 noundef 1504) #5
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i157, %rtl_write_byte.exit.rtl_write_dword.exit_crit_edge
  %arrayidx30 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 39, i32 8, i32 %indvars.iv
  %30 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx30, align 4
  %32 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write32_async.i, align 4
  tail call void %33(ptr noundef %1, i32 noundef 1508, i32 noundef %31) #5
  %34 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cfg.i, align 8
  %write_readback.i160 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %write_readback.i160 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %write_readback.i160, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i161 = icmp eq i8 %37, 0
  br i1 %tobool.not.i161, label %rtl_write_dword.exit.rtl_write_dword.exit165_crit_edge, label %if.then.i164

rtl_write_dword.exit.rtl_write_dword.exit165_crit_edge: ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_dword.exit165

if.then.i164:                                     ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read32_sync.i, align 4
  %call.i163 = tail call i32 %39(ptr noundef %1, i32 noundef 1508) #5
  br label %rtl_write_dword.exit165

rtl_write_dword.exit165:                          ; preds = %if.then.i164, %rtl_write_dword.exit.rtl_write_dword.exit165_crit_edge
  %40 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read32_sync.i, align 4
  %call.i167 = tail call i32 %41(ptr noundef %1, i32 noundef 1376) #5
  %arrayidx32 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 39, i32 9, i32 %indvars.iv
  %42 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx32, align 4
  %arrayidx34 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 39, i32 6, i32 %indvars.iv
  %44 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %45)
  %cmp36.not = icmp eq i8 %45, 1
  br i1 %cmp36.not, label %rtl_write_dword.exit165.if.end56_crit_edge, label %while.cond.preheader

rtl_write_dword.exit165.if.end56_crit_edge:       ; preds = %rtl_write_dword.exit165
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

while.cond.preheader:                             ; preds = %rtl_write_dword.exit165
  %add = add i32 %call.i167, 51200
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %add)
  %cmp39.not192 = icmp ugt i32 %43, %add
  br i1 %cmp39.not192, label %while.cond.preheader.if.end56_crit_edge, label %while.body.lr.ph

while.cond.preheader.if.end56_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %46 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %46)
  %arrayidx34.promoted = load i8, ptr %arrayidx34, align 1
  br label %while.body

while.body:                                       ; preds = %if.end55.while.body_crit_edge, %while.body.lr.ph
  %47 = phi i8 [ %arrayidx34.promoted, %while.body.lr.ph ], [ %51, %if.end55.while.body_crit_edge ]
  %start_time.0193 = phi i32 [ %43, %while.body.lr.ph ], [ %add44, %if.end55.while.body_crit_edge ]
  %48 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx30, align 4
  %add44 = add i32 %49, %start_time.0193
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %47)
  %cmp49.not = icmp eq i8 %47, -1
  br i1 %cmp49.not, label %while.body.if.end55_crit_edge, label %if.then51

while.body.if.end55_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55

if.then51:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %dec = add i8 %47, -1
  %50 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %dec, ptr %arrayidx34, align 1
  br label %if.end55

if.end55:                                         ; preds = %if.then51, %while.body.if.end55_crit_edge
  %51 = phi i8 [ %dec, %if.then51 ], [ -1, %while.body.if.end55_crit_edge ]
  %cmp39.not = icmp ugt i32 %add44, %add
  br i1 %cmp39.not, label %if.end55.if.end56_crit_edge, label %if.end55.while.body_crit_edge

if.end55.while.body_crit_edge:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end55.if.end56_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

if.end56:                                         ; preds = %if.end55.if.end56_crit_edge, %while.cond.preheader.if.end56_crit_edge, %rtl_write_dword.exit165.if.end56_crit_edge
  %start_time.1 = phi i32 [ %43, %rtl_write_dword.exit165.if.end56_crit_edge ], [ %43, %while.cond.preheader.if.end56_crit_edge ], [ %add44, %if.end55.if.end56_crit_edge ]
  %52 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write32_async.i, align 4
  tail call void %53(ptr noundef %1, i32 noundef 1512, i32 noundef %start_time.1) #5
  %54 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cfg.i, align 8
  %write_readback.i170 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %write_readback.i170 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %write_readback.i170, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i171 = icmp eq i8 %57, 0
  br i1 %tobool.not.i171, label %if.end56.rtl_write_dword.exit175_crit_edge, label %if.then.i174

if.end56.rtl_write_dword.exit175_crit_edge:       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_dword.exit175

if.then.i174:                                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %read32_sync.i, align 4
  %call.i173 = tail call i32 %59(ptr noundef %1, i32 noundef 1512) #5
  br label %rtl_write_dword.exit175

rtl_write_dword.exit175:                          ; preds = %if.then.i174, %if.end56.rtl_write_dword.exit175_crit_edge
  %60 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx34, align 1
  %conv60 = zext i8 %61 to i32
  %62 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write32_async.i, align 4
  tail call void %63(ptr noundef %1, i32 noundef 1516, i32 noundef %conv60) #5
  %64 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cfg.i, align 8
  %write_readback.i178 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %write_readback.i178 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %write_readback.i178, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool.not.i179 = icmp eq i8 %67, 0
  br i1 %tobool.not.i179, label %rtl_write_dword.exit175.rtl_write_dword.exit183_crit_edge, label %if.then.i182

rtl_write_dword.exit175.rtl_write_dword.exit183_crit_edge: ; preds = %rtl_write_dword.exit175
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_dword.exit183

if.then.i182:                                     ; preds = %rtl_write_dword.exit175
  call void @__sanitizer_cov_trace_pc() #7
  %68 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %read32_sync.i, align 4
  %call.i181 = tail call i32 %69(ptr noundef %1, i32 noundef 1516) #5
  br label %rtl_write_dword.exit183

rtl_write_dword.exit183:                          ; preds = %if.then.i182, %rtl_write_dword.exit175.rtl_write_dword.exit183_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %70 = ptrtoint ptr %noa_num to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %noa_num, align 1
  %72 = zext i8 %71 to i32
  %cmp14 = icmp ult i32 %indvars.iv.next, %72
  br i1 %cmp14, label %rtl_write_dword.exit183.for.body_crit_edge, label %for.end.loopexit

rtl_write_dword.exit183.for.body_crit_edge:       ; preds = %rtl_write_dword.exit183
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end.loopexit:                                 ; preds = %rtl_write_dword.exit183
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %phi.cmp = icmp eq i8 %71, 0
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end.for.end_crit_edge
  %.lcssa = phi i1 [ true, %if.end.for.end_crit_edge ], [ %phi.cmp, %for.end.loopexit ]
  %opp_ps = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 39, i32 4
  %73 = ptrtoint ptr %opp_ps to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %opp_ps, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %74)
  %cmp62 = icmp ne i8 %74, 1
  %or.cond = select i1 %cmp62, i1 %.lcssa, i1 false
  br i1 %or.cond, label %for.end.sw.epilog_crit_edge, label %if.then68

for.end.sw.epilog_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then68:                                        ; preds = %for.end
  %write8_async.i184 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %75 = ptrtoint ptr %write8_async.i184 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %write8_async.i184, align 4
  tail call void %76(ptr noundef %1, i32 noundef 1363, i8 noundef zeroext 16) #5
  %cfg.i185 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %77 = ptrtoint ptr %cfg.i185 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cfg.i185, align 8
  %write_readback.i186 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %write_readback.i186 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %write_readback.i186, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool.not.i187 = icmp eq i8 %80, 0
  br i1 %tobool.not.i187, label %if.then68.rtl_write_byte.exit191_crit_edge, label %if.then.i190

if.then68.rtl_write_byte.exit191_crit_edge:       ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit191

if.then.i190:                                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #7
  %read8_sync.i188 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %81 = ptrtoint ptr %read8_sync.i188 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %read8_sync.i188, align 4
  %call.i189 = tail call zeroext i8 %82(ptr noundef %1, i32 noundef 1363) #5
  br label %rtl_write_byte.exit191

rtl_write_byte.exit191:                           ; preds = %if.then.i190, %if.then68.rtl_write_byte.exit191_crit_edge
  %83 = ptrtoint ptr %p2p_ps_offload4 to i32
  call void @__asan_load1_noabort(i32 %83)
  %bf.load69 = load i8, ptr %p2p_ps_offload4, align 1
  %p2p = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 14
  %84 = ptrtoint ptr %p2p to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %p2p, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %85)
  %cmp73 = icmp eq i8 %85, 3
  %bf.set71 = and i8 %bf.load69, 61
  %bf.clear84 = or i8 %bf.set71, -128
  %bf.set78 = and i8 %bf.load69, 57
  %bf.clear80 = or i8 %bf.set78, -64
  %storemerge = select i1 %cmp73, i8 %bf.clear80, i8 %bf.clear84
  %86 = ptrtoint ptr %p2p_ps_offload4 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %storemerge, ptr %p2p_ps_offload4, align 1
  br label %sw.epilog

sw.bb91:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 2, i32 noundef 4, ptr noundef nonnull @.str.30) #5
  %87 = ptrtoint ptr %p2p_ps_offload4 to i32
  call void @__asan_load1_noabort(i32 %87)
  %bf.load92 = load i8, ptr %p2p_ps_offload4, align 1
  %bf.set94 = or i8 %bf.load92, 2
  store i8 %bf.set94, ptr %p2p_ps_offload4, align 1
  br label %sw.epilog

sw.bb95:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 2, i32 noundef 4, ptr noundef nonnull @.str.31) #5
  %88 = ptrtoint ptr %p2p_ps_offload4 to i32
  call void @__asan_load1_noabort(i32 %88)
  %bf.load96 = load i8, ptr %p2p_ps_offload4, align 1
  %bf.clear97 = and i8 %bf.load96, -3
  store i8 %bf.clear97, ptr %p2p_ps_offload4, align 1
  %p2p_ps_state99 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 39, i32 1
  %89 = ptrtoint ptr %p2p_ps_state99 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 1, ptr %p2p_ps_state99, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb95, %sw.bb91, %rtl_write_byte.exit191, %for.end.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge
  tail call void @rtl8821ae_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 20, i32 noundef 1, ptr noundef %p2p_ps_offload4)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8821ae_c2h_ra_report_handler(ptr noundef %hw, ptr nocapture noundef readonly %cmd_buf, i8 noundef zeroext %cmd_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cmd_buf, align 1
  %4 = and i8 %3, 63
  %call = tail call zeroext i8 @rtl8821ae_hw_rate_to_mrate(ptr noundef %hw, i8 noundef zeroext %4) #5
  %current_ra_rate = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 41
  %5 = ptrtoint ptr %current_ra_rate to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %call, ptr %current_ra_rate, align 1
  tail call void @rtl8821ae_dm_update_init_rate(ptr noundef %hw, i8 noundef zeroext %4) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtl8821ae_hw_rate_to_mrate(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8821ae_dm_update_init_rate(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_fill_dummy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_fw_page_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !16, !17, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !67, !68, !69, !71, !73, !74, !75, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98}
!llvm.module.flags = !{!100, !101, !102, !103, !104, !105, !106, !107}
!llvm.ident = !{!108}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/fw.c", i32 157, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/fw.c", i32 163, i32 3}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/fw.c", i32 183, i32 3}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/fw.c", i32 186, i32 3}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/fw.c", i32 202, i32 3}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/fw.c", i32 207, i32 2}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/fw.c", i32 422, i32 3}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/fw.c", i32 461, i32 2}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/fw.c", i32 481, i32 2}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/fw.c", i32 544, i32 2}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/fw.c", i32 593, i32 2}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/fw.c", i32 610, i32 2}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/fw.c", i32 627, i32 2}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/fw.c", i32 639, i32 2}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/fw.c", i32 654, i32 2}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/fw.c", i32 661, i32 2}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/fw.c", i32 680, i32 2}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/fw.c", i32 693, i32 2}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/fw.c", i32 707, i32 2}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/fw.c", i32 1621, i32 2}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/fw.c", i32 1636, i32 3}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/fw.c", i32 1641, i32 4}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/fw.c", i32 1649, i32 3}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/fw.c", i32 1759, i32 2}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/fw.c", i32 1774, i32 3}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/fw.c", i32 1818, i32 3}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/fw.c", i32 1822, i32 3}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/fw.c", i32 1876, i32 3}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/fw.c", i32 1880, i32 3}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/fw.c", i32 42, i32 2}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/fw.c", i32 50, i32 3}
!66 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @_rtl8821ae_write_fw._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @_rtl8821ae_write_fw._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/fw.c", i32 78, i32 3}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/fw.c", i32 99, i32 2}
!73 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @_rtl8821ae_fw_free_to_go._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @_rtl8821ae_fw_free_to_go._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/fw.c", i32 252, i32 2}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/fw.c", i32 257, i32 4}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/fw.c", i32 265, i32 5}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/fw.c", i32 303, i32 4}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/fw.c", i32 327, i32 6}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/fw.c", i32 338, i32 5}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/fw.c", i32 345, i32 4}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/fw.c", i32 354, i32 3}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/fw.c", i32 403, i32 3}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/fw.c", i32 412, i32 2}
!96 = !{ptr @reserved_page_packet_8812, !97, !"reserved_page_packet_8812", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/fw.c", i32 992, i32 11}
!98 = !{ptr @reserved_page_packet_8821, !99, !"reserved_page_packet_8821", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/fw.c", i32 724, i32 11}
!100 = !{i32 1, !"wchar_size", i32 2}
!101 = !{i32 1, !"min_enum_size", i32 4}
!102 = !{i32 8, !"branch-target-enforcement", i32 0}
!103 = !{i32 8, !"sign-return-address", i32 0}
!104 = !{i32 8, !"sign-return-address-all", i32 0}
!105 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!106 = !{i32 7, !"uwtable", i32 1}
!107 = !{i32 7, !"frame-pointer", i32 2}
!108 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!109 = !{!"auto-init"}
!110 = !{i8 0, i8 2}
!111 = !{!"branch_weights", i32 2000, i32 1}
