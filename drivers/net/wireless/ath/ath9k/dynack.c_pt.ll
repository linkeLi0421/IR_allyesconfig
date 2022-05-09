; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath9k/dynack.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath9k/dynack.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ath_dynack_sample_tx_ts\22, \22a\22\09"
module asm "\09.weak\09__crc_ath_dynack_sample_tx_ts\09\09\09\09"
module asm "\09.long\09__crc_ath_dynack_sample_tx_ts\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath_dynack_sample_tx_ts:\09\09\09\09\09"
module asm "\09.asciz \09\22ath_dynack_sample_tx_ts\22\09\09\09\09\09"
module asm "__kstrtabns_ath_dynack_sample_tx_ts:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath_dynack_sample_ack_ts\22, \22a\22\09"
module asm "\09.weak\09__crc_ath_dynack_sample_ack_ts\09\09\09\09"
module asm "\09.long\09__crc_ath_dynack_sample_ack_ts\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath_dynack_sample_ack_ts:\09\09\09\09\09"
module asm "\09.asciz \09\22ath_dynack_sample_ack_ts\22\09\09\09\09\09"
module asm "__kstrtabns_ath_dynack_sample_ack_ts:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath_dynack_node_init\22, \22a\22\09"
module asm "\09.weak\09__crc_ath_dynack_node_init\09\09\09\09"
module asm "\09.long\09__crc_ath_dynack_node_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath_dynack_node_init:\09\09\09\09\09"
module asm "\09.asciz \09\22ath_dynack_node_init\22\09\09\09\09\09"
module asm "__kstrtabns_ath_dynack_node_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath_dynack_node_deinit\22, \22a\22\09"
module asm "\09.weak\09__crc_ath_dynack_node_deinit\09\09\09\09"
module asm "\09.long\09__crc_ath_dynack_node_deinit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath_dynack_node_deinit:\09\09\09\09\09"
module asm "\09.asciz \09\22ath_dynack_node_deinit\22\09\09\09\09\09"
module asm "__kstrtabns_ath_dynack_node_deinit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath_dynack_reset\22, \22a\22\09"
module asm "\09.weak\09__crc_ath_dynack_reset\09\09\09\09"
module asm "\09.long\09__crc_ath_dynack_reset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath_dynack_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22ath_dynack_reset\22\09\09\09\09\09"
module asm "__kstrtabns_ath_dynack_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ath_hw = type { %struct.ath_ops, ptr, ptr, %struct.ath_common, %struct.ath9k_hw_version, %struct.ath9k_ops_config, %struct.ath9k_hw_capabilities, [38 x %struct.ath9k_channel], ptr, %union.anon.125, ptr, i8, i8, i8, i8, i8, i8, i16, [6 x i32], %struct.ath_nf_limits, %struct.ath_nf_limits, i16, i32, i32, i32, i16, i8, i8, i32, i32, i8, ptr, %struct.ath9k_pacal_info, %struct.ar5416Stats, [10 x %struct.ath9k_tx_queue_info], [4 x i32], i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i8, i32, i32, i32, %struct.ath9k_cal_list, %struct.ath9k_cal_list, %struct.ath9k_cal_list, ptr, ptr, ptr, %union.anon.126, %union.anon.127, %union.anon.128, %union.anon.129, i16, i8, i32, i32, %struct.ath_hw_private_ops, %struct.ath_hw_ops, ptr, i32, i32, i32, i32, i32, i32, %struct.ar5416AniState, %struct.ath_btcoex_hw, i32, i8, i8, %struct.ath_hw_radar_conf, [22 x i32], i32, i32, i32, i32, i32, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, [3 x %struct.ar5416IniArray], [3 x %struct.ar5416IniArray], [3 x %struct.ar5416IniArray], [3 x %struct.ar5416IniArray], i32, i32, %struct.ath_gen_timer_table, ptr, i32, i32, i16, i16, i32, i32, i8, i32, i32, i32, i32, i8, [32 x i32], [32 x i8], i32, i32, %struct.ath9k_hw_wow, i8, ptr, ptr, i8, i8, ptr, ptr, i32, %struct.ath_dynack, i8, [36 x i8], [36 x i8], i8, i32, i32 }
%struct.ath_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ath_common = type { ptr, ptr, ptr, i32, i32, i32, %struct.ath_ani, i16, i16, [6 x i8], [6 x i8], [6 x i8], i32, i32, [4 x i32], [4 x i32], [4 x i32], i32, i32, %struct.spinlock, %struct.ath_cycle_counters, %struct.ath_cycle_counters, %struct.ath_regulatory, %struct.ath_regulatory, ptr, ptr, ptr, i8, i8, i8, i32, [6 x %struct.ieee80211_supported_band] }
%struct.ath_ani = type { i8, i32, i32, i32, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.ath_cycle_counters = type { i32, i32, i32, i32 }
%struct.ath_regulatory = type { [2 x i8], i32, i16, i16, i16, i16, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ath9k_hw_version = type { i32, i16, i16, i32, i16, i16, i16, i16, i32 }
%struct.ath9k_ops_config = type { i32, i32, i8, i32, i8, i32, i32, i32, i32, i8, i32, i8, i8, i8, i16, i16, i16, i16, i32, i32, i32, i8, i8, i8, i8, i8 }
%struct.ath9k_hw_capabilities = type { i32, i16, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8 }
%struct.ath9k_channel = type { ptr, i16, i16, i16 }
%union.anon.125 = type { %struct.ar5416_eeprom_def }
%struct.ar5416_eeprom_def = type { %struct.base_eep_header, [64 x i8], [2 x %struct.modal_eep_header], [8 x i8], [4 x i8], [3 x [8 x %struct.cal_data_per_freq]], [3 x [4 x %struct.cal_data_per_freq]], [8 x %struct.cal_target_power_leg], [8 x %struct.cal_target_power_ht], [8 x %struct.cal_target_power_ht], [3 x %struct.cal_target_power_leg], [4 x %struct.cal_target_power_leg], [4 x %struct.cal_target_power_ht], [4 x %struct.cal_target_power_ht], [24 x i8], [24 x %struct.cal_ctl_data], i8 }
%struct.base_eep_header = type <{ i16, i16, i16, i8, i8, [2 x i16], [6 x i8], i8, i8, i16, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [21 x i8] }>
%struct.modal_eep_header = type { [3 x i32], i32, [3 x i8], i8, [3 x i8], [3 x i8], i8, i8, [3 x i8], i8, i8, i8, i8, [3 x i8], i8, i8, [3 x i8], [3 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8], [3 x i8], i8, [3 x i8], [3 x i8], i8, i8, i8, i8, [3 x i16], [6 x i8], [5 x %struct.spur_chan] }
%struct.spur_chan = type { i16, i8, i8 }
%struct.cal_data_per_freq = type { [4 x [5 x i8]], [4 x [5 x i8]] }
%struct.cal_target_power_leg = type { i8, [4 x i8] }
%struct.cal_target_power_ht = type { i8, [8 x i8] }
%struct.cal_ctl_data = type { [3 x [8 x %struct.cal_ctl_edges]] }
%struct.cal_ctl_edges = type { i8, i8 }
%struct.ath_nf_limits = type { i16, i16, i16, [3 x i16], [3 x i16] }
%struct.ath9k_pacal_info = type { i32, i8, i8 }
%struct.ar5416Stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ath9k_mib_stats }
%struct.ath9k_mib_stats = type { i32, i32, i32, i32, i32 }
%struct.ath9k_tx_queue_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.ath9k_cal_list = type { ptr, i32, ptr }
%union.anon.126 = type { [3 x i32] }
%union.anon.127 = type { [3 x i32] }
%union.anon.128 = type { [3 x i32] }
%union.anon.129 = type { [3 x i32] }
%struct.ath_hw_private_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ath_hw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ar5416AniState = type { i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, %struct.ath9k_ani_default }
%struct.ath9k_ani_default = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.ath_btcoex_hw = type { i32, %struct.ath9k_hw_mci, %struct.ath9k_hw_aic, i8, i8, i8, i8, i32, i32, i32, i32, [4 x i32], [4 x i32], [5 x i8] }
%struct.ath9k_hw_mci = type { i32, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.ath9k_hw_aic = type { i8, i8, i8, [79 x i32], i32 }
%struct.ath_hw_radar_conf = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.ar5416IniArray = type { ptr, i32, i32 }
%struct.ath_gen_timer_table = type { [16 x ptr], i16, i8 }
%struct.ath9k_hw_wow = type { i32, i32, i8 }
%struct.ath_dynack = type { i8, i32, i32, %struct.list_head, %struct.spinlock, %struct.ath_dyn_rxbuf, %struct.ath_dyn_txbuf }
%struct.list_head = type { ptr, ptr }
%struct.ath_dyn_rxbuf = type { i16, i16, [64 x i32] }
%struct.ath_dyn_txbuf = type { i16, i16, [64 x %struct.haddr_pair], [64 x %struct.ts_info] }
%struct.haddr_pair = type { [6 x i8], [6 x i8] }
%struct.ts_info = type { i32, i32 }
%struct.ath_tx_status = type { i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.ieee80211_tx_rate = type <{ i8, i16 }>
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ath_node = type { ptr, ptr, ptr, i16, i8, i8, i8, i8, %struct.ath_rx_rate_stats, [4 x i8], i32, %struct.list_head }
%struct.ath_rx_rate_stats = type { [24 x %struct.anon.145], [8 x %struct.anon.146], [4 x %struct.anon.147] }
%struct.anon.145 = type { i32, i32, i32, i32 }
%struct.anon.146 = type { i32 }
%struct.anon.147 = type { i32, i32 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.124, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.anon.124 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.123, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.anon.123 = type { i64, i64, i8 }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"late ack\0A\00", [22 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"{%pM} tx sample %u [dur %u][h %u-t %u]\0A\00", [56 x i8] zeroinitializer }, align 32
@__kstrtab_ath_dynack_sample_tx_ts = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath_dynack_sample_tx_ts = external dso_local constant [0 x i8], align 1
@__ksymtab_ath_dynack_sample_tx_ts = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath_dynack_sample_tx_ts to i32), ptr @__kstrtab_ath_dynack_sample_tx_ts, ptr @__kstrtabns_ath_dynack_sample_tx_ts }, section "___ksymtab+ath_dynack_sample_tx_ts", align 4
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rx sample %u [h %u-t %u]\0A\00", [38 x i8] zeroinitializer }, align 32
@__kstrtab_ath_dynack_sample_ack_ts = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath_dynack_sample_ack_ts = external dso_local constant [0 x i8], align 1
@__ksymtab_ath_dynack_sample_ack_ts = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath_dynack_sample_ack_ts to i32), ptr @__kstrtab_ath_dynack_sample_ack_ts, ptr @__kstrtabns_ath_dynack_sample_ack_ts }, section "___ksymtab+ath_dynack_sample_ack_ts", align 4
@__kstrtab_ath_dynack_node_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath_dynack_node_init = external dso_local constant [0 x i8], align 1
@__ksymtab_ath_dynack_node_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath_dynack_node_init to i32), ptr @__kstrtab_ath_dynack_node_init, ptr @__kstrtabns_ath_dynack_node_init }, section "___ksymtab+ath_dynack_node_init", align 4
@__kstrtab_ath_dynack_node_deinit = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath_dynack_node_deinit = external dso_local constant [0 x i8], align 1
@__ksymtab_ath_dynack_node_deinit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath_dynack_node_deinit to i32), ptr @__kstrtab_ath_dynack_node_deinit, ptr @__kstrtabns_ath_dynack_node_deinit }, section "___ksymtab+ath_dynack_node_deinit", align 4
@__kstrtab_ath_dynack_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath_dynack_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_ath_dynack_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath_dynack_reset to i32), ptr @__kstrtab_ath_dynack_reset, ptr @__kstrtabns_ath_dynack_reset }, section "___ksymtab+ath_dynack_reset", align 4
@ath_dynack_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&da->qlock\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ACK timeout %u slottime %u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ack_ts %u st_ts %u st_dur %u [%u-%u]\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%pM to %d [%u]\0A\00", [16 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 45056]
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 231, i32 4 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 276, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 310, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 394, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 110, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 164, i32 3 }
@___asan_gen_.36 = private constant [43 x i8] c"../drivers/net/wireless/ath/ath9k/dynack.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 179, i32 6 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 695, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 723, i32 2 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__ksymtab_ath_dynack_node_deinit, ptr @__ksymtab_ath_dynack_node_init, ptr @__ksymtab_ath_dynack_reset, ptr @__ksymtab_ath_dynack_sample_ack_ts, ptr @__ksymtab_ath_dynack_sample_tx_ts, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @ath_dynack_init.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath_dynack_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_dynack_sample_tx_ts(ptr noundef %ah, ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %ts, ptr noundef writeonly %sta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dynack = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 136
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  %duration = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 23
  %0 = ptrtoint ptr %duration to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %duration, align 4
  %2 = ptrtoint ptr %dynack to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dynack, align 4, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %4 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cb.i, align 8
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %qlock = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 136, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %qlock) #5
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %ts_status = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 2
  %8 = ptrtoint ptr %ts_status to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ts_status, align 2
  %10 = and i8 %9, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool4.not = icmp eq i8 %10, 0
  br i1 %tobool4.not, label %if.end27, label %if.then5

if.then5:                                         ; preds = %if.end
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %7, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %12)
  %cmp.i = icmp ult i16 %12, 1024
  br i1 %cmp.i, label %if.then5.if.then16_crit_edge, label %lor.lhs.false8

if.then5.if.then16_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16

lor.lhs.false8:                                   ; preds = %if.then5
  %13 = and i16 %12, -1024
  %14 = zext i16 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i16 %13, label %lor.lhs.false8.cleanup.sink.split_crit_edge [
    i16 4096, label %lor.lhs.false8.if.then16_crit_edge
    i16 -20480, label %lor.lhs.false8.if.then16_crit_edge196
  ]

lor.lhs.false8.if.then16_crit_edge196:            ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16

lor.lhs.false8.if.then16_crit_edge:               ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16

lor.lhs.false8.cleanup.sink.split_crit_edge:      ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.then16:                                        ; preds = %lor.lhs.false8.if.then16_crit_edge, %lor.lhs.false8.if.then16_crit_edge196, %if.then5.if.then16_crit_edge
  %curchan.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 8
  %15 = ptrtoint ptr %curchan.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %curchan.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.then16.ath_dynack_get_max_to.exit_crit_edge, label %if.end.i

if.then16.ath_dynack_get_max_to.exit_crit_edge:   ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath_dynack_get_max_to.exit

if.end.i:                                         ; preds = %if.then16
  %channelFlags.i = getelementptr inbounds %struct.ath9k_channel, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %channelFlags.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %channelFlags.i, align 2
  %conv.i = zext i16 %18 to i32
  %and.i = and i32 %conv.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.ath_dynack_get_max_to.exit_crit_edge

if.end.i.ath_dynack_get_max_to.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath_dynack_get_max_to.exit

if.end3.i:                                        ; preds = %if.end.i
  %and6.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end3.i.ath_dynack_get_max_to.exit_crit_edge

if.end3.i.ath_dynack_get_max_to.exit_crit_edge:   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath_dynack_get_max_to.exit

if.end9.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  %and12.i = and i32 %conv.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  %..i = select i1 %tobool13.not.i, i32 600, i32 1500
  br label %ath_dynack_get_max_to.exit

ath_dynack_get_max_to.exit:                       ; preds = %if.end9.i, %if.end3.i.ath_dynack_get_max_to.exit_crit_edge, %if.end.i.ath_dynack_get_max_to.exit_crit_edge, %if.then16.ath_dynack_get_max_to.exit_crit_edge
  %retval.0.i = phi i32 [ 300, %if.then16.ath_dynack_get_max_to.exit_crit_edge ], [ 300, %if.end.i.ath_dynack_get_max_to.exit_crit_edge ], [ 750, %if.end3.i.ath_dynack_get_max_to.exit_crit_edge ], [ %..i, %if.end9.i ]
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %19 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %debug_mask, align 4
  %and18 = and i32 %20, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %ath_dynack_get_max_to.exit.do.end_crit_edge, label %if.then20

ath_dynack_get_max_to.exit.do.end_crit_edge:      ; preds = %ath_dynack_get_max_to.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then20:                                        ; preds = %ath_dynack_get_max_to.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.1) #5
  br label %do.end

do.end:                                           ; preds = %if.then20, %ath_dynack_get_max_to.exit.do.end_crit_edge
  %div.i193.lhs.trunc = add nuw nsw i32 %retval.0.i, 2045
  %div.i193194195 = lshr i32 %div.i193.lhs.trunc, 1
  %div.i193.zext = and i32 %div.i193194195, 1023
  %21 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %debug_mask, align 4
  %and.i181 = and i32 %22, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i181)
  %tobool.not.i182 = icmp eq i32 %and.i181, 0
  br i1 %tobool.not.i182, label %do.end.ath_dynack_set_timeout.exit_crit_edge, label %if.then.i

do.end.ath_dynack_set_timeout.exit_crit_edge:     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath_dynack_set_timeout.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.5, i32 noundef %retval.0.i, i32 noundef %div.i193.zext) #5
  br label %ath_dynack_set_timeout.exit

ath_dynack_set_timeout.exit:                      ; preds = %if.then.i, %do.end.ath_dynack_set_timeout.exit_crit_edge
  tail call void @ath9k_hw_setslottime(ptr noundef %ah, i32 noundef %div.i193.zext) #5
  tail call void @ath9k_hw_set_ack_timeout(ptr noundef %ah, i32 noundef %retval.0.i) #5
  tail call void @ath9k_hw_set_cts_timeout(ptr noundef %ah, i32 noundef %retval.0.i) #5
  %tobool22.not = icmp eq ptr %sta, null
  br i1 %tobool22.not, label %ath_dynack_set_timeout.exit.if.end24_crit_edge, label %if.then23

ath_dynack_set_timeout.exit.if.end24_crit_edge:   ; preds = %ath_dynack_set_timeout.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then23:                                        ; preds = %ath_dynack_set_timeout.exit
  call void @__sanitizer_cov_trace_pc() #7
  %ackto = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 28, i32 1
  %23 = ptrtoint ptr %ackto to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %ackto, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %ath_dynack_set_timeout.exit.if.end24_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %24, 1000
  %lto = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 136, i32 2
  %25 = ptrtoint ptr %lto to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add, ptr %lto, align 4
  br label %cleanup.sink.split

if.end27:                                         ; preds = %if.end
  %ts_rateindex = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 3
  %26 = ptrtoint ptr %ts_rateindex to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ts_rateindex, align 1
  %28 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ts, align 4
  %st_rbf = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 136, i32 6
  %t_rb = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 136, i32 6, i32 1
  %30 = ptrtoint ptr %t_rb to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %t_rb, align 2
  %idxprom = zext i16 %31 to i32
  %arrayidx = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 136, i32 6, i32 3, i32 %idxprom
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %29, ptr %arrayidx, align 4
  %arrayidx34 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 136, i32 6, i32 2, i32 %idxprom
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %7, i32 0, i32 2
  %33 = call ptr @memcpy(ptr %arrayidx34, ptr %addr1, i32 6)
  %h_src = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 136, i32 6, i32 2, i32 %idxprom, i32 1
  %addr2 = getelementptr inbounds %struct.ieee80211_hdr, ptr %7, i32 0, i32 3
  %34 = call ptr @memcpy(ptr %h_src, ptr %addr2, i32 6)
  %35 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %idxprom45 = zext i8 %27 to i32
  %flags47 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %35, i32 0, i32 %idxprom45, i32 1
  %36 = ptrtoint ptr %flags47 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %bf.load = load i16, ptr %flags47, align 1
  %37 = and i16 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool50.not = icmp eq i16 %37, 0
  br i1 %tobool50.not, label %if.then51, label %if.end27.if.end71_crit_edge

if.end27.if.end71_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end71

if.then51:                                        ; preds = %if.end27
  %band = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %38 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %38)
  %bf.load55 = load i32, ptr %band, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.load55)
  %cmp = icmp ult i32 %bf.load55, 536870912
  br i1 %cmp, label %land.lhs.true, label %if.then51.if.then.i189_crit_edge

if.then51.if.then.i189_crit_edge:                 ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i189

land.lhs.true:                                    ; preds = %if.then51
  %bf.lshr = lshr i32 %bf.load55, 29
  %bitrates = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 31, i32 %bf.lshr, i32 1
  %39 = ptrtoint ptr %bitrates to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bitrates, align 4
  %arrayidx58 = getelementptr %struct.ieee80211_tx_rate, ptr %35, i32 %idxprom45
  %41 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx58, align 1
  %idxprom59 = sext i8 %42 to i32
  %arrayidx60 = getelementptr %struct.ieee80211_rate, ptr %40, i32 %idxprom59
  %43 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx60, align 4
  %and66 = and i32 %44, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %land.lhs.true.ath_dynack_get_sifs.exit_crit_edge, label %land.lhs.true.if.then.i189_crit_edge

land.lhs.true.if.then.i189_crit_edge:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i189

land.lhs.true.ath_dynack_get_sifs.exit_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath_dynack_get_sifs.exit

if.then.i189:                                     ; preds = %land.lhs.true.if.then.i189_crit_edge, %if.then51.if.then.i189_crit_edge
  %curchan.i184 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 8
  %45 = ptrtoint ptr %curchan.i184 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %curchan.i184, align 4
  %channelFlags.i185 = getelementptr inbounds %struct.ath9k_channel, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %channelFlags.i185 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %channelFlags.i185, align 2
  %conv.i186 = zext i16 %48 to i32
  %and.i187 = and i32 %conv.i186, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i187)
  %tobool.not.i188 = icmp eq i32 %and.i187, 0
  br i1 %tobool.not.i188, label %if.else.i, label %if.then.i189.ath_dynack_get_sifs.exit_crit_edge

if.then.i189.ath_dynack_get_sifs.exit_crit_edge:  ; preds = %if.then.i189
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath_dynack_get_sifs.exit

if.else.i:                                        ; preds = %if.then.i189
  call void @__sanitizer_cov_trace_pc() #7
  %and5.i = and i32 %conv.i186, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  %..i190.neg = select i1 %tobool6.not.i, i32 -16, i32 -32
  br label %ath_dynack_get_sifs.exit

ath_dynack_get_sifs.exit:                         ; preds = %if.else.i, %if.then.i189.ath_dynack_get_sifs.exit_crit_edge, %land.lhs.true.ath_dynack_get_sifs.exit_crit_edge
  %sifs.0.i.neg = phi i32 [ -64, %if.then.i189.ath_dynack_get_sifs.exit_crit_edge ], [ %..i190.neg, %if.else.i ], [ -10, %land.lhs.true.ath_dynack_get_sifs.exit_crit_edge ]
  %sub = add i32 %sifs.0.i.neg, %1
  br label %if.end71

if.end71:                                         ; preds = %ath_dynack_get_sifs.exit, %if.end27.if.end71_crit_edge
  %dur.0 = phi i32 [ %1, %if.end27.if.end71_crit_edge ], [ %sub, %ath_dynack_get_sifs.exit ]
  %dur78 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 136, i32 6, i32 3, i32 %idxprom, i32 1
  %49 = ptrtoint ptr %dur78 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %dur.0, ptr %dur78, align 4
  %inc = add i16 %31, 1
  %50 = and i16 %inc, 63
  %51 = ptrtoint ptr %t_rb to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %t_rb, align 2
  %52 = ptrtoint ptr %st_rbf to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %st_rbf, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %50, i16 %53)
  %cmp94 = icmp eq i16 %50, %53
  br i1 %cmp94, label %do.body97, label %if.end71.do.body109_crit_edge

if.end71.do.body109_crit_edge:                    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body109

do.body97:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  %inc100 = add i16 %31, 2
  %54 = and i16 %inc100, 63
  %55 = ptrtoint ptr %st_rbf to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %st_rbf, align 4
  br label %do.body109

do.body109:                                       ; preds = %do.body97, %if.end71.do.body109_crit_edge
  %debug_mask110 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %56 = ptrtoint ptr %debug_mask110 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %debug_mask110, align 4
  %and111 = and i32 %57, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %do.body109.do.end125_crit_edge, label %if.then113

do.body109.do.end125_crit_edge:                   ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end125

if.then113:                                       ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ts, align 4
  %60 = ptrtoint ptr %st_rbf to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %st_rbf, align 4
  %conv119 = zext i16 %61 to i32
  %conv122 = zext i16 %50 to i32
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.2, ptr noundef %addr1, i32 noundef %59, i32 noundef %dur.0, i32 noundef %conv119, i32 noundef %conv122) #5
  br label %do.end125

do.end125:                                        ; preds = %if.then113, %do.body109.do.end125_crit_edge
  tail call fastcc void @ath_dynack_compute_to(ptr noundef %ah)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end125, %if.end24, %lor.lhs.false8.cleanup.sink.split_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %qlock) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath_dynack_compute_to(ptr noundef %ah) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !33) #5
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !44
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #5
  %call.i = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #5
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %curchan.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 8
  %4 = ptrtoint ptr %curchan.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %curchan.i, align 4
  %tobool.not.i152 = icmp eq ptr %5, null
  br i1 %tobool.not.i152, label %rcu_read_lock.exit.ath_dynack_get_max_to.exit_crit_edge, label %if.end.i

rcu_read_lock.exit.ath_dynack_get_max_to.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath_dynack_get_max_to.exit

if.end.i:                                         ; preds = %rcu_read_lock.exit
  %channelFlags.i = getelementptr inbounds %struct.ath9k_channel, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %channelFlags.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %channelFlags.i, align 2
  %conv.i = zext i16 %7 to i32
  %and.i = and i32 %conv.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.ath_dynack_get_max_to.exit_crit_edge

if.end.i.ath_dynack_get_max_to.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath_dynack_get_max_to.exit

if.end3.i:                                        ; preds = %if.end.i
  %and6.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end3.i.ath_dynack_get_max_to.exit_crit_edge

if.end3.i.ath_dynack_get_max_to.exit_crit_edge:   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath_dynack_get_max_to.exit

if.end9.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  %and12.i = and i32 %conv.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  %..i = select i1 %tobool13.not.i, i32 600, i32 1500
  br label %ath_dynack_get_max_to.exit

ath_dynack_get_max_to.exit:                       ; preds = %if.end9.i, %if.end3.i.ath_dynack_get_max_to.exit_crit_edge, %if.end.i.ath_dynack_get_max_to.exit_crit_edge, %rcu_read_lock.exit.ath_dynack_get_max_to.exit_crit_edge
  %retval.0.i = phi i32 [ 300, %rcu_read_lock.exit.ath_dynack_get_max_to.exit_crit_edge ], [ 300, %if.end.i.ath_dynack_get_max_to.exit_crit_edge ], [ 750, %if.end3.i.ath_dynack_get_max_to.exit_crit_edge ], [ %..i, %if.end9.i ]
  %ack_rbf = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 136, i32 5
  %st_rbf = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 136, i32 6
  %t_rb = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 136, i32 6, i32 1
  %8 = ptrtoint ptr %st_rbf to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %st_rbf, align 4
  %10 = ptrtoint ptr %t_rb to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %t_rb, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %11)
  %cmp.not169 = icmp eq i16 %9, %11
  br i1 %cmp.not169, label %ath_dynack_get_max_to.exit.while.end_crit_edge, label %land.rhs.lr.ph

ath_dynack_get_max_to.exit.while.end_crit_edge:   ; preds = %ath_dynack_get_max_to.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %ath_dynack_get_max_to.exit
  %t_rb7 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 136, i32 5, i32 1
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %hw = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 2
  %lto = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 136, i32 2
  %nodes.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 136, i32 3
  %ackto9.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 136, i32 1
  br label %land.rhs

land.rhs:                                         ; preds = %if.end110.land.rhs_crit_edge, %land.rhs.lr.ph
  %conv170.in = phi i16 [ %9, %land.rhs.lr.ph ], [ %57, %if.end110.land.rhs_crit_edge ]
  %conv170 = zext i16 %conv170.in to i32
  %12 = ptrtoint ptr %ack_rbf to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %ack_rbf, align 4
  %14 = ptrtoint ptr %t_rb7 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %t_rb7, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %15)
  %cmp9.not = icmp eq i16 %13, %15
  br i1 %cmp9.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %conv5 = zext i16 %13 to i32
  %arrayidx = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 136, i32 5, i32 2, i32 %conv5
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %arrayidx18 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 136, i32 6, i32 3, i32 %conv170
  %arrayidx23 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 136, i32 6, i32 2, i32 %conv170
  %h_src = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 136, i32 6, i32 2, i32 %conv170, i32 1
  %18 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %debug_mask, align 4
  %and = and i32 %19, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.body.do.end_crit_edge, label %if.then

while.body.do.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx18, align 4
  %dur = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 136, i32 6, i32 3, i32 %conv170, i32 1
  %22 = ptrtoint ptr %dur to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dur, align 4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.6, i32 noundef %17, i32 noundef %21, i32 noundef %23, i32 noundef %conv5, i32 noundef %conv170) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %while.body.do.end_crit_edge
  %24 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx18, align 4
  %dur41 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 136, i32 6, i32 3, i32 %conv170, i32 1
  %26 = ptrtoint ptr %dur41 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dur41, align 4
  %add = add i32 %27, %25
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %add)
  %cmp42 = icmp ugt i32 %17, %add
  br i1 %cmp42, label %if.then44, label %do.end.if.end110_crit_edge

do.end.if.end110_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end110

if.then44:                                        ; preds = %do.end
  %sub47 = sub i32 %17, %add
  call void @__sanitizer_cov_trace_cmp4(i32 %sub47, i32 %retval.0.i)
  %cmp48 = icmp ult i32 %sub47, %retval.0.i
  br i1 %cmp48, label %if.then50, label %if.then44.if.end110_crit_edge

if.then44.if.end110_crit_edge:                    ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end110

if.then50:                                        ; preds = %if.then44
  %28 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw, align 4
  %call51 = tail call ptr @ieee80211_find_sta_by_ifaddr(ptr noundef %29, ptr noundef %arrayidx23, ptr noundef %h_src) #5
  %tobool52.not = icmp eq ptr %call51, null
  br i1 %tobool52.not, label %if.then50.do.body77_crit_edge, label %if.then53

if.then50.do.body77_crit_edge:                    ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body77

if.then53:                                        ; preds = %if.then50
  %ackto55 = getelementptr inbounds %struct.ieee80211_sta, ptr %call51, i32 2, i32 28, i32 1
  %30 = ptrtoint ptr %ackto55 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ackto55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i = icmp sgt i32 %31, 0
  %mul.i = shl i32 %sub47, 5
  %mul1.i = mul i32 %31, 96
  %add.i = add i32 %mul1.i, %mul.i
  %div.i = sdiv i32 %add.i, 128
  %retval.0.i154 = select i1 %cmp.i, i32 %div.i, i32 %sub47
  %32 = ptrtoint ptr %ackto55 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %retval.0.i154, ptr %ackto55, align 4
  %33 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %debug_mask, align 4
  %and61 = and i32 %34, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.then53.do.end68_crit_edge, label %if.then63

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end68

if.then63:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.7, ptr noundef %arrayidx23, i32 noundef %retval.0.i154, i32 noundef %sub47) #5
  br label %do.end68

do.end68:                                         ; preds = %if.then63, %if.then53.do.end68_crit_edge
  %35 = ptrtoint ptr %lto to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %lto, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  %sub69 = sub i32 %36, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub69)
  %cmp70 = icmp slt i32 %sub69, 0
  br i1 %cmp70, label %if.then72, label %do.end68.do.body77_crit_edge

do.end68.do.body77_crit_edge:                     ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body77

if.then72:                                        ; preds = %do.end68
  %38 = ptrtoint ptr %nodes.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn25.i = load ptr, ptr %nodes.i, align 4
  %cmp.not26.i = icmp eq ptr %.pn25.i, %nodes.i
  br i1 %cmp.not26.i, label %if.then72.ath_dynack_compute_ackto.exit_crit_edge, label %if.then72.for.body.i_crit_edge

if.then72.for.body.i_crit_edge:                   ; preds = %if.then72
  br label %for.body.i

if.then72.ath_dynack_compute_ackto.exit_crit_edge: ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath_dynack_compute_ackto.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then72.for.body.i_crit_edge
  %.pn28.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn25.i, %if.then72.for.body.i_crit_edge ]
  %to.027.i = phi i32 [ %41, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then72.for.body.i_crit_edge ]
  %ackto.i = getelementptr i8, ptr %.pn28.i, i32 -4
  %39 = ptrtoint ptr %ackto.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ackto.i, align 4
  %41 = tail call i32 @llvm.smax.i32(i32 %40, i32 %to.027.i) #5
  %42 = ptrtoint ptr %.pn28.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pn.i = load ptr, ptr %.pn28.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %nodes.i
  br i1 %cmp.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i157 = icmp eq i32 %41, 0
  br i1 %tobool.not.i157, label %for.end.i.ath_dynack_compute_ackto.exit_crit_edge, label %land.lhs.true.i158

for.end.i.ath_dynack_compute_ackto.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath_dynack_compute_ackto.exit

land.lhs.true.i158:                               ; preds = %for.end.i
  %43 = ptrtoint ptr %ackto9.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ackto9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %41)
  %cmp10.not.i = icmp eq i32 %44, %41
  br i1 %cmp10.not.i, label %land.lhs.true.i158.ath_dynack_compute_ackto.exit_crit_edge, label %if.then11.i

land.lhs.true.i158.ath_dynack_compute_ackto.exit_crit_edge: ; preds = %land.lhs.true.i158
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath_dynack_compute_ackto.exit

if.then11.i:                                      ; preds = %land.lhs.true.i158
  %sub.i.i = add i32 %41, -3
  %div.i.i = sdiv i32 %sub.i.i, 2
  %45 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %debug_mask, align 4
  %and.i.i = and i32 %46, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then11.i.ath_dynack_set_timeout.exit.i_crit_edge, label %if.then.i.i

if.then11.i.ath_dynack_set_timeout.exit.i_crit_edge: ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath_dynack_set_timeout.exit.i

if.then.i.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.5, i32 noundef %41, i32 noundef %div.i.i) #5
  br label %ath_dynack_set_timeout.exit.i

ath_dynack_set_timeout.exit.i:                    ; preds = %if.then.i.i, %if.then11.i.ath_dynack_set_timeout.exit.i_crit_edge
  tail call void @ath9k_hw_setslottime(ptr noundef %ah, i32 noundef %div.i.i) #5
  tail call void @ath9k_hw_set_ack_timeout(ptr noundef %ah, i32 noundef %41) #5
  tail call void @ath9k_hw_set_cts_timeout(ptr noundef %ah, i32 noundef %41) #5
  %47 = ptrtoint ptr %ackto9.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %41, ptr %ackto9.i, align 4
  br label %ath_dynack_compute_ackto.exit

ath_dynack_compute_ackto.exit:                    ; preds = %ath_dynack_set_timeout.exit.i, %land.lhs.true.i158.ath_dynack_compute_ackto.exit_crit_edge, %for.end.i.ath_dynack_compute_ackto.exit_crit_edge, %if.then72.ath_dynack_compute_ackto.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %48 = load volatile i32, ptr @jiffies, align 128
  %add73 = add i32 %48, 500
  %49 = ptrtoint ptr %lto to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add73, ptr %lto, align 4
  br label %do.body77

do.body77:                                        ; preds = %ath_dynack_compute_ackto.exit, %do.end68.do.body77_crit_edge, %if.then50.do.body77_crit_edge
  %50 = ptrtoint ptr %ack_rbf to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %ack_rbf, align 4
  %inc = add i16 %51, 1
  %52 = and i16 %inc, 63
  store i16 %52, ptr %ack_rbf, align 4
  br label %if.end110

if.end110:                                        ; preds = %do.body77, %if.then44.if.end110_crit_edge, %do.end.if.end110_crit_edge
  %ack_rbf.sink172 = phi ptr [ %st_rbf, %if.then44.if.end110_crit_edge ], [ %st_rbf, %do.body77 ], [ %ack_rbf, %do.end.if.end110_crit_edge ]
  %53 = ptrtoint ptr %ack_rbf.sink172 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %ack_rbf.sink172, align 4
  %inc102 = add i16 %54, 1
  %55 = and i16 %inc102, 63
  store i16 %55, ptr %ack_rbf.sink172, align 4
  %56 = ptrtoint ptr %st_rbf to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %st_rbf, align 4
  %58 = ptrtoint ptr %t_rb to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %t_rb, align 2
  %cmp.not = icmp eq i16 %57, %59
  br i1 %cmp.not, label %if.end110.while.end_crit_edge, label %if.end110.land.rhs_crit_edge

if.end110.land.rhs_crit_edge:                     ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

if.end110.while.end_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %if.end110.while.end_crit_edge, %land.rhs.while.end_crit_edge, %ath_dynack_get_max_to.exit.while.end_crit_edge
  %call.i159 = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i159, label %while.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i162

while.end.rcu_read_unlock.exit_crit_edge:         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit

land.lhs.true.i162:                               ; preds = %while.end
  %call1.i160 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i160)
  %tobool.not.i161 = icmp eq i32 %call1.i160, 0
  br i1 %tobool.not.i161, label %land.lhs.true.i162.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i164

land.lhs.true.i162.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i162
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit

land.lhs.true2.i164:                              ; preds = %land.lhs.true.i162
  %.b4.i163 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i163, label %land.lhs.true2.i164.rcu_read_unlock.exit_crit_edge, label %if.then.i165

land.lhs.true2.i164.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i164
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit

if.then.i165:                                     ; preds = %land.lhs.true2.i164
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #5
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i165, %land.lhs.true2.i164.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i162.rcu_read_unlock.exit_crit_edge, %while.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !45
  %60 = tail call i32 @llvm.read_register.i32(metadata !33) #5
  %and.i.i.i.i.i166 = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i.i.i166 to ptr
  %preempt_count.i.i.i.i167 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %preempt_count.i.i.i.i167 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %preempt_count.i.i.i.i167, align 4
  %sub.i.i.i = add i32 %63, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i167, align 4
  tail call void @rcu_read_unlock_strict() #5
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_dynack_sample_ack_ts(ptr noundef %ah, ptr nocapture noundef readonly %skb, i32 noundef %ts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dynack = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 136
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  %0 = ptrtoint ptr %dynack to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dynack, align 4, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %3, i32 0, i32 2
  %arrayidx.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 9, i32 0
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %arrayidx1.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 11, i32 0
  %6 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx1.i, align 1
  %8 = ptrtoint ptr %addr1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %addr1, align 1
  %10 = xor i8 %9, %5
  %11 = and i8 %10, %7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp9.not.i = icmp eq i8 %11, 0
  br i1 %cmp9.not.i, label %for.cond.i, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.i:                                       ; preds = %lor.lhs.false
  %arrayidx.1.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 9, i32 1
  %12 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.1.i, align 1
  %arrayidx1.1.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 11, i32 1
  %14 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx1.1.i, align 1
  %arrayidx3.1.i = getelementptr %struct.ieee80211_hdr, ptr %3, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %arrayidx3.1.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx3.1.i, align 1
  %18 = xor i8 %17, %13
  %19 = and i8 %18, %15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp9.not.1.i = icmp eq i8 %19, 0
  br i1 %cmp9.not.1.i, label %for.cond.1.i, label %for.cond.i.cleanup_crit_edge

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.1.i:                                     ; preds = %for.cond.i
  %arrayidx.2.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 9, i32 2
  %20 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.2.i, align 1
  %arrayidx1.2.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 11, i32 2
  %22 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx1.2.i, align 1
  %arrayidx3.2.i = getelementptr %struct.ieee80211_hdr, ptr %3, i32 0, i32 2, i32 2
  %24 = ptrtoint ptr %arrayidx3.2.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx3.2.i, align 1
  %26 = xor i8 %25, %21
  %27 = and i8 %26, %23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp9.not.2.i = icmp eq i8 %27, 0
  br i1 %cmp9.not.2.i, label %for.cond.2.i, label %for.cond.1.i.cleanup_crit_edge

for.cond.1.i.cleanup_crit_edge:                   ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %arrayidx.3.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 9, i32 3
  %28 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.3.i, align 1
  %arrayidx1.3.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 11, i32 3
  %30 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx1.3.i, align 1
  %arrayidx3.3.i = getelementptr %struct.ieee80211_hdr, ptr %3, i32 0, i32 2, i32 3
  %32 = ptrtoint ptr %arrayidx3.3.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx3.3.i, align 1
  %34 = xor i8 %33, %29
  %35 = and i8 %34, %31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp9.not.3.i = icmp eq i8 %35, 0
  br i1 %cmp9.not.3.i, label %for.cond.3.i, label %for.cond.2.i.cleanup_crit_edge

for.cond.2.i.cleanup_crit_edge:                   ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %arrayidx.4.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 9, i32 4
  %36 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.4.i, align 1
  %arrayidx1.4.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 11, i32 4
  %38 = ptrtoint ptr %arrayidx1.4.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx1.4.i, align 1
  %arrayidx3.4.i = getelementptr %struct.ieee80211_hdr, ptr %3, i32 0, i32 2, i32 4
  %40 = ptrtoint ptr %arrayidx3.4.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx3.4.i, align 1
  %42 = xor i8 %41, %37
  %43 = and i8 %42, %39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp9.not.4.i = icmp eq i8 %43, 0
  br i1 %cmp9.not.4.i, label %ath_dynack_bssidmask.exit, label %for.cond.3.i.cleanup_crit_edge

for.cond.3.i.cleanup_crit_edge:                   ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

ath_dynack_bssidmask.exit:                        ; preds = %for.cond.3.i
  %arrayidx.5.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 9, i32 5
  %44 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.5.i, align 1
  %arrayidx1.5.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 11, i32 5
  %46 = ptrtoint ptr %arrayidx1.5.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx1.5.i, align 1
  %arrayidx3.5.i = getelementptr %struct.ieee80211_hdr, ptr %3, i32 0, i32 2, i32 5
  %48 = ptrtoint ptr %arrayidx3.5.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx3.5.i, align 1
  %50 = xor i8 %49, %45
  %51 = and i8 %50, %47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp9.not.5.i = icmp eq i8 %51, 0
  br i1 %cmp9.not.5.i, label %if.end, label %ath_dynack_bssidmask.exit.cleanup_crit_edge

ath_dynack_bssidmask.exit.cleanup_crit_edge:      ; preds = %ath_dynack_bssidmask.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %ath_dynack_bssidmask.exit
  %qlock = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 136, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %qlock) #5
  %ack_rbf = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 136, i32 5
  %t_rb = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 136, i32 5, i32 1
  %52 = ptrtoint ptr %t_rb to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %t_rb, align 2
  %idxprom = zext i16 %53 to i32
  %arrayidx = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 136, i32 5, i32 2, i32 %idxprom
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %ts, ptr %arrayidx, align 4
  %inc = add i16 %53, 1
  %55 = and i16 %inc, 63
  store i16 %55, ptr %t_rb, align 2
  %56 = ptrtoint ptr %ack_rbf to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %ack_rbf, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %55, i16 %57)
  %cmp = icmp eq i16 %55, %57
  br i1 %cmp, label %do.body15, label %if.end.do.body27_crit_edge

if.end.do.body27_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body27

do.body15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %inc18 = add i16 %53, 2
  %58 = and i16 %inc18, 63
  %59 = ptrtoint ptr %ack_rbf to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %ack_rbf, align 4
  br label %do.body27

do.body27:                                        ; preds = %do.body15, %if.end.do.body27_crit_edge
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %60 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %debug_mask, align 4
  %and28 = and i32 %61, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %do.body27.do.end39_crit_edge, label %if.then30

do.body27.do.end39_crit_edge:                     ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end39

if.then30:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #7
  %62 = ptrtoint ptr %ack_rbf to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %ack_rbf, align 4
  %conv33 = zext i16 %63 to i32
  %conv36 = zext i16 %55 to i32
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.3, i32 noundef %ts, i32 noundef %conv33, i32 noundef %conv36) #5
  br label %do.end39

do.end39:                                         ; preds = %if.then30, %do.body27.do.end39_crit_edge
  tail call fastcc void @ath_dynack_compute_to(ptr noundef %ah)
  tail call void @_raw_spin_unlock_bh(ptr noundef %qlock) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end39, %ath_dynack_bssidmask.exit.cleanup_crit_edge, %for.cond.3.i.cleanup_crit_edge, %for.cond.2.i.cleanup_crit_edge, %for.cond.1.i.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_dynack_node_init(ptr noundef %ah, ptr noundef %an) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ackto = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 136, i32 1
  %0 = ptrtoint ptr %ackto to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ackto, align 4
  %ackto1 = getelementptr inbounds %struct.ath_node, ptr %an, i32 0, i32 10
  %2 = ptrtoint ptr %ackto1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %ackto1, align 4
  %qlock = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 136, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %qlock) #5
  %list = getelementptr inbounds %struct.ath_node, ptr %an, i32 0, i32 11
  %nodes = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 136, i32 3
  %prev.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 136, i32 3, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %4, ptr noundef %nodes) #5
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %list, ptr %prev.i, align 4
  %6 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %nodes, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.ath_node, ptr %an, i32 0, i32 11, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev3.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %list, ptr %4, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %qlock) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_dynack_node_deinit(ptr noundef %ah, ptr noundef %an) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %qlock = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 136, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %qlock) #5
  %list = getelementptr inbounds %struct.ath_node, ptr %an, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #5
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.ath_node, ptr %an, i32 0, i32 11, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.ath_node, ptr %an, i32 0, i32 11, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %qlock) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_dynack_reset(ptr noundef %ah) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %qlock = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 136, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %qlock) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 500
  %lto = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 136, i32 2
  %1 = ptrtoint ptr %lto to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %add, ptr %lto, align 4
  %st_rbf = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 136, i32 6
  %t_rb = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 136, i32 6, i32 1
  %2 = ptrtoint ptr %t_rb to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %t_rb, align 2
  %3 = ptrtoint ptr %st_rbf to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %st_rbf, align 4
  %ack_rbf = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 136, i32 5
  %t_rb2 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 136, i32 5, i32 1
  %4 = ptrtoint ptr %t_rb2 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %t_rb2, align 2
  %5 = ptrtoint ptr %ack_rbf to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %ack_rbf, align 4
  %curchan.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 8
  %6 = ptrtoint ptr %curchan.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %curchan.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.ath_dynack_get_max_to.exit_crit_edge, label %if.end.i

entry.ath_dynack_get_max_to.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath_dynack_get_max_to.exit

if.end.i:                                         ; preds = %entry
  %channelFlags.i = getelementptr inbounds %struct.ath9k_channel, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %channelFlags.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %channelFlags.i, align 2
  %conv.i = zext i16 %9 to i32
  %and.i = and i32 %conv.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.ath_dynack_get_max_to.exit_crit_edge

if.end.i.ath_dynack_get_max_to.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath_dynack_get_max_to.exit

if.end3.i:                                        ; preds = %if.end.i
  %and6.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end3.i.ath_dynack_get_max_to.exit_crit_edge

if.end3.i.ath_dynack_get_max_to.exit_crit_edge:   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath_dynack_get_max_to.exit

if.end9.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  %and12.i = and i32 %conv.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  %..i = select i1 %tobool13.not.i, i32 600, i32 1500
  br label %ath_dynack_get_max_to.exit

ath_dynack_get_max_to.exit:                       ; preds = %if.end9.i, %if.end3.i.ath_dynack_get_max_to.exit_crit_edge, %if.end.i.ath_dynack_get_max_to.exit_crit_edge, %entry.ath_dynack_get_max_to.exit_crit_edge
  %retval.0.i = phi i32 [ 300, %entry.ath_dynack_get_max_to.exit_crit_edge ], [ 300, %if.end.i.ath_dynack_get_max_to.exit_crit_edge ], [ 750, %if.end3.i.ath_dynack_get_max_to.exit_crit_edge ], [ %..i, %if.end9.i ]
  %ackto = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 136, i32 1
  %10 = ptrtoint ptr %ackto to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %retval.0.i, ptr %ackto, align 4
  %nodes = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 136, i32 3
  %11 = ptrtoint ptr %nodes to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn32 = load ptr, ptr %nodes, align 4
  %cmp.not33 = icmp eq ptr %.pn32, %nodes
  br i1 %cmp.not33, label %ath_dynack_get_max_to.exit.for.end_crit_edge, label %ath_dynack_get_max_to.exit.for.body_crit_edge

ath_dynack_get_max_to.exit.for.body_crit_edge:    ; preds = %ath_dynack_get_max_to.exit
  br label %for.body

ath_dynack_get_max_to.exit.for.end_crit_edge:     ; preds = %ath_dynack_get_max_to.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %ath_dynack_get_max_to.exit.for.body_crit_edge
  %.pn34 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn32, %ath_dynack_get_max_to.exit.for.body_crit_edge ]
  %12 = ptrtoint ptr %ackto to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ackto, align 4
  %ackto7 = getelementptr i8, ptr %.pn34, i32 -4
  %14 = ptrtoint ptr %ackto7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %ackto7, align 4
  %15 = ptrtoint ptr %.pn34 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn = load ptr, ptr %.pn34, align 4
  %cmp.not = icmp eq ptr %.pn, %nodes
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %ath_dynack_get_max_to.exit.for.end_crit_edge
  %16 = ptrtoint ptr %ackto to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ackto, align 4
  %sub.i = add i32 %17, -3
  %div.i = sdiv i32 %sub.i, 2
  %debug_mask.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %18 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %debug_mask.i, align 4
  %and.i30 = and i32 %19, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i30)
  %tobool.not.i31 = icmp eq i32 %and.i30, 0
  br i1 %tobool.not.i31, label %for.end.ath_dynack_set_timeout.exit_crit_edge, label %if.then.i

for.end.ath_dynack_set_timeout.exit_crit_edge:    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath_dynack_set_timeout.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %common.i.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i, ptr noundef nonnull @.str.5, i32 noundef %17, i32 noundef %div.i) #5
  br label %ath_dynack_set_timeout.exit

ath_dynack_set_timeout.exit:                      ; preds = %if.then.i, %for.end.ath_dynack_set_timeout.exit_crit_edge
  tail call void @ath9k_hw_setslottime(ptr noundef %ah, i32 noundef %div.i) #5
  tail call void @ath9k_hw_set_ack_timeout(ptr noundef %ah, i32 noundef %17) #5
  tail call void @ath9k_hw_set_cts_timeout(ptr noundef %ah, i32 noundef %17) #5
  tail call void @_raw_spin_unlock_bh(ptr noundef %qlock) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_dynack_init(ptr noundef %ah) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dynack = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 136
  %0 = call ptr @memset(ptr %dynack, i32 0, i32 1608)
  %qlock = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 136, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %qlock, ptr noundef nonnull @.str.4, ptr noundef nonnull @ath_dynack_init.__key, i16 noundef signext 3) #5
  %nodes = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 136, i32 3
  %1 = ptrtoint ptr %nodes to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %nodes, ptr %nodes, align 4
  %prev.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 136, i32 3, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %nodes, ptr %prev.i, align 4
  %ackto = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 136, i32 1
  %3 = ptrtoint ptr %ackto to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 89, ptr %ackto, align 4
  %hw = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 2
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wiphy, align 8
  %features = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %features, align 8
  %or = or i32 %9, 8388608
  store i32 %or, ptr %features, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_setslottime(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_set_ack_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_set_cts_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_find_sta_by_ifaddr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind readonly }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !20, !22, !24, !26, !28, !29, !30, !32}
!llvm.named.register.sp = !{!33}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath9k/dynack.c", i32 231, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/ath/ath9k/dynack.c", i32 276, i32 2}
!5 = !{ptr @__ksymtab_ath_dynack_sample_tx_ts, !6, !"__ksymtab_ath_dynack_sample_tx_ts", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/ath/ath9k/dynack.c", i32 284, i32 1}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/ath/ath9k/dynack.c", i32 310, i32 2}
!9 = !{ptr @__ksymtab_ath_dynack_sample_ack_ts, !10, !"__ksymtab_ath_dynack_sample_ack_ts", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/ath/ath9k/dynack.c", i32 317, i32 1}
!11 = !{ptr @__ksymtab_ath_dynack_node_init, !12, !"__ksymtab_ath_dynack_node_init", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/ath/ath9k/dynack.c", i32 335, i32 1}
!13 = !{ptr @__ksymtab_ath_dynack_node_deinit, !14, !"__ksymtab_ath_dynack_node_deinit", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ath/ath9k/dynack.c", i32 351, i32 1}
!15 = !{ptr @__ksymtab_ath_dynack_reset, !16, !"__ksymtab_ath_dynack_reset", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/ath/ath9k/dynack.c", i32 381, i32 1}
!17 = !{ptr @ath_dynack_init.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/ath/ath9k/dynack.c", i32 394, i32 2}
!19 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/ath9k/dynack.c", i32 110, i32 2}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/ath9k/dynack.c", i32 164, i32 3}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/ath9k/dynack.c", i32 179, i32 6}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{!"sp"}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{i8 0, i8 2}
!44 = !{i64 2149703959}
!45 = !{i64 2149704225}
