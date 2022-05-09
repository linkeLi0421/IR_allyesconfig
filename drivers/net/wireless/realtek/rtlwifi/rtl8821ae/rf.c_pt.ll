; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/rf.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/rf.c"
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

@rtl8821ae_phy_rf6052_set_bandwidth._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 29, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013rtl8821ae: unknown bandwidth: %#X\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"rtl8821ae_phy_rf6052_set_bandwidth\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/wireless/realtek/rtlwifi/rtl8821ae/rf.c\00", [44 x i8] zeroinitializer }, align 32
@rtl8821ae_phy_rf6052_set_bandwidth._entry_ptr = internal global ptr @rtl8821ae_phy_rf6052_set_bandwidth._entry, section ".printk_index", align 4
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"CCK PWR 1~11M (rf-A) = 0x%x (reg 0x%x)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"CCK PWR 11M (rf-B) = 0x%x (reg 0x%x)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c" [OFDM power base index rf(%c) = 0x%x]\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c" [MCS power base index rf(%c) = 0x%x]\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"RTK better performance, writeval(%c) = 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Realtek regulatory, 20MHz, writeval(%c) = 0x%x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Better regulatory, writeval(%c) = 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"customer's limit, 40MHz rf(%c) = 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"customer's limit, 20MHz rf(%c) = 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Customer's limit rf(%c) = 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Customer, writeval rf(%c)= 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"RTK better performance, writeval rf(%c) = 0x%x\0A\00", [48 x i8] zeroinitializer }, align 32
@__const._rtl8821ae_write_ofdm_power_reg.regoffset_a = private unnamed_addr constant [6 x i16] [i16 3108, i16 3112, i16 3116, i16 3120, i16 3124, i16 3128], align 2
@__const._rtl8821ae_write_ofdm_power_reg.regoffset_b = private unnamed_addr constant [6 x i16] [i16 3620, i16 3624, i16 3628, i16 3632, i16 3636, i16 3640], align 2
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Set 0x%x = %08x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Radio[%d] Fail!!\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.19 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 4]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.23 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 29, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 106, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 113, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 135, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 152, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 180, i32 4 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 208, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 217, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 225, i32 5 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 231, i32 5 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 270, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 277, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 288, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 339, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 431, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.78 = private constant [55 x i8] c"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/rf.c\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 438, i32 2 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @rtl8821ae_phy_rf6052_set_bandwidth._entry, ptr @rtl8821ae_phy_rf6052_set_bandwidth._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8821ae_phy_rf6052_set_bandwidth._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8821ae_phy_rf6052_set_bandwidth(ptr noundef %hw, i8 noundef zeroext %bandwidth) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %bandwidth to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %bandwidth, label %do.end [
    i8 0, label %sw.bb
    i8 1, label %sw.bb1
    i8 2, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %2, i32 0, i32 32
  %3 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %set_rfreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %6, i32 0, i32 48
  %7 = ptrtoint ptr %set_rfreg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %set_rfreg.i, align 4
  tail call void %8(ptr noundef %hw, i32 noundef 0, i32 noundef 24, i32 noundef 3072, i32 noundef 3) #5
  %9 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv.i, align 8
  %cfg.i11 = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 32
  %11 = ptrtoint ptr %cfg.i11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cfg.i11, align 8
  %ops.i12 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %ops.i12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i12, align 4
  %set_rfreg.i13 = getelementptr inbounds %struct.rtl_hal_ops, ptr %14, i32 0, i32 48
  %15 = ptrtoint ptr %set_rfreg.i13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %set_rfreg.i13, align 4
  tail call void %16(ptr noundef %hw, i32 noundef 1, i32 noundef 24, i32 noundef 3072, i32 noundef 3) #5
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %priv.i14 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %17 = ptrtoint ptr %priv.i14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv.i14, align 8
  %cfg.i15 = getelementptr inbounds %struct.rtl_priv, ptr %18, i32 0, i32 32
  %19 = ptrtoint ptr %cfg.i15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cfg.i15, align 8
  %ops.i16 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %ops.i16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i16, align 4
  %set_rfreg.i17 = getelementptr inbounds %struct.rtl_hal_ops, ptr %22, i32 0, i32 48
  %23 = ptrtoint ptr %set_rfreg.i17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %set_rfreg.i17, align 4
  tail call void %24(ptr noundef %hw, i32 noundef 0, i32 noundef 24, i32 noundef 3072, i32 noundef 1) #5
  %25 = ptrtoint ptr %priv.i14 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv.i14, align 8
  %cfg.i19 = getelementptr inbounds %struct.rtl_priv, ptr %26, i32 0, i32 32
  %27 = ptrtoint ptr %cfg.i19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cfg.i19, align 8
  %ops.i20 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %ops.i20 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops.i20, align 4
  %set_rfreg.i21 = getelementptr inbounds %struct.rtl_hal_ops, ptr %30, i32 0, i32 48
  %31 = ptrtoint ptr %set_rfreg.i21 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %set_rfreg.i21, align 4
  tail call void %32(ptr noundef %hw, i32 noundef 1, i32 noundef 24, i32 noundef 3072, i32 noundef 1) #5
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %priv.i22 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %33 = ptrtoint ptr %priv.i22 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %priv.i22, align 8
  %cfg.i23 = getelementptr inbounds %struct.rtl_priv, ptr %34, i32 0, i32 32
  %35 = ptrtoint ptr %cfg.i23 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cfg.i23, align 8
  %ops.i24 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %ops.i24 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops.i24, align 4
  %set_rfreg.i25 = getelementptr inbounds %struct.rtl_hal_ops, ptr %38, i32 0, i32 48
  %39 = ptrtoint ptr %set_rfreg.i25 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %set_rfreg.i25, align 4
  tail call void %40(ptr noundef %hw, i32 noundef 0, i32 noundef 24, i32 noundef 3072, i32 noundef 0) #5
  %41 = ptrtoint ptr %priv.i22 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %priv.i22, align 8
  %cfg.i27 = getelementptr inbounds %struct.rtl_priv, ptr %42, i32 0, i32 32
  %43 = ptrtoint ptr %cfg.i27 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cfg.i27, align 8
  %ops.i28 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %ops.i28 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops.i28, align 4
  %set_rfreg.i29 = getelementptr inbounds %struct.rtl_hal_ops, ptr %46, i32 0, i32 48
  %47 = ptrtoint ptr %set_rfreg.i29 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %set_rfreg.i29, align 4
  tail call void %48(ptr noundef %hw, i32 noundef 1, i32 noundef 24, i32 noundef 3072, i32 noundef 0) #5
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i8 %bandwidth to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb2, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8821ae_phy_rf6052_set_cck_txpower(ptr noundef %hw, ptr nocapture noundef readonly %ppowerlevel) local_unnamed_addr #0 align 64 {
entry:
  %direction = alloca i8, align 1
  %pwrtrac_value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %direction) #5
  %2 = ptrtoint ptr %direction to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %direction, align 1, !annotation !45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pwrtrac_value) #5
  %3 = ptrtoint ptr %pwrtrac_value to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %pwrtrac_value, align 4, !annotation !45
  %eeprom_regulatory = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 54
  %4 = ptrtoint ptr %eeprom_regulatory to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %eeprom_regulatory, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not = icmp eq i8 %5, 0
  %act_scanning = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 20
  %6 = ptrtoint ptr %act_scanning to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %act_scanning, align 2, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %for.body33.preheader, label %if.then4

for.body33.preheader:                             ; preds = %entry
  %8 = ptrtoint ptr %ppowerlevel to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ppowerlevel, align 1
  %arrayidx35.1 = getelementptr i8, ptr %ppowerlevel, i32 1
  %10 = ptrtoint ptr %arrayidx35.1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx35.1, align 1
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
  %12 = ptrtoint ptr %ppowerlevel to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ppowerlevel, align 1
  %arrayidx11.1 = getelementptr i8, ptr %ppowerlevel, i32 1
  %14 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx11.1, align 1
  br label %if.end81

if.then61:                                        ; preds = %for.body33.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %conv36.1 = zext i8 %11 to i32
  %shl50.1 = shl nuw i32 %conv36.1, 24
  %conv36 = zext i8 %9 to i32
  %shl50 = shl nuw i32 %conv36, 24
  %arrayidx63 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 40, i32 0, i32 6
  %16 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx63, align 4
  %arrayidx66 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 40, i32 0, i32 7
  %18 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx66, align 4
  %shl67 = shl i32 %19, 8
  %add = add i32 %shl67, %17
  %tx_agc.sroa.0.sroa.19.0.insert.ext337 = zext i8 %9 to i32
  %tx_agc.sroa.0.sroa.17.0.insert.ext321 = zext i8 %9 to i32
  %tx_agc.sroa.0.sroa.17.0.insert.shift322 = shl nuw nsw i32 %tx_agc.sroa.0.sroa.17.0.insert.ext321, 8
  %tx_agc.sroa.0.sroa.17.0.insert.insert324 = or i32 %tx_agc.sroa.0.sroa.17.0.insert.shift322, %tx_agc.sroa.0.sroa.19.0.insert.ext337
  %tx_agc.sroa.0.sroa.15.0.insert.ext301 = zext i8 %9 to i32
  %tx_agc.sroa.0.sroa.15.0.insert.shift302 = shl nuw nsw i32 %tx_agc.sroa.0.sroa.15.0.insert.ext301, 16
  %tx_agc.sroa.0.sroa.15.0.insert.insert304 = or i32 %tx_agc.sroa.0.sroa.17.0.insert.insert324, %tx_agc.sroa.0.sroa.15.0.insert.shift302
  %tx_agc.sroa.0.sroa.0.0.insert.insert284 = or i32 %tx_agc.sroa.0.sroa.15.0.insert.insert304, %shl50
  %add69 = add i32 %add, %tx_agc.sroa.0.sroa.0.0.insert.insert284
  %tx_agc.sroa.0.sroa.0.0.extract.shift279 = lshr i32 %add69, 24
  %tx_agc.sroa.0.sroa.0.0.extract.trunc280 = trunc i32 %tx_agc.sroa.0.sroa.0.0.extract.shift279 to i8
  %tx_agc.sroa.0.sroa.15.0.extract.shift299 = lshr i32 %add69, 16
  %tx_agc.sroa.0.sroa.15.0.extract.trunc300 = trunc i32 %tx_agc.sroa.0.sroa.15.0.extract.shift299 to i8
  %tx_agc.sroa.0.sroa.17.0.extract.shift319 = lshr i32 %add69, 8
  %tx_agc.sroa.0.sroa.17.0.extract.trunc320 = trunc i32 %tx_agc.sroa.0.sroa.17.0.extract.shift319 to i8
  %tx_agc.sroa.0.sroa.19.0.extract.trunc336 = trunc i32 %add69 to i8
  %arrayidx72 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 40, i32 0, i32 14
  %20 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx72, align 4
  %arrayidx75 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 40, i32 0, i32 15
  %22 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx75, align 4
  %shl76 = shl i32 %23, 24
  %add77 = add i32 %shl76, %21
  %tx_agc.sroa.21.sroa.19.0.insert.ext264 = zext i8 %11 to i32
  %tx_agc.sroa.21.sroa.17.0.insert.ext248 = zext i8 %11 to i32
  %tx_agc.sroa.21.sroa.17.0.insert.shift249 = shl nuw nsw i32 %tx_agc.sroa.21.sroa.17.0.insert.ext248, 8
  %tx_agc.sroa.21.sroa.17.0.insert.insert251 = or i32 %tx_agc.sroa.21.sroa.17.0.insert.shift249, %tx_agc.sroa.21.sroa.19.0.insert.ext264
  %tx_agc.sroa.21.sroa.15.0.insert.ext228 = zext i8 %11 to i32
  %tx_agc.sroa.21.sroa.15.0.insert.shift229 = shl nuw nsw i32 %tx_agc.sroa.21.sroa.15.0.insert.ext228, 16
  %tx_agc.sroa.21.sroa.15.0.insert.insert231 = or i32 %tx_agc.sroa.21.sroa.17.0.insert.insert251, %tx_agc.sroa.21.sroa.15.0.insert.shift229
  %tx_agc.sroa.21.sroa.0.0.insert.insert211 = or i32 %tx_agc.sroa.21.sroa.15.0.insert.insert231, %shl50.1
  %add79 = add i32 %add77, %tx_agc.sroa.21.sroa.0.0.insert.insert211
  %tx_agc.sroa.21.sroa.0.0.extract.shift206 = lshr i32 %add79, 24
  %tx_agc.sroa.21.sroa.0.0.extract.trunc207 = trunc i32 %tx_agc.sroa.21.sroa.0.0.extract.shift206 to i8
  %tx_agc.sroa.21.sroa.15.0.extract.shift226 = lshr i32 %add79, 16
  %tx_agc.sroa.21.sroa.15.0.extract.trunc227 = trunc i32 %tx_agc.sroa.21.sroa.15.0.extract.shift226 to i8
  %tx_agc.sroa.21.sroa.17.0.extract.shift246 = lshr i32 %add79, 8
  %tx_agc.sroa.21.sroa.17.0.extract.trunc247 = trunc i32 %tx_agc.sroa.21.sroa.17.0.extract.shift246 to i8
  %tx_agc.sroa.21.sroa.19.0.extract.trunc263 = trunc i32 %add79 to i8
  br label %if.end81

if.end81:                                         ; preds = %if.then61, %for.body.preheader, %for.body33.preheader.if.end81_crit_edge
  %tx_agc.sroa.0.sroa.19.0 = phi i8 [ %tx_agc.sroa.0.sroa.19.0.extract.trunc336, %if.then61 ], [ %9, %for.body33.preheader.if.end81_crit_edge ], [ %13, %for.body.preheader ]
  %tx_agc.sroa.0.sroa.17.0 = phi i8 [ %tx_agc.sroa.0.sroa.17.0.extract.trunc320, %if.then61 ], [ %9, %for.body33.preheader.if.end81_crit_edge ], [ %13, %for.body.preheader ]
  %tx_agc.sroa.0.sroa.15.0 = phi i8 [ %tx_agc.sroa.0.sroa.15.0.extract.trunc300, %if.then61 ], [ %9, %for.body33.preheader.if.end81_crit_edge ], [ %13, %for.body.preheader ]
  %tx_agc.sroa.0.sroa.0.0 = phi i8 [ %tx_agc.sroa.0.sroa.0.0.extract.trunc280, %if.then61 ], [ %9, %for.body33.preheader.if.end81_crit_edge ], [ %13, %for.body.preheader ]
  %tx_agc.sroa.21.sroa.19.0 = phi i8 [ %tx_agc.sroa.21.sroa.19.0.extract.trunc263, %if.then61 ], [ %11, %for.body33.preheader.if.end81_crit_edge ], [ %15, %for.body.preheader ]
  %tx_agc.sroa.21.sroa.17.0 = phi i8 [ %tx_agc.sroa.21.sroa.17.0.extract.trunc247, %if.then61 ], [ %11, %for.body33.preheader.if.end81_crit_edge ], [ %15, %for.body.preheader ]
  %tx_agc.sroa.21.sroa.15.0 = phi i8 [ %tx_agc.sroa.21.sroa.15.0.extract.trunc227, %if.then61 ], [ %11, %for.body33.preheader.if.end81_crit_edge ], [ %15, %for.body.preheader ]
  %tx_agc.sroa.21.sroa.0.0 = phi i8 [ %tx_agc.sroa.21.sroa.0.0.extract.trunc207, %if.then61 ], [ %11, %for.body33.preheader.if.end81_crit_edge ], [ %15, %for.body.preheader ]
  %24 = call i8 @llvm.umin.i8(i8 %tx_agc.sroa.0.sroa.0.0, i8 63)
  %25 = call i8 @llvm.umin.i8(i8 %tx_agc.sroa.0.sroa.15.0, i8 63)
  %26 = call i8 @llvm.umin.i8(i8 %tx_agc.sroa.0.sroa.17.0, i8 63)
  %27 = call i8 @llvm.umin.i8(i8 %tx_agc.sroa.0.sroa.19.0, i8 63)
  %28 = call i8 @llvm.umin.i8(i8 %tx_agc.sroa.21.sroa.0.0, i8 63)
  %29 = call i8 @llvm.umin.i8(i8 %tx_agc.sroa.21.sroa.15.0, i8 63)
  %30 = call i8 @llvm.umin.i8(i8 %tx_agc.sroa.21.sroa.17.0, i8 63)
  %31 = call i8 @llvm.umin.i8(i8 %tx_agc.sroa.21.sroa.19.0, i8 63)
  br label %if.end98.3.1

if.end98.3.1:                                     ; preds = %if.end81, %if.then4.if.end98.3.1_crit_edge
  %tx_agc.sroa.21.sroa.17.1469 = phi i8 [ 63, %if.then4.if.end98.3.1_crit_edge ], [ %30, %if.end81 ]
  %tx_agc.sroa.21.sroa.0.1437447468 = phi i8 [ 63, %if.then4.if.end98.3.1_crit_edge ], [ %28, %if.end81 ]
  %tx_agc.sroa.0.sroa.17.1405415436448467 = phi i8 [ 63, %if.then4.if.end98.3.1_crit_edge ], [ %26, %if.end81 ]
  %tx_agc.sroa.0.sroa.0.1373383404416435449466 = phi i8 [ 63, %if.then4.if.end98.3.1_crit_edge ], [ %24, %if.end81 ]
  %tx_agc.sroa.0.sroa.15.1389399420432451465 = phi i8 [ 63, %if.then4.if.end98.3.1_crit_edge ], [ %25, %if.end81 ]
  %tx_agc.sroa.0.sroa.19.1421431452464 = phi i8 [ 63, %if.then4.if.end98.3.1_crit_edge ], [ %27, %if.end81 ]
  %tx_agc.sroa.21.sroa.15.1453463 = phi i8 [ 63, %if.then4.if.end98.3.1_crit_edge ], [ %29, %if.end81 ]
  %tx_agc.sroa.21.sroa.19.1 = phi i8 [ 63, %if.then4.if.end98.3.1_crit_edge ], [ %31, %if.end81 ]
  call void @rtl8821ae_dm_txpower_track_adjust(ptr noundef %hw, i8 noundef zeroext 1, ptr noundef nonnull %direction, ptr noundef nonnull %pwrtrac_value) #5
  %32 = ptrtoint ptr %direction to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %direction, align 1
  %34 = zext i8 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %33, label %if.end98.3.1.if.end122_crit_edge [
    i8 1, label %if.then108
    i8 2, label %if.then117
  ]

if.end98.3.1.if.end122_crit_edge:                 ; preds = %if.end98.3.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end122

if.then108:                                       ; preds = %if.end98.3.1
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %pwrtrac_value to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pwrtrac_value, align 4
  %tx_agc.sroa.0.sroa.19.0.insert.ext = zext i8 %tx_agc.sroa.0.sroa.19.1421431452464 to i32
  %tx_agc.sroa.0.sroa.17.0.insert.ext = zext i8 %tx_agc.sroa.0.sroa.17.1405415436448467 to i32
  %tx_agc.sroa.0.sroa.17.0.insert.shift = shl nuw nsw i32 %tx_agc.sroa.0.sroa.17.0.insert.ext, 8
  %tx_agc.sroa.0.sroa.17.0.insert.insert = or i32 %tx_agc.sroa.0.sroa.17.0.insert.shift, %tx_agc.sroa.0.sroa.19.0.insert.ext
  %tx_agc.sroa.0.sroa.15.0.insert.ext = zext i8 %tx_agc.sroa.0.sroa.15.1389399420432451465 to i32
  %tx_agc.sroa.0.sroa.15.0.insert.shift = shl nuw nsw i32 %tx_agc.sroa.0.sroa.15.0.insert.ext, 16
  %tx_agc.sroa.0.sroa.15.0.insert.insert = or i32 %tx_agc.sroa.0.sroa.17.0.insert.insert, %tx_agc.sroa.0.sroa.15.0.insert.shift
  %tx_agc.sroa.0.sroa.0.0.insert.ext = zext i8 %tx_agc.sroa.0.sroa.0.1373383404416435449466 to i32
  %tx_agc.sroa.0.sroa.0.0.insert.shift = shl nuw nsw i32 %tx_agc.sroa.0.sroa.0.0.insert.ext, 24
  %tx_agc.sroa.0.sroa.0.0.insert.insert = or i32 %tx_agc.sroa.0.sroa.15.0.insert.insert, %tx_agc.sroa.0.sroa.0.0.insert.shift
  %add110 = add i32 %tx_agc.sroa.0.sroa.0.0.insert.insert, %36
  %tx_agc.sroa.0.sroa.0.0.extract.shift = lshr i32 %add110, 24
  %tx_agc.sroa.0.sroa.0.0.extract.trunc = trunc i32 %tx_agc.sroa.0.sroa.0.0.extract.shift to i8
  %tx_agc.sroa.0.sroa.15.0.extract.shift = lshr i32 %add110, 16
  %tx_agc.sroa.0.sroa.15.0.extract.trunc = trunc i32 %tx_agc.sroa.0.sroa.15.0.extract.shift to i8
  %tx_agc.sroa.0.sroa.17.0.extract.shift = lshr i32 %add110, 8
  %tx_agc.sroa.0.sroa.17.0.extract.trunc = trunc i32 %tx_agc.sroa.0.sroa.17.0.extract.shift to i8
  %tx_agc.sroa.0.sroa.19.0.extract.trunc = trunc i32 %add110 to i8
  %tx_agc.sroa.21.sroa.19.0.insert.ext260 = zext i8 %tx_agc.sroa.21.sroa.19.1 to i32
  %tx_agc.sroa.21.sroa.17.0.insert.ext242 = zext i8 %tx_agc.sroa.21.sroa.17.1469 to i32
  %tx_agc.sroa.21.sroa.17.0.insert.shift243 = shl nuw nsw i32 %tx_agc.sroa.21.sroa.17.0.insert.ext242, 8
  %tx_agc.sroa.21.sroa.17.0.insert.insert245 = or i32 %tx_agc.sroa.21.sroa.17.0.insert.shift243, %tx_agc.sroa.21.sroa.19.0.insert.ext260
  %tx_agc.sroa.21.sroa.15.0.insert.ext222 = zext i8 %tx_agc.sroa.21.sroa.15.1453463 to i32
  %tx_agc.sroa.21.sroa.15.0.insert.shift223 = shl nuw nsw i32 %tx_agc.sroa.21.sroa.15.0.insert.ext222, 16
  %tx_agc.sroa.21.sroa.15.0.insert.insert225 = or i32 %tx_agc.sroa.21.sroa.17.0.insert.insert245, %tx_agc.sroa.21.sroa.15.0.insert.shift223
  %tx_agc.sroa.21.sroa.0.0.insert.ext202 = zext i8 %tx_agc.sroa.21.sroa.0.1437447468 to i32
  %tx_agc.sroa.21.sroa.0.0.insert.shift203 = shl nuw nsw i32 %tx_agc.sroa.21.sroa.0.0.insert.ext202, 24
  %tx_agc.sroa.21.sroa.0.0.insert.insert205 = or i32 %tx_agc.sroa.21.sroa.15.0.insert.insert225, %tx_agc.sroa.21.sroa.0.0.insert.shift203
  %add112 = add i32 %tx_agc.sroa.21.sroa.0.0.insert.insert205, %36
  %tx_agc.sroa.21.sroa.0.0.extract.shift200 = lshr i32 %add112, 24
  %tx_agc.sroa.21.sroa.0.0.extract.trunc201 = trunc i32 %tx_agc.sroa.21.sroa.0.0.extract.shift200 to i8
  %tx_agc.sroa.21.sroa.15.0.extract.shift220 = lshr i32 %add112, 16
  %tx_agc.sroa.21.sroa.15.0.extract.trunc221 = trunc i32 %tx_agc.sroa.21.sroa.15.0.extract.shift220 to i8
  %tx_agc.sroa.21.sroa.17.0.extract.shift240 = lshr i32 %add112, 8
  %tx_agc.sroa.21.sroa.17.0.extract.trunc241 = trunc i32 %tx_agc.sroa.21.sroa.17.0.extract.shift240 to i8
  %tx_agc.sroa.21.sroa.19.0.extract.trunc259 = trunc i32 %add112 to i8
  br label %if.end122

if.then117:                                       ; preds = %if.end98.3.1
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %pwrtrac_value to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pwrtrac_value, align 4
  %tx_agc.sroa.0.sroa.19.0.insert.ext333 = zext i8 %tx_agc.sroa.0.sroa.19.1421431452464 to i32
  %tx_agc.sroa.0.sroa.17.0.insert.ext315 = zext i8 %tx_agc.sroa.0.sroa.17.1405415436448467 to i32
  %tx_agc.sroa.0.sroa.17.0.insert.shift316 = shl nuw nsw i32 %tx_agc.sroa.0.sroa.17.0.insert.ext315, 8
  %tx_agc.sroa.0.sroa.17.0.insert.insert318 = or i32 %tx_agc.sroa.0.sroa.17.0.insert.shift316, %tx_agc.sroa.0.sroa.19.0.insert.ext333
  %tx_agc.sroa.0.sroa.15.0.insert.ext295 = zext i8 %tx_agc.sroa.0.sroa.15.1389399420432451465 to i32
  %tx_agc.sroa.0.sroa.15.0.insert.shift296 = shl nuw nsw i32 %tx_agc.sroa.0.sroa.15.0.insert.ext295, 16
  %tx_agc.sroa.0.sroa.15.0.insert.insert298 = or i32 %tx_agc.sroa.0.sroa.17.0.insert.insert318, %tx_agc.sroa.0.sroa.15.0.insert.shift296
  %tx_agc.sroa.0.sroa.0.0.insert.ext275 = zext i8 %tx_agc.sroa.0.sroa.0.1373383404416435449466 to i32
  %tx_agc.sroa.0.sroa.0.0.insert.shift276 = shl nuw nsw i32 %tx_agc.sroa.0.sroa.0.0.insert.ext275, 24
  %tx_agc.sroa.0.sroa.0.0.insert.insert278 = or i32 %tx_agc.sroa.0.sroa.15.0.insert.insert298, %tx_agc.sroa.0.sroa.0.0.insert.shift276
  %sub = sub i32 %tx_agc.sroa.0.sroa.0.0.insert.insert278, %38
  %tx_agc.sroa.0.sroa.0.0.extract.shift273 = lshr i32 %sub, 24
  %tx_agc.sroa.0.sroa.0.0.extract.trunc274 = trunc i32 %tx_agc.sroa.0.sroa.0.0.extract.shift273 to i8
  %tx_agc.sroa.0.sroa.15.0.extract.shift293 = lshr i32 %sub, 16
  %tx_agc.sroa.0.sroa.15.0.extract.trunc294 = trunc i32 %tx_agc.sroa.0.sroa.15.0.extract.shift293 to i8
  %tx_agc.sroa.0.sroa.17.0.extract.shift313 = lshr i32 %sub, 8
  %tx_agc.sroa.0.sroa.17.0.extract.trunc314 = trunc i32 %tx_agc.sroa.0.sroa.17.0.extract.shift313 to i8
  %tx_agc.sroa.0.sroa.19.0.extract.trunc332 = trunc i32 %sub to i8
  %tx_agc.sroa.21.sroa.19.0.insert.ext256 = zext i8 %tx_agc.sroa.21.sroa.19.1 to i32
  %tx_agc.sroa.21.sroa.17.0.insert.ext236 = zext i8 %tx_agc.sroa.21.sroa.17.1469 to i32
  %tx_agc.sroa.21.sroa.17.0.insert.shift237 = shl nuw nsw i32 %tx_agc.sroa.21.sroa.17.0.insert.ext236, 8
  %tx_agc.sroa.21.sroa.17.0.insert.insert239 = or i32 %tx_agc.sroa.21.sroa.17.0.insert.shift237, %tx_agc.sroa.21.sroa.19.0.insert.ext256
  %tx_agc.sroa.21.sroa.15.0.insert.ext216 = zext i8 %tx_agc.sroa.21.sroa.15.1453463 to i32
  %tx_agc.sroa.21.sroa.15.0.insert.shift217 = shl nuw nsw i32 %tx_agc.sroa.21.sroa.15.0.insert.ext216, 16
  %tx_agc.sroa.21.sroa.15.0.insert.insert219 = or i32 %tx_agc.sroa.21.sroa.17.0.insert.insert239, %tx_agc.sroa.21.sroa.15.0.insert.shift217
  %tx_agc.sroa.21.sroa.0.0.insert.ext196 = zext i8 %tx_agc.sroa.21.sroa.0.1437447468 to i32
  %tx_agc.sroa.21.sroa.0.0.insert.shift197 = shl nuw nsw i32 %tx_agc.sroa.21.sroa.0.0.insert.ext196, 24
  %tx_agc.sroa.21.sroa.0.0.insert.insert199 = or i32 %tx_agc.sroa.21.sroa.15.0.insert.insert219, %tx_agc.sroa.21.sroa.0.0.insert.shift197
  %sub120 = sub i32 %tx_agc.sroa.21.sroa.0.0.insert.insert199, %38
  %tx_agc.sroa.21.sroa.0.0.extract.shift = lshr i32 %sub120, 24
  %tx_agc.sroa.21.sroa.0.0.extract.trunc = trunc i32 %tx_agc.sroa.21.sroa.0.0.extract.shift to i8
  %tx_agc.sroa.21.sroa.15.0.extract.shift = lshr i32 %sub120, 16
  %tx_agc.sroa.21.sroa.15.0.extract.trunc = trunc i32 %tx_agc.sroa.21.sroa.15.0.extract.shift to i8
  %tx_agc.sroa.21.sroa.17.0.extract.shift = lshr i32 %sub120, 8
  %tx_agc.sroa.21.sroa.17.0.extract.trunc = trunc i32 %tx_agc.sroa.21.sroa.17.0.extract.shift to i8
  %tx_agc.sroa.21.sroa.19.0.extract.trunc = trunc i32 %sub120 to i8
  br label %if.end122

if.end122:                                        ; preds = %if.then117, %if.then108, %if.end98.3.1.if.end122_crit_edge
  %tx_agc.sroa.0.sroa.19.2 = phi i8 [ %tx_agc.sroa.0.sroa.19.1421431452464, %if.end98.3.1.if.end122_crit_edge ], [ %tx_agc.sroa.0.sroa.19.0.extract.trunc332, %if.then117 ], [ %tx_agc.sroa.0.sroa.19.0.extract.trunc, %if.then108 ]
  %tx_agc.sroa.0.sroa.17.2 = phi i8 [ %tx_agc.sroa.0.sroa.17.1405415436448467, %if.end98.3.1.if.end122_crit_edge ], [ %tx_agc.sroa.0.sroa.17.0.extract.trunc314, %if.then117 ], [ %tx_agc.sroa.0.sroa.17.0.extract.trunc, %if.then108 ]
  %tx_agc.sroa.0.sroa.15.2 = phi i8 [ %tx_agc.sroa.0.sroa.15.1389399420432451465, %if.end98.3.1.if.end122_crit_edge ], [ %tx_agc.sroa.0.sroa.15.0.extract.trunc294, %if.then117 ], [ %tx_agc.sroa.0.sroa.15.0.extract.trunc, %if.then108 ]
  %tx_agc.sroa.0.sroa.0.2 = phi i8 [ %tx_agc.sroa.0.sroa.0.1373383404416435449466, %if.end98.3.1.if.end122_crit_edge ], [ %tx_agc.sroa.0.sroa.0.0.extract.trunc274, %if.then117 ], [ %tx_agc.sroa.0.sroa.0.0.extract.trunc, %if.then108 ]
  %tx_agc.sroa.21.sroa.19.2 = phi i8 [ %tx_agc.sroa.21.sroa.19.1, %if.end98.3.1.if.end122_crit_edge ], [ %tx_agc.sroa.21.sroa.19.0.extract.trunc, %if.then117 ], [ %tx_agc.sroa.21.sroa.19.0.extract.trunc259, %if.then108 ]
  %tx_agc.sroa.21.sroa.17.2 = phi i8 [ %tx_agc.sroa.21.sroa.17.1469, %if.end98.3.1.if.end122_crit_edge ], [ %tx_agc.sroa.21.sroa.17.0.extract.trunc, %if.then117 ], [ %tx_agc.sroa.21.sroa.17.0.extract.trunc241, %if.then108 ]
  %tx_agc.sroa.21.sroa.15.2 = phi i8 [ %tx_agc.sroa.21.sroa.15.1453463, %if.end98.3.1.if.end122_crit_edge ], [ %tx_agc.sroa.21.sroa.15.0.extract.trunc, %if.then117 ], [ %tx_agc.sroa.21.sroa.15.0.extract.trunc221, %if.then108 ]
  %tx_agc.sroa.21.sroa.0.2 = phi i8 [ %tx_agc.sroa.21.sroa.0.1437447468, %if.end98.3.1.if.end122_crit_edge ], [ %tx_agc.sroa.21.sroa.0.0.extract.trunc, %if.then117 ], [ %tx_agc.sroa.21.sroa.0.0.extract.trunc201, %if.then108 ]
  %tx_agc.sroa.0.sroa.19.0.insert.ext329 = zext i8 %tx_agc.sroa.0.sroa.19.2 to i32
  %tx_agc.sroa.0.sroa.17.0.insert.ext309 = zext i8 %tx_agc.sroa.0.sroa.17.2 to i32
  %tx_agc.sroa.0.sroa.17.0.insert.shift310 = shl nuw nsw i32 %tx_agc.sroa.0.sroa.17.0.insert.ext309, 8
  %tx_agc.sroa.0.sroa.17.0.insert.insert312 = or i32 %tx_agc.sroa.0.sroa.17.0.insert.shift310, %tx_agc.sroa.0.sroa.19.0.insert.ext329
  %tx_agc.sroa.0.sroa.15.0.insert.ext289 = zext i8 %tx_agc.sroa.0.sroa.15.2 to i32
  %tx_agc.sroa.0.sroa.15.0.insert.shift290 = shl nuw nsw i32 %tx_agc.sroa.0.sroa.15.0.insert.ext289, 16
  %tx_agc.sroa.0.sroa.15.0.insert.insert292 = or i32 %tx_agc.sroa.0.sroa.17.0.insert.insert312, %tx_agc.sroa.0.sroa.15.0.insert.shift290
  %tx_agc.sroa.0.sroa.0.0.insert.ext269 = zext i8 %tx_agc.sroa.0.sroa.0.2 to i32
  %tx_agc.sroa.0.sroa.0.0.insert.shift270 = shl nuw i32 %tx_agc.sroa.0.sroa.0.0.insert.ext269, 24
  %tx_agc.sroa.0.sroa.0.0.insert.insert272 = or i32 %tx_agc.sroa.0.sroa.15.0.insert.insert292, %tx_agc.sroa.0.sroa.0.0.insert.shift270
  %39 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %priv, align 8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %40, i32 0, i32 32
  %41 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops.i, align 4
  %set_bbreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %44, i32 0, i32 46
  %45 = ptrtoint ptr %set_bbreg.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %set_bbreg.i, align 4
  call void %46(ptr noundef %hw, i32 noundef 3104, i32 noundef -1, i32 noundef %tx_agc.sroa.0.sroa.0.0.insert.insert272) #5
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.3, i32 noundef %tx_agc.sroa.0.sroa.0.0.insert.insert272, i32 noundef 3104) #5
  %tx_agc.sroa.21.sroa.19.0.insert.ext = zext i8 %tx_agc.sroa.21.sroa.19.2 to i32
  %tx_agc.sroa.21.sroa.17.0.insert.ext = zext i8 %tx_agc.sroa.21.sroa.17.2 to i32
  %tx_agc.sroa.21.sroa.17.0.insert.shift = shl nuw nsw i32 %tx_agc.sroa.21.sroa.17.0.insert.ext, 8
  %tx_agc.sroa.21.sroa.17.0.insert.insert = or i32 %tx_agc.sroa.21.sroa.17.0.insert.shift, %tx_agc.sroa.21.sroa.19.0.insert.ext
  %tx_agc.sroa.21.sroa.15.0.insert.ext = zext i8 %tx_agc.sroa.21.sroa.15.2 to i32
  %tx_agc.sroa.21.sroa.15.0.insert.shift = shl nuw nsw i32 %tx_agc.sroa.21.sroa.15.0.insert.ext, 16
  %tx_agc.sroa.21.sroa.15.0.insert.insert = or i32 %tx_agc.sroa.21.sroa.17.0.insert.insert, %tx_agc.sroa.21.sroa.15.0.insert.shift
  %tx_agc.sroa.21.sroa.0.0.insert.ext = zext i8 %tx_agc.sroa.21.sroa.0.2 to i32
  %tx_agc.sroa.21.sroa.0.0.insert.shift = shl nuw i32 %tx_agc.sroa.21.sroa.0.0.insert.ext, 24
  %tx_agc.sroa.21.sroa.0.0.insert.insert = or i32 %tx_agc.sroa.21.sroa.15.0.insert.insert, %tx_agc.sroa.21.sroa.0.0.insert.shift
  %47 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %priv, align 8
  %cfg.i168 = getelementptr inbounds %struct.rtl_priv, ptr %48, i32 0, i32 32
  %49 = ptrtoint ptr %cfg.i168 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cfg.i168, align 8
  %ops.i169 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %ops.i169 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ops.i169, align 4
  %set_bbreg.i170 = getelementptr inbounds %struct.rtl_hal_ops, ptr %52, i32 0, i32 46
  %53 = ptrtoint ptr %set_bbreg.i170 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %set_bbreg.i170, align 4
  call void %54(ptr noundef %hw, i32 noundef 3616, i32 noundef -1, i32 noundef %tx_agc.sroa.21.sroa.0.0.insert.insert) #5
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.4, i32 noundef %tx_agc.sroa.21.sroa.0.0.insert.insert, i32 noundef 3616) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pwrtrac_value) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %direction) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8821ae_dm_txpower_track_adjust(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8821ae_phy_rf6052_set_ofdm_txpower(ptr noundef %hw, ptr nocapture noundef readonly %ppowerlevel_ofdm, ptr nocapture noundef readonly %ppowerlevel_bw20, ptr nocapture noundef readonly %ppowerlevel_bw40, i8 noundef zeroext %channel) local_unnamed_addr #0 align 64 {
entry:
  %writeval = alloca [2 x i32], align 4
  %powerbase0 = alloca [2 x i32], align 4
  %powerbase1 = alloca [2 x i32], align 4
  %direction = alloca i8, align 1
  %pwrtrac_value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %writeval) #5
  %0 = ptrtoint ptr %writeval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %writeval, align 4, !annotation !45
  %1 = getelementptr inbounds [2 x i32], ptr %writeval, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %powerbase0) #5
  %3 = getelementptr inbounds [2 x i32], ptr %powerbase0, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %powerbase1) #5
  %4 = getelementptr inbounds [2 x i32], ptr %powerbase1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %direction) #5
  %5 = ptrtoint ptr %direction to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %direction, align 1, !annotation !45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pwrtrac_value) #5
  %6 = ptrtoint ptr %pwrtrac_value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %pwrtrac_value, align 4, !annotation !45
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %7 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv.i, align 8
  %9 = ptrtoint ptr %ppowerlevel_ofdm to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ppowerlevel_ofdm, align 1
  %conv2.i = zext i8 %10 to i32
  %shl.i = shl nuw i32 %conv2.i, 24
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %shl4.i = shl nuw nsw i32 %conv2.i, 8
  %or.i = or i32 %shl3.i, %conv2.i
  %or5.i = or i32 %or.i, %shl.i
  %or6.i = or i32 %or5.i, %shl4.i
  %11 = ptrtoint ptr %powerbase0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or6.i, ptr %powerbase0, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %8, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.5, i32 noundef 65, i32 noundef %or6.i) #5
  %arrayidx.1.i = getelementptr i8, ptr %ppowerlevel_ofdm, i32 1
  %12 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.1.i, align 1
  %conv2.1.i = zext i8 %13 to i32
  %shl.1.i = shl nuw i32 %conv2.1.i, 24
  %shl3.1.i = shl nuw nsw i32 %conv2.1.i, 16
  %shl4.1.i = shl nuw nsw i32 %conv2.1.i, 8
  %or.1.i = or i32 %shl3.1.i, %conv2.1.i
  %or5.1.i = or i32 %or.1.i, %shl.1.i
  %or6.1.i = or i32 %or5.1.i, %shl4.1.i
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or6.1.i, ptr %3, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %8, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.5, i32 noundef 66, i32 noundef %or6.1.i) #5
  %current_chan_bw.i = getelementptr inbounds %struct.rtl_priv, ptr %8, i32 0, i32 14, i32 5
  %15 = ptrtoint ptr %current_chan_bw.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %current_chan_bw.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp19.i = icmp eq i8 %16, 0
  %spec.select.i = select i1 %cmp19.i, ptr %ppowerlevel_bw20, ptr %ppowerlevel_bw40
  %17 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %powerlevel.sroa.0.0.i = load i8, ptr %spec.select.i, align 1
  %conv31.i = zext i8 %powerlevel.sroa.0.0.i to i32
  %shl32.i = shl nuw i32 %conv31.i, 24
  %shl33.i = shl nuw nsw i32 %conv31.i, 16
  %shl35.i = shl nuw nsw i32 %conv31.i, 8
  %or34.i = or i32 %shl33.i, %conv31.i
  %or36.i = or i32 %or34.i, %shl32.i
  %or37.i = or i32 %or36.i, %shl35.i
  %18 = ptrtoint ptr %powerbase1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or37.i, ptr %powerbase1, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %8, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.6, i32 noundef 65, i32 noundef %or37.i) #5
  %19 = ptrtoint ptr %current_chan_bw.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %current_chan_bw.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp19.1.i = icmp eq i8 %20, 0
  %ppowerlevel_bw20.pn.i = select i1 %cmp19.1.i, ptr %ppowerlevel_bw20, ptr %ppowerlevel_bw40
  %powerlevel.sroa.6.0.in.i = getelementptr i8, ptr %ppowerlevel_bw20.pn.i, i32 1
  %21 = ptrtoint ptr %powerlevel.sroa.6.0.in.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %powerlevel.sroa.6.0.i = load i8, ptr %powerlevel.sroa.6.0.in.i, align 1
  %conv31.1.i = zext i8 %powerlevel.sroa.6.0.i to i32
  %shl32.1.i = shl nuw i32 %conv31.1.i, 24
  %shl33.1.i = shl nuw nsw i32 %conv31.1.i, 16
  %shl35.1.i = shl nuw nsw i32 %conv31.1.i, 8
  %or34.1.i = or i32 %shl33.1.i, %conv31.1.i
  %or36.1.i = or i32 %or34.1.i, %shl32.1.i
  %or37.1.i = or i32 %or36.1.i, %shl35.1.i
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or37.1.i, ptr %4, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %8, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.6, i32 noundef 66, i32 noundef %or37.1.i) #5
  call void @rtl8821ae_dm_txpower_track_adjust(ptr noundef %hw, i8 noundef zeroext 1, ptr noundef nonnull %direction, ptr noundef nonnull %pwrtrac_value) #5
  %conv104.i = zext i8 %channel to i32
  %sub105.i = add nsw i32 %conv104.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %channel)
  %cmp19.i30 = icmp ult i8 %channel, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %channel)
  %cmp24.i = icmp ult i8 %channel, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %channel)
  %cmp29.i = icmp ult i8 %channel, 9
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %channel)
  %cmp34.i = icmp ult i8 %channel, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %channel)
  %cmp39.i = icmp ult i8 %channel, 14
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %channel)
  %cmp44.i = icmp eq i8 %channel, 14
  br label %for.body

for.body:                                         ; preds = %if.end19.for.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %if.end19.for.body_crit_edge ]
  %23 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv.i, align 8
  %eeprom_regulatory.i = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 17, i32 54
  %current_chan_bw.i29 = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 14, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %indvars.iv)
  %cmp110.i = icmp ult i32 %indvars.iv, 2
  %mcs_txpwrlevel_origoffset162.i = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 14, i32 40
  %powerbase0.powerbase1364.i = select i1 %cmp110.i, ptr %powerbase0, ptr %powerbase1
  %pwrgroup_cnt.i = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 14, i32 38
  %dynamic_txhighpower_lvl.i = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 15, i32 29
  br label %for.body.i

for.body.i:                                       ; preds = %if.end250.i.for.body.i_crit_edge, %for.body
  %rf.0369.i = phi i32 [ 0, %for.body ], [ %inc252.i, %if.end250.i.for.body.i_crit_edge ]
  %pwr_diff.0368.i = phi i8 [ 0, %for.body ], [ %pwr_diff.3.i, %if.end250.i.for.body.i_crit_edge ]
  %chnlgroup.0367.i = phi i8 [ 0, %for.body ], [ %chnlgroup.2.i, %if.end250.i.for.body.i_crit_edge ]
  %25 = ptrtoint ptr %eeprom_regulatory.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %eeprom_regulatory.i, align 1
  %27 = zext i8 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %26, label %sw.default.i [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb14.i
    i8 2, label %sw.bb74.i
    i8 3, label %sw.bb87.i
  ]

sw.bb.i:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rf.0369.i)
  %tobool.not.i = icmp eq i32 %rf.0369.i, 0
  %cond.i = select i1 %tobool.not.i, i32 0, i32 8
  %add.i = add nuw nsw i32 %cond.i, %indvars.iv
  %arrayidx3.i = getelementptr [16 x i32], ptr %mcs_txpwrlevel_origoffset162.i, i32 0, i32 %add.i
  %28 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx3.i, align 4
  %cond9.in.i = getelementptr i32, ptr %powerbase0.powerbase1364.i, i32 %rf.0369.i
  %30 = ptrtoint ptr %cond9.in.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %cond9.i = load i32, ptr %cond9.in.i, align 4
  %add10.i = add i32 %cond9.i, %29
  %cond13.i = select i1 %tobool.not.i, i32 65, i32 66
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %24, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.7, i32 noundef %cond13.i, i32 noundef %add10.i) #5
  br label %sw.epilog.i

sw.bb14.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %pwrgroup_cnt.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %pwrgroup_cnt.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %32)
  %cmp16.i = icmp eq i8 %32, 1
  %or.cond.i = or i1 %cmp19.i30, %cmp16.i
  %brmerge.i = or i1 %cmp24.i, %cmp16.i
  %not.or.cond.i = xor i1 %or.cond.i, true
  %.mux.i = zext i1 %not.or.cond.i to i8
  %brmerge375.i = or i1 %cmp29.i, %cmp16.i
  %.mux.mux.i = select i1 %brmerge.i, i8 %.mux.i, i8 2
  %brmerge376.i = or i1 %cmp34.i, %cmp16.i
  %.mux.mux.mux.i = select i1 %brmerge375.i, i8 %.mux.mux.i, i8 3
  %spec.select.i31 = select i1 %cmp44.i, i8 5, i8 %chnlgroup.0367.i
  %spec.select377.i = select i1 %cmp39.i, i8 4, i8 %spec.select.i31
  %chnlgroup.1.i = select i1 %brmerge376.i, i8 %.mux.mux.mux.i, i8 %spec.select377.i
  %idxprom54.i = zext i8 %chnlgroup.1.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rf.0369.i)
  %tobool57.not.i = icmp eq i32 %rf.0369.i, 0
  %cond58.i = select i1 %tobool57.not.i, i32 0, i32 8
  %add59.i = add nuw nsw i32 %cond58.i, %indvars.iv
  %arrayidx60.i = getelementptr %struct.rtl_priv, ptr %24, i32 0, i32 14, i32 40, i32 %idxprom54.i, i32 %add59.i
  %33 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx60.i, align 4
  %cond69.in.i = getelementptr i32, ptr %powerbase0.powerbase1364.i, i32 %rf.0369.i
  %35 = ptrtoint ptr %cond69.in.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %cond69.i = load i32, ptr %cond69.in.i, align 4
  %add70.i = add i32 %cond69.i, %34
  %cond73.i = select i1 %tobool57.not.i, i32 65, i32 66
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %24, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.8, i32 noundef %cond73.i, i32 noundef %add70.i) #5
  br label %sw.epilog.i

sw.bb74.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %cond83.in.i = getelementptr i32, ptr %powerbase0.powerbase1364.i, i32 %rf.0369.i
  %36 = ptrtoint ptr %cond83.in.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %cond83.i = load i32, ptr %cond83.in.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rf.0369.i)
  %cmp84.i = icmp eq i32 %rf.0369.i, 0
  %cond86.i = select i1 %cmp84.i, i32 65, i32 66
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %24, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.9, i32 noundef %cond86.i, i32 noundef %cond83.i) #5
  br label %sw.epilog.i

sw.bb87.i:                                        ; preds = %for.body.i
  %37 = ptrtoint ptr %current_chan_bw.i29 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %current_chan_bw.i29, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %38)
  %cmp89.i = icmp eq i8 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rf.0369.i)
  %cmp92.i = icmp eq i32 %rf.0369.i, 0
  %cond94.i = select i1 %cmp92.i, i32 65, i32 66
  %arrayidx106.i = getelementptr %struct.rtl_priv, ptr %24, i32 0, i32 17, i32 36, i32 %rf.0369.i, i32 %sub105.i
  %arrayidx97.i = getelementptr %struct.rtl_priv, ptr %24, i32 0, i32 17, i32 37, i32 %rf.0369.i, i32 %sub105.i
  %arrayidx106.sink.i = select i1 %cmp89.i, ptr %arrayidx97.i, ptr %arrayidx106.i
  %.str.11.sink.i = select i1 %cmp89.i, ptr @.str.10, ptr @.str.11
  %39 = ptrtoint ptr %arrayidx106.sink.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx106.sink.i, align 1
  %conv107.i = zext i8 %40 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %24, i64 noundef 9, i32 noundef 256, ptr noundef nonnull %.str.11.sink.i, i32 noundef %cond94.i, i32 noundef %conv107.i) #5
  br i1 %cmp110.i, label %if.then112.i, label %if.else117.i

if.then112.i:                                     ; preds = %sw.bb87.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx116.i = getelementptr %struct.rtl_priv, ptr %24, i32 0, i32 17, i32 44, i32 %rf.0369.i, i32 %sub105.i
  br label %if.end128thread-pre-split.i

if.else117.i:                                     ; preds = %sw.bb87.i
  %41 = ptrtoint ptr %current_chan_bw.i29 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %current_chan_bw.i29, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp120.i = icmp eq i8 %42, 0
  br i1 %cmp120.i, label %if.then122.i, label %if.else117.i.if.end128.i_crit_edge

if.else117.i.if.end128.i_crit_edge:               ; preds = %if.else117.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end128.i

if.then122.i:                                     ; preds = %if.else117.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx126.i = getelementptr %struct.rtl_priv, ptr %24, i32 0, i32 17, i32 42, i32 %rf.0369.i, i32 %sub105.i
  br label %if.end128thread-pre-split.i

if.end128thread-pre-split.i:                      ; preds = %if.then122.i, %if.then112.i
  %pwr_diff.1.ph.in.i = phi ptr [ %arrayidx126.i, %if.then122.i ], [ %arrayidx116.i, %if.then112.i ]
  %43 = ptrtoint ptr %pwr_diff.1.ph.in.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %pwr_diff.1.ph.i = load i8, ptr %pwr_diff.1.ph.in.i, align 1
  %44 = ptrtoint ptr %current_chan_bw.i29 to i32
  call void @__asan_load1_noabort(i32 %44)
  %.pr.i = load i8, ptr %current_chan_bw.i29, align 2
  br label %if.end128.i

if.end128.i:                                      ; preds = %if.end128thread-pre-split.i, %if.else117.i.if.end128.i_crit_edge
  %45 = phi i8 [ %.pr.i, %if.end128thread-pre-split.i ], [ %42, %if.else117.i.if.end128.i_crit_edge ]
  %pwr_diff.1.i = phi i8 [ %pwr_diff.1.ph.i, %if.end128thread-pre-split.i ], [ %pwr_diff.0368.i, %if.else117.i.if.end128.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %45)
  %cmp131.i = icmp eq i8 %45, 1
  %customer_pwr_diff.0.in.i = select i1 %cmp131.i, ptr %arrayidx97.i, ptr %arrayidx106.i
  %46 = ptrtoint ptr %customer_pwr_diff.0.in.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %customer_pwr_diff.0.i = load i8, ptr %customer_pwr_diff.0.in.i, align 1
  %47 = call i8 @llvm.usub.sat.i8(i8 %customer_pwr_diff.0.i, i8 %pwr_diff.1.i) #5
  %cond167.i = select i1 %cmp92.i, i32 0, i32 8
  %add168.i = add nuw nsw i32 %cond167.i, %indvars.iv
  %arrayidx169.i = getelementptr [16 x i32], ptr %mcs_txpwrlevel_origoffset162.i, i32 0, i32 %add168.i
  %48 = ptrtoint ptr %arrayidx169.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx169.i, align 4
  %conv179.i = zext i8 %47 to i32
  %and.i = and i32 %49, 127
  %conv173.i = trunc i32 %and.i to i8
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %conv179.i)
  %cmp180.i = icmp ugt i32 %and.i, %conv179.i
  %spec.select363.i = select i1 %cmp180.i, i8 %47, i8 %conv173.i
  %and.1.i = lshr i32 %49, 8
  %shr.1.i = and i32 %and.1.i, 127
  %conv173.1.i = trunc i32 %shr.1.i to i8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.1.i, i32 %conv179.i)
  %cmp180.1.i = icmp ugt i32 %shr.1.i, %conv179.i
  %spec.select363.1.i = select i1 %cmp180.1.i, i8 %47, i8 %conv173.1.i
  %and.2.i = lshr i32 %49, 16
  %shr.2.i = and i32 %and.2.i, 127
  %conv173.2.i = trunc i32 %shr.2.i to i8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.2.i, i32 %conv179.i)
  %cmp180.2.i = icmp ugt i32 %shr.2.i, %conv179.i
  %spec.select363.2.i = select i1 %cmp180.2.i, i8 %47, i8 %conv173.2.i
  %and.3.i = lshr i32 %49, 24
  %shr.3.i = and i32 %and.3.i, 127
  %conv173.3.i = trunc i32 %shr.3.i to i8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.3.i, i32 %conv179.i)
  %cmp180.3.i = icmp ugt i32 %shr.3.i, %conv179.i
  %spec.select363.3.i = select i1 %cmp180.3.i, i8 %47, i8 %conv173.3.i
  %conv187.i = zext i8 %spec.select363.3.i to i32
  %shl188.i = shl nuw i32 %conv187.i, 24
  %conv190.i = zext i8 %spec.select363.2.i to i32
  %shl191.i = shl nuw nsw i32 %conv190.i, 16
  %or.i32 = or i32 %shl191.i, %shl188.i
  %conv193.i = zext i8 %spec.select363.1.i to i32
  %shl194.i = shl nuw nsw i32 %conv193.i, 8
  %or195.i = or i32 %or.i32, %shl194.i
  %conv197.i = zext i8 %spec.select363.i to i32
  %or198.i = or i32 %or195.i, %conv197.i
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %24, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.12, i32 noundef %cond94.i, i32 noundef %or198.i) #5
  %cond210.in.i = getelementptr i32, ptr %powerbase0.powerbase1364.i, i32 %rf.0369.i
  %50 = ptrtoint ptr %cond210.in.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %cond210.i = load i32, ptr %cond210.in.i, align 4
  %add211.i = add i32 %or198.i, %cond210.i
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %24, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.13, i32 noundef %cond94.i, i32 noundef %add211.i) #5
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rf.0369.i)
  %tobool219.not.i = icmp eq i32 %rf.0369.i, 0
  %cond220.i = select i1 %tobool219.not.i, i32 0, i32 8
  %add221.i = add nuw nsw i32 %cond220.i, %indvars.iv
  %arrayidx222.i = getelementptr [16 x i32], ptr %mcs_txpwrlevel_origoffset162.i, i32 0, i32 %add221.i
  %51 = ptrtoint ptr %arrayidx222.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx222.i, align 4
  %cond231.in.i = getelementptr i32, ptr %powerbase0.powerbase1364.i, i32 %rf.0369.i
  %53 = ptrtoint ptr %cond231.in.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %cond231.i = load i32, ptr %cond231.in.i, align 4
  %add232.i = add i32 %cond231.i, %52
  %cond235.i = select i1 %tobool219.not.i, i32 65, i32 66
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %24, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.14, i32 noundef %cond235.i, i32 noundef %add232.i) #5
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %if.end128.i, %sw.bb74.i, %sw.bb14.i, %sw.bb.i
  %chnlgroup.2.i = phi i8 [ 0, %sw.default.i ], [ 0, %if.end128.i ], [ %chnlgroup.0367.i, %sw.bb74.i ], [ %chnlgroup.1.i, %sw.bb14.i ], [ 0, %sw.bb.i ]
  %pwr_diff.3.i = phi i8 [ %pwr_diff.0368.i, %sw.default.i ], [ %47, %if.end128.i ], [ %pwr_diff.0368.i, %sw.bb74.i ], [ %pwr_diff.0368.i, %sw.bb14.i ], [ %pwr_diff.0368.i, %sw.bb.i ]
  %writeval.0.i = phi i32 [ %add232.i, %sw.default.i ], [ %add211.i, %if.end128.i ], [ %cond83.i, %sw.bb74.i ], [ %add70.i, %sw.bb14.i ], [ %add10.i, %sw.bb.i ]
  %54 = ptrtoint ptr %dynamic_txhighpower_lvl.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %dynamic_txhighpower_lvl.i, align 1
  %56 = zext i8 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %55, label %sw.epilog.i.if.end250.i_crit_edge [
    i8 3, label %if.then239.i
    i8 4, label %if.then247.i
  ]

sw.epilog.i.if.end250.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end250.i

if.then239.i:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub240.i = add i32 %writeval.0.i, -101058054
  br label %if.end250.i

if.then247.i:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub248.i = add i32 %writeval.0.i, -202116108
  br label %if.end250.i

if.end250.i:                                      ; preds = %if.then247.i, %if.then239.i, %sw.epilog.i.if.end250.i_crit_edge
  %writeval.1.i = phi i32 [ %sub240.i, %if.then239.i ], [ %sub248.i, %if.then247.i ], [ %writeval.0.i, %sw.epilog.i.if.end250.i_crit_edge ]
  %add.ptr.i = getelementptr i32, ptr %writeval, i32 %rf.0369.i
  %57 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %writeval.1.i, ptr %add.ptr.i, align 4
  %inc252.i = add nuw nsw i32 %rf.0369.i, 1
  %exitcond.not.i = icmp eq i32 %inc252.i, 2
  br i1 %exitcond.not.i, label %get_txpower_writeval_by_regulatory.exit, label %if.end250.i.for.body.i_crit_edge

if.end250.i.for.body.i_crit_edge:                 ; preds = %if.end250.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

get_txpower_writeval_by_regulatory.exit:          ; preds = %if.end250.i
  %58 = ptrtoint ptr %direction to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %direction, align 1
  %60 = zext i8 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %59, label %get_txpower_writeval_by_regulatory.exit.if.end19_crit_edge [
    i8 1, label %if.then
    i8 2, label %if.then15
  ]

get_txpower_writeval_by_regulatory.exit.if.end19_crit_edge: ; preds = %get_txpower_writeval_by_regulatory.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then:                                          ; preds = %get_txpower_writeval_by_regulatory.exit
  call void @__sanitizer_cov_trace_pc() #7
  %61 = ptrtoint ptr %pwrtrac_value to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %pwrtrac_value, align 4
  %63 = ptrtoint ptr %writeval to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %writeval, align 4
  %add = add i32 %64, %62
  store i32 %add, ptr %writeval, align 4
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %1, align 4
  %add11 = add i32 %66, %62
  br label %if.end19.sink.split

if.then15:                                        ; preds = %get_txpower_writeval_by_regulatory.exit
  call void @__sanitizer_cov_trace_pc() #7
  %67 = ptrtoint ptr %pwrtrac_value to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %pwrtrac_value, align 4
  %69 = ptrtoint ptr %writeval to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %writeval, align 4
  %sub = sub i32 %70, %68
  store i32 %sub, ptr %writeval, align 4
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %1, align 4
  %sub18 = sub i32 %72, %68
  br label %if.end19.sink.split

if.end19.sink.split:                              ; preds = %if.then15, %if.then
  %sub18.sink = phi i32 [ %sub18, %if.then15 ], [ %add11, %if.then ]
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %sub18.sink, ptr %1, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.end19.sink.split, %get_txpower_writeval_by_regulatory.exit.if.end19_crit_edge
  %74 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %priv.i, align 8
  %arrayidx38.i = getelementptr [6 x i16], ptr @__const._rtl8821ae_write_ofdm_power_reg.regoffset_a, i32 0, i32 %indvars.iv
  %arrayidx40.i = getelementptr [6 x i16], ptr @__const._rtl8821ae_write_ofdm_power_reg.regoffset_b, i32 0, i32 %indvars.iv
  %76 = ptrtoint ptr %writeval to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %writeval, align 4
  %and.i34 = and i32 %77, 127
  %conv15.i = and i32 %77, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv15.i)
  %cmp16.not.i = icmp eq i32 %conv15.i, 0
  %shr.1.i35 = and i32 %77, 32512
  %78 = and i32 %77, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp16.not.1.i = icmp eq i32 %78, 0
  %shr.2.i36 = and i32 %77, 8323072
  %79 = and i32 %77, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp16.not.2.i = icmp eq i32 %79, 0
  %shr.3.i37 = and i32 %77, 2130706432
  %80 = and i32 %77, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp16.not.3.i = icmp eq i32 %80, 0
  %conv21.i = select i1 %cmp16.not.3.i, i32 %shr.3.i37, i32 1056964608
  %conv24.i = select i1 %cmp16.not.2.i, i32 %shr.2.i36, i32 4128768
  %or.i38 = or i32 %conv24.i, %conv21.i
  %conv27.i = select i1 %cmp16.not.1.i, i32 %shr.1.i35, i32 16128
  %or29.i = or i32 %or.i38, %conv27.i
  %conv31.i39 = select i1 %cmp16.not.i, i32 %and.i34, i32 63
  %or32.i = or i32 %or29.i, %conv31.i39
  %81 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %regoffset.0.i = load i16, ptr %arrayidx38.i, align 2
  %conv42.i = zext i16 %regoffset.0.i to i32
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %75, i32 0, i32 32
  %82 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cfg.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %83, i32 0, i32 4
  %84 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ops.i.i, align 4
  %set_bbreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %85, i32 0, i32 46
  %86 = ptrtoint ptr %set_bbreg.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %set_bbreg.i.i, align 4
  call void %87(ptr noundef %hw, i32 noundef %conv42.i, i32 noundef -1, i32 noundef %or32.i) #5
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %75, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.15, i32 noundef %conv42.i, i32 noundef %or32.i) #5
  %88 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %1, align 4
  %and.163.i = and i32 %89, 127
  %conv15.165.i = and i32 %89, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv15.165.i)
  %cmp16.not.166.i = icmp eq i32 %conv15.165.i, 0
  %shr.1.1.i = and i32 %89, 32512
  %90 = and i32 %89, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp16.not.1.1.i = icmp eq i32 %90, 0
  %shr.2.1.i = and i32 %89, 8323072
  %91 = and i32 %89, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp16.not.2.1.i = icmp eq i32 %91, 0
  %shr.3.1.i = and i32 %89, 2130706432
  %92 = and i32 %89, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp16.not.3.1.i = icmp eq i32 %92, 0
  %conv21.1.i = select i1 %cmp16.not.3.1.i, i32 %shr.3.1.i, i32 1056964608
  %conv24.1.i = select i1 %cmp16.not.2.1.i, i32 %shr.2.1.i, i32 4128768
  %or.1.i41 = or i32 %conv24.1.i, %conv21.1.i
  %conv27.1.i = select i1 %cmp16.not.1.1.i, i32 %shr.1.1.i, i32 16128
  %or29.1.i = or i32 %or.1.i41, %conv27.1.i
  %conv31.1.i42 = select i1 %cmp16.not.166.i, i32 %and.163.i, i32 63
  %or32.1.i = or i32 %or29.1.i, %conv31.1.i42
  %93 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %regoffset.0.1.i = load i16, ptr %arrayidx40.i, align 2
  %conv42.1.i = zext i16 %regoffset.0.1.i to i32
  %94 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %priv.i, align 8
  %cfg.i.1.i = getelementptr inbounds %struct.rtl_priv, ptr %95, i32 0, i32 32
  %96 = ptrtoint ptr %cfg.i.1.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %cfg.i.1.i, align 8
  %ops.i.1.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %97, i32 0, i32 4
  %98 = ptrtoint ptr %ops.i.1.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ops.i.1.i, align 4
  %set_bbreg.i.1.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %99, i32 0, i32 46
  %100 = ptrtoint ptr %set_bbreg.i.1.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %set_bbreg.i.1.i, align 4
  call void %101(ptr noundef %hw, i32 noundef %conv42.1.i, i32 noundef -1, i32 noundef %or32.1.i) #5
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %75, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.15, i32 noundef %conv42.1.i, i32 noundef %or32.1.i) #5
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 6
  br i1 %exitcond.not, label %for.end, label %if.end19.for.body_crit_edge

if.end19.for.body_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pwrtrac_value) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %direction) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %powerbase1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %powerbase0) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %writeval) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl8821ae_phy_rf6052_config(ptr noundef %hw) local_unnamed_addr #0 align 64 {
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
  %num_total_rfpath.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 14, i32 58
  %8 = ptrtoint ptr %num_total_rfpath.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num_total_rfpath.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp61.not.i = icmp eq i8 %9, 0
  br i1 %cmp61.not.i, label %entry.for.end.i_crit_edge, label %for.body.lr.ph.i

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %entry
  %hw_type14.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 10, i32 10
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.inc.i.for.body.i_crit_edge ]
  %10 = trunc i32 %indvars.iv.i to i8
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %10, label %for.body.i.for.inc.i_crit_edge [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb13.i
  ]

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

sw.bb.i:                                          ; preds = %for.body.i
  %12 = ptrtoint ptr %hw_type14.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %hw_type14.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %13)
  %cmp7.i = icmp eq i16 %13, 14
  br i1 %cmp7.i, label %if.then.i, label %sw.epilog.i

if.then.i:                                        ; preds = %sw.bb.i
  %call.i = tail call zeroext i1 @rtl8812ae_phy_config_rf_with_headerfile(ptr noundef %hw, i32 noundef %indvars.iv.i) #5
  br i1 %call.i, label %if.then.i.for.inc.i_crit_edge, label %if.then.i.if.then27.i_crit_edge

if.then.i.if.then27.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then27.i

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

sw.bb13.i:                                        ; preds = %for.body.i
  %14 = ptrtoint ptr %hw_type14.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %hw_type14.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %15)
  %cmp16.i = icmp eq i16 %15, 14
  br i1 %cmp16.i, label %if.then18.i, label %if.else22.i

if.then18.i:                                      ; preds = %sw.bb13.i
  %call20.i = tail call zeroext i1 @rtl8812ae_phy_config_rf_with_headerfile(ptr noundef %hw, i32 noundef %indvars.iv.i) #5
  br i1 %call20.i, label %if.then18.i.for.inc.i_crit_edge, label %if.then18.i.if.then27.i_crit_edge

if.then18.i.if.then27.i_crit_edge:                ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then27.i

if.then18.i.for.inc.i_crit_edge:                  ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.else22.i:                                      ; preds = %sw.bb13.i
  %call24.i = tail call zeroext i1 @rtl8821ae_phy_config_rf_with_headerfile(ptr noundef %hw, i32 noundef %indvars.iv.i) #5
  br i1 %call24.i, label %if.else22.i.for.inc.i_crit_edge, label %if.else22.i.if.then27.i_crit_edge

if.else22.i.if.then27.i_crit_edge:                ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then27.i

if.else22.i.for.inc.i_crit_edge:                  ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

sw.epilog.i:                                      ; preds = %sw.bb.i
  %call11.i = tail call zeroext i1 @rtl8821ae_phy_config_rf_with_headerfile(ptr noundef %hw, i32 noundef %indvars.iv.i) #5
  br i1 %call11.i, label %sw.epilog.i.for.inc.i_crit_edge, label %sw.epilog.i.if.then27.i_crit_edge

sw.epilog.i.if.then27.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then27.i

sw.epilog.i.for.inc.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then27.i:                                      ; preds = %sw.epilog.i.if.then27.i_crit_edge, %if.else22.i.if.then27.i_crit_edge, %if.then18.i.if.then27.i_crit_edge, %if.then.i.if.then27.i_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.16, i32 noundef %indvars.iv.i) #5
  br label %_rtl8821ae_phy_rf6052_config_parafile.exit

for.inc.i:                                        ; preds = %sw.epilog.i.for.inc.i_crit_edge, %if.else22.i.for.inc.i_crit_edge, %if.then18.i.for.inc.i_crit_edge, %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %16 = ptrtoint ptr %num_total_rfpath.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %num_total_rfpath.i, align 4
  %18 = zext i8 %17 to i32
  %cmp.i = icmp ult i32 %indvars.iv.next.i, %18
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.17) #5
  br label %_rtl8821ae_phy_rf6052_config_parafile.exit

_rtl8821ae_phy_rf6052_config_parafile.exit:       ; preds = %for.end.i, %if.then27.i
  %cmp59.i = phi i1 [ true, %for.end.i ], [ false, %if.then27.i ]
  ret i1 %cmp59.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl8812ae_phy_config_rf_with_headerfile(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl8821ae_phy_config_rf_with_headerfile(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.usub.sat.i8(i8, i8) #4

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/rf.c", i32 29, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @rtl8821ae_phy_rf6052_set_bandwidth._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @rtl8821ae_phy_rf6052_set_bandwidth._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/rf.c", i32 106, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/rf.c", i32 113, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/rf.c", i32 135, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/rf.c", i32 152, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/rf.c", i32 180, i32 4}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/rf.c", i32 208, i32 4}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/rf.c", i32 217, i32 4}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/rf.c", i32 225, i32 5}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/rf.c", i32 231, i32 5}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/rf.c", i32 270, i32 4}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/rf.c", i32 277, i32 4}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/rf.c", i32 288, i32 4}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/rf.c", i32 339, i32 3}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/rf.c", i32 431, i32 4}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8821ae/rf.c", i32 438, i32 2}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{!"auto-init"}
!46 = !{i8 0, i8 2}
