; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/rtl8192se/rf.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/rtl8192se/rf.c"
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

@rtl92s_phy_rf6052_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 473, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013rtl8192se: Radio[%d] Fail!!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rtl92s_phy_rf6052_config\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/wireless/realtek/rtlwifi/rtl8192se/rf.c\00", [44 x i8] zeroinitializer }, align 32
@rtl92s_phy_rf6052_config._entry_ptr = internal global ptr @rtl92s_phy_rf6052_config._entry, section ".printk_index", align 4
@rtl92s_phy_rf6052_set_bandwidth._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 504, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013rtl8192se: unknown bandwidth: %#X\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rtl92s_phy_rf6052_set_bandwidth\00", [32 x i8] zeroinitializer }, align 32
@rtl92s_phy_rf6052_set_bandwidth._entry_ptr = internal global ptr @rtl92s_phy_rf6052_set_bandwidth._entry, section ".printk_index", align 4
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"40MHz finalpwr_idx (A / B) = 0x%x / 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"20MHz finalpwr_idx (A / B) = 0x%x / 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Antenna Diff from RF-B to RF-A = %d (0x%x)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Write BCD-Diff(0x%x) = 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"RTK better performance, writeval = 0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Realtek regulatory, 40MHz, writeval = 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Realtek regulatory, 20MHz, writeval = 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Better regulatory, writeval = 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"customer's limit, 40MHz = 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"customer's limit, 20MHz = 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Customer's limit = 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Customer, writeval = 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@__const._rtl92s_write_ofdm_powerreg.regoffset = private unnamed_addr constant [6 x i16] [i16 3584, i16 3588, i16 3600, i16 3604, i16 3608, i16 3612], align 2
@switch.table.rtl92s_phy_rf6052_config = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 16, i32 1048576, i32 16, i32 1048576], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.19 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 473, i32 4 }
@___asan_gen_.33 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 504, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 98, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 102, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 127, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 146, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 172, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 181, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 202, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 210, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 219, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 224, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 259, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.76 = private constant [55 x i8] c"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/rf.c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 264, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [38 x i8] c"switch.table.rtl92s_phy_rf6052_config\00", align 1
@llvm.compiler.used = appending global [22 x ptr] [ptr @rtl92s_phy_rf6052_config._entry, ptr @rtl92s_phy_rf6052_config._entry_ptr, ptr @rtl92s_phy_rf6052_set_bandwidth._entry, ptr @rtl92s_phy_rf6052_set_bandwidth._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @switch.table.rtl92s_phy_rf6052_config], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92s_phy_rf6052_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92s_phy_rf6052_set_bandwidth._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl92s_phy_rf6052_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92s_phy_rf6052_set_ofdmtxpower(ptr noundef %hw, ptr nocapture noundef readonly %p_pwrlevel, i8 noundef zeroext %chnl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %p_pwrlevel to i32
  call void @__asan_load1_noabort(i32 %2)
  %pwrlevel.sroa.0.0.copyload.i = load i8, ptr %p_pwrlevel, align 1
  %pwrlevel.sroa.11.0.p_pwrlevel.sroa_idx.i = getelementptr inbounds i8, ptr %p_pwrlevel, i32 1
  %3 = ptrtoint ptr %pwrlevel.sroa.11.0.p_pwrlevel.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %pwrlevel.sroa.11.0.copyload.i = load i8, ptr %pwrlevel.sroa.11.0.p_pwrlevel.sroa_idx.i, align 1
  %eeprom_version.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 16
  %4 = ptrtoint ptr %eeprom_version.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %eeprom_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp6.i = icmp ult i8 %5, 2
  br i1 %cmp6.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %legacy_ht_txpowerdiff.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 61
  %6 = ptrtoint ptr %legacy_ht_txpowerdiff.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %legacy_ht_txpowerdiff.i, align 1
  %8 = and i8 %7, 15
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %txpwr_legacyhtdiff.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 44
  %conv12.i = zext i8 %chnl to i32
  %sub.i = add nsw i32 %conv12.i, -1
  %arrayidx13.i = getelementptr [59 x i8], ptr %txpwr_legacyhtdiff.i, i32 0, i32 %sub.i
  %9 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx13.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %conv16.sink.in.i = phi i8 [ %10, %if.else.i ], [ %pwrlevel.sroa.0.0.copyload.i, %if.then.i ]
  %conv15.sink.in.i = phi i8 [ %pwrlevel.sroa.0.0.copyload.i, %if.else.i ], [ %8, %if.then.i ]
  %conv15.sink.i = zext i8 %conv15.sink.in.i to i32
  %conv16.sink.i = zext i8 %conv16.sink.in.i to i32
  %add17.i = add nuw nsw i32 %conv15.sink.i, %conv16.sink.i
  %shl.i = shl i32 %add17.i, 24
  %shl19.i = shl nuw nsw i32 %add17.i, 8
  %or.i = mul nuw nsw i32 %add17.i, 65537
  %or20.i = or i32 %shl19.i, %shl.i
  %or21.i = or i32 %or20.i, %or.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp24.i = icmp ugt i8 %5, 1
  br i1 %cmp24.i, label %if.then26.i, label %if.end.i.if.end64.i_crit_edge

if.end.i.if.end64.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end64.i

if.then26.i:                                      ; preds = %if.end.i
  %current_chan_bw.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 5
  %11 = ptrtoint ptr %current_chan_bw.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %current_chan_bw.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp28.i = icmp eq i8 %12, 0
  br i1 %cmp28.i, label %for.cond31.preheader.i, label %if.then26.i.if.end64.i_crit_edge

if.then26.i.if.end64.i_crit_edge:                 ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end64.i

for.cond31.preheader.i:                           ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv38.i = zext i8 %chnl to i32
  %sub39.i = add nsw i32 %conv38.i, -1
  %arrayidx40.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 42, i32 0, i32 %sub39.i
  %13 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx40.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %14)
  %cmp42.i = icmp ult i8 %14, 8
  %sub53.neg.i = add i8 %14, -16
  %pwrlevel.sroa.0.0.v.i = select i1 %cmp42.i, i8 %14, i8 %sub53.neg.i
  %pwrlevel.sroa.0.0.i = add i8 %pwrlevel.sroa.0.0.v.i, %pwrlevel.sroa.0.0.copyload.i
  %arrayidx40.1.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 42, i32 1, i32 %sub39.i
  %15 = ptrtoint ptr %arrayidx40.1.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx40.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %16)
  %cmp42.1.i = icmp ult i8 %16, 8
  %add49.1.i = add i8 %16, %pwrlevel.sroa.11.0.copyload.i
  %sub57.1.i = add i8 %add49.1.i, -16
  %spec.select = select i1 %cmp42.1.i, i8 %add49.1.i, i8 %sub57.1.i
  br label %if.end64.i

if.end64.i:                                       ; preds = %for.cond31.preheader.i, %if.then26.i.if.end64.i_crit_edge, %if.end.i.if.end64.i_crit_edge
  %pwrlevel.sroa.11.1.i = phi i8 [ %pwrlevel.sroa.11.0.copyload.i, %if.then26.i.if.end64.i_crit_edge ], [ %pwrlevel.sroa.11.0.copyload.i, %if.end.i.if.end64.i_crit_edge ], [ %spec.select, %for.cond31.preheader.i ]
  %pwrlevel.sroa.0.1.i = phi i8 [ %pwrlevel.sroa.0.0.copyload.i, %if.then26.i.if.end64.i_crit_edge ], [ %pwrlevel.sroa.0.0.copyload.i, %if.end.i.if.end64.i_crit_edge ], [ %pwrlevel.sroa.0.0.i, %for.cond31.preheader.i ]
  %conv66.i = zext i8 %pwrlevel.sroa.0.1.i to i32
  %or72.i = mul nuw i32 %conv66.i, 16843009
  %eeprom_regulatory.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 54
  %17 = ptrtoint ptr %eeprom_regulatory.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %eeprom_regulatory.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %18)
  %cond.i = icmp eq i8 %18, 3
  br i1 %cond.i, label %sw.bb.i, label %if.end64.i._rtl92s_get_powerbase.exit_crit_edge

if.end64.i._rtl92s_get_powerbase.exit_crit_edge:  ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %_rtl92s_get_powerbase.exit

sw.bb.i:                                          ; preds = %if.end64.i
  %current_chan_bw78.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 5
  %19 = ptrtoint ptr %current_chan_bw78.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %current_chan_bw78.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp80.i = icmp eq i8 %20, 1
  br i1 %cmp80.i, label %if.then82.i, label %if.else102.i

if.then82.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  %pwrgroup_ht40.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 37
  %conv84.i = zext i8 %chnl to i32
  %sub85.i = add nsw i32 %conv84.i, -1
  %arrayidx86.i = getelementptr [59 x i8], ptr %pwrgroup_ht40.i, i32 0, i32 %sub85.i
  %arrayidx96.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 37, i32 1, i32 %sub85.i
  br label %sw.epilog.sink.split.i

if.else102.i:                                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  %pwrgroup_ht20.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 36
  %conv104.i = zext i8 %chnl to i32
  %sub105.i = add nsw i32 %conv104.i, -1
  %arrayidx106.i = getelementptr [59 x i8], ptr %pwrgroup_ht20.i, i32 0, i32 %sub105.i
  %arrayidx116.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 36, i32 1, i32 %sub105.i
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %if.else102.i, %if.then82.i
  %.pn.in = phi ptr [ %arrayidx86.i, %if.then82.i ], [ %arrayidx106.i, %if.else102.i ]
  %arrayidx96.sink.i = phi ptr [ %arrayidx96.i, %if.then82.i ], [ %arrayidx116.i, %if.else102.i ]
  %21 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load1_noabort(i32 %21)
  %.pn = load i8, ptr %.pn.in, align 1
  %finalpwr_idx.sroa.0.0 = add i8 %.pn, %pwrlevel.sroa.0.1.i
  %22 = ptrtoint ptr %arrayidx96.sink.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx96.sink.i, align 1
  %add100.i = add i8 %23, %pwrlevel.sroa.11.1.i
  %.pre = zext i8 %finalpwr_idx.sroa.0.0 to i32
  br label %_rtl92s_get_powerbase.exit

_rtl92s_get_powerbase.exit:                       ; preds = %sw.epilog.sink.split.i, %if.end64.i._rtl92s_get_powerbase.exit_crit_edge
  %conv134.i.pre-phi = phi i32 [ %conv66.i, %if.end64.i._rtl92s_get_powerbase.exit_crit_edge ], [ %.pre, %sw.epilog.sink.split.i ]
  %finalpwr_idx.sroa.8.0 = phi i8 [ %pwrlevel.sroa.11.1.i, %if.end64.i._rtl92s_get_powerbase.exit_crit_edge ], [ %add100.i, %sw.epilog.sink.split.i ]
  %finalpwr_idx.sroa.0.1 = phi i8 [ %pwrlevel.sroa.0.1.i, %if.end64.i._rtl92s_get_powerbase.exit_crit_edge ], [ %finalpwr_idx.sroa.0.0, %sw.epilog.sink.split.i ]
  %current_chan_bw123.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 5
  %24 = ptrtoint ptr %current_chan_bw123.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %current_chan_bw123.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %25)
  %cmp125.i = icmp eq i8 %25, 1
  %.str.5..str.6.i = select i1 %cmp125.i, ptr @.str.5, ptr @.str.6
  %conv136.i = zext i8 %finalpwr_idx.sroa.8.0 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 65536, i32 noundef 4, ptr noundef nonnull %.str.5..str.6.i, i32 noundef %conv134.i.pre-phi, i32 noundef %conv136.i) #4
  %26 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv.i, align 8
  %rf_type.i = getelementptr inbounds %struct.rtl_priv, ptr %27, i32 0, i32 14, i32 4
  %28 = ptrtoint ptr %rf_type.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %rf_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %29)
  %cmp.i = icmp eq i8 %29, 2
  br i1 %cmp.i, label %if.then.i12, label %_rtl92s_get_powerbase.exit._rtl92s_set_antennadiff.exit_crit_edge

_rtl92s_get_powerbase.exit._rtl92s_set_antennadiff.exit_crit_edge: ; preds = %_rtl92s_get_powerbase.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %_rtl92s_set_antennadiff.exit

if.then.i12:                                      ; preds = %_rtl92s_get_powerbase.exit
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i11 = sub i8 %finalpwr_idx.sroa.8.0, %finalpwr_idx.sroa.0.1
  %30 = tail call i8 @llvm.smin.i8(i8 %sub.i11, i8 7) #4
  %31 = tail call i8 @llvm.smax.i8(i8 %30, i8 -8) #4
  %conv16.i = sext i8 %31 to i32
  %and.i = and i32 %conv16.i, 15
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %27, i64 noundef 65536, i32 noundef 4, ptr noundef nonnull @.str.7, i32 noundef %conv16.i, i32 noundef %and.i) #4
  %conv20.i = trunc i32 %and.i to i8
  br label %_rtl92s_set_antennadiff.exit

_rtl92s_set_antennadiff.exit:                     ; preds = %if.then.i12, %_rtl92s_get_powerbase.exit._rtl92s_set_antennadiff.exit_crit_edge
  %ant_pwr_diff.0.i = phi i8 [ %conv20.i, %if.then.i12 ], [ 0, %_rtl92s_get_powerbase.exit._rtl92s_set_antennadiff.exit_crit_edge ]
  %antenna_txpwdiff.i = getelementptr inbounds %struct.rtl_priv, ptr %27, i32 0, i32 17, i32 53
  %arrayidx22.i = getelementptr %struct.rtl_priv, ptr %27, i32 0, i32 17, i32 53, i32 2
  %32 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %arrayidx22.i, align 2
  %arrayidx24.i = getelementptr %struct.rtl_priv, ptr %27, i32 0, i32 17, i32 53, i32 1
  %33 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %arrayidx24.i, align 1
  %34 = ptrtoint ptr %antenna_txpwdiff.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %ant_pwr_diff.0.i, ptr %antenna_txpwdiff.i, align 4
  %conv36.i = zext i8 %ant_pwr_diff.0.i to i32
  %35 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %priv.i, align 8
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %36, i32 0, i32 32
  %37 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cfg.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops.i.i, align 4
  %set_bbreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %40, i32 0, i32 46
  %41 = ptrtoint ptr %set_bbreg.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %set_bbreg.i.i, align 4
  tail call void %42(ptr noundef %hw, i32 noundef 2060, i32 noundef 1048320, i32 noundef %conv36.i) #4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %27, i64 noundef 65536, i32 noundef 4, ptr noundef nonnull @.str.8, i32 noundef 2060, i32 noundef %conv36.i) #4
  %conv81.i = zext i8 %chnl to i32
  %sub82.i = add nsw i32 %conv81.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %chnl)
  %cmp22.i = icmp ult i8 %chnl, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %chnl)
  %cmp30.i = icmp ult i8 %chnl, 9
  %spec.select273.i = select i1 %cmp30.i, i32 1, i32 2
  %chnlgroup.0.i = select i1 %cmp22.i, i32 0, i32 %spec.select273.i
  br label %for.body

for.body:                                         ; preds = %_rtl92s_write_ofdm_powerreg.exit.for.body_crit_edge, %_rtl92s_set_antennadiff.exit
  %indvars.iv = phi i32 [ 0, %_rtl92s_set_antennadiff.exit ], [ %indvars.iv.next, %_rtl92s_write_ofdm_powerreg.exit.for.body_crit_edge ]
  %43 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %priv.i, align 8
  %eeprom_regulatory.i14 = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 17, i32 54
  %45 = ptrtoint ptr %eeprom_regulatory.i14 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %eeprom_regulatory.i14, align 1
  %47 = zext i8 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values)
  switch i8 %46, label %sw.default.i [
    i8 0, label %sw.bb.i16
    i8 1, label %sw.bb6.i
    i8 2, label %sw.bb61.i
    i8 3, label %sw.bb69.i
  ]

sw.bb.i16:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %mcs_offset.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 14, i32 41
  %arrayidx3.i = getelementptr [16 x i32], ptr %mcs_offset.i, i32 0, i32 %indvars.iv
  %48 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %indvars.iv)
  %cmp.i15 = icmp ult i32 %indvars.iv, 2
  %pwrbase0.pwrbase1.i = select i1 %cmp.i15, i32 %or21.i, i32 %or72.i
  %add.i = add i32 %49, %pwrbase0.pwrbase1.i
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %44, i64 noundef 65536, i32 noundef 4, ptr noundef nonnull @.str.9, i32 noundef %add.i) #4
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %for.body
  %current_chan_bw.i17 = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 14, i32 5
  %50 = ptrtoint ptr %current_chan_bw.i17 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %current_chan_bw.i17, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %51)
  %cmp8.i = icmp eq i8 %51, 1
  br i1 %cmp8.i, label %if.then.i18, label %if.else.i19

if.then.i18:                                      ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %indvars.iv)
  %cmp11.i = icmp ult i32 %indvars.iv, 2
  %pwrbase0.pwrbase1268.i = select i1 %cmp11.i, i32 %or21.i, i32 %or72.i
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %44, i64 noundef 65536, i32 noundef 4, ptr noundef nonnull @.str.10, i32 noundef %pwrbase0.pwrbase1268.i) #4
  br label %sw.epilog.i

if.else.i19:                                      ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #6
  %pwrgroup_cnt.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 14, i32 38
  %52 = ptrtoint ptr %pwrgroup_cnt.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %pwrgroup_cnt.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %53)
  %cmp18.i = icmp ugt i8 %53, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %53)
  %cmp42.i20 = icmp eq i8 %53, 4
  %inc.i = zext i1 %cmp42.i20 to i32
  %spec.select.i = add nuw nsw i32 %chnlgroup.0.i, %inc.i
  %chnlgroup.1.i = select i1 %cmp18.i, i32 %spec.select.i, i32 0
  %arrayidx51.i = getelementptr %struct.rtl_priv, ptr %44, i32 0, i32 14, i32 41, i32 %chnlgroup.1.i, i32 %indvars.iv
  %54 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx51.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %indvars.iv)
  %cmp53.i = icmp ult i32 %indvars.iv, 2
  %pwrbase0.pwrbase1269.i = select i1 %cmp53.i, i32 %or21.i, i32 %or72.i
  %add59.i = add i32 %55, %pwrbase0.pwrbase1269.i
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %44, i64 noundef 65536, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef %add59.i) #4
  br label %sw.epilog.i

sw.bb61.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %indvars.iv)
  %cmp63.i = icmp ult i32 %indvars.iv, 2
  %pwrbase0.pwrbase1270.i = select i1 %cmp63.i, i32 %or21.i, i32 %or72.i
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %44, i64 noundef 65536, i32 noundef 4, ptr noundef nonnull @.str.12, i32 noundef %pwrbase0.pwrbase1270.i) #4
  br label %sw.epilog.i

sw.bb69.i:                                        ; preds = %for.body
  %current_chan_bw70.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 14, i32 5
  %56 = ptrtoint ptr %current_chan_bw70.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %current_chan_bw70.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %57)
  %cmp72.i = icmp eq i8 %57, 1
  %pwrgroup_ht20.i23 = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 17, i32 36
  %arrayidx83.i = getelementptr [59 x i8], ptr %pwrgroup_ht20.i23, i32 0, i32 %sub82.i
  %pwrgroup_ht40.i21 = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 17, i32 37
  %arrayidx77.i = getelementptr [59 x i8], ptr %pwrgroup_ht40.i21, i32 0, i32 %sub82.i
  %arrayidx83.sink.i = select i1 %cmp72.i, ptr %arrayidx77.i, ptr %arrayidx83.i
  %.str.14.sink.i = select i1 %cmp72.i, ptr @.str.13, ptr @.str.14
  %58 = ptrtoint ptr %arrayidx83.sink.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx83.sink.i, align 1
  %conv84.i24 = zext i8 %59 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %44, i64 noundef 65536, i32 noundef 4, ptr noundef nonnull %.str.14.sink.i, i32 noundef %conv84.i24) #4
  %mcs_offset89.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 14, i32 41
  %arrayidx93.i = getelementptr [16 x i32], ptr %mcs_offset89.i, i32 0, i32 %indvars.iv
  %60 = ptrtoint ptr %arrayidx93.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx93.i, align 4
  %62 = ptrtoint ptr %current_chan_bw70.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %current_chan_bw70.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %63)
  %cmp102.i = icmp eq i8 %63, 1
  %and.i25 = and i32 %61, 127
  %conv97.i = trunc i32 %and.i25 to i8
  br i1 %cmp102.i, label %if.then104.i, label %if.else125.i

if.then104.i:                                     ; preds = %sw.bb69.i
  call void @__sanitizer_cov_trace_pc() #6
  %64 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx77.i, align 1
  %conv113.i = zext i8 %65 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i25, i32 %conv113.i)
  %cmp114.i = icmp ugt i32 %and.i25, %conv113.i
  %spec.select308.i = select i1 %cmp114.i, i8 %65, i8 %conv97.i
  %and.1276.i = lshr i32 %61, 8
  %shr.1277.i = and i32 %and.1276.i, 127
  %conv97.1278.i = trunc i32 %shr.1277.i to i8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.1277.i, i32 %conv113.i)
  %cmp114.1.i = icmp ugt i32 %shr.1277.i, %conv113.i
  %pwrdiff_limit.sroa.7.0.ph.i = select i1 %cmp114.1.i, i8 %65, i8 %conv97.1278.i
  %and.2285.i = lshr i32 %61, 16
  %shr.2286.i = and i32 %and.2285.i, 127
  %conv97.2287.i = trunc i32 %shr.2286.i to i8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.2286.i, i32 %conv113.i)
  %cmp114.2.i = icmp ugt i32 %shr.2286.i, %conv113.i
  %pwrdiff_limit.sroa.12.0.ph.i = select i1 %cmp114.2.i, i8 %65, i8 %conv97.2287.i
  %and.3297.i = lshr i32 %61, 24
  %shr.3298.i = and i32 %and.3297.i, 127
  %conv97.3299.i = trunc i32 %shr.3298.i to i8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.3298.i, i32 %conv113.i)
  %cmp114.3.i = icmp ugt i32 %shr.3298.i, %conv113.i
  %spec.select310.i = select i1 %cmp114.3.i, i8 %65, i8 %conv97.3299.i
  br label %for.inc.3.i

if.else125.i:                                     ; preds = %sw.bb69.i
  call void @__sanitizer_cov_trace_pc() #6
  %66 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx83.i, align 1
  %conv134.i26 = zext i8 %67 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i25, i32 %conv134.i26)
  %cmp135.i = icmp ugt i32 %and.i25, %conv134.i26
  %spec.select309.i = select i1 %cmp135.i, i8 %67, i8 %conv97.i
  %and.1.i = lshr i32 %61, 8
  %shr.1.i = and i32 %and.1.i, 127
  %conv97.1.i = trunc i32 %shr.1.i to i8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.1.i, i32 %conv134.i26)
  %cmp135.1.i = icmp ugt i32 %shr.1.i, %conv134.i26
  %pwrdiff_limit.sroa.7.0.i = select i1 %cmp135.1.i, i8 %67, i8 %conv97.1.i
  %and.2.i = lshr i32 %61, 16
  %shr.2.i = and i32 %and.2.i, 127
  %conv97.2.i = trunc i32 %shr.2.i to i8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.2.i, i32 %conv134.i26)
  %cmp135.2.i = icmp ugt i32 %shr.2.i, %conv134.i26
  %pwrdiff_limit.sroa.12.0.i = select i1 %cmp135.2.i, i8 %67, i8 %conv97.2.i
  %and.3.i = lshr i32 %61, 24
  %shr.3.i = and i32 %and.3.i, 127
  %conv97.3.i = trunc i32 %shr.3.i to i8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.3.i, i32 %conv134.i26)
  %cmp135.3.i = icmp ugt i32 %shr.3.i, %conv134.i26
  %spec.select311.i = select i1 %cmp135.3.i, i8 %67, i8 %conv97.3.i
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.else125.i, %if.then104.i
  %pwrdiff_limit.sroa.12.0304.i = phi i8 [ %pwrdiff_limit.sroa.12.0.i, %if.else125.i ], [ %pwrdiff_limit.sroa.12.0.ph.i, %if.then104.i ]
  %pwrdiff_limit.sroa.0.0279288302.i = phi i8 [ %spec.select309.i, %if.else125.i ], [ %spec.select308.i, %if.then104.i ]
  %pwrdiff_limit.sroa.7.0290300.i = phi i8 [ %pwrdiff_limit.sroa.7.0.i, %if.else125.i ], [ %pwrdiff_limit.sroa.7.0.ph.i, %if.then104.i ]
  %pwrdiff_limit.sroa.17.0.i = phi i8 [ %spec.select311.i, %if.else125.i ], [ %spec.select310.i, %if.then104.i ]
  %conv149.i = zext i8 %pwrdiff_limit.sroa.17.0.i to i32
  %shl150.i = shl nuw i32 %conv149.i, 24
  %conv152.i = zext i8 %pwrdiff_limit.sroa.12.0304.i to i32
  %shl153.i = shl nuw nsw i32 %conv152.i, 16
  %or.i27 = or i32 %shl150.i, %shl153.i
  %conv155.i = zext i8 %pwrdiff_limit.sroa.7.0290300.i to i32
  %shl156.i = shl nuw nsw i32 %conv155.i, 8
  %or157.i = or i32 %or.i27, %shl156.i
  %conv159.i = zext i8 %pwrdiff_limit.sroa.0.0279288302.i to i32
  %or160.i = or i32 %or157.i, %conv159.i
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %44, i64 noundef 65536, i32 noundef 4, ptr noundef nonnull @.str.15, i32 noundef %or160.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %indvars.iv)
  %cmp162.i = icmp ult i32 %indvars.iv, 2
  %pwrbase0.pwrbase1271.i = select i1 %cmp162.i, i32 %or21.i, i32 %or72.i
  %add168.i = add i32 %or160.i, %pwrbase0.pwrbase1271.i
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %44, i64 noundef 65536, i32 noundef 4, ptr noundef nonnull @.str.16, i32 noundef %add168.i) #4
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %mcs_offset169.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 14, i32 41
  %arrayidx173.i = getelementptr [16 x i32], ptr %mcs_offset169.i, i32 0, i32 %indvars.iv
  %68 = ptrtoint ptr %arrayidx173.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx173.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %indvars.iv)
  %cmp175.i = icmp ult i32 %indvars.iv, 2
  %pwrbase0.pwrbase1272.i = select i1 %cmp175.i, i32 %or21.i, i32 %or72.i
  %add181.i = add i32 %69, %pwrbase0.pwrbase1272.i
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %44, i64 noundef 65536, i32 noundef 4, ptr noundef nonnull @.str.9, i32 noundef %add181.i) #4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %for.inc.3.i, %sw.bb61.i, %if.else.i19, %if.then.i18, %sw.bb.i16
  %writeval.0.i = phi i32 [ %add181.i, %sw.default.i ], [ %add168.i, %for.inc.3.i ], [ %pwrbase0.pwrbase1270.i, %sw.bb61.i ], [ %pwrbase0.pwrbase1268.i, %if.then.i18 ], [ %add59.i, %if.else.i19 ], [ %add.i, %sw.bb.i16 ]
  %dynamic_txhighpower_lvl.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 15, i32 29
  %70 = ptrtoint ptr %dynamic_txhighpower_lvl.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %dynamic_txhighpower_lvl.i, align 1
  %72 = zext i8 %71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %71, label %if.end194.fold.split.i [
    i8 1, label %sw.epilog.i._rtl92s_get_txpower_writeval_byregulatory.exit_crit_edge
    i8 2, label %if.then192.i
  ]

sw.epilog.i._rtl92s_get_txpower_writeval_byregulatory.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %_rtl92s_get_txpower_writeval_byregulatory.exit

if.then192.i:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %_rtl92s_get_txpower_writeval_byregulatory.exit

if.end194.fold.split.i:                           ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %_rtl92s_get_txpower_writeval_byregulatory.exit

_rtl92s_get_txpower_writeval_byregulatory.exit:   ; preds = %if.end194.fold.split.i, %if.then192.i, %sw.epilog.i._rtl92s_get_txpower_writeval_byregulatory.exit_crit_edge
  %writeval.1.i = phi i32 [ 0, %if.then192.i ], [ 269488144, %sw.epilog.i._rtl92s_get_txpower_writeval_byregulatory.exit_crit_edge ], [ %writeval.0.i, %if.end194.fold.split.i ]
  %73 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %priv.i, align 8
  %rf_type.i29 = getelementptr inbounds %struct.rtl_priv, ptr %74, i32 0, i32 14, i32 4
  %75 = ptrtoint ptr %rf_type.i29 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %rf_type.i29, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %76)
  %cmp.i30 = icmp eq i8 %76, 2
  br i1 %cmp.i30, label %if.then.i32, label %for.inc.2.i

if.then.i32:                                      ; preds = %_rtl92s_get_txpower_writeval_byregulatory.exit
  %antenna_txpwdiff.i31 = getelementptr inbounds %struct.rtl_priv, ptr %74, i32 0, i32 17, i32 53
  %77 = ptrtoint ptr %antenna_txpwdiff.i31 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %antenna_txpwdiff.i31, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %78)
  %cmp4.i = icmp ugt i8 %78, 7
  br i1 %cmp4.i, label %if.then38.3.i, label %if.else49.i

if.else49.i:                                      ; preds = %if.then.i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %cmp51.not109.i = icmp eq i8 %78, 0
  %79 = trunc i32 %writeval.1.i to i8
  %conv19110.i = and i8 %79, 127
  %conv23111.i = and i32 %writeval.1.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv23111.i)
  %cmp24.not112.i = icmp eq i32 %conv23111.i, 0
  %spec.select113.i = select i1 %cmp24.not112.i, i8 %conv19110.i, i8 63
  br i1 %cmp51.not109.i, label %if.else49.3.thread.i, label %if.then53.3.i

if.else49.3.thread.i:                             ; preds = %if.else49.i
  call void @__sanitizer_cov_trace_pc() #6
  %and.1149165176.i = lshr i32 %writeval.1.i, 8
  %80 = trunc i32 %and.1149165176.i to i8
  %conv19.1150166177.i = and i8 %80, 127
  %81 = and i32 %writeval.1.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp24.not.1151167178.i = icmp eq i32 %81, 0
  %spec.select.1152168179.i = select i1 %cmp24.not.1151167178.i, i8 %conv19.1150166177.i, i8 63
  %and.2186205218.i = lshr i32 %writeval.1.i, 16
  %82 = trunc i32 %and.2186205218.i to i8
  %conv19.2187206219.i = and i8 %82, 127
  %83 = and i32 %writeval.1.i, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp24.not.2188207220.i = icmp eq i32 %83, 0
  %spec.select.2189208221.i = select i1 %cmp24.not.2188207220.i, i8 %conv19.2187206219.i, i8 63
  %and.3229251264.i = lshr i32 %writeval.1.i, 24
  %84 = trunc i32 %and.3229251264.i to i8
  %conv19.3230252265.i = and i8 %84, 127
  %85 = and i32 %writeval.1.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp24.not.3231253266.i = icmp eq i32 %85, 0
  %spec.select.3232254267.i = select i1 %cmp24.not.3231253266.i, i8 %conv19.3230252265.i, i8 63
  br label %_rtl92s_write_ofdm_powerreg.exit

for.inc.2.i:                                      ; preds = %_rtl92s_get_txpower_writeval_byregulatory.exit
  call void @__sanitizer_cov_trace_pc() #6
  %86 = trunc i32 %writeval.1.i to i8
  %conv19.i = and i8 %86, 127
  %conv23.i = and i32 %writeval.1.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv23.i)
  %cmp24.not.i = icmp eq i32 %conv23.i, 0
  %spec.select.i33 = select i1 %cmp24.not.i, i8 %conv19.i, i8 63
  %and.1.i34 = lshr i32 %writeval.1.i, 8
  %87 = trunc i32 %and.1.i34 to i8
  %conv19.1.i = and i8 %87, 127
  %88 = and i32 %writeval.1.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp24.not.1.i = icmp eq i32 %88, 0
  %spec.select.1.i = select i1 %cmp24.not.1.i, i8 %conv19.1.i, i8 63
  %and.2.i35 = lshr i32 %writeval.1.i, 16
  %89 = trunc i32 %and.2.i35 to i8
  %conv19.2.i = and i8 %89, 127
  %90 = and i32 %writeval.1.i, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp24.not.2.i = icmp eq i32 %90, 0
  %spec.select.2.i = select i1 %cmp24.not.2.i, i8 %conv19.2.i, i8 63
  %and.3.i36 = lshr i32 %writeval.1.i, 24
  %91 = trunc i32 %and.3.i36 to i8
  %conv19.3.i = and i8 %91, 127
  %92 = and i32 %writeval.1.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp24.not.3.i = icmp eq i32 %92, 0
  %spec.select.3.i = select i1 %cmp24.not.3.i, i8 %conv19.3.i, i8 63
  br label %_rtl92s_write_ofdm_powerreg.exit

if.then53.3.i:                                    ; preds = %if.else49.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub10.i = sub nuw nsw i8 63, %78
  %93 = tail call i8 @llvm.umin.i8(i8 %spec.select113.i, i8 %sub10.i) #4
  %and.1149165.i = lshr i32 %writeval.1.i, 8
  %94 = trunc i32 %and.1149165.i to i8
  %conv19.1150166.i = and i8 %94, 127
  %95 = and i32 %writeval.1.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp24.not.1151167.i = icmp eq i32 %95, 0
  %spec.select.1152168.i = select i1 %cmp24.not.1151167.i, i8 %conv19.1150166.i, i8 63
  %96 = tail call i8 @llvm.umin.i8(i8 %spec.select.1152168.i, i8 %sub10.i) #4
  %and.2186205.i = lshr i32 %writeval.1.i, 16
  %97 = trunc i32 %and.2186205.i to i8
  %conv19.2187206.i = and i8 %97, 127
  %98 = and i32 %writeval.1.i, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp24.not.2188207.i = icmp eq i32 %98, 0
  %spec.select.2189208.i = select i1 %cmp24.not.2188207.i, i8 %conv19.2187206.i, i8 63
  %99 = tail call i8 @llvm.umin.i8(i8 %spec.select.2189208.i, i8 %sub10.i) #4
  %and.3229251.i = lshr i32 %writeval.1.i, 24
  %100 = trunc i32 %and.3229251.i to i8
  %conv19.3230252.i = and i8 %100, 127
  %101 = and i32 %writeval.1.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp24.not.3231253.i = icmp eq i32 %101, 0
  %spec.select.3232254.i = select i1 %cmp24.not.3231253.i, i8 %conv19.3230252.i, i8 63
  %102 = tail call i8 @llvm.umin.i8(i8 %spec.select.3232254.i, i8 %sub10.i) #4
  br label %_rtl92s_write_ofdm_powerreg.exit

if.then38.3.i:                                    ; preds = %if.then.i32
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i37 = sub i8 16, %78
  %103 = trunc i32 %writeval.1.i to i8
  %conv19110135.i = and i8 %103, 127
  %conv23111136.i = and i32 %writeval.1.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv23111136.i)
  %cmp24.not112137.i = icmp eq i32 %conv23111136.i, 0
  %spec.select113138.i = select i1 %cmp24.not112137.i, i8 %conv19110135.i, i8 63
  %104 = tail call i8 @llvm.umax.i8(i8 %spec.select113138.i, i8 %sub.i37) #4
  %and.1149.i = lshr i32 %writeval.1.i, 8
  %105 = trunc i32 %and.1149.i to i8
  %conv19.1150.i = and i8 %105, 127
  %106 = and i32 %writeval.1.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp24.not.1151.i = icmp eq i32 %106, 0
  %spec.select.1152.i = select i1 %cmp24.not.1151.i, i8 %conv19.1150.i, i8 63
  %107 = tail call i8 @llvm.umax.i8(i8 %spec.select.1152.i, i8 %sub.i37) #4
  %and.2186.i = lshr i32 %writeval.1.i, 16
  %108 = trunc i32 %and.2186.i to i8
  %conv19.2187.i = and i8 %108, 127
  %109 = and i32 %writeval.1.i, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %cmp24.not.2188.i = icmp eq i32 %109, 0
  %spec.select.2189.i = select i1 %cmp24.not.2188.i, i8 %conv19.2187.i, i8 63
  %110 = tail call i8 @llvm.umax.i8(i8 %spec.select.2189.i, i8 %sub.i37) #4
  %and.3229.i = lshr i32 %writeval.1.i, 24
  %111 = trunc i32 %and.3229.i to i8
  %conv19.3230.i = and i8 %111, 127
  %112 = and i32 %writeval.1.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %cmp24.not.3231.i = icmp eq i32 %112, 0
  %spec.select.3232.i = select i1 %cmp24.not.3231.i, i8 %conv19.3230.i, i8 63
  %113 = tail call i8 @llvm.umax.i8(i8 %spec.select.3232.i, i8 %sub.i37) #4
  br label %_rtl92s_write_ofdm_powerreg.exit

_rtl92s_write_ofdm_powerreg.exit:                 ; preds = %if.then38.3.i, %if.then53.3.i, %for.inc.2.i, %if.else49.3.thread.i
  %rfa_pwr.sroa.12.0241.i = phi i8 [ %110, %if.then38.3.i ], [ %99, %if.then53.3.i ], [ %spec.select.2.i, %for.inc.2.i ], [ %spec.select.2189208221.i, %if.else49.3.thread.i ]
  %rfa_pwr.sroa.0.0157190235.i = phi i8 [ %104, %if.then38.3.i ], [ %93, %if.then53.3.i ], [ %spec.select.i33, %for.inc.2.i ], [ %spec.select113.i, %if.else49.3.thread.i ]
  %rfa_pwr.sroa.7.0196233.i = phi i8 [ %107, %if.then38.3.i ], [ %96, %if.then53.3.i ], [ %spec.select.1.i, %for.inc.2.i ], [ %spec.select.1152168179.i, %if.else49.3.thread.i ]
  %rfa_pwr.sroa.17.0.i = phi i8 [ %113, %if.then38.3.i ], [ %102, %if.then53.3.i ], [ %spec.select.3.i, %for.inc.2.i ], [ %spec.select.3232254267.i, %if.else49.3.thread.i ]
  %conv68.i = zext i8 %rfa_pwr.sroa.17.0.i to i32
  %shl69.i = shl nuw i32 %conv68.i, 24
  %conv71.i = zext i8 %rfa_pwr.sroa.12.0241.i to i32
  %shl72.i = shl nuw nsw i32 %conv71.i, 16
  %or.i38 = or i32 %shl69.i, %shl72.i
  %conv74.i = zext i8 %rfa_pwr.sroa.7.0196233.i to i32
  %shl75.i = shl nuw nsw i32 %conv74.i, 8
  %or76.i = or i32 %or.i38, %shl75.i
  %conv78.i = zext i8 %rfa_pwr.sroa.0.0157190235.i to i32
  %or79.i = or i32 %or76.i, %conv78.i
  %arrayidx81.i = getelementptr [6 x i16], ptr @__const._rtl92s_write_ofdm_powerreg.regoffset, i32 0, i32 %indvars.iv
  %114 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %arrayidx81.i, align 2
  %conv82.i = zext i16 %115 to i32
  %cfg.i.i39 = getelementptr inbounds %struct.rtl_priv, ptr %74, i32 0, i32 32
  %116 = ptrtoint ptr %cfg.i.i39 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %cfg.i.i39, align 8
  %ops.i.i40 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %117, i32 0, i32 4
  %118 = ptrtoint ptr %ops.i.i40 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ops.i.i40, align 4
  %set_bbreg.i.i41 = getelementptr inbounds %struct.rtl_hal_ops, ptr %119, i32 0, i32 46
  %120 = ptrtoint ptr %set_bbreg.i.i41 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %set_bbreg.i.i41, align 4
  tail call void %121(ptr noundef %hw, i32 noundef %conv82.i, i32 noundef 2139062143, i32 noundef %or79.i) #4
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 6
  br i1 %exitcond.not, label %for.end, label %_rtl92s_write_ofdm_powerreg.exit.for.body_crit_edge

_rtl92s_write_ofdm_powerreg.exit.for.body_crit_edge: ; preds = %_rtl92s_write_ofdm_powerreg.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %_rtl92s_write_ofdm_powerreg.exit
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92s_phy_rf6052_set_ccktxpower(ptr noundef %hw, i8 noundef zeroext %pwrlevel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %eeprom_version = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 16
  %2 = ptrtoint ptr %eeprom_version to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %eeprom_version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp = icmp ugt i8 %3, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %txpwr_safetyflag = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 51
  %4 = ptrtoint ptr %txpwr_safetyflag to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %txpwr_safetyflag, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp5 = icmp eq i8 %5, 1
  br i1 %cmp5, label %land.lhs.true.if.then_crit_edge, label %land.lhs.true11

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

land.lhs.true11:                                  ; preds = %land.lhs.true
  %eeprom_regulatory = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 54
  %6 = ptrtoint ptr %eeprom_regulatory to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %eeprom_regulatory, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp13.not = icmp eq i8 %7, 0
  br i1 %cmp13.not, label %land.lhs.true11.if.end_crit_edge, label %land.lhs.true11.if.then_crit_edge

land.lhs.true11.if.then_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

land.lhs.true11.if.end_crit_edge:                 ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %land.lhs.true11.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true11.if.end_crit_edge, %entry.if.end_crit_edge
  %dont_inc_cck_or_turboscanoff.0.off0 = phi i8 [ %pwrlevel, %if.then ], [ 63, %land.lhs.true11.if.end_crit_edge ], [ 63, %entry.if.end_crit_edge ]
  %act_scanning = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 20
  %8 = ptrtoint ptr %act_scanning to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %act_scanning, align 2, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.else, label %if.end.if.end34_crit_edge

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34

if.else:                                          ; preds = %if.end
  %dynamic_txhighpower_lvl = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 29
  %10 = ptrtoint ptr %dynamic_txhighpower_lvl to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dynamic_txhighpower_lvl, align 1
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %11, label %if.end34.fold.split [
    i8 1, label %if.else.if.end34_crit_edge
    i8 2, label %if.then31
  ]

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34

if.then31:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34

if.end34.fold.split:                              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34

if.end34:                                         ; preds = %if.end34.fold.split, %if.then31, %if.else.if.end34_crit_edge, %if.end.if.end34_crit_edge
  %txagc.0.shrunk = phi i8 [ 0, %if.then31 ], [ 16, %if.else.if.end34_crit_edge ], [ %pwrlevel, %if.end34.fold.split ], [ %dont_inc_cck_or_turboscanoff.0.off0, %if.end.if.end34_crit_edge ]
  %13 = tail call i8 @llvm.umin.i8(i8 %txagc.0.shrunk, i8 63)
  %14 = zext i8 %13 to i32
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %15 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i, align 4
  %set_bbreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %18, i32 0, i32 46
  %19 = ptrtoint ptr %set_bbreg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %set_bbreg.i, align 4
  tail call void %20(ptr noundef %hw, i32 noundef 3592, i32 noundef 32512, i32 noundef %14) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl92s_phy_rf6052_config(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %phy = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14
  %num_total_rfpath = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 58
  %2 = ptrtoint ptr %num_total_rfpath to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_total_rfpath, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp80.not = icmp eq i8 %3, 0
  br i1 %cmp80.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %u4reg_val.081 = phi i32 [ %u4reg_val.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x %struct.bb_reg_def], ptr %phy, i32 0, i32 %indvars.iv
  %4 = trunc i32 %indvars.iv to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %4)
  %5 = icmp ult i8 %4, 4
  br i1 %5, label %switch.lookup, label %for.body.sw.epilog_crit_edge

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

switch.lookup:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %sext = shl i32 %indvars.iv, 24
  %6 = ashr exact i32 %sext, 24
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.rtl92s_phy_rf6052_config, i32 0, i32 %6
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %call6 = tail call i32 @rtl92s_phy_query_bb_reg(ptr noundef %hw, i32 noundef %9, i32 noundef %switch.load) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %for.body.sw.epilog_crit_edge
  %u4reg_val.1 = phi i32 [ %u4reg_val.081, %for.body.sw.epilog_crit_edge ], [ %call6, %switch.lookup ]
  %rfintfe = getelementptr [4 x %struct.bb_reg_def], ptr %phy, i32 0, i32 %indvars.iv, i32 3
  %10 = ptrtoint ptr %rfintfe to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rfintfe, align 4
  tail call void @rtl92s_phy_set_bb_reg(ptr noundef %hw, i32 noundef %11, i32 noundef 1048576, i32 noundef 1) #4
  %rfintfo = getelementptr [4 x %struct.bb_reg_def], ptr %phy, i32 0, i32 %indvars.iv, i32 2
  %12 = ptrtoint ptr %rfintfo to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rfintfo, align 4
  tail call void @rtl92s_phy_set_bb_reg(ptr noundef %hw, i32 noundef %13, i32 noundef 16, i32 noundef 1) #4
  %rfhssi_para2 = getelementptr [4 x %struct.bb_reg_def], ptr %phy, i32 0, i32 %indvars.iv, i32 8
  %14 = ptrtoint ptr %rfhssi_para2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rfhssi_para2, align 4
  tail call void @rtl92s_phy_set_bb_reg(ptr noundef %hw, i32 noundef %15, i32 noundef 1024, i32 noundef 0) #4
  %16 = ptrtoint ptr %rfhssi_para2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rfhssi_para2, align 4
  tail call void @rtl92s_phy_set_bb_reg(ptr noundef %hw, i32 noundef %17, i32 noundef 2048, i32 noundef 0) #4
  %18 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %4, label %sw.epilog.for.inc_crit_edge [
    i8 0, label %sw.epilog23
    i8 1, label %sw.bb21
    i8 3, label %sw.epilog.for.inc.sink.split_crit_edge
    i8 2, label %sw.epilog23.thread74
  ]

sw.epilog.for.inc.sink.split_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.sink.split

sw.epilog.for.inc_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

sw.bb21:                                          ; preds = %sw.epilog
  %call14 = tail call zeroext i8 @rtl92s_phy_config_rf(ptr noundef %hw, i32 noundef %indvars.iv) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call14)
  %tobool15.not = icmp eq i8 %call14, 0
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  tail call void @rtl92s_phy_set_bb_reg(ptr noundef %hw, i32 noundef %20, i32 noundef 1048576, i32 noundef %u4reg_val.1) #4
  br i1 %tobool15.not, label %sw.bb21.do.end_crit_edge, label %sw.bb21.for.inc_crit_edge

sw.bb21.for.inc_crit_edge:                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

sw.bb21.do.end_crit_edge:                         ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

sw.epilog23.thread74:                             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.sink.split

sw.epilog23:                                      ; preds = %sw.epilog
  %call11 = tail call zeroext i8 @rtl92s_phy_config_rf(ptr noundef %hw, i32 noundef %indvars.iv) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call11)
  %tobool.not = icmp eq i8 %call11, 0
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  tail call void @rtl92s_phy_set_bb_reg(ptr noundef %hw, i32 noundef %22, i32 noundef 16, i32 noundef %u4reg_val.1) #4
  br i1 %tobool.not, label %sw.epilog23.do.end_crit_edge, label %sw.epilog23.for.inc_crit_edge

sw.epilog23.for.inc_crit_edge:                    ; preds = %sw.epilog23
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

sw.epilog23.do.end_crit_edge:                     ; preds = %sw.epilog23
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %sw.epilog23.do.end_crit_edge, %sw.bb21.do.end_crit_edge
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %indvars.iv) #7
  br label %cleanup

for.inc.sink.split:                               ; preds = %sw.epilog23.thread74, %sw.epilog.for.inc.sink.split_crit_edge
  %.sink89 = phi i32 [ 16, %sw.epilog23.thread74 ], [ 1048576, %sw.epilog.for.inc.sink.split_crit_edge ]
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx, align 4
  tail call void @rtl92s_phy_set_bb_reg(ptr noundef %hw, i32 noundef %24, i32 noundef %.sink89, i32 noundef %u4reg_val.1) #4
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %sw.epilog23.for.inc_crit_edge, %sw.bb21.for.inc_crit_edge, %sw.epilog.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %25 = ptrtoint ptr %num_total_rfpath to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %num_total_rfpath, align 4
  %27 = zext i8 %26 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %27
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %cmp78 = phi i1 [ false, %do.end ], [ true, %entry.cleanup_crit_edge ], [ true, %for.inc.cleanup_crit_edge ]
  ret i1 %cmp78
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl92s_phy_query_bb_reg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92s_phy_set_bb_reg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtl92s_phy_config_rf(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92s_phy_rf6052_set_bandwidth(ptr noundef %hw, i8 noundef zeroext %bandwidth) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = zext i8 %bandwidth to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %bandwidth, label %do.end [
    i8 0, label %sw.bb
    i8 1, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
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
  tail call void %12(ptr noundef %hw, i32 noundef 0, i32 noundef 24, i32 noundef 1048575, i32 noundef %or) #4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
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
  tail call void %22(ptr noundef %hw, i32 noundef 0, i32 noundef 24, i32 noundef 1048575, i32 noundef %and8) #4
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv = zext i8 %bandwidth to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %conv) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb5, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.smin.i8(i8, i8) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.smax.i8(i8, i8) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/rf.c", i32 473, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @rtl92s_phy_rf6052_config._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @rtl92s_phy_rf6052_config._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/rf.c", i32 504, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @rtl92s_phy_rf6052_set_bandwidth._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @rtl92s_phy_rf6052_set_bandwidth._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/rf.c", i32 98, i32 3}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/rf.c", i32 102, i32 3}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/rf.c", i32 127, i32 3}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/rf.c", i32 146, i32 2}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/rf.c", i32 172, i32 3}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/rf.c", i32 181, i32 4}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/rf.c", i32 202, i32 4}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/rf.c", i32 210, i32 3}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/rf.c", i32 219, i32 4}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/rf.c", i32 224, i32 4}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/rf.c", i32 259, i32 3}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/rf.c", i32 264, i32 3}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{i8 0, i8 2}
