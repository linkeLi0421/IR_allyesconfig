; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/stats.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/stats.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+rtl_query_rxpwrpercentage\22, \22a\22\09"
module asm "\09.weak\09__crc_rtl_query_rxpwrpercentage\09\09\09\09"
module asm "\09.long\09__crc_rtl_query_rxpwrpercentage\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtl_query_rxpwrpercentage:\09\09\09\09\09"
module asm "\09.asciz \09\22rtl_query_rxpwrpercentage\22\09\09\09\09\09"
module asm "__kstrtabns_rtl_query_rxpwrpercentage:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rtl_evm_db_to_percentage\22, \22a\22\09"
module asm "\09.weak\09__crc_rtl_evm_db_to_percentage\09\09\09\09"
module asm "\09.long\09__crc_rtl_evm_db_to_percentage\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtl_evm_db_to_percentage:\09\09\09\09\09"
module asm "\09.asciz \09\22rtl_evm_db_to_percentage\22\09\09\09\09\09"
module asm "__kstrtabns_rtl_evm_db_to_percentage:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rtl_signal_scale_mapping\22, \22a\22\09"
module asm "\09.weak\09__crc_rtl_signal_scale_mapping\09\09\09\09"
module asm "\09.long\09__crc_rtl_signal_scale_mapping\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtl_signal_scale_mapping:\09\09\09\09\09"
module asm "\09.asciz \09\22rtl_signal_scale_mapping\22\09\09\09\09\09"
module asm "__kstrtabns_rtl_signal_scale_mapping:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rtl_process_phyinfo\22, \22a\22\09"
module asm "\09.weak\09__crc_rtl_process_phyinfo\09\09\09\09"
module asm "\09.long\09__crc_rtl_process_phyinfo\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtl_process_phyinfo:\09\09\09\09\09"
module asm "\09.asciz \09\22rtl_process_phyinfo\22\09\09\09\09\09"
module asm "__kstrtabns_rtl_process_phyinfo:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rtl_stats = type { [6 x i8], [2 x i32], i8, i8, i8, i8, i8, i8, i8, i8, i16, i64, i32, i8, i16, i8, i32, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, [4 x i8], [4 x i8], [4 x i8], [4 x i16], [4 x i16], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, i8, i32, i32, [2 x i32] }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.rtl_sta_info = type <{ %struct.list_head, [9 x %struct.rtl_tid_data], %struct.rssi_sta, i8, i16, i8, i8, [6 x i8] }>
%struct.rssi_sta = type { i32, i32 }

@__kstrtab_rtl_query_rxpwrpercentage = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtl_query_rxpwrpercentage = external dso_local constant [0 x i8], align 1
@__ksymtab_rtl_query_rxpwrpercentage = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtl_query_rxpwrpercentage to i32), ptr @__kstrtab_rtl_query_rxpwrpercentage, ptr @__kstrtabns_rtl_query_rxpwrpercentage }, section "___ksymtab+rtl_query_rxpwrpercentage", align 4
@__kstrtab_rtl_evm_db_to_percentage = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtl_evm_db_to_percentage = external dso_local constant [0 x i8], align 1
@__ksymtab_rtl_evm_db_to_percentage = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtl_evm_db_to_percentage to i32), ptr @__kstrtab_rtl_evm_db_to_percentage, ptr @__kstrtabns_rtl_evm_db_to_percentage }, section "___ksymtab+rtl_evm_db_to_percentage", align 4
@__kstrtab_rtl_signal_scale_mapping = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtl_signal_scale_mapping = external dso_local constant [0 x i8], align 1
@__ksymtab_rtl_signal_scale_mapping = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtl_signal_scale_mapping to i32), ptr @__kstrtab_rtl_signal_scale_mapping, ptr @__kstrtabns_rtl_signal_scale_mapping }, section "___ksymtab+rtl_signal_scale_mapping", align 4
@__kstrtab_rtl_process_phyinfo = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtl_process_phyinfo = external dso_local constant [0 x i8], align 1
@__ksymtab_rtl_process_phyinfo = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtl_process_phyinfo to i32), ptr @__kstrtab_rtl_process_phyinfo, ptr @__kstrtabns_rtl_process_phyinfo }, section "___ksymtab+rtl_process_phyinfo", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_ = private constant [48 x i8] c"../drivers/net/wireless/realtek/rtlwifi/stats.c\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 695, i32 2 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 723, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_rtl_evm_db_to_percentage, ptr @__ksymtab_rtl_process_phyinfo, ptr @__ksymtab_rtl_query_rxpwrpercentage, ptr @__ksymtab_rtl_signal_scale_mapping, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @rtl_query_rxpwrpercentage(i8 noundef signext %antpower) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i8 %antpower, -20
  call void @__sanitizer_cov_trace_const_cmp1(i8 -119, i8 %0)
  %1 = icmp ult i8 %0, -119
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %antpower)
  %cmp6 = icmp sgt i8 %antpower, -1
  %add = add i8 %antpower, 100
  %spec.select = select i1 %cmp6, i8 100, i8 %add
  %retval.0 = select i1 %1, i8 0, i8 %spec.select
  ret i8 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @rtl_evm_db_to_percentage(i8 noundef signext %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %value)
  %cmp = icmp slt i8 %value, 0
  %conv = sext i8 %value to i32
  %sub = sub nsw i32 0, %conv
  %0 = tail call i32 @llvm.smin.i32(i32 %sub, i32 33)
  %1 = trunc i32 %0 to i8
  %.op = mul i8 %1, 3
  %conv9 = select i1 %cmp, i8 %.op, i8 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 99, i8 %conv9)
  %cmp11 = icmp eq i8 %conv9, 99
  %spec.store.select = select i1 %cmp11, i8 100, i8 %conv9
  ret i8 %spec.store.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rtl_signal_scale_mapping(ptr nocapture readnone %hw, i32 noundef %currsig) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %currsig, -61
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %0)
  %1 = icmp ult i32 %0, 40
  br i1 %1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %div75.lhs.trunc = add nuw nsw i32 %currsig, 196
  %div757682 = lshr i32 %div75.lhs.trunc, 2
  %div75.zext = and i32 %div757682, 63
  %add = add nuw nsw i32 %div75.zext, 90
  br label %if.end51

if.else:                                          ; preds = %entry
  %2 = add i32 %currsig, -41
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %2)
  %3 = icmp ult i32 %2, 20
  br i1 %3, label %if.then5, label %if.else9

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %div777.lhs.trunc = add nuw nsw i32 %currsig, 216
  %div7777881 = lshr i32 %div777.lhs.trunc, 1
  %div777.zext = and i32 %div7777881, 127
  %add8 = add nuw nsw i32 %div777.zext, 78
  br label %if.end51

if.else9:                                         ; preds = %if.else
  %4 = add i32 %currsig, -31
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %4)
  %5 = icmp ult i32 %4, 10
  br i1 %5, label %if.then13, label %if.else16

if.then13:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #8
  %add15 = add nuw nsw i32 %currsig, 36
  br label %if.end51

if.else16:                                        ; preds = %if.else9
  %6 = add i32 %currsig, -21
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %6)
  %7 = icmp ult i32 %6, 10
  br i1 %7, label %if.then20, label %if.else23

if.then20:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #8
  %add22 = add nuw nsw i32 %currsig, 34
  br label %if.end51

if.else23:                                        ; preds = %if.else16
  %8 = add i32 %currsig, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %8)
  %9 = icmp ult i32 %8, 16
  br i1 %9, label %if.then27, label %if.else31

if.then27:                                        ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #8
  %currsig.tr = trunc i32 %currsig to i8
  %10 = shl nuw nsw i8 %currsig.tr, 1
  %div2979.lhs.trunc = add nsw i8 %10, -10
  %div297980 = udiv i8 %div2979.lhs.trunc, 3
  %narrow = add nuw nsw i8 %div297980, 42
  %add30 = zext i8 %narrow to i32
  br label %if.end51

if.else31:                                        ; preds = %if.else23
  %switch.tableidx = add i32 %currsig, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %11 = icmp ult i32 %switch.tableidx, 4
  br i1 %11, label %switch.lookup, label %if.else31.if.end51_crit_edge

if.else31.if.end51_crit_edge:                     ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

switch.lookup:                                    ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #8
  %switch.idx.mult = mul i32 %switch.tableidx, 9
  %switch.offset = add i32 %switch.idx.mult, 9
  br label %if.end51

if.end51:                                         ; preds = %switch.lookup, %if.else31.if.end51_crit_edge, %if.then27, %if.then20, %if.then13, %if.then5, %if.then
  %retsig.0 = phi i32 [ %add, %if.then ], [ %add8, %if.then5 ], [ %add15, %if.then13 ], [ %add22, %if.then20 ], [ %add30, %if.then27 ], [ %switch.offset, %switch.lookup ], [ %currsig, %if.else31.if.end51_crit_edge ]
  ret i32 %retsig.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl_process_phyinfo(ptr nocapture noundef readonly %hw, ptr nocapture readnone %buffer, ptr noundef %pstatus) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %packet_matchbssid = getelementptr inbounds %struct.rtl_stats, ptr %pstatus, i32 0, i32 40
  %0 = ptrtoint ptr %packet_matchbssid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %packet_matchbssid, align 2, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %packet_toself.i = getelementptr inbounds %struct.rtl_stats, ptr %pstatus, i32 0, i32 43
  %4 = ptrtoint ptr %packet_toself.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %packet_toself.i, align 1, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end
  %packet_beacon.i = getelementptr inbounds %struct.rtl_stats, ptr %pstatus, i32 0, i32 44
  %6 = ptrtoint ptr %packet_beacon.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %packet_beacon.i, align 2, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not.i = icmp eq i8 %7, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.rtl_process_ui_rssi.exit_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i.rtl_process_ui_rssi.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_process_ui_rssi.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %rx_pwdb_all.i = getelementptr inbounds %struct.rtl_stats, ptr %pstatus, i32 0, i32 29
  %8 = ptrtoint ptr %rx_pwdb_all.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_pwdb_all.i, align 4
  %pwdb_all_cnt.i = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 24, i32 15
  %10 = ptrtoint ptr %pwdb_all_cnt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pwdb_all_cnt.i, align 8
  %add.i = add i32 %11, %9
  store i32 %add.i, ptr %pwdb_all_cnt.i, align 8
  %rssi_calculate_cnt.i = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 24, i32 14
  %12 = ptrtoint ptr %rssi_calculate_cnt.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rssi_calculate_cnt.i, align 4
  %inc.i = add i32 %13, 1
  store i32 %inc.i, ptr %rssi_calculate_cnt.i, align 4
  %ui_rssi.i = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 24, i32 22
  %total_num.i = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 24, i32 22, i32 2
  %14 = ptrtoint ptr %total_num.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %total_num.i, align 4
  %inc4.i = add i32 %15, 1
  store i32 %inc4.i, ptr %total_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %15)
  %cmp.i = icmp ugt i32 %15, 99
  br i1 %cmp.i, label %if.then5.i, label %if.end.i.if.end15.i_crit_edge

if.end.i.if.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %total_num.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 100, ptr %total_num.i, align 4
  %index.i = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 24, i32 22, i32 1
  %17 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %index.i, align 4
  %arrayidx.i = getelementptr [100 x i32], ptr %ui_rssi.i, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i, align 4
  %total_val.i = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 24, i32 22, i32 3
  %21 = ptrtoint ptr %total_val.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %total_val.i, align 4
  %sub.i = sub i32 %22, %20
  store i32 %sub.i, ptr %total_val.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then5.i, %if.end.i.if.end15.i_crit_edge
  %signalstrength.i = getelementptr inbounds %struct.rtl_stats, ptr %pstatus, i32 0, i32 18
  %23 = ptrtoint ptr %signalstrength.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %signalstrength.i, align 1
  %conv.i = zext i8 %24 to i32
  %total_val18.i = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 24, i32 22, i32 3
  %25 = ptrtoint ptr %total_val18.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %total_val18.i, align 4
  %add19.i = add i32 %26, %conv.i
  store i32 %add19.i, ptr %total_val18.i, align 4
  %27 = load i8, ptr %signalstrength.i, align 1
  %conv21.i = zext i8 %27 to i32
  %index27.i = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 24, i32 22, i32 1
  %28 = ptrtoint ptr %index27.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %index27.i, align 4
  %inc28.i = add i32 %29, 1
  store i32 %inc28.i, ptr %index27.i, align 4
  %arrayidx29.i = getelementptr [100 x i32], ptr %ui_rssi.i, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv21.i, ptr %arrayidx29.i, align 4
  %31 = load i32, ptr %index27.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %31)
  %cmp33.i = icmp ugt i32 %31, 99
  br i1 %cmp33.i, label %if.then35.i, label %if.end15.i.if.end39.i_crit_edge

if.end15.i.if.end39.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39.i

if.then35.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %index27.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %index27.i, align 4
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then35.i, %if.end15.i.if.end39.i_crit_edge
  %33 = ptrtoint ptr %total_val18.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %total_val18.i, align 4
  %35 = ptrtoint ptr %total_num.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %total_num.i, align 4
  %div.i = udiv i32 %34, %36
  %conv.i.i = and i32 %div.i, 255
  %add.i.i = add nuw nsw i32 %conv.i.i, 1
  %37 = lshr i32 %add.i.i, 1
  %sub.i.i = add nsw i32 %37, -95
  %signal_strength.i = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 24, i32 16
  %38 = ptrtoint ptr %signal_strength.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %sub.i.i, ptr %signal_strength.i, align 4
  %conv50.i = trunc i32 %sub.i.i to i8
  %rssi.i = getelementptr inbounds %struct.rtl_stats, ptr %pstatus, i32 0, i32 2
  %39 = ptrtoint ptr %rssi.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv50.i, ptr %rssi.i, align 8
  %is_cck.i = getelementptr inbounds %struct.rtl_stats, ptr %pstatus, i32 0, i32 41
  %40 = ptrtoint ptr %is_cck.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %is_cck.i, align 1, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool51.not.i = icmp eq i8 %41, 0
  br i1 %tobool51.not.i, label %for.cond.preheader.i, label %if.end39.i.rtl_process_ui_rssi.exit_crit_edge

if.end39.i.rtl_process_ui_rssi.exit_crit_edge:    ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_process_ui_rssi.exit

for.cond.preheader.i:                             ; preds = %if.end39.i
  %num_total_rfpath.i = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 14, i32 58
  %42 = ptrtoint ptr %num_total_rfpath.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %num_total_rfpath.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp56222.not.i = icmp eq i8 %43, 0
  br i1 %cmp56222.not.i, label %for.cond.preheader.i.rtl_process_ui_rssi.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.rtl_process_ui_rssi.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_process_ui_rssi.exit

for.body.i:                                       ; preds = %if.end70.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %if.end70.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx59.i = getelementptr %struct.rtl_priv, ptr %3, i32 0, i32 24, i32 17, i32 %indvars.iv.i
  %44 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx59.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp61.i = icmp eq i8 %45, 0
  br i1 %cmp61.i, label %if.then63.i, label %for.body.i.if.end70.i_crit_edge

for.body.i.if.end70.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70.i

if.then63.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx65.i = getelementptr %struct.rtl_stats, ptr %pstatus, i32 0, i32 30, i32 %indvars.iv.i
  %46 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx65.i, align 1
  %48 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %arrayidx59.i, align 1
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.then63.i, %for.body.i.if.end70.i_crit_edge
  %arrayidx73.i = getelementptr %struct.rtl_stats, ptr %pstatus, i32 0, i32 30, i32 %indvars.iv.i
  %49 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx73.i, align 1
  %conv74.i = zext i8 %50 to i16
  %51 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx59.i, align 1
  %conv79.i = zext i8 %52 to i16
  call void @__sanitizer_cov_trace_cmp1(i8 %50, i8 %52)
  %cmp80.i = icmp ugt i8 %50, %52
  %mul.i = mul nuw nsw i16 %conv79.i, 19
  %add92.i = add nuw nsw i16 %mul.i, %conv74.i
  %div93220.i = udiv i16 %add92.i, 20
  %div93.zext.i = trunc i16 %div93220.i to i8
  %add104.i = zext i1 %cmp80.i to i8
  %storemerge.in.i = add i8 %div93.zext.i, %add104.i
  %53 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %storemerge.in.i, ptr %arrayidx59.i, align 1
  %arrayidx129.i = getelementptr %struct.rtl_stats, ptr %pstatus, i32 0, i32 37, i32 %indvars.iv.i
  %54 = ptrtoint ptr %arrayidx129.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx129.i, align 1
  %conv130.i = zext i8 %55 to i32
  %arrayidx133.i = getelementptr %struct.rtl_priv, ptr %3, i32 0, i32 24, i32 10, i32 %indvars.iv.i
  %56 = ptrtoint ptr %arrayidx133.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %conv130.i, ptr %arrayidx133.i, align 4
  %arrayidx135.i = getelementptr %struct.rtl_stats, ptr %pstatus, i32 0, i32 32, i32 %indvars.iv.i
  %57 = ptrtoint ptr %arrayidx135.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx135.i, align 1
  %arrayidx138.i = getelementptr %struct.rtl_priv, ptr %3, i32 0, i32 24, i32 18, i32 %indvars.iv.i
  %59 = ptrtoint ptr %arrayidx138.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %arrayidx138.i, align 1
  %arrayidx140.i = getelementptr %struct.rtl_stats, ptr %pstatus, i32 0, i32 33, i32 %indvars.iv.i
  %60 = ptrtoint ptr %arrayidx140.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx140.i, align 2
  %arrayidx143.i = getelementptr %struct.rtl_priv, ptr %3, i32 0, i32 24, i32 20, i32 %indvars.iv.i
  %62 = ptrtoint ptr %arrayidx143.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %arrayidx143.i, align 2
  %arrayidx145.i = getelementptr %struct.rtl_stats, ptr %pstatus, i32 0, i32 34, i32 %indvars.iv.i
  %63 = ptrtoint ptr %arrayidx145.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %arrayidx145.i, align 2
  %arrayidx148.i = getelementptr %struct.rtl_priv, ptr %3, i32 0, i32 24, i32 21, i32 %indvars.iv.i
  %65 = ptrtoint ptr %arrayidx148.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %arrayidx148.i, align 2
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %66 = ptrtoint ptr %num_total_rfpath.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %num_total_rfpath.i, align 4
  %68 = zext i8 %67 to i32
  %cmp56.i = icmp ult i32 %indvars.iv.next.i, %68
  br i1 %cmp56.i, label %if.end70.i.for.body.i_crit_edge, label %if.end70.i.rtl_process_ui_rssi.exit_crit_edge

if.end70.i.rtl_process_ui_rssi.exit_crit_edge:    ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_process_ui_rssi.exit

if.end70.i.for.body.i_crit_edge:                  ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

rtl_process_ui_rssi.exit:                         ; preds = %if.end70.i.rtl_process_ui_rssi.exit_crit_edge, %for.cond.preheader.i.rtl_process_ui_rssi.exit_crit_edge, %if.end39.i.rtl_process_ui_rssi.exit_crit_edge, %land.lhs.true.i.rtl_process_ui_rssi.exit_crit_edge
  %69 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %priv.i, align 8
  %71 = tail call i32 @llvm.read_register.i32(metadata !15) #6
  %and.i.i.i.i.i.i = and i32 %71, -16384
  %72 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %74, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !26
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i.i, label %rtl_process_ui_rssi.exit.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

rtl_process_ui_rssi.exit.rcu_read_lock.exit.i_crit_edge: ; preds = %rtl_process_ui_rssi.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %rtl_process_ui_rssi.exit
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #6
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %rtl_process_ui_rssi.exit.rcu_read_lock.exit.i_crit_edge
  %opmode.i = getelementptr inbounds %struct.rtl_priv, ptr %70, i32 0, i32 9, i32 8
  %75 = ptrtoint ptr %opmode.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %opmode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %76)
  %cmp.not.i = icmp eq i32 %76, 2
  br i1 %cmp.not.i, label %rcu_read_lock.exit.i.if.end.i8_crit_edge, label %if.then.i

rcu_read_lock.exit.i.if.end.i8_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i8

if.then.i:                                        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %77 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %priv.i, align 8
  %vif.i.i = getelementptr inbounds %struct.rtl_priv, ptr %78, i32 0, i32 9, i32 7
  %79 = ptrtoint ptr %vif.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %vif.i.i, align 4
  %call.i47.i = tail call ptr @ieee80211_find_sta(ptr noundef %80, ptr noundef %pstatus) #6
  br label %if.end.i8

if.end.i8:                                        ; preds = %if.then.i, %rcu_read_lock.exit.i.if.end.i8_crit_edge
  %sta.0.i = phi ptr [ %call.i47.i, %if.then.i ], [ null, %rcu_read_lock.exit.i.if.end.i8_crit_edge ]
  %tobool.not.i7 = icmp eq ptr %sta.0.i, null
  %drv_priv2.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta.0.i, i32 0, i32 29
  %rssi_stat.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta.0.i, i32 1, i32 28, i32 6
  %undec_sm_pwdb5.i = getelementptr inbounds %struct.rtl_priv, ptr %70, i32 0, i32 15, i32 2
  %drv_priv.0.i = select i1 %tobool.not.i7, ptr null, ptr %drv_priv2.i
  %undec_sm_pwdb.0.in.i = select i1 %tobool.not.i7, ptr %undec_sm_pwdb5.i, ptr %rssi_stat.i
  %81 = ptrtoint ptr %undec_sm_pwdb.0.in.i to i32
  call void @__asan_loadN_noabort(i32 %81, i32 4)
  %undec_sm_pwdb.0.i = load i32, ptr %undec_sm_pwdb.0.in.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %undec_sm_pwdb.0.i)
  %cmp7.i = icmp slt i32 %undec_sm_pwdb.0.i, 0
  br i1 %cmp7.i, label %if.then8.i, label %if.end.i8.if.end9.i_crit_edge

if.end.i8.if.end9.i_crit_edge:                    ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

if.then8.i:                                       ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #8
  %rx_pwdb_all.i9 = getelementptr inbounds %struct.rtl_stats, ptr %pstatus, i32 0, i32 29
  %82 = ptrtoint ptr %rx_pwdb_all.i9 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %rx_pwdb_all.i9, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then8.i, %if.end.i8.if.end9.i_crit_edge
  %undec_sm_pwdb.1.i = phi i32 [ %83, %if.then8.i ], [ %undec_sm_pwdb.0.i, %if.end.i8.if.end9.i_crit_edge ]
  %rx_pwdb_all10.i = getelementptr inbounds %struct.rtl_stats, ptr %pstatus, i32 0, i32 29
  %84 = ptrtoint ptr %rx_pwdb_all10.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %rx_pwdb_all10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %undec_sm_pwdb.1.i)
  %cmp11.i = icmp ugt i32 %85, %undec_sm_pwdb.1.i
  %mul.i10 = mul i32 %undec_sm_pwdb.1.i, 19
  %add.i11 = add i32 %mul.i10, %85
  %div.i12 = udiv i32 %add.i11, 20
  %add14.i = zext i1 %cmp11.i to i32
  %undec_sm_pwdb.2.i = add nuw nsw i32 %div.i12, %add14.i
  br i1 %tobool.not.i7, label %if.else25.i, label %if.then22.i

if.then22.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %rssi_stat23.i = getelementptr inbounds %struct.rtl_sta_info, ptr %drv_priv.0.i, i32 0, i32 2
  %86 = ptrtoint ptr %rssi_stat23.i to i32
  call void @__asan_storeN_noabort(i32 %86, i32 4)
  store i32 %undec_sm_pwdb.2.i, ptr %rssi_stat23.i, align 1
  br label %if.end28.i

if.else25.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %87 = ptrtoint ptr %undec_sm_pwdb5.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %undec_sm_pwdb.2.i, ptr %undec_sm_pwdb5.i, align 8
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.else25.i, %if.then22.i
  %call.i48.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i48.i, label %if.end28.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i51.i

if.end28.i.rcu_read_unlock.exit.i_crit_edge:      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit.i

land.lhs.true.i51.i:                              ; preds = %if.end28.i
  %call1.i49.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i49.i)
  %tobool.not.i50.i = icmp eq i32 %call1.i49.i, 0
  br i1 %tobool.not.i50.i, label %land.lhs.true.i51.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i53.i

land.lhs.true.i51.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i51.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i53.i:                             ; preds = %land.lhs.true.i51.i
  %.b4.i52.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i52.i, label %land.lhs.true2.i53.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i54.i

land.lhs.true2.i53.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit.i

if.then.i54.i:                                    ; preds = %land.lhs.true2.i53.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.2) #6
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i54.i, %land.lhs.true2.i53.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i51.i.rcu_read_unlock.exit.i_crit_edge, %if.end28.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !27
  %88 = tail call i32 @llvm.read_register.i32(metadata !15) #6
  %and.i.i.i.i.i55.i = and i32 %88, -16384
  %89 = inttoptr i32 %and.i.i.i.i.i55.i to ptr
  %preempt_count.i.i.i.i56.i = getelementptr inbounds %struct.thread_info, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %preempt_count.i.i.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %preempt_count.i.i.i.i56.i, align 4
  %sub.i.i.i.i = add i32 %91, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i56.i, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  %92 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %priv.i, align 8
  %recv_signal_power.i.i = getelementptr inbounds %struct.rtl_priv, ptr %93, i32 0, i32 24, i32 11
  %94 = ptrtoint ptr %recv_signal_power.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %recv_signal_power.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp.i.i = icmp eq i32 %95, 0
  br i1 %cmp.i.i, label %if.then.i58.i, label %rcu_read_unlock.exit.i.rtl_process_pwdb.exit_crit_edge

rcu_read_unlock.exit.i.rtl_process_pwdb.exit_crit_edge: ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_process_pwdb.exit

if.then.i58.i:                                    ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %recvsignalpower.i.i = getelementptr inbounds %struct.rtl_stats, ptr %pstatus, i32 0, i32 16
  %96 = ptrtoint ptr %recvsignalpower.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %recvsignalpower.i.i, align 4
  %98 = ptrtoint ptr %recv_signal_power.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %recv_signal_power.i.i, align 8
  br label %rtl_process_pwdb.exit

rtl_process_pwdb.exit:                            ; preds = %if.then.i58.i, %rcu_read_unlock.exit.i.rtl_process_pwdb.exit_crit_edge
  %recvsignalpower3.i.i = getelementptr inbounds %struct.rtl_stats, ptr %pstatus, i32 0, i32 16
  %99 = ptrtoint ptr %recvsignalpower3.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %recvsignalpower3.i.i, align 4
  %101 = ptrtoint ptr %recv_signal_power.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %recv_signal_power.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %102)
  %cmp6.i.i = icmp sgt i32 %100, %102
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %102)
  %cmp11.i.i = icmp slt i32 %100, %102
  %spec.select.i.i = select i1 %cmp11.i.i, i32 -5, i32 0
  %weighting.0.i.i = select i1 %cmp6.i.i, i32 5, i32 %spec.select.i.i
  %mul.i.i = mul i32 %102, 5
  %add.i.i13 = add i32 %mul.i.i, %100
  %add18.i.i = add i32 %add.i.i13, %weighting.0.i.i
  %div.i.i = sdiv i32 %add18.i.i, 6
  %103 = ptrtoint ptr %recv_signal_power.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %div.i.i, ptr %recv_signal_power.i.i, align 8
  %signalquality.i = getelementptr inbounds %struct.rtl_stats, ptr %pstatus, i32 0, i32 15
  %104 = ptrtoint ptr %signalquality.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %signalquality.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %cmp.i14 = icmp eq i8 %105, 0
  br i1 %cmp.i14, label %rtl_process_pwdb.exit.return_crit_edge, label %if.end.i18

rtl_process_pwdb.exit.return_crit_edge:           ; preds = %rtl_process_pwdb.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.i18:                                       ; preds = %rtl_process_pwdb.exit
  %106 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %priv.i, align 8
  %ui_link_quality.i = getelementptr inbounds %struct.rtl_priv, ptr %107, i32 0, i32 24, i32 23
  %total_num.i16 = getelementptr inbounds %struct.rtl_priv, ptr %107, i32 0, i32 24, i32 23, i32 2
  %108 = ptrtoint ptr %total_num.i16 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %total_num.i16, align 4
  %inc.i17 = add i32 %109, 1
  store i32 %inc.i17, ptr %total_num.i16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %109)
  %cmp2.i = icmp ugt i32 %109, 19
  br i1 %cmp2.i, label %if.then4.i, label %if.end.i18.if.end14.i_crit_edge

if.end.i18.if.end14.i_crit_edge:                  ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i

if.then4.i:                                       ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #8
  %110 = ptrtoint ptr %total_num.i16 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 20, ptr %total_num.i16, align 4
  %index.i19 = getelementptr inbounds %struct.rtl_priv, ptr %107, i32 0, i32 24, i32 23, i32 1
  %111 = ptrtoint ptr %index.i19 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %index.i19, align 8
  %arrayidx.i20 = getelementptr [100 x i32], ptr %ui_link_quality.i, i32 0, i32 %112
  %113 = ptrtoint ptr %arrayidx.i20 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx.i20, align 4
  %total_val.i21 = getelementptr inbounds %struct.rtl_priv, ptr %107, i32 0, i32 24, i32 23, i32 3
  %115 = ptrtoint ptr %total_val.i21 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %total_val.i21, align 8
  %sub.i22 = sub i32 %116, %114
  store i32 %sub.i22, ptr %total_val.i21, align 8
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then4.i, %if.end.i18.if.end14.i_crit_edge
  %117 = ptrtoint ptr %signalquality.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %signalquality.i, align 8
  %conv16.i = zext i8 %118 to i32
  %total_val19.i = getelementptr inbounds %struct.rtl_priv, ptr %107, i32 0, i32 24, i32 23, i32 3
  %119 = ptrtoint ptr %total_val19.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %total_val19.i, align 8
  %add.i23 = add i32 %120, %conv16.i
  store i32 %add.i23, ptr %total_val19.i, align 8
  %121 = load i8, ptr %signalquality.i, align 8
  %conv21.i24 = zext i8 %121 to i32
  %index27.i25 = getelementptr inbounds %struct.rtl_priv, ptr %107, i32 0, i32 24, i32 23, i32 1
  %122 = ptrtoint ptr %index27.i25 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %index27.i25, align 8
  %inc28.i26 = add i32 %123, 1
  store i32 %inc28.i26, ptr %index27.i25, align 8
  %arrayidx29.i27 = getelementptr [100 x i32], ptr %ui_link_quality.i, i32 0, i32 %123
  %124 = ptrtoint ptr %arrayidx29.i27 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %conv21.i24, ptr %arrayidx29.i27, align 4
  %125 = load i32, ptr %index27.i25, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %125)
  %cmp33.i28 = icmp ugt i32 %125, 19
  br i1 %cmp33.i28, label %if.then35.i29, label %if.end14.i.if.end39.i31_crit_edge

if.end14.i.if.end39.i31_crit_edge:                ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39.i31

if.then35.i29:                                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  %126 = ptrtoint ptr %index27.i25 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 0, ptr %index27.i25, align 8
  br label %if.end39.i31

if.end39.i31:                                     ; preds = %if.then35.i29, %if.end14.i.if.end39.i31_crit_edge
  %127 = ptrtoint ptr %total_val19.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %total_val19.i, align 8
  %129 = ptrtoint ptr %total_num.i16 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %total_num.i16, align 4
  %div.i30 = udiv i32 %128, %130
  %signal_quality.i = getelementptr inbounds %struct.rtl_priv, ptr %107, i32 0, i32 24, i32 12
  %131 = ptrtoint ptr %signal_quality.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %div.i30, ptr %signal_quality.i, align 4
  %last_sigstrength_inpercent.i = getelementptr inbounds %struct.rtl_priv, ptr %107, i32 0, i32 24, i32 13
  %132 = ptrtoint ptr %last_sigstrength_inpercent.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %div.i30, ptr %last_sigstrength_inpercent.i, align 8
  %arrayidx50.i = getelementptr %struct.rtl_stats, ptr %pstatus, i32 0, i32 35, i32 0
  %133 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx50.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %134)
  %cmp52.not.i = icmp eq i8 %134, -1
  br i1 %cmp52.not.i, label %if.end39.i31.for.inc.i_crit_edge, label %if.then54.i

if.end39.i31.for.inc.i_crit_edge:                 ; preds = %if.end39.i31
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then54.i:                                      ; preds = %if.end39.i31
  %arrayidx56.i = getelementptr %struct.rtl_priv, ptr %107, i32 0, i32 24, i32 19, i32 0
  %135 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx56.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %cmp58.i = icmp eq i8 %136, 0
  br i1 %cmp58.i, label %if.then60.i, label %if.then54.i.if.end66.i_crit_edge

if.then54.i.if.end66.i_crit_edge:                 ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66.i

if.then60.i:                                      ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #8
  %137 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %134, ptr %arrayidx56.i, align 1
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.then60.i, %if.then54.i.if.end66.i_crit_edge
  %138 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx56.i, align 1
  %conv70.i = zext i8 %139 to i16
  %mul.i32 = mul nuw nsw i16 %conv70.i, 19
  %140 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx50.i, align 1
  %conv73.i = sext i8 %141 to i16
  %add75.i = add nsw i16 %mul.i32, %conv73.i
  %div76117.i = sdiv i16 %add75.i, 20
  %conv77.i = trunc i16 %div76117.i to i8
  store i8 %conv77.i, ptr %arrayidx56.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end66.i, %if.end39.i31.for.inc.i_crit_edge
  %arrayidx50.1.i = getelementptr %struct.rtl_stats, ptr %pstatus, i32 0, i32 35, i32 1
  %142 = ptrtoint ptr %arrayidx50.1.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx50.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %143)
  %cmp52.not.1.i = icmp eq i8 %143, -1
  br i1 %cmp52.not.1.i, label %for.inc.i.return_crit_edge, label %if.then54.1.i

for.inc.i.return_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then54.1.i:                                    ; preds = %for.inc.i
  %arrayidx56.1.i = getelementptr %struct.rtl_priv, ptr %107, i32 0, i32 24, i32 19, i32 1
  %144 = ptrtoint ptr %arrayidx56.1.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx56.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %cmp58.1.i = icmp eq i8 %145, 0
  br i1 %cmp58.1.i, label %if.then60.1.i, label %if.then54.1.i.if.end66.1.i_crit_edge

if.then54.1.i.if.end66.1.i_crit_edge:             ; preds = %if.then54.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66.1.i

if.then60.1.i:                                    ; preds = %if.then54.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %146 = ptrtoint ptr %arrayidx56.1.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %143, ptr %arrayidx56.1.i, align 1
  br label %if.end66.1.i

if.end66.1.i:                                     ; preds = %if.then60.1.i, %if.then54.1.i.if.end66.1.i_crit_edge
  %147 = ptrtoint ptr %arrayidx56.1.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx56.1.i, align 1
  %conv70.1.i = zext i8 %148 to i16
  %mul.1.i = mul nuw nsw i16 %conv70.1.i, 19
  %149 = ptrtoint ptr %arrayidx50.1.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx50.1.i, align 1
  %conv73.1.i = sext i8 %150 to i16
  %add75.1.i = add nsw i16 %mul.1.i, %conv73.1.i
  %div76117.1.i = sdiv i16 %add75.1.i, 20
  %conv77.1.i = trunc i16 %div76117.1.i to i8
  store i8 %conv77.1.i, ptr %arrayidx56.1.i, align 1
  br label %return

return:                                           ; preds = %if.end66.1.i, %for.inc.i.return_crit_edge, %rtl_process_pwdb.exit.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_find_sta(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !14}
!llvm.named.register.sp = !{!15}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @__ksymtab_rtl_query_rxpwrpercentage, !1, !"__ksymtab_rtl_query_rxpwrpercentage", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/stats.c", i32 17, i32 1}
!2 = !{ptr @__ksymtab_rtl_evm_db_to_percentage, !3, !"__ksymtab_rtl_evm_db_to_percentage", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtlwifi/stats.c", i32 28, i32 1}
!4 = !{ptr @__ksymtab_rtl_signal_scale_mapping, !5, !"__ksymtab_rtl_signal_scale_mapping", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtlwifi/stats.c", i32 67, i32 1}
!6 = !{ptr @__ksymtab_rtl_process_phyinfo, !7, !"__ksymtab_rtl_process_phyinfo", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtlwifi/stats.c", i32 247, i32 1}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!10 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{!"sp"}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{i8 0, i8 2}
!26 = !{i64 2149326251}
!27 = !{i64 2149326517}
