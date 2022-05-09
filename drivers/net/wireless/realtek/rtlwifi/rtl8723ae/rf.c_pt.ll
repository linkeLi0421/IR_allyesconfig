; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/rf.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/rf.c"
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

@rtl8723e_phy_rf6052_set_bandwidth._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 32, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013rtl8723ae: unknown bandwidth: %#X\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"rtl8723e_phy_rf6052_set_bandwidth\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/wireless/realtek/rtlwifi/rtl8723ae/rf.c\00", [44 x i8] zeroinitializer }, align 32
@rtl8723e_phy_rf6052_set_bandwidth._entry_ptr = internal global ptr @rtl8723e_phy_rf6052_set_bandwidth._entry, section ".printk_index", align 4
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"CCK PWR 1M (rf-A) = 0x%x (reg 0x%x)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"CCK PWR 2~11M (rf-A) = 0x%x (reg 0x%x)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"CCK PWR 11M (rf-B) = 0x%x (reg 0x%x)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"CCK PWR 1~5.5M (rf-B) = 0x%x (reg 0x%x)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c" [OFDM power base index rf(%c) = 0x%x]\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c" [MCS power base index rf(%c) = 0x%x]\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"RTK better performance, writeval(%c) = 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Realtek regulatory, 40MHz, writeval(%c) = 0x%x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Realtek regulatory, 20MHz, writeval(%c) = 0x%x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Better regulatory, writeval(%c) = 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"customer's limit, 40MHz rf(%c) = 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"customer's limit, 20MHz rf(%c) = 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Customer's limit rf(%c) = 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Customer, writeval rf(%c)= 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"RTK better performance, writeval rf(%c) = 0x%x\0A\00", [48 x i8] zeroinitializer }, align 32
@__const._rtl8723e_write_ofdm_power_reg.regoffset_a = private unnamed_addr constant [6 x i16] [i16 3584, i16 3588, i16 3600, i16 3604, i16 3608, i16 3612], align 2
@__const._rtl8723e_write_ofdm_power_reg.regoffset_b = private unnamed_addr constant [6 x i16] [i16 2096, i16 2100, i16 2108, i16 2120, i16 2124, i16 2152], align 2
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Set 0x%x = %08x\0A\00", [47 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Radio[%d] Fail!!\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@switch.table.rtl8723e_phy_rf6052_config = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 16, i32 1048576, i32 16, i32 1048576], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.21 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 4]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 16, i64 2152, i64 3612]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 16, i64 2120, i64 3604]
@__sancov_gen_cov_switch_values.25 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.26 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 32, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 99, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 109, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 116, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 123, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 147, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 164, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 192, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 201, i32 5 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 227, i32 5 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 236, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 244, i32 5 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 250, i32 5 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 285, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 292, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 303, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 356, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 483, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.90 = private constant [55 x i8] c"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/rf.c\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 489, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [40 x i8] c"switch.table.rtl8723e_phy_rf6052_config\00", align 1
@llvm.compiler.used = appending global [24 x ptr] [ptr @rtl8723e_phy_rf6052_set_bandwidth._entry, ptr @rtl8723e_phy_rf6052_set_bandwidth._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @switch.table.rtl8723e_phy_rf6052_config], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8723e_phy_rf6052_set_bandwidth._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl8723e_phy_rf6052_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723e_phy_rf6052_set_bandwidth(ptr noundef %hw, i8 noundef zeroext %bandwidth) local_unnamed_addr #0 align 64 {
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
    i8 0, label %sw.bb
    i8 1, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %rfreg_chnlval = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 52
  %3 = ptrtoint ptr %rfreg_chnlval to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rfreg_chnlval, align 4
  %and = and i32 %4, -3073
  %or = or i32 %and, 1024
  store i32 %or, ptr %rfreg_chnlval, align 4
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %6, i32 0, i32 32
  %7 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 4
  %set_rfreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %10, i32 0, i32 48
  %11 = ptrtoint ptr %set_rfreg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_rfreg.i, align 4
  tail call void %12(ptr noundef %hw, i32 noundef 0, i32 noundef 24, i32 noundef 1048575, i32 noundef %or) #5
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %rfreg_chnlval6 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 52
  %13 = ptrtoint ptr %rfreg_chnlval6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rfreg_chnlval6, align 4
  %and8 = and i32 %14, -3073
  store i32 %and8, ptr %rfreg_chnlval6, align 4
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv, align 8
  %cfg.i23 = getelementptr inbounds %struct.rtl_priv, ptr %16, i32 0, i32 32
  %17 = ptrtoint ptr %cfg.i23 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cfg.i23, align 8
  %ops.i24 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %ops.i24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i24, align 4
  %set_rfreg.i25 = getelementptr inbounds %struct.rtl_hal_ops, ptr %20, i32 0, i32 48
  %21 = ptrtoint ptr %set_rfreg.i25 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %set_rfreg.i25, align 4
  tail call void %22(ptr noundef %hw, i32 noundef 0, i32 noundef 24, i32 noundef 1048575, i32 noundef %and8) #5
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i8 %bandwidth to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb5, %sw.bb
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723e_phy_rf6052_set_cck_txpower(ptr noundef %hw, ptr nocapture noundef readonly %ppowerlevel) local_unnamed_addr #0 align 64 {
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
  %5 = load i8, ptr %act_scanning, align 2, !range !51
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
  br i1 %cmp.not, label %if.then61, label %for.body33.preheader.if.end98_crit_edge

for.body33.preheader.if.end98_crit_edge:          ; preds = %for.body33.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end98

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
  br label %if.end98

if.then61:                                        ; preds = %for.body33.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %conv36.1 = zext i8 %9 to i32
  %shl50.1 = shl nuw i32 %conv36.1, 24
  %conv36 = zext i8 %7 to i32
  %shl50 = shl nuw i32 %conv36, 24
  %arrayidx63 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 40, i32 0, i32 6
  %14 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx63, align 4
  %arrayidx66 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 40, i32 0, i32 7
  %16 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx66, align 4
  %shl67 = shl i32 %17, 8
  %add = add i32 %shl67, %15
  %tx_agc.sroa.0.sroa.15.0.insert.ext248 = zext i8 %7 to i32
  %tx_agc.sroa.0.sroa.13.0.insert.ext240 = zext i8 %7 to i32
  %tx_agc.sroa.0.sroa.13.0.insert.shift241 = shl nuw nsw i32 %tx_agc.sroa.0.sroa.13.0.insert.ext240, 8
  %tx_agc.sroa.0.sroa.13.0.insert.insert243 = or i32 %tx_agc.sroa.0.sroa.13.0.insert.shift241, %tx_agc.sroa.0.sroa.15.0.insert.ext248
  %tx_agc.sroa.0.sroa.11.0.insert.ext232 = zext i8 %7 to i32
  %tx_agc.sroa.0.sroa.11.0.insert.shift233 = shl nuw nsw i32 %tx_agc.sroa.0.sroa.11.0.insert.ext232, 16
  %tx_agc.sroa.0.sroa.11.0.insert.insert235 = or i32 %tx_agc.sroa.0.sroa.13.0.insert.insert243, %tx_agc.sroa.0.sroa.11.0.insert.shift233
  %tx_agc.sroa.0.sroa.0.0.insert.insert227 = or i32 %tx_agc.sroa.0.sroa.11.0.insert.insert235, %shl50
  %add69 = add i32 %add, %tx_agc.sroa.0.sroa.0.0.insert.insert227
  %tx_agc.sroa.0.sroa.11.0.extract.shift = lshr i32 %add69, 16
  %tx_agc.sroa.0.sroa.11.0.extract.trunc = trunc i32 %tx_agc.sroa.0.sroa.11.0.extract.shift to i8
  %tx_agc.sroa.0.sroa.13.0.extract.shift = lshr i32 %add69, 8
  %tx_agc.sroa.0.sroa.13.0.extract.trunc = trunc i32 %tx_agc.sroa.0.sroa.13.0.extract.shift to i8
  %tx_agc.sroa.0.sroa.15.0.extract.trunc = trunc i32 %add69 to i8
  %arrayidx72 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 40, i32 0, i32 14
  %18 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx72, align 4
  %arrayidx75 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 40, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx75, align 4
  %shl76 = shl i32 %21, 24
  %add77 = add i32 %shl76, %19
  %tx_agc.sroa.17.sroa.15.0.insert.ext219 = zext i8 %9 to i32
  %tx_agc.sroa.17.sroa.13.0.insert.ext211 = zext i8 %9 to i32
  %tx_agc.sroa.17.sroa.13.0.insert.shift212 = shl nuw nsw i32 %tx_agc.sroa.17.sroa.13.0.insert.ext211, 8
  %tx_agc.sroa.17.sroa.13.0.insert.insert214 = or i32 %tx_agc.sroa.17.sroa.13.0.insert.shift212, %tx_agc.sroa.17.sroa.15.0.insert.ext219
  %tx_agc.sroa.17.sroa.11.0.insert.ext203 = zext i8 %9 to i32
  %tx_agc.sroa.17.sroa.11.0.insert.shift204 = shl nuw nsw i32 %tx_agc.sroa.17.sroa.11.0.insert.ext203, 16
  %tx_agc.sroa.17.sroa.11.0.insert.insert206 = or i32 %tx_agc.sroa.17.sroa.13.0.insert.insert214, %tx_agc.sroa.17.sroa.11.0.insert.shift204
  %tx_agc.sroa.17.sroa.0.0.insert.insert198 = or i32 %tx_agc.sroa.17.sroa.11.0.insert.insert206, %shl50.1
  %add79 = add i32 %add77, %tx_agc.sroa.17.sroa.0.0.insert.insert198
  %tx_agc.sroa.17.sroa.0.0.extract.shift = lshr i32 %add79, 24
  %tx_agc.sroa.17.sroa.0.0.extract.trunc = trunc i32 %tx_agc.sroa.17.sroa.0.0.extract.shift to i8
  %tx_agc.sroa.17.sroa.11.0.extract.shift = lshr i32 %add79, 16
  %tx_agc.sroa.17.sroa.11.0.extract.trunc = trunc i32 %tx_agc.sroa.17.sroa.11.0.extract.shift to i8
  %tx_agc.sroa.17.sroa.13.0.extract.shift = lshr i32 %add79, 8
  %tx_agc.sroa.17.sroa.13.0.extract.trunc = trunc i32 %tx_agc.sroa.17.sroa.13.0.extract.shift to i8
  %tx_agc.sroa.17.sroa.15.0.extract.trunc = trunc i32 %add79 to i8
  br label %if.end98

if.end98:                                         ; preds = %if.then61, %for.body.preheader, %for.body33.preheader.if.end98_crit_edge
  %tx_agc.sroa.0.sroa.15.0 = phi i8 [ %tx_agc.sroa.0.sroa.15.0.extract.trunc, %if.then61 ], [ %7, %for.body33.preheader.if.end98_crit_edge ], [ %11, %for.body.preheader ]
  %tx_agc.sroa.0.sroa.13.0 = phi i8 [ %tx_agc.sroa.0.sroa.13.0.extract.trunc, %if.then61 ], [ %7, %for.body33.preheader.if.end98_crit_edge ], [ %11, %for.body.preheader ]
  %tx_agc.sroa.0.sroa.11.0 = phi i8 [ %tx_agc.sroa.0.sroa.11.0.extract.trunc, %if.then61 ], [ %7, %for.body33.preheader.if.end98_crit_edge ], [ %11, %for.body.preheader ]
  %tx_agc.sroa.17.sroa.15.0 = phi i8 [ %tx_agc.sroa.17.sroa.15.0.extract.trunc, %if.then61 ], [ %9, %for.body33.preheader.if.end98_crit_edge ], [ %13, %for.body.preheader ]
  %tx_agc.sroa.17.sroa.13.0 = phi i8 [ %tx_agc.sroa.17.sroa.13.0.extract.trunc, %if.then61 ], [ %9, %for.body33.preheader.if.end98_crit_edge ], [ %13, %for.body.preheader ]
  %tx_agc.sroa.17.sroa.11.0 = phi i8 [ %tx_agc.sroa.17.sroa.11.0.extract.trunc, %if.then61 ], [ %9, %for.body33.preheader.if.end98_crit_edge ], [ %13, %for.body.preheader ]
  %tx_agc.sroa.17.sroa.0.0 = phi i8 [ %tx_agc.sroa.17.sroa.0.0.extract.trunc, %if.then61 ], [ %9, %for.body33.preheader.if.end98_crit_edge ], [ %13, %for.body.preheader ]
  %22 = call i8 @llvm.umin.i8(i8 %tx_agc.sroa.0.sroa.11.0, i8 63)
  %23 = call i8 @llvm.umin.i8(i8 %tx_agc.sroa.0.sroa.13.0, i8 63)
  %24 = call i8 @llvm.umin.i8(i8 %tx_agc.sroa.0.sroa.15.0, i8 63)
  %25 = call i8 @llvm.umin.i8(i8 %tx_agc.sroa.17.sroa.0.0, i8 63)
  %26 = call i8 @llvm.umin.i8(i8 %tx_agc.sroa.17.sroa.11.0, i8 63)
  %27 = call i8 @llvm.umin.i8(i8 %tx_agc.sroa.17.sroa.13.0, i8 63)
  %28 = call i8 @llvm.umin.i8(i8 %tx_agc.sroa.17.sroa.15.0, i8 63)
  %phi.cast = zext i8 %24 to i32
  %phi.cast368 = zext i8 %23 to i32
  %phi.cast369 = zext i8 %22 to i32
  %phi.bo = shl nuw nsw i32 %phi.cast369, 8
  %29 = or i32 %phi.bo, %phi.cast368
  %phi.cast370 = zext i8 %28 to i32
  %phi.cast371 = zext i8 %27 to i32
  %phi.bo372 = shl nuw nsw i32 %phi.cast371, 8
  %phi.cast373 = zext i8 %26 to i32
  %phi.bo374 = shl nuw nsw i32 %phi.cast373, 16
  %phi.cast375 = zext i8 %25 to i32
  br label %if.end98.3.1

if.end98.3.1:                                     ; preds = %if.end98, %if.then4.if.end98.3.1_crit_edge
  %tx_agc.sroa.17.sroa.13.1366 = phi i32 [ 16128, %if.then4.if.end98.3.1_crit_edge ], [ %phi.bo372, %if.end98 ]
  %tx_agc.sroa.17.sroa.0.1338347365 = phi i32 [ 63, %if.then4.if.end98.3.1_crit_edge ], [ %phi.cast375, %if.end98 ]
  %tx_agc.sroa.0.sroa.15.1324333351362 = phi i32 [ 63, %if.then4.if.end98.3.1_crit_edge ], [ %phi.cast, %if.end98 ]
  %tx_agc.sroa.17.sroa.11.1352361 = phi i32 [ 4128768, %if.then4.if.end98.3.1_crit_edge ], [ %phi.bo374, %if.end98 ]
  %tx_agc.sroa.17.sroa.15.1 = phi i32 [ 63, %if.then4.if.end98.3.1_crit_edge ], [ %phi.cast370, %if.end98 ]
  %tx_agc.sroa.0.sroa.11.0.insert.insert = phi i32 [ 16191, %if.then4.if.end98.3.1_crit_edge ], [ %29, %if.end98 ]
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %30 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops.i, align 4
  %set_bbreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %33, i32 0, i32 46
  %34 = ptrtoint ptr %set_bbreg.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %set_bbreg.i, align 4
  tail call void %35(ptr noundef %hw, i32 noundef 3592, i32 noundef 65280, i32 noundef %tx_agc.sroa.0.sroa.15.1324333351362) #5
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.3, i32 noundef %tx_agc.sroa.0.sroa.15.1324333351362, i32 noundef 3592) #5
  %36 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv, align 8
  %cfg.i163 = getelementptr inbounds %struct.rtl_priv, ptr %37, i32 0, i32 32
  %38 = ptrtoint ptr %cfg.i163 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cfg.i163, align 8
  %ops.i164 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %ops.i164 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops.i164, align 4
  %set_bbreg.i165 = getelementptr inbounds %struct.rtl_hal_ops, ptr %41, i32 0, i32 46
  %42 = ptrtoint ptr %set_bbreg.i165 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %set_bbreg.i165, align 4
  tail call void %43(ptr noundef %hw, i32 noundef 2156, i32 noundef -256, i32 noundef %tx_agc.sroa.0.sroa.11.0.insert.insert) #5
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.4, i32 noundef %tx_agc.sroa.0.sroa.11.0.insert.insert, i32 noundef 2156) #5
  %tx_agc.sroa.17.sroa.13.0.insert.insert = or i32 %tx_agc.sroa.17.sroa.13.1366, %tx_agc.sroa.17.sroa.15.1
  %tx_agc.sroa.17.sroa.11.0.insert.insert = or i32 %tx_agc.sroa.17.sroa.13.0.insert.insert, %tx_agc.sroa.17.sroa.11.1352361
  %44 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %priv, align 8
  %cfg.i167 = getelementptr inbounds %struct.rtl_priv, ptr %45, i32 0, i32 32
  %46 = ptrtoint ptr %cfg.i167 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cfg.i167, align 8
  %ops.i168 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %ops.i168 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops.i168, align 4
  %set_bbreg.i169 = getelementptr inbounds %struct.rtl_hal_ops, ptr %49, i32 0, i32 46
  %50 = ptrtoint ptr %set_bbreg.i169 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %set_bbreg.i169, align 4
  tail call void %51(ptr noundef %hw, i32 noundef 2156, i32 noundef 255, i32 noundef %tx_agc.sroa.17.sroa.0.1338347365) #5
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.5, i32 noundef %tx_agc.sroa.17.sroa.0.1338347365, i32 noundef 2156) #5
  %52 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %priv, align 8
  %cfg.i171 = getelementptr inbounds %struct.rtl_priv, ptr %53, i32 0, i32 32
  %54 = ptrtoint ptr %cfg.i171 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cfg.i171, align 8
  %ops.i172 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %55, i32 0, i32 4
  %56 = ptrtoint ptr %ops.i172 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ops.i172, align 4
  %set_bbreg.i173 = getelementptr inbounds %struct.rtl_hal_ops, ptr %57, i32 0, i32 46
  %58 = ptrtoint ptr %set_bbreg.i173 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %set_bbreg.i173, align 4
  tail call void %59(ptr noundef %hw, i32 noundef 2104, i32 noundef -256, i32 noundef %tx_agc.sroa.17.sroa.11.0.insert.insert) #5
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.6, i32 noundef %tx_agc.sroa.17.sroa.11.0.insert.insert, i32 noundef 2104) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723e_phy_rf6052_set_ofdm_txpower(ptr noundef %hw, ptr nocapture noundef readonly %ppowerlevel, i8 noundef zeroext %channel) local_unnamed_addr #0 align 64 {
entry:
  %writeval = alloca [2 x i32], align 4
  %powerbase0 = alloca [2 x i32], align 4
  %powerbase1 = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %writeval) #5
  %0 = ptrtoint ptr %writeval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %writeval, align 4, !annotation !52
  %1 = getelementptr inbounds [2 x i32], ptr %writeval, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !52
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %6, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.7, i32 noundef 65, i32 noundef %or16.i) #5
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %6, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.7, i32 noundef 66, i32 noundef %or16.1.i) #5
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %6, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.8, i32 noundef 65, i32 noundef %or50.i) #5
  %22 = ptrtoint ptr %current_chan_bw.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %current_chan_bw.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp29.1.i = icmp eq i8 %23, 0
  br i1 %cmp29.1.i, label %if.then.1.i, label %if.end.i.rtl8723e_phy_get_power_base.exit_crit_edge

if.end.i.rtl8723e_phy_get_power_base.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl8723e_phy_get_power_base.exit

if.then.1.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx35.1.i = getelementptr %struct.rtl_priv, ptr %6, i32 0, i32 17, i32 42, i32 1, i32 %sub.i
  %24 = ptrtoint ptr %arrayidx35.1.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx35.1.i, align 1
  %add40.1.i = add i8 %25, %13
  %.pre99.i = zext i8 %add40.1.i to i32
  br label %rtl8723e_phy_get_power_base.exit

rtl8723e_phy_get_power_base.exit:                 ; preds = %if.then.1.i, %if.end.i.rtl8723e_phy_get_power_base.exit_crit_edge
  %conv44.1.pre-phi.i = phi i32 [ %.pre99.i, %if.then.1.i ], [ %conv11.1.i, %if.end.i.rtl8723e_phy_get_power_base.exit_crit_edge ]
  %or50.1.i = mul nuw i32 %conv44.1.pre-phi.i, 16843009
  %26 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or50.1.i, ptr %4, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %6, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.8, i32 noundef 66, i32 noundef %or50.1.i) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %channel)
  %cmp40.i = icmp ult i8 %channel, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %channel)
  %cmp48.i = icmp ult i8 %channel, 10
  %spec.select383.i = select i1 %cmp48.i, i8 1, i8 2
  %chnlgroup.2.i = select i1 %cmp40.i, i8 0, i8 %spec.select383.i
  %add66.i = or i8 %chnlgroup.2.i, 4
  %inc.i = add nuw nsw i8 %chnlgroup.2.i, 1
  br label %for.body

for.body:                                         ; preds = %_rtl8723e_write_ofdm_power_reg.exit.for.body_crit_edge, %rtl8723e_phy_get_power_base.exit
  %indvars.iv = phi i32 [ 0, %rtl8723e_phy_get_power_base.exit ], [ %indvars.iv.next, %_rtl8723e_write_ofdm_power_reg.exit.for.body_crit_edge ]
  %27 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv.i, align 8
  %eeprom_regulatory.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 17, i32 54
  %current_chan_bw106.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 14, i32 5
  %mcs_txpwrlevel_origoffset133.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 14, i32 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %indvars.iv)
  %cmp212.i = icmp ult i32 %indvars.iv, 2
  %powerbase0.powerbase1381.i = select i1 %cmp212.i, ptr %powerbase0, ptr %powerbase1
  %pwrgroup_cnt.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 14, i32 38
  %dynamic_txhighpower_lvl.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 15, i32 29
  br label %for.body.i

for.body.i:                                       ; preds = %if.end259.i.for.body.i_crit_edge, %for.body
  %rf.0386.i = phi i32 [ 0, %for.body ], [ %inc261.i, %if.end259.i.for.body.i_crit_edge ]
  %chnlgroup.0385.i = phi i8 [ 0, %for.body ], [ %chnlgroup.4.i, %if.end259.i.for.body.i_crit_edge ]
  %29 = ptrtoint ptr %eeprom_regulatory.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %eeprom_regulatory.i, align 1
  %31 = zext i8 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %30, label %sw.default.i [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb14.i
    i8 2, label %sw.bb92.i
    i8 3, label %sw.bb105.i
  ]

sw.bb.i:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rf.0386.i)
  %tobool.not.i = icmp eq i32 %rf.0386.i, 0
  %cond.i = select i1 %tobool.not.i, i32 0, i32 8
  %add.i14 = add nuw nsw i32 %cond.i, %indvars.iv
  %arrayidx3.i = getelementptr [16 x i32], ptr %mcs_txpwrlevel_origoffset133.i, i32 0, i32 %add.i14
  %32 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx3.i, align 4
  %cond9.in.i = getelementptr i32, ptr %powerbase0.powerbase1381.i, i32 %rf.0386.i
  %34 = ptrtoint ptr %cond9.in.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %cond9.i = load i32, ptr %cond9.in.i, align 4
  %add10.i = add i32 %cond9.i, %33
  %cond13.i = select i1 %tobool.not.i, i32 65, i32 66
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %28, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.9, i32 noundef %cond13.i, i32 noundef %add10.i) #5
  br label %sw.epilog.i

sw.bb14.i:                                        ; preds = %for.body.i
  %35 = ptrtoint ptr %current_chan_bw106.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %current_chan_bw106.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %36)
  %cmp16.i = icmp eq i8 %36, 1
  br i1 %cmp16.i, label %if.then.i15, label %if.else.i

if.then.i15:                                      ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #7
  %cond26.in.i = getelementptr i32, ptr %powerbase0.powerbase1381.i, i32 %rf.0386.i
  %37 = ptrtoint ptr %cond26.in.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %cond26.i = load i32, ptr %cond26.in.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rf.0386.i)
  %cmp27.i = icmp eq i32 %rf.0386.i, 0
  %cond29.i = select i1 %cmp27.i, i32 65, i32 66
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %28, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.10, i32 noundef %cond29.i, i32 noundef %cond26.i) #5
  br label %sw.epilog.i

if.else.i:                                        ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %pwrgroup_cnt.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %pwrgroup_cnt.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %39)
  %cmp31.i = icmp eq i8 %39, 1
  %spec.select.i = select i1 %cmp31.i, i8 0, i8 %chnlgroup.0385.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %39)
  %cmp36.i = icmp ugt i8 %39, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp61.i = icmp eq i8 %36, 0
  %inc.add66.i = select i1 %cmp61.i, i8 %inc.i, i8 %add66.i
  %chnlgroup.3.i = select i1 %cmp36.i, i8 %inc.add66.i, i8 %spec.select.i
  %idxprom71.i = zext i8 %chnlgroup.3.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rf.0386.i)
  %tobool74.not.i = icmp eq i32 %rf.0386.i, 0
  %cond75.i = select i1 %tobool74.not.i, i32 0, i32 8
  %add76.i = add nuw nsw i32 %cond75.i, %indvars.iv
  %arrayidx77.i = getelementptr %struct.rtl_priv, ptr %28, i32 0, i32 14, i32 40, i32 %idxprom71.i, i32 %add76.i
  %40 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx77.i, align 4
  %cond86.in.i = getelementptr i32, ptr %powerbase0.powerbase1381.i, i32 %rf.0386.i
  %42 = ptrtoint ptr %cond86.in.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %cond86.i = load i32, ptr %cond86.in.i, align 4
  %add87.i = add i32 %cond86.i, %41
  %cond90.i = select i1 %tobool74.not.i, i32 65, i32 66
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %28, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.11, i32 noundef %cond90.i, i32 noundef %add87.i) #5
  br label %sw.epilog.i

sw.bb92.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %cond101.in.i = getelementptr i32, ptr %powerbase0.powerbase1381.i, i32 %rf.0386.i
  %43 = ptrtoint ptr %cond101.in.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %cond101.i = load i32, ptr %cond101.in.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rf.0386.i)
  %cmp102.i = icmp eq i32 %rf.0386.i, 0
  %cond104.i = select i1 %cmp102.i, i32 65, i32 66
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %28, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.12, i32 noundef %cond104.i, i32 noundef %cond101.i) #5
  br label %sw.epilog.i

sw.bb105.i:                                       ; preds = %for.body.i
  %44 = ptrtoint ptr %current_chan_bw106.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %current_chan_bw106.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %45)
  %cmp108.i = icmp eq i8 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rf.0386.i)
  %cmp111.i = icmp eq i32 %rf.0386.i, 0
  %cond113.i = select i1 %cmp111.i, i32 65, i32 66
  %arrayidx125.i = getelementptr %struct.rtl_priv, ptr %28, i32 0, i32 17, i32 36, i32 %rf.0386.i, i32 %sub.i
  %arrayidx116.i = getelementptr %struct.rtl_priv, ptr %28, i32 0, i32 17, i32 37, i32 %rf.0386.i, i32 %sub.i
  %arrayidx125.sink.i = select i1 %cmp108.i, ptr %arrayidx116.i, ptr %arrayidx125.i
  %.str.14.sink.i = select i1 %cmp108.i, ptr @.str.13, ptr @.str.14
  %46 = ptrtoint ptr %arrayidx125.sink.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx125.sink.i, align 1
  %conv126.i = zext i8 %47 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %28, i64 noundef 9, i32 noundef 256, ptr noundef nonnull %.str.14.sink.i, i32 noundef %cond113.i, i32 noundef %conv126.i) #5
  %cond138.i = select i1 %cmp111.i, i32 0, i32 8
  %add139.i = add nuw nsw i32 %cond138.i, %indvars.iv
  %arrayidx140.i = getelementptr [16 x i32], ptr %mcs_txpwrlevel_origoffset133.i, i32 0, i32 %add139.i
  %48 = ptrtoint ptr %arrayidx140.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx140.i, align 4
  %50 = ptrtoint ptr %current_chan_bw106.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %current_chan_bw106.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %51)
  %cmp149.i = icmp eq i8 %51, 1
  %and.i = and i32 %49, 127
  %conv144.i = trunc i32 %and.i to i8
  br i1 %cmp149.i, label %if.then151.i, label %if.else172.i

if.then151.i:                                     ; preds = %sw.bb105.i
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %arrayidx116.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx116.i, align 1
  %conv160.i = zext i8 %53 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %conv160.i)
  %cmp161.i = icmp ugt i32 %and.i, %conv160.i
  %spec.select422.i = select i1 %cmp161.i, i8 %53, i8 %conv144.i
  %and.1390.i = lshr i32 %49, 8
  %shr.1391.i = and i32 %and.1390.i, 127
  %conv144.1392.i = trunc i32 %shr.1391.i to i8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.1391.i, i32 %conv160.i)
  %cmp161.1.i = icmp ugt i32 %shr.1391.i, %conv160.i
  %pwr_diff_limit.sroa.7.0.ph.i = select i1 %cmp161.1.i, i8 %53, i8 %conv144.1392.i
  %and.2399.i = lshr i32 %49, 16
  %shr.2400.i = and i32 %and.2399.i, 127
  %conv144.2401.i = trunc i32 %shr.2400.i to i8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.2400.i, i32 %conv160.i)
  %cmp161.2.i = icmp ugt i32 %shr.2400.i, %conv160.i
  %pwr_diff_limit.sroa.12.0.ph.i = select i1 %cmp161.2.i, i8 %53, i8 %conv144.2401.i
  %and.3411.i = lshr i32 %49, 24
  %shr.3412.i = and i32 %and.3411.i, 127
  %conv144.3413.i = trunc i32 %shr.3412.i to i8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.3412.i, i32 %conv160.i)
  %cmp161.3.i = icmp ugt i32 %shr.3412.i, %conv160.i
  %spec.select424.i = select i1 %cmp161.3.i, i8 %53, i8 %conv144.3413.i
  br label %for.inc.3.i

if.else172.i:                                     ; preds = %sw.bb105.i
  call void @__sanitizer_cov_trace_pc() #7
  %54 = ptrtoint ptr %arrayidx125.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx125.i, align 1
  %conv181.i = zext i8 %55 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %conv181.i)
  %cmp182.i = icmp ugt i32 %and.i, %conv181.i
  %spec.select423.i = select i1 %cmp182.i, i8 %55, i8 %conv144.i
  %and.1.i = lshr i32 %49, 8
  %shr.1.i = and i32 %and.1.i, 127
  %conv144.1.i = trunc i32 %shr.1.i to i8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.1.i, i32 %conv181.i)
  %cmp182.1.i = icmp ugt i32 %shr.1.i, %conv181.i
  %pwr_diff_limit.sroa.7.0.i = select i1 %cmp182.1.i, i8 %55, i8 %conv144.1.i
  %and.2.i = lshr i32 %49, 16
  %shr.2.i = and i32 %and.2.i, 127
  %conv144.2.i = trunc i32 %shr.2.i to i8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.2.i, i32 %conv181.i)
  %cmp182.2.i = icmp ugt i32 %shr.2.i, %conv181.i
  %pwr_diff_limit.sroa.12.0.i = select i1 %cmp182.2.i, i8 %55, i8 %conv144.2.i
  %and.3.i = lshr i32 %49, 24
  %shr.3.i = and i32 %and.3.i, 127
  %conv144.3.i = trunc i32 %shr.3.i to i8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.3.i, i32 %conv181.i)
  %cmp182.3.i = icmp ugt i32 %shr.3.i, %conv181.i
  %spec.select425.i = select i1 %cmp182.3.i, i8 %55, i8 %conv144.3.i
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.else172.i, %if.then151.i
  %pwr_diff_limit.sroa.12.0418.i = phi i8 [ %pwr_diff_limit.sroa.12.0.i, %if.else172.i ], [ %pwr_diff_limit.sroa.12.0.ph.i, %if.then151.i ]
  %pwr_diff_limit.sroa.0.0393402416.i = phi i8 [ %spec.select423.i, %if.else172.i ], [ %spec.select422.i, %if.then151.i ]
  %pwr_diff_limit.sroa.7.0404414.i = phi i8 [ %pwr_diff_limit.sroa.7.0.i, %if.else172.i ], [ %pwr_diff_limit.sroa.7.0.ph.i, %if.then151.i ]
  %pwr_diff_limit.sroa.17.0.i = phi i8 [ %spec.select425.i, %if.else172.i ], [ %spec.select424.i, %if.then151.i ]
  %conv196.i = zext i8 %pwr_diff_limit.sroa.17.0.i to i32
  %shl197.i = shl nuw i32 %conv196.i, 24
  %conv199.i = zext i8 %pwr_diff_limit.sroa.12.0418.i to i32
  %shl200.i = shl nuw nsw i32 %conv199.i, 16
  %or.i16 = or i32 %shl197.i, %shl200.i
  %conv202.i = zext i8 %pwr_diff_limit.sroa.7.0404414.i to i32
  %shl203.i = shl nuw nsw i32 %conv202.i, 8
  %or204.i = or i32 %or.i16, %shl203.i
  %conv206.i = zext i8 %pwr_diff_limit.sroa.0.0393402416.i to i32
  %or207.i = or i32 %or204.i, %conv206.i
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %28, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.15, i32 noundef %cond113.i, i32 noundef %or207.i) #5
  %cond219.in.i = getelementptr i32, ptr %powerbase0.powerbase1381.i, i32 %rf.0386.i
  %56 = ptrtoint ptr %cond219.in.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %cond219.i = load i32, ptr %cond219.in.i, align 4
  %add220.i = add i32 %or207.i, %cond219.i
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %28, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.16, i32 noundef %cond113.i, i32 noundef %add220.i) #5
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rf.0386.i)
  %tobool228.not.i = icmp eq i32 %rf.0386.i, 0
  %cond229.i = select i1 %tobool228.not.i, i32 0, i32 8
  %add230.i = add nuw nsw i32 %cond229.i, %indvars.iv
  %arrayidx231.i = getelementptr [16 x i32], ptr %mcs_txpwrlevel_origoffset133.i, i32 0, i32 %add230.i
  %57 = ptrtoint ptr %arrayidx231.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx231.i, align 4
  %cond240.in.i = getelementptr i32, ptr %powerbase0.powerbase1381.i, i32 %rf.0386.i
  %59 = ptrtoint ptr %cond240.in.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %cond240.i = load i32, ptr %cond240.in.i, align 4
  %add241.i = add i32 %cond240.i, %58
  %cond244.i = select i1 %tobool228.not.i, i32 65, i32 66
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %28, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.17, i32 noundef %cond244.i, i32 noundef %add241.i) #5
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %for.inc.3.i, %sw.bb92.i, %if.else.i, %if.then.i15, %sw.bb.i
  %chnlgroup.4.i = phi i8 [ 0, %sw.default.i ], [ 0, %for.inc.3.i ], [ %chnlgroup.0385.i, %sw.bb92.i ], [ %chnlgroup.0385.i, %if.then.i15 ], [ %chnlgroup.3.i, %if.else.i ], [ 0, %sw.bb.i ]
  %writeval.0.i = phi i32 [ %add241.i, %sw.default.i ], [ %add220.i, %for.inc.3.i ], [ %cond101.i, %sw.bb92.i ], [ %cond26.i, %if.then.i15 ], [ %add87.i, %if.else.i ], [ %add10.i, %sw.bb.i ]
  %60 = ptrtoint ptr %dynamic_txhighpower_lvl.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %dynamic_txhighpower_lvl.i, align 1
  %62 = zext i8 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %61, label %sw.epilog.i.if.end259.i_crit_edge [
    i8 3, label %if.then248.i
    i8 4, label %if.then256.i
  ]

sw.epilog.i.if.end259.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end259.i

if.then248.i:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub249.i = add i32 %writeval.0.i, -101058054
  br label %if.end259.i

if.then256.i:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub257.i = add i32 %writeval.0.i, -202116108
  br label %if.end259.i

if.end259.i:                                      ; preds = %if.then256.i, %if.then248.i, %sw.epilog.i.if.end259.i_crit_edge
  %writeval.1.i = phi i32 [ %sub249.i, %if.then248.i ], [ %sub257.i, %if.then256.i ], [ %writeval.0.i, %sw.epilog.i.if.end259.i_crit_edge ]
  %add.ptr.i = getelementptr i32, ptr %writeval, i32 %rf.0386.i
  %63 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %writeval.1.i, ptr %add.ptr.i, align 4
  %inc261.i = add nuw nsw i32 %rf.0386.i, 1
  %exitcond.not.i = icmp eq i32 %inc261.i, 2
  br i1 %exitcond.not.i, label %get_txpower_writeval_by_reg.exit, label %if.end259.i.for.body.i_crit_edge

if.end259.i.for.body.i_crit_edge:                 ; preds = %if.end259.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

get_txpower_writeval_by_reg.exit:                 ; preds = %if.end259.i
  %64 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %priv.i, align 8
  %arrayidx38.i = getelementptr [6 x i16], ptr @__const._rtl8723e_write_ofdm_power_reg.regoffset_a, i32 0, i32 %indvars.iv
  %arrayidx40.i = getelementptr [6 x i16], ptr @__const._rtl8723e_write_ofdm_power_reg.regoffset_b, i32 0, i32 %indvars.iv
  %rf_type.i.i = getelementptr inbounds %struct.rtl_priv, ptr %65, i32 0, i32 14, i32 4
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %65, i32 0, i32 13, i32 5
  %cfg.i138.i = getelementptr inbounds %struct.rtl_priv, ptr %65, i32 0, i32 32
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %65, i32 0, i32 13, i32 9
  br label %for.body.i24

for.body.i24:                                     ; preds = %for.inc101.i.for.body.i24_crit_edge, %get_txpower_writeval_by_reg.exit
  %indvars.iv.i = phi i32 [ 0, %get_txpower_writeval_by_reg.exit ], [ %indvars.iv.next.i, %for.inc101.i.for.body.i24_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %writeval, i32 %indvars.iv.i
  %66 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx.i, align 4
  %and.i18 = and i32 %67, 127
  %conv15.i = and i32 %67, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv15.i)
  %cmp16.not.i = icmp eq i32 %conv15.i, 0
  %shr.1.i19 = and i32 %67, 32512
  %68 = and i32 %67, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp16.not.1.i = icmp eq i32 %68, 0
  %shr.2.i20 = and i32 %67, 8323072
  %69 = and i32 %67, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp16.not.2.i = icmp eq i32 %69, 0
  %and.3.i21 = lshr i32 %67, 24
  %shr.3.i22 = and i32 %and.3.i21, 127
  %70 = and i32 %67, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp16.not.3.i = icmp eq i32 %70, 0
  %conv21.i = select i1 %cmp16.not.3.i, i32 %shr.3.i22, i32 63
  %shl22.i = shl nuw nsw i32 %conv21.i, 24
  %conv24.i = select i1 %cmp16.not.2.i, i32 %shr.2.i20, i32 4128768
  %or.i23 = or i32 %shl22.i, %conv24.i
  %conv27.i = select i1 %cmp16.not.1.i, i32 %shr.1.i19, i32 16128
  %or29.i = or i32 %or.i23, %conv27.i
  %conv31.i = select i1 %cmp16.not.i, i32 %and.i18, i32 63
  %or32.i = or i32 %or29.i, %conv31.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %indvars.iv.i)
  %cmp34.i = icmp eq i32 %indvars.iv.i, 0
  %regoffset.0.in.i = select i1 %cmp34.i, ptr %arrayidx38.i, ptr %arrayidx40.i
  %71 = ptrtoint ptr %regoffset.0.in.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %regoffset.0.i = load i16, ptr %regoffset.0.in.i, align 2
  %conv42.i = zext i16 %regoffset.0.i to i32
  %72 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %priv.i, align 8
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %73, i32 0, i32 32
  %74 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cfg.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %75, i32 0, i32 4
  %76 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ops.i.i, align 4
  %set_bbreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %77, i32 0, i32 46
  %78 = ptrtoint ptr %set_bbreg.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %set_bbreg.i.i, align 4
  tail call void %79(ptr noundef %hw, i32 noundef %conv42.i, i32 noundef -1, i32 noundef %or32.i) #5
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %65, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.18, i32 noundef %conv42.i, i32 noundef %or32.i) #5
  %80 = ptrtoint ptr %rf_type.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %rf_type.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %81)
  %cmp45.i = icmp eq i8 %81, 2
  br i1 %cmp45.i, label %land.lhs.true.i, label %land.lhs.true58.i

land.lhs.true.i:                                  ; preds = %for.body.i24
  %82 = zext i16 %regoffset.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.23)
  switch i16 %regoffset.0.i, label %land.lhs.true.i.for.inc101.i_crit_edge [
    i16 3612, label %land.lhs.true.i.if.end86.i_crit_edge
    i16 2152, label %land.lhs.true.i.if.then85.i_crit_edge
  ]

land.lhs.true.i.if.then85.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then85.i

land.lhs.true.i.if.end86.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end86.i

land.lhs.true.i.for.inc101.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc101.i

land.lhs.true58.i:                                ; preds = %for.body.i24
  %83 = zext i16 %regoffset.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.24)
  switch i16 %regoffset.0.i, label %land.lhs.true58.i.for.inc101.i_crit_edge [
    i16 3604, label %land.lhs.true58.i.if.end86.i_crit_edge
    i16 2120, label %land.lhs.true58.i.if.then85.i_crit_edge
  ]

land.lhs.true58.i.if.then85.i_crit_edge:          ; preds = %land.lhs.true58.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then85.i

land.lhs.true58.i.if.end86.i_crit_edge:           ; preds = %land.lhs.true58.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end86.i

land.lhs.true58.i.for.inc101.i_crit_edge:         ; preds = %land.lhs.true58.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc101.i

if.then85.i:                                      ; preds = %land.lhs.true58.i.if.then85.i_crit_edge, %land.lhs.true.i.if.then85.i_crit_edge
  br label %if.end86.i

if.end86.i:                                       ; preds = %if.then85.i, %land.lhs.true58.i.if.end86.i_crit_edge, %land.lhs.true.i.if.end86.i_crit_edge
  %regoffset.2.i = phi i32 [ 3224, %if.then85.i ], [ 3216, %land.lhs.true.i.if.end86.i_crit_edge ], [ 3216, %land.lhs.true58.i.if.end86.i_crit_edge ]
  %84 = tail call i32 @llvm.usub.sat.i32(i32 %conv21.i, i32 6) #5
  %conv96.i = trunc i32 %84 to i8
  %85 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %86(ptr noundef %65, i32 noundef %regoffset.2.i, i8 noundef zeroext %conv96.i) #5
  %87 = ptrtoint ptr %cfg.i138.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %cfg.i138.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %write_readback.i.i, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool.not.i.i = icmp eq i8 %90, 0
  br i1 %tobool.not.i.i, label %if.end86.i.rtl_write_byte.exit.i_crit_edge, label %if.then.i.i

if.end86.i.rtl_write_byte.exit.i_crit_edge:       ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit.i

if.then.i.i:                                      ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #7
  %91 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = tail call zeroext i8 %92(ptr noundef %65, i32 noundef %regoffset.2.i) #5
  br label %rtl_write_byte.exit.i

rtl_write_byte.exit.i:                            ; preds = %if.then.i.i, %if.end86.i.rtl_write_byte.exit.i_crit_edge
  %93 = tail call i32 @llvm.usub.sat.i32(i32 %conv21.i, i32 12) #5
  %add.1.i25 = or i32 %regoffset.2.i, 1
  %conv96.1.i = trunc i32 %93 to i8
  %94 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %95(ptr noundef %65, i32 noundef %add.1.i25, i8 noundef zeroext %conv96.1.i) #5
  %96 = ptrtoint ptr %cfg.i138.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %cfg.i138.i, align 8
  %write_readback.i.1.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %write_readback.i.1.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %write_readback.i.1.i, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool.not.i.1.i = icmp eq i8 %99, 0
  br i1 %tobool.not.i.1.i, label %rtl_write_byte.exit.i.rtl_write_byte.exit.1.i_crit_edge, label %if.then.i.1.i

rtl_write_byte.exit.i.rtl_write_byte.exit.1.i_crit_edge: ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit.1.i

if.then.i.1.i:                                    ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %100 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.1.i = tail call zeroext i8 %101(ptr noundef %65, i32 noundef %add.1.i25) #5
  br label %rtl_write_byte.exit.1.i

rtl_write_byte.exit.1.i:                          ; preds = %if.then.i.1.i, %rtl_write_byte.exit.i.rtl_write_byte.exit.1.i_crit_edge
  %102 = tail call i32 @llvm.usub.sat.i32(i32 %conv21.i, i32 18) #5
  %add.2.i = or i32 %regoffset.2.i, 2
  %conv96.2.i = trunc i32 %102 to i8
  %103 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %104(ptr noundef %65, i32 noundef %add.2.i, i8 noundef zeroext %conv96.2.i) #5
  %105 = ptrtoint ptr %cfg.i138.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %cfg.i138.i, align 8
  %write_readback.i.2.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %write_readback.i.2.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %write_readback.i.2.i, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool.not.i.2.i = icmp eq i8 %108, 0
  br i1 %tobool.not.i.2.i, label %rtl_write_byte.exit.1.i.for.inc101.i_crit_edge, label %if.then.i.2.i

rtl_write_byte.exit.1.i.for.inc101.i_crit_edge:   ; preds = %rtl_write_byte.exit.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc101.i

if.then.i.2.i:                                    ; preds = %rtl_write_byte.exit.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %109 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.2.i = tail call zeroext i8 %110(ptr noundef %65, i32 noundef %add.2.i) #5
  br label %for.inc101.i

for.inc101.i:                                     ; preds = %if.then.i.2.i, %rtl_write_byte.exit.1.i.for.inc101.i_crit_edge, %land.lhs.true58.i.for.inc101.i_crit_edge, %land.lhs.true.i.for.inc101.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i26 = icmp eq i32 %indvars.iv.next.i, 2
  br i1 %exitcond.not.i26, label %_rtl8723e_write_ofdm_power_reg.exit, label %for.inc101.i.for.body.i24_crit_edge

for.inc101.i.for.body.i24_crit_edge:              ; preds = %for.inc101.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i24

_rtl8723e_write_ofdm_power_reg.exit:              ; preds = %for.inc101.i
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 6
  br i1 %exitcond.not, label %for.end, label %_rtl8723e_write_ofdm_power_reg.exit.for.body_crit_edge

_rtl8723e_write_ofdm_power_reg.exit.for.body_crit_edge: ; preds = %_rtl8723e_write_ofdm_power_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %_rtl8723e_write_ofdm_power_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %powerbase1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %powerbase0) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %writeval) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl8723e_phy_rf6052_config(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
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
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 8
  %phy.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 14
  %num_total_rfpath.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 14, i32 58
  %8 = ptrtoint ptr %num_total_rfpath.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num_total_rfpath.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp103.not.i = icmp eq i8 %9, 0
  br i1 %cmp103.not.i, label %entry.for.end.i_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %u4_regvalue.0104.i = phi i32 [ %u4_regvalue.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x %struct.bb_reg_def], ptr %phy.i, i32 0, i32 %indvars.iv.i
  %10 = trunc i32 %indvars.iv.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %10)
  %11 = icmp ult i8 %10, 4
  br i1 %11, label %switch.lookup, label %for.body.i.sw.epilog.i_crit_edge

for.body.i.sw.epilog.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %sext = shl i32 %indvars.iv.i, 24
  %12 = ashr exact i32 %sext, 24
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.rtl8723e_phy_rf6052_config, i32 0, i32 %12
  %13 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load = load i32, ptr %switch.gep, align 4
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv, align 8
  %cfg.i64.i = getelementptr inbounds %struct.rtl_priv, ptr %17, i32 0, i32 32
  %18 = ptrtoint ptr %cfg.i64.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cfg.i64.i, align 8
  %ops.i65.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %ops.i65.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i65.i, align 4
  %get_bbreg.i66.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %21, i32 0, i32 45
  %22 = ptrtoint ptr %get_bbreg.i66.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %get_bbreg.i66.i, align 4
  %call.i67.i = tail call i32 %23(ptr noundef %hw, i32 noundef %15, i32 noundef %switch.load) #5
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %for.body.i.sw.epilog.i_crit_edge
  %u4_regvalue.1.i = phi i32 [ %u4_regvalue.0104.i, %for.body.i.sw.epilog.i_crit_edge ], [ %call.i67.i, %switch.lookup ]
  %rfintfe.i = getelementptr [4 x %struct.bb_reg_def], ptr %phy.i, i32 0, i32 %indvars.iv.i, i32 3
  %24 = ptrtoint ptr %rfintfe.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rfintfe.i, align 4
  %26 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv, align 8
  %cfg.i69.i = getelementptr inbounds %struct.rtl_priv, ptr %27, i32 0, i32 32
  %28 = ptrtoint ptr %cfg.i69.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cfg.i69.i, align 8
  %ops.i70.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %ops.i70.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i70.i, align 4
  %set_bbreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %31, i32 0, i32 46
  %32 = ptrtoint ptr %set_bbreg.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %set_bbreg.i.i, align 4
  tail call void %33(ptr noundef %hw, i32 noundef %25, i32 noundef 1048576, i32 noundef 1) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748) #5
  %rfintfo.i = getelementptr [4 x %struct.bb_reg_def], ptr %phy.i, i32 0, i32 %indvars.iv.i, i32 2
  %35 = ptrtoint ptr %rfintfo.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rfintfo.i, align 4
  %37 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %priv, align 8
  %cfg.i72.i = getelementptr inbounds %struct.rtl_priv, ptr %38, i32 0, i32 32
  %39 = ptrtoint ptr %cfg.i72.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cfg.i72.i, align 8
  %ops.i73.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %ops.i73.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops.i73.i, align 4
  %set_bbreg.i74.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %42, i32 0, i32 46
  %43 = ptrtoint ptr %set_bbreg.i74.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %set_bbreg.i74.i, align 4
  tail call void %44(ptr noundef %hw, i32 noundef %36, i32 noundef 16, i32 noundef 1) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748) #5
  %rfhssi_para2.i = getelementptr [4 x %struct.bb_reg_def], ptr %phy.i, i32 0, i32 %indvars.iv.i, i32 8
  %46 = ptrtoint ptr %rfhssi_para2.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rfhssi_para2.i, align 4
  %48 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %priv, align 8
  %cfg.i76.i = getelementptr inbounds %struct.rtl_priv, ptr %49, i32 0, i32 32
  %50 = ptrtoint ptr %cfg.i76.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cfg.i76.i, align 8
  %ops.i77.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %ops.i77.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops.i77.i, align 4
  %set_bbreg.i78.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %53, i32 0, i32 46
  %54 = ptrtoint ptr %set_bbreg.i78.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %set_bbreg.i78.i, align 4
  tail call void %55(ptr noundef %hw, i32 noundef %47, i32 noundef 1024, i32 noundef 0) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748) #5
  %57 = ptrtoint ptr %rfhssi_para2.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rfhssi_para2.i, align 4
  %59 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %priv, align 8
  %cfg.i80.i = getelementptr inbounds %struct.rtl_priv, ptr %60, i32 0, i32 32
  %61 = ptrtoint ptr %cfg.i80.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cfg.i80.i, align 8
  %ops.i81.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %62, i32 0, i32 4
  %63 = ptrtoint ptr %ops.i81.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ops.i81.i, align 4
  %set_bbreg.i82.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %64, i32 0, i32 46
  %65 = ptrtoint ptr %set_bbreg.i82.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %set_bbreg.i82.i, align 4
  tail call void %66(ptr noundef %hw, i32 noundef %58, i32 noundef 2048, i32 noundef 0) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %67(i32 noundef 214748) #5
  %68 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.25)
  switch i8 %10, label %sw.epilog.i.for.inc.i_crit_edge [
    i8 0, label %sw.epilog16.thread.i
    i8 1, label %sw.epilog16.thread94.i
    i8 3, label %sw.epilog.i.for.inc.sink.split.i_crit_edge
    i8 2, label %for.inc.critedge99.i
  ]

sw.epilog.i.for.inc.sink.split.i_crit_edge:       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.sink.split.i

sw.epilog.i.for.inc.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

sw.epilog16.thread.i:                             ; preds = %sw.epilog.i
  %call11.i = tail call zeroext i1 @rtl8723e_phy_config_rf_with_headerfile(ptr noundef %hw, i32 noundef %indvars.iv.i) #5
  %69 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.i, align 4
  %71 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %priv, align 8
  %cfg.i84.i = getelementptr inbounds %struct.rtl_priv, ptr %72, i32 0, i32 32
  %73 = ptrtoint ptr %cfg.i84.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %cfg.i84.i, align 8
  %ops.i85.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %74, i32 0, i32 4
  %75 = ptrtoint ptr %ops.i85.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ops.i85.i, align 4
  %set_bbreg.i86.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %76, i32 0, i32 46
  %77 = ptrtoint ptr %set_bbreg.i86.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %set_bbreg.i86.i, align 4
  tail call void %78(ptr noundef %hw, i32 noundef %70, i32 noundef 16, i32 noundef %u4_regvalue.1.i) #5
  br i1 %call11.i, label %sw.epilog16.thread.i.for.inc.i_crit_edge, label %sw.epilog16.thread.i.if.then.i_crit_edge

sw.epilog16.thread.i.if.then.i_crit_edge:         ; preds = %sw.epilog16.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

sw.epilog16.thread.i.for.inc.i_crit_edge:         ; preds = %sw.epilog16.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

sw.epilog16.thread94.i:                           ; preds = %sw.epilog.i
  %call14.i = tail call zeroext i1 @rtl8723e_phy_config_rf_with_headerfile(ptr noundef %hw, i32 noundef %indvars.iv.i) #5
  %79 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx.i, align 4
  %81 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %priv, align 8
  %cfg.i88.i = getelementptr inbounds %struct.rtl_priv, ptr %82, i32 0, i32 32
  %83 = ptrtoint ptr %cfg.i88.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cfg.i88.i, align 8
  %ops.i89.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %84, i32 0, i32 4
  %85 = ptrtoint ptr %ops.i89.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ops.i89.i, align 4
  %set_bbreg.i90.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %86, i32 0, i32 46
  %87 = ptrtoint ptr %set_bbreg.i90.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %set_bbreg.i90.i, align 4
  tail call void %88(ptr noundef %hw, i32 noundef %80, i32 noundef 1048576, i32 noundef %u4_regvalue.1.i) #5
  br i1 %call14.i, label %sw.epilog16.thread94.i.for.inc.i_crit_edge, label %sw.epilog16.thread94.i.if.then.i_crit_edge

sw.epilog16.thread94.i.if.then.i_crit_edge:       ; preds = %sw.epilog16.thread94.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

sw.epilog16.thread94.i.for.inc.i_crit_edge:       ; preds = %sw.epilog16.thread94.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then.i:                                        ; preds = %sw.epilog16.thread94.i.if.then.i_crit_edge, %sw.epilog16.thread.i.if.then.i_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.19, i32 noundef %indvars.iv.i) #5
  br label %_rtl8723e_phy_rf6052_config_parafile.exit

for.inc.critedge99.i:                             ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.sink.split.i

for.inc.sink.split.i:                             ; preds = %for.inc.critedge99.i, %sw.epilog.i.for.inc.sink.split.i_crit_edge
  %.sink117.i = phi i32 [ 16, %for.inc.critedge99.i ], [ 1048576, %sw.epilog.i.for.inc.sink.split.i_crit_edge ]
  %89 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx.i, align 4
  %91 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %priv, align 8
  %cfg.i84.c.i = getelementptr inbounds %struct.rtl_priv, ptr %92, i32 0, i32 32
  %93 = ptrtoint ptr %cfg.i84.c.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %cfg.i84.c.i, align 8
  %ops.i85.c.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %94, i32 0, i32 4
  %95 = ptrtoint ptr %ops.i85.c.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ops.i85.c.i, align 4
  %set_bbreg.i86.c.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %96, i32 0, i32 46
  %97 = ptrtoint ptr %set_bbreg.i86.c.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %set_bbreg.i86.c.i, align 4
  tail call void %98(ptr noundef %hw, i32 noundef %90, i32 noundef %.sink117.i, i32 noundef %u4_regvalue.1.i) #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.sink.split.i, %sw.epilog16.thread94.i.for.inc.i_crit_edge, %sw.epilog16.thread.i.for.inc.i_crit_edge, %sw.epilog.i.for.inc.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %99 = ptrtoint ptr %num_total_rfpath.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %num_total_rfpath.i, align 4
  %101 = zext i8 %100 to i32
  %cmp.i = icmp ult i32 %indvars.iv.next.i, %101
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.20) #5
  br label %_rtl8723e_phy_rf6052_config_parafile.exit

_rtl8723e_phy_rf6052_config_parafile.exit:        ; preds = %for.end.i, %if.then.i
  %cmp101.i = phi i1 [ true, %for.end.i ], [ false, %if.then.i ]
  ret i1 %cmp101.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl8723e_phy_config_rf_with_headerfile(ptr noundef, i32 noundef) local_unnamed_addr #3

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/rf.c", i32 32, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @rtl8723e_phy_rf6052_set_bandwidth._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @rtl8723e_phy_rf6052_set_bandwidth._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/rf.c", i32 99, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/rf.c", i32 109, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/rf.c", i32 116, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/rf.c", i32 123, i32 2}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/rf.c", i32 147, i32 3}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/rf.c", i32 164, i32 3}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/rf.c", i32 192, i32 4}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/rf.c", i32 201, i32 5}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/rf.c", i32 227, i32 5}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/rf.c", i32 236, i32 4}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/rf.c", i32 244, i32 5}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/rf.c", i32 250, i32 5}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/rf.c", i32 285, i32 4}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/rf.c", i32 292, i32 4}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/rf.c", i32 303, i32 4}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/rf.c", i32 356, i32 3}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/rf.c", i32 483, i32 4}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/rf.c", i32 489, i32 2}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{i8 0, i8 2}
!52 = !{!"auto-init"}
