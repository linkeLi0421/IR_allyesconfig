; ModuleID = '/llk/IR_all_yes/net/mac80211/agg-rx.c_pt.bc'
source_filename = "../net/mac80211/agg-rx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ieee80211_stop_rx_ba_session\22, \22a\22\09"
module asm "\09.weak\09__crc_ieee80211_stop_rx_ba_session\09\09\09\09"
module asm "\09.long\09__crc_ieee80211_stop_rx_ba_session\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_stop_rx_ba_session:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_stop_rx_ba_session\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_stop_rx_ba_session:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ieee80211_manage_rx_ba_offl\22, \22a\22\09"
module asm "\09.weak\09__crc_ieee80211_manage_rx_ba_offl\09\09\09\09"
module asm "\09.long\09__crc_ieee80211_manage_rx_ba_offl\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_manage_rx_ba_offl:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_manage_rx_ba_offl\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_manage_rx_ba_offl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ieee80211_rx_ba_timer_expired\22, \22a\22\09"
module asm "\09.weak\09__crc_ieee80211_rx_ba_timer_expired\09\09\09\09"
module asm "\09.long\09__crc_ieee80211_rx_ba_timer_expired\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_rx_ba_timer_expired:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_rx_ba_timer_expired\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_rx_ba_timer_expired:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ieee80211_ampdu_params = type { i32, ptr, i16, i16, i16, i8, i16 }
%struct.sta_info = type { %struct.list_head, %struct.list_head, %struct.callback_head, %struct.rhlist_head, [6 x i8], ptr, ptr, [8 x ptr], [4 x ptr], i8, ptr, ptr, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.work_struct, i16, i8, i8, i8, i32, i32, %struct.spinlock, [4 x %struct.sk_buff_head], [4 x %struct.sk_buff_head], i32, i32, i64, i32, %struct.ieee80211_sta_rx_stats, %struct.anon.185, [17 x i16], %struct.anon.186, %struct.anon.187, [16 x i16], [4 x %struct.airtime_info], %struct.sta_ampdu_mlme, ptr, i32, i32, ptr, %struct.codel_params, i8, %struct.cfg80211_chan_def, %struct.ieee80211_fragment_cache, %struct.ieee80211_sta }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.ieee80211_sta_rx_stats = type { i32, i32, i32, i32, i32, i32, i8, [4 x i8], i32, %struct.u64_stats_sync, i64, [17 x i64] }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.anon.185 = type { %struct.ewma_signal, [4 x %struct.ewma_signal] }
%struct.ewma_signal = type { i32 }
%struct.anon.186 = type { i32, i32, i32, i32, i32, [17 x i64], [17 x i64], i32, i8, i8, %struct.ewma_avg_signal }
%struct.ewma_avg_signal = type { i32 }
%struct.anon.187 = type { [4 x i64], [4 x i64], %struct.ieee80211_tx_rate, %struct.rate_info, [17 x i64] }
%struct.ieee80211_tx_rate = type <{ i8, i16 }>
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.airtime_info = type { i64, i64, i64, i64, %struct.list_head, %struct.atomic_t, i32, i32, i32, i16 }
%struct.sta_ampdu_mlme = type { %struct.mutex, [16 x ptr], [16 x i8], [1 x i32], [1 x i32], [1 x i32], [1 x i32], [1 x i32], %struct.work_struct, [16 x ptr], [16 x ptr], [16 x i32], [16 x i8], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.codel_params = type { i32, i32, i32, i32, i8, i8, i8 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_fragment_cache = type { [4 x %struct.ieee80211_fragment_entry], i32 }
%struct.ieee80211_fragment_entry = type { %struct.sk_buff_head, i32, i16, i16, i16, i8, i8, [6 x i8], i32 }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.ieee80211_sub_if_data = type { %struct.list_head, %struct.wireless_dev, %struct.list_head, i32, i32, %struct.delayed_work, ptr, ptr, i32, i32, [16 x i8], %struct.ieee80211_fragment_cache, i16, i8, [8 x ptr], ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8, i32, %struct.atomic_t, [4 x %struct.ieee80211_tx_queue_params], ptr, [4 x %struct.airtime_info], %struct.work_struct, i8, %struct.cfg80211_chan_def, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.cfg80211_chan_def, i8, i8, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, i8, i32, i32, i32, i8, %struct.delayed_work, ptr, [6 x i32], [6 x i8], [6 x [10 x i8]], [6 x i8], [6 x [8 x i16]], [6 x i32], i8, %union.anon.150, %struct.anon.184, %struct.ieee80211_vif }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.122, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.anon.122 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.cfg80211_bss_selection = type { i32, %union.anon.123 }
%union.anon.123 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%union.anon.150 = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i32, i8, [32 x i8], i32, i8, i8, i8, i8, i8, i32, i32, %struct.atomic_t, i32, i32, i32, ptr, %struct.spinlock, %struct.mesh_preq_queue, i32, %struct.mesh_stats, %struct.mesh_config, %struct.atomic_t, i32, i8, i32, ptr, ptr, i8, i32, i8, ptr, i64, %struct.spinlock, i32, i32, i32, %struct.ps_data, ptr, i32, i8, i16, i32, %struct.mesh_table, %struct.mesh_table, i32, i32 }
%struct.mesh_preq_queue = type { %struct.list_head, [6 x i8], i8 }
%struct.mesh_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.mesh_config = type { i16, i16, i16, i16, i8, i8, i8, i8, i32, i8, i32, i16, i32, i16, i16, i16, i8, i8, i8, i16, i8, i8, i32, i16, i32, i16, i16, i32, i16, i32, i8 }
%struct.ps_data = type { [252 x i8], %struct.sk_buff_head, %struct.atomic_t, i32, i8 }
%struct.mesh_table = type { %struct.hlist_head, %struct.spinlock, %struct.rhashtable, %struct.hlist_head, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.anon.184 = type { ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.130, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.130 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.131] }
%struct.anon.131 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.tid_ampdu_rx = type { %struct.callback_head, %struct.spinlock, i64, ptr, ptr, ptr, %struct.timer_list, %struct.timer_list, i32, i16, i16, i16, i16, i16, i8, i8 }
%struct.anon.41 = type { ptr, ptr, %union.anon.42 }
%union.anon.42 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.sk_buff = type { %union.anon.40, %union.anon.43, %union.anon.44, [48 x i8], %union.anon.45, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.47, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.40 = type { %struct.anon.41 }
%union.anon.43 = type { ptr }
%union.anon.44 = type { i64 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { i32, ptr }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.49, i32, i32, i32, i16, i16, %union.anon.51, i32, %union.anon.52, %union.anon.53, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.49 = type { i32 }
%union.anon.51 = type { i32 }
%union.anon.52 = type { i32 }
%union.anon.53 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.151 }
%union.anon.151 = type { %struct.anon.157, [16 x i8] }
%struct.anon.157 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.ieee80211_if_ibss = type { %struct.timer_list, %struct.work_struct, i32, i32, i8, i8, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, ptr, %struct.cfg80211_chan_def, i32, ptr, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.spinlock, %struct.list_head, i32 }
%struct.anon.164 = type { i8, %union.anon.165 }
%union.anon.165 = type <{ %struct.anon.170, [17 x i8] }>
%struct.anon.170 = type { i8, i8, i16, i16, i16, [0 x i8] }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.127, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.anon.127 = type { i64, i64, i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_sband_iftype_data = type <{ i16, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon.125 }>
%struct.anon.125 = type { ptr, i32 }
%struct.ieee802_11_elems = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [8 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i8, i8 }

@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"net/mac80211/agg-rx.c\00", [42 x i8] zeroinitializer }, align 32
@___ieee80211_stop_rx_ba_session.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s: Rx BA session stop requested for %pM tid %u %s reason: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"recipient\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"initiator\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s: HW problem - can not stop rx aggregation for %pM tid %d\0A\00", [35 x i8] zeroinitializer }, align 32
@__kstrtab_ieee80211_stop_rx_ba_session = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_stop_rx_ba_session = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_stop_rx_ba_session = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_stop_rx_ba_session to i32), ptr @__kstrtab_ieee80211_stop_rx_ba_session, ptr @__kstrtabns_ieee80211_stop_rx_ba_session }, section "___ksymtab+ieee80211_stop_rx_ba_session", align 4
@.str.6 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: STA %pM requests BA session on unsupported tid %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s: STA %pM erroneously requests BA session on tid %d w/o QoS\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s: Suspend in progress - Denying ADDBA request (%pM tid %d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"%s: AddBA Req with bad params from %pM on tid %u. policy %d, buffer size %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: AddBA Req buf_size=%d for %pM\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: updated AddBA Req from %pM on tid %u\0A\00", [54 x i8] zeroinitializer }, align 32
@___ieee80211_start_rx_ba_session.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: unexpected AddBA Req from %pM on tid %u\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: Rx A-MPDU request on %pM tid %d result %d\0A\00", [49 x i8] zeroinitializer }, align 32
@___ieee80211_start_rx_ba_session.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&tid_agg_rx->reorder_lock\00", [38 x i8] zeroinitializer }, align 32
@___ieee80211_start_rx_ba_session.__key.16 = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(&tid_agg_rx->session_timer)\00", [35 x i8] zeroinitializer }, align 32
@___ieee80211_start_rx_ba_session.__key.18 = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(&tid_agg_rx->reorder_timer)\00", [35 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__kstrtab_ieee80211_manage_rx_ba_offl = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_manage_rx_ba_offl = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_manage_rx_ba_offl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_manage_rx_ba_offl to i32), ptr @__kstrtab_ieee80211_manage_rx_ba_offl, ptr @__kstrtabns_ieee80211_manage_rx_ba_offl }, section "___ksymtab+ieee80211_manage_rx_ba_offl", align 4
@__kstrtab_ieee80211_rx_ba_timer_expired = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_rx_ba_timer_expired = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_rx_ba_timer_expired = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_rx_ba_timer_expired to i32), ptr @__kstrtab_ieee80211_rx_ba_timer_expired, ptr @__kstrtabns_ieee80211_rx_ba_timer_expired }, section "___ksymtab+ieee80211_rx_ba_timer_expired", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.23 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: RX session timer expired on %pM tid %d\0A\00", [52 x i8] zeroinitializer }, align 32
@ieee80211_get_sband.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"net/mac80211/ieee80211_i.h\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/cfg80211.h\00", [41 x i8] zeroinitializer }, align 32
@ieee80211_tx_skb_tid.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 7]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 72, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 74, i32 11 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 83, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 90, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 290, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 298, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 306, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 325, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 339, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 349, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 358, i32 13 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 367, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 379, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 392, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 395, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 399, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 695, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 723, i32 2 }
@___asan_gen_.91 = private constant [25 x i8] c"../net/mac80211/agg-rx.c\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 165, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [30 x i8] c"../net/mac80211/ieee80211_i.h\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 1505, i32 17 }
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [26 x i8] c"../include/net/cfg80211.h\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 510, i32 6 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__ksymtab_ieee80211_manage_rx_ba_offl, ptr @__ksymtab_ieee80211_rx_ba_timer_expired, ptr @__ksymtab_ieee80211_stop_rx_ba_session, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @___ieee80211_stop_rx_ba_session(ptr noundef %sta, i16 noundef zeroext %tid, i16 noundef zeroext %initiator, i16 noundef zeroext %reason, i1 noundef zeroext %tx) local_unnamed_addr #0 align 64 {
entry:
  %params = alloca %struct.ieee80211_ampdu_params, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 5
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %params) #8
  %2 = getelementptr inbounds i8, ptr %params, i32 12
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 -1, ptr %2, align 4
  %4 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %params, align 4
  %sta2 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 1
  %sta3 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48
  %5 = ptrtoint ptr %sta2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %sta3, ptr %sta2, align 4
  %tid4 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 2
  %6 = ptrtoint ptr %tid4 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %tid, ptr %tid4, align 4
  %ssn = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 3
  %timeout = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 6
  %7 = ptrtoint ptr %timeout to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %timeout, align 4
  %8 = call ptr @memset(ptr %ssn, i32 0, i32 5)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %9 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 39, i32 0, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !71

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 72, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %dep_map31 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 39, i32 0, i32 5
  %call.i142 = tail call i32 @lock_is_held_type(ptr noundef %dep_map31, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i142)
  %tobool33.not = icmp eq i32 %call.i142, 0
  br i1 %tobool33.not, label %land.lhs.true, label %if.end.do.end41_crit_edge

if.end.do.end41_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end41

land.lhs.true:                                    ; preds = %if.end
  %call34 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %land.lhs.true.do.end41_crit_edge, label %land.lhs.true36

land.lhs.true.do.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end41

land.lhs.true36:                                  ; preds = %land.lhs.true
  %.b140 = load i1, ptr @___ieee80211_stop_rx_ba_session.__warned, align 1
  br i1 %.b140, label %land.lhs.true36.do.end41_crit_edge, label %if.then38

land.lhs.true36.do.end41_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end41

if.then38:                                        ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @___ieee80211_stop_rx_ba_session.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 75, ptr noundef nonnull @.str.1) #8
  br label %do.end41

do.end41:                                         ; preds = %if.then38, %land.lhs.true36.do.end41_crit_edge, %land.lhs.true.do.end41_crit_edge, %if.end.do.end41_crit_edge
  %idxprom = zext i16 %tid to i32
  %arrayidx = getelementptr %struct.sta_info, ptr %sta, i32 0, i32 39, i32 1, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %agg_session_valid = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 39, i32 6
  %div3.i = lshr i32 %idxprom, 5
  %arrayidx.i = getelementptr i32, ptr %agg_session_valid, i32 %div3.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %idxprom, 31
  %14 = shl nuw i32 1, %and.i
  %15 = and i32 %13, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool47.not = icmp eq i32 %15, 0
  br i1 %tobool47.not, label %do.end41.cleanup_crit_edge, label %do.body55

do.end41.cleanup_crit_edge:                       ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body55:                                        ; preds = %do.end41
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr null, ptr %arrayidx, align 4
  %neg.i = xor i32 %14, -1
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  %and.i141 = and i32 %18, %neg.i
  store i32 %and.i141, ptr %arrayidx.i, align 4
  %sdata = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 6
  %19 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sdata, align 4
  %name = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %20, i32 0, i32 10
  %addr = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %initiator)
  %cmp75 = icmp eq i16 %initiator, 0
  %cond = select i1 %cmp75, ptr @.str.3, ptr @.str.4
  %conv77 = zext i16 %reason to i32
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.2, ptr noundef %name, ptr noundef %addr, i32 noundef %idxprom, ptr noundef nonnull %cond, i32 noundef %conv77) #8
  %21 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sdata, align 4
  %call79 = call i32 @drv_ampdu_action(ptr noundef %1, ptr noundef %22, ptr noundef nonnull %params) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %do.body55.if.end89_crit_edge, label %if.then81

do.body55.if.end89_crit_edge:                     ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

if.then81:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sdata, align 4
  %name83 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %24, i32 0, i32 10
  call void (ptr, ...) @__sdata_info(ptr noundef nonnull @.str.5, ptr noundef %name83, ptr noundef %addr, i32 noundef %idxprom) #8
  br label %if.end89

if.end89:                                         ; preds = %if.then81, %do.body55.if.end89_crit_edge
  %brmerge.demorgan = and i1 %cmp75, %tx
  br i1 %brmerge.demorgan, label %if.then96, label %if.end89.if.end101_crit_edge

if.end89.if.end101_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101

if.then96:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sdata, align 4
  call void @ieee80211_send_delba(ptr noundef %26, ptr noundef %addr, i16 noundef zeroext %tid, i16 noundef zeroext 0, i16 noundef zeroext %reason) #8
  br label %if.end101

if.end101:                                        ; preds = %if.then96, %if.end89.if.end101_crit_edge
  %tobool102.not = icmp eq ptr %11, null
  br i1 %tobool102.not, label %if.end101.cleanup_crit_edge, label %if.end104

if.end101.cleanup_crit_edge:                      ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end104:                                        ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  %session_timer = getelementptr inbounds %struct.tid_ampdu_rx, ptr %11, i32 0, i32 6
  %call105 = call i32 @del_timer_sync(ptr noundef %session_timer) #8
  %reorder_lock = getelementptr inbounds %struct.tid_ampdu_rx, ptr %11, i32 0, i32 1
  call void @_raw_spin_lock_bh(ptr noundef %reorder_lock) #8
  %removed = getelementptr inbounds %struct.tid_ampdu_rx, ptr %11, i32 0, i32 15
  %27 = ptrtoint ptr %removed to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load = load i8, ptr %removed, align 1
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %removed, align 1
  call void @_raw_spin_unlock_bh(ptr noundef %reorder_lock) #8
  %reorder_timer = getelementptr inbounds %struct.tid_ampdu_rx, ptr %11, i32 0, i32 7
  %call107 = call i32 @del_timer_sync(ptr noundef %reorder_timer) #8
  call void @call_rcu(ptr noundef nonnull %11, ptr noundef nonnull @ieee80211_free_tid_rx) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end104, %if.end101.cleanup_crit_edge, %do.end41.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %params) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sdata_dbg(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drv_ampdu_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sdata_info(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_send_delba(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ieee80211_free_tid_rx(ptr noundef %h) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %buf_size = getelementptr inbounds %struct.tid_ampdu_rx, ptr %h, i32 0, i32 12
  %0 = ptrtoint ptr %buf_size to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %buf_size, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp10.not = icmp eq i16 %1, 0
  br i1 %cmp10.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %reorder_buf = getelementptr inbounds %struct.tid_ampdu_rx, ptr %h, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %__skb_queue_purge.exit.for.body_crit_edge, %for.body.lr.ph
  %i.011 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %__skb_queue_purge.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %reorder_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reorder_buf, align 8
  %arrayidx = getelementptr %struct.sk_buff_head, ptr %3, i32 %i.011
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %cmp.i.i2.i = icmp eq ptr %5, %arrayidx
  %tobool.not.i13.i = icmp eq ptr %5, null
  %tobool.not.i4.i = or i1 %cmp.i.i2.i, %tobool.not.i13.i
  br i1 %tobool.not.i4.i, label %for.body.__skb_queue_purge.exit_crit_edge, label %while.body.lr.ph.i

for.body.__skb_queue_purge.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %__skb_queue_purge.exit

while.body.lr.ph.i:                               ; preds = %for.body
  %qlen.i.i.i = getelementptr %struct.sk_buff_head, ptr %3, i32 %i.011, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %6 = phi ptr [ %5, %while.body.lr.ph.i ], [ %16, %while.body.i.while.body.i_crit_edge ]
  %7 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i.i.i = add i32 %8, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.41, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %6, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.41, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %12, ptr %prev17.i.i.i, align 4
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %10, ptr %12, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %6, i32 noundef 0) #8
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %cmp.i.i.i = icmp eq ptr %16, %arrayidx
  %tobool.not.i1.i = icmp eq ptr %16, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not.i1.i
  br i1 %tobool.not.i.i, label %while.body.i.__skb_queue_purge.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.__skb_queue_purge.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__skb_queue_purge.exit

__skb_queue_purge.exit:                           ; preds = %while.body.i.__skb_queue_purge.exit_crit_edge, %for.body.__skb_queue_purge.exit_crit_edge
  %inc = add nuw nsw i32 %i.011, 1
  %17 = ptrtoint ptr %buf_size to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %buf_size, align 2
  %conv = zext i16 %18 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %__skb_queue_purge.exit.for.body_crit_edge, label %__skb_queue_purge.exit.for.end_crit_edge

__skb_queue_purge.exit.for.end_crit_edge:         ; preds = %__skb_queue_purge.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

__skb_queue_purge.exit.for.body_crit_edge:        ; preds = %__skb_queue_purge.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %__skb_queue_purge.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %reorder_buf2 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %h, i32 0, i32 3
  %19 = ptrtoint ptr %reorder_buf2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reorder_buf2, align 8
  tail call void @kfree(ptr noundef %20) #8
  %reorder_time = getelementptr inbounds %struct.tid_ampdu_rx, ptr %h, i32 0, i32 4
  %21 = ptrtoint ptr %reorder_time to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reorder_time, align 4
  tail call void @kfree(ptr noundef %22) #8
  tail call void @kfree(ptr noundef %h) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__ieee80211_stop_rx_ba_session(ptr noundef %sta, i16 noundef zeroext %tid, i16 noundef zeroext %initiator, i16 noundef zeroext %reason, i1 noundef zeroext %tx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ampdu_mlme = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 39
  tail call void @mutex_lock_nested(ptr noundef %ampdu_mlme, i32 noundef 0) #8
  tail call void @___ieee80211_stop_rx_ba_session(ptr noundef %sta, i16 noundef zeroext %tid, i16 noundef zeroext %initiator, i16 noundef zeroext %reason, i1 noundef zeroext %tx)
  tail call void @mutex_unlock(ptr noundef %ampdu_mlme) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_stop_rx_ba_session(ptr noundef %vif, i16 noundef zeroext %ba_rx_bitmap, ptr noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %vif, i32 -4080
  %0 = tail call i32 @llvm.read_register.i32(metadata !61) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !72
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 696, ptr noundef nonnull @.str.21) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call1 = tail call ptr @sta_info_get_bss(ptr noundef %add.ptr.i, ptr noundef %addr) #8
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %rcu_read_lock.exit
  %conv = zext i16 %ba_rx_bitmap to i32
  %tid_rx_stop_requested = getelementptr inbounds %struct.sta_info, ptr %call1, i32 0, i32 39, i32 4
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %for.cond.preheader.for.inc_crit_edge, label %if.then3

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %rcu_read_lock.exit
  %call.i14 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i14, label %if.then.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i17

if.then.rcu_read_unlock.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i17:                                ; preds = %if.then
  %call1.i15 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i15)
  %tobool.not.i16 = icmp eq i32 %call1.i15, 0
  br i1 %tobool.not.i16, label %land.lhs.true.i17.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i19

land.lhs.true.i17.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i17
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i19:                               ; preds = %land.lhs.true.i17
  %.b4.i18 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i18, label %land.lhs.true2.i19.rcu_read_unlock.exit_crit_edge, label %if.then.i20

land.lhs.true2.i19.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i19
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i20:                                      ; preds = %land.lhs.true2.i19
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 724, ptr noundef nonnull @.str.22) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i20, %land.lhs.true2.i19.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i17.rcu_read_unlock.exit_crit_edge, %if.then.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !73
  br label %cleanup

if.then3:                                         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %tid_rx_stop_requested) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then3, %for.cond.preheader.for.inc_crit_edge
  %and.1 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool2.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool2.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then3.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.then3.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 1, ptr noundef %tid_rx_stop_requested) #8
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then3.1, %for.inc.for.inc.1_crit_edge
  %and.2 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool2.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool2.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then3.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

if.then3.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 2, ptr noundef %tid_rx_stop_requested) #8
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then3.2, %for.inc.1.for.inc.2_crit_edge
  %and.3 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool2.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool2.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then3.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

if.then3.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 3, ptr noundef %tid_rx_stop_requested) #8
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then3.3, %for.inc.2.for.inc.3_crit_edge
  %and.4 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool2.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool2.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then3.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.4

if.then3.4:                                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 4, ptr noundef %tid_rx_stop_requested) #8
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then3.4, %for.inc.3.for.inc.4_crit_edge
  %and.5 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool2.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool2.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then3.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.5

if.then3.5:                                       ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 5, ptr noundef %tid_rx_stop_requested) #8
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then3.5, %for.inc.4.for.inc.5_crit_edge
  %and.6 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool2.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool2.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then3.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.6

if.then3.6:                                       ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 6, ptr noundef %tid_rx_stop_requested) #8
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then3.6, %for.inc.5.for.inc.6_crit_edge
  %and.7 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool2.not.7 = icmp eq i32 %and.7, 0
  br i1 %tobool2.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then3.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.7

if.then3.7:                                       ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 7, ptr noundef %tid_rx_stop_requested) #8
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then3.7, %for.inc.6.for.inc.7_crit_edge
  %and.8 = and i32 %conv, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.8)
  %tobool2.not.8 = icmp eq i32 %and.8, 0
  br i1 %tobool2.not.8, label %for.inc.7.for.inc.8_crit_edge, label %if.then3.8

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.8

if.then3.8:                                       ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 8, ptr noundef %tid_rx_stop_requested) #8
  br label %for.inc.8

for.inc.8:                                        ; preds = %if.then3.8, %for.inc.7.for.inc.8_crit_edge
  %and.9 = and i32 %conv, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.9)
  %tobool2.not.9 = icmp eq i32 %and.9, 0
  br i1 %tobool2.not.9, label %for.inc.8.for.inc.9_crit_edge, label %if.then3.9

for.inc.8.for.inc.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.9

if.then3.9:                                       ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 9, ptr noundef %tid_rx_stop_requested) #8
  br label %for.inc.9

for.inc.9:                                        ; preds = %if.then3.9, %for.inc.8.for.inc.9_crit_edge
  %and.10 = and i32 %conv, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.10)
  %tobool2.not.10 = icmp eq i32 %and.10, 0
  br i1 %tobool2.not.10, label %for.inc.9.for.inc.10_crit_edge, label %if.then3.10

for.inc.9.for.inc.10_crit_edge:                   ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.10

if.then3.10:                                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 10, ptr noundef %tid_rx_stop_requested) #8
  br label %for.inc.10

for.inc.10:                                       ; preds = %if.then3.10, %for.inc.9.for.inc.10_crit_edge
  %and.11 = and i32 %conv, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.11)
  %tobool2.not.11 = icmp eq i32 %and.11, 0
  br i1 %tobool2.not.11, label %for.inc.10.for.inc.11_crit_edge, label %if.then3.11

for.inc.10.for.inc.11_crit_edge:                  ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.11

if.then3.11:                                      ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 11, ptr noundef %tid_rx_stop_requested) #8
  br label %for.inc.11

for.inc.11:                                       ; preds = %if.then3.11, %for.inc.10.for.inc.11_crit_edge
  %and.12 = and i32 %conv, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.12)
  %tobool2.not.12 = icmp eq i32 %and.12, 0
  br i1 %tobool2.not.12, label %for.inc.11.for.inc.12_crit_edge, label %if.then3.12

for.inc.11.for.inc.12_crit_edge:                  ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.12

if.then3.12:                                      ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 12, ptr noundef %tid_rx_stop_requested) #8
  br label %for.inc.12

for.inc.12:                                       ; preds = %if.then3.12, %for.inc.11.for.inc.12_crit_edge
  %and.13 = and i32 %conv, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.13)
  %tobool2.not.13 = icmp eq i32 %and.13, 0
  br i1 %tobool2.not.13, label %for.inc.12.for.inc.13_crit_edge, label %if.then3.13

for.inc.12.for.inc.13_crit_edge:                  ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.13

if.then3.13:                                      ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 13, ptr noundef %tid_rx_stop_requested) #8
  br label %for.inc.13

for.inc.13:                                       ; preds = %if.then3.13, %for.inc.12.for.inc.13_crit_edge
  %and.14 = and i32 %conv, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.14)
  %tobool2.not.14 = icmp eq i32 %and.14, 0
  br i1 %tobool2.not.14, label %for.inc.13.for.inc.14_crit_edge, label %if.then3.14

for.inc.13.for.inc.14_crit_edge:                  ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.14

if.then3.14:                                      ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 14, ptr noundef %tid_rx_stop_requested) #8
  br label %for.inc.14

for.inc.14:                                       ; preds = %if.then3.14, %for.inc.13.for.inc.14_crit_edge
  %and.15 = and i32 %conv, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.15)
  %tobool2.not.15 = icmp eq i32 %and.15, 0
  br i1 %tobool2.not.15, label %for.inc.14.for.inc.15_crit_edge, label %if.then3.15

for.inc.14.for.inc.15_crit_edge:                  ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.15

if.then3.15:                                      ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 15, ptr noundef %tid_rx_stop_requested) #8
  br label %for.inc.15

for.inc.15:                                       ; preds = %if.then3.15, %for.inc.14.for.inc.15_crit_edge
  %local = getelementptr inbounds %struct.sta_info, ptr %call1, i32 0, i32 5
  %4 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %local, align 8
  %work = getelementptr inbounds %struct.sta_info, ptr %call1, i32 0, i32 39, i32 8
  tail call void @ieee80211_queue_work(ptr noundef %5, ptr noundef %work) #8
  %call.i23 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i23, label %for.inc.15.rcu_read_unlock.exit33_crit_edge, label %land.lhs.true.i26

for.inc.15.rcu_read_unlock.exit33_crit_edge:      ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit33

land.lhs.true.i26:                                ; preds = %for.inc.15
  %call1.i24 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i24)
  %tobool.not.i25 = icmp eq i32 %call1.i24, 0
  br i1 %tobool.not.i25, label %land.lhs.true.i26.rcu_read_unlock.exit33_crit_edge, label %land.lhs.true2.i28

land.lhs.true.i26.rcu_read_unlock.exit33_crit_edge: ; preds = %land.lhs.true.i26
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit33

land.lhs.true2.i28:                               ; preds = %land.lhs.true.i26
  %.b4.i27 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i27, label %land.lhs.true2.i28.rcu_read_unlock.exit33_crit_edge, label %if.then.i29

land.lhs.true2.i28.rcu_read_unlock.exit33_crit_edge: ; preds = %land.lhs.true2.i28
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit33

if.then.i29:                                      ; preds = %land.lhs.true2.i28
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 724, ptr noundef nonnull @.str.22) #8
  br label %rcu_read_unlock.exit33

rcu_read_unlock.exit33:                           ; preds = %if.then.i29, %land.lhs.true2.i28.rcu_read_unlock.exit33_crit_edge, %land.lhs.true.i26.rcu_read_unlock.exit33_crit_edge, %for.inc.15.rcu_read_unlock.exit33_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !73
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit33, %rcu_read_unlock.exit
  %6 = tail call i32 @llvm.read_register.i32(metadata !61) #8
  %and.i.i.i.i.i30 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i30 to ptr
  %preempt_count.i.i.i.i31 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i31 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i31, align 4
  %sub.i.i.i32 = add i32 %9, -1
  store volatile i32 %sub.i.i.i32, ptr %preempt_count.i.i.i.i31, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sta_info_get_bss(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 724, ptr noundef nonnull @.str.22) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !73
  %0 = tail call i32 @llvm.read_register.i32(metadata !61) #8
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @___ieee80211_start_rx_ba_session(ptr noundef %sta, i8 noundef zeroext %dialog_token, i16 noundef zeroext %timeout, i16 noundef zeroext %start_seq_num, i16 noundef zeroext %ba_policy, i16 noundef zeroext %tid, i16 noundef zeroext %buf_size, i1 noundef zeroext %tx, i1 noundef zeroext %auto_seq, ptr noundef readonly %addbaext) local_unnamed_addr #0 align 64 {
entry:
  %params = alloca %struct.ieee80211_ampdu_params, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sdata = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 6
  %0 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdata, align 4
  %local2 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %local2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %local2, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %params) #8
  %4 = getelementptr inbounds i8, ptr %params, i32 12
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 -1, ptr %4, align 4
  %6 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %params, align 4
  %sta3 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 1
  %sta4 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48
  %7 = ptrtoint ptr %sta3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %sta4, ptr %sta3, align 4
  %tid5 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 2
  %8 = ptrtoint ptr %tid5 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %tid, ptr %tid5, align 4
  %ssn = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 3
  %9 = ptrtoint ptr %ssn to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %start_seq_num, ptr %ssn, align 2
  %buf_size6 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 4
  %10 = ptrtoint ptr %buf_size6 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %buf_size6, align 4
  %amsdu = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 5
  %11 = ptrtoint ptr %amsdu to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %amsdu, align 2
  %timeout7 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 6
  %12 = ptrtoint ptr %timeout7 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %timeout, ptr %timeout7, align 4
  %conv = zext i16 %tid to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %tid)
  %cmp = icmp ugt i16 %tid, 7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 10
  %addr = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 1
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.6, ptr noundef %name, ptr noundef %addr, i32 noundef %conv) #8
  br label %if.end321

if.end:                                           ; preds = %entry
  %ht_cap = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 3
  %ht_supported = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 3, i32 1
  %13 = ptrtoint ptr %ht_supported to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ht_supported, align 2, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.if.end25_crit_edge

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end
  %chandef = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 59, i32 1, i32 32
  %15 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chandef, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %18)
  %cmp15.not = icmp eq i32 %18, 3
  br i1 %cmp15.not, label %land.lhs.true.if.end25_crit_edge, label %if.then17

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %name19 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 10
  %addr22 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 1
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.7, ptr noundef %name19, ptr noundef %addr22, i32 noundef %conv) #8
  br label %if.end321

if.end25:                                         ; preds = %land.lhs.true.if.end25_crit_edge, %if.end.if.end25_crit_edge
  %_flags.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 24
  %19 = ptrtoint ptr %_flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %_flags.i, align 4
  %21 = and i32 %20, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool26.not = icmp eq i32 %21, 0
  br i1 %tobool26.not, label %if.end35, label %if.then27

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %name29 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 10
  %addr32 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 1
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.8, ptr noundef %name29, ptr noundef %addr32, i32 noundef %conv) #8
  br label %if.end321

if.end35:                                         ; preds = %if.end25
  %he_cap = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 6
  %22 = ptrtoint ptr %he_cap to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %he_cap, align 8, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool37.not = icmp eq i8 %23, 0
  %. = select i1 %tobool37.not, i16 64, i16 256
  %conv40 = zext i16 %ba_policy to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %ba_policy)
  %cmp41.not = icmp eq i16 %ba_policy, 1
  br i1 %cmp41.not, label %lor.lhs.false, label %land.lhs.true43

land.lhs.true43:                                  ; preds = %if.end35
  %24 = ptrtoint ptr %ht_cap to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %ht_cap, align 8
  %26 = and i16 %25, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool47.not = icmp eq i16 %26, 0
  call void @__sanitizer_cov_trace_cmp2(i16 %., i16 %buf_size)
  %cmp50 = icmp ult i16 %., %buf_size
  %or.cond = select i1 %tobool47.not, i1 true, i1 %cmp50
  br i1 %or.cond, label %land.lhs.true43.if.then52_crit_edge, label %land.lhs.true43.if.end64_crit_edge

land.lhs.true43.if.end64_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

land.lhs.true43.if.then52_crit_edge:              ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then52

lor.lhs.false:                                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_cmp2(i16 %., i16 %buf_size)
  %cmp50.old = icmp ult i16 %., %buf_size
  br i1 %cmp50.old, label %lor.lhs.false.if.then52_crit_edge, label %lor.lhs.false.if.end64_crit_edge

lor.lhs.false.if.end64_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

lor.lhs.false.if.then52_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then52

if.then52:                                        ; preds = %lor.lhs.false.if.then52_crit_edge, %land.lhs.true43.if.then52_crit_edge
  %call53 = tail call i32 @net_ratelimit() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54 = icmp ne i32 %call53, 0
  %27 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sdata, align 4
  %name56 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %28, i32 0, i32 10
  %addr59 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 1
  %conv63 = zext i16 %buf_size to i32
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext %tobool54, ptr noundef nonnull @.str.9, ptr noundef %name56, ptr noundef %addr59, i32 noundef %conv, i32 noundef %conv40, i32 noundef %conv63) #8
  br label %if.end321

if.end64:                                         ; preds = %lor.lhs.false.if.end64_crit_edge, %land.lhs.true43.if.end64_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %buf_size)
  %cmp66 = icmp eq i16 %buf_size, 0
  %spec.select = select i1 %cmp66, i16 %., i16 %buf_size
  %max_rx_aggregation_subframes = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 9
  %29 = ptrtoint ptr %max_rx_aggregation_subframes to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %max_rx_aggregation_subframes, align 2
  %31 = tail call i16 @llvm.umin.i16(i16 %spec.select, i16 %30)
  %32 = ptrtoint ptr %buf_size6 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %buf_size6, align 4
  %name81 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 10
  %conv83 = zext i16 %31 to i32
  %addr85 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 1
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.10, ptr noundef %name81, i32 noundef %conv83, ptr noundef %addr85) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %33 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool87.not = icmp eq i32 %33, 0
  br i1 %tobool87.not, label %if.end64.if.end107_crit_edge, label %land.rhs

if.end64.if.end107_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end107

land.rhs:                                         ; preds = %if.end64
  %dep_map = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 39, i32 0, i32 5
  %call.i455 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i455)
  %cmp89.not = icmp eq i32 %call.i455, 0
  br i1 %cmp89.not, label %do.end, label %land.rhs.if.end107_crit_edge, !prof !71

land.rhs.if.end107_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end107

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 343, i32 noundef 9, ptr noundef null) #8
  br label %if.end107

if.end107:                                        ; preds = %do.end, %land.rhs.if.end107_crit_edge, %if.end64.if.end107_crit_edge
  %agg_session_valid = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 39, i32 6
  %div3.i = lshr i32 %conv, 5
  %arrayidx.i = getelementptr i32, ptr %agg_session_valid, i32 %div3.i
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %conv, 31
  %36 = shl nuw i32 1, %and.i
  %37 = and i32 %35, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool120.not = icmp eq i32 %37, 0
  br i1 %tobool120.not, label %if.end107.if.end178_crit_edge, label %if.then121

if.end107.if.end178_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end178

if.then121:                                       ; preds = %if.end107
  %arrayidx = getelementptr %struct.sta_info, ptr %sta, i32 0, i32 39, i32 2, i32 %conv
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %dialog_token)
  %cmp125 = icmp eq i8 %39, %dialog_token
  %call128 = tail call i32 @net_ratelimit() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129 = icmp ne i32 %call128, 0
  %40 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sdata, align 4
  %name131 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %41, i32 0, i32 10
  br i1 %cmp125, label %if.then127, label %if.end168

if.then127:                                       ; preds = %if.then121
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext %tobool129, ptr noundef nonnull @.str.11, ptr noundef %name131, ptr noundef %addr85, i32 noundef %conv) #8
  %42 = tail call i32 @llvm.read_register.i32(metadata !61) #8
  %and.i.i.i.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %45, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !72
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.then127.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then127.rcu_read_lock.exit_crit_edge:          ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then127
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 696, ptr noundef nonnull @.str.21) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then127.rcu_read_lock.exit_crit_edge
  %arrayidx144 = getelementptr %struct.sta_info, ptr %sta, i32 0, i32 39, i32 1, i32 %conv
  %46 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %arrayidx144, align 4
  %call146 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %land.lhs.true148, label %rcu_read_lock.exit.do.end156_crit_edge

rcu_read_lock.exit.do.end156_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end156

land.lhs.true148:                                 ; preds = %rcu_read_lock.exit
  %call149 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %land.lhs.true148.do.end156_crit_edge, label %land.lhs.true151

land.lhs.true148.do.end156_crit_edge:             ; preds = %land.lhs.true148
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end156

land.lhs.true151:                                 ; preds = %land.lhs.true148
  %.b445 = load i1, ptr @___ieee80211_start_rx_ba_session.__warned, align 1
  br i1 %.b445, label %land.lhs.true151.do.end156_crit_edge, label %if.then153

land.lhs.true151.do.end156_crit_edge:             ; preds = %land.lhs.true151
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end156

if.then153:                                       ; preds = %land.lhs.true151
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @___ieee80211_start_rx_ba_session.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 358, ptr noundef nonnull @.str.12) #8
  br label %do.end156

do.end156:                                        ; preds = %if.then153, %land.lhs.true151.do.end156_crit_edge, %land.lhs.true148.do.end156_crit_edge, %rcu_read_lock.exit.do.end156_crit_edge
  %tobool158.not = icmp eq ptr %47, null
  br i1 %tobool158.not, label %do.end156.end_crit_edge, label %land.lhs.true159

do.end156.end_crit_edge:                          ; preds = %do.end156
  call void @__sanitizer_cov_trace_pc() #10
  br label %end

land.lhs.true159:                                 ; preds = %do.end156
  %timeout160 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %47, i32 0, i32 13
  %48 = ptrtoint ptr %timeout160 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %timeout160, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %49, i16 %timeout)
  %cmp163 = icmp eq i16 %49, %timeout
  br i1 %cmp163, label %end.thread516, label %land.lhs.true159.end_crit_edge

land.lhs.true159.end_crit_edge:                   ; preds = %land.lhs.true159
  call void @__sanitizer_cov_trace_pc() #10
  br label %end

end.thread516:                                    ; preds = %land.lhs.true159
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @rcu_read_unlock()
  br label %if.then309

if.end168:                                        ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext %tobool129, ptr noundef nonnull @.str.13, ptr noundef %name131, ptr noundef %addr85, i32 noundef %conv) #8
  tail call void @___ieee80211_stop_rx_ba_session(ptr noundef %sta, i16 noundef zeroext %tid, i16 noundef zeroext 0, i16 noundef zeroext 32, i1 noundef zeroext false)
  br label %if.end178

if.end178:                                        ; preds = %if.end168, %if.end107.if.end178_crit_edge
  %arrayidx.i.i = getelementptr %struct.ieee80211_hw, ptr %3, i32 0, i32 4, i32 1
  %50 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %arrayidx.i.i, align 4
  %52 = and i32 %51, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.i.not = icmp eq i32 %52, 0
  br i1 %tobool.i.not, label %if.end193, label %if.then180

if.then180:                                       ; preds = %if.end178
  %53 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sdata, align 4
  %call182 = call i32 @drv_ampdu_action(ptr noundef %3, ptr noundef %54, ptr noundef nonnull %params) #8
  %55 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sdata, align 4
  %name184 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %56, i32 0, i32 10
  call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.14, ptr noundef %name184, ptr noundef %addr85, i32 noundef %conv, i32 noundef %call182) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call182)
  %tobool190.not = icmp eq i32 %call182, 0
  br i1 %tobool190.not, label %if.then180.if.then309_crit_edge, label %if.then180.if.end321_crit_edge

if.then180.if.end321_crit_edge:                   ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end321

if.then180.if.then309_crit_edge:                  ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then309

if.end193:                                        ; preds = %if.end178
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %57 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %57, i32 noundef 3520, i32 noundef 192) #11
  %tobool195.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool195.not, label %if.end193.if.end321_crit_edge, label %do.body198

if.end193.if.end321_crit_edge:                    ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end321

do.body198:                                       ; preds = %if.end193
  %reorder_lock = getelementptr inbounds %struct.tid_ampdu_rx, ptr %call7.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %reorder_lock, ptr noundef nonnull @.str.15, ptr noundef nonnull @___ieee80211_start_rx_ba_session.__key, i16 noundef signext 3) #8
  %session_timer = getelementptr inbounds %struct.tid_ampdu_rx, ptr %call7.i.i, i32 0, i32 6
  tail call void @init_timer_key(ptr noundef %session_timer, ptr noundef nonnull @sta_rx_agg_session_timer_expired, i32 noundef 524288, ptr noundef nonnull @.str.17, ptr noundef nonnull @___ieee80211_start_rx_ba_session.__key.16) #8
  %reorder_timer = getelementptr inbounds %struct.tid_ampdu_rx, ptr %call7.i.i, i32 0, i32 7
  tail call void @init_timer_key(ptr noundef %reorder_timer, ptr noundef nonnull @sta_rx_agg_reorder_timer_expired, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull @___ieee80211_start_rx_ba_session.__key.18) #8
  %58 = mul nuw nsw i32 %conv83, 56
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %58, i32 noundef 3520) #12
  %reorder_buf = getelementptr inbounds %struct.tid_ampdu_rx, ptr %call7.i.i, i32 0, i32 3
  %59 = ptrtoint ptr %reorder_buf to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call8.i.i, ptr %reorder_buf, align 8
  %60 = shl nuw nsw i32 %conv83, 2
  %call8.i.i485 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %60, i32 noundef 3520) #12
  %reorder_time = getelementptr inbounds %struct.tid_ampdu_rx, ptr %call7.i.i, i32 0, i32 4
  %61 = ptrtoint ptr %reorder_time to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call8.i.i485, ptr %reorder_time, align 4
  %62 = ptrtoint ptr %reorder_buf to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %reorder_buf, align 8
  %tobool213.not = icmp eq ptr %63, null
  %tobool216.not = icmp eq ptr %call8.i.i485, null
  %or.cond447 = select i1 %tobool213.not, i1 true, i1 %tobool216.not
  br i1 %or.cond447, label %if.then217, label %for.cond.preheader

for.cond.preheader:                               ; preds = %do.body198
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %cmp222521.not = icmp eq i16 %31, 0
  br i1 %cmp222521.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then217:                                       ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef %63) #8
  %64 = ptrtoint ptr %reorder_time to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %reorder_time, align 4
  tail call void @kfree(ptr noundef %65) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %if.end321

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0522 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %66 = ptrtoint ptr %reorder_buf to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %reorder_buf, align 8
  %arrayidx225 = getelementptr %struct.sk_buff_head, ptr %67, i32 %i.0522
  %68 = ptrtoint ptr %arrayidx225 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %arrayidx225, ptr %arrayidx225, align 4
  %prev.i = getelementptr inbounds %struct.anon.62, ptr %arrayidx225, i32 0, i32 1
  %69 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %arrayidx225, ptr %prev.i, align 4
  %qlen.i = getelementptr %struct.sk_buff_head, ptr %67, i32 %i.0522, i32 1
  %70 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %qlen.i, align 4
  %inc = add nuw nsw i32 %i.0522, 1
  %exitcond.not = icmp eq i32 %inc, %conv83
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %71 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %sdata, align 4
  %call227 = call i32 @drv_ampdu_action(ptr noundef %3, ptr noundef %72, ptr noundef nonnull %params) #8
  %73 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %sdata, align 4
  %name229 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %74, i32 0, i32 10
  call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.14, ptr noundef %name229, ptr noundef %addr85, i32 noundef %conv, i32 noundef %call227) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call227)
  %tobool235.not = icmp eq i32 %call227, 0
  br i1 %tobool235.not, label %if.end239, label %if.then236

if.then236:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %reorder_buf to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %reorder_buf, align 8
  call void @kfree(ptr noundef %76) #8
  %77 = ptrtoint ptr %reorder_time to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %reorder_time, align 4
  call void @kfree(ptr noundef %78) #8
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %if.end321

if.end239:                                        ; preds = %for.end
  %ssn240 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %call7.i.i, i32 0, i32 11
  %79 = ptrtoint ptr %ssn240 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %start_seq_num, ptr %ssn240, align 4
  %head_seq_num = getelementptr inbounds %struct.tid_ampdu_rx, ptr %call7.i.i, i32 0, i32 9
  %80 = ptrtoint ptr %head_seq_num to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %start_seq_num, ptr %head_seq_num, align 8
  %buf_size241 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %call7.i.i, i32 0, i32 12
  %81 = ptrtoint ptr %buf_size241 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %31, ptr %buf_size241, align 2
  %timeout242 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %call7.i.i, i32 0, i32 13
  %82 = ptrtoint ptr %timeout242 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %timeout, ptr %timeout242, align 8
  %stored_mpdu_num = getelementptr inbounds %struct.tid_ampdu_rx, ptr %call7.i.i, i32 0, i32 10
  %83 = ptrtoint ptr %stored_mpdu_num to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 0, ptr %stored_mpdu_num, align 2
  %auto_seq245 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %call7.i.i, i32 0, i32 15
  %84 = ptrtoint ptr %auto_seq245 to i32
  call void @__asan_load1_noabort(i32 %84)
  %bf.load = load i8, ptr %auto_seq245, align 1
  %bf.shl = select i1 %auto_seq, i8 -128, i8 0
  %bf.clear = and i8 %bf.load, 95
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %auto_seq245, align 1
  %reorder_buf_filtered = getelementptr inbounds %struct.tid_ampdu_rx, ptr %call7.i.i, i32 0, i32 2
  %85 = ptrtoint ptr %reorder_buf_filtered to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 0, ptr %reorder_buf_filtered, align 8
  %conv249 = trunc i16 %tid to i8
  %tid250 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %call7.i.i, i32 0, i32 14
  %86 = ptrtoint ptr %tid250 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv249, ptr %tid250, align 2
  %sta251 = getelementptr inbounds %struct.tid_ampdu_rx, ptr %call7.i.i, i32 0, i32 5
  %87 = ptrtoint ptr %sta251 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %sta, ptr %sta251, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !75
  %arrayidx287 = getelementptr %struct.sta_info, ptr %sta, i32 0, i32 39, i32 1, i32 %conv
  %88 = ptrtoint ptr %arrayidx287 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %call7.i.i, ptr %arrayidx287, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %timeout)
  %tobool299.not = icmp eq i16 %timeout, 0
  br i1 %tobool299.not, label %if.end239.if.then309_crit_edge, label %if.then300

if.end239.if.then309_crit_edge:                   ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then309

if.then300:                                       ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %89 = load volatile i32, ptr @jiffies, align 128
  %conv302 = zext i16 %timeout to i32
  %mul = shl nuw nsw i32 %conv302, 10
  %call3.i = call i32 @__usecs_to_jiffies(i32 noundef %mul) #8
  %add = add i32 %call3.i, %89
  %call304 = call i32 @mod_timer(ptr noundef %session_timer, i32 noundef %add) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %90 = load volatile i32, ptr @jiffies, align 128
  %last_rx = getelementptr inbounds %struct.tid_ampdu_rx, ptr %call7.i.i, i32 0, i32 8
  %91 = ptrtoint ptr %last_rx to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %last_rx, align 4
  br label %if.then309

end:                                              ; preds = %land.lhs.true159.end_crit_edge, %do.end156.end_crit_edge
  tail call fastcc void @rcu_read_unlock()
  br label %if.end321

if.then309:                                       ; preds = %if.then300, %if.end239.if.then309_crit_edge, %if.then180.if.then309_crit_edge, %end.thread516
  %92 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx.i, align 4
  %or.i = or i32 %93, %36
  store i32 %or.i, ptr %arrayidx.i, align 4
  %unexpected_agg = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 39, i32 7
  %add.ptr.i453 = getelementptr i32, ptr %unexpected_agg, i32 %div3.i
  %neg.i = xor i32 %36, -1
  %94 = ptrtoint ptr %add.ptr.i453 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %add.ptr.i453, align 4
  %and.i454 = and i32 %95, %neg.i
  store i32 %and.i454, ptr %add.ptr.i453, align 4
  %arrayidx320 = getelementptr %struct.sta_info, ptr %sta, i32 0, i32 39, i32 2, i32 %conv
  %96 = ptrtoint ptr %arrayidx320 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %dialog_token, ptr %arrayidx320, align 1
  br label %if.end321

if.end321:                                        ; preds = %if.then309, %end, %if.then236, %if.then217, %if.end193.if.end321_crit_edge, %if.then180.if.end321_crit_edge, %if.then52, %if.then27, %if.then17, %if.then
  %buf_size.addr.2508 = phi i16 [ %31, %if.then309 ], [ %31, %end ], [ %31, %if.then180.if.end321_crit_edge ], [ %buf_size, %if.then17 ], [ %31, %if.end193.if.end321_crit_edge ], [ %31, %if.then217 ], [ %31, %if.then236 ], [ %buf_size, %if.then52 ], [ %buf_size, %if.then27 ], [ %buf_size, %if.then ]
  %status.1507 = phi i16 [ 0, %if.then309 ], [ 9472, %end ], [ 9472, %if.then180.if.end321_crit_edge ], [ 9472, %if.then17 ], [ 9472, %if.end193.if.end321_crit_edge ], [ 9472, %if.then217 ], [ 9472, %if.then236 ], [ 9728, %if.then52 ], [ 9472, %if.then27 ], [ 9472, %if.then ]
  br i1 %tx, label %if.then323, label %if.end321.if.end327_crit_edge

if.end321.if.end327_crit_edge:                    ; preds = %if.end321
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end327

if.then323:                                       ; preds = %if.end321
  %97 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %sdata, align 4
  %local2.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %98, i32 0, i32 7
  %99 = ptrtoint ptr %local2.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %local2.i, align 4
  %flags.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %100, i32 0, i32 4
  %101 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %flags.i.i, align 4
  %extra_tx_headroom.i = getelementptr inbounds %struct.ieee80211_hw, ptr %100, i32 0, i32 5
  %103 = ptrtoint ptr %extra_tx_headroom.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %extra_tx_headroom.i, align 4
  %add.i = add i32 %104, 53
  %call.i.i.i = call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add.i, i32 noundef 2592) #8
  %tobool.not.i489 = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i489, label %if.then323.if.end327_crit_edge, label %if.end.i490

if.then323.if.end327_crit_edge:                   ; preds = %if.then323
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end327

if.end.i490:                                      ; preds = %if.then323
  %addr325 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 1
  %105 = ptrtoint ptr %extra_tx_headroom.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %extra_tx_headroom.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %107 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %108, i32 %106
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %109 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %110, i32 %106
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call.i.i = call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 24) #8
  %111 = call ptr @memset(ptr %call.i.i, i32 0, i32 24)
  %da8.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i.i, i32 0, i32 2
  %112 = call ptr @memcpy(ptr %da8.i, ptr %addr325, i32 6)
  %sa.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i.i, i32 0, i32 3
  %vif.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %98, i32 0, i32 59
  %addr.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %98, i32 0, i32 59, i32 2
  %113 = call ptr @memcpy(ptr %sa.i, ptr %addr.i, i32 6)
  %114 = ptrtoint ptr %vif.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %vif.i, align 8
  %116 = zext i32 %115 to i64
  call void @__sanitizer_cov_trace_switch(i64 %116, ptr @__sancov_gen_cov_switch_values)
  switch i32 %115, label %if.end.i490.if.end44.i_crit_edge [
    i32 3, label %if.end.i490.if.then19.i_crit_edge
    i32 4, label %if.end.i490.if.then19.i_crit_edge551
    i32 7, label %if.end.i490.if.then19.i_crit_edge552
    i32 2, label %if.then27.i
    i32 1, label %if.then36.i
  ]

if.end.i490.if.then19.i_crit_edge552:             ; preds = %if.end.i490
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then19.i

if.end.i490.if.then19.i_crit_edge551:             ; preds = %if.end.i490
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then19.i

if.end.i490.if.then19.i_crit_edge:                ; preds = %if.end.i490
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then19.i

if.end.i490.if.end44.i_crit_edge:                 ; preds = %if.end.i490
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i

if.then19.i:                                      ; preds = %if.end.i490.if.then19.i_crit_edge, %if.end.i490.if.then19.i_crit_edge551, %if.end.i490.if.then19.i_crit_edge552
  %bssid.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i.i, i32 0, i32 4
  %117 = call ptr @memcpy(ptr %bssid.i, ptr %addr.i, i32 6)
  br label %if.end44.i

if.then27.i:                                      ; preds = %if.end.i490
  call void @__sanitizer_cov_trace_pc() #10
  %bssid28.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i.i, i32 0, i32 4
  %bssid30.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %98, i32 0, i32 57, i32 0, i32 25
  %118 = call ptr @memcpy(ptr %bssid28.i, ptr %bssid30.i, i32 6)
  br label %if.end44.i

if.then36.i:                                      ; preds = %if.end.i490
  call void @__sanitizer_cov_trace_pc() #10
  %bssid37.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i.i, i32 0, i32 4
  %u39.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %98, i32 0, i32 57
  %bssid40.i = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %u39.i, i32 0, i32 10
  %119 = call ptr @memcpy(ptr %bssid37.i, ptr %bssid40.i, i32 6)
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then36.i, %if.then27.i, %if.then19.i, %if.end.i490.if.end44.i_crit_edge
  %120 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 -12288, ptr %call.i.i, align 2
  %call45.i = call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 9) #8
  %u46.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i.i, i32 0, i32 6
  %121 = ptrtoint ptr %u46.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 3, ptr %u46.i, align 2
  %u48.i = getelementptr inbounds %struct.anon.164, ptr %u46.i, i32 0, i32 1
  %122 = ptrtoint ptr %u48.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 1, ptr %u48.i, align 1
  %dialog_token51.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i.i, i32 0, i32 6, i32 0, i32 1
  %123 = ptrtoint ptr %dialog_token51.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %dialog_token, ptr %dialog_token51.i, align 1
  %124 = shl i16 %tid, 2
  %125 = and i16 %124, 60
  %126 = lshr i32 %102, 30
  %127 = trunc i32 %126 to i16
  %or1.i = or i16 %125, %127
  %128 = shl i16 %buf_size.addr.2508, 6
  %or612.i = or i16 %or1.i, %128
  %or663.i = or i16 %or612.i, 2
  %129 = call i16 @llvm.bswap.i16(i16 %or663.i) #8
  %capab70.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i.i, i32 0, i32 6, i32 0, i32 2, i32 1
  %130 = ptrtoint ptr %capab70.i to i32
  call void @__asan_storeN_noabort(i32 %130, i32 2)
  store i16 %129, ptr %capab70.i, align 1
  %131 = call i16 @llvm.bswap.i16(i16 %timeout) #8
  %timeout73.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i.i, i32 0, i32 6, i32 0, i32 2, i32 3
  %132 = ptrtoint ptr %timeout73.i to i32
  call void @__asan_storeN_noabort(i32 %132, i32 2)
  store i16 %131, ptr %timeout73.i, align 1
  %status76.i = getelementptr inbounds %struct.anon.164, ptr %u46.i, i32 0, i32 1, i32 0, i32 2
  %133 = ptrtoint ptr %status76.i to i32
  call void @__asan_storeN_noabort(i32 %133, i32 2)
  store i16 %status.1507, ptr %status76.i, align 1
  %he_cap.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 6
  %134 = ptrtoint ptr %he_cap.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %he_cap.i, align 8, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool78.not.i = icmp eq i8 %135, 0
  %tobool80.not.i = icmp eq ptr %addbaext, null
  %or.cond.i = or i1 %tobool80.not.i, %tobool78.not.i
  br i1 %or.cond.i, label %if.end44.i.if.end82.i_crit_edge, label %if.then81.i

if.end44.i.if.end82.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82.i

if.then81.i:                                      ; preds = %if.end44.i
  %136 = ptrtoint ptr %local2.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %local2.i, align 4
  %138 = call i32 @llvm.read_register.i32(metadata !61) #8
  %and.i.i.i.i.i.i.i.i = and i32 %138, -16384
  %139 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %139, i32 0, i32 1
  %140 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %141, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !72
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i.i.i.i = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i.i.i.i, label %if.then81.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.then81.i.rcu_read_lock.exit.i.i.i_crit_edge:   ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then81.i
  %call1.i.i.i.i491 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i491)
  %tobool.not.i.i.i.i492 = icmp eq i32 %call1.i.i.i.i491, 0
  br i1 %tobool.not.i.i.i.i492, label %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true2.i.i.i.i

land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true2.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b4.i.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i.i, label %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 696, ptr noundef nonnull @.str.21) #8
  br label %rcu_read_lock.exit.i.i.i

rcu_read_lock.exit.i.i.i:                         ; preds = %if.then.i.i.i.i, %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %if.then81.i.rcu_read_lock.exit.i.i.i_crit_edge
  %chanctx_conf2.i.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %98, i32 0, i32 59, i32 9
  %142 = ptrtoint ptr %chanctx_conf2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load volatile ptr, ptr %chanctx_conf2.i.i.i, align 4
  %call.i.i30.i = call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i30.i)
  %tobool.not.i45.i.i = icmp eq i32 %call.i.i30.i, 0
  br i1 %tobool.not.i45.i.i, label %land.lhs.true.i.i.i, label %rcu_read_lock.exit.i.i.i.do.end9.i.i.i_crit_edge

rcu_read_lock.exit.i.i.i.do.end9.i.i.i_crit_edge: ; preds = %rcu_read_lock.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9.i.i.i

land.lhs.true.i.i.i:                              ; preds = %rcu_read_lock.exit.i.i.i
  %call4.i.i.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %tobool5.not.i.i.i = icmp eq i32 %call4.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %land.lhs.true.i.i.i.do.end9.i.i.i_crit_edge, label %land.lhs.true6.i.i.i

land.lhs.true.i.i.i.do.end9.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9.i.i.i

land.lhs.true6.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b19.i.i.i = load i1, ptr @ieee80211_get_sband.__warned, align 1
  br i1 %.b19.i.i.i, label %land.lhs.true6.i.i.i.do.end9.i.i.i_crit_edge, label %if.then.i46.i.i

land.lhs.true6.i.i.i.do.end9.i.i.i_crit_edge:     ; preds = %land.lhs.true6.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9.i.i.i

if.then.i46.i.i:                                  ; preds = %land.lhs.true6.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ieee80211_get_sband.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 1505, ptr noundef nonnull @.str.12) #8
  br label %do.end9.i.i.i

do.end9.i.i.i:                                    ; preds = %if.then.i46.i.i, %land.lhs.true6.i.i.i.do.end9.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.end9.i.i.i_crit_edge, %rcu_read_lock.exit.i.i.i.do.end9.i.i.i_crit_edge
  %tobool11.not.i.i.i = icmp eq ptr %143, null
  br i1 %tobool11.not.i.i.i, label %if.then12.i.i.i, label %if.end13.i.i.i

if.then12.i.i.i:                                  ; preds = %do.end9.i.i.i
  %call.i20.i.i.i = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i20.i.i.i, label %if.then12.i.i.i.ieee80211_get_sband.exit.thread.i.i_crit_edge, label %land.lhs.true.i23.i.i.i

if.then12.i.i.i.ieee80211_get_sband.exit.thread.i.i_crit_edge: ; preds = %if.then12.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_get_sband.exit.thread.i.i

land.lhs.true.i23.i.i.i:                          ; preds = %if.then12.i.i.i
  %call1.i21.i.i.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i21.i.i.i)
  %tobool.not.i22.i.i.i = icmp eq i32 %call1.i21.i.i.i, 0
  br i1 %tobool.not.i22.i.i.i, label %land.lhs.true.i23.i.i.i.ieee80211_get_sband.exit.thread.i.i_crit_edge, label %land.lhs.true2.i25.i.i.i

land.lhs.true.i23.i.i.i.ieee80211_get_sband.exit.thread.i.i_crit_edge: ; preds = %land.lhs.true.i23.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_get_sband.exit.thread.i.i

land.lhs.true2.i25.i.i.i:                         ; preds = %land.lhs.true.i23.i.i.i
  %.b4.i24.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i24.i.i.i, label %land.lhs.true2.i25.i.i.i.ieee80211_get_sband.exit.thread.i.i_crit_edge, label %if.then.i26.i.i.i

land.lhs.true2.i25.i.i.i.ieee80211_get_sband.exit.thread.i.i_crit_edge: ; preds = %land.lhs.true2.i25.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_get_sband.exit.thread.i.i

if.then.i26.i.i.i:                                ; preds = %land.lhs.true2.i25.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 724, ptr noundef nonnull @.str.22) #8
  br label %ieee80211_get_sband.exit.thread.i.i

ieee80211_get_sband.exit.thread.i.i:              ; preds = %if.then.i26.i.i.i, %land.lhs.true2.i25.i.i.i.ieee80211_get_sband.exit.thread.i.i_crit_edge, %land.lhs.true.i23.i.i.i.ieee80211_get_sband.exit.thread.i.i_crit_edge, %if.then12.i.i.i.ieee80211_get_sband.exit.thread.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !73
  %144 = call i32 @llvm.read_register.i32(metadata !61) #8
  %and.i.i.i.i.i27.i.i.i = and i32 %144, -16384
  %145 = inttoptr i32 %and.i.i.i.i.i27.i.i.i to ptr
  %preempt_count.i.i.i.i28.i.i.i = getelementptr inbounds %struct.thread_info, ptr %145, i32 0, i32 1
  %146 = ptrtoint ptr %preempt_count.i.i.i.i28.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load volatile i32, ptr %preempt_count.i.i.i.i28.i.i.i, align 4
  %sub.i.i.i.i.i.i493 = add i32 %147, -1
  store volatile i32 %sub.i.i.i.i.i.i493, ptr %preempt_count.i.i.i.i28.i.i.i, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %if.end82.i

if.end13.i.i.i:                                   ; preds = %do.end9.i.i.i
  %148 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %143, align 4
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %149, align 4
  %call.i29.i.i.i = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i29.i.i.i, label %if.end13.i.i.i.ieee80211_get_sband.exit.i.i_crit_edge, label %land.lhs.true.i32.i.i.i

if.end13.i.i.i.ieee80211_get_sband.exit.i.i_crit_edge: ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_get_sband.exit.i.i

land.lhs.true.i32.i.i.i:                          ; preds = %if.end13.i.i.i
  %call1.i30.i.i.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i30.i.i.i)
  %tobool.not.i31.i.i.i = icmp eq i32 %call1.i30.i.i.i, 0
  br i1 %tobool.not.i31.i.i.i, label %land.lhs.true.i32.i.i.i.ieee80211_get_sband.exit.i.i_crit_edge, label %land.lhs.true2.i34.i.i.i

land.lhs.true.i32.i.i.i.ieee80211_get_sband.exit.i.i_crit_edge: ; preds = %land.lhs.true.i32.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_get_sband.exit.i.i

land.lhs.true2.i34.i.i.i:                         ; preds = %land.lhs.true.i32.i.i.i
  %.b4.i33.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i33.i.i.i, label %land.lhs.true2.i34.i.i.i.ieee80211_get_sband.exit.i.i_crit_edge, label %if.then.i35.i.i.i

land.lhs.true2.i34.i.i.i.ieee80211_get_sband.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i34.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_get_sband.exit.i.i

if.then.i35.i.i.i:                                ; preds = %land.lhs.true2.i34.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 724, ptr noundef nonnull @.str.22) #8
  br label %ieee80211_get_sband.exit.i.i

ieee80211_get_sband.exit.i.i:                     ; preds = %if.then.i35.i.i.i, %land.lhs.true2.i34.i.i.i.ieee80211_get_sband.exit.i.i_crit_edge, %land.lhs.true.i32.i.i.i.ieee80211_get_sband.exit.i.i_crit_edge, %if.end13.i.i.i.ieee80211_get_sband.exit.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !73
  %152 = call i32 @llvm.read_register.i32(metadata !61) #8
  %and.i.i.i.i.i36.i.i.i = and i32 %152, -16384
  %153 = inttoptr i32 %and.i.i.i.i.i36.i.i.i to ptr
  %preempt_count.i.i.i.i37.i.i.i = getelementptr inbounds %struct.thread_info, ptr %153, i32 0, i32 1
  %154 = ptrtoint ptr %preempt_count.i.i.i.i37.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load volatile i32, ptr %preempt_count.i.i.i.i37.i.i.i, align 4
  %sub.i.i.i38.i.i.i = add i32 %155, -1
  store volatile i32 %sub.i.i.i38.i.i.i, ptr %preempt_count.i.i.i.i37.i.i.i, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %wiphy.i.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %137, i32 0, i32 1
  %156 = ptrtoint ptr %wiphy.i.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %wiphy.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.wiphy, ptr %157, i32 0, i32 53, i32 %151
  %158 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tobool.not.i31.i = icmp eq ptr %159, null
  br i1 %tobool.not.i31.i, label %ieee80211_get_sband.exit.i.i.if.end82.i_crit_edge, label %if.end.i.i494

ieee80211_get_sband.exit.i.i.if.end82.i_crit_edge: ; preds = %ieee80211_get_sband.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82.i

if.end.i.i494:                                    ; preds = %ieee80211_get_sband.exit.i.i
  %160 = ptrtoint ptr %vif.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %vif.i, align 8
  %p2p.i.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %98, i32 0, i32 59, i32 3
  %162 = ptrtoint ptr %p2p.i.i.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %p2p.i.i.i, align 2, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %tobool.not.i47.i.i = icmp eq i8 %163, 0
  br i1 %tobool.not.i47.i.i, label %if.end.i.i494.ieee80211_vif_type_p2p.exit.i.i_crit_edge, label %if.then.i.i48.i.i

if.end.i.i494.ieee80211_vif_type_p2p.exit.i.i_crit_edge: ; preds = %if.end.i.i494
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_vif_type_p2p.exit.i.i

if.then.i.i48.i.i:                                ; preds = %if.end.i.i494
  %164 = zext i32 %161 to i64
  call void @__sanitizer_cov_trace_switch(i64 %164, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %161, label %if.then.i.i48.i.i.ieee80211_vif_type_p2p.exit.i.i_crit_edge [
    i32 2, label %if.then.i.i48.i.i.for.cond.preheader.i.i.i.i_crit_edge
    i32 3, label %sw.bb1.i.i.i.i
  ]

if.then.i.i48.i.i.for.cond.preheader.i.i.i.i_crit_edge: ; preds = %if.then.i.i48.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.preheader.i.i.i.i

if.then.i.i48.i.i.ieee80211_vif_type_p2p.exit.i.i_crit_edge: ; preds = %if.then.i.i48.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_vif_type_p2p.exit.i.i

sw.bb1.i.i.i.i:                                   ; preds = %if.then.i.i48.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.preheader.i.i.i.i

ieee80211_vif_type_p2p.exit.i.i:                  ; preds = %if.then.i.i48.i.i.ieee80211_vif_type_p2p.exit.i.i_crit_edge, %if.end.i.i494.ieee80211_vif_type_p2p.exit.i.i_crit_edge
  %conv.i32.i = trunc i32 %161 to i8
  %conv.i.i.i.i = and i32 %161, 255
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %conv.i32.i)
  %cmp.i.i.i.i495 = icmp ugt i8 %conv.i32.i, 11
  br i1 %cmp.i.i.i.i495, label %do.end.i.i.i.i, label %ieee80211_vif_type_p2p.exit.i.i.for.cond.preheader.i.i.i.i_crit_edge, !prof !71

ieee80211_vif_type_p2p.exit.i.i.for.cond.preheader.i.i.i.i_crit_edge: ; preds = %ieee80211_vif_type_p2p.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.preheader.i.i.i.i

for.cond.preheader.i.i.i.i:                       ; preds = %ieee80211_vif_type_p2p.exit.i.i.for.cond.preheader.i.i.i.i_crit_edge, %sw.bb1.i.i.i.i, %if.then.i.i48.i.i.for.cond.preheader.i.i.i.i_crit_edge
  %conv.i.i59.i.i = phi i32 [ %conv.i.i.i.i, %ieee80211_vif_type_p2p.exit.i.i.for.cond.preheader.i.i.i.i_crit_edge ], [ 8, %if.then.i.i48.i.i.for.cond.preheader.i.i.i.i_crit_edge ], [ 9, %sw.bb1.i.i.i.i ]
  %n_iftype_data.i.i.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %159, i32 0, i32 9
  %165 = ptrtoint ptr %n_iftype_data.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %n_iftype_data.i.i.i.i, align 4
  %conv23.i.i.i.i = zext i16 %166 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %166)
  %cmp2438.not.i.i.i.i = icmp eq i16 %166, 0
  br i1 %cmp2438.not.i.i.i.i, label %for.cond.preheader.i.i.i.i.if.end82.i_crit_edge, label %for.body.lr.ph.i.i.i.i

for.cond.preheader.i.i.i.i.if.end82.i_crit_edge:  ; preds = %for.cond.preheader.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82.i

for.body.lr.ph.i.i.i.i:                           ; preds = %for.cond.preheader.i.i.i.i
  %iftype_data.i.i.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %159, i32 0, i32 10
  %167 = ptrtoint ptr %iftype_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %iftype_data.i.i.i.i, align 4
  %shl.i.i.i.i = shl nuw i32 1, %conv.i.i59.i.i
  br label %for.body.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %ieee80211_vif_type_p2p.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 510, i32 noundef 9, ptr noundef null) #8
  br label %if.end82.i

for.cond.i.i.i.i:                                 ; preds = %for.body.i.i.i.i
  %inc.i.i.i.i = add nuw nsw i32 %i.039.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, %conv23.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %for.cond.i.i.i.i.if.end82.i_crit_edge, label %for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge

for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge:      ; preds = %for.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i.i

for.cond.i.i.i.i.if.end82.i_crit_edge:            ; preds = %for.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82.i

for.body.i.i.i.i:                                 ; preds = %for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.body.lr.ph.i.i.i.i
  %i.039.i.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i.i ], [ %inc.i.i.i.i, %for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %arrayidx.i.i.i.i = getelementptr %struct.ieee80211_sband_iftype_data, ptr %168, i32 %i.039.i.i.i.i
  %169 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %arrayidx.i.i.i.i, align 4
  %conv26.i.i.i.i = zext i16 %170 to i32
  %and.i.i.i.i = and i32 %shl.i.i.i.i, %conv26.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool28.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool28.not.i.i.i.i, label %for.cond.i.i.i.i, label %ieee80211_get_sband_iftype_data.exit.i.i.i

ieee80211_get_sband_iftype_data.exit.i.i.i:       ; preds = %for.body.i.i.i.i
  %tobool.not.i49.i.i = icmp eq ptr %arrayidx.i.i.i.i, null
  br i1 %tobool.not.i49.i.i, label %ieee80211_get_sband_iftype_data.exit.i.i.i.if.end82.i_crit_edge, label %land.lhs.true.i50.i.i

ieee80211_get_sband_iftype_data.exit.i.i.i.if.end82.i_crit_edge: ; preds = %ieee80211_get_sband_iftype_data.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82.i

land.lhs.true.i50.i.i:                            ; preds = %ieee80211_get_sband_iftype_data.exit.i.i.i
  %he_cap.i.i.i = getelementptr %struct.ieee80211_sband_iftype_data, ptr %168, i32 %i.039.i.i.i.i, i32 1
  %171 = ptrtoint ptr %he_cap.i.i.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %he_cap.i.i.i, align 2, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %172)
  %tobool1.not.i.i.i = icmp eq i8 %172, 0
  %tobool3.not.i.i = icmp eq ptr %he_cap.i.i.i, null
  %or.cond.i.i = or i1 %tobool3.not.i.i, %tobool1.not.i.i.i
  br i1 %or.cond.i.i, label %land.lhs.true.i50.i.i.if.end82.i_crit_edge, label %if.end5.i.i

land.lhs.true.i50.i.i.if.end82.i_crit_edge:       ; preds = %land.lhs.true.i50.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82.i

if.end5.i.i:                                      ; preds = %land.lhs.true.i50.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i52.i.i = call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 3) #8
  %173 = getelementptr inbounds i8, ptr %call.i52.i.i, i32 2
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 0, ptr %173, align 1
  %incdec.ptr.i.i = getelementptr i8, ptr %call.i52.i.i, i32 1
  %175 = ptrtoint ptr %call.i52.i.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 -97, ptr %call.i52.i.i, align 1
  %176 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 1, ptr %incdec.ptr.i.i, align 1
  %177 = ptrtoint ptr %addbaext to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %addbaext, align 1
  %179 = and i8 %178, 1
  store i8 %179, ptr %173, align 1
  %180 = load i8, ptr %addbaext, align 1
  %181 = lshr i8 %180, 1
  %div4.i6264.i.i = and i8 %181, 3
  %he_cap_elem.i.i = getelementptr %struct.ieee80211_sband_iftype_data, ptr %168, i32 %i.039.i.i.i.i, i32 1, i32 1
  %182 = ptrtoint ptr %he_cap_elem.i.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %he_cap_elem.i.i, align 1
  %184 = lshr i8 %183, 3
  %div4.i446365.i.i = and i8 %184, 3
  %185 = call i8 @llvm.umin.i8(i8 %div4.i6264.i.i, i8 %div4.i446365.i.i) #8
  %186 = shl nuw nsw i8 %185, 1
  %or42.i.i = or i8 %186, %179
  %187 = ptrtoint ptr %173 to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 %or42.i.i, ptr %173, align 1
  br label %if.end82.i

if.end82.i:                                       ; preds = %if.end5.i.i, %land.lhs.true.i50.i.i.if.end82.i_crit_edge, %ieee80211_get_sband_iftype_data.exit.i.i.i.if.end82.i_crit_edge, %for.cond.i.i.i.i.if.end82.i_crit_edge, %do.end.i.i.i.i, %for.cond.preheader.i.i.i.i.if.end82.i_crit_edge, %ieee80211_get_sband.exit.i.i.if.end82.i_crit_edge, %ieee80211_get_sband.exit.thread.i.i, %if.end44.i.if.end82.i_crit_edge
  %188 = call i32 @llvm.read_register.i32(metadata !61) #8
  %and.i.i.i.i.i.i.i33.i = and i32 %188, -16384
  %189 = inttoptr i32 %and.i.i.i.i.i.i.i33.i to ptr
  %preempt_count.i.i.i.i.i.i34.i = getelementptr inbounds %struct.thread_info, ptr %189, i32 0, i32 1
  %190 = ptrtoint ptr %preempt_count.i.i.i.i.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i34.i, align 4
  %add.i.i.i.i.i35.i = add i32 %191, 1
  store volatile i32 %add.i.i.i.i.i35.i, ptr %preempt_count.i.i.i.i.i.i34.i, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !72
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i.i.i36.i = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i.i.i36.i, label %if.end82.i.rcu_read_lock.exit.i.i44.i_crit_edge, label %land.lhs.true.i.i.i39.i

if.end82.i.rcu_read_lock.exit.i.i44.i_crit_edge:  ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i.i44.i

land.lhs.true.i.i.i39.i:                          ; preds = %if.end82.i
  %call1.i.i.i37.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i37.i)
  %tobool.not.i.i.i38.i = icmp eq i32 %call1.i.i.i37.i, 0
  br i1 %tobool.not.i.i.i38.i, label %land.lhs.true.i.i.i39.i.rcu_read_lock.exit.i.i44.i_crit_edge, label %land.lhs.true2.i.i.i41.i

land.lhs.true.i.i.i39.i.rcu_read_lock.exit.i.i44.i_crit_edge: ; preds = %land.lhs.true.i.i.i39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i.i44.i

land.lhs.true2.i.i.i41.i:                         ; preds = %land.lhs.true.i.i.i39.i
  %.b4.i.i.i40.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i40.i, label %land.lhs.true2.i.i.i41.i.rcu_read_lock.exit.i.i44.i_crit_edge, label %if.then.i.i.i42.i

land.lhs.true2.i.i.i41.i.rcu_read_lock.exit.i.i44.i_crit_edge: ; preds = %land.lhs.true2.i.i.i41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i.i44.i

if.then.i.i.i42.i:                                ; preds = %land.lhs.true2.i.i.i41.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 696, ptr noundef nonnull @.str.21) #8
  br label %rcu_read_lock.exit.i.i44.i

rcu_read_lock.exit.i.i44.i:                       ; preds = %if.then.i.i.i42.i, %land.lhs.true2.i.i.i41.i.rcu_read_lock.exit.i.i44.i_crit_edge, %land.lhs.true.i.i.i39.i.rcu_read_lock.exit.i.i44.i_crit_edge, %if.end82.i.rcu_read_lock.exit.i.i44.i_crit_edge
  %chanctx_conf1.i.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %98, i32 0, i32 59, i32 9
  %192 = ptrtoint ptr %chanctx_conf1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load volatile ptr, ptr %chanctx_conf1.i.i.i, align 4
  %call.i.i43.i = call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i43.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i43.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i45.i, label %rcu_read_lock.exit.i.i44.i.do.end8.i.i.i_crit_edge

rcu_read_lock.exit.i.i44.i.do.end8.i.i.i_crit_edge: ; preds = %rcu_read_lock.exit.i.i44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i.i.i

land.lhs.true.i.i45.i:                            ; preds = %rcu_read_lock.exit.i.i44.i
  %call3.i.i.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call3.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %land.lhs.true.i.i45.i.do.end8.i.i.i_crit_edge, label %land.lhs.true5.i.i.i

land.lhs.true.i.i45.i.do.end8.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i.i.i

land.lhs.true5.i.i.i:                             ; preds = %land.lhs.true.i.i45.i
  %.b1.i.i.i = load i1, ptr @ieee80211_tx_skb_tid.__warned, align 1
  br i1 %.b1.i.i.i, label %land.lhs.true5.i.i.i.do.end8.i.i.i_crit_edge, label %if.then.i.i.i496

land.lhs.true5.i.i.i.do.end8.i.i.i_crit_edge:     ; preds = %land.lhs.true5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i.i.i

if.then.i.i.i496:                                 ; preds = %land.lhs.true5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ieee80211_tx_skb_tid.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 2199, ptr noundef nonnull @.str.12) #8
  br label %do.end8.i.i.i

do.end8.i.i.i:                                    ; preds = %if.then.i.i.i496, %land.lhs.true5.i.i.i.do.end8.i.i.i_crit_edge, %land.lhs.true.i.i45.i.do.end8.i.i.i_crit_edge, %rcu_read_lock.exit.i.i44.i.do.end8.i.i.i_crit_edge
  %tobool10.not.i.i.i = icmp eq ptr %193, null
  br i1 %tobool10.not.i.i.i, label %do.end23.i.i.i, label %if.end39.i.i.i, !prof !71

do.end23.i.i.i:                                   ; preds = %do.end8.i.i.i
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 2200, i32 noundef 9, ptr noundef null) #8
  %call.i1.i.i = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i1.i.i, label %do.end23.i.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true.i3.i.i

do.end23.i.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %do.end23.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i.i

land.lhs.true.i3.i.i:                             ; preds = %do.end23.i.i.i
  %call1.i.i.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i2.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i2.i.i, label %land.lhs.true.i3.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i3.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i3.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %if.then.i4.i.i

land.lhs.true2.i.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i.i

if.then.i4.i.i:                                   ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 724, ptr noundef nonnull @.str.22) #8
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i4.i.i, %land.lhs.true2.i.i.i.rcu_read_unlock.exit.i.i_crit_edge, %land.lhs.true.i3.i.i.rcu_read_unlock.exit.i.i_crit_edge, %do.end23.i.i.i.rcu_read_unlock.exit.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !73
  %194 = call i32 @llvm.read_register.i32(metadata !61) #8
  %and.i.i.i.i.i.i.i = and i32 %194, -16384
  %195 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %195, i32 0, i32 1
  %196 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %sub.i.i.i.i.i497 = add i32 %197, -1
  store volatile i32 %sub.i.i.i.i.i497, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #8
  br label %if.end327

if.end39.i.i.i:                                   ; preds = %do.end8.i.i.i
  %198 = ptrtoint ptr %193 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %193, align 4
  %200 = ptrtoint ptr %199 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %199, align 4
  call void @__ieee80211_tx_skb_tid_band(ptr noundef %98, ptr noundef nonnull %call.i.i.i, i32 noundef 7, i32 noundef %201) #8
  %call.i2.i.i.i = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i2.i.i.i, label %if.end39.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, label %land.lhs.true.i5.i.i.i

if.end39.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge: ; preds = %if.end39.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i.i.i

land.lhs.true.i5.i.i.i:                           ; preds = %if.end39.i.i.i
  %call1.i3.i.i.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3.i.i.i)
  %tobool.not.i4.i.i.i = icmp eq i32 %call1.i3.i.i.i, 0
  br i1 %tobool.not.i4.i.i.i, label %land.lhs.true.i5.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, label %land.lhs.true2.i7.i.i.i

land.lhs.true.i5.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i.i.i

land.lhs.true2.i7.i.i.i:                          ; preds = %land.lhs.true.i5.i.i.i
  %.b4.i6.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6.i.i.i, label %land.lhs.true2.i7.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, label %if.then.i8.i.i.i

land.lhs.true2.i7.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i.i.i

if.then.i8.i.i.i:                                 ; preds = %land.lhs.true2.i7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 724, ptr noundef nonnull @.str.22) #8
  br label %rcu_read_unlock.exit.i.i.i

rcu_read_unlock.exit.i.i.i:                       ; preds = %if.then.i8.i.i.i, %land.lhs.true2.i7.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, %land.lhs.true.i5.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, %if.end39.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !73
  %202 = call i32 @llvm.read_register.i32(metadata !61) #8
  %and.i.i.i.i.i9.i.i.i = and i32 %202, -16384
  %203 = inttoptr i32 %and.i.i.i.i.i9.i.i.i to ptr
  %preempt_count.i.i.i.i10.i.i.i = getelementptr inbounds %struct.thread_info, ptr %203, i32 0, i32 1
  %204 = ptrtoint ptr %preempt_count.i.i.i.i10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load volatile i32, ptr %preempt_count.i.i.i.i10.i.i.i, align 4
  %sub.i.i.i.i.i46.i = add i32 %205, -1
  store volatile i32 %sub.i.i.i.i.i46.i, ptr %preempt_count.i.i.i.i10.i.i.i, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %if.end327

if.end327:                                        ; preds = %rcu_read_unlock.exit.i.i.i, %rcu_read_unlock.exit.i.i, %if.then323.if.end327_crit_edge, %if.end321.if.end327_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %params) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sta_rx_agg_session_timer_expired(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sta1 = getelementptr i8, ptr %t, i32 -4
  %0 = ptrtoint ptr %sta1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sta1, align 8
  %tid2 = getelementptr i8, ptr %t, i32 110
  %2 = ptrtoint ptr %tid2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tid2, align 2
  %last_rx = getelementptr i8, ptr %t, i32 96
  %4 = ptrtoint ptr %last_rx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_rx, align 4
  %timeout3 = getelementptr i8, ptr %t, i32 108
  %6 = ptrtoint ptr %timeout3 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %timeout3, align 8
  %conv = zext i16 %7 to i32
  %mul = shl nuw nsw i32 %conv, 10
  %call3.i = tail call i32 @__usecs_to_jiffies(i32 noundef %mul) #8
  %add = add i32 %call3.i, %5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %8, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sdata = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sdata, align 4
  %name = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %10, i32 0, i32 10
  %addr = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 48, i32 1
  %conv8 = zext i8 %3 to i32
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.23, ptr noundef %name, ptr noundef %addr, i32 noundef %conv8) #8
  %tid_rx_timer_expired = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 39, i32 3
  tail call void @_set_bit(i32 noundef %conv8, ptr noundef %tid_rx_timer_expired) #8
  %local = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %local, align 8
  %work = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 39, i32 8
  tail call void @ieee80211_queue_work(ptr noundef %12, ptr noundef %work) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sta_rx_agg_reorder_timer_expired(ptr nocapture noundef readonly %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !61) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !72
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 696, ptr noundef nonnull @.str.21) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %sta = getelementptr i8, ptr %t, i32 -52
  %4 = ptrtoint ptr %sta to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sta, align 8
  %tid = getelementptr i8, ptr %t, i32 62
  %6 = ptrtoint ptr %tid to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tid, align 2
  %conv = zext i8 %7 to i32
  tail call void @ieee80211_release_reorder_timeout(ptr noundef %5, i32 noundef %conv) #8
  %call.i2 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i2, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i5

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i5:                                 ; preds = %rcu_read_lock.exit
  %call1.i3 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool.not.i4, label %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i7

land.lhs.true.i5.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i7:                                ; preds = %land.lhs.true.i5
  %.b4.i6 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6, label %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, label %if.then.i8

land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i8:                                       ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 724, ptr noundef nonnull @.str.22) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i8, %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !73
  %8 = tail call i32 @llvm.read_register.i32(metadata !61) #8
  %and.i.i.i.i.i9 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i9 to ptr
  %preempt_count.i.i.i.i10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i10, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i10, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_process_addba_request(ptr nocapture noundef readnone %local, ptr noundef %sta, ptr noundef %mgmt, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.ieee80211_mgmt, ptr %mgmt, i32 0, i32 6
  %dialog_token2 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %mgmt, i32 0, i32 6, i32 0, i32 1
  %0 = ptrtoint ptr %dialog_token2 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dialog_token2, align 1
  %timeout5 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %mgmt, i32 0, i32 6, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %timeout5 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %timeout5, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %start_seq_num8 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %mgmt, i32 0, i32 6, i32 0, i32 2, i32 3
  %5 = ptrtoint ptr %start_seq_num8 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %start_seq_num8, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %8 = lshr i16 %7, 4
  %capab12 = getelementptr inbounds %struct.anon.164, ptr %u, i32 0, i32 1, i32 0, i32 2
  %9 = ptrtoint ptr %capab12 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %capab12, align 1
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %and = lshr i16 %11, 1
  %12 = and i16 %and, 1
  %and17 = lshr i16 %11, 2
  %13 = and i16 %and17, 15
  %14 = lshr i16 %11, 6
  %sub = add i32 %len, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %if.then

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

if.then:                                          ; preds = %entry
  %variable = getelementptr inbounds %struct.ieee80211_mgmt, ptr %mgmt, i32 0, i32 6, i32 0, i32 2, i32 5
  %bssid = getelementptr inbounds %struct.ieee80211_mgmt, ptr %mgmt, i32 0, i32 4
  %call.i = tail call ptr @ieee802_11_parse_elems_crc(ptr noundef %variable, i32 noundef %sub, i1 noundef zeroext true, i64 noundef 0, i32 noundef 0, ptr noundef %bssid, ptr noundef null) #8
  %tobool27.not = icmp eq ptr %call.i, null
  br i1 %tobool27.not, label %if.then.free_crit_edge, label %lor.lhs.false

if.then.free_crit_edge:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %free

lor.lhs.false:                                    ; preds = %if.then
  %parse_error = getelementptr inbounds %struct.ieee802_11_elems, ptr %call.i, i32 0, i32 76
  %15 = ptrtoint ptr %parse_error to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %parse_error, align 2, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool28.not = icmp eq i8 %16, 0
  br i1 %tobool28.not, label %cond.true, label %lor.lhs.false.free_crit_edge

lor.lhs.false.free_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %free

cond.true:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %addba_ext_ie = getelementptr inbounds %struct.ieee802_11_elems, ptr %call.i, i32 0, i32 52
  %17 = ptrtoint ptr %addba_ext_ie to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %addba_ext_ie, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %elems.047 = phi ptr [ %call.i, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %cond = phi ptr [ %18, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %ampdu_mlme.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 39
  tail call void @mutex_lock_nested(ptr noundef %ampdu_mlme.i, i32 noundef 0) #8
  tail call void @___ieee80211_start_rx_ba_session(ptr noundef %sta, i8 noundef zeroext %1, i16 noundef zeroext %4, i16 noundef zeroext %8, i16 noundef zeroext %12, i16 noundef zeroext %13, i16 noundef zeroext %14, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef %cond) #8
  tail call void @mutex_unlock(ptr noundef %ampdu_mlme.i) #8
  br label %free

free:                                             ; preds = %cond.end, %lor.lhs.false.free_crit_edge, %if.then.free_crit_edge
  %elems.1 = phi ptr [ %call.i, %lor.lhs.false.free_crit_edge ], [ %elems.047, %cond.end ], [ null, %if.then.free_crit_edge ]
  tail call void @kfree(ptr noundef %elems.1) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_manage_rx_ba_offl(ptr noundef %vif, ptr noundef %addr, i32 noundef %tid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %vif, i32 -4080
  %local1 = getelementptr i8, ptr %vif, i32 -2988
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !61) #8
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !72
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 696, ptr noundef nonnull @.str.21) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call2 = tail call ptr @sta_info_get_bss(ptr noundef %add.ptr.i, ptr noundef %addr) #8
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %rcu_read_lock.exit.unlock_crit_edge, label %if.end

rcu_read_lock.exit.unlock_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.end:                                           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  %tid_rx_manage_offl = getelementptr inbounds %struct.sta_info, ptr %call2, i32 0, i32 39, i32 5
  tail call void @_set_bit(i32 noundef %tid, ptr noundef %tid_rx_manage_offl) #8
  %work = getelementptr inbounds %struct.sta_info, ptr %call2, i32 0, i32 39, i32 8
  tail call void @ieee80211_queue_work(ptr noundef %1, ptr noundef %work) #8
  br label %unlock

unlock:                                           ; preds = %if.end, %rcu_read_lock.exit.unlock_crit_edge
  %call.i7 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i7, label %unlock.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i10

unlock.rcu_read_unlock.exit_crit_edge:            ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i10:                                ; preds = %unlock
  %call1.i8 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i8)
  %tobool.not.i9 = icmp eq i32 %call1.i8, 0
  br i1 %tobool.not.i9, label %land.lhs.true.i10.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i12

land.lhs.true.i10.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i10
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i12:                               ; preds = %land.lhs.true.i10
  %.b4.i11 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i11, label %land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge, label %if.then.i13

land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i12
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i13:                                      ; preds = %land.lhs.true2.i12
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 724, ptr noundef nonnull @.str.22) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i13, %land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i10.rcu_read_unlock.exit_crit_edge, %unlock.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !73
  %6 = tail call i32 @llvm.read_register.i32(metadata !61) #8
  %and.i.i.i.i.i14 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i14 to ptr
  %preempt_count.i.i.i.i15 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i15, align 4
  %sub.i.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i15, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_rx_ba_timer_expired(ptr noundef %vif, ptr noundef %addr, i32 noundef %tid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %vif, i32 -4080
  %local1 = getelementptr i8, ptr %vif, i32 -2988
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !61) #8
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !72
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 696, ptr noundef nonnull @.str.21) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call2 = tail call ptr @sta_info_get_bss(ptr noundef %add.ptr.i, ptr noundef %addr) #8
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %rcu_read_lock.exit.unlock_crit_edge, label %if.end

rcu_read_lock.exit.unlock_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.end:                                           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  %tid_rx_timer_expired = getelementptr inbounds %struct.sta_info, ptr %call2, i32 0, i32 39, i32 3
  tail call void @_set_bit(i32 noundef %tid, ptr noundef %tid_rx_timer_expired) #8
  %work = getelementptr inbounds %struct.sta_info, ptr %call2, i32 0, i32 39, i32 8
  tail call void @ieee80211_queue_work(ptr noundef %1, ptr noundef %work) #8
  br label %unlock

unlock:                                           ; preds = %if.end, %rcu_read_lock.exit.unlock_crit_edge
  %call.i7 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i7, label %unlock.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i10

unlock.rcu_read_unlock.exit_crit_edge:            ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i10:                                ; preds = %unlock
  %call1.i8 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i8)
  %tobool.not.i9 = icmp eq i32 %call1.i8, 0
  br i1 %tobool.not.i9, label %land.lhs.true.i10.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i12

land.lhs.true.i10.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i10
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i12:                               ; preds = %land.lhs.true.i10
  %.b4.i11 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i11, label %land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge, label %if.then.i13

land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i12
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i13:                                      ; preds = %land.lhs.true2.i12
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 724, ptr noundef nonnull @.str.22) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i13, %land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i10.rcu_read_unlock.exit_crit_edge, %unlock.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !73
  %6 = tail call i32 @llvm.read_register.i32(metadata !61) #8
  %and.i.i.i.i.i14 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i14 to ptr
  %preempt_count.i.i.i.i15 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i15, align 4
  %sub.i.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i15, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_release_reorder_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ieee80211_tx_skb_tid_band(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee802_11_parse_elems_crc(ptr noundef, i32 noundef, i1 noundef zeroext, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !28, !30, !32, !34, !35, !37, !38, !40, !41, !43, !45, !47, !48, !49, !51, !52, !54, !56, !57, !59}
!llvm.named.register.sp = !{!61}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/mac80211/agg-rx.c", i32 72, i32 2}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../net/mac80211/agg-rx.c", i32 74, i32 11}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../net/mac80211/agg-rx.c", i32 83, i32 2}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../net/mac80211/agg-rx.c", i32 90, i32 3}
!11 = !{ptr @__ksymtab_ieee80211_stop_rx_ba_session, !12, !"__ksymtab_ieee80211_stop_rx_ba_session", i1 false, i1 false}
!12 = !{!"../net/mac80211/agg-rx.c", i32 146, i32 1}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/mac80211/agg-rx.c", i32 290, i32 3}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/mac80211/agg-rx.c", i32 298, i32 3}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/mac80211/agg-rx.c", i32 306, i32 3}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/mac80211/agg-rx.c", i32 325, i32 3}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/mac80211/agg-rx.c", i32 339, i32 2}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/mac80211/agg-rx.c", i32 349, i32 4}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../net/mac80211/agg-rx.c", i32 358, i32 13}
!27 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/mac80211/agg-rx.c", i32 367, i32 3}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/mac80211/agg-rx.c", i32 379, i32 3}
!32 = !{ptr @___ieee80211_start_rx_ba_session.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../net/mac80211/agg-rx.c", i32 392, i32 2}
!34 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @___ieee80211_start_rx_ba_session.__key.16, !36, !"__key", i1 false, i1 false}
!36 = !{!"../net/mac80211/agg-rx.c", i32 395, i32 2}
!37 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @___ieee80211_start_rx_ba_session.__key.18, !39, !"__key", i1 false, i1 false}
!39 = !{!"../net/mac80211/agg-rx.c", i32 399, i32 2}
!40 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @__ksymtab_ieee80211_manage_rx_ba_offl, !42, !"__ksymtab_ieee80211_manage_rx_ba_offl", i1 false, i1 false}
!42 = !{!"../net/mac80211/agg-rx.c", i32 530, i32 1}
!43 = !{ptr @__ksymtab_ieee80211_rx_ba_timer_expired, !44, !"__ksymtab_ieee80211_rx_ba_timer_expired", i1 false, i1 false}
!44 = !{!"../net/mac80211/agg-rx.c", i32 550, i32 1}
!45 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!46 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!47 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!49 = distinct !{null, !50, !"__warned", i1 false, i1 false}
!50 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!51 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/mac80211/agg-rx.c", i32 165, i32 2}
!54 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!55 = !{!"../net/mac80211/ieee80211_i.h", i32 1505, i32 17}
!56 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../include/net/cfg80211.h", i32 510, i32 6}
!59 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!60 = !{!"../net/mac80211/ieee80211_i.h", i32 2199, i32 17}
!61 = !{!"sp"}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{!"branch_weights", i32 1, i32 2000}
!72 = !{i64 2149789988}
!73 = !{i64 2149790254}
!74 = !{i8 0, i8 2}
!75 = !{i64 2161346547}
