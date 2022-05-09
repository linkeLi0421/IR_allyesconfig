; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/rtl8192de/rf.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/rtl8192de/rf.c"
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

@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"20M RF 0x18 = 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"40M RF 0x18 = 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@rtl92d_phy_rf6052_set_bandwidth._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 44, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013rtl8192de: unknown bandwidth: %#X\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rtl92d_phy_rf6052_set_bandwidth\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/wireless/realtek/rtlwifi/rtl8192de/rf.c\00", [44 x i8] zeroinitializer }, align 32
@rtl92d_phy_rf6052_set_bandwidth._entry_ptr = internal global ptr @rtl92d_phy_rf6052_set_bandwidth._entry, section ".printk_index", align 4
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"CCK PWR 1M (rf-A) = 0x%x (reg 0x%x)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"CCK PWR 2~11M (rf-A) = 0x%x (reg 0x%x)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"CCK PWR 11M (rf-B) = 0x%x (reg 0x%x)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"CCK PWR 1~5.5M (rf-B) = 0x%x (reg 0x%x)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"===>\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"enable BB & RF\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"<===\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"====>\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"power down\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"<====\0A\00", [25 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Radio[%d] Fail!!\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"<---\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c" [OFDM power base index rf(%c) = 0x%x]\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c" [MCS power base index rf(%c) = 0x%x]\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"RTK better performance, writeval(%c) = 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Realtek regulatory, 20MHz, writeval(%c) = 0x%x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Better regulatory, writeval(%c) = 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"customer's limit, 40MHz rf(%c) = 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"customer's limit, 20MHz rf(%c) = 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Customer's limit rf(%c) = 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Customer, writeval rf(%c)= 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"RTK better performance, writeval rf(%c) = 0x%x\0A\00", [48 x i8] zeroinitializer }, align 32
@_rtl92d_write_ofdm_power_reg.regoffset_a = internal constant { [6 x i16], [20 x i8] } { [6 x i16] [i16 3584, i16 3588, i16 3600, i16 3604, i16 3608, i16 3612], [20 x i8] zeroinitializer }, align 32
@_rtl92d_write_ofdm_power_reg.regoffset_b = internal constant { [6 x i16], [20 x i8] } { [6 x i16] [i16 2096, i16 2100, i16 2108, i16 2120, i16 2124, i16 2152], [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Set 0x%x = %08x\0A\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.28 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 16, i64 2152, i64 3612]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 16, i64 2120, i64 3604]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.34 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.35 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 26, i32 4 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 38, i32 4 }
@___asan_gen_.42 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 44, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 102, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 107, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 112, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 117, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 394, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 398, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 408, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 424, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 429, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 434, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 576, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 591, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 140, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 154, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 208, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 228, i32 5 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 236, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 243, i32 5 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 249, i32 5 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 280, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 285, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 294, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant [12 x i8] c"regoffset_a\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 308, i32 13 }
@___asan_gen_.123 = private unnamed_addr constant [12 x i8] c"regoffset_b\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 313, i32 13 }
@___asan_gen_.126 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.127 = private constant [55 x i8] c"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/rf.c\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 337, i32 3 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @rtl92d_phy_rf6052_set_bandwidth._entry, ptr @rtl92d_phy_rf6052_set_bandwidth._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @_rtl92d_write_ofdm_power_reg.regoffset_a, ptr @_rtl92d_write_ofdm_power_reg.regoffset_b, ptr @.str.27], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92d_phy_rf6052_set_bandwidth._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92d_write_ofdm_power_reg.regoffset_a to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92d_write_ofdm_power_reg.regoffset_b to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92d_phy_rf6052_set_bandwidth(ptr noundef %hw, i8 noundef zeroext %bandwidth) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = zext i8 %bandwidth to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %bandwidth, label %do.end [
    i8 0, label %for.cond.preheader
    i8 1, label %for.cond12.preheader
  ]

for.cond12.preheader:                             ; preds = %entry
  %num_total_rfpath14 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 58
  %3 = ptrtoint ptr %num_total_rfpath14 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %num_total_rfpath14, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp1662.not = icmp eq i8 %4, 0
  br i1 %cmp1662.not, label %for.cond12.preheader.sw.epilog_crit_edge, label %for.cond12.preheader.for.body18_crit_edge

for.cond12.preheader.for.body18_crit_edge:        ; preds = %for.cond12.preheader
  br label %for.body18

for.cond12.preheader.sw.epilog_crit_edge:         ; preds = %for.cond12.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

for.cond.preheader:                               ; preds = %entry
  %num_total_rfpath = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 58
  %5 = ptrtoint ptr %num_total_rfpath to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %num_total_rfpath, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp64.not = icmp eq i8 %6, 0
  br i1 %cmp64.not, label %for.cond.preheader.sw.epilog_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.sw.epilog_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %indvars.iv67 = phi i32 [ %indvars.iv.next68, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 52, i32 %indvars.iv67
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %and = and i32 %8, -3073
  %or = or i32 %and, 1024
  store i32 %or, ptr %arrayidx, align 4
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 32
  %11 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i, align 4
  %set_rfreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %14, i32 0, i32 48
  %15 = ptrtoint ptr %set_rfreg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %set_rfreg.i, align 4
  tail call void %16(ptr noundef %hw, i32 noundef %indvars.iv67, i32 noundef 24, i32 noundef 3072, i32 noundef 1) #5
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %18) #5
  %indvars.iv.next68 = add nuw nsw i32 %indvars.iv67, 1
  %19 = ptrtoint ptr %num_total_rfpath to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %num_total_rfpath, align 4
  %21 = zext i8 %20 to i32
  %cmp = icmp ult i32 %indvars.iv.next68, %21
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.sw.epilog_crit_edge

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body18:                                       ; preds = %for.body18.for.body18_crit_edge, %for.cond12.preheader.for.body18_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.body18.for.body18_crit_edge ], [ 0, %for.cond12.preheader.for.body18_crit_edge ]
  %arrayidx21 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 52, i32 %indvars.iv
  %22 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx21, align 4
  %and22 = and i32 %23, -3073
  store i32 %and22, ptr %arrayidx21, align 4
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv, align 8
  %cfg.i58 = getelementptr inbounds %struct.rtl_priv, ptr %25, i32 0, i32 32
  %26 = ptrtoint ptr %cfg.i58 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cfg.i58, align 8
  %ops.i59 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %ops.i59 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i59, align 4
  %set_rfreg.i60 = getelementptr inbounds %struct.rtl_hal_ops, ptr %29, i32 0, i32 48
  %30 = ptrtoint ptr %set_rfreg.i60 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %set_rfreg.i60, align 4
  tail call void %31(ptr noundef %hw, i32 noundef %indvars.iv, i32 noundef 24, i32 noundef 3072, i32 noundef 0) #5
  %32 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx21, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %33) #5
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %34 = ptrtoint ptr %num_total_rfpath14 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %num_total_rfpath14, align 4
  %36 = zext i8 %35 to i32
  %cmp16 = icmp ult i32 %indvars.iv.next, %36
  br i1 %cmp16, label %for.body18.for.body18_crit_edge, label %for.body18.sw.epilog_crit_edge

for.body18.sw.epilog_crit_edge:                   ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

for.body18.for.body18_crit_edge:                  ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body18

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i8 %bandwidth to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %conv) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %for.body18.sw.epilog_crit_edge, %for.body.sw.epilog_crit_edge, %for.cond.preheader.sw.epilog_crit_edge, %for.cond12.preheader.sw.epilog_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92d_phy_rf6052_set_cck_txpower(ptr noundef %hw, ptr nocapture noundef readonly %ppowerlevel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %eeprom_regulatory = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 54
  %2 = ptrtoint ptr %eeprom_regulatory to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %eeprom_regulatory, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.not = icmp eq i8 %3, 0
  %act_scanning = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 20
  %4 = ptrtoint ptr %act_scanning to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %act_scanning, align 2, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %for.body33.preheader, label %if.then4

for.body33.preheader:                             ; preds = %entry
  %6 = ptrtoint ptr %ppowerlevel to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ppowerlevel, align 1
  %arrayidx35.1 = getelementptr i8, ptr %ppowerlevel, i32 1
  %8 = ptrtoint ptr %arrayidx35.1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx35.1, align 1
  br i1 %cmp.not, label %if.then61, label %for.body33.preheader.if.end81_crit_edge

for.body33.preheader.if.end81_crit_edge:          ; preds = %for.body33.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end81

if.then4:                                         ; preds = %entry
  br i1 %cmp.not, label %if.then4.if.end98.3.1_crit_edge, label %for.body.preheader

if.then4.if.end98.3.1_crit_edge:                  ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end98.3.1

for.body.preheader:                               ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %ppowerlevel to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ppowerlevel, align 1
  %arrayidx11.1 = getelementptr i8, ptr %ppowerlevel, i32 1
  %12 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx11.1, align 1
  br label %if.end81

if.then61:                                        ; preds = %for.body33.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %conv36.1 = zext i8 %9 to i32
  %shl50.1 = shl nuw i32 %conv36.1, 24
  %conv36 = zext i8 %7 to i32
  %shl50 = shl nuw i32 %conv36, 24
  %arrayidx63 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 41, i32 0, i32 6
  %14 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx63, align 4
  %arrayidx66 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 41, i32 0, i32 7
  %16 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx66, align 4
  %shl67 = shl i32 %17, 8
  %add = add i32 %shl67, %15
  %tx_agc.sroa.0.sroa.15.0.insert.ext246 = zext i8 %7 to i32
  %tx_agc.sroa.0.sroa.13.0.insert.ext238 = zext i8 %7 to i32
  %tx_agc.sroa.0.sroa.13.0.insert.shift239 = shl nuw nsw i32 %tx_agc.sroa.0.sroa.13.0.insert.ext238, 8
  %tx_agc.sroa.0.sroa.13.0.insert.insert241 = or i32 %tx_agc.sroa.0.sroa.13.0.insert.shift239, %tx_agc.sroa.0.sroa.15.0.insert.ext246
  %tx_agc.sroa.0.sroa.11.0.insert.ext230 = zext i8 %7 to i32
  %tx_agc.sroa.0.sroa.11.0.insert.shift231 = shl nuw nsw i32 %tx_agc.sroa.0.sroa.11.0.insert.ext230, 16
  %tx_agc.sroa.0.sroa.11.0.insert.insert233 = or i32 %tx_agc.sroa.0.sroa.13.0.insert.insert241, %tx_agc.sroa.0.sroa.11.0.insert.shift231
  %tx_agc.sroa.0.sroa.0.0.insert.insert225 = or i32 %tx_agc.sroa.0.sroa.11.0.insert.insert233, %shl50
  %add69 = add i32 %add, %tx_agc.sroa.0.sroa.0.0.insert.insert225
  %tx_agc.sroa.0.sroa.0.0.extract.shift = lshr i32 %add69, 24
  %tx_agc.sroa.0.sroa.0.0.extract.trunc = trunc i32 %tx_agc.sroa.0.sroa.0.0.extract.shift to i8
  %tx_agc.sroa.0.sroa.11.0.extract.shift = lshr i32 %add69, 16
  %tx_agc.sroa.0.sroa.11.0.extract.trunc = trunc i32 %tx_agc.sroa.0.sroa.11.0.extract.shift to i8
  %tx_agc.sroa.0.sroa.13.0.extract.shift = lshr i32 %add69, 8
  %tx_agc.sroa.0.sroa.13.0.extract.trunc = trunc i32 %tx_agc.sroa.0.sroa.13.0.extract.shift to i8
  %tx_agc.sroa.0.sroa.15.0.extract.trunc = trunc i32 %add69 to i8
  %arrayidx72 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 41, i32 0, i32 14
  %18 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx72, align 4
  %arrayidx75 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 41, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx75, align 4
  %shl76 = shl i32 %21, 24
  %add77 = add i32 %shl76, %19
  %tx_agc.sroa.17.sroa.15.0.insert.ext217 = zext i8 %9 to i32
  %tx_agc.sroa.17.sroa.13.0.insert.ext209 = zext i8 %9 to i32
  %tx_agc.sroa.17.sroa.13.0.insert.shift210 = shl nuw nsw i32 %tx_agc.sroa.17.sroa.13.0.insert.ext209, 8
  %tx_agc.sroa.17.sroa.13.0.insert.insert212 = or i32 %tx_agc.sroa.17.sroa.13.0.insert.shift210, %tx_agc.sroa.17.sroa.15.0.insert.ext217
  %tx_agc.sroa.17.sroa.11.0.insert.ext201 = zext i8 %9 to i32
  %tx_agc.sroa.17.sroa.11.0.insert.shift202 = shl nuw nsw i32 %tx_agc.sroa.17.sroa.11.0.insert.ext201, 16
  %tx_agc.sroa.17.sroa.11.0.insert.insert204 = or i32 %tx_agc.sroa.17.sroa.13.0.insert.insert212, %tx_agc.sroa.17.sroa.11.0.insert.shift202
  %tx_agc.sroa.17.sroa.0.0.insert.insert196 = or i32 %tx_agc.sroa.17.sroa.11.0.insert.insert204, %shl50.1
  %add79 = add i32 %add77, %tx_agc.sroa.17.sroa.0.0.insert.insert196
  %tx_agc.sroa.17.sroa.0.0.extract.shift = lshr i32 %add79, 24
  %tx_agc.sroa.17.sroa.0.0.extract.trunc = trunc i32 %tx_agc.sroa.17.sroa.0.0.extract.shift to i8
  %tx_agc.sroa.17.sroa.11.0.extract.shift = lshr i32 %add79, 16
  %tx_agc.sroa.17.sroa.11.0.extract.trunc = trunc i32 %tx_agc.sroa.17.sroa.11.0.extract.shift to i8
  %tx_agc.sroa.17.sroa.13.0.extract.shift = lshr i32 %add79, 8
  %tx_agc.sroa.17.sroa.13.0.extract.trunc = trunc i32 %tx_agc.sroa.17.sroa.13.0.extract.shift to i8
  %tx_agc.sroa.17.sroa.15.0.extract.trunc = trunc i32 %add79 to i8
  br label %if.end81

if.end81:                                         ; preds = %if.then61, %for.body.preheader, %for.body33.preheader.if.end81_crit_edge
  %tx_agc.sroa.0.sroa.15.0 = phi i8 [ %tx_agc.sroa.0.sroa.15.0.extract.trunc, %if.then61 ], [ %7, %for.body33.preheader.if.end81_crit_edge ], [ %11, %for.body.preheader ]
  %tx_agc.sroa.0.sroa.13.0 = phi i8 [ %tx_agc.sroa.0.sroa.13.0.extract.trunc, %if.then61 ], [ %7, %for.body33.preheader.if.end81_crit_edge ], [ %11, %for.body.preheader ]
  %tx_agc.sroa.0.sroa.11.0 = phi i8 [ %tx_agc.sroa.0.sroa.11.0.extract.trunc, %if.then61 ], [ %7, %for.body33.preheader.if.end81_crit_edge ], [ %11, %for.body.preheader ]
  %tx_agc.sroa.0.sroa.0.0 = phi i8 [ %tx_agc.sroa.0.sroa.0.0.extract.trunc, %if.then61 ], [ %7, %for.body33.preheader.if.end81_crit_edge ], [ %11, %for.body.preheader ]
  %tx_agc.sroa.17.sroa.15.0 = phi i8 [ %tx_agc.sroa.17.sroa.15.0.extract.trunc, %if.then61 ], [ %9, %for.body33.preheader.if.end81_crit_edge ], [ %13, %for.body.preheader ]
  %tx_agc.sroa.17.sroa.13.0 = phi i8 [ %tx_agc.sroa.17.sroa.13.0.extract.trunc, %if.then61 ], [ %9, %for.body33.preheader.if.end81_crit_edge ], [ %13, %for.body.preheader ]
  %tx_agc.sroa.17.sroa.11.0 = phi i8 [ %tx_agc.sroa.17.sroa.11.0.extract.trunc, %if.then61 ], [ %9, %for.body33.preheader.if.end81_crit_edge ], [ %13, %for.body.preheader ]
  %tx_agc.sroa.17.sroa.0.0 = phi i8 [ %tx_agc.sroa.17.sroa.0.0.extract.trunc, %if.then61 ], [ %9, %for.body33.preheader.if.end81_crit_edge ], [ %13, %for.body.preheader ]
  %22 = call i8 @llvm.umin.i8(i8 %tx_agc.sroa.0.sroa.0.0, i8 63)
  %23 = call i8 @llvm.umin.i8(i8 %tx_agc.sroa.0.sroa.11.0, i8 63)
  %24 = call i8 @llvm.umin.i8(i8 %tx_agc.sroa.0.sroa.13.0, i8 63)
  %25 = call i8 @llvm.umin.i8(i8 %tx_agc.sroa.0.sroa.15.0, i8 63)
  %26 = call i8 @llvm.umin.i8(i8 %tx_agc.sroa.17.sroa.0.0, i8 63)
  %27 = call i8 @llvm.umin.i8(i8 %tx_agc.sroa.17.sroa.11.0, i8 63)
  %28 = call i8 @llvm.umin.i8(i8 %tx_agc.sroa.17.sroa.13.0, i8 63)
  %29 = call i8 @llvm.umin.i8(i8 %tx_agc.sroa.17.sroa.15.0, i8 63)
  %phi.cast = zext i8 %25 to i32
  %phi.cast380 = zext i8 %24 to i32
  %phi.cast381 = zext i8 %23 to i32
  %phi.bo = shl nuw nsw i32 %phi.cast381, 8
  %30 = or i32 %phi.bo, %phi.cast380
  %phi.cast382 = zext i8 %22 to i32
  %phi.bo383 = shl nuw nsw i32 %phi.cast382, 16
  %31 = or i32 %30, %phi.bo383
  %phi.cast384 = zext i8 %29 to i32
  %phi.cast385 = zext i8 %28 to i32
  %phi.bo386 = shl nuw nsw i32 %phi.cast385, 8
  %phi.cast387 = zext i8 %27 to i32
  %phi.bo388 = shl nuw nsw i32 %phi.cast387, 16
  %phi.cast389 = zext i8 %26 to i32
  br label %if.end98.3.1

if.end98.3.1:                                     ; preds = %if.end81, %if.then4.if.end98.3.1_crit_edge
  %tx_agc.sroa.17.sroa.13.1378 = phi i32 [ 16128, %if.then4.if.end98.3.1_crit_edge ], [ %phi.bo386, %if.end81 ]
  %tx_agc.sroa.17.sroa.0.1346356377 = phi i32 [ 63, %if.then4.if.end98.3.1_crit_edge ], [ %phi.cast389, %if.end81 ]
  %tx_agc.sroa.0.sroa.15.1330340361373 = phi i32 [ 63, %if.then4.if.end98.3.1_crit_edge ], [ %phi.cast, %if.end81 ]
  %tx_agc.sroa.17.sroa.11.1362372 = phi i32 [ 4128768, %if.then4.if.end98.3.1_crit_edge ], [ %phi.bo388, %if.end81 ]
  %tx_agc.sroa.17.sroa.15.1 = phi i32 [ 63, %if.then4.if.end98.3.1_crit_edge ], [ %phi.cast384, %if.end81 ]
  %tx_agc.sroa.0.sroa.0.0.insert.insert = phi i32 [ 4144959, %if.then4.if.end98.3.1_crit_edge ], [ %31, %if.end81 ]
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %32 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops.i, align 4
  %set_bbreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %35, i32 0, i32 46
  %36 = ptrtoint ptr %set_bbreg.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %set_bbreg.i, align 4
  tail call void %37(ptr noundef %hw, i32 noundef 3592, i32 noundef 65280, i32 noundef %tx_agc.sroa.0.sroa.15.1330340361373) #5
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.5, i32 noundef %tx_agc.sroa.0.sroa.15.1330340361373, i32 noundef 3592) #5
  %38 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %priv, align 8
  %cfg.i161 = getelementptr inbounds %struct.rtl_priv, ptr %39, i32 0, i32 32
  %40 = ptrtoint ptr %cfg.i161 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cfg.i161, align 8
  %ops.i162 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %ops.i162 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops.i162, align 4
  %set_bbreg.i163 = getelementptr inbounds %struct.rtl_hal_ops, ptr %43, i32 0, i32 46
  %44 = ptrtoint ptr %set_bbreg.i163 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %set_bbreg.i163, align 4
  tail call void %45(ptr noundef %hw, i32 noundef 2156, i32 noundef -256, i32 noundef %tx_agc.sroa.0.sroa.0.0.insert.insert) #5
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.6, i32 noundef %tx_agc.sroa.0.sroa.0.0.insert.insert, i32 noundef 2156) #5
  %tx_agc.sroa.17.sroa.13.0.insert.insert = or i32 %tx_agc.sroa.17.sroa.13.1378, %tx_agc.sroa.17.sroa.15.1
  %tx_agc.sroa.17.sroa.11.0.insert.insert = or i32 %tx_agc.sroa.17.sroa.13.0.insert.insert, %tx_agc.sroa.17.sroa.11.1362372
  %46 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %priv, align 8
  %cfg.i165 = getelementptr inbounds %struct.rtl_priv, ptr %47, i32 0, i32 32
  %48 = ptrtoint ptr %cfg.i165 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cfg.i165, align 8
  %ops.i166 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %49, i32 0, i32 4
  %50 = ptrtoint ptr %ops.i166 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ops.i166, align 4
  %set_bbreg.i167 = getelementptr inbounds %struct.rtl_hal_ops, ptr %51, i32 0, i32 46
  %52 = ptrtoint ptr %set_bbreg.i167 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %set_bbreg.i167, align 4
  tail call void %53(ptr noundef %hw, i32 noundef 2156, i32 noundef 255, i32 noundef %tx_agc.sroa.17.sroa.0.1346356377) #5
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.7, i32 noundef %tx_agc.sroa.17.sroa.0.1346356377, i32 noundef 2156) #5
  %54 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %priv, align 8
  %cfg.i169 = getelementptr inbounds %struct.rtl_priv, ptr %55, i32 0, i32 32
  %56 = ptrtoint ptr %cfg.i169 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cfg.i169, align 8
  %ops.i170 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %ops.i170 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops.i170, align 4
  %set_bbreg.i171 = getelementptr inbounds %struct.rtl_hal_ops, ptr %59, i32 0, i32 46
  %60 = ptrtoint ptr %set_bbreg.i171 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %set_bbreg.i171, align 4
  tail call void %61(ptr noundef %hw, i32 noundef 2104, i32 noundef -256, i32 noundef %tx_agc.sroa.17.sroa.11.0.insert.insert) #5
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.8, i32 noundef %tx_agc.sroa.17.sroa.11.0.insert.insert, i32 noundef 2104) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92d_phy_rf6052_set_ofdm_txpower(ptr noundef %hw, ptr nocapture noundef readonly %ppowerlevel, i8 noundef zeroext %channel) local_unnamed_addr #0 align 64 {
entry:
  %writeval = alloca [2 x i32], align 4
  %powerbase0 = alloca [2 x i32], align 4
  %powerbase1 = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %writeval) #5
  %0 = ptrtoint ptr %writeval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %writeval, align 4, !annotation !70
  %1 = getelementptr inbounds [2 x i32], ptr %writeval, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !70
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %powerbase0) #5
  %3 = getelementptr inbounds [2 x i32], ptr %powerbase0, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %powerbase1) #5
  %4 = getelementptr inbounds [2 x i32], ptr %powerbase1, i32 0, i32 1
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %5 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv.i, align 8
  %conv7.i = zext i8 %channel to i32
  %sub.i = add nsw i32 %conv7.i, -1
  %7 = ptrtoint ptr %ppowerlevel to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ppowerlevel, align 1
  %arrayidx8.i = getelementptr %struct.rtl_priv, ptr %6, i32 0, i32 17, i32 44, i32 0, i32 %sub.i
  %9 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx8.i, align 1
  %conv11.i = zext i8 %8 to i32
  %conv12.i = zext i8 %10 to i32
  %add.i = add nuw nsw i32 %conv12.i, %conv11.i
  %shl.i = shl i32 %add.i, 24
  %shl14.i = shl nuw nsw i32 %add.i, 8
  %or.i = mul nuw nsw i32 %add.i, 65537
  %or15.i = or i32 %shl14.i, %shl.i
  %or16.i = or i32 %or15.i, %or.i
  %11 = ptrtoint ptr %powerbase0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or16.i, ptr %powerbase0, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %6, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.17, i32 noundef 65, i32 noundef %or16.i) #5
  %arrayidx.1.i = getelementptr i8, ptr %ppowerlevel, i32 1
  %12 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.1.i, align 1
  %arrayidx8.1.i = getelementptr %struct.rtl_priv, ptr %6, i32 0, i32 17, i32 44, i32 1, i32 %sub.i
  %14 = ptrtoint ptr %arrayidx8.1.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx8.1.i, align 1
  %conv11.1.i = zext i8 %13 to i32
  %conv12.1.i = zext i8 %15 to i32
  %add.1.i = add nuw nsw i32 %conv12.1.i, %conv11.1.i
  %shl.1.i = shl i32 %add.1.i, 24
  %shl14.1.i = shl nuw nsw i32 %add.1.i, 8
  %or.1.i = mul nuw nsw i32 %add.1.i, 65537
  %or15.1.i = or i32 %shl14.1.i, %shl.1.i
  %or16.1.i = or i32 %or15.1.i, %or.1.i
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or16.1.i, ptr %3, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %6, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.17, i32 noundef 66, i32 noundef %or16.1.i) #5
  %current_chan_bw.i = getelementptr inbounds %struct.rtl_priv, ptr %6, i32 0, i32 14, i32 5
  %17 = ptrtoint ptr %current_chan_bw.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %current_chan_bw.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp29.i = icmp eq i8 %18, 0
  br i1 %cmp29.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx35.i = getelementptr %struct.rtl_priv, ptr %6, i32 0, i32 17, i32 42, i32 0, i32 %sub.i
  %19 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx35.i, align 1
  %add40.i = add i8 %20, %8
  %.pre.i = zext i8 %add40.i to i32
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %conv44.pre-phi.i = phi i32 [ %.pre.i, %if.then.i ], [ %conv11.i, %entry.if.end.i_crit_edge ]
  %or50.i = mul nuw i32 %conv44.pre-phi.i, 16843009
  %21 = ptrtoint ptr %powerbase1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or50.i, ptr %powerbase1, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %6, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.18, i32 noundef 65, i32 noundef %or50.i) #5
  %22 = ptrtoint ptr %current_chan_bw.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %current_chan_bw.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp29.1.i = icmp eq i8 %23, 0
  br i1 %cmp29.1.i, label %if.then.1.i, label %if.end.i._rtl92d_phy_get_power_base.exit_crit_edge

if.end.i._rtl92d_phy_get_power_base.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %_rtl92d_phy_get_power_base.exit

if.then.1.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx35.1.i = getelementptr %struct.rtl_priv, ptr %6, i32 0, i32 17, i32 42, i32 1, i32 %sub.i
  %24 = ptrtoint ptr %arrayidx35.1.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx35.1.i, align 1
  %add40.1.i = add i8 %25, %13
  %.pre99.i = zext i8 %add40.1.i to i32
  br label %_rtl92d_phy_get_power_base.exit

_rtl92d_phy_get_power_base.exit:                  ; preds = %if.then.1.i, %if.end.i._rtl92d_phy_get_power_base.exit_crit_edge
  %conv44.1.pre-phi.i = phi i32 [ %.pre99.i, %if.then.1.i ], [ %conv11.1.i, %if.end.i._rtl92d_phy_get_power_base.exit_crit_edge ]
  %or50.1.i = mul nuw i32 %conv44.1.pre-phi.i, 16843009
  %26 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or50.1.i, ptr %4, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %6, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.18, i32 noundef 66, i32 noundef %or50.1.i) #5
  %sub.i14 = add i8 %channel, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %sub.i14)
  %cmp.i.i = icmp ugt i8 %sub.i14, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %sub.i14)
  %cmp5.i.i = icmp ult i8 %sub.i14, 9
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %sub.i14)
  %cmp12.i.i = icmp ult i8 %sub.i14, 14
  call void @__sanitizer_cov_trace_const_cmp1(i8 29, i8 %sub.i14)
  %cmp19.i.i = icmp ult i8 %sub.i14, 29
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %sub.i14)
  %cmp26.i.i = icmp ult i8 %sub.i14, 50
  %..i.i = select i1 %cmp26.i.i, i32 7, i32 8
  %.mux.i = zext i1 %cmp.i.i to i32
  %.mux.mux.i = select i1 %cmp5.i.i, i32 %.mux.i, i32 2
  %spec.select.i = select i1 %cmp19.i.i, i32 6, i32 %..i.i
  %group.0.i.i = select i1 %cmp12.i.i, i32 %.mux.mux.i, i32 %spec.select.i
  br label %for.body

for.body:                                         ; preds = %_rtl92d_write_ofdm_power_reg.exit.for.body_crit_edge, %_rtl92d_phy_get_power_base.exit
  %indvars.iv = phi i32 [ 0, %_rtl92d_phy_get_power_base.exit ], [ %indvars.iv.next, %_rtl92d_write_ofdm_power_reg.exit.for.body_crit_edge ]
  %27 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv.i, align 8
  %eeprom_regulatory.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 17, i32 54
  %current_chan_bw69.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 14, i32 5
  %mcs_offset97.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 14, i32 41
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %indvars.iv)
  %cmp176.i = icmp ult i32 %indvars.iv, 2
  %powerbase0.powerbase1311.i = select i1 %cmp176.i, ptr %powerbase0, ptr %powerbase1
  %pwrgroup_cnt.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 14, i32 38
  br label %for.body.i

for.body.i:                                       ; preds = %sw.epilog.i.for.body.i_crit_edge, %for.body
  %rf.0315.i = phi i32 [ 0, %for.body ], [ %inc210.i, %sw.epilog.i.for.body.i_crit_edge ]
  %writeval.0314.i = phi i32 [ 0, %for.body ], [ %writeval.1.i, %sw.epilog.i.for.body.i_crit_edge ]
  %29 = ptrtoint ptr %eeprom_regulatory.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %eeprom_regulatory.i, align 1
  %31 = zext i8 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %30, label %sw.default.i [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb14.i
    i8 2, label %sw.bb55.i
    i8 3, label %sw.bb68.i
  ]

sw.bb.i:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rf.0315.i)
  %tobool.not.i = icmp eq i32 %rf.0315.i, 0
  %cond.i = select i1 %tobool.not.i, i32 0, i32 8
  %add.i15 = add nuw nsw i32 %cond.i, %indvars.iv
  %arrayidx3.i = getelementptr [16 x i32], ptr %mcs_offset97.i, i32 0, i32 %add.i15
  %32 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx3.i, align 4
  %cond9.in.i = getelementptr i32, ptr %powerbase0.powerbase1311.i, i32 %rf.0315.i
  %34 = ptrtoint ptr %cond9.in.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %cond9.i = load i32, ptr %cond9.in.i, align 4
  %add10.i = add i32 %cond9.i, %33
  %cond13.i = select i1 %tobool.not.i, i32 65, i32 66
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %28, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.19, i32 noundef %cond13.i, i32 noundef %add10.i) #5
  br label %sw.epilog.i

sw.bb14.i:                                        ; preds = %for.body.i
  %35 = ptrtoint ptr %pwrgroup_cnt.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %pwrgroup_cnt.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %36)
  %cmp20.i = icmp ugt i8 %36, 12
  br i1 %cmp20.i, label %if.then22.i, label %sw.bb14.i.sw.epilog.i_crit_edge

sw.bb14.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

if.then22.i:                                      ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %current_chan_bw69.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %current_chan_bw69.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp26.i = icmp eq i8 %38, 0
  %chnlgroup.0.v.i = select i1 %cmp26.i, i32 1, i32 4
  %chnlgroup.0.i = add nuw nsw i32 %chnlgroup.0.v.i, %group.0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rf.0315.i)
  %tobool37.not.i = icmp eq i32 %rf.0315.i, 0
  %cond38.i = select i1 %tobool37.not.i, i32 0, i32 8
  %add39.i = add nuw nsw i32 %cond38.i, %indvars.iv
  %arrayidx40.i = getelementptr %struct.rtl_priv, ptr %28, i32 0, i32 14, i32 41, i32 %chnlgroup.0.i, i32 %add39.i
  %39 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx40.i, align 4
  %cond49.in.i = getelementptr i32, ptr %powerbase0.powerbase1311.i, i32 %rf.0315.i
  %41 = ptrtoint ptr %cond49.in.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %cond49.i = load i32, ptr %cond49.in.i, align 4
  %add50.i = add i32 %cond49.i, %40
  %cond53.i = select i1 %tobool37.not.i, i32 65, i32 66
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %28, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.20, i32 noundef %cond53.i, i32 noundef %add50.i) #5
  br label %sw.epilog.i

sw.bb55.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %cond64.in.i = getelementptr i32, ptr %powerbase0.powerbase1311.i, i32 %rf.0315.i
  %42 = ptrtoint ptr %cond64.in.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %cond64.i = load i32, ptr %cond64.in.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rf.0315.i)
  %cmp65.i = icmp eq i32 %rf.0315.i, 0
  %cond67.i = select i1 %cmp65.i, i32 65, i32 66
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %28, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.21, i32 noundef %cond67.i, i32 noundef %cond64.i) #5
  br label %sw.epilog.i

sw.bb68.i:                                        ; preds = %for.body.i
  %43 = ptrtoint ptr %current_chan_bw69.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %current_chan_bw69.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %44)
  %cmp71.i = icmp eq i8 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rf.0315.i)
  %cmp74.i = icmp eq i32 %rf.0315.i, 0
  %cond76.i = select i1 %cmp74.i, i32 65, i32 66
  %arrayidx89.i = getelementptr %struct.rtl_priv, ptr %28, i32 0, i32 17, i32 36, i32 %rf.0315.i, i32 %sub.i
  %arrayidx80.i = getelementptr %struct.rtl_priv, ptr %28, i32 0, i32 17, i32 37, i32 %rf.0315.i, i32 %sub.i
  %arrayidx89.sink.i = select i1 %cmp71.i, ptr %arrayidx80.i, ptr %arrayidx89.i
  %.str.23.sink.i = select i1 %cmp71.i, ptr @.str.22, ptr @.str.23
  %45 = ptrtoint ptr %arrayidx89.sink.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx89.sink.i, align 1
  %conv90.i = zext i8 %46 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %28, i64 noundef 9, i32 noundef 256, ptr noundef nonnull %.str.23.sink.i, i32 noundef %cond76.i, i32 noundef %conv90.i) #5
  %cond102.i = select i1 %cmp74.i, i32 0, i32 8
  %add103.i = add nuw nsw i32 %cond102.i, %indvars.iv
  %arrayidx104.i = getelementptr [16 x i32], ptr %mcs_offset97.i, i32 0, i32 %add103.i
  %47 = ptrtoint ptr %arrayidx104.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx104.i, align 4
  %49 = ptrtoint ptr %current_chan_bw69.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %current_chan_bw69.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %50)
  %cmp113.i = icmp eq i8 %50, 1
  %and.i = and i32 %48, 127
  %conv108.i = trunc i32 %and.i to i8
  br i1 %cmp113.i, label %if.then115.i, label %if.else136.i

if.then115.i:                                     ; preds = %sw.bb68.i
  call void @__sanitizer_cov_trace_pc() #7
  %51 = ptrtoint ptr %arrayidx80.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx80.i, align 1
  %conv124.i = zext i8 %52 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %conv124.i)
  %cmp125.i = icmp ugt i32 %and.i, %conv124.i
  %spec.select352.i = select i1 %cmp125.i, i8 %52, i8 %conv108.i
  %and.1320.i = lshr i32 %48, 8
  %shr.1321.i = and i32 %and.1320.i, 127
  %conv108.1322.i = trunc i32 %shr.1321.i to i8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.1321.i, i32 %conv124.i)
  %cmp125.1.i = icmp ugt i32 %shr.1321.i, %conv124.i
  %pwr_diff_limit.sroa.7.0.ph.i = select i1 %cmp125.1.i, i8 %52, i8 %conv108.1322.i
  %and.2329.i = lshr i32 %48, 16
  %shr.2330.i = and i32 %and.2329.i, 127
  %conv108.2331.i = trunc i32 %shr.2330.i to i8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.2330.i, i32 %conv124.i)
  %cmp125.2.i = icmp ugt i32 %shr.2330.i, %conv124.i
  %pwr_diff_limit.sroa.12.0.ph.i = select i1 %cmp125.2.i, i8 %52, i8 %conv108.2331.i
  %and.3341.i = lshr i32 %48, 24
  %shr.3342.i = and i32 %and.3341.i, 127
  %conv108.3343.i = trunc i32 %shr.3342.i to i8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.3342.i, i32 %conv124.i)
  %cmp125.3.i = icmp ugt i32 %shr.3342.i, %conv124.i
  %spec.select354.i = select i1 %cmp125.3.i, i8 %52, i8 %conv108.3343.i
  br label %for.inc.3.i

if.else136.i:                                     ; preds = %sw.bb68.i
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %arrayidx89.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx89.i, align 1
  %conv145.i = zext i8 %54 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %conv145.i)
  %cmp146.i = icmp ugt i32 %and.i, %conv145.i
  %spec.select353.i = select i1 %cmp146.i, i8 %54, i8 %conv108.i
  %and.1.i = lshr i32 %48, 8
  %shr.1.i = and i32 %and.1.i, 127
  %conv108.1.i = trunc i32 %shr.1.i to i8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.1.i, i32 %conv145.i)
  %cmp146.1.i = icmp ugt i32 %shr.1.i, %conv145.i
  %pwr_diff_limit.sroa.7.0.i = select i1 %cmp146.1.i, i8 %54, i8 %conv108.1.i
  %and.2.i = lshr i32 %48, 16
  %shr.2.i = and i32 %and.2.i, 127
  %conv108.2.i = trunc i32 %shr.2.i to i8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.2.i, i32 %conv145.i)
  %cmp146.2.i = icmp ugt i32 %shr.2.i, %conv145.i
  %pwr_diff_limit.sroa.12.0.i = select i1 %cmp146.2.i, i8 %54, i8 %conv108.2.i
  %and.3.i = lshr i32 %48, 24
  %shr.3.i = and i32 %and.3.i, 127
  %conv108.3.i = trunc i32 %shr.3.i to i8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.3.i, i32 %conv145.i)
  %cmp146.3.i = icmp ugt i32 %shr.3.i, %conv145.i
  %spec.select355.i = select i1 %cmp146.3.i, i8 %54, i8 %conv108.3.i
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.else136.i, %if.then115.i
  %pwr_diff_limit.sroa.12.0348.i = phi i8 [ %pwr_diff_limit.sroa.12.0.i, %if.else136.i ], [ %pwr_diff_limit.sroa.12.0.ph.i, %if.then115.i ]
  %pwr_diff_limit.sroa.0.0323332346.i = phi i8 [ %spec.select353.i, %if.else136.i ], [ %spec.select352.i, %if.then115.i ]
  %pwr_diff_limit.sroa.7.0334344.i = phi i8 [ %pwr_diff_limit.sroa.7.0.i, %if.else136.i ], [ %pwr_diff_limit.sroa.7.0.ph.i, %if.then115.i ]
  %pwr_diff_limit.sroa.17.0.i = phi i8 [ %spec.select355.i, %if.else136.i ], [ %spec.select354.i, %if.then115.i ]
  %conv160.i = zext i8 %pwr_diff_limit.sroa.17.0.i to i32
  %shl161.i = shl nuw i32 %conv160.i, 24
  %conv163.i = zext i8 %pwr_diff_limit.sroa.12.0348.i to i32
  %shl164.i = shl nuw nsw i32 %conv163.i, 16
  %or.i16 = or i32 %shl161.i, %shl164.i
  %conv166.i = zext i8 %pwr_diff_limit.sroa.7.0334344.i to i32
  %shl167.i = shl nuw nsw i32 %conv166.i, 8
  %or168.i = or i32 %or.i16, %shl167.i
  %conv170.i = zext i8 %pwr_diff_limit.sroa.0.0323332346.i to i32
  %or171.i = or i32 %or168.i, %conv170.i
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %28, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.24, i32 noundef %cond76.i, i32 noundef %or171.i) #5
  %cond183.in.i = getelementptr i32, ptr %powerbase0.powerbase1311.i, i32 %rf.0315.i
  %55 = ptrtoint ptr %cond183.in.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %cond183.i = load i32, ptr %cond183.in.i, align 4
  %add184.i = add i32 %or171.i, %cond183.i
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %28, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.25, i32 noundef %cond76.i, i32 noundef %add184.i) #5
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rf.0315.i)
  %tobool192.not.i = icmp eq i32 %rf.0315.i, 0
  %cond193.i = select i1 %tobool192.not.i, i32 0, i32 8
  %add194.i = add nuw nsw i32 %cond193.i, %indvars.iv
  %arrayidx195.i = getelementptr [16 x i32], ptr %mcs_offset97.i, i32 0, i32 %add194.i
  %56 = ptrtoint ptr %arrayidx195.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx195.i, align 4
  %cond204.in.i = getelementptr i32, ptr %powerbase0.powerbase1311.i, i32 %rf.0315.i
  %58 = ptrtoint ptr %cond204.in.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %cond204.i = load i32, ptr %cond204.in.i, align 4
  %add205.i = add i32 %cond204.i, %57
  %cond208.i = select i1 %tobool192.not.i, i32 65, i32 66
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %28, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.26, i32 noundef %cond208.i, i32 noundef %add205.i) #5
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %for.inc.3.i, %sw.bb55.i, %if.then22.i, %sw.bb14.i.sw.epilog.i_crit_edge, %sw.bb.i
  %writeval.1.i = phi i32 [ %add205.i, %sw.default.i ], [ %add184.i, %for.inc.3.i ], [ %cond64.i, %sw.bb55.i ], [ %add50.i, %if.then22.i ], [ %writeval.0314.i, %sw.bb14.i.sw.epilog.i_crit_edge ], [ %add10.i, %sw.bb.i ]
  %add.ptr.i = getelementptr i32, ptr %writeval, i32 %rf.0315.i
  %59 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %writeval.1.i, ptr %add.ptr.i, align 4
  %inc210.i = add nuw nsw i32 %rf.0315.i, 1
  %exitcond.not.i = icmp eq i32 %inc210.i, 2
  br i1 %exitcond.not.i, label %_rtl92d_get_txpower_writeval_by_regulatory.exit, label %sw.epilog.i.for.body.i_crit_edge

sw.epilog.i.for.body.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

_rtl92d_get_txpower_writeval_by_regulatory.exit:  ; preds = %sw.epilog.i
  %60 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %priv.i, align 8
  %arrayidx38.i = getelementptr [6 x i16], ptr @_rtl92d_write_ofdm_power_reg.regoffset_a, i32 0, i32 %indvars.iv
  %arrayidx40.i18 = getelementptr [6 x i16], ptr @_rtl92d_write_ofdm_power_reg.regoffset_b, i32 0, i32 %indvars.iv
  %rf_type.i.i = getelementptr inbounds %struct.rtl_priv, ptr %61, i32 0, i32 14, i32 4
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %61, i32 0, i32 13, i32 5
  %cfg.i155.i = getelementptr inbounds %struct.rtl_priv, ptr %61, i32 0, i32 32
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %61, i32 0, i32 13, i32 9
  br label %for.body.i25

for.body.i25:                                     ; preds = %for.inc114.i.for.body.i25_crit_edge, %_rtl92d_get_txpower_writeval_by_regulatory.exit
  %indvars.iv.i = phi i32 [ 0, %_rtl92d_get_txpower_writeval_by_regulatory.exit ], [ %indvars.iv.next.i, %for.inc114.i.for.body.i25_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %writeval, i32 %indvars.iv.i
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.i, align 4
  %and.i19 = and i32 %63, 127
  %conv15.i = and i32 %63, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv15.i)
  %cmp16.not.i = icmp eq i32 %conv15.i, 0
  %shr.1.i20 = and i32 %63, 32512
  %64 = and i32 %63, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp16.not.1.i = icmp eq i32 %64, 0
  %shr.2.i21 = and i32 %63, 8323072
  %65 = and i32 %63, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp16.not.2.i = icmp eq i32 %65, 0
  %and.3.i22 = lshr i32 %63, 24
  %shr.3.i23 = and i32 %and.3.i22, 127
  %66 = and i32 %63, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp16.not.3.i = icmp eq i32 %66, 0
  %conv21.i = select i1 %cmp16.not.3.i, i32 %shr.3.i23, i32 63
  %shl22.i = shl nuw nsw i32 %conv21.i, 24
  %conv24.i = select i1 %cmp16.not.2.i, i32 %shr.2.i21, i32 4128768
  %or.i24 = or i32 %shl22.i, %conv24.i
  %conv27.i = select i1 %cmp16.not.1.i, i32 %shr.1.i20, i32 16128
  %or29.i = or i32 %or.i24, %conv27.i
  %conv31.i = select i1 %cmp16.not.i, i32 %and.i19, i32 63
  %or32.i = or i32 %or29.i, %conv31.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %indvars.iv.i)
  %cmp34.i = icmp eq i32 %indvars.iv.i, 0
  %regoffset.0.in.i = select i1 %cmp34.i, ptr %arrayidx38.i, ptr %arrayidx40.i18
  %67 = ptrtoint ptr %regoffset.0.in.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %regoffset.0.i = load i16, ptr %regoffset.0.in.i, align 2
  %conv42.i = zext i16 %regoffset.0.i to i32
  %68 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %priv.i, align 8
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %69, i32 0, i32 32
  %70 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cfg.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %71, i32 0, i32 4
  %72 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ops.i.i, align 4
  %set_bbreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %73, i32 0, i32 46
  %74 = ptrtoint ptr %set_bbreg.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %set_bbreg.i.i, align 4
  tail call void %75(ptr noundef %hw, i32 noundef %conv42.i, i32 noundef -1, i32 noundef %or32.i) #5
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %61, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.27, i32 noundef %conv42.i, i32 noundef %or32.i) #5
  %76 = ptrtoint ptr %rf_type.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %rf_type.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %77)
  %cmp45.i = icmp eq i8 %77, 2
  br i1 %cmp45.i, label %land.lhs.true.i, label %land.lhs.true58.i

land.lhs.true.i:                                  ; preds = %for.body.i25
  %78 = zext i16 %regoffset.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.29)
  switch i16 %regoffset.0.i, label %land.lhs.true.i.for.inc114.i_crit_edge [
    i16 3612, label %land.lhs.true.i.if.end106.i_crit_edge
    i16 2152, label %land.lhs.true.i.if.then85.i_crit_edge
  ]

land.lhs.true.i.if.then85.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then85.i

land.lhs.true.i.if.end106.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end106.i

land.lhs.true.i.for.inc114.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc114.i

land.lhs.true58.i:                                ; preds = %for.body.i25
  %79 = zext i16 %regoffset.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.30)
  switch i16 %regoffset.0.i, label %land.lhs.true58.i.for.inc114.i_crit_edge [
    i16 3604, label %land.lhs.true58.i.if.end106.i_crit_edge
    i16 2120, label %land.lhs.true58.i.if.then85.i_crit_edge
  ]

land.lhs.true58.i.if.then85.i_crit_edge:          ; preds = %land.lhs.true58.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then85.i

land.lhs.true58.i.if.end106.i_crit_edge:          ; preds = %land.lhs.true58.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end106.i

land.lhs.true58.i.for.inc114.i_crit_edge:         ; preds = %land.lhs.true58.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc114.i

if.then85.i:                                      ; preds = %land.lhs.true58.i.if.then85.i_crit_edge, %land.lhs.true.i.if.then85.i_crit_edge
  br label %if.end106.i

if.end106.i:                                      ; preds = %if.then85.i, %land.lhs.true58.i.if.end106.i_crit_edge, %land.lhs.true.i.if.end106.i_crit_edge
  %regoffset.2.i = phi i32 [ 3224, %if.then85.i ], [ 3216, %land.lhs.true.i.if.end106.i_crit_edge ], [ 3216, %land.lhs.true58.i.if.end106.i_crit_edge ]
  %80 = tail call i32 @llvm.usub.sat.i32(i32 %conv21.i, i32 8) #5
  %conv109.i = trunc i32 %80 to i8
  %81 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %82(ptr noundef %61, i32 noundef %regoffset.2.i, i8 noundef zeroext %conv109.i) #5
  %83 = ptrtoint ptr %cfg.i155.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cfg.i155.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %write_readback.i.i, align 1, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool.not.i.i = icmp eq i8 %86, 0
  br i1 %tobool.not.i.i, label %if.end106.i.if.end106.1.i_crit_edge, label %if.then.i.i

if.end106.i.if.end106.1.i_crit_edge:              ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end106.1.i

if.then.i.i:                                      ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #7
  %87 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = tail call zeroext i8 %88(ptr noundef %61, i32 noundef %regoffset.2.i) #5
  br label %if.end106.1.i

if.end106.1.i:                                    ; preds = %if.then.i.i, %if.end106.i.if.end106.1.i_crit_edge
  %89 = tail call i32 @llvm.usub.sat.i32(i32 %conv21.i, i32 16) #5
  %add.1.i26 = or i32 %regoffset.2.i, 1
  %conv109.1.i = trunc i32 %89 to i8
  %90 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %91(ptr noundef %61, i32 noundef %add.1.i26, i8 noundef zeroext %conv109.1.i) #5
  %92 = ptrtoint ptr %cfg.i155.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %cfg.i155.i, align 8
  %write_readback.i.1.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %write_readback.i.1.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %write_readback.i.1.i, align 1, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool.not.i.1.i = icmp eq i8 %95, 0
  br i1 %tobool.not.i.1.i, label %if.end106.1.i.if.end106.2.i_crit_edge, label %if.then.i.1.i

if.end106.1.i.if.end106.2.i_crit_edge:            ; preds = %if.end106.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end106.2.i

if.then.i.1.i:                                    ; preds = %if.end106.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %96 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.1.i = tail call zeroext i8 %97(ptr noundef %61, i32 noundef %add.1.i26) #5
  br label %if.end106.2.i

if.end106.2.i:                                    ; preds = %if.then.i.1.i, %if.end106.1.i.if.end106.2.i_crit_edge
  %98 = tail call i32 @llvm.usub.sat.i32(i32 %conv21.i, i32 22) #5
  %add.2.i = or i32 %regoffset.2.i, 2
  %conv109.2.i = trunc i32 %98 to i8
  %99 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %100(ptr noundef %61, i32 noundef %add.2.i, i8 noundef zeroext %conv109.2.i) #5
  %101 = ptrtoint ptr %cfg.i155.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %cfg.i155.i, align 8
  %write_readback.i.2.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %write_readback.i.2.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %write_readback.i.2.i, align 1, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool.not.i.2.i = icmp eq i8 %104, 0
  br i1 %tobool.not.i.2.i, label %if.end106.2.i.for.inc114.i_crit_edge, label %if.then.i.2.i

if.end106.2.i.for.inc114.i_crit_edge:             ; preds = %if.end106.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc114.i

if.then.i.2.i:                                    ; preds = %if.end106.2.i
  call void @__sanitizer_cov_trace_pc() #7
  %105 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.2.i = tail call zeroext i8 %106(ptr noundef %61, i32 noundef %add.2.i) #5
  br label %for.inc114.i

for.inc114.i:                                     ; preds = %if.then.i.2.i, %if.end106.2.i.for.inc114.i_crit_edge, %land.lhs.true58.i.for.inc114.i_crit_edge, %land.lhs.true.i.for.inc114.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i27 = icmp eq i32 %indvars.iv.next.i, 2
  br i1 %exitcond.not.i27, label %_rtl92d_write_ofdm_power_reg.exit, label %for.inc114.i.for.body.i25_crit_edge

for.inc114.i.for.body.i25_crit_edge:              ; preds = %for.inc114.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i25

_rtl92d_write_ofdm_power_reg.exit:                ; preds = %for.inc114.i
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 6
  br i1 %exitcond.not, label %for.end, label %_rtl92d_write_ofdm_power_reg.exit.for.body_crit_edge

_rtl92d_write_ofdm_power_reg.exit.for.body_crit_edge: ; preds = %_rtl92d_write_ofdm_power_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %_rtl92d_write_ofdm_power_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %powerbase1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %powerbase0) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %writeval) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl92d_phy_enable_anotherphy(ptr noundef %hw, i1 noundef zeroext %bmac0) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %during_mac0init_radiob = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 60
  %2 = ptrtoint ptr %during_mac0init_radiob to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %during_mac0init_radiob, align 1
  %during_mac1init_radioa = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 61
  %3 = ptrtoint ptr %during_mac1init_radioa to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %during_mac1init_radioa, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 4, ptr noundef nonnull @.str.9) #5
  %conv10 = select i1 %bmac0, i32 83, i32 129
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %4 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %5(ptr noundef %1, i32 noundef %conv10) #5
  %conv11 = zext i8 %call.i to i32
  %conv12 = select i1 %bmac0, i32 1, i32 128
  %and = and i32 %conv12, %conv11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = select i1 %bmac0, i8 12, i8 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.10) #5
  %call14 = tail call i32 @rtl92de_read_dword_dbi(ptr noundef %hw, i16 noundef zeroext 0, i8 noundef zeroext %conv) #5
  %or16 = or i32 %call14, 537067520
  tail call void @rtl92de_write_dword_dbi(ptr noundef %hw, i16 noundef zeroext 0, i32 noundef %or16, i8 noundef zeroext %conv) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 4, ptr noundef nonnull @.str.11) #5
  ret i1 %tobool13.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92de_write_dword_dbi(ptr noundef, i16 noundef zeroext, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl92de_read_dword_dbi(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92d_phy_powerdown_anotherphy(ptr noundef %hw, i1 noundef zeroext %bmac0) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %during_mac0init_radiob = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 60
  %2 = ptrtoint ptr %during_mac0init_radiob to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %during_mac0init_radiob, align 1
  %during_mac1init_radioa = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 61
  %3 = ptrtoint ptr %during_mac1init_radioa to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %during_mac1init_radioa, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 4, ptr noundef nonnull @.str.12) #5
  %conv10 = select i1 %bmac0, i32 83, i32 129
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %4 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %5(ptr noundef %1, i32 noundef %conv10) #5
  %conv11 = zext i8 %call.i to i32
  %conv12 = select i1 %bmac0, i32 1, i32 128
  %and = and i32 %conv12, %conv11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = select i1 %bmac0, i8 12, i8 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.13) #5
  tail call void @rtl92de_write_dword_dbi(ptr noundef %hw, i16 noundef zeroext 2112, i32 noundef 0, i8 noundef zeroext %conv) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 4, ptr noundef nonnull @.str.14) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl92d_phy_rf6052_config(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %phy = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14
  %rf_type = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 4
  %2 = ptrtoint ptr %rf_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rf_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  %spec.select = select i1 %cmp, i8 1, i8 2
  %4 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 58
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %spec.select, ptr %4, align 4
  %macphymode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 52
  %6 = ptrtoint ptr %macphymode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %macphymode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp4 = icmp eq i32 %7, 1
  br i1 %cmp4, label %if.then6, label %entry.for.body.lr.ph_crit_edge

entry.for.body.lr.ph_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.lr.ph

if.then6:                                         ; preds = %entry
  %current_bandtype = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 53
  %8 = ptrtoint ptr %current_bandtype to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %current_bandtype, align 8
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %9, label %if.then6.if.end39_crit_edge [
    i32 0, label %land.lhs.true
    i32 1, label %land.lhs.true20
  ]

if.then6.if.end39_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

land.lhs.true:                                    ; preds = %if.then6
  %interfaceindex = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 56
  %11 = ptrtoint ptr %interfaceindex to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %interfaceindex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp9 = icmp eq i32 %12, 0
  br i1 %cmp9, label %if.then11, label %land.lhs.true.if.end39_crit_edge

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.then11:                                        ; preds = %land.lhs.true
  %call = tail call zeroext i1 @rtl92d_phy_enable_anotherphy(ptr noundef %hw, i1 noundef zeroext true)
  br i1 %call, label %if.then11.for.body.lr.ph.sink.split_crit_edge, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then11.for.body.lr.ph.sink.split_crit_edge:    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.lr.ph.sink.split

land.lhs.true20:                                  ; preds = %if.then6
  %interfaceindex21 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 56
  %13 = ptrtoint ptr %interfaceindex21 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %interfaceindex21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp22 = icmp eq i32 %14, 1
  br i1 %cmp22, label %if.then24, label %land.lhs.true20.if.end39_crit_edge

land.lhs.true20.if.end39_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.then24:                                        ; preds = %land.lhs.true20
  %call25 = tail call zeroext i1 @rtl92d_phy_enable_anotherphy(ptr noundef %hw, i1 noundef zeroext false)
  br i1 %call25, label %if.then24.for.body.lr.ph.sink.split_crit_edge, label %if.then24.cleanup_crit_edge

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then24.for.body.lr.ph.sink.split_crit_edge:    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.lr.ph.sink.split

if.end39:                                         ; preds = %land.lhs.true20.if.end39_crit_edge, %land.lhs.true.if.end39_crit_edge, %if.then6.if.end39_crit_edge
  %interfaceindex32 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 56
  %15 = ptrtoint ptr %interfaceindex32 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %interfaceindex32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp33 = icmp eq i32 %16, 1
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %17)
  %.pr = load i8, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %cmp43304.not = icmp eq i8 %.pr, 0
  br i1 %cmp43304.not, label %if.end39.if.end115_crit_edge, label %if.end39.for.body.lr.ph_crit_edge

if.end39.for.body.lr.ph_crit_edge:                ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.lr.ph

if.end39.if.end115_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end115

for.body.lr.ph.sink.split:                        ; preds = %if.then24.for.body.lr.ph.sink.split_crit_edge, %if.then11.for.body.lr.ph.sink.split_crit_edge
  %mac0_initradiob_first.0.off0324.ph = phi i1 [ true, %if.then11.for.body.lr.ph.sink.split_crit_edge ], [ false, %if.then24.for.body.lr.ph.sink.split_crit_edge ]
  %mac1_initradioa_first.0.off0323.ph = phi i1 [ false, %if.then11.for.body.lr.ph.sink.split_crit_edge ], [ true, %if.then24.for.body.lr.ph.sink.split_crit_edge ]
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %4, align 4
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.body.lr.ph.sink.split, %if.end39.for.body.lr.ph_crit_edge, %entry.for.body.lr.ph_crit_edge
  %true_bpath.0.off0325 = phi i1 [ %cmp33, %if.end39.for.body.lr.ph_crit_edge ], [ false, %entry.for.body.lr.ph_crit_edge ], [ false, %for.body.lr.ph.sink.split ]
  %mac0_initradiob_first.0.off0324 = phi i1 [ false, %if.end39.for.body.lr.ph_crit_edge ], [ false, %entry.for.body.lr.ph_crit_edge ], [ %mac0_initradiob_first.0.off0324.ph, %for.body.lr.ph.sink.split ]
  %mac1_initradioa_first.0.off0323 = phi i1 [ false, %if.end39.for.body.lr.ph_crit_edge ], [ false, %entry.for.body.lr.ph_crit_edge ], [ %mac1_initradioa_first.0.off0323.ph, %for.body.lr.ph.sink.split ]
  %during_mac0init_radiob72 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 60
  %during_mac1init_radioa56 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 61
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %true_bpath.1.off0313 = phi i1 [ %true_bpath.0.off0325, %for.body.lr.ph ], [ %true_bpath.2.off0279, %for.inc.for.body_crit_edge ]
  %need_pwrdown_radiob.0.off0311 = phi i1 [ false, %for.body.lr.ph ], [ %need_pwrdown_radiob.1.off0277, %for.inc.for.body_crit_edge ]
  %need_pwrdown_radioa.0.off0309 = phi i1 [ false, %for.body.lr.ph ], [ %need_pwrdown_radioa.1.off0275, %for.inc.for.body_crit_edge ]
  %mac0_initradiob_first.1.off0308 = phi i1 [ %mac0_initradiob_first.0.off0324, %for.body.lr.ph ], [ %mac0_initradiob_first.2.off0273, %for.inc.for.body_crit_edge ]
  %mac1_initradioa_first.1.off0307 = phi i1 [ %mac1_initradioa_first.0.off0323, %for.body.lr.ph ], [ %mac1_initradioa_first.2.off0271, %for.inc.for.body_crit_edge ]
  %rfpath.0306 = phi i8 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %u4_regvalue.0305 = phi i32 [ 0, %for.body.lr.ph ], [ %u4_regvalue.1, %for.inc.for.body_crit_edge ]
  br i1 %mac1_initradioa_first.1.off0307, label %if.then46, label %if.else60

if.then46:                                        ; preds = %for.body
  %19 = zext i8 %rfpath.0306 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.32)
  switch i8 %rfpath.0306, label %if.then46.if.end76_crit_edge [
    i8 0, label %if.then50
    i8 1, label %if.then55
  ]

if.then46.if.end76_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end76

if.then50:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %during_mac1init_radioa56 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %during_mac1init_radioa56, align 4
  br label %sw.epilog.sink.split

if.then55:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %during_mac1init_radioa56 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %during_mac1init_radioa56, align 4
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %4, align 4
  br label %sw.epilog.sink.split

if.else60:                                        ; preds = %for.body
  br i1 %mac0_initradiob_first.1.off0308, label %if.then62, label %if.else60.if.end76_crit_edge

if.else60.if.end76_crit_edge:                     ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end76

if.then62:                                        ; preds = %if.else60
  %23 = zext i8 %rfpath.0306 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.33)
  switch i8 %rfpath.0306, label %if.then62.if.end76_crit_edge [
    i8 0, label %if.then66
    i8 1, label %if.then71
  ]

if.then62.if.end76_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end76

if.then66:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %during_mac0init_radiob72 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %during_mac0init_radiob72, align 1
  br label %sw.epilog.sink.split

if.then71:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %during_mac0init_radiob72 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %during_mac0init_radiob72, align 1
  %26 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %4, align 4
  br label %sw.epilog.sink.split

if.end76:                                         ; preds = %if.then62.if.end76_crit_edge, %if.else60.if.end76_crit_edge, %if.then46.if.end76_crit_edge
  %mac0_initradiob_first.2.off0 = phi i1 [ false, %if.else60.if.end76_crit_edge ], [ %mac0_initradiob_first.1.off0308, %if.then46.if.end76_crit_edge ], [ true, %if.then62.if.end76_crit_edge ]
  %idxprom = zext i8 %rfpath.0306 to i32
  %arrayidx = getelementptr [4 x %struct.bb_reg_def], ptr %phy, i32 0, i32 %idxprom
  %27 = zext i8 %rfpath.0306 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.34)
  switch i8 %rfpath.0306, label %if.end76.sw.epilog_crit_edge [
    i8 0, label %if.end76.sw.epilog.sink.split_crit_edge
    i8 2, label %if.end76.sw.epilog.sink.split_crit_edge355
    i8 1, label %if.end76.sw.bb79_crit_edge
    i8 3, label %if.end76.sw.bb79_crit_edge356
  ]

if.end76.sw.bb79_crit_edge356:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb79

if.end76.sw.bb79_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb79

if.end76.sw.epilog.sink.split_crit_edge355:       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

if.end76.sw.epilog.sink.split_crit_edge:          ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

if.end76.sw.epilog_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb79:                                          ; preds = %if.end76.sw.bb79_crit_edge, %if.end76.sw.bb79_crit_edge356
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb79, %if.end76.sw.epilog.sink.split_crit_edge, %if.end76.sw.epilog.sink.split_crit_edge355, %if.then71, %if.then66, %if.then55, %if.then50
  %arrayidx.sink = phi ptr [ %arrayidx, %sw.bb79 ], [ %arrayidx, %if.end76.sw.epilog.sink.split_crit_edge ], [ %arrayidx, %if.end76.sw.epilog.sink.split_crit_edge355 ], [ %phy, %if.then50 ], [ %phy, %if.then55 ], [ %phy, %if.then71 ], [ %phy, %if.then66 ]
  %.sink333 = phi i32 [ 1048576, %sw.bb79 ], [ 16, %if.end76.sw.epilog.sink.split_crit_edge ], [ 16, %if.end76.sw.epilog.sink.split_crit_edge355 ], [ 16, %if.then50 ], [ 16, %if.then55 ], [ 16, %if.then71 ], [ 16, %if.then66 ]
  %idxprom282.ph = phi i32 [ %idxprom, %sw.bb79 ], [ %idxprom, %if.end76.sw.epilog.sink.split_crit_edge ], [ %idxprom, %if.end76.sw.epilog.sink.split_crit_edge355 ], [ 0, %if.then50 ], [ 0, %if.then55 ], [ 0, %if.then71 ], [ 0, %if.then66 ]
  %true_bpath.2.off0279.ph = phi i1 [ %true_bpath.1.off0313, %sw.bb79 ], [ %true_bpath.1.off0313, %if.end76.sw.epilog.sink.split_crit_edge ], [ %true_bpath.1.off0313, %if.end76.sw.epilog.sink.split_crit_edge355 ], [ %true_bpath.1.off0313, %if.then50 ], [ true, %if.then55 ], [ true, %if.then71 ], [ %true_bpath.1.off0313, %if.then66 ]
  %need_pwrdown_radiob.1.off0277.ph = phi i1 [ %need_pwrdown_radiob.0.off0311, %sw.bb79 ], [ %need_pwrdown_radiob.0.off0311, %if.end76.sw.epilog.sink.split_crit_edge ], [ %need_pwrdown_radiob.0.off0311, %if.end76.sw.epilog.sink.split_crit_edge355 ], [ %need_pwrdown_radiob.0.off0311, %if.then50 ], [ %need_pwrdown_radiob.0.off0311, %if.then55 ], [ true, %if.then71 ], [ %need_pwrdown_radiob.0.off0311, %if.then66 ]
  %need_pwrdown_radioa.1.off0275.ph = phi i1 [ %need_pwrdown_radioa.0.off0309, %sw.bb79 ], [ %need_pwrdown_radioa.0.off0309, %if.end76.sw.epilog.sink.split_crit_edge ], [ %need_pwrdown_radioa.0.off0309, %if.end76.sw.epilog.sink.split_crit_edge355 ], [ true, %if.then50 ], [ %need_pwrdown_radioa.0.off0309, %if.then55 ], [ %need_pwrdown_radioa.0.off0309, %if.then71 ], [ %need_pwrdown_radioa.0.off0309, %if.then66 ]
  %mac0_initradiob_first.2.off0273.ph = phi i1 [ %mac0_initradiob_first.2.off0, %sw.bb79 ], [ %mac0_initradiob_first.2.off0, %if.end76.sw.epilog.sink.split_crit_edge ], [ %mac0_initradiob_first.2.off0, %if.end76.sw.epilog.sink.split_crit_edge355 ], [ %mac0_initradiob_first.1.off0308, %if.then50 ], [ %mac0_initradiob_first.1.off0308, %if.then55 ], [ false, %if.then71 ], [ true, %if.then66 ]
  %mac1_initradioa_first.2.off0271.ph = phi i1 [ %mac1_initradioa_first.1.off0307, %sw.bb79 ], [ %mac1_initradioa_first.1.off0307, %if.end76.sw.epilog.sink.split_crit_edge ], [ %mac1_initradioa_first.1.off0307, %if.end76.sw.epilog.sink.split_crit_edge355 ], [ true, %if.then50 ], [ false, %if.then55 ], [ false, %if.then71 ], [ false, %if.then66 ]
  %rfpath.1269.ph = phi i8 [ %rfpath.0306, %sw.bb79 ], [ %rfpath.0306, %if.end76.sw.epilog.sink.split_crit_edge ], [ %rfpath.0306, %if.end76.sw.epilog.sink.split_crit_edge355 ], [ 0, %if.then50 ], [ 0, %if.then55 ], [ 0, %if.then71 ], [ 0, %if.then66 ]
  %28 = ptrtoint ptr %arrayidx.sink to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.sink, align 4
  %30 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv, align 8
  %cfg.i221 = getelementptr inbounds %struct.rtl_priv, ptr %31, i32 0, i32 32
  %32 = ptrtoint ptr %cfg.i221 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cfg.i221, align 8
  %ops.i222 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %ops.i222 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops.i222, align 4
  %get_bbreg.i223 = getelementptr inbounds %struct.rtl_hal_ops, ptr %35, i32 0, i32 45
  %36 = ptrtoint ptr %get_bbreg.i223 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %get_bbreg.i223, align 4
  %call.i224 = tail call i32 %37(ptr noundef %hw, i32 noundef %29, i32 noundef %.sink333) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end76.sw.epilog_crit_edge
  %arrayidx284 = phi ptr [ %arrayidx, %if.end76.sw.epilog_crit_edge ], [ %arrayidx.sink, %sw.epilog.sink.split ]
  %idxprom282 = phi i32 [ %idxprom, %if.end76.sw.epilog_crit_edge ], [ %idxprom282.ph, %sw.epilog.sink.split ]
  %true_bpath.2.off0279 = phi i1 [ %true_bpath.1.off0313, %if.end76.sw.epilog_crit_edge ], [ %true_bpath.2.off0279.ph, %sw.epilog.sink.split ]
  %need_pwrdown_radiob.1.off0277 = phi i1 [ %need_pwrdown_radiob.0.off0311, %if.end76.sw.epilog_crit_edge ], [ %need_pwrdown_radiob.1.off0277.ph, %sw.epilog.sink.split ]
  %need_pwrdown_radioa.1.off0275 = phi i1 [ %need_pwrdown_radioa.0.off0309, %if.end76.sw.epilog_crit_edge ], [ %need_pwrdown_radioa.1.off0275.ph, %sw.epilog.sink.split ]
  %mac0_initradiob_first.2.off0273 = phi i1 [ %mac0_initradiob_first.2.off0, %if.end76.sw.epilog_crit_edge ], [ %mac0_initradiob_first.2.off0273.ph, %sw.epilog.sink.split ]
  %mac1_initradioa_first.2.off0271 = phi i1 [ %mac1_initradioa_first.1.off0307, %if.end76.sw.epilog_crit_edge ], [ %mac1_initradioa_first.2.off0271.ph, %sw.epilog.sink.split ]
  %rfpath.1269 = phi i8 [ %rfpath.0306, %if.end76.sw.epilog_crit_edge ], [ %rfpath.1269.ph, %sw.epilog.sink.split ]
  %u4_regvalue.1 = phi i32 [ %u4_regvalue.0305, %if.end76.sw.epilog_crit_edge ], [ %call.i224, %sw.epilog.sink.split ]
  %rfintfe = getelementptr [4 x %struct.bb_reg_def], ptr %phy, i32 0, i32 %idxprom282, i32 3
  %38 = ptrtoint ptr %rfintfe to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rfintfe, align 4
  %40 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %priv, align 8
  %cfg.i226 = getelementptr inbounds %struct.rtl_priv, ptr %41, i32 0, i32 32
  %42 = ptrtoint ptr %cfg.i226 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cfg.i226, align 8
  %ops.i227 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %ops.i227 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops.i227, align 4
  %set_bbreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %45, i32 0, i32 46
  %46 = ptrtoint ptr %set_bbreg.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %set_bbreg.i, align 4
  tail call void %47(ptr noundef %hw, i32 noundef %39, i32 noundef 1048576, i32 noundef 1) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748) #5
  %rfintfo = getelementptr [4 x %struct.bb_reg_def], ptr %phy, i32 0, i32 %idxprom282, i32 2
  %49 = ptrtoint ptr %rfintfo to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rfintfo, align 4
  %51 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %priv, align 8
  %cfg.i229 = getelementptr inbounds %struct.rtl_priv, ptr %52, i32 0, i32 32
  %53 = ptrtoint ptr %cfg.i229 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cfg.i229, align 8
  %ops.i230 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %ops.i230 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ops.i230, align 4
  %set_bbreg.i231 = getelementptr inbounds %struct.rtl_hal_ops, ptr %56, i32 0, i32 46
  %57 = ptrtoint ptr %set_bbreg.i231 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %set_bbreg.i231, align 4
  tail call void %58(ptr noundef %hw, i32 noundef %50, i32 noundef 16, i32 noundef 1) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 214748) #5
  %rfhssi_para2 = getelementptr [4 x %struct.bb_reg_def], ptr %phy, i32 0, i32 %idxprom282, i32 8
  %60 = ptrtoint ptr %rfhssi_para2 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rfhssi_para2, align 4
  %62 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %priv, align 8
  %cfg.i233 = getelementptr inbounds %struct.rtl_priv, ptr %63, i32 0, i32 32
  %64 = ptrtoint ptr %cfg.i233 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cfg.i233, align 8
  %ops.i234 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %65, i32 0, i32 4
  %66 = ptrtoint ptr %ops.i234 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ops.i234, align 4
  %set_bbreg.i235 = getelementptr inbounds %struct.rtl_hal_ops, ptr %67, i32 0, i32 46
  %68 = ptrtoint ptr %set_bbreg.i235 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %set_bbreg.i235, align 4
  tail call void %69(ptr noundef %hw, i32 noundef %61, i32 noundef 1024, i32 noundef 0) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 214748) #5
  %71 = ptrtoint ptr %rfhssi_para2 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rfhssi_para2, align 4
  %73 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %priv, align 8
  %cfg.i237 = getelementptr inbounds %struct.rtl_priv, ptr %74, i32 0, i32 32
  %75 = ptrtoint ptr %cfg.i237 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cfg.i237, align 8
  %ops.i238 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %76, i32 0, i32 4
  %77 = ptrtoint ptr %ops.i238 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ops.i238, align 4
  %set_bbreg.i239 = getelementptr inbounds %struct.rtl_hal_ops, ptr %78, i32 0, i32 46
  %79 = ptrtoint ptr %set_bbreg.i239 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %set_bbreg.i239, align 4
  tail call void %80(ptr noundef %hw, i32 noundef %72, i32 noundef 2048, i32 noundef 0) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %81(i32 noundef 214748) #5
  %82 = zext i8 %rfpath.1269 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.35)
  switch i8 %rfpath.1269, label %sw.epilog.for.inc_crit_edge [
    i8 0, label %sw.bb84
    i8 1, label %sw.epilog98.thread292
    i8 3, label %sw.epilog.for.inc.sink.split_crit_edge
    i8 2, label %for.inc.critedge301
  ]

sw.epilog.for.inc.sink.split_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.sink.split

sw.epilog.for.inc_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

sw.bb84:                                          ; preds = %sw.epilog
  %. = zext i1 %true_bpath.2.off0279 to i32
  %call91 = tail call zeroext i1 @rtl92d_phy_config_rf_with_headerfile(ptr noundef %hw, i32 noundef %., i32 noundef 0) #5
  %83 = ptrtoint ptr %arrayidx284 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx284, align 4
  %85 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %priv, align 8
  %cfg.i241 = getelementptr inbounds %struct.rtl_priv, ptr %86, i32 0, i32 32
  %87 = ptrtoint ptr %cfg.i241 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %cfg.i241, align 8
  %ops.i242 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %88, i32 0, i32 4
  %89 = ptrtoint ptr %ops.i242 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ops.i242, align 4
  %set_bbreg.i243 = getelementptr inbounds %struct.rtl_hal_ops, ptr %90, i32 0, i32 46
  %91 = ptrtoint ptr %set_bbreg.i243 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %set_bbreg.i243, align 4
  tail call void %92(ptr noundef %hw, i32 noundef %84, i32 noundef 16, i32 noundef %u4_regvalue.1) #5
  br i1 %call91, label %sw.bb84.for.inc_crit_edge, label %sw.bb84.if.then106_crit_edge

sw.bb84.if.then106_crit_edge:                     ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then106

sw.bb84.for.inc_crit_edge:                        ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

sw.epilog98.thread292:                            ; preds = %sw.epilog
  %call96 = tail call zeroext i1 @rtl92d_phy_config_rf_with_headerfile(ptr noundef %hw, i32 noundef 1, i32 noundef 1) #5
  %93 = ptrtoint ptr %arrayidx284 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx284, align 4
  %95 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %priv, align 8
  %cfg.i245 = getelementptr inbounds %struct.rtl_priv, ptr %96, i32 0, i32 32
  %97 = ptrtoint ptr %cfg.i245 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %cfg.i245, align 8
  %ops.i246 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %98, i32 0, i32 4
  %99 = ptrtoint ptr %ops.i246 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ops.i246, align 4
  %set_bbreg.i247 = getelementptr inbounds %struct.rtl_hal_ops, ptr %100, i32 0, i32 46
  %101 = ptrtoint ptr %set_bbreg.i247 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %set_bbreg.i247, align 4
  tail call void %102(ptr noundef %hw, i32 noundef %94, i32 noundef 1048576, i32 noundef %u4_regvalue.1) #5
  br i1 %call96, label %sw.epilog98.thread292.for.inc_crit_edge, label %sw.epilog98.thread292.if.then106_crit_edge

sw.epilog98.thread292.if.then106_crit_edge:       ; preds = %sw.epilog98.thread292
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then106

sw.epilog98.thread292.for.inc_crit_edge:          ; preds = %sw.epilog98.thread292
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then106:                                       ; preds = %sw.epilog98.thread292.if.then106_crit_edge, %sw.bb84.if.then106_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.15, i32 noundef %idxprom282) #5
  br label %cleanup

for.inc.critedge301:                              ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %for.inc.critedge301, %sw.epilog.for.inc.sink.split_crit_edge
  %.sink339 = phi i32 [ 16, %for.inc.critedge301 ], [ 1048576, %sw.epilog.for.inc.sink.split_crit_edge ]
  %103 = ptrtoint ptr %arrayidx284 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx284, align 4
  %105 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %priv, align 8
  %cfg.i241.c = getelementptr inbounds %struct.rtl_priv, ptr %106, i32 0, i32 32
  %107 = ptrtoint ptr %cfg.i241.c to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %cfg.i241.c, align 8
  %ops.i242.c = getelementptr inbounds %struct.rtl_hal_cfg, ptr %108, i32 0, i32 4
  %109 = ptrtoint ptr %ops.i242.c to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ops.i242.c, align 4
  %set_bbreg.i243.c = getelementptr inbounds %struct.rtl_hal_ops, ptr %110, i32 0, i32 46
  %111 = ptrtoint ptr %set_bbreg.i243.c to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %set_bbreg.i243.c, align 4
  tail call void %112(ptr noundef %hw, i32 noundef %104, i32 noundef %.sink339, i32 noundef %u4_regvalue.1) #5
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %sw.epilog98.thread292.for.inc_crit_edge, %sw.bb84.for.inc_crit_edge, %sw.epilog.for.inc_crit_edge
  %inc = add i8 %rfpath.1269, 1
  %113 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %4, align 4
  %cmp43 = icmp ult i8 %inc, %114
  br i1 %cmp43, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  br i1 %need_pwrdown_radioa.1.off0275, label %if.then110, label %if.else111

if.then110:                                       ; preds = %for.end
  %115 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %priv, align 8
  %during_mac0init_radiob.i = getelementptr inbounds %struct.rtl_priv, ptr %116, i32 0, i32 10, i32 60
  %117 = ptrtoint ptr %during_mac0init_radiob.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 0, ptr %during_mac0init_radiob.i, align 1
  %during_mac1init_radioa.i = getelementptr inbounds %struct.rtl_priv, ptr %116, i32 0, i32 10, i32 61
  %118 = ptrtoint ptr %during_mac1init_radioa.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 0, ptr %during_mac1init_radioa.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %116, i64 noundef 1048576, i32 noundef 4, ptr noundef nonnull @.str.12) #5
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %116, i32 0, i32 13, i32 9
  %119 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = tail call zeroext i8 %120(ptr noundef %116, i32 noundef 129) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i.i)
  %tobool13.not.i = icmp sgt i8 %call.i.i, -1
  br i1 %tobool13.not.i, label %if.then110.if.end115.sink.split.sink.split_crit_edge, label %if.then110.if.end115.sink.split_crit_edge

if.then110.if.end115.sink.split_crit_edge:        ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end115.sink.split

if.then110.if.end115.sink.split.sink.split_crit_edge: ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end115.sink.split.sink.split

if.else111:                                       ; preds = %for.end
  br i1 %need_pwrdown_radiob.1.off0277, label %if.then113, label %if.else111.if.end115_crit_edge

if.else111.if.end115_crit_edge:                   ; preds = %if.else111
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end115

if.then113:                                       ; preds = %if.else111
  %121 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %priv, align 8
  %during_mac0init_radiob.i250 = getelementptr inbounds %struct.rtl_priv, ptr %122, i32 0, i32 10, i32 60
  %123 = ptrtoint ptr %during_mac0init_radiob.i250 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 0, ptr %during_mac0init_radiob.i250, align 1
  %during_mac1init_radioa.i251 = getelementptr inbounds %struct.rtl_priv, ptr %122, i32 0, i32 10, i32 61
  %124 = ptrtoint ptr %during_mac1init_radioa.i251 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 0, ptr %during_mac1init_radioa.i251, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %122, i64 noundef 1048576, i32 noundef 4, ptr noundef nonnull @.str.12) #5
  %read8_sync.i.i252 = getelementptr inbounds %struct.rtl_priv, ptr %122, i32 0, i32 13, i32 9
  %125 = ptrtoint ptr %read8_sync.i.i252 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %read8_sync.i.i252, align 4
  %call.i.i253 = tail call zeroext i8 %126(ptr noundef %122, i32 noundef 83) #5
  %127 = and i8 %call.i.i253, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool13.not.i256 = icmp eq i8 %127, 0
  br i1 %tobool13.not.i256, label %if.then113.if.end115.sink.split.sink.split_crit_edge, label %if.then113.if.end115.sink.split_crit_edge

if.then113.if.end115.sink.split_crit_edge:        ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end115.sink.split

if.then113.if.end115.sink.split.sink.split_crit_edge: ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end115.sink.split.sink.split

if.end115.sink.split.sink.split:                  ; preds = %if.then113.if.end115.sink.split.sink.split_crit_edge, %if.then110.if.end115.sink.split.sink.split_crit_edge
  %.sink345 = phi ptr [ %116, %if.then110.if.end115.sink.split.sink.split_crit_edge ], [ %122, %if.then113.if.end115.sink.split.sink.split_crit_edge ]
  %.sink = phi i8 [ 8, %if.then110.if.end115.sink.split.sink.split_crit_edge ], [ 12, %if.then113.if.end115.sink.split.sink.split_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %.sink345, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.13) #5
  tail call void @rtl92de_write_dword_dbi(ptr noundef %hw, i16 noundef zeroext 2112, i32 noundef 0, i8 noundef zeroext %.sink) #5
  br label %if.end115.sink.split

if.end115.sink.split:                             ; preds = %if.end115.sink.split.sink.split, %if.then113.if.end115.sink.split_crit_edge, %if.then110.if.end115.sink.split_crit_edge
  %.sink344 = phi ptr [ %116, %if.then110.if.end115.sink.split_crit_edge ], [ %122, %if.then113.if.end115.sink.split_crit_edge ], [ %.sink345, %if.end115.sink.split.sink.split ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %.sink344, i64 noundef 1048576, i32 noundef 4, ptr noundef nonnull @.str.14) #5
  br label %if.end115

if.end115:                                        ; preds = %if.end115.sink.split, %if.else111.if.end115_crit_edge, %if.end39.if.end115_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.16) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end115, %if.then106, %if.then24.cleanup_crit_edge, %if.then11.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then106 ], [ true, %if.end115 ], [ true, %if.then11.cleanup_crit_edge ], [ true, %if.then24.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92d_phy_config_rf_with_headerfile(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/rf.c", i32 26, i32 4}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/rf.c", i32 38, i32 4}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/rf.c", i32 44, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @rtl92d_phy_rf6052_set_bandwidth._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @rtl92d_phy_rf6052_set_bandwidth._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/rf.c", i32 102, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/rf.c", i32 107, i32 2}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/rf.c", i32 112, i32 2}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/rf.c", i32 117, i32 2}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/rf.c", i32 394, i32 2}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/rf.c", i32 398, i32 3}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/rf.c", i32 408, i32 2}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/rf.c", i32 424, i32 2}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/rf.c", i32 429, i32 3}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/rf.c", i32 434, i32 2}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/rf.c", i32 576, i32 4}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/rf.c", i32 591, i32 2}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/rf.c", i32 140, i32 3}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/rf.c", i32 154, i32 3}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/rf.c", i32 208, i32 4}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/rf.c", i32 228, i32 5}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/rf.c", i32 236, i32 4}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/rf.c", i32 243, i32 5}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/rf.c", i32 249, i32 5}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/rf.c", i32 280, i32 4}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/rf.c", i32 285, i32 4}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/rf.c", i32 294, i32 4}
!54 = !{ptr @_rtl92d_write_ofdm_power_reg.regoffset_a, !55, !"regoffset_a", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/rf.c", i32 308, i32 13}
!56 = !{ptr @_rtl92d_write_ofdm_power_reg.regoffset_b, !57, !"regoffset_b", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/rf.c", i32 313, i32 13}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/rf.c", i32 337, i32 3}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{i8 0, i8 2}
!70 = !{!"auto-init"}
