; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/btcoexist/rtl_btc.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/btcoexist/rtl_btc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+rtl_btc_get_ops_pointer\22, \22a\22\09"
module asm "\09.weak\09__crc_rtl_btc_get_ops_pointer\09\09\09\09"
module asm "\09.long\09__crc_rtl_btc_get_ops_pointer\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtl_btc_get_ops_pointer:\09\09\09\09\09"
module asm "\09.asciz \09\22rtl_btc_get_ops_pointer\22\09\09\09\09\09"
module asm "__kstrtabns_rtl_btc_get_ops_pointer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rtl_btc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.ieee80211_edmg = type { i8, i32 }
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
%struct.btc_coexist = type { i8, ptr, %struct.btc_board_info, %struct.btc_bt_info, %struct.btc_stack_info, i32, %struct.btc_bt_link_info, i8, i8, i8, i8, i8, i8, i8, %struct.btc_statistics, [10 x i8], %struct.completion, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.btc_board_info = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.btc_bt_info = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i16, i32, i32, i32, i32, i8, i8, i32 }
%struct.btc_stack_info = type { i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.btc_bt_link_info = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.btc_statistics = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtl_hal_cfg = type { i8, i8, ptr, ptr, ptr, ptr, ptr, i32, [91 x i32] }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.anon.128 = type { i32, i16 }

@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"btc_coexist context is NULL!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s, bt_exist is %d\0A\00", [44 x i8] zeroinitializer }, align 32
@__func__.rtl_btc_init_hw_config = private unnamed_addr constant [23 x i8] c"rtl_btc_init_hw_config\00", align 1
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"btmpinfo complete req_num=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@rtl_btc_operation = internal global { %struct.rtl_btc_ops, [40 x i8] } { %struct.rtl_btc_ops { ptr @rtl_btc_init_variables, ptr @rtl_btc_init_variables_wifi_only, ptr @rtl_btc_deinit_variables, ptr @rtl_btc_init_hal_vars, ptr @rtl_btc_power_on_setting, ptr @rtl_btc_init_hw_config, ptr @rtl_btc_init_hw_config_wifi_only, ptr @rtl_btc_ips_notify, ptr @rtl_btc_lps_notify, ptr @rtl_btc_scan_notify, ptr @rtl_btc_scan_notify_wifi_only, ptr @rtl_btc_connect_notify, ptr @rtl_btc_mediastatus_notify, ptr @rtl_btc_periodical, ptr @rtl_btc_halt_notify, ptr @rtl_btc_btinfo_notify, ptr @rtl_btc_btmpinfo_notify, ptr @rtl_btc_is_limited_dig, ptr @rtl_btc_is_disable_edca_turbo, ptr @rtl_btc_is_bt_disabled, ptr @rtl_btc_special_packet_notify, ptr @rtl_btc_switch_band_notify, ptr @rtl_btc_switch_band_notify_wifionly, ptr @rtl_btc_display_bt_coex_info, ptr @rtl_btc_record_pwr_mode, ptr @rtl_btc_get_lps_val, ptr @rtl_btc_get_rpwm_val, ptr @rtl_btc_is_bt_ctrl_lps, ptr @rtl_btc_get_ampdu_cfg, ptr @rtl_btc_is_bt_lps_on }, [40 x i8] zeroinitializer }, align 32
@__kstrtab_rtl_btc_get_ops_pointer = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtl_btc_get_ops_pointer = external dso_local constant [0 x i8], align 1
@__ksymtab_rtl_btc_get_ops_pointer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtl_btc_get_ops_pointer to i32), ptr @__kstrtab_rtl_btc_get_ops_pointer, ptr @__kstrtabns_rtl_btc_get_ops_pointer }, section "___ksymtab+rtl_btc_get_ops_pointer", align 4
@__UNIQUE_ID_author356 = internal constant [50 x i8] c"btcoexist.author=Page He\09<page_he@realsil.com.cn>\00", section ".modinfo", align 1
@__UNIQUE_ID_author357 = internal constant [55 x i8] c"btcoexist.author=Realtek WlanFAE\09<wlanfae@realtek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author358 = internal constant [58 x i8] c"btcoexist.author=Larry Finger\09<Larry.FInger@lwfinger.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_file359 = internal constant [72 x i8] c"btcoexist.file=drivers/net/wireless/realtek/rtlwifi/btcoexist/btcoexist\00", section ".modinfo", align 1
@__UNIQUE_ID_license360 = internal constant [22 x i8] c"btcoexist.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description361 = internal constant [56 x i8] c"btcoexist.description=Realtek 802.11n PCI wireless core\00", section ".modinfo", align 1
@__initcall__kmod_btcoexist__362_533_rtl_btcoexist_module_init6 = internal global ptr @rtl_btcoexist_module_init, section ".initcall6.init", align 4
@__exitcall_rtl_btcoexist_module_exit = internal global ptr @rtl_btcoexist_module_exit, section ".exitcall.exit", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 14]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 49, i32 15 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 194, i32 2 }
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 386, i32 2 }
@___asan_gen_.13 = private unnamed_addr constant [18 x i8] c"rtl_btc_operation\00", align 1
@___asan_gen_.14 = private constant [60 x i8] c"../drivers/net/wireless/realtek/rtlwifi/btcoexist/rtl_btc.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 11, i32 27 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_author356, ptr @__UNIQUE_ID_author357, ptr @__UNIQUE_ID_author358, ptr @__UNIQUE_ID_description361, ptr @__UNIQUE_ID_file359, ptr @__UNIQUE_ID_license360, ptr @__exitcall_rtl_btcoexist_module_exit, ptr @__initcall__kmod_btcoexist__362_533_rtl_btcoexist_module_init6, ptr @__ksymtab_rtl_btc_get_ops_pointer, ptr @rtl_btcoexist_module_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @rtl_btc_operation], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_btc_operation to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl_btc_display_bt_coex_info(ptr nocapture noundef readonly %rtlpriv, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %btc_context = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 49, i32 2
  %0 = ptrtoint ptr %btc_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %btc_context, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @exhalbtc_display_bt_coex_info(ptr noundef nonnull %1, ptr noundef %m) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exhalbtc_display_bt_coex_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtl_btc_record_pwr_mode(ptr nocapture noundef readonly %rtlpriv, ptr nocapture noundef readonly %buf, i8 noundef zeroext %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %btc_context = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 49, i32 2
  %0 = ptrtoint ptr %btc_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %btc_context, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = tail call i8 @llvm.umin.i8(i8 %len, i8 10)
  %spec.select = zext i8 %2 to i32
  %pwr_mode_val = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 15
  %3 = call ptr @memcpy(ptr %pwr_mode_val, ptr %buf, i32 %spec.select)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @rtl_btc_get_lps_val(ptr nocapture noundef readonly %rtlpriv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %btc_context = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 49, i32 2
  %0 = ptrtoint ptr %btc_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %btc_context, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %lps_val = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 3, i32 25
  %2 = ptrtoint ptr %lps_val to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %lps_val, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %3, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @rtl_btc_get_rpwm_val(ptr nocapture noundef readonly %rtlpriv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %btc_context = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 49, i32 2
  %0 = ptrtoint ptr %btc_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %btc_context, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %rpwm_val = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 3, i32 26
  %2 = ptrtoint ptr %rpwm_val to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rpwm_val, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %3, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @rtl_btc_is_bt_ctrl_lps(ptr nocapture noundef readonly %rtlpriv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %btc_context = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 49, i32 2
  %0 = ptrtoint ptr %btc_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %btc_context, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %bt_ctrl_lps = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 3, i32 20
  %2 = ptrtoint ptr %bt_ctrl_lps to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bt_ctrl_lps, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2 = icmp ne i8 %3, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool2, %if.end ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @rtl_btc_is_bt_lps_on(ptr nocapture noundef readonly %rtlpriv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %btc_context = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 49, i32 2
  %0 = ptrtoint ptr %btc_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %btc_context, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %bt_lps_on = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 3, i32 22
  %2 = ptrtoint ptr %bt_lps_on to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bt_lps_on, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2 = icmp ne i8 %3, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool2, %if.end ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtl_btc_get_ampdu_cfg(ptr nocapture noundef readonly %rtlpriv, ptr noundef writeonly %reject_agg, ptr noundef writeonly %ctrl_agg_size, ptr noundef writeonly %agg_size) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %btc_context = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 49, i32 2
  %0 = ptrtoint ptr %btc_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %btc_context, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %reject_agg to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %reject_agg, align 1
  %3 = ptrtoint ptr %ctrl_agg_size to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %ctrl_agg_size, align 1
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq ptr %reject_agg, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %reject_agg_pkt = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 3, i32 9
  %4 = ptrtoint ptr %reject_agg_pkt to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reject_agg_pkt, align 1, !range !35
  %6 = ptrtoint ptr %reject_agg to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %reject_agg, align 1
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %tobool6.not = icmp eq ptr %ctrl_agg_size, null
  br i1 %tobool6.not, label %if.end5.if.end11_crit_edge, label %if.then7

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %bt_ctrl_agg_buf_size = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 3, i32 13
  %7 = ptrtoint ptr %bt_ctrl_agg_buf_size to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bt_ctrl_agg_buf_size, align 1, !range !35
  %9 = ptrtoint ptr %ctrl_agg_size to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %ctrl_agg_size, align 1
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.end5.if.end11_crit_edge
  %tobool12.not = icmp eq ptr %agg_size, null
  br i1 %tobool12.not, label %if.end11.cleanup_crit_edge, label %if.then13

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %agg_buf_size = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 3, i32 6
  %10 = ptrtoint ptr %agg_buf_size to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %agg_buf_size, align 2
  %12 = ptrtoint ptr %agg_size to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %agg_size, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end11.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl_btc_init_variables(ptr noundef %rtlpriv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i4.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 376) #13
  %btc_context.i = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 49, i32 2
  %1 = ptrtoint ptr %btc_context.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i4.i, ptr %btc_context.i, align 8
  %call = tail call zeroext i1 @exhalbtc_initlize_variables(ptr noundef %rtlpriv) #10
  %call1 = tail call zeroext i1 @exhalbtc_bind_bt_coex_withadapter(ptr noundef %rtlpriv) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @exhalbtc_initlize_variables(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @exhalbtc_bind_bt_coex_withadapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl_btc_init_variables_wifi_only(ptr noundef %rtlpriv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 16) #13
  %wifi_only_context.i = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 49, i32 3
  %1 = ptrtoint ptr %wifi_only_context.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %wifi_only_context.i, align 4
  %call = tail call zeroext i1 @exhalbtc_initlize_variables_wifi_only(ptr noundef %rtlpriv) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @exhalbtc_initlize_variables_wifi_only(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl_btc_deinit_variables(ptr nocapture noundef %rtlpriv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %btc_context.i = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 49, i32 2
  %0 = ptrtoint ptr %btc_context.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %btc_context.i, align 8
  tail call void @kfree(ptr noundef %1) #10
  %2 = ptrtoint ptr %btc_context.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %btc_context.i, align 8
  %wifi_only_context.i = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 49, i32 3
  %3 = ptrtoint ptr %wifi_only_context.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wifi_only_context.i, align 4
  tail call void @kfree(ptr noundef %4) #10
  %5 = ptrtoint ptr %wifi_only_context.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %wifi_only_context.i, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtl_btc_init_hal_vars(ptr nocapture %rtlpriv) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl_btc_power_on_setting(ptr nocapture noundef readonly %rtlpriv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %btc_context = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 49, i32 2
  %0 = ptrtoint ptr %btc_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %btc_context, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @exhalbtc_power_on_setting(ptr noundef nonnull %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @exhalbtc_power_on_setting(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl_btc_init_hw_config(ptr noundef %rtlpriv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %btc_context = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 49, i32 2
  %0 = ptrtoint ptr %btc_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %btc_context, align 8
  %btcoexist1.i = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 49, i32 1, i32 1
  %2 = ptrtoint ptr %btcoexist1.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %btcoexist1.i, align 1
  %conv = zext i8 %3 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %rtlpriv, i64 noundef 4, i32 noundef 3, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.rtl_btc_init_hw_config, i32 noundef %conv) #10
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  tail call void @exhalbtc_init_hw_config(ptr noundef nonnull %1, i1 noundef zeroext %tobool2.not) #10
  tail call void @exhalbtc_init_coex_dm(ptr noundef nonnull %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @rtl_get_hwpg_bt_exist(ptr nocapture noundef readonly %rtlpriv) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %btcoexist1 = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 49, i32 1, i32 1
  %0 = ptrtoint ptr %btcoexist1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %btcoexist1, align 1
  ret i8 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exhalbtc_init_hw_config(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exhalbtc_init_coex_dm(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl_btc_init_hw_config_wifi_only(ptr nocapture noundef readonly %rtlpriv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %wifi_only_context = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 49, i32 3
  %0 = ptrtoint ptr %wifi_only_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wifi_only_context, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @exhalbtc_init_hw_config_wifi_only(ptr noundef nonnull %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @exhalbtc_init_hw_config_wifi_only(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl_btc_ips_notify(ptr nocapture noundef readonly %rtlpriv, i8 noundef zeroext %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %btc_context = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 49, i32 2
  %0 = ptrtoint ptr %btc_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %btc_context, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @exhalbtc_ips_notify(ptr noundef nonnull %1, i8 noundef zeroext %type) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %type)
  %cmp = icmp eq i8 %type, 0
  br i1 %cmp, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @exhalbtc_scan_notify(ptr noundef nonnull %1, i8 noundef zeroext 1) #10
  tail call void @exhalbtc_scan_notify(ptr noundef nonnull %1, i8 noundef zeroext 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @exhalbtc_ips_notify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exhalbtc_scan_notify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl_btc_lps_notify(ptr nocapture noundef readonly %rtlpriv, i8 noundef zeroext %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %btc_context = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 49, i32 2
  %0 = ptrtoint ptr %btc_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %btc_context, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @exhalbtc_lps_notify(ptr noundef nonnull %1, i8 noundef zeroext %type) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @exhalbtc_lps_notify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl_btc_scan_notify(ptr nocapture noundef readonly %rtlpriv, i8 noundef zeroext %scantype) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %btc_context = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 49, i32 2
  %0 = ptrtoint ptr %btc_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %btc_context, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @exhalbtc_scan_notify(ptr noundef nonnull %1, i8 noundef zeroext %scantype) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl_btc_scan_notify_wifi_only(ptr nocapture noundef readonly %rtlpriv, i8 zeroext %scantype) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %wifi_only_context = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 49, i32 3
  %0 = ptrtoint ptr %wifi_only_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wifi_only_context, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %current_bandtype = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 10, i32 53
  %2 = ptrtoint ptr %current_bandtype to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_bandtype, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  %conv2 = zext i1 %cmp to i8
  tail call void @exhalbtc_scan_notify_wifi_only(ptr noundef nonnull %1, i8 noundef zeroext %conv2) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @exhalbtc_scan_notify_wifi_only(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl_btc_connect_notify(ptr nocapture noundef readonly %rtlpriv, i8 noundef zeroext %action) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %btc_context = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 49, i32 2
  %0 = ptrtoint ptr %btc_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %btc_context, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @exhalbtc_connect_notify(ptr noundef nonnull %1, i8 noundef zeroext %action) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @exhalbtc_connect_notify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl_btc_mediastatus_notify(ptr nocapture noundef readonly %rtlpriv, i32 noundef %mstatus) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %btc_context = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 49, i32 2
  %0 = ptrtoint ptr %btc_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %btc_context, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @exhalbtc_mediastatus_notify(ptr noundef nonnull %1, i32 noundef %mstatus) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @exhalbtc_mediastatus_notify(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl_btc_periodical(ptr nocapture noundef readonly %rtlpriv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %btc_context = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 49, i32 2
  %0 = ptrtoint ptr %btc_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %btc_context, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @exhalbtc_periodical(ptr noundef nonnull %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @exhalbtc_periodical(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl_btc_halt_notify(ptr nocapture noundef readonly %rtlpriv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %btc_context = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 49, i32 2
  %0 = ptrtoint ptr %btc_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %btc_context, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @exhalbtc_halt_notify(ptr noundef nonnull %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @exhalbtc_halt_notify(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl_btc_btinfo_notify(ptr nocapture noundef readonly %rtlpriv, ptr noundef %tmp_buf, i8 noundef zeroext %length) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %btc_context = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 49, i32 2
  %0 = ptrtoint ptr %btc_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %btc_context, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @exhalbtc_bt_info_notify(ptr noundef nonnull %1, ptr noundef %tmp_buf, i8 noundef zeroext %length) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @exhalbtc_bt_info_notify(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl_btc_btmpinfo_notify(ptr noundef %rtlpriv, ptr noundef readonly %tmp_buf, i8 noundef zeroext %length) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %btc_context = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 49, i32 2
  %0 = ptrtoint ptr %btc_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %btc_context, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %length)
  %cmp = icmp ult i8 %length, 4
  %tobool3.not = icmp eq ptr %tmp_buf, null
  %or.cond = or i1 %tobool3.not, %cmp
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %2 = ptrtoint ptr %tmp_buf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tmp_buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp7.not = icmp eq i8 %3, 1
  br i1 %cmp7.not, label %if.end10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %arrayidx11 = getelementptr i8, ptr %tmp_buf, i32 2
  %4 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx11, align 1
  %6 = lshr i8 %5, 4
  %arrayidx14 = getelementptr i8, ptr %tmp_buf, i32 3
  %conv15 = zext i8 %6 to i32
  %7 = zext i32 %conv15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv15, label %if.end10.sw.epilog_crit_edge [
    i32 14, label %sw.bb
    i32 5, label %sw.bb25
    i32 6, label %sw.bb27
    i32 9, label %sw.bb29
    i32 7, label %sw.bb31
    i32 8, label %sw.bb39
    i32 2, label %sw.bb47
    i32 3, label %sw.bb50
    i32 4, label %sw.bb66
    i32 10, label %sw.bb69
  ]

if.end10.sw.epilog_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx14, align 1
  %conv17 = zext i8 %9 to i16
  %arrayidx18 = getelementptr i8, ptr %tmp_buf, i32 4
  %10 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %11 to i16
  %shl = shl nuw i16 %conv19, 8
  %or = or i16 %shl, %conv17
  %arrayidx21 = getelementptr i8, ptr %tmp_buf, i32 5
  %12 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx21, align 1
  %bt_real_fw_ver22 = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 3, i32 16
  %14 = ptrtoint ptr %bt_real_fw_ver22 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %or, ptr %bt_real_fw_ver22, align 2
  %bt_fw_ver24 = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 3, i32 17
  %15 = ptrtoint ptr %bt_fw_ver24 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %13, ptr %bt_fw_ver24, align 4
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx14, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %afh_map_l = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 3, i32 28
  %19 = ptrtoint ptr %afh_map_l to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %afh_map_l, align 4
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx14, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %afh_map_m = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 3, i32 29
  %23 = ptrtoint ptr %afh_map_m to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %afh_map_m, align 4
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx14, align 2
  %26 = tail call i16 @llvm.bswap.i16(i16 %25)
  %afh_map_h = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 3, i32 30
  %27 = ptrtoint ptr %afh_map_h to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %afh_map_h, align 4
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx14, align 1
  %conv33 = zext i8 %29 to i32
  %arrayidx34 = getelementptr i8, ptr %tmp_buf, i32 4
  %30 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %31 to i32
  %shl36 = shl nuw nsw i32 %conv35, 8
  %or37 = or i32 %shl36, %conv33
  %bt_supported_feature = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 3, i32 31
  %32 = ptrtoint ptr %bt_supported_feature to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or37, ptr %bt_supported_feature, align 4
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx14, align 1
  %conv41 = zext i8 %34 to i32
  %arrayidx42 = getelementptr i8, ptr %tmp_buf, i32 4
  %35 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %36 to i32
  %shl44 = shl nuw nsw i32 %conv43, 8
  %or45 = or i32 %shl44, %conv41
  %bt_supported_version = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 3, i32 32
  %37 = ptrtoint ptr %bt_supported_version to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or45, ptr %bt_supported_version, align 4
  br label %sw.epilog

sw.bb47:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx14, align 1
  %bt_ant_det_val = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 3, i32 35
  %40 = ptrtoint ptr %bt_ant_det_val to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %bt_ant_det_val, align 4
  br label %sw.epilog

sw.bb50:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx14, align 1
  %conv52 = zext i8 %42 to i32
  %arrayidx53 = getelementptr i8, ptr %tmp_buf, i32 4
  %43 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx53, align 1
  %conv54 = zext i8 %44 to i32
  %shl55 = shl nuw nsw i32 %conv54, 8
  %or56 = or i32 %shl55, %conv52
  %arrayidx57 = getelementptr i8, ptr %tmp_buf, i32 5
  %45 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx57, align 1
  %conv58 = zext i8 %46 to i32
  %shl59 = shl nuw nsw i32 %conv58, 16
  %or60 = or i32 %or56, %shl59
  %arrayidx61 = getelementptr i8, ptr %tmp_buf, i32 6
  %47 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx61, align 1
  %conv62 = zext i8 %48 to i32
  %shl63 = shl nuw i32 %conv62, 24
  %or64 = or i32 %or60, %shl63
  %bt_ble_scan_para = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 3, i32 37
  %49 = ptrtoint ptr %bt_ble_scan_para to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %or64, ptr %bt_ble_scan_para, align 4
  br label %sw.epilog

sw.bb66:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx14, align 1
  %bt_ble_scan_type = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 3, i32 36
  %52 = ptrtoint ptr %bt_ble_scan_type to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %bt_ble_scan_type, align 1
  br label %sw.epilog

sw.bb69:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx14, align 4
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  %bt_device_info = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 3, i32 33
  %56 = ptrtoint ptr %bt_device_info to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %bt_device_info, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb69, %sw.bb66, %sw.bb50, %sw.bb47, %sw.bb39, %sw.bb31, %sw.bb29, %sw.bb27, %sw.bb25, %sw.bb, %if.end10.sw.epilog_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %rtlpriv, i64 noundef 1073741824, i32 noundef 4, ptr noundef nonnull @.str.2, i32 noundef %conv15) #10
  %bt_mp_comp = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 16
  tail call void @complete(ptr noundef %bt_mp_comp) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @rtl_btc_is_limited_dig(ptr nocapture noundef readonly %rtlpriv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %btc_context = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 49, i32 2
  %0 = ptrtoint ptr %btc_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %btc_context, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %limited_dig = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %limited_dig to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %limited_dig, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2 = icmp ne i8 %3, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool2, %if.end ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl_btc_is_disable_edca_turbo(ptr noundef %rtlpriv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 13, i32 11
  %0 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read32_sync.i, align 4
  %call.i = tail call i32 %1(ptr noundef %rtlpriv, i32 noundef 1284) #10
  %call1 = tail call zeroext i1 @halbtc_is_wifi_uplink(ptr noundef %rtlpriv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 6202411, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 6202411
  br i1 %cmp.not, label %entry.if.end8_crit_edge, label %if.then7

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then7:                                         ; preds = %entry
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 13, i32 7
  %2 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write32_async.i, align 4
  tail call void %3(ptr noundef %rtlpriv, i32 noundef 1284, i32 noundef 6202411) #10
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 32
  %4 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %write_readback.i, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.then7.if.end8_crit_edge, label %if.then.i

if.then7.if.end8_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read32_sync.i, align 4
  %call.i19 = tail call i32 %9(ptr noundef %rtlpriv, i32 noundef 1284) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then.i, %if.then7.if.end8_crit_edge, %entry.if.end8_crit_edge
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @halbtc_is_wifi_uplink(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @rtl_btc_is_bt_disabled(ptr nocapture noundef readonly %rtlpriv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %btc_context = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 49, i32 2
  %0 = ptrtoint ptr %btc_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %btc_context, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %bt_info = getelementptr inbounds %struct.btc_coexist, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bt_info to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bt_info, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp ne i8 %3, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %entry.cleanup_crit_edge ], [ %tobool2.not, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl_btc_special_packet_notify(ptr nocapture noundef readonly %rtlpriv, i8 noundef zeroext %pkt_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %btc_context = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 49, i32 2
  %0 = ptrtoint ptr %btc_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %btc_context, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @exhalbtc_special_packet_notify(ptr noundef nonnull %1, i8 noundef zeroext %pkt_type) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @exhalbtc_special_packet_notify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl_btc_switch_band_notify(ptr nocapture noundef readonly %rtlpriv, i8 noundef zeroext %band_type, i1 noundef zeroext %scanning) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %btc_context = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 49, i32 2
  %0 = ptrtoint ptr %btc_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %btc_context, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i8 %band_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %band_type, label %if.end.cleanup_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %if.end.if.then8_crit_edge
  ]

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %. = select i1 %scanning, i8 1, i8 3
  br label %if.then8

if.then8:                                         ; preds = %sw.bb, %if.end.if.then8_crit_edge
  %type.0.ph = phi i8 [ %., %sw.bb ], [ 2, %if.end.if.then8_crit_edge ]
  tail call void @exhalbtc_switch_band_notify(ptr noundef nonnull %1, i8 noundef zeroext %type.0.ph) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @exhalbtc_switch_band_notify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl_btc_switch_band_notify_wifionly(ptr nocapture noundef readonly %rtlpriv, i8 noundef zeroext %band_type, i1 zeroext %scanning) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %wifi_only_context = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 49, i32 3
  %0 = ptrtoint ptr %wifi_only_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wifi_only_context, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %band_type)
  %cmp = icmp eq i8 %band_type, 1
  %conv2 = zext i1 %cmp to i8
  tail call void @exhalbtc_switch_band_notify_wifi_only(ptr noundef nonnull %1, i8 noundef zeroext %conv2) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @exhalbtc_switch_band_notify_wifi_only(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @rtl_btc_get_ops_pointer() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @rtl_btc_operation
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mgnt_link_status_query(ptr nocapture noundef readonly %hw) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %opmode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 8
  %2 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %opmode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %link_state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 10
  %4 = ptrtoint ptr %link_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %link_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp4 = icmp ugt i32 %5, 1
  br i1 %cmp4, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %m_status.0 = phi i32 [ 1, %if.then ], [ 0, %lor.lhs.false.if.end_crit_edge ]
  ret i32 %m_status.0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rtl_btcoexist_module_exit() #8 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rtl_btcoexist_module_init() #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !18, !20, !22, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/rtl_btc.c", i32 49, i32 15}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/rtl_btc.c", i32 194, i32 2}
!4 = !{ptr @__func__.rtl_btc_init_hw_config, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/rtl_btc.c", i32 386, i32 2}
!7 = !{ptr @__ksymtab_rtl_btc_get_ops_pointer, !8, !"__ksymtab_rtl_btc_get_ops_pointer", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/rtl_btc.c", i32 495, i32 1}
!9 = !{ptr @__UNIQUE_ID_author356, !10, !"__UNIQUE_ID_author356", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/rtl_btc.c", i32 517, i32 1}
!11 = !{ptr @__UNIQUE_ID_author357, !12, !"__UNIQUE_ID_author357", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/rtl_btc.c", i32 518, i32 1}
!13 = !{ptr @__UNIQUE_ID_author358, !14, !"__UNIQUE_ID_author358", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/rtl_btc.c", i32 519, i32 1}
!15 = !{ptr @__UNIQUE_ID_file359, !16, !"__UNIQUE_ID_file359", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/rtl_btc.c", i32 520, i32 1}
!17 = !{ptr @__UNIQUE_ID_license360, !16, !"__UNIQUE_ID_license360", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_description361, !19, !"__UNIQUE_ID_description361", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/rtl_btc.c", i32 521, i32 1}
!20 = !{ptr @__initcall__kmod_btcoexist__362_533_rtl_btcoexist_module_init6, !21, !"__initcall__kmod_btcoexist__362_533_rtl_btcoexist_module_init6", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/rtl_btc.c", i32 533, i32 1}
!22 = !{ptr @__exitcall_rtl_btcoexist_module_exit, !23, !"__exitcall_rtl_btcoexist_module_exit", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/rtl_btc.c", i32 534, i32 1}
!24 = !{ptr @rtl_btc_operation, !25, !"rtl_btc_operation", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/realtek/rtlwifi/btcoexist/rtl_btc.c", i32 11, i32 27}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i8 0, i8 2}
