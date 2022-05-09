; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/regd.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/regd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.country_code_to_enum_rd = type { i16, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.ieee80211_reg_rule = type { %struct.ieee80211_freq_range, %struct.ieee80211_power_rule, %struct.ieee80211_wmm_rule, i32, i32, i8 }
%struct.ieee80211_freq_range = type { i32, i32, i32 }
%struct.ieee80211_power_rule = type { i32, i32 }
%struct.ieee80211_wmm_rule = type { [4 x %struct.ieee80211_wmm_ac], [4 x %struct.ieee80211_wmm_ac] }
%struct.ieee80211_wmm_ac = type { i16, i16, i16, i8 }
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
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.127, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.anon.127 = type { i64, i64, i8 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.regulatory_request = type { %struct.callback_head, i32, i32, i32, [3 x i8], i32, i8, i8, i32, %struct.list_head }

@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"rtl: EEPROM regdomain: 0x%0x country code: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"rtl: EEPROM indicates invalid country code, world wide 13 should be used\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"rtl: Country alpha2 being used: %c%c\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@all_countries = internal constant { [14 x %struct.country_code_to_enum_rd], [48 x i8] } { [14 x %struct.country_code_to_enum_rd] [%struct.country_code_to_enum_rd { i16 0, ptr @.str.4 }, %struct.country_code_to_enum_rd { i16 1, ptr @.str.4 }, %struct.country_code_to_enum_rd { i16 2, ptr @.str.5 }, %struct.country_code_to_enum_rd { i16 3, ptr @.str.5 }, %struct.country_code_to_enum_rd { i16 4, ptr @.str.5 }, %struct.country_code_to_enum_rd { i16 5, ptr @.str.6 }, %struct.country_code_to_enum_rd { i16 6, ptr @.str.6 }, %struct.country_code_to_enum_rd { i16 7, ptr @.str.5 }, %struct.country_code_to_enum_rd { i16 8, ptr @.str.6 }, %struct.country_code_to_enum_rd { i16 9, ptr @.str.6 }, %struct.country_code_to_enum_rd { i16 10, ptr @.str.6 }, %struct.country_code_to_enum_rd { i16 11, ptr @.str.5 }, %struct.country_code_to_enum_rd { i16 12, ptr @.str.5 }, %struct.country_code_to_enum_rd { i16 13, ptr @.str.4 }], [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"US\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"EC\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"JP\00", [29 x i8] zeroinitializer }, align 32
@rtl_regdom_no_midband = internal constant { { %struct.callback_head, i32, [3 x i8], i32, [3 x %struct.ieee80211_reg_rule] }, [76 x i8] } { { %struct.callback_head, i32, [3 x i8], i32, [3 x %struct.ieee80211_reg_rule] } { %struct.callback_head zeroinitializer, i32 3, [3 x i8] c"99\00", i32 0, [3 x %struct.ieee80211_reg_rule] [%struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 2402000, i32 2472000, i32 40000 }, %struct.ieee80211_power_rule { i32 0, i32 2000 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 0, i32 0, i8 0 }, %struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 5140000, i32 5360000, i32 80000 }, %struct.ieee80211_power_rule { i32 0, i32 3000 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 0, i32 0, i8 0 }, %struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 5715000, i32 5860000, i32 80000 }, %struct.ieee80211_power_rule { i32 0, i32 3000 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 0, i32 0, i8 0 }] }, [76 x i8] zeroinitializer }, align 32
@rtl_regdom_11 = internal constant { { %struct.callback_head, i32, [3 x i8], i32, [1 x %struct.ieee80211_reg_rule] }, [44 x i8] } { { %struct.callback_head, i32, [3 x i8], i32, [1 x %struct.ieee80211_reg_rule] } { %struct.callback_head zeroinitializer, i32 1, [3 x i8] c"99\00", i32 0, [1 x %struct.ieee80211_reg_rule] [%struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 2402000, i32 2472000, i32 40000 }, %struct.ieee80211_power_rule { i32 0, i32 2000 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 0, i32 0, i8 0 }] }, [44 x i8] zeroinitializer }, align 32
@rtl_regdom_60_64 = internal constant { { %struct.callback_head, i32, [3 x i8], i32, [3 x %struct.ieee80211_reg_rule] }, [76 x i8] } { { %struct.callback_head, i32, [3 x i8], i32, [3 x %struct.ieee80211_reg_rule] } { %struct.callback_head zeroinitializer, i32 3, [3 x i8] c"99\00", i32 0, [3 x %struct.ieee80211_reg_rule] [%struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 2402000, i32 2472000, i32 40000 }, %struct.ieee80211_power_rule { i32 0, i32 2000 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 0, i32 0, i8 0 }, %struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 2457000, i32 2482000, i32 40000 }, %struct.ieee80211_power_rule { i32 0, i32 2000 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 128, i32 0, i8 0 }, %struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 5715000, i32 5860000, i32 80000 }, %struct.ieee80211_power_rule { i32 0, i32 3000 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 0, i32 0, i8 0 }] }, [76 x i8] zeroinitializer }, align 32
@rtl_regdom_12_13 = internal constant { { %struct.callback_head, i32, [3 x i8], i32, [2 x %struct.ieee80211_reg_rule] }, [44 x i8] } { { %struct.callback_head, i32, [3 x i8], i32, [2 x %struct.ieee80211_reg_rule] } { %struct.callback_head zeroinitializer, i32 2, [3 x i8] c"99\00", i32 0, [2 x %struct.ieee80211_reg_rule] [%struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 2402000, i32 2472000, i32 40000 }, %struct.ieee80211_power_rule { i32 0, i32 2000 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 0, i32 0, i8 0 }, %struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 2457000, i32 2482000, i32 40000 }, %struct.ieee80211_power_rule { i32 0, i32 2000 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 128, i32 0, i8 0 }] }, [44 x i8] zeroinitializer }, align 32
@rtl_regdom_14_60_64 = internal constant { { %struct.callback_head, i32, [3 x i8], i32, [4 x %struct.ieee80211_reg_rule] }, [108 x i8] } { { %struct.callback_head, i32, [3 x i8], i32, [4 x %struct.ieee80211_reg_rule] } { %struct.callback_head zeroinitializer, i32 4, [3 x i8] c"99\00", i32 0, [4 x %struct.ieee80211_reg_rule] [%struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 2402000, i32 2472000, i32 40000 }, %struct.ieee80211_power_rule { i32 0, i32 2000 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 0, i32 0, i8 0 }, %struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 2457000, i32 2482000, i32 40000 }, %struct.ieee80211_power_rule { i32 0, i32 2000 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 128, i32 0, i8 0 }, %struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 2474000, i32 2494000, i32 40000 }, %struct.ieee80211_power_rule { i32 0, i32 2000 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 129, i32 0, i8 0 }, %struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 5715000, i32 5860000, i32 80000 }, %struct.ieee80211_power_rule { i32 0, i32 3000 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 0, i32 0, i8 0 }] }, [108 x i8] zeroinitializer }, align 32
@rtl_regdom_14 = internal constant { { %struct.callback_head, i32, [3 x i8], i32, [3 x %struct.ieee80211_reg_rule] }, [76 x i8] } { { %struct.callback_head, i32, [3 x i8], i32, [3 x %struct.ieee80211_reg_rule] } { %struct.callback_head zeroinitializer, i32 3, [3 x i8] c"99\00", i32 0, [3 x %struct.ieee80211_reg_rule] [%struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 2402000, i32 2472000, i32 40000 }, %struct.ieee80211_power_rule { i32 0, i32 2000 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 0, i32 0, i8 0 }, %struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 2457000, i32 2482000, i32 40000 }, %struct.ieee80211_power_rule { i32 0, i32 2000 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 128, i32 0, i8 0 }, %struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 2474000, i32 2494000, i32 40000 }, %struct.ieee80211_power_rule { i32 0, i32 2000 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 129, i32 0, i8 0 }] }, [76 x i8] zeroinitializer }, align 32
@rtl_regdom_12_13_5g_all = internal constant { { %struct.callback_head, i32, [3 x i8], i32, [4 x %struct.ieee80211_reg_rule] }, [108 x i8] } { { %struct.callback_head, i32, [3 x i8], i32, [4 x %struct.ieee80211_reg_rule] } { %struct.callback_head zeroinitializer, i32 4, [3 x i8] c"99\00", i32 0, [4 x %struct.ieee80211_reg_rule] [%struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 2402000, i32 2472000, i32 40000 }, %struct.ieee80211_power_rule { i32 0, i32 2000 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 0, i32 0, i8 0 }, %struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 2457000, i32 2482000, i32 40000 }, %struct.ieee80211_power_rule { i32 0, i32 2000 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 128, i32 0, i8 0 }, %struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 5140000, i32 5360000, i32 80000 }, %struct.ieee80211_power_rule { i32 0, i32 3000 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 0, i32 0, i8 0 }, %struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 5460000, i32 5860000, i32 80000 }, %struct.ieee80211_power_rule { i32 0, i32 3000 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 0, i32 0, i8 0 }] }, [108 x i8] zeroinitializer }, align 32
@switch.table.rtl_regd_init = internal constant { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @rtl_regdom_11, ptr @rtl_regdom_12_13, ptr @rtl_regdom_12_13, ptr @rtl_regdom_12_13, ptr @rtl_regdom_14_60_64, ptr @rtl_regdom_14_60_64, ptr @rtl_regdom_12_13, ptr @rtl_regdom_14_60_64, ptr @rtl_regdom_14_60_64, ptr @rtl_regdom_14, ptr @rtl_regdom_12_13_5g_all, ptr @rtl_regdom_60_64, ptr @rtl_regdom_12_13_5g_all], [44 x i8] zeroinitializer }, align 32
@switch.table.rtl_regd_init.14 = internal constant { [14 x ptr], [40 x i8] } { [14 x ptr] [ptr @all_countries, ptr getelementptr inbounds ([14 x %struct.country_code_to_enum_rd], ptr @all_countries, i32 0, i32 1), ptr getelementptr inbounds ([14 x %struct.country_code_to_enum_rd], ptr @all_countries, i32 0, i32 2), ptr getelementptr inbounds ([14 x %struct.country_code_to_enum_rd], ptr @all_countries, i32 0, i32 3), ptr getelementptr inbounds ([14 x %struct.country_code_to_enum_rd], ptr @all_countries, i32 0, i32 4), ptr getelementptr inbounds ([14 x %struct.country_code_to_enum_rd], ptr @all_countries, i32 0, i32 5), ptr getelementptr inbounds ([14 x %struct.country_code_to_enum_rd], ptr @all_countries, i32 0, i32 6), ptr getelementptr inbounds ([14 x %struct.country_code_to_enum_rd], ptr @all_countries, i32 0, i32 7), ptr getelementptr inbounds ([14 x %struct.country_code_to_enum_rd], ptr @all_countries, i32 0, i32 8), ptr getelementptr inbounds ([14 x %struct.country_code_to_enum_rd], ptr @all_countries, i32 0, i32 9), ptr getelementptr inbounds ([14 x %struct.country_code_to_enum_rd], ptr @all_countries, i32 0, i32 10), ptr getelementptr inbounds ([14 x %struct.country_code_to_enum_rd], ptr @all_countries, i32 0, i32 11), ptr getelementptr inbounds ([14 x %struct.country_code_to_enum_rd], ptr @all_countries, i32 0, i32 12), ptr getelementptr inbounds ([14 x %struct.country_code_to_enum_rd], ptr @all_countries, i32 0, i32 13)], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 8, i64 32, i64 33, i64 34, i64 37, i64 50, i64 65, i64 127]
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 396, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 401, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 417, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 431, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [14 x i8] c"all_countries\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 7, i32 39 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 8, i32 21 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 10, i32 22 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 13, i32 21 }
@___asan_gen_.39 = private unnamed_addr constant [22 x i8] c"rtl_regdom_no_midband\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 74, i32 41 }
@___asan_gen_.42 = private unnamed_addr constant [14 x i8] c"rtl_regdom_11\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 57, i32 41 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"rtl_regdom_60_64\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 84, i32 41 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"rtl_regdom_12_13\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 65, i32 41 }
@___asan_gen_.51 = private unnamed_addr constant [20 x i8] c"rtl_regdom_14_60_64\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 94, i32 41 }
@___asan_gen_.54 = private unnamed_addr constant [14 x i8] c"rtl_regdom_14\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 116, i32 41 }
@___asan_gen_.57 = private unnamed_addr constant [24 x i8] c"rtl_regdom_12_13_5g_all\00", align 1
@___asan_gen_.58 = private constant [47 x i8] c"../drivers/net/wireless/realtek/rtlwifi/regd.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 105, i32 41 }
@___asan_gen_.60 = private unnamed_addr constant [27 x i8] c"switch.table.rtl_regd_init\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [30 x i8] c"switch.table.rtl_regd_init.14\00", align 1
@llvm.compiler.used = appending global [17 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @all_countries, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @rtl_regdom_no_midband, ptr @rtl_regdom_11, ptr @rtl_regdom_60_64, ptr @rtl_regdom_12_13, ptr @rtl_regdom_14_60_64, ptr @rtl_regdom_14, ptr @rtl_regdom_12_13_5g_all, ptr @switch.table.rtl_regd_init, ptr @switch.table.rtl_regd_init.14], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @all_countries to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_regdom_no_midband to i32), i32 308, i32 384, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_regdom_11 to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_regdom_60_64 to i32), i32 308, i32 384, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_regdom_12_13 to i32), i32 212, i32 256, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_regdom_14_60_64 to i32), i32 404, i32 512, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_regdom_14 to i32), i32 308, i32 384, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_regdom_12_13_5g_all to i32), i32 404, i32 512, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl_regd_init to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl_regd_init.14 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl_regd_init(ptr nocapture noundef readonly %hw, ptr noundef %reg_notifier) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %wiphy1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %wiphy1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wiphy1, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %channel_plan = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 65
  %4 = ptrtoint ptr %channel_plan to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %channel_plan, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %sw.default.i [
    i8 32, label %if.end.channel_plan_to_country_code.exit_crit_edge
    i8 33, label %if.end.channel_plan_to_country_code.exit_crit_edge86
    i8 34, label %sw.bb1.i
    i8 37, label %sw.bb2.i
    i8 50, label %sw.bb3.i
    i8 65, label %sw.bb4.i
    i8 127, label %sw.bb5.i
  ]

if.end.channel_plan_to_country_code.exit_crit_edge86: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %channel_plan_to_country_code.exit

if.end.channel_plan_to_country_code.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %channel_plan_to_country_code.exit

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %channel_plan_to_country_code.exit

sw.bb2.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %channel_plan_to_country_code.exit

sw.bb3.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %channel_plan_to_country_code.exit

sw.bb4.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %channel_plan_to_country_code.exit

sw.bb5.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %channel_plan_to_country_code.exit

sw.default.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %channel_plan_to_country_code.exit

channel_plan_to_country_code.exit:                ; preds = %sw.default.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.end.channel_plan_to_country_code.exit_crit_edge, %if.end.channel_plan_to_country_code.exit_crit_edge86
  %retval.0.i = phi i8 [ 14, %sw.default.i ], [ 13, %sw.bb5.i ], [ 10, %sw.bb4.i ], [ 12, %sw.bb3.i ], [ 2, %sw.bb2.i ], [ 1, %sw.bb1.i ], [ 11, %if.end.channel_plan_to_country_code.exit_crit_edge ], [ 11, %if.end.channel_plan_to_country_code.exit_crit_edge86 ]
  %conv = zext i8 %retval.0.i to i16
  %regd = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 11
  %country_code = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 11, i32 1
  %7 = ptrtoint ptr %country_code to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %country_code, align 2
  %conv4 = zext i8 %5 to i32
  %conv7 = zext i8 %retval.0.i to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 134217728, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef %conv4, i32 noundef %conv7) #2
  %8 = ptrtoint ptr %country_code to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %country_code, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 13, i16 %9)
  %cmp = icmp ugt i16 %9, 13
  br i1 %cmp, label %if.then12, label %channel_plan_to_country_code.exit.if.end15_crit_edge

channel_plan_to_country_code.exit.if.end15_crit_edge: ; preds = %channel_plan_to_country_code.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end15

if.then12:                                        ; preds = %channel_plan_to_country_code.exit
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 134217728, i32 noundef 3, ptr noundef nonnull @.str.1) #2
  %10 = ptrtoint ptr %country_code to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 11, ptr %country_code, align 2
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %channel_plan_to_country_code.exit.if.end15_crit_edge
  %11 = ptrtoint ptr %country_code to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %country_code, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %12)
  %13 = icmp ult i16 %12, 14
  br i1 %13, label %switch.lookup83, label %if.else

switch.lookup83:                                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #4
  %14 = sext i16 %12 to i32
  %switch.gep84 = getelementptr inbounds [14 x ptr], ptr @switch.table.rtl_regd_init.14, i32 0, i32 %14
  %15 = ptrtoint ptr %switch.gep84 to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load85 = load ptr, ptr %switch.gep84, align 4
  %iso_name = getelementptr inbounds %struct.country_code_to_enum_rd, ptr %switch.load85, i32 0, i32 1
  %16 = ptrtoint ptr %iso_name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iso_name, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 1
  %20 = ptrtoint ptr %regd to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %regd, align 8
  %21 = load ptr, ptr %iso_name, align 4
  %arrayidx24 = getelementptr i8, ptr %21, i32 1
  %22 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx24, align 1
  br label %if.end34

if.else:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #4
  %24 = ptrtoint ptr %regd to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 48, ptr %regd, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.else, %switch.lookup83
  %.sink = phi i8 [ 48, %if.else ], [ %23, %switch.lookup83 ]
  %arrayidx33 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 11, i32 0, i32 1
  %25 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %.sink, ptr %arrayidx33, align 1
  %26 = ptrtoint ptr %regd to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %regd, align 8
  %conv38 = sext i8 %27 to i32
  %conv42 = sext i8 %.sink to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 134217728, i32 noundef 5, ptr noundef nonnull @.str.2, i32 noundef %conv38, i32 noundef %conv42) #2
  %reg_notifier1.i = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 54
  %28 = ptrtoint ptr %reg_notifier1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %reg_notifier, ptr %reg_notifier1.i, align 8
  %regulatory_flags.i = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 12
  %29 = ptrtoint ptr %regulatory_flags.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %regulatory_flags.i, align 4
  %or.i = and i32 %30, -8
  %and.i = or i32 %or.i, 1
  store i32 %and.i, ptr %regulatory_flags.i, align 4
  %31 = ptrtoint ptr %country_code to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %country_code, align 2
  %switch.tableidx = add i16 %32, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 13, i16 %switch.tableidx)
  %33 = icmp ult i16 %switch.tableidx, 13
  br i1 %33, label %switch.lookup, label %if.end34._rtl_regdomain_select.exit.i_crit_edge

if.end34._rtl_regdomain_select.exit.i_crit_edge:  ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #4
  br label %_rtl_regdomain_select.exit.i

switch.lookup:                                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #4
  %34 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [13 x ptr], ptr @switch.table.rtl_regd_init, i32 0, i32 %34
  %35 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %35)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %_rtl_regdomain_select.exit.i

_rtl_regdomain_select.exit.i:                     ; preds = %switch.lookup, %if.end34._rtl_regdomain_select.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ @rtl_regdom_no_midband, %if.end34._rtl_regdomain_select.exit.i_crit_edge ], [ %switch.load, %switch.lookup ]
  tail call void @wiphy_apply_custom_regulatory(ptr noundef nonnull %3, ptr noundef nonnull %retval.0.i.i) #2
  %arrayidx.i.i = getelementptr %struct.wiphy, ptr %3, i32 0, i32 53, i32 1
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i, label %_rtl_regdomain_select.exit.i.for.body.i.i.i.preheader_crit_edge, label %for.cond.preheader.i.i

_rtl_regdomain_select.exit.i.for.body.i.i.i.preheader_crit_edge: ; preds = %_rtl_regdomain_select.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i.i.i.preheader

for.cond.preheader.i.i:                           ; preds = %_rtl_regdomain_select.exit.i
  %n_channels.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %n_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %n_channels.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp18.not.i.i = icmp eq i32 %39, 0
  br i1 %cmp18.not.i.i, label %for.cond.preheader.i.i.for.body.i.i.i.preheader_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.for.body.i.i.i.preheader_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i.i.i.preheader

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.019.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %37, align 4
  %center_freq.i.i = getelementptr %struct.ieee80211_channel, ptr %41, i32 %i.019.i.i, i32 1
  %42 = ptrtoint ptr %center_freq.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %center_freq.i.i, align 4
  %conv.i.i = trunc i32 %43 to i16
  %44 = add i16 %conv.i.i, -5260
  call void @__sanitizer_cov_trace_const_cmp2(i16 441, i16 %44)
  %45 = icmp ult i16 %44, 441
  br i1 %45, label %if.end5.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.i.i

if.end5.i.i:                                      ; preds = %for.body.i.i
  %flags.i.i = getelementptr %struct.ieee80211_channel, ptr %41, i32 %i.019.i.i, i32 4
  %46 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool6.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool6.not.i.i, label %if.then7.i.i, label %if.end5.i.i.for.inc.i.i_crit_edge

if.end5.i.i.for.inc.i.i_crit_edge:                ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.i.i

if.then7.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #4
  %or.i.i = or i32 %47, 10
  %48 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or.i.i, ptr %flags.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then7.i.i, %if.end5.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.019.i.i, 1
  %49 = ptrtoint ptr %n_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %n_channels.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %50
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.for.body.i.i.i.preheader_crit_edge

for.inc.i.i.for.body.i.i.i.preheader_crit_edge:   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i.i.i.preheader

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i.i

for.body.i.i.i.preheader:                         ; preds = %for.inc.i.i.for.body.i.i.i.preheader_crit_edge, %for.cond.preheader.i.i.for.body.i.i.i.preheader_crit_edge, %_rtl_regdomain_select.exit.i.for.body.i.i.i.preheader_crit_edge
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc39.i.i.i.for.body.i.i.i_crit_edge, %for.body.i.i.i.preheader
  %band.061.i.i.i = phi i32 [ %inc40.i.i.i, %for.inc39.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.body.i.i.i.preheader ]
  %arrayidx.i.i.i = getelementptr %struct.wiphy, ptr %3, i32 0, i32 53, i32 %band.061.i.i.i
  %51 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %52, null
  br i1 %tobool.not.i.i.i, label %for.body.i.i.i.for.inc39.i.i.i_crit_edge, label %for.cond3.preheader.i.i.i

for.body.i.i.i.for.inc39.i.i.i_crit_edge:         ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc39.i.i.i

for.cond3.preheader.i.i.i:                        ; preds = %for.body.i.i.i
  %n_channels.i.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %n_channels.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %n_channels.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp458.not.i.i.i = icmp eq i32 %54, 0
  br i1 %cmp458.not.i.i.i, label %for.cond3.preheader.i.i.i.for.inc39.i.i.i_crit_edge, label %for.cond3.preheader.i.i.i.for.body5.i.i.i_crit_edge

for.cond3.preheader.i.i.i.for.body5.i.i.i_crit_edge: ; preds = %for.cond3.preheader.i.i.i
  br label %for.body5.i.i.i

for.cond3.preheader.i.i.i.for.inc39.i.i.i_crit_edge: ; preds = %for.cond3.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc39.i.i.i

for.body5.i.i.i:                                  ; preds = %for.inc.i.i.i.for.body5.i.i.i_crit_edge, %for.cond3.preheader.i.i.i.for.body5.i.i.i_crit_edge
  %i.059.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body5.i.i.i_crit_edge ], [ 0, %for.cond3.preheader.i.i.i.for.body5.i.i.i_crit_edge ]
  %55 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %52, align 4
  %center_freq.i.i.i = getelementptr %struct.ieee80211_channel, ptr %56, i32 %i.059.i.i.i, i32 1
  %57 = ptrtoint ptr %center_freq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %center_freq.i.i.i, align 4
  %conv.i.i.i = trunc i32 %58 to i16
  %59 = add i16 %conv.i.i.i, -5260
  call void @__sanitizer_cov_trace_const_cmp2(i16 441, i16 %59)
  %60 = icmp ult i16 %59, 441
  br i1 %60, label %for.body5.i.i.i.for.inc.i.i.i_crit_edge, label %lor.lhs.false.i.i.i

for.body5.i.i.i.for.inc.i.i.i_crit_edge:          ; preds = %for.body5.i.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %for.body5.i.i.i
  %flags.i.i.i = getelementptr %struct.ieee80211_channel, ptr %56, i32 %i.059.i.i.i, i32 4
  %61 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i = and i32 %62, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool8.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool8.not.i.i.i, label %if.end10.i.i.i, label %lor.lhs.false.i.i.i.for.inc.i.i.i_crit_edge

lor.lhs.false.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.i.i.i

if.end10.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i
  %beacon_found.i.i.i = getelementptr %struct.ieee80211_channel, ptr %56, i32 %i.059.i.i.i, i32 8
  %63 = ptrtoint ptr %beacon_found.i.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %beacon_found.i.i.i, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool33.not.i.i.i = icmp eq i8 %64, 0
  br i1 %tobool33.not.i.i.i, label %if.end10.i.i.i.for.inc.i.i.i_crit_edge, label %for.inc.sink.split.i.i.i

if.end10.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.i.i.i

for.inc.sink.split.i.i.i:                         ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #4
  %and31.i.i.i = and i32 %62, -3
  %65 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %and31.i.i.i, ptr %flags.i.i.i, align 4
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %for.inc.sink.split.i.i.i, %if.end10.i.i.i.for.inc.i.i.i_crit_edge, %lor.lhs.false.i.i.i.for.inc.i.i.i_crit_edge, %for.body5.i.i.i.for.inc.i.i.i_crit_edge
  %inc.i.i.i = add nuw i32 %i.059.i.i.i, 1
  %66 = ptrtoint ptr %n_channels.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %n_channels.i.i.i, align 4
  %cmp4.i.i.i = icmp ult i32 %inc.i.i.i, %67
  br i1 %cmp4.i.i.i, label %for.inc.i.i.i.for.body5.i.i.i_crit_edge, label %for.inc.i.i.i.for.inc39.i.i.i_crit_edge

for.inc.i.i.i.for.inc39.i.i.i_crit_edge:          ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc39.i.i.i

for.inc.i.i.i.for.body5.i.i.i_crit_edge:          ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body5.i.i.i

for.inc39.i.i.i:                                  ; preds = %for.inc.i.i.i.for.inc39.i.i.i_crit_edge, %for.cond3.preheader.i.i.i.for.inc39.i.i.i_crit_edge, %for.body.i.i.i.for.inc39.i.i.i_crit_edge
  %inc40.i.i.i = add nuw nsw i32 %band.061.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc40.i.i.i, 6
  br i1 %exitcond.not.i.i.i, label %_rtl_reg_apply_beaconing_flags.exit.i.i, label %for.inc39.i.i.i.for.body.i.i.i_crit_edge

for.inc39.i.i.i.for.body.i.i.i_crit_edge:         ; preds = %for.inc39.i.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i.i.i

_rtl_reg_apply_beaconing_flags.exit.i.i:          ; preds = %for.inc39.i.i.i
  %bands.i.i.i = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 53
  %68 = ptrtoint ptr %bands.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bands.i.i.i, align 16
  %tobool.not.i1.i.i = icmp eq ptr %69, null
  br i1 %tobool.not.i1.i.i, label %_rtl_reg_apply_beaconing_flags.exit.i.i.cleanup_crit_edge, label %if.end.i.i.i

_rtl_reg_apply_beaconing_flags.exit.i.i.cleanup_crit_edge: ; preds = %_rtl_reg_apply_beaconing_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end.i.i.i:                                     ; preds = %_rtl_reg_apply_beaconing_flags.exit.i.i
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %flags.i2.i.i = getelementptr %struct.ieee80211_channel, ptr %71, i32 11, i32 4
  %72 = ptrtoint ptr %flags.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %flags.i2.i.i, align 4
  %and.i3.i.i = and i32 %73, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i.i)
  %tobool5.not.i.i.i = icmp eq i32 %and.i3.i.i, 0
  br i1 %tobool5.not.i.i.i, label %if.end.i.i.i.if.end9.i.i.i_crit_edge, label %if.then6.i.i.i

if.end.i.i.i.if.end9.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end9.i.i.i

if.then6.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #4
  %and8.i.i.i = and i32 %73, -3
  %74 = ptrtoint ptr %flags.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %and8.i.i.i, ptr %flags.i2.i.i, align 4
  br label %if.end9.i.i.i

if.end9.i.i.i:                                    ; preds = %if.then6.i.i.i, %if.end.i.i.i.if.end9.i.i.i_crit_edge
  %75 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %69, align 4
  %flags12.i.i.i = getelementptr %struct.ieee80211_channel, ptr %76, i32 12, i32 4
  %77 = ptrtoint ptr %flags12.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %flags12.i.i.i, align 4
  %and13.i.i.i = and i32 %78, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i.i.i)
  %tobool14.not.i.i.i = icmp eq i32 %and13.i.i.i, 0
  br i1 %tobool14.not.i.i.i, label %if.end9.i.i.i.cleanup_crit_edge, label %cleanup.sink.split.i.i.i

if.end9.i.i.i.cleanup_crit_edge:                  ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup.sink.split.i.i.i:                         ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #4
  %and52.i.i.i = and i32 %78, -3
  %79 = ptrtoint ptr %flags12.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %and52.i.i.i, ptr %flags12.i.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split.i.i.i, %if.end9.i.i.i.cleanup_crit_edge, %_rtl_reg_apply_beaconing_flags.exit.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %_rtl_reg_apply_beaconing_flags.exit.i.i.cleanup_crit_edge ], [ 0, %if.end9.i.i.i.cleanup_crit_edge ], [ 0, %cleanup.sink.split.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl_reg_notifier(ptr noundef %wiphy, ptr nocapture noundef readonly %request) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @wiphy_to_ieee80211_hw(ptr noundef %wiphy) #2
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 134217728, i32 noundef 4, ptr noundef nonnull @.str.3) #2
  %arrayidx.i.i = getelementptr %struct.wiphy, ptr %wiphy, i32 0, i32 53, i32 1
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %entry._rtl_reg_apply_radar_flags.exit.i_crit_edge, label %for.cond.preheader.i.i

entry._rtl_reg_apply_radar_flags.exit.i_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %_rtl_reg_apply_radar_flags.exit.i

for.cond.preheader.i.i:                           ; preds = %entry
  %n_channels.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %n_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_channels.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp18.not.i.i = icmp eq i32 %5, 0
  br i1 %cmp18.not.i.i, label %for.cond.preheader.i.i._rtl_reg_apply_radar_flags.exit.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i._rtl_reg_apply_radar_flags.exit.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %_rtl_reg_apply_radar_flags.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.019.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %center_freq.i.i = getelementptr %struct.ieee80211_channel, ptr %7, i32 %i.019.i.i, i32 1
  %8 = ptrtoint ptr %center_freq.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %center_freq.i.i, align 4
  %conv.i.i = trunc i32 %9 to i16
  %10 = add i16 %conv.i.i, -5260
  call void @__sanitizer_cov_trace_const_cmp2(i16 441, i16 %10)
  %11 = icmp ult i16 %10, 441
  br i1 %11, label %if.end5.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.i.i

if.end5.i.i:                                      ; preds = %for.body.i.i
  %flags.i.i = getelementptr %struct.ieee80211_channel, ptr %7, i32 %i.019.i.i, i32 4
  %12 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool6.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool6.not.i.i, label %if.then7.i.i, label %if.end5.i.i.for.inc.i.i_crit_edge

if.end5.i.i.for.inc.i.i_crit_edge:                ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.i.i

if.then7.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #4
  %or.i.i = or i32 %13, 10
  %14 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or.i.i, ptr %flags.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then7.i.i, %if.end5.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.019.i.i, 1
  %15 = ptrtoint ptr %n_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %n_channels.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %16
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i._rtl_reg_apply_radar_flags.exit.i_crit_edge

for.inc.i.i._rtl_reg_apply_radar_flags.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %_rtl_reg_apply_radar_flags.exit.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i.i

_rtl_reg_apply_radar_flags.exit.i:                ; preds = %for.inc.i.i._rtl_reg_apply_radar_flags.exit.i_crit_edge, %for.cond.preheader.i.i._rtl_reg_apply_radar_flags.exit.i_crit_edge, %entry._rtl_reg_apply_radar_flags.exit.i_crit_edge
  %initiator.i = getelementptr inbounds %struct.regulatory_request, ptr %request, i32 0, i32 2
  %17 = ptrtoint ptr %initiator.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %initiator.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %18)
  %cond.i = icmp eq i32 %18, 3
  br i1 %cond.i, label %_rtl_reg_apply_radar_flags.exit.i.for.body.i.i.i_crit_edge, label %_rtl_reg_apply_radar_flags.exit.i._rtl_reg_notifier_apply.exit_crit_edge

_rtl_reg_apply_radar_flags.exit.i._rtl_reg_notifier_apply.exit_crit_edge: ; preds = %_rtl_reg_apply_radar_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %_rtl_reg_notifier_apply.exit

_rtl_reg_apply_radar_flags.exit.i.for.body.i.i.i_crit_edge: ; preds = %_rtl_reg_apply_radar_flags.exit.i
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc39.i.i.i.for.body.i.i.i_crit_edge, %_rtl_reg_apply_radar_flags.exit.i.for.body.i.i.i_crit_edge
  %band.061.i.i.i = phi i32 [ %inc40.i.i.i, %for.inc39.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %_rtl_reg_apply_radar_flags.exit.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.wiphy, ptr %wiphy, i32 0, i32 53, i32 %band.061.i.i.i
  %19 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i.i, label %for.body.i.i.i.for.inc39.i.i.i_crit_edge, label %for.cond3.preheader.i.i.i

for.body.i.i.i.for.inc39.i.i.i_crit_edge:         ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc39.i.i.i

for.cond3.preheader.i.i.i:                        ; preds = %for.body.i.i.i
  %n_channels.i.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %n_channels.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %n_channels.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp458.not.i.i.i = icmp eq i32 %22, 0
  br i1 %cmp458.not.i.i.i, label %for.cond3.preheader.i.i.i.for.inc39.i.i.i_crit_edge, label %for.cond3.preheader.i.i.i.for.body5.i.i.i_crit_edge

for.cond3.preheader.i.i.i.for.body5.i.i.i_crit_edge: ; preds = %for.cond3.preheader.i.i.i
  br label %for.body5.i.i.i

for.cond3.preheader.i.i.i.for.inc39.i.i.i_crit_edge: ; preds = %for.cond3.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc39.i.i.i

for.body5.i.i.i:                                  ; preds = %for.inc.i.i.i.for.body5.i.i.i_crit_edge, %for.cond3.preheader.i.i.i.for.body5.i.i.i_crit_edge
  %i.059.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body5.i.i.i_crit_edge ], [ 0, %for.cond3.preheader.i.i.i.for.body5.i.i.i_crit_edge ]
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %20, align 4
  %center_freq.i.i.i = getelementptr %struct.ieee80211_channel, ptr %24, i32 %i.059.i.i.i, i32 1
  %25 = ptrtoint ptr %center_freq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %center_freq.i.i.i, align 4
  %conv.i.i.i = trunc i32 %26 to i16
  %27 = add i16 %conv.i.i.i, -5260
  call void @__sanitizer_cov_trace_const_cmp2(i16 441, i16 %27)
  %28 = icmp ult i16 %27, 441
  br i1 %28, label %for.body5.i.i.i.for.inc.i.i.i_crit_edge, label %lor.lhs.false.i.i.i

for.body5.i.i.i.for.inc.i.i.i_crit_edge:          ; preds = %for.body5.i.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %for.body5.i.i.i
  %flags.i.i.i = getelementptr %struct.ieee80211_channel, ptr %24, i32 %i.059.i.i.i, i32 4
  %29 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i = and i32 %30, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool8.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool8.not.i.i.i, label %if.end10.i.i.i, label %lor.lhs.false.i.i.i.for.inc.i.i.i_crit_edge

lor.lhs.false.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.i.i.i

if.end10.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i
  %call15.i.i.i = tail call ptr @freq_reg_info(ptr noundef %wiphy, i32 noundef %26) #2
  %cmp.i.i.i.i = icmp ugt ptr %call15.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i, label %if.end10.i.i.i.for.inc.i.i.i_crit_edge, label %if.end18.i.i.i

if.end10.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.i.i.i

if.end18.i.i.i:                                   ; preds = %if.end10.i.i.i
  %flags19.i.i.i = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %call15.i.i.i, i32 0, i32 3
  %31 = ptrtoint ptr %flags19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags19.i.i.i, align 4
  %and20.i.i.i = and i32 %32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i.i.i)
  %tobool21.not.i.i.i = icmp eq i32 %and20.i.i.i, 0
  br i1 %tobool21.not.i.i.i, label %if.then22.i.i.i, label %if.end18.i.i.i.if.end25.i.i.i_crit_edge

if.end18.i.i.i.if.end25.i.i.i_crit_edge:          ; preds = %if.end18.i.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end25.i.i.i

if.then22.i.i.i:                                  ; preds = %if.end18.i.i.i
  call void @__sanitizer_cov_trace_pc() #4
  %33 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags.i.i.i, align 4
  %and24.i.i.i = and i32 %34, -3
  store i32 %and24.i.i.i, ptr %flags.i.i.i, align 4
  br label %if.end25.i.i.i

if.end25.i.i.i:                                   ; preds = %if.then22.i.i.i, %if.end18.i.i.i.if.end25.i.i.i_crit_edge
  %35 = ptrtoint ptr %flags19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags19.i.i.i, align 4
  %and27.i.i.i = and i32 %36, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i.i.i)
  %tobool28.not.i.i.i = icmp eq i32 %and27.i.i.i, 0
  br i1 %tobool28.not.i.i.i, label %if.then29.i.i.i, label %if.end25.i.i.i.for.inc.i.i.i_crit_edge

if.end25.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %if.end25.i.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.i.i.i

if.then29.i.i.i:                                  ; preds = %if.end25.i.i.i
  call void @__sanitizer_cov_trace_pc() #4
  %37 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags.i.i.i, align 4
  %and31.i.i.i = and i32 %38, -3
  store i32 %and31.i.i.i, ptr %flags.i.i.i, align 4
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.then29.i.i.i, %if.end25.i.i.i.for.inc.i.i.i_crit_edge, %if.end10.i.i.i.for.inc.i.i.i_crit_edge, %lor.lhs.false.i.i.i.for.inc.i.i.i_crit_edge, %for.body5.i.i.i.for.inc.i.i.i_crit_edge
  %inc.i.i.i = add nuw i32 %i.059.i.i.i, 1
  %39 = ptrtoint ptr %n_channels.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %n_channels.i.i.i, align 4
  %cmp4.i.i.i = icmp ult i32 %inc.i.i.i, %40
  br i1 %cmp4.i.i.i, label %for.inc.i.i.i.for.body5.i.i.i_crit_edge, label %for.inc.i.i.i.for.inc39.i.i.i_crit_edge

for.inc.i.i.i.for.inc39.i.i.i_crit_edge:          ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc39.i.i.i

for.inc.i.i.i.for.body5.i.i.i_crit_edge:          ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body5.i.i.i

for.inc39.i.i.i:                                  ; preds = %for.inc.i.i.i.for.inc39.i.i.i_crit_edge, %for.cond3.preheader.i.i.i.for.inc39.i.i.i_crit_edge, %for.body.i.i.i.for.inc39.i.i.i_crit_edge
  %inc40.i.i.i = add nuw nsw i32 %band.061.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc40.i.i.i, 6
  br i1 %exitcond.not.i.i.i, label %_rtl_reg_apply_beaconing_flags.exit.i.i, label %for.inc39.i.i.i.for.body.i.i.i_crit_edge

for.inc39.i.i.i.for.body.i.i.i_crit_edge:         ; preds = %for.inc39.i.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i.i.i

_rtl_reg_apply_beaconing_flags.exit.i.i:          ; preds = %for.inc39.i.i.i
  %bands.i.i.i = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 53
  %41 = ptrtoint ptr %bands.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bands.i.i.i, align 16
  %tobool.not.i1.i.i = icmp eq ptr %42, null
  br i1 %tobool.not.i1.i.i, label %_rtl_reg_apply_beaconing_flags.exit.i.i._rtl_reg_notifier_apply.exit_crit_edge, label %if.end.i.i.i

_rtl_reg_apply_beaconing_flags.exit.i.i._rtl_reg_notifier_apply.exit_crit_edge: ; preds = %_rtl_reg_apply_beaconing_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %_rtl_reg_notifier_apply.exit

if.end.i.i.i:                                     ; preds = %_rtl_reg_apply_beaconing_flags.exit.i.i
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %center_freq.i4.i.i = getelementptr %struct.ieee80211_channel, ptr %44, i32 11, i32 1
  %45 = ptrtoint ptr %center_freq.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %center_freq.i4.i.i, align 4
  %call.i.i.i = tail call ptr @freq_reg_info(ptr noundef %wiphy, i32 noundef %46) #2
  %cmp.i.i5.i.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i5.i.i, label %if.end.i.i.i.if.end36.i.i.i_crit_edge, label %if.then23.i.i.i

if.end.i.i.i.if.end36.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end36.i.i.i

if.then23.i.i.i:                                  ; preds = %if.end.i.i.i
  %flags24.i.i.i = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %call.i.i.i, i32 0, i32 3
  %47 = ptrtoint ptr %flags24.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags24.i.i.i, align 4
  %and25.i.i.i = and i32 %48, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i.i)
  %tobool26.not.i.i.i = icmp eq i32 %and25.i.i.i, 0
  br i1 %tobool26.not.i.i.i, label %if.then27.i.i.i, label %if.then23.i.i.i.if.end36.i.i.i_crit_edge

if.then23.i.i.i.if.end36.i.i.i_crit_edge:         ; preds = %if.then23.i.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end36.i.i.i

if.then27.i.i.i:                                  ; preds = %if.then23.i.i.i
  %flags28.i.i.i = getelementptr %struct.ieee80211_channel, ptr %44, i32 11, i32 4
  %49 = ptrtoint ptr %flags28.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags28.i.i.i, align 4
  %and29.i.i.i = and i32 %50, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i.i.i)
  %tobool30.not.i.i.i = icmp eq i32 %and29.i.i.i, 0
  br i1 %tobool30.not.i.i.i, label %if.then27.i.i.i.if.end36.i.i.i_crit_edge, label %if.then31.i.i.i

if.then27.i.i.i.if.end36.i.i.i_crit_edge:         ; preds = %if.then27.i.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end36.i.i.i

if.then31.i.i.i:                                  ; preds = %if.then27.i.i.i
  call void @__sanitizer_cov_trace_pc() #4
  %and33.i.i.i = and i32 %50, -3
  %51 = ptrtoint ptr %flags28.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %and33.i.i.i, ptr %flags28.i.i.i, align 4
  br label %if.end36.i.i.i

if.end36.i.i.i:                                   ; preds = %if.then31.i.i.i, %if.then27.i.i.i.if.end36.i.i.i_crit_edge, %if.then23.i.i.i.if.end36.i.i.i_crit_edge, %if.end.i.i.i.if.end36.i.i.i_crit_edge
  %52 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %42, align 4
  %center_freq39.i.i.i = getelementptr %struct.ieee80211_channel, ptr %53, i32 12, i32 1
  %54 = ptrtoint ptr %center_freq39.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %center_freq39.i.i.i, align 4
  %call40.i.i.i = tail call ptr @freq_reg_info(ptr noundef %wiphy, i32 noundef %55) #2
  %cmp.i76.i.i.i = icmp ugt ptr %call40.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i76.i.i.i, label %if.end36.i.i.i._rtl_reg_notifier_apply.exit_crit_edge, label %if.then42.i.i.i

if.end36.i.i.i._rtl_reg_notifier_apply.exit_crit_edge: ; preds = %if.end36.i.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %_rtl_reg_notifier_apply.exit

if.then42.i.i.i:                                  ; preds = %if.end36.i.i.i
  %flags43.i.i.i = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %call40.i.i.i, i32 0, i32 3
  %56 = ptrtoint ptr %flags43.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags43.i.i.i, align 4
  %and44.i.i.i = and i32 %57, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i.i.i)
  %tobool45.not.i.i.i = icmp eq i32 %and44.i.i.i, 0
  br i1 %tobool45.not.i.i.i, label %if.then46.i.i.i, label %if.then42.i.i.i._rtl_reg_notifier_apply.exit_crit_edge

if.then42.i.i.i._rtl_reg_notifier_apply.exit_crit_edge: ; preds = %if.then42.i.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %_rtl_reg_notifier_apply.exit

if.then46.i.i.i:                                  ; preds = %if.then42.i.i.i
  %flags47.i.i.i = getelementptr %struct.ieee80211_channel, ptr %53, i32 12, i32 4
  %58 = ptrtoint ptr %flags47.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %flags47.i.i.i, align 4
  %and48.i.i.i = and i32 %59, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i.i.i)
  %tobool49.not.i.i.i = icmp eq i32 %and48.i.i.i, 0
  br i1 %tobool49.not.i.i.i, label %if.then46.i.i.i._rtl_reg_notifier_apply.exit_crit_edge, label %cleanup.sink.split.i.i.i

if.then46.i.i.i._rtl_reg_notifier_apply.exit_crit_edge: ; preds = %if.then46.i.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %_rtl_reg_notifier_apply.exit

cleanup.sink.split.i.i.i:                         ; preds = %if.then46.i.i.i
  call void @__sanitizer_cov_trace_pc() #4
  %and52.i.i.i = and i32 %59, -3
  %60 = ptrtoint ptr %flags47.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %and52.i.i.i, ptr %flags47.i.i.i, align 4
  br label %_rtl_reg_notifier_apply.exit

_rtl_reg_notifier_apply.exit:                     ; preds = %cleanup.sink.split.i.i.i, %if.then46.i.i.i._rtl_reg_notifier_apply.exit_crit_edge, %if.then42.i.i.i._rtl_reg_notifier_apply.exit_crit_edge, %if.end36.i.i.i._rtl_reg_notifier_apply.exit_crit_edge, %_rtl_reg_apply_beaconing_flags.exit.i.i._rtl_reg_notifier_apply.exit_crit_edge, %_rtl_reg_apply_radar_flags.exit.i._rtl_reg_notifier_apply.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wiphy_to_ieee80211_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_apply_custom_regulatory(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @freq_reg_info(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/regd.c", i32 396, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtlwifi/regd.c", i32 401, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtlwifi/regd.c", i32 417, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtlwifi/regd.c", i32 431, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtlwifi/regd.c", i32 8, i32 21}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtlwifi/regd.c", i32 10, i32 22}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtlwifi/regd.c", i32 13, i32 21}
!14 = !{ptr @all_countries, !15, !"all_countries", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/realtek/rtlwifi/regd.c", i32 7, i32 39}
!16 = !{ptr @rtl_regdom_no_midband, !17, !"rtl_regdom_no_midband", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/realtek/rtlwifi/regd.c", i32 74, i32 41}
!18 = !{ptr @rtl_regdom_11, !19, !"rtl_regdom_11", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/realtek/rtlwifi/regd.c", i32 57, i32 41}
!20 = !{ptr @rtl_regdom_60_64, !21, !"rtl_regdom_60_64", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/realtek/rtlwifi/regd.c", i32 84, i32 41}
!22 = !{ptr @rtl_regdom_12_13, !23, !"rtl_regdom_12_13", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/realtek/rtlwifi/regd.c", i32 65, i32 41}
!24 = !{ptr @rtl_regdom_14_60_64, !25, !"rtl_regdom_14_60_64", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/realtek/rtlwifi/regd.c", i32 94, i32 41}
!26 = !{ptr @rtl_regdom_14, !27, !"rtl_regdom_14", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/realtek/rtlwifi/regd.c", i32 116, i32 41}
!28 = !{ptr @rtl_regdom_12_13_5g_all, !29, !"rtl_regdom_12_13_5g_all", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/realtek/rtlwifi/regd.c", i32 105, i32 41}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{i8 0, i8 2}
