; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/rf.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/rf.c"
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

@rtl92cu_phy_rf6052_set_bandwidth._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 32, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013rtl8192cu: unknown bandwidth: %#X\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rtl92cu_phy_rf6052_set_bandwidth\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/wireless/realtek/rtlwifi/rtl8192cu/rf.c\00", [44 x i8] zeroinitializer }, align 32
@rtl92cu_phy_rf6052_set_bandwidth._entry_ptr = internal global ptr @rtl92cu_phy_rf6052_set_bandwidth._entry, section ".printk_index", align 4
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"CCK PWR 1M (rf-A) = 0x%x (reg 0x%x)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"CCK PWR 2~11M (rf-A) = 0x%x (reg 0x%x)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"CCK PWR 11M (rf-B) = 0x%x (reg 0x%x)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"CCK PWR 1~5.5M (rf-B) = 0x%x (reg 0x%x)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c" [OFDM power base index rf(%c) = 0x%x]\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c" [MCS power base index rf(%c) = 0x%x]\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"RTK better performance,writeval(%c) = 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Realtek regulatory, 20MHz, writeval(%c) = 0x%x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Better regulatory,writeval(%c) = 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"customer's limit, 40MHzrf(%c) = 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"customer's limit, 20MHz rf(%c) = 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Customer's limit rf(%c) = 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Customer, writeval rf(%c)= 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"RTK better performance, writevalrf(%c) = 0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@__const._rtl92c_write_ofdm_power_reg.regoffset_a = private unnamed_addr constant [6 x i16] [i16 3584, i16 3588, i16 3600, i16 3604, i16 3608, i16 3612], align 2
@__const._rtl92c_write_ofdm_power_reg.regoffset_b = private unnamed_addr constant [6 x i16] [i16 2096, i16 2100, i16 2108, i16 2120, i16 2124, i16 2152], align 2
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Set 0x%x = %08x\0A\00", [47 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Radio[%d] Fail!!\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"<---\0A\00", [26 x i8] zeroinitializer }, align 32
@switch.table.rtl92cu_phy_rf6052_config = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 16, i32 1048576, i32 16, i32 1048576], [16 x i8] zeroinitializer }, align 32
@switch.table.rtl92cu_phy_rf6052_config.20 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 16, i32 1048576, i32 16, i32 1048576], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.22 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 16, i64 2152, i64 3612]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 16, i64 2120, i64 3604]
@___asan_gen_.26 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 32, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 96, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 104, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 109, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 114, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 137, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 150, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 175, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 199, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 206, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 214, i32 5 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 220, i32 5 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 250, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 255, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 264, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 315, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 434, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.87 = private constant [55 x i8] c"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/rf.c\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 439, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant [39 x i8] c"switch.table.rtl92cu_phy_rf6052_config\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [42 x i8] c"switch.table.rtl92cu_phy_rf6052_config.20\00", align 1
@llvm.compiler.used = appending global [24 x ptr] [ptr @rtl92cu_phy_rf6052_set_bandwidth._entry, ptr @rtl92cu_phy_rf6052_set_bandwidth._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @switch.table.rtl92cu_phy_rf6052_config, ptr @switch.table.rtl92cu_phy_rf6052_config.20], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92cu_phy_rf6052_set_bandwidth._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl92cu_phy_rf6052_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl92cu_phy_rf6052_config.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92cu_phy_rf6052_set_bandwidth(ptr noundef %hw, i8 noundef zeroext %bandwidth) local_unnamed_addr #0 align 64 {
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
define dso_local void @rtl92cu_phy_rf6052_set_cck_txpower(ptr noundef %hw, ptr nocapture noundef readonly %ppowerlevel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %act_scanning = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 20
  %2 = ptrtoint ptr %act_scanning to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %act_scanning, align 2, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %external_pa = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 18
  %4 = ptrtoint ptr %ppowerlevel to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ppowerlevel, align 1
  %conv6 = zext i8 %5 to i32
  %shl = shl nuw nsw i32 %conv6, 8
  %or = or i32 %shl, %conv6
  %shl13 = shl nuw nsw i32 %conv6, 16
  %or14 = or i32 %or, %shl13
  %shl18 = shl nuw i32 %conv6, 24
  %or19 = or i32 %or14, %shl18
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %or19)
  %cmp24 = icmp ugt i32 %or19, 32
  br i1 %cmp24, label %land.lhs.true, label %if.then.for.inc_crit_edge

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %external_pa to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %external_pa, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool27.not = icmp eq i8 %7, 0
  %spec.select410 = select i1 %tobool27.not, i8 %5, i8 32
  %spec.select411 = select i1 %tobool27.not, i8 %5, i8 0
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %if.then.for.inc_crit_edge
  %tx_agc.sroa.0.sroa.18.0 = phi i8 [ %5, %if.then.for.inc_crit_edge ], [ %spec.select410, %land.lhs.true ]
  %tx_agc.sroa.0.sroa.0.0 = phi i8 [ %5, %if.then.for.inc_crit_edge ], [ %spec.select411, %land.lhs.true ]
  %arrayidx5.1 = getelementptr i8, ptr %ppowerlevel, i32 1
  %8 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx5.1, align 1
  %conv6.1 = zext i8 %9 to i32
  %shl.1 = shl nuw nsw i32 %conv6.1, 8
  %or.1 = or i32 %shl.1, %conv6.1
  %shl13.1 = shl nuw nsw i32 %conv6.1, 16
  %or14.1 = or i32 %or.1, %shl13.1
  %shl18.1 = shl nuw i32 %conv6.1, 24
  %or19.1 = or i32 %or14.1, %shl18.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %or19.1)
  %cmp24.1 = icmp ugt i32 %or19.1, 32
  br i1 %cmp24.1, label %land.lhs.true.1, label %for.inc.if.end100_crit_edge

for.inc.if.end100_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end100

land.lhs.true.1:                                  ; preds = %for.inc
  %10 = ptrtoint ptr %external_pa to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %external_pa, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool27.not.1 = icmp eq i8 %11, 0
  br i1 %tobool27.not.1, label %land.lhs.true.1.if.end100_crit_edge, label %if.then28.1

land.lhs.true.1.if.end100_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end100

if.then28.1:                                      ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end100

if.else:                                          ; preds = %entry
  %dynamic_txhighpower_lvl = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 29
  %12 = ptrtoint ptr %dynamic_txhighpower_lvl to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dynamic_txhighpower_lvl, align 1
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %13, label %for.body51.preheader [
    i8 1, label %if.else.if.end117.3.1_crit_edge
    i8 2, label %if.then43
  ]

if.else.if.end117.3.1_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end117.3.1

for.body51.preheader:                             ; preds = %if.else
  %15 = ptrtoint ptr %ppowerlevel to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ppowerlevel, align 1
  %arrayidx53.1 = getelementptr i8, ptr %ppowerlevel, i32 1
  %17 = ptrtoint ptr %arrayidx53.1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx53.1, align 1
  %eeprom_regulatory = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 54
  %19 = ptrtoint ptr %eeprom_regulatory to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %eeprom_regulatory, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp76 = icmp eq i8 %20, 0
  br i1 %cmp76, label %if.then78, label %for.body51.preheader.if.end100_crit_edge

for.body51.preheader.if.end100_crit_edge:         ; preds = %for.body51.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end100

if.then43:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end117.3.1

if.then78:                                        ; preds = %for.body51.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %conv54.1 = zext i8 %18 to i32
  %shl68.1 = shl nuw i32 %conv54.1, 24
  %conv54 = zext i8 %16 to i32
  %shl68 = shl nuw i32 %conv54, 24
  %arrayidx80 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 41, i32 0, i32 6
  %21 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx80, align 4
  %arrayidx83 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 41, i32 0, i32 7
  %23 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx83, align 4
  %shl84 = shl i32 %24, 8
  %add = add i32 %shl84, %22
  %tx_agc.sroa.0.sroa.18.0.insert.ext277 = zext i8 %16 to i32
  %tx_agc.sroa.0.sroa.16.0.insert.ext269 = zext i8 %16 to i32
  %tx_agc.sroa.0.sroa.16.0.insert.shift270 = shl nuw nsw i32 %tx_agc.sroa.0.sroa.16.0.insert.ext269, 8
  %tx_agc.sroa.0.sroa.16.0.insert.insert272 = or i32 %tx_agc.sroa.0.sroa.16.0.insert.shift270, %tx_agc.sroa.0.sroa.18.0.insert.ext277
  %tx_agc.sroa.0.sroa.14.0.insert.ext261 = zext i8 %16 to i32
  %tx_agc.sroa.0.sroa.14.0.insert.shift262 = shl nuw nsw i32 %tx_agc.sroa.0.sroa.14.0.insert.ext261, 16
  %tx_agc.sroa.0.sroa.14.0.insert.insert264 = or i32 %tx_agc.sroa.0.sroa.16.0.insert.insert272, %tx_agc.sroa.0.sroa.14.0.insert.shift262
  %tx_agc.sroa.0.sroa.0.0.insert.insert256 = or i32 %tx_agc.sroa.0.sroa.14.0.insert.insert264, %shl68
  %add86 = add i32 %add, %tx_agc.sroa.0.sroa.0.0.insert.insert256
  %tx_agc.sroa.0.sroa.0.0.extract.shift = lshr i32 %add86, 24
  %tx_agc.sroa.0.sroa.0.0.extract.trunc = trunc i32 %tx_agc.sroa.0.sroa.0.0.extract.shift to i8
  %tx_agc.sroa.0.sroa.14.0.extract.shift = lshr i32 %add86, 16
  %tx_agc.sroa.0.sroa.14.0.extract.trunc = trunc i32 %tx_agc.sroa.0.sroa.14.0.extract.shift to i8
  %tx_agc.sroa.0.sroa.16.0.extract.shift = lshr i32 %add86, 8
  %tx_agc.sroa.0.sroa.16.0.extract.trunc = trunc i32 %tx_agc.sroa.0.sroa.16.0.extract.shift to i8
  %tx_agc.sroa.0.sroa.18.0.extract.trunc = trunc i32 %add86 to i8
  %arrayidx89 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 41, i32 0, i32 14
  %25 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx89, align 4
  %arrayidx92 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 41, i32 0, i32 15
  %27 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx92, align 4
  %shl93 = shl i32 %28, 24
  %add94 = add i32 %shl93, %26
  %tx_agc.sroa.20.sroa.18.0.insert.ext248 = zext i8 %18 to i32
  %tx_agc.sroa.20.sroa.16.0.insert.ext240 = zext i8 %18 to i32
  %tx_agc.sroa.20.sroa.16.0.insert.shift241 = shl nuw nsw i32 %tx_agc.sroa.20.sroa.16.0.insert.ext240, 8
  %tx_agc.sroa.20.sroa.16.0.insert.insert243 = or i32 %tx_agc.sroa.20.sroa.16.0.insert.shift241, %tx_agc.sroa.20.sroa.18.0.insert.ext248
  %tx_agc.sroa.20.sroa.14.0.insert.ext232 = zext i8 %18 to i32
  %tx_agc.sroa.20.sroa.14.0.insert.shift233 = shl nuw nsw i32 %tx_agc.sroa.20.sroa.14.0.insert.ext232, 16
  %tx_agc.sroa.20.sroa.14.0.insert.insert235 = or i32 %tx_agc.sroa.20.sroa.16.0.insert.insert243, %tx_agc.sroa.20.sroa.14.0.insert.shift233
  %tx_agc.sroa.20.sroa.0.0.insert.insert227 = or i32 %tx_agc.sroa.20.sroa.14.0.insert.insert235, %shl68.1
  %add96 = add i32 %add94, %tx_agc.sroa.20.sroa.0.0.insert.insert227
  %tx_agc.sroa.20.sroa.0.0.extract.shift = lshr i32 %add96, 24
  %tx_agc.sroa.20.sroa.0.0.extract.trunc = trunc i32 %tx_agc.sroa.20.sroa.0.0.extract.shift to i8
  %tx_agc.sroa.20.sroa.14.0.extract.shift = lshr i32 %add96, 16
  %tx_agc.sroa.20.sroa.14.0.extract.trunc = trunc i32 %tx_agc.sroa.20.sroa.14.0.extract.shift to i8
  %tx_agc.sroa.20.sroa.16.0.extract.shift = lshr i32 %add96, 8
  %tx_agc.sroa.20.sroa.16.0.extract.trunc = trunc i32 %tx_agc.sroa.20.sroa.16.0.extract.shift to i8
  %tx_agc.sroa.20.sroa.18.0.extract.trunc = trunc i32 %add96 to i8
  br label %if.end100

if.end100:                                        ; preds = %if.then78, %for.body51.preheader.if.end100_crit_edge, %if.then28.1, %land.lhs.true.1.if.end100_crit_edge, %for.inc.if.end100_crit_edge
  %tx_agc.sroa.0.sroa.18.1 = phi i8 [ %tx_agc.sroa.0.sroa.18.0.extract.trunc, %if.then78 ], [ %16, %for.body51.preheader.if.end100_crit_edge ], [ %tx_agc.sroa.0.sroa.18.0, %if.then28.1 ], [ %tx_agc.sroa.0.sroa.18.0, %land.lhs.true.1.if.end100_crit_edge ], [ %tx_agc.sroa.0.sroa.18.0, %for.inc.if.end100_crit_edge ]
  %tx_agc.sroa.0.sroa.16.1 = phi i8 [ %tx_agc.sroa.0.sroa.16.0.extract.trunc, %if.then78 ], [ %16, %for.body51.preheader.if.end100_crit_edge ], [ %tx_agc.sroa.0.sroa.0.0, %if.then28.1 ], [ %tx_agc.sroa.0.sroa.0.0, %land.lhs.true.1.if.end100_crit_edge ], [ %tx_agc.sroa.0.sroa.0.0, %for.inc.if.end100_crit_edge ]
  %tx_agc.sroa.0.sroa.14.1 = phi i8 [ %tx_agc.sroa.0.sroa.14.0.extract.trunc, %if.then78 ], [ %16, %for.body51.preheader.if.end100_crit_edge ], [ %tx_agc.sroa.0.sroa.0.0, %if.then28.1 ], [ %tx_agc.sroa.0.sroa.0.0, %land.lhs.true.1.if.end100_crit_edge ], [ %tx_agc.sroa.0.sroa.0.0, %for.inc.if.end100_crit_edge ]
  %tx_agc.sroa.0.sroa.0.1 = phi i8 [ %tx_agc.sroa.0.sroa.0.0.extract.trunc, %if.then78 ], [ %16, %for.body51.preheader.if.end100_crit_edge ], [ %tx_agc.sroa.0.sroa.0.0, %if.then28.1 ], [ %tx_agc.sroa.0.sroa.0.0, %land.lhs.true.1.if.end100_crit_edge ], [ %tx_agc.sroa.0.sroa.0.0, %for.inc.if.end100_crit_edge ]
  %tx_agc.sroa.20.sroa.18.1 = phi i8 [ %tx_agc.sroa.20.sroa.18.0.extract.trunc, %if.then78 ], [ %18, %for.body51.preheader.if.end100_crit_edge ], [ 32, %if.then28.1 ], [ %9, %land.lhs.true.1.if.end100_crit_edge ], [ %9, %for.inc.if.end100_crit_edge ]
  %tx_agc.sroa.20.sroa.16.1 = phi i8 [ %tx_agc.sroa.20.sroa.16.0.extract.trunc, %if.then78 ], [ %18, %for.body51.preheader.if.end100_crit_edge ], [ 0, %if.then28.1 ], [ %9, %land.lhs.true.1.if.end100_crit_edge ], [ %9, %for.inc.if.end100_crit_edge ]
  %tx_agc.sroa.20.sroa.14.1 = phi i8 [ %tx_agc.sroa.20.sroa.14.0.extract.trunc, %if.then78 ], [ %18, %for.body51.preheader.if.end100_crit_edge ], [ 0, %if.then28.1 ], [ %9, %land.lhs.true.1.if.end100_crit_edge ], [ %9, %for.inc.if.end100_crit_edge ]
  %tx_agc.sroa.20.sroa.0.1 = phi i8 [ %tx_agc.sroa.20.sroa.0.0.extract.trunc, %if.then78 ], [ %18, %for.body51.preheader.if.end100_crit_edge ], [ 0, %if.then28.1 ], [ %9, %land.lhs.true.1.if.end100_crit_edge ], [ %9, %for.inc.if.end100_crit_edge ]
  %29 = call i8 @llvm.umin.i8(i8 %tx_agc.sroa.0.sroa.0.1, i8 63)
  %30 = call i8 @llvm.umin.i8(i8 %tx_agc.sroa.0.sroa.14.1, i8 63)
  %31 = call i8 @llvm.umin.i8(i8 %tx_agc.sroa.0.sroa.16.1, i8 63)
  %32 = call i8 @llvm.umin.i8(i8 %tx_agc.sroa.0.sroa.18.1, i8 63)
  %33 = call i8 @llvm.umin.i8(i8 %tx_agc.sroa.20.sroa.0.1, i8 63)
  %34 = call i8 @llvm.umin.i8(i8 %tx_agc.sroa.20.sroa.14.1, i8 63)
  %35 = call i8 @llvm.umin.i8(i8 %tx_agc.sroa.20.sroa.16.1, i8 63)
  %36 = call i8 @llvm.umin.i8(i8 %tx_agc.sroa.20.sroa.18.1, i8 63)
  %phi.cast = zext i8 %32 to i32
  %phi.cast414 = zext i8 %31 to i32
  %phi.cast415 = zext i8 %30 to i32
  %phi.bo = shl nuw nsw i32 %phi.cast415, 8
  %phi.cast416 = zext i8 %29 to i32
  %phi.bo417 = shl nuw nsw i32 %phi.cast416, 16
  %phi.cast418 = zext i8 %36 to i32
  %phi.cast419 = zext i8 %35 to i32
  %phi.bo420 = shl nuw nsw i32 %phi.cast419, 8
  %phi.cast421 = zext i8 %34 to i32
  %phi.bo422 = shl nuw nsw i32 %phi.cast421, 16
  %phi.cast423 = zext i8 %33 to i32
  br label %if.end117.3.1

if.end117.3.1:                                    ; preds = %if.end100, %if.then43, %if.else.if.end117.3.1_crit_edge
  %tx_agc.sroa.20.sroa.16.2409 = phi i32 [ 4096, %if.else.if.end117.3.1_crit_edge ], [ 0, %if.then43 ], [ %phi.bo420, %if.end100 ]
  %tx_agc.sroa.20.sroa.0.2377387408 = phi i32 [ 16, %if.else.if.end117.3.1_crit_edge ], [ 0, %if.then43 ], [ %phi.cast423, %if.end100 ]
  %tx_agc.sroa.0.sroa.16.2345355376388407 = phi i32 [ 16, %if.else.if.end117.3.1_crit_edge ], [ 0, %if.then43 ], [ %phi.cast414, %if.end100 ]
  %tx_agc.sroa.0.sroa.0.2313323344356375389406 = phi i32 [ 1048576, %if.else.if.end117.3.1_crit_edge ], [ 0, %if.then43 ], [ %phi.bo417, %if.end100 ]
  %tx_agc.sroa.0.sroa.14.2329339360372391405 = phi i32 [ 4096, %if.else.if.end117.3.1_crit_edge ], [ 0, %if.then43 ], [ %phi.bo, %if.end100 ]
  %tx_agc.sroa.0.sroa.18.2361371392404 = phi i32 [ 16, %if.else.if.end117.3.1_crit_edge ], [ 0, %if.then43 ], [ %phi.cast, %if.end100 ]
  %tx_agc.sroa.20.sroa.14.2393403 = phi i32 [ 1048576, %if.else.if.end117.3.1_crit_edge ], [ 0, %if.then43 ], [ %phi.bo422, %if.end100 ]
  %tx_agc.sroa.20.sroa.18.2 = phi i32 [ 16, %if.else.if.end117.3.1_crit_edge ], [ 0, %if.then43 ], [ %phi.cast418, %if.end100 ]
  %tx_agc.sroa.0.sroa.14.0.insert.insert = or i32 %tx_agc.sroa.0.sroa.14.2329339360372391405, %tx_agc.sroa.0.sroa.16.2345355376388407
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %37 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops.i, align 4
  %set_bbreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %40, i32 0, i32 46
  %41 = ptrtoint ptr %set_bbreg.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %set_bbreg.i, align 4
  tail call void %42(ptr noundef %hw, i32 noundef 3592, i32 noundef 65280, i32 noundef %tx_agc.sroa.0.sroa.18.2361371392404) #5
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.3, i32 noundef %tx_agc.sroa.0.sroa.18.2361371392404, i32 noundef 3592) #5
  %mode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 42
  %43 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %44)
  %cmp127 = icmp eq i16 %44, 2
  %tx_agc.sroa.0.sroa.0.0.insert.insert = select i1 %cmp127, i32 0, i32 %tx_agc.sroa.0.sroa.0.2313323344356375389406
  %spec.select = or i32 %tx_agc.sroa.0.sroa.14.0.insert.insert, %tx_agc.sroa.0.sroa.0.0.insert.insert
  %45 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %priv, align 8
  %cfg.i192 = getelementptr inbounds %struct.rtl_priv, ptr %46, i32 0, i32 32
  %47 = ptrtoint ptr %cfg.i192 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cfg.i192, align 8
  %ops.i193 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %ops.i193 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ops.i193, align 4
  %set_bbreg.i194 = getelementptr inbounds %struct.rtl_hal_ops, ptr %50, i32 0, i32 46
  %51 = ptrtoint ptr %set_bbreg.i194 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %set_bbreg.i194, align 4
  tail call void %52(ptr noundef %hw, i32 noundef 2156, i32 noundef -256, i32 noundef %spec.select) #5
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.4, i32 noundef %spec.select, i32 noundef 2156) #5
  %tx_agc.sroa.20.sroa.16.0.insert.insert = or i32 %tx_agc.sroa.20.sroa.16.2409, %tx_agc.sroa.20.sroa.18.2
  %tx_agc.sroa.20.sroa.14.0.insert.insert = or i32 %tx_agc.sroa.20.sroa.16.0.insert.insert, %tx_agc.sroa.20.sroa.14.2393403
  %53 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %priv, align 8
  %cfg.i196 = getelementptr inbounds %struct.rtl_priv, ptr %54, i32 0, i32 32
  %55 = ptrtoint ptr %cfg.i196 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cfg.i196, align 8
  %ops.i197 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %56, i32 0, i32 4
  %57 = ptrtoint ptr %ops.i197 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ops.i197, align 4
  %set_bbreg.i198 = getelementptr inbounds %struct.rtl_hal_ops, ptr %58, i32 0, i32 46
  %59 = ptrtoint ptr %set_bbreg.i198 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %set_bbreg.i198, align 4
  tail call void %60(ptr noundef %hw, i32 noundef 2156, i32 noundef 255, i32 noundef %tx_agc.sroa.20.sroa.0.2377387408) #5
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.5, i32 noundef %tx_agc.sroa.20.sroa.0.2377387408, i32 noundef 2156) #5
  %61 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %priv, align 8
  %cfg.i200 = getelementptr inbounds %struct.rtl_priv, ptr %62, i32 0, i32 32
  %63 = ptrtoint ptr %cfg.i200 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cfg.i200, align 8
  %ops.i201 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %64, i32 0, i32 4
  %65 = ptrtoint ptr %ops.i201 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ops.i201, align 4
  %set_bbreg.i202 = getelementptr inbounds %struct.rtl_hal_ops, ptr %66, i32 0, i32 46
  %67 = ptrtoint ptr %set_bbreg.i202 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %set_bbreg.i202, align 4
  tail call void %68(ptr noundef %hw, i32 noundef 2104, i32 noundef -256, i32 noundef %tx_agc.sroa.20.sroa.14.0.insert.insert) #5
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.6, i32 noundef %tx_agc.sroa.20.sroa.14.0.insert.insert, i32 noundef 2104) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92cu_phy_rf6052_set_ofdm_txpower(ptr noundef %hw, ptr nocapture noundef readonly %ppowerlevel, i8 noundef zeroext %channel) local_unnamed_addr #0 align 64 {
entry:
  %writeval = alloca [2 x i32], align 4
  %powerbase0 = alloca [2 x i32], align 4
  %powerbase1 = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %writeval) #5
  %0 = ptrtoint ptr %writeval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %writeval, align 4, !annotation !50
  %1 = getelementptr inbounds [2 x i32], ptr %writeval, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !50
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
  br i1 %cmp29.1.i, label %if.then.1.i, label %if.end.i.rtl92c_phy_get_power_base.exit_crit_edge

if.end.i.rtl92c_phy_get_power_base.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl92c_phy_get_power_base.exit

if.then.1.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx35.1.i = getelementptr %struct.rtl_priv, ptr %6, i32 0, i32 17, i32 42, i32 1, i32 %sub.i
  %24 = ptrtoint ptr %arrayidx35.1.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx35.1.i, align 1
  %add40.1.i = add i8 %25, %13
  %.pre99.i = zext i8 %add40.1.i to i32
  br label %rtl92c_phy_get_power_base.exit

rtl92c_phy_get_power_base.exit:                   ; preds = %if.then.1.i, %if.end.i.rtl92c_phy_get_power_base.exit_crit_edge
  %conv44.1.pre-phi.i = phi i32 [ %.pre99.i, %if.then.1.i ], [ %conv11.1.i, %if.end.i.rtl92c_phy_get_power_base.exit_crit_edge ]
  %or50.1.i = mul nuw i32 %conv44.1.pre-phi.i, 16843009
  %26 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or50.1.i, ptr %4, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %6, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.8, i32 noundef 66, i32 noundef %or50.1.i) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %channel)
  %cmp24.i = icmp ult i8 %channel, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %channel)
  %cmp31.i = icmp ult i8 %channel, 10
  %spec.select360.i = select i1 %cmp31.i, i8 1, i8 2
  %chnlgroup.2.i = select i1 %cmp24.i, i8 0, i8 %spec.select360.i
  %add48.i = or i8 %chnlgroup.2.i, 4
  %inc.i = add nuw nsw i8 %chnlgroup.2.i, 1
  br label %for.body

for.body:                                         ; preds = %_rtl92c_write_ofdm_power_reg.exit.for.body_crit_edge, %rtl92c_phy_get_power_base.exit
  %indvars.iv = phi i32 [ 0, %rtl92c_phy_get_power_base.exit ], [ %indvars.iv.next, %_rtl92c_write_ofdm_power_reg.exit.for.body_crit_edge ]
  %27 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv.i, align 8
  %eeprom_regulatory.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 17, i32 54
  %current_chan_bw87.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 14, i32 5
  %mcs_offset114.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 14, i32 41
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %indvars.iv)
  %cmp193.i = icmp ult i32 %indvars.iv, 2
  %powerbase0.powerbase1357.i = select i1 %cmp193.i, ptr %powerbase0, ptr %powerbase1
  %pwrgroup_cnt.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 14, i32 38
  %dynamic_txhighpower_lvl.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 15, i32 29
  br label %for.body.i

for.body.i:                                       ; preds = %if.end238.i.for.body.i_crit_edge, %for.body
  %rf.0363.i = phi i32 [ 0, %for.body ], [ %inc248.i, %if.end238.i.for.body.i_crit_edge ]
  %chnlgroup.0362.i = phi i8 [ 0, %for.body ], [ %chnlgroup.4.i, %if.end238.i.for.body.i_crit_edge ]
  %29 = ptrtoint ptr %eeprom_regulatory.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %eeprom_regulatory.i, align 1
  %31 = zext i8 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %30, label %sw.default.i [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb14.i
    i8 2, label %sw.bb73.i
    i8 3, label %sw.bb86.i
  ]

sw.bb.i:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rf.0363.i)
  %tobool.not.i = icmp eq i32 %rf.0363.i, 0
  %cond.i = select i1 %tobool.not.i, i32 0, i32 8
  %add.i14 = add nuw nsw i32 %cond.i, %indvars.iv
  %arrayidx3.i = getelementptr [16 x i32], ptr %mcs_offset114.i, i32 0, i32 %add.i14
  %32 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx3.i, align 4
  %cond9.in.i = getelementptr i32, ptr %powerbase0.powerbase1357.i, i32 %rf.0363.i
  %34 = ptrtoint ptr %cond9.in.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %cond9.i = load i32, ptr %cond9.in.i, align 4
  %add10.i = add i32 %cond9.i, %33
  %cond13.i = select i1 %tobool.not.i, i32 65, i32 66
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %28, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.9, i32 noundef %cond13.i, i32 noundef %add10.i) #5
  br label %sw.epilog.i

sw.bb14.i:                                        ; preds = %for.body.i
  %35 = ptrtoint ptr %pwrgroup_cnt.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %pwrgroup_cnt.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %36)
  %cmp16.i = icmp eq i8 %36, 1
  %spec.select.i = select i1 %cmp16.i, i8 0, i8 %chnlgroup.0362.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %36)
  %cmp20.i = icmp ugt i8 %36, 2
  br i1 %cmp20.i, label %if.then22.i, label %sw.bb14.i.if.end51.i_crit_edge

sw.bb14.i.if.end51.i_crit_edge:                   ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51.i

if.then22.i:                                      ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %current_chan_bw87.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %current_chan_bw87.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp43.i = icmp eq i8 %38, 0
  %inc.add48.i = select i1 %cmp43.i, i8 %inc.i, i8 %add48.i
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then22.i, %sw.bb14.i.if.end51.i_crit_edge
  %chnlgroup.3.i = phi i8 [ %spec.select.i, %sw.bb14.i.if.end51.i_crit_edge ], [ %inc.add48.i, %if.then22.i ]
  %idxprom53.i = zext i8 %chnlgroup.3.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rf.0363.i)
  %tobool56.not.i = icmp eq i32 %rf.0363.i, 0
  %cond57.i = select i1 %tobool56.not.i, i32 0, i32 8
  %add58.i = add nuw nsw i32 %cond57.i, %indvars.iv
  %arrayidx59.i = getelementptr %struct.rtl_priv, ptr %28, i32 0, i32 14, i32 41, i32 %idxprom53.i, i32 %add58.i
  %39 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx59.i, align 4
  %cond68.in.i = getelementptr i32, ptr %powerbase0.powerbase1357.i, i32 %rf.0363.i
  %41 = ptrtoint ptr %cond68.in.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %cond68.i = load i32, ptr %cond68.in.i, align 4
  %add69.i = add i32 %cond68.i, %40
  %cond72.i = select i1 %tobool56.not.i, i32 65, i32 66
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %28, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.10, i32 noundef %cond72.i, i32 noundef %add69.i) #5
  br label %sw.epilog.i

sw.bb73.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %cond82.in.i = getelementptr i32, ptr %powerbase0.powerbase1357.i, i32 %rf.0363.i
  %42 = ptrtoint ptr %cond82.in.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %cond82.i = load i32, ptr %cond82.in.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rf.0363.i)
  %cmp83.i = icmp eq i32 %rf.0363.i, 0
  %cond85.i = select i1 %cmp83.i, i32 65, i32 66
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %28, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.11, i32 noundef %cond85.i, i32 noundef %cond82.i) #5
  br label %sw.epilog.i

sw.bb86.i:                                        ; preds = %for.body.i
  %43 = ptrtoint ptr %current_chan_bw87.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %current_chan_bw87.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %44)
  %cmp89.i = icmp eq i8 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rf.0363.i)
  %cmp92.i = icmp eq i32 %rf.0363.i, 0
  %cond94.i = select i1 %cmp92.i, i32 65, i32 66
  %arrayidx106.i = getelementptr %struct.rtl_priv, ptr %28, i32 0, i32 17, i32 36, i32 %rf.0363.i, i32 %sub.i
  %arrayidx97.i = getelementptr %struct.rtl_priv, ptr %28, i32 0, i32 17, i32 37, i32 %rf.0363.i, i32 %sub.i
  %arrayidx106.sink.i = select i1 %cmp89.i, ptr %arrayidx97.i, ptr %arrayidx106.i
  %.str.13.sink.i = select i1 %cmp89.i, ptr @.str.12, ptr @.str.13
  %45 = ptrtoint ptr %arrayidx106.sink.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx106.sink.i, align 1
  %conv107.i = zext i8 %46 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %28, i64 noundef 9, i32 noundef 256, ptr noundef nonnull %.str.13.sink.i, i32 noundef %cond94.i, i32 noundef %conv107.i) #5
  %cond119.i = select i1 %cmp92.i, i32 0, i32 8
  %add120.i = add nuw nsw i32 %cond119.i, %indvars.iv
  %arrayidx121.i = getelementptr [16 x i32], ptr %mcs_offset114.i, i32 0, i32 %add120.i
  %47 = ptrtoint ptr %arrayidx121.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx121.i, align 4
  %49 = ptrtoint ptr %current_chan_bw87.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %current_chan_bw87.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %50)
  %cmp130.i = icmp eq i8 %50, 1
  %and.i = and i32 %48, 127
  %conv125.i = trunc i32 %and.i to i8
  br i1 %cmp130.i, label %if.then132.i, label %if.else153.i

if.then132.i:                                     ; preds = %sw.bb86.i
  call void @__sanitizer_cov_trace_pc() #7
  %51 = ptrtoint ptr %arrayidx97.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx97.i, align 1
  %conv141.i = zext i8 %52 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %conv141.i)
  %cmp142.i = icmp ugt i32 %and.i, %conv141.i
  %spec.select399.i = select i1 %cmp142.i, i8 %52, i8 %conv125.i
  %and.1367.i = lshr i32 %48, 8
  %shr.1368.i = and i32 %and.1367.i, 127
  %conv125.1369.i = trunc i32 %shr.1368.i to i8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.1368.i, i32 %conv141.i)
  %cmp142.1.i = icmp ugt i32 %shr.1368.i, %conv141.i
  %pwr_diff_limit.sroa.7.0.ph.i = select i1 %cmp142.1.i, i8 %52, i8 %conv125.1369.i
  %and.2376.i = lshr i32 %48, 16
  %shr.2377.i = and i32 %and.2376.i, 127
  %conv125.2378.i = trunc i32 %shr.2377.i to i8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.2377.i, i32 %conv141.i)
  %cmp142.2.i = icmp ugt i32 %shr.2377.i, %conv141.i
  %pwr_diff_limit.sroa.12.0.ph.i = select i1 %cmp142.2.i, i8 %52, i8 %conv125.2378.i
  %and.3388.i = lshr i32 %48, 24
  %shr.3389.i = and i32 %and.3388.i, 127
  %conv125.3390.i = trunc i32 %shr.3389.i to i8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.3389.i, i32 %conv141.i)
  %cmp142.3.i = icmp ugt i32 %shr.3389.i, %conv141.i
  %spec.select401.i = select i1 %cmp142.3.i, i8 %52, i8 %conv125.3390.i
  br label %for.inc.3.i

if.else153.i:                                     ; preds = %sw.bb86.i
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %arrayidx106.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx106.i, align 1
  %conv162.i = zext i8 %54 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %conv162.i)
  %cmp163.i = icmp ugt i32 %and.i, %conv162.i
  %spec.select400.i = select i1 %cmp163.i, i8 %54, i8 %conv125.i
  %and.1.i = lshr i32 %48, 8
  %shr.1.i = and i32 %and.1.i, 127
  %conv125.1.i = trunc i32 %shr.1.i to i8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.1.i, i32 %conv162.i)
  %cmp163.1.i = icmp ugt i32 %shr.1.i, %conv162.i
  %pwr_diff_limit.sroa.7.0.i = select i1 %cmp163.1.i, i8 %54, i8 %conv125.1.i
  %and.2.i = lshr i32 %48, 16
  %shr.2.i = and i32 %and.2.i, 127
  %conv125.2.i = trunc i32 %shr.2.i to i8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.2.i, i32 %conv162.i)
  %cmp163.2.i = icmp ugt i32 %shr.2.i, %conv162.i
  %pwr_diff_limit.sroa.12.0.i = select i1 %cmp163.2.i, i8 %54, i8 %conv125.2.i
  %and.3.i = lshr i32 %48, 24
  %shr.3.i = and i32 %and.3.i, 127
  %conv125.3.i = trunc i32 %shr.3.i to i8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.3.i, i32 %conv162.i)
  %cmp163.3.i = icmp ugt i32 %shr.3.i, %conv162.i
  %spec.select402.i = select i1 %cmp163.3.i, i8 %54, i8 %conv125.3.i
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.else153.i, %if.then132.i
  %pwr_diff_limit.sroa.12.0395.i = phi i8 [ %pwr_diff_limit.sroa.12.0.i, %if.else153.i ], [ %pwr_diff_limit.sroa.12.0.ph.i, %if.then132.i ]
  %pwr_diff_limit.sroa.0.0370379393.i = phi i8 [ %spec.select400.i, %if.else153.i ], [ %spec.select399.i, %if.then132.i ]
  %pwr_diff_limit.sroa.7.0381391.i = phi i8 [ %pwr_diff_limit.sroa.7.0.i, %if.else153.i ], [ %pwr_diff_limit.sroa.7.0.ph.i, %if.then132.i ]
  %pwr_diff_limit.sroa.17.0.i = phi i8 [ %spec.select402.i, %if.else153.i ], [ %spec.select401.i, %if.then132.i ]
  %conv177.i = zext i8 %pwr_diff_limit.sroa.17.0.i to i32
  %shl178.i = shl nuw i32 %conv177.i, 24
  %conv180.i = zext i8 %pwr_diff_limit.sroa.12.0395.i to i32
  %shl181.i = shl nuw nsw i32 %conv180.i, 16
  %or.i15 = or i32 %shl178.i, %shl181.i
  %conv183.i = zext i8 %pwr_diff_limit.sroa.7.0381391.i to i32
  %shl184.i = shl nuw nsw i32 %conv183.i, 8
  %or185.i = or i32 %or.i15, %shl184.i
  %conv187.i = zext i8 %pwr_diff_limit.sroa.0.0370379393.i to i32
  %or188.i = or i32 %or185.i, %conv187.i
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %28, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.14, i32 noundef %cond94.i, i32 noundef %or188.i) #5
  %cond200.in.i = getelementptr i32, ptr %powerbase0.powerbase1357.i, i32 %rf.0363.i
  %55 = ptrtoint ptr %cond200.in.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %cond200.i = load i32, ptr %cond200.in.i, align 4
  %add201.i = add i32 %or188.i, %cond200.i
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %28, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.15, i32 noundef %cond94.i, i32 noundef %add201.i) #5
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rf.0363.i)
  %tobool209.not.i = icmp eq i32 %rf.0363.i, 0
  %cond210.i = select i1 %tobool209.not.i, i32 0, i32 8
  %add211.i = add nuw nsw i32 %cond210.i, %indvars.iv
  %arrayidx212.i = getelementptr [16 x i32], ptr %mcs_offset114.i, i32 0, i32 %add211.i
  %56 = ptrtoint ptr %arrayidx212.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx212.i, align 4
  %cond221.in.i = getelementptr i32, ptr %powerbase0.powerbase1357.i, i32 %rf.0363.i
  %58 = ptrtoint ptr %cond221.in.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %cond221.i = load i32, ptr %cond221.in.i, align 4
  %add222.i = add i32 %cond221.i, %57
  %cond225.i = select i1 %tobool209.not.i, i32 65, i32 66
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %28, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.16, i32 noundef %cond225.i, i32 noundef %add222.i) #5
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %for.inc.3.i, %sw.bb73.i, %if.end51.i, %sw.bb.i
  %chnlgroup.4.i = phi i8 [ 0, %sw.default.i ], [ 0, %for.inc.3.i ], [ %chnlgroup.0362.i, %sw.bb73.i ], [ %chnlgroup.3.i, %if.end51.i ], [ 0, %sw.bb.i ]
  %writeval.0.i = phi i32 [ %add222.i, %sw.default.i ], [ %add201.i, %for.inc.3.i ], [ %cond82.i, %sw.bb73.i ], [ %add69.i, %if.end51.i ], [ %add10.i, %sw.bb.i ]
  %59 = ptrtoint ptr %dynamic_txhighpower_lvl.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %dynamic_txhighpower_lvl.i, align 1
  %61 = zext i8 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %60, label %if.end238.fold.split.i [
    i8 1, label %sw.epilog.i.if.end238.i_crit_edge
    i8 2, label %if.then236.i
  ]

sw.epilog.i.if.end238.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end238.i

if.then236.i:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end238.i

if.end238.fold.split.i:                           ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end238.i

if.end238.i:                                      ; preds = %if.end238.fold.split.i, %if.then236.i, %sw.epilog.i.if.end238.i_crit_edge
  %writeval.1.i = phi i32 [ 0, %if.then236.i ], [ 336860180, %sw.epilog.i.if.end238.i_crit_edge ], [ %writeval.0.i, %if.end238.fold.split.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %60)
  %cmp242.i = icmp eq i8 %60, 3
  %sub245.i = add i32 %writeval.1.i, -101058054
  %spec.select359.i = select i1 %cmp242.i, i32 %sub245.i, i32 %writeval.1.i
  %add.ptr.i = getelementptr i32, ptr %writeval, i32 %rf.0363.i
  %62 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %spec.select359.i, ptr %add.ptr.i, align 4
  %inc248.i = add nuw nsw i32 %rf.0363.i, 1
  %exitcond.not.i = icmp eq i32 %inc248.i, 2
  br i1 %exitcond.not.i, label %_rtl92c_get_txpower_writeval_by_regulatory.exit, label %if.end238.i.for.body.i_crit_edge

if.end238.i.for.body.i_crit_edge:                 ; preds = %if.end238.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

_rtl92c_get_txpower_writeval_by_regulatory.exit:  ; preds = %if.end238.i
  %63 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %priv.i, align 8
  %arrayidx38.i = getelementptr [6 x i16], ptr @__const._rtl92c_write_ofdm_power_reg.regoffset_a, i32 0, i32 %indvars.iv
  %arrayidx40.i = getelementptr [6 x i16], ptr @__const._rtl92c_write_ofdm_power_reg.regoffset_b, i32 0, i32 %indvars.iv
  %rf_type.i.i = getelementptr inbounds %struct.rtl_priv, ptr %64, i32 0, i32 14, i32 4
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %64, i32 0, i32 13, i32 5
  %cfg.i155.i = getelementptr inbounds %struct.rtl_priv, ptr %64, i32 0, i32 32
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %64, i32 0, i32 13, i32 9
  br label %for.body.i23

for.body.i23:                                     ; preds = %for.inc114.i.for.body.i23_crit_edge, %_rtl92c_get_txpower_writeval_by_regulatory.exit
  %indvars.iv.i = phi i32 [ 0, %_rtl92c_get_txpower_writeval_by_regulatory.exit ], [ %indvars.iv.next.i, %for.inc114.i.for.body.i23_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %writeval, i32 %indvars.iv.i
  %65 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.i, align 4
  %and.i17 = and i32 %66, 127
  %conv15.i = and i32 %66, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv15.i)
  %cmp16.not.i = icmp eq i32 %conv15.i, 0
  %shr.1.i18 = and i32 %66, 32512
  %67 = and i32 %66, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp16.not.1.i = icmp eq i32 %67, 0
  %shr.2.i19 = and i32 %66, 8323072
  %68 = and i32 %66, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp16.not.2.i = icmp eq i32 %68, 0
  %and.3.i20 = lshr i32 %66, 24
  %shr.3.i21 = and i32 %and.3.i20, 127
  %69 = and i32 %66, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp16.not.3.i = icmp eq i32 %69, 0
  %conv21.i = select i1 %cmp16.not.3.i, i32 %shr.3.i21, i32 63
  %shl22.i = shl nuw nsw i32 %conv21.i, 24
  %conv24.i = select i1 %cmp16.not.2.i, i32 %shr.2.i19, i32 4128768
  %or.i22 = or i32 %shl22.i, %conv24.i
  %conv27.i = select i1 %cmp16.not.1.i, i32 %shr.1.i18, i32 16128
  %or29.i = or i32 %or.i22, %conv27.i
  %conv31.i = select i1 %cmp16.not.i, i32 %and.i17, i32 63
  %or32.i = or i32 %or29.i, %conv31.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %indvars.iv.i)
  %cmp34.i = icmp eq i32 %indvars.iv.i, 0
  %regoffset.0.in.i = select i1 %cmp34.i, ptr %arrayidx38.i, ptr %arrayidx40.i
  %70 = ptrtoint ptr %regoffset.0.in.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %regoffset.0.i = load i16, ptr %regoffset.0.in.i, align 2
  %conv42.i = zext i16 %regoffset.0.i to i32
  %71 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %priv.i, align 8
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %72, i32 0, i32 32
  %73 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %cfg.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %74, i32 0, i32 4
  %75 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ops.i.i, align 4
  %set_bbreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %76, i32 0, i32 46
  %77 = ptrtoint ptr %set_bbreg.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %set_bbreg.i.i, align 4
  tail call void %78(ptr noundef %hw, i32 noundef %conv42.i, i32 noundef -1, i32 noundef %or32.i) #5
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %64, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.17, i32 noundef %conv42.i, i32 noundef %or32.i) #5
  %79 = ptrtoint ptr %rf_type.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %rf_type.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %80)
  %cmp45.i = icmp eq i8 %80, 2
  br i1 %cmp45.i, label %land.lhs.true.i, label %land.lhs.true58.i

land.lhs.true.i:                                  ; preds = %for.body.i23
  %81 = zext i16 %regoffset.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.24)
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

land.lhs.true58.i:                                ; preds = %for.body.i23
  %82 = zext i16 %regoffset.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.25)
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
  %83 = tail call i32 @llvm.usub.sat.i32(i32 %conv21.i, i32 8) #5
  %conv109.i = trunc i32 %83 to i8
  %84 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %85(ptr noundef %64, i32 noundef %regoffset.2.i, i8 noundef zeroext %conv109.i) #5
  %86 = ptrtoint ptr %cfg.i155.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %cfg.i155.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %write_readback.i.i, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool.not.i.i = icmp eq i8 %89, 0
  br i1 %tobool.not.i.i, label %if.end106.i.if.end106.1.i_crit_edge, label %if.then.i.i

if.end106.i.if.end106.1.i_crit_edge:              ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end106.1.i

if.then.i.i:                                      ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #7
  %90 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = tail call zeroext i8 %91(ptr noundef %64, i32 noundef %regoffset.2.i) #5
  br label %if.end106.1.i

if.end106.1.i:                                    ; preds = %if.then.i.i, %if.end106.i.if.end106.1.i_crit_edge
  %92 = tail call i32 @llvm.usub.sat.i32(i32 %conv21.i, i32 16) #5
  %add.1.i24 = or i32 %regoffset.2.i, 1
  %conv109.1.i = trunc i32 %92 to i8
  %93 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %94(ptr noundef %64, i32 noundef %add.1.i24, i8 noundef zeroext %conv109.1.i) #5
  %95 = ptrtoint ptr %cfg.i155.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cfg.i155.i, align 8
  %write_readback.i.1.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %write_readback.i.1.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %write_readback.i.1.i, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool.not.i.1.i = icmp eq i8 %98, 0
  br i1 %tobool.not.i.1.i, label %if.end106.1.i.if.end106.2.i_crit_edge, label %if.then.i.1.i

if.end106.1.i.if.end106.2.i_crit_edge:            ; preds = %if.end106.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end106.2.i

if.then.i.1.i:                                    ; preds = %if.end106.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %99 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.1.i = tail call zeroext i8 %100(ptr noundef %64, i32 noundef %add.1.i24) #5
  br label %if.end106.2.i

if.end106.2.i:                                    ; preds = %if.then.i.1.i, %if.end106.1.i.if.end106.2.i_crit_edge
  %101 = tail call i32 @llvm.usub.sat.i32(i32 %conv21.i, i32 22) #5
  %add.2.i = or i32 %regoffset.2.i, 2
  %conv109.2.i = trunc i32 %101 to i8
  %102 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %103(ptr noundef %64, i32 noundef %add.2.i, i8 noundef zeroext %conv109.2.i) #5
  %104 = ptrtoint ptr %cfg.i155.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %cfg.i155.i, align 8
  %write_readback.i.2.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %write_readback.i.2.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %write_readback.i.2.i, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool.not.i.2.i = icmp eq i8 %107, 0
  br i1 %tobool.not.i.2.i, label %if.end106.2.i.for.inc114.i_crit_edge, label %if.then.i.2.i

if.end106.2.i.for.inc114.i_crit_edge:             ; preds = %if.end106.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc114.i

if.then.i.2.i:                                    ; preds = %if.end106.2.i
  call void @__sanitizer_cov_trace_pc() #7
  %108 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.2.i = tail call zeroext i8 %109(ptr noundef %64, i32 noundef %add.2.i) #5
  br label %for.inc114.i

for.inc114.i:                                     ; preds = %if.then.i.2.i, %if.end106.2.i.for.inc114.i_crit_edge, %land.lhs.true58.i.for.inc114.i_crit_edge, %land.lhs.true.i.for.inc114.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i25 = icmp eq i32 %indvars.iv.next.i, 2
  br i1 %exitcond.not.i25, label %_rtl92c_write_ofdm_power_reg.exit, label %for.inc114.i.for.body.i23_crit_edge

for.inc114.i.for.body.i23_crit_edge:              ; preds = %for.inc114.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i23

_rtl92c_write_ofdm_power_reg.exit:                ; preds = %for.inc114.i
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 6
  br i1 %exitcond.not, label %for.end, label %_rtl92c_write_ofdm_power_reg.exit.for.body_crit_edge

_rtl92c_write_ofdm_power_reg.exit.for.body_crit_edge: ; preds = %_rtl92c_write_ofdm_power_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %_rtl92c_write_ofdm_power_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %powerbase1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %powerbase0) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %writeval) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl92cu_phy_rf6052_config(ptr noundef %hw) local_unnamed_addr #0 align 64 {
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
  %cmp84.not.i = icmp eq i8 %9, 0
  br i1 %cmp84.not.i, label %entry.for.end.i_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.cond.i:                                       ; preds = %sw.epilog18.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %10 = ptrtoint ptr %num_total_rfpath.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %num_total_rfpath.i, align 4
  %12 = zext i8 %11 to i32
  %cmp.i = icmp ult i32 %indvars.iv.next.i, %12
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.for.end.i_crit_edge

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %u4_regvalue.085.i = phi i32 [ %u4_regvalue.1.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x %struct.bb_reg_def], ptr %phy.i, i32 0, i32 %indvars.iv.i
  %13 = trunc i32 %indvars.iv.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %13)
  %14 = icmp ult i8 %13, 4
  br i1 %14, label %switch.lookup, label %for.body.i.sw.epilog.i_crit_edge

for.body.i.sw.epilog.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %sext18 = shl i32 %indvars.iv.i, 24
  %15 = ashr exact i32 %sext18, 24
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.rtl92cu_phy_rf6052_config, i32 0, i32 %15
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load = load i32, ptr %switch.gep, align 4
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv, align 8
  %cfg.i54.i = getelementptr inbounds %struct.rtl_priv, ptr %20, i32 0, i32 32
  %21 = ptrtoint ptr %cfg.i54.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cfg.i54.i, align 8
  %ops.i55.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %ops.i55.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i55.i, align 4
  %get_bbreg.i56.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %24, i32 0, i32 45
  %25 = ptrtoint ptr %get_bbreg.i56.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %get_bbreg.i56.i, align 4
  %call.i57.i = tail call i32 %26(ptr noundef %hw, i32 noundef %18, i32 noundef %switch.load) #5
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %for.body.i.sw.epilog.i_crit_edge
  %u4_regvalue.1.i = phi i32 [ %u4_regvalue.085.i, %for.body.i.sw.epilog.i_crit_edge ], [ %call.i57.i, %switch.lookup ]
  %rfintfe.i = getelementptr [4 x %struct.bb_reg_def], ptr %phy.i, i32 0, i32 %indvars.iv.i, i32 3
  %27 = ptrtoint ptr %rfintfe.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rfintfe.i, align 4
  %29 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %priv, align 8
  %cfg.i59.i = getelementptr inbounds %struct.rtl_priv, ptr %30, i32 0, i32 32
  %31 = ptrtoint ptr %cfg.i59.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cfg.i59.i, align 8
  %ops.i60.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %ops.i60.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.i60.i, align 4
  %set_bbreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %34, i32 0, i32 46
  %35 = ptrtoint ptr %set_bbreg.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %set_bbreg.i.i, align 4
  tail call void %36(ptr noundef %hw, i32 noundef %28, i32 noundef 1048576, i32 noundef 1) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748) #5
  %rfintfo.i = getelementptr [4 x %struct.bb_reg_def], ptr %phy.i, i32 0, i32 %indvars.iv.i, i32 2
  %38 = ptrtoint ptr %rfintfo.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rfintfo.i, align 4
  %40 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %priv, align 8
  %cfg.i62.i = getelementptr inbounds %struct.rtl_priv, ptr %41, i32 0, i32 32
  %42 = ptrtoint ptr %cfg.i62.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cfg.i62.i, align 8
  %ops.i63.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %ops.i63.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops.i63.i, align 4
  %set_bbreg.i64.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %45, i32 0, i32 46
  %46 = ptrtoint ptr %set_bbreg.i64.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %set_bbreg.i64.i, align 4
  tail call void %47(ptr noundef %hw, i32 noundef %39, i32 noundef 16, i32 noundef 1) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748) #5
  %rfhssi_para2.i = getelementptr [4 x %struct.bb_reg_def], ptr %phy.i, i32 0, i32 %indvars.iv.i, i32 8
  %49 = ptrtoint ptr %rfhssi_para2.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rfhssi_para2.i, align 4
  %51 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %priv, align 8
  %cfg.i66.i = getelementptr inbounds %struct.rtl_priv, ptr %52, i32 0, i32 32
  %53 = ptrtoint ptr %cfg.i66.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cfg.i66.i, align 8
  %ops.i67.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %ops.i67.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ops.i67.i, align 4
  %set_bbreg.i68.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %56, i32 0, i32 46
  %57 = ptrtoint ptr %set_bbreg.i68.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %set_bbreg.i68.i, align 4
  tail call void %58(ptr noundef %hw, i32 noundef %50, i32 noundef 1024, i32 noundef 0) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 214748) #5
  %60 = ptrtoint ptr %rfhssi_para2.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rfhssi_para2.i, align 4
  %62 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %priv, align 8
  %cfg.i70.i = getelementptr inbounds %struct.rtl_priv, ptr %63, i32 0, i32 32
  %64 = ptrtoint ptr %cfg.i70.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cfg.i70.i, align 8
  %ops.i71.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %65, i32 0, i32 4
  %66 = ptrtoint ptr %ops.i71.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ops.i71.i, align 4
  %set_bbreg.i72.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %67, i32 0, i32 46
  %68 = ptrtoint ptr %set_bbreg.i72.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %set_bbreg.i72.i, align 4
  tail call void %69(ptr noundef %hw, i32 noundef %61, i32 noundef 2048, i32 noundef 0) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 214748) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %indvars.iv.i)
  %switch.i = icmp ult i32 %indvars.iv.i, 2
  br i1 %switch.i, label %sw.bb9.i, label %sw.epilog.i.sw.epilog12.i_crit_edge

sw.epilog.i.sw.epilog12.i_crit_edge:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog12.i

sw.bb9.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  %call11.i = tail call zeroext i1 @rtl92cu_phy_config_rf_with_headerfile(ptr noundef %hw, i32 noundef %indvars.iv.i) #5
  br label %sw.epilog12.i

sw.epilog12.i:                                    ; preds = %sw.bb9.i, %sw.epilog.i.sw.epilog12.i_crit_edge
  %rtstatus.1.off0.i = phi i1 [ true, %sw.epilog.i.sw.epilog12.i_crit_edge ], [ %call11.i, %sw.bb9.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %13)
  %71 = icmp ult i8 %13, 4
  br i1 %71, label %switch.lookup15, label %sw.epilog12.i.sw.epilog18.i_crit_edge

sw.epilog12.i.sw.epilog18.i_crit_edge:            ; preds = %sw.epilog12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog18.i

switch.lookup15:                                  ; preds = %sw.epilog12.i
  call void @__sanitizer_cov_trace_pc() #7
  %sext = shl i32 %indvars.iv.i, 24
  %72 = ashr exact i32 %sext, 24
  %switch.gep16 = getelementptr inbounds [4 x i32], ptr @switch.table.rtl92cu_phy_rf6052_config.20, i32 0, i32 %72
  %73 = ptrtoint ptr %switch.gep16 to i32
  call void @__asan_load4_noabort(i32 %73)
  %switch.load17 = load i32, ptr %switch.gep16, align 4
  %74 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx.i, align 4
  %76 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %priv, align 8
  %cfg.i78.i = getelementptr inbounds %struct.rtl_priv, ptr %77, i32 0, i32 32
  %78 = ptrtoint ptr %cfg.i78.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cfg.i78.i, align 8
  %ops.i79.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %79, i32 0, i32 4
  %80 = ptrtoint ptr %ops.i79.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ops.i79.i, align 4
  %set_bbreg.i80.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %81, i32 0, i32 46
  %82 = ptrtoint ptr %set_bbreg.i80.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %set_bbreg.i80.i, align 4
  tail call void %83(ptr noundef %hw, i32 noundef %75, i32 noundef %switch.load17, i32 noundef %u4_regvalue.1.i) #5
  br label %sw.epilog18.i

sw.epilog18.i:                                    ; preds = %switch.lookup15, %sw.epilog12.i.sw.epilog18.i_crit_edge
  br i1 %rtstatus.1.off0.i, label %for.cond.i, label %if.then.i

if.then.i:                                        ; preds = %sw.epilog18.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.18, i32 noundef %indvars.iv.i) #5
  br label %_rtl92c_phy_rf6052_config_parafile.exit

for.end.i:                                        ; preds = %for.cond.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.19) #5
  br label %_rtl92c_phy_rf6052_config_parafile.exit

_rtl92c_phy_rf6052_config_parafile.exit:          ; preds = %for.end.i, %if.then.i
  %cmp82.i = phi i1 [ true, %for.end.i ], [ false, %if.then.i ]
  ret i1 %cmp82.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92cu_phy_config_rf_with_headerfile(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/rf.c", i32 32, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @rtl92cu_phy_rf6052_set_bandwidth._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @rtl92cu_phy_rf6052_set_bandwidth._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/rf.c", i32 96, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/rf.c", i32 104, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/rf.c", i32 109, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/rf.c", i32 114, i32 2}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/rf.c", i32 137, i32 3}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/rf.c", i32 150, i32 3}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/rf.c", i32 175, i32 4}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/rf.c", i32 199, i32 4}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/rf.c", i32 206, i32 4}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/rf.c", i32 214, i32 5}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/rf.c", i32 220, i32 5}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/rf.c", i32 250, i32 4}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/rf.c", i32 255, i32 4}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/rf.c", i32 264, i32 4}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/rf.c", i32 315, i32 3}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/rf.c", i32 434, i32 4}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/rf.c", i32 439, i32 2}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{i8 0, i8 2}
!50 = !{!"auto-init"}
