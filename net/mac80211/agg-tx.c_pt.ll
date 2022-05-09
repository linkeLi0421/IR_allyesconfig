; ModuleID = '/llk/IR_all_yes/net/mac80211/agg-tx.c_pt.bc'
source_filename = "../net/mac80211/agg-tx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ieee80211_send_bar\22, \22a\22\09"
module asm "\09.weak\09__crc_ieee80211_send_bar\09\09\09\09"
module asm "\09.long\09__crc_ieee80211_send_bar\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_send_bar:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_send_bar\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_send_bar:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ieee80211_start_tx_ba_session\22, \22a\22\09"
module asm "\09.weak\09__crc_ieee80211_start_tx_ba_session\09\09\09\09"
module asm "\09.long\09__crc_ieee80211_start_tx_ba_session\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_start_tx_ba_session:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_start_tx_ba_session\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_start_tx_ba_session:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ieee80211_start_tx_ba_cb_irqsafe\22, \22a\22\09"
module asm "\09.weak\09__crc_ieee80211_start_tx_ba_cb_irqsafe\09\09\09\09"
module asm "\09.long\09__crc_ieee80211_start_tx_ba_cb_irqsafe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_start_tx_ba_cb_irqsafe:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_start_tx_ba_cb_irqsafe\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_start_tx_ba_cb_irqsafe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ieee80211_stop_tx_ba_session\22, \22a\22\09"
module asm "\09.weak\09__crc_ieee80211_stop_tx_ba_session\09\09\09\09"
module asm "\09.long\09__crc_ieee80211_stop_tx_ba_session\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_stop_tx_ba_session:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_stop_tx_ba_session\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_stop_tx_ba_session:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ieee80211_stop_tx_ba_cb_irqsafe\22, \22a\22\09"
module asm "\09.weak\09__crc_ieee80211_stop_tx_ba_cb_irqsafe\09\09\09\09"
module asm "\09.long\09__crc_ieee80211_stop_tx_ba_cb_irqsafe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_stop_tx_ba_cb_irqsafe:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_stop_tx_ba_cb_irqsafe\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_stop_tx_ba_cb_irqsafe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.94 }
%struct.atomic_t = type { i32 }
%union.anon.94 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.131, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.131 = type { i32, i16 }
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
%struct.ieee80211_bar = type { i16, i16, [6 x i8], [6 x i8], i16, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ieee80211_sub_if_data = type { %struct.list_head, %struct.wireless_dev, %struct.list_head, i32, i32, %struct.delayed_work, ptr, ptr, i32, i32, [16 x i8], %struct.ieee80211_fragment_cache, i16, i8, [8 x ptr], ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8, i32, %struct.atomic_t, [4 x %struct.ieee80211_tx_queue_params], ptr, [4 x %struct.airtime_info], %struct.work_struct, i8, %struct.cfg80211_chan_def, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.cfg80211_chan_def, i8, i8, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, i8, i32, i32, i32, i8, %struct.delayed_work, ptr, [6 x i32], [6 x i8], [6 x [10 x i8]], [6 x i8], [6 x [8 x i16]], [6 x i32], i8, %union.anon.153, %struct.anon.187, %struct.ieee80211_vif }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.128, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.128 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.cfg80211_bss_selection = type { i32, %union.anon.129 }
%union.anon.129 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.ieee80211_fragment_cache = type { [4 x %struct.ieee80211_fragment_entry], i32 }
%struct.ieee80211_fragment_entry = type { %struct.sk_buff_head, i32, i16, i16, i16, i8, i8, [6 x i8], i32 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.airtime_info = type { i64, i64, i64, i64, %struct.list_head, %struct.atomic_t, i32, i32, i32, i16 }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%union.anon.153 = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i32, i8, [32 x i8], i32, i8, i8, i8, i8, i8, i32, i32, %struct.atomic_t, i32, i32, i32, ptr, %struct.spinlock, %struct.mesh_preq_queue, i32, %struct.mesh_stats, %struct.mesh_config, %struct.atomic_t, i32, i8, i32, ptr, ptr, i8, i32, i8, ptr, i64, %struct.spinlock, i32, i32, i32, %struct.ps_data, ptr, i32, i8, i16, i32, %struct.mesh_table, %struct.mesh_table, i32, i32 }
%struct.mesh_preq_queue = type { %struct.list_head, [6 x i8], i8 }
%struct.mesh_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.mesh_config = type { i16, i16, i16, i16, i8, i8, i8, i8, i32, i8, i32, i16, i32, i16, i16, i16, i8, i8, i8, i16, i8, i8, i32, i16, i32, i16, i16, i32, i16, i32, i8 }
%struct.ps_data = type { [252 x i8], %struct.sk_buff_head, %struct.atomic_t, i32, i8 }
%struct.mesh_table = type { %struct.hlist_head, %struct.spinlock, %struct.rhashtable, %struct.hlist_head, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.anon.187 = type { ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.0] }
%struct.anon.0 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.sta_info = type { %struct.list_head, %struct.list_head, %struct.callback_head, %struct.rhlist_head, [6 x i8], ptr, ptr, [8 x ptr], [4 x ptr], i8, ptr, ptr, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.work_struct, i16, i8, i8, i8, i32, i32, %struct.spinlock, [4 x %struct.sk_buff_head], [4 x %struct.sk_buff_head], i32, i32, i64, i32, %struct.ieee80211_sta_rx_stats, %struct.anon.141, [17 x i16], %struct.anon.142, %struct.anon.143, [16 x i16], [4 x %struct.airtime_info], %struct.sta_ampdu_mlme, ptr, i32, i32, ptr, %struct.codel_params, i8, %struct.cfg80211_chan_def, %struct.ieee80211_fragment_cache, %struct.ieee80211_sta }
%struct.callback_head = type { ptr, ptr }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.ieee80211_sta_rx_stats = type { i32, i32, i32, i32, i32, i32, i8, [4 x i8], i32, %struct.u64_stats_sync, i64, [17 x i64] }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.anon.141 = type { %struct.ewma_signal, [4 x %struct.ewma_signal] }
%struct.ewma_signal = type { i32 }
%struct.anon.142 = type { i32, i32, i32, i32, i32, [17 x i64], [17 x i64], i32, i8, i8, %struct.ewma_avg_signal }
%struct.ewma_avg_signal = type { i32 }
%struct.anon.143 = type { [4 x i64], [4 x i64], %struct.ieee80211_tx_rate, %struct.rate_info, [17 x i64] }
%struct.ieee80211_tx_rate = type <{ i8, i16 }>
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.sta_ampdu_mlme = type { %struct.mutex, [16 x ptr], [16 x i8], [1 x i32], [1 x i32], [1 x i32], [1 x i32], [1 x i32], %struct.work_struct, [16 x ptr], [16 x ptr], [16 x i32], [16 x i8], i8 }
%struct.codel_params = type { i32, i32, i32, i32, i8, i8, i8 }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.ieee80211_ampdu_params = type { i32, ptr, i16, i16, i16, i8, i16 }
%struct.tid_ampdu_tx = type { %struct.callback_head, %struct.timer_list, %struct.timer_list, %struct.sk_buff_head, ptr, i32, i32, i16, i8, i8, i8, i16, i16, i16, i8, i8, i8 }
%struct.ieee80211_local = type { %struct.ieee80211_hw, %struct.fq, ptr, %struct.codel_params, [4 x %struct.airtime_sched_info], i16, i32, %struct.atomic_t, ptr, ptr, [16 x i32], [16 x [11 x i32]], %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i8, i8, %struct.spinlock, %struct.work_struct, %struct.netdev_hw_addr_list, i8, i8, i8, i8, i8, i8, i8, i8, %struct.work_struct, i8, i8, i32, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.mutex, %struct.spinlock, i32, %struct.list_head, %struct.rhltable, %struct.timer_list, i32, [16 x %struct.sk_buff_head], %struct.tasklet_struct, %struct.tasklet_struct, [16 x %struct.atomic_t], %struct.atomic_t, ptr, %struct.arc4_ctx, %struct.arc4_ctx, i32, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.mutex, i32, %struct.cfg80211_ssid, ptr, ptr, ptr, %struct.cfg80211_chan_def, i32, i32, i32, i32, %struct.cfg80211_scan_info, %struct.work_struct, ptr, ptr, [6 x i8], i32, i32, %struct.delayed_work, ptr, %struct.cfg80211_chan_def, ptr, %struct.list_head, %struct.mutex, %struct.led_trigger, %struct.led_trigger, %struct.led_trigger, %struct.led_trigger, %struct.led_trigger, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, %struct.work_struct, %struct.work_struct, %struct.timer_list, %struct.notifier_block, %struct.notifier_block, i32, i32, i32, %struct.work_struct, %struct.local_debugfsdentries, i8, %struct.delayed_work, %struct.list_head, %struct.work_struct, %struct.work_struct, i32, i64, %struct.idr, %struct.spinlock, ptr, ptr, %struct.cfg80211_chan_def, [8 x i8] }
%struct.fq = type { ptr, ptr, %struct.list_head, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.airtime_sched_info = type { %struct.spinlock, %struct.rb_root_cached, ptr, %struct.list_head, i64, i64, i64, i64, i64, i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rhltable = type { %struct.rhashtable }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.140, i32 }
%union.anon.140 = type { ptr }
%struct.arc4_ctx = type { [256 x i32], i32, i32 }
%struct.cfg80211_ssid = type { [32 x i8], i8 }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.led_trigger = type { ptr, ptr, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.local_debugfsdentries = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.154 }
%union.anon.154 = type { %struct.anon.160, [16 x i8] }
%struct.anon.160 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.ieee80211_if_ibss = type { %struct.timer_list, %struct.work_struct, i32, i32, i8, i8, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, ptr, %struct.cfg80211_chan_def, i32, ptr, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.spinlock, %struct.list_head, i32 }
%struct.anon.167 = type { i8, %union.anon.168 }
%union.anon.168 = type <{ %struct.anon.173, [17 x i8] }>
%struct.anon.173 = type { i8, i8, i16, i16, i16, [0 x i8] }

@__kstrtab_ieee80211_send_bar = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_send_bar = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_send_bar = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_send_bar to i32), ptr @__kstrtab_ieee80211_send_bar, ptr @__kstrtabns_ieee80211_send_bar }, section "___ksymtab+ieee80211_send_bar", align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"net/mac80211/agg-tx.c\00", [42 x i8] zeroinitializer }, align 32
@___ieee80211_stop_tx_ba_session.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@___ieee80211_stop_tx_ba_session.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: Tx BA session stop requested for %pM tid %u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: BA request denied - HW unavailable for %pM tid %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Requested to start BA session on reserved tid=%d\00", [47 x i8] zeroinitializer }, align 32
@ieee80211_start_tx_ba_session.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: Open BA session requested for %pM tid %u\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%s: BA sessions blocked - Denying BA session request %pM tid %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%s: MFP STA not authorized - deny BA session request %pM tid %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"%s: BA request denied - IBSS STA %pM does not advertise HT support\0A\00", [60 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.9 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s: BA request denied - %d failed requests on %pM tid %u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s: BA request denied - session is not idle on %pM tid %u\0A\00", [37 x i8] zeroinitializer }, align 32
@ieee80211_start_tx_ba_session.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"(&tid_tx->addba_resp_timer)\00", [36 x i8] zeroinitializer }, align 32
@ieee80211_start_tx_ba_session.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"(&tid_tx->session_timer)\00", [39 x i8] zeroinitializer }, align 32
@__kstrtab_ieee80211_start_tx_ba_session = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_start_tx_ba_session = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_start_tx_ba_session = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_start_tx_ba_session to i32), ptr @__kstrtab_ieee80211_start_tx_ba_session, ptr @__kstrtabns_ieee80211_start_tx_ba_session }, section "___ksymtab+ieee80211_start_tx_ba_session", align 4
@__kstrtab_ieee80211_start_tx_ba_cb_irqsafe = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_start_tx_ba_cb_irqsafe = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_start_tx_ba_cb_irqsafe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_start_tx_ba_cb_irqsafe to i32), ptr @__kstrtab_ieee80211_start_tx_ba_cb_irqsafe, ptr @__kstrtabns_ieee80211_start_tx_ba_cb_irqsafe }, section "___ksymtab+ieee80211_start_tx_ba_cb_irqsafe", align 4
@.str.14 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Requested to stop BA session on reserved tid=%d\00", [48 x i8] zeroinitializer }, align 32
@__kstrtab_ieee80211_stop_tx_ba_session = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_stop_tx_ba_session = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_stop_tx_ba_session = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_stop_tx_ba_session to i32), ptr @__kstrtab_ieee80211_stop_tx_ba_session, ptr @__kstrtabns_ieee80211_stop_tx_ba_session }, section "___ksymtab+ieee80211_stop_tx_ba_session", align 4
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: Stopping Tx BA session for %pM tid %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: unexpected callback to A-MPDU stop for %pM tid %d\0A\00", [41 x i8] zeroinitializer }, align 32
@__kstrtab_ieee80211_stop_tx_ba_cb_irqsafe = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_stop_tx_ba_cb_irqsafe = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_stop_tx_ba_cb_irqsafe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_stop_tx_ba_cb_irqsafe to i32), ptr @__kstrtab_ieee80211_stop_tx_ba_cb_irqsafe, ptr @__kstrtabns_ieee80211_stop_tx_ba_cb_irqsafe }, section "___ksymtab+ieee80211_stop_tx_ba_cb_irqsafe", align 4
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: wrong addBA response token, %pM tid %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: switched off addBA timer for %pM tid %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s: got addBA resp for %pM tid %d but we already gave up\0A\00", [38 x i8] zeroinitializer }, align 32
@ieee80211_tx_skb_tid.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"net/mac80211/ieee80211_i.h\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_dereference_protected_tid_tx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/mac80211/sta_info.h\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"TID %d gone but expected when splicing aggregates from the pending queue\0A\00", [54 x i8] zeroinitializer }, align 32
@ieee802_1d_to_ac = external dso_local local_unnamed_addr constant [8 x i32], align 4
@drv_wake_tx_queue.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"net/mac80211/driver-ops.h\00", [38 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: Failed check-sdata-in-driver check, flags: 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@__tracepoint_drv_wake_tx_queue = external dso_local global %struct.tracepoint, align 4
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/mac80211/trace.h\00", [43 x i8] zeroinitializer }, align 32
@trace_drv_wake_tx_queue.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: activated addBA response timer on %pM tid %d\0A\00", [46 x i8] zeroinitializer }, align 32
@__tracepoint_api_start_tx_ba_session = external dso_local global %struct.tracepoint, align 4
@trace_api_start_tx_ba_session.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s: timer expired on %pM tid %d not expecting addBA response\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: addBA response timer expired on %pM tid %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: tx session timer expired on %pM tid %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: Aggregation is on for %pM tid %d\0A\00", [58 x i8] zeroinitializer }, align 32
@__tracepoint_api_start_tx_ba_cb = external dso_local global %struct.tracepoint, align 4
@trace_api_start_tx_ba_cb.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Bad TID value: tid = %d (>= %d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Could not find station: %pM\0A\00", [63 x i8] zeroinitializer }, align 32
@ieee80211_lookup_tid_tx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: addBA was not requested!\0A\00", [34 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.40 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__tracepoint_api_stop_tx_ba_session = external dso_local global %struct.tracepoint, align 4
@trace_api_stop_tx_ba_session.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_api_stop_tx_ba_cb = external dso_local global %struct.tracepoint, align 4
@trace_api_stop_tx_ba_cb.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@switch.table.___ieee80211_stop_tx_ba_session = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 3, i32 3, i32 3, i32 4], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.41 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 7]
@__sancov_gen_cov_switch_values.42 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 7]
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 145, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 371, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 537, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 593, i32 6 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 612, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 623, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 631, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 651, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 673, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 683, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 705, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 708, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 878, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 903, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 909, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 982, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 989, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 999, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [30 x i8] c"../net/mac80211/ieee80211_i.h\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 2199, i32 17 }
@___asan_gen_.113 = private unnamed_addr constant [27 x i8] c"../net/mac80211/sta_info.h\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 755, i32 9 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 250, i32 6 }
@___asan_gen_.122 = private unnamed_addr constant [29 x i8] c"../net/mac80211/driver-ops.h\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 1228, i32 7 }
@___asan_gen_.125 = private unnamed_addr constant [24 x i8] c"../net/mac80211/trace.h\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 2725, i32 1 }
@___asan_gen_.128 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 108, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 462, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 1984, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 440, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 446, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 576, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 748, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 695, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 799, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 806, i32 3 }
@___asan_gen_.164 = private constant [25 x i8] c"../net/mac80211/agg-tx.c\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 813, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 723, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant [45 x i8] c"switch.table.___ieee80211_stop_tx_ba_session\00", align 1
@llvm.compiler.used = appending global [48 x ptr] [ptr @__ksymtab_ieee80211_send_bar, ptr @__ksymtab_ieee80211_start_tx_ba_cb_irqsafe, ptr @__ksymtab_ieee80211_start_tx_ba_session, ptr @__ksymtab_ieee80211_stop_tx_ba_cb_irqsafe, ptr @__ksymtab_ieee80211_stop_tx_ba_session, ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @ieee80211_start_tx_ba_session.__key, ptr @.str.11, ptr @ieee80211_start_tx_ba_session.__key.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @skb_queue_head_init.__key, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @switch.table.___ieee80211_stop_tx_ba_session], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_start_tx_ba_session.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_start_tx_ba_session.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.___ieee80211_stop_tx_ba_session to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_send_bar(ptr noundef %vif, ptr nocapture noundef readonly %ra, i16 noundef zeroext %tid, i16 noundef zeroext %ssn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr i8, ptr %vif, i32 -2988
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %extra_tx_headroom = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %extra_tx_headroom to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %extra_tx_headroom, align 4
  %add = add i32 %3, 20
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add, i32 noundef 2592) #8
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %vif, i32 -4080
  %4 = ptrtoint ptr %extra_tx_headroom to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %extra_tx_headroom, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %add.ptr.i42 = getelementptr i8, ptr %7, i32 %5
  store ptr %add.ptr.i42, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %9, i32 %5
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 20) #8
  %10 = getelementptr inbounds i8, ptr %call.i, i32 2
  %11 = call ptr @memset(ptr %10, i32 0, i32 18)
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 -31744, ptr %call.i, align 1
  %ra6 = getelementptr inbounds %struct.ieee80211_bar, ptr %call.i, i32 0, i32 2
  %13 = call ptr @memcpy(ptr %ra6, ptr %ra, i32 6)
  %ta = getelementptr inbounds %struct.ieee80211_bar, ptr %call.i, i32 0, i32 3
  %addr = getelementptr i8, ptr %vif, i32 800
  %14 = call ptr @memcpy(ptr %ta, ptr %addr, i32 6)
  %conv14 = zext i16 %tid to i32
  %shl = shl i16 %tid, 12
  %15 = or i16 %shl, 4
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %control = getelementptr inbounds %struct.ieee80211_bar, ptr %call.i, i32 0, i32 4
  %17 = ptrtoint ptr %control to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 %16, ptr %control, align 1
  %18 = tail call i16 @llvm.bswap.i16(i16 %ssn)
  %start_seq_num = getelementptr inbounds %struct.ieee80211_bar, ptr %call.i, i32 0, i32 5
  %19 = ptrtoint ptr %start_seq_num to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 %18, ptr %start_seq_num, align 1
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cb.i, align 8
  %or21 = or i32 %21, 65537
  store i32 %or21, ptr %cb.i, align 8
  tail call fastcc void @ieee80211_tx_skb_tid(ptr noundef %add.ptr.i, ptr noundef nonnull %call.i.i, i32 noundef %conv14)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ieee80211_tx_skb_tid(ptr noundef %sdata, ptr noundef %skb, i32 noundef %tid) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !125
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.35, i32 noundef 696, ptr noundef nonnull @.str.36) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %chanctx_conf1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 9
  %4 = ptrtoint ptr %chanctx_conf1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %chanctx_conf1, align 4
  %call = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b44 = load i1, ptr @ieee80211_tx_skb_tid.__warned, align 1
  br i1 %.b44, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ieee80211_tx_skb_tid.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 2199, ptr noundef nonnull @.str.21) #8
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %do.end23, label %if.end39, !prof !126

do.end23:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 2200, i32 noundef 9, ptr noundef null) #8
  tail call fastcc void @rcu_read_unlock()
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  br label %cleanup

if.end39:                                         ; preds = %do.end8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  tail call void @__ieee80211_tx_skb_tid_band(ptr noundef %sdata, ptr noundef %skb, i32 noundef %tid, i32 noundef %9) #8
  %call.i45 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i45, label %if.end39.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i48

if.end39.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i48:                                ; preds = %if.end39
  %call1.i46 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i46)
  %tobool.not.i47 = icmp eq i32 %call1.i46, 0
  br i1 %tobool.not.i47, label %land.lhs.true.i48.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i50

land.lhs.true.i48.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i48
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i50:                               ; preds = %land.lhs.true.i48
  %.b4.i49 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i49, label %land.lhs.true2.i50.rcu_read_unlock.exit_crit_edge, label %if.then.i51

land.lhs.true2.i50.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i50
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i51:                                      ; preds = %land.lhs.true2.i50
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.35, i32 noundef 724, ptr noundef nonnull @.str.40) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i51, %land.lhs.true2.i50.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i48.rcu_read_unlock.exit_crit_edge, %if.end39.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !127
  %10 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i.i.i.i.i52 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i52 to ptr
  %preempt_count.i.i.i.i53 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i53, align 4
  %sub.i.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i53, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %do.end23
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_assign_tid_tx(ptr noundef %sta, i32 noundef %tid, ptr noundef %tid_tx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end55_crit_edge, label %land.rhs

entry.if.end55_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 39, i32 0, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !126

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 145, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %.pr = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool26.not = icmp eq i32 %.pr, 0
  br i1 %tobool26.not, label %if.end.if.end55_crit_edge, label %land.rhs27

if.end.if.end55_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

land.rhs27:                                       ; preds = %if.end
  %dep_map28 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 13, i32 0, i32 0, i32 4
  %call.i110 = tail call i32 @lock_is_held_type(ptr noundef %dep_map28, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110)
  %cmp30.not = icmp eq i32 %call.i110, 0
  br i1 %cmp30.not, label %do.end49, label %land.rhs27.if.end55_crit_edge, !prof !126

land.rhs27.if.end55_crit_edge:                    ; preds = %land.rhs27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

do.end49:                                         ; preds = %land.rhs27
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 146, i32 noundef 9, ptr noundef null) #8
  br label %if.end55

if.end55:                                         ; preds = %do.end49, %land.rhs27.if.end55_crit_edge, %if.end.if.end55_crit_edge, %entry.if.end55_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !128
  %arrayidx94 = getelementptr %struct.sta_info, ptr %sta, i32 0, i32 39, i32 9, i32 %tid
  %1 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %tid_tx, ptr %arrayidx94, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @___ieee80211_stop_tx_ba_session(ptr noundef %sta, i16 noundef zeroext %tid, i32 noundef %reason) local_unnamed_addr #0 align 64 {
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
  %sta2 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 1
  %sta3 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48
  %4 = ptrtoint ptr %sta2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %sta3, ptr %sta2, align 4
  %tid4 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 2
  %5 = ptrtoint ptr %tid4 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %tid, ptr %tid4, align 4
  %ssn = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 3
  %timeout = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 6
  %6 = ptrtoint ptr %timeout to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %timeout, align 4
  %7 = call ptr @memset(ptr %ssn, i32 0, i32 5)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %8 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 39, i32 0, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !126

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 314, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %reason)
  %9 = icmp ult i32 %reason, 4
  br i1 %9, label %switch.lookup, label %land.end36

land.end36:                                       ; preds = %if.end
  %.b274 = load i1, ptr @___ieee80211_stop_tx_ba_session.__already_done, align 1
  br i1 %.b274, label %land.end36.cleanup_crit_edge, label %if.then43, !prof !129

land.end36.cleanup_crit_edge:                     ; preds = %land.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then43:                                        ; preds = %land.end36
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @___ieee80211_stop_tx_ba_session.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 326, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.___ieee80211_stop_tx_ba_session, i32 0, i32 %reason
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  %11 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %switch.load, ptr %params, align 4
  %lock = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  %idxprom = zext i16 %tid to i32
  %arrayidx = getelementptr %struct.sta_info, ptr %sta, i32 0, i32 39, i32 10, i32 %idxprom
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %13) #8
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %arrayidx, align 4
  %dep_map.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 13, i32 0, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %switch.lookup.rcu_dereference_protected_tid_tx.exit_crit_edge

switch.lookup.rcu_dereference_protected_tid_tx.exit_crit_edge: ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_dereference_protected_tid_tx.exit

lor.lhs.false.i:                                  ; preds = %switch.lookup
  %dep_map1.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 39, i32 0, i32 5
  %call.i12.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map1.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i)
  %tobool3.not.i = icmp eq i32 %call.i12.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.rcu_dereference_protected_tid_tx.exit_crit_edge

lor.lhs.false.i.rcu_dereference_protected_tid_tx.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_dereference_protected_tid_tx.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.rcu_dereference_protected_tid_tx.exit_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.rcu_dereference_protected_tid_tx.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_dereference_protected_tid_tx.exit

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %.b11.i = load i1, ptr @rcu_dereference_protected_tid_tx.__warned, align 1
  br i1 %.b11.i, label %land.lhs.true6.i.rcu_dereference_protected_tid_tx.exit_crit_edge, label %if.then.i

land.lhs.true6.i.rcu_dereference_protected_tid_tx.exit_crit_edge: ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_dereference_protected_tid_tx.exit

if.then.i:                                        ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_dereference_protected_tid_tx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 757, ptr noundef nonnull @.str.23) #8
  br label %rcu_dereference_protected_tid_tx.exit

rcu_dereference_protected_tid_tx.exit:            ; preds = %if.then.i, %land.lhs.true6.i.rcu_dereference_protected_tid_tx.exit_crit_edge, %land.lhs.true.i.rcu_dereference_protected_tid_tx.exit_crit_edge, %lor.lhs.false.i.rcu_dereference_protected_tid_tx.exit_crit_edge, %switch.lookup.rcu_dereference_protected_tid_tx.exit_crit_edge
  %arrayidx.i = getelementptr %struct.sta_info, ptr %sta, i32 0, i32 39, i32 9, i32 %idxprom
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %tobool84.not = icmp eq ptr %16, null
  br i1 %tobool84.not, label %if.then85, label %if.end87

if.then85:                                        ; preds = %rcu_dereference_protected_tid_tx.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  br label %cleanup

if.end87:                                         ; preds = %rcu_dereference_protected_tid_tx.exit
  %state = getelementptr inbounds %struct.tid_ampdu_tx, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %state, align 4
  %19 = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool89.not = icmp eq i32 %19, 0
  br i1 %tobool89.not, label %if.end152, label %if.then90

if.then90:                                        ; preds = %if.end87
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %reason)
  %cmp92.not = icmp eq i32 %reason, 3
  br i1 %cmp92.not, label %if.end95, label %if.then90.cleanup_crit_edge

if.then90.cleanup_crit_edge:                      ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end95:                                         ; preds = %if.then90
  %20 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 5, ptr %params, align 4
  %sdata = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 6
  %21 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sdata, align 4
  %call97 = call i32 @drv_ampdu_action(ptr noundef %1, ptr noundef %22, ptr noundef nonnull %params) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool99.not = icmp eq i32 %call97, 0
  br i1 %tobool99.not, label %if.end95.cleanup_crit_edge, label %land.rhs106

if.end95.cleanup_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.rhs106:                                      ; preds = %if.end95
  %.b272273 = load i1, ptr @___ieee80211_stop_tx_ba_session.__already_done.1, align 1
  br i1 %.b272273, label %land.rhs106.cleanup_crit_edge, label %if.then117, !prof !129

land.rhs106.cleanup_crit_edge:                    ; preds = %land.rhs106
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then117:                                       ; preds = %land.rhs106
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @___ieee80211_stop_tx_ba_session.__already_done.1, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 353, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end152:                                        ; preds = %if.end87
  %23 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %state, align 4
  %25 = and i32 %24, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool155.not = icmp eq i32 %25, 0
  br i1 %tobool155.not, label %if.end168, label %if.then156

if.then156:                                       ; preds = %if.end152
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %26 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i277 = icmp eq i32 %26, 0
  br i1 %tobool.not.i277, label %if.then156.ieee80211_assign_tid_tx.exit_crit_edge, label %land.rhs.i

if.then156.ieee80211_assign_tid_tx.exit_crit_edge: ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_assign_tid_tx.exit

land.rhs.i:                                       ; preds = %if.then156
  %dep_map.i278 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 39, i32 0, i32 5
  %call.i.i279 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i278, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i279)
  %cmp.not.i = icmp eq i32 %call.i.i279, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !126

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 145, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %.pr.i = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool26.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool26.not.i, label %if.end.i.ieee80211_assign_tid_tx.exit_crit_edge, label %land.rhs27.i

if.end.i.ieee80211_assign_tid_tx.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_assign_tid_tx.exit

land.rhs27.i:                                     ; preds = %if.end.i
  %call.i110.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110.i)
  %cmp30.not.i = icmp eq i32 %call.i110.i, 0
  br i1 %cmp30.not.i, label %do.end49.i, label %land.rhs27.i.ieee80211_assign_tid_tx.exit_crit_edge, !prof !126

land.rhs27.i.ieee80211_assign_tid_tx.exit_crit_edge: ; preds = %land.rhs27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_assign_tid_tx.exit

do.end49.i:                                       ; preds = %land.rhs27.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 146, i32 noundef 9, ptr noundef null) #8
  br label %ieee80211_assign_tid_tx.exit

ieee80211_assign_tid_tx.exit:                     ; preds = %do.end49.i, %land.rhs27.i.ieee80211_assign_tid_tx.exit_crit_edge, %if.end.i.ieee80211_assign_tid_tx.exit_crit_edge, %if.then156.ieee80211_assign_tid_tx.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !128
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr null, ptr %arrayidx.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  tail call void @kvfree_call_rcu(ptr noundef nonnull %16, ptr noundef null) #8
  br label %cleanup

if.end168:                                        ; preds = %if.end152
  tail call void @_set_bit(i32 noundef 3, ptr noundef %state) #8
  %arrayidx.i280 = getelementptr %struct.sta_info, ptr %sta, i32 0, i32 48, i32 28, i32 %idxprom
  %28 = ptrtoint ptr %arrayidx.i280 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i280, align 4
  %tobool.not.i281 = icmp eq ptr %29, null
  br i1 %tobool.not.i281, label %if.end168.ieee80211_agg_stop_txq.exit_crit_edge, label %if.end.i282

if.end168.ieee80211_agg_stop_txq.exit_crit_edge:  ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_agg_stop_txq.exit

if.end.i282:                                      ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %local.i = getelementptr i8, ptr %31, i32 -2988
  %32 = ptrtoint ptr %local.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %local.i, align 4
  %lock.i = getelementptr inbounds %struct.ieee80211_local, ptr %33, i32 0, i32 1, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #8
  %flags.i = getelementptr i8, ptr %29, i32 -4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i) #8
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #8
  br label %ieee80211_agg_stop_txq.exit

ieee80211_agg_stop_txq.exit:                      ; preds = %if.end.i282, %if.end168.ieee80211_agg_stop_txq.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  %sdata172 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 6
  %34 = ptrtoint ptr %sdata172 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sdata172, align 4
  %name = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %35, i32 0, i32 10
  %addr = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 1
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.2, ptr noundef %name, ptr noundef %addr, i32 noundef %idxprom) #8
  %addba_resp_timer = getelementptr inbounds %struct.tid_ampdu_tx, ptr %16, i32 0, i32 2
  %call176 = tail call i32 @del_timer_sync(ptr noundef %addba_resp_timer) #8
  %session_timer = getelementptr inbounds %struct.tid_ampdu_tx, ptr %16, i32 0, i32 1
  %call177 = tail call i32 @del_timer_sync(ptr noundef %session_timer) #8
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %state) #8
  %in_reconfig = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 36
  %36 = ptrtoint ptr %in_reconfig to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %in_reconfig, align 2, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool179.not = icmp eq i8 %37, 0
  br i1 %tobool179.not, label %if.then180, label %ieee80211_agg_stop_txq.exit.if.end181_crit_edge

ieee80211_agg_stop_txq.exit.if.end181_crit_edge:  ; preds = %ieee80211_agg_stop_txq.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end181

if.then180:                                       ; preds = %ieee80211_agg_stop_txq.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @synchronize_net() #8
  br label %if.end181

if.end181:                                        ; preds = %if.then180, %ieee80211_agg_stop_txq.exit.if.end181_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %reason)
  %cmp182 = icmp ne i32 %reason, 2
  %conv184 = zext i1 %cmp182 to i8
  %stop_initiator = getelementptr inbounds %struct.tid_ampdu_tx, ptr %16, i32 0, i32 9
  %38 = ptrtoint ptr %stop_initiator to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv184, ptr %stop_initiator, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %reason)
  %cmp185 = icmp eq i32 %reason, 1
  %tx_stop = getelementptr inbounds %struct.tid_ampdu_tx, ptr %16, i32 0, i32 10
  %frombool187 = zext i1 %cmp185 to i8
  %39 = ptrtoint ptr %tx_stop to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %frombool187, ptr %tx_stop, align 4
  %40 = ptrtoint ptr %sdata172 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sdata172, align 4
  %call189 = call i32 @drv_ampdu_action(ptr noundef %1, ptr noundef %41, ptr noundef nonnull %params) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189)
  %tobool191.not = icmp eq i32 %call189, 0
  br i1 %tobool191.not, label %if.end181.cleanup_crit_edge, label %do.end207, !prof !129

if.end181.cleanup_crit_edge:                      ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end207:                                        ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 407, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end207, %if.end181.cleanup_crit_edge, %ieee80211_assign_tid_tx.exit, %if.then117, %land.rhs106.cleanup_crit_edge, %if.end95.cleanup_crit_edge, %if.then90.cleanup_crit_edge, %if.then85, %if.then43, %land.end36.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ieee80211_assign_tid_tx.exit ], [ -2, %if.then85 ], [ -22, %if.then43 ], [ -22, %land.end36.cleanup_crit_edge ], [ -114, %if.then90.cleanup_crit_edge ], [ 0, %if.end95.cleanup_crit_edge ], [ 0, %if.then117 ], [ 0, %land.rhs106.cleanup_crit_edge ], [ 0, %do.end207 ], [ 0, %if.end181.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %params) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rcu_dereference_protected_tid_tx(ptr noundef %sta, i32 noundef %tid) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %dep_map = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 13, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %dep_map1 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 39, i32 0, i32 5
  %call.i12 = tail call i32 @lock_is_held_type(ptr noundef %dep_map1, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12)
  %tobool3.not = icmp eq i32 %call.i12, 0
  br i1 %tobool3.not, label %land.lhs.true, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true6

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b11 = load i1, ptr @rcu_dereference_protected_tid_tx.__warned, align 1
  br i1 %.b11, label %land.lhs.true6.do.end_crit_edge, label %if.then

land.lhs.true6.do.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_dereference_protected_tid_tx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 757, ptr noundef nonnull @.str.23) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true6.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %arrayidx = getelementptr %struct.sta_info, ptr %sta, i32 0, i32 39, i32 9, i32 %tid
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  ret ptr %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drv_ampdu_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sdata_dbg(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_tx_ba_session_handle_start(ptr noundef %sta, i32 noundef %tid) local_unnamed_addr #0 align 64 {
entry:
  %params = alloca %struct.ieee80211_ampdu_params, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 5
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 8
  %sdata2 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 6
  %2 = ptrtoint ptr %sdata2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sdata2, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %params) #8
  %4 = getelementptr inbounds i8, ptr %params, i32 12
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 -1, ptr %4, align 4
  %6 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %params, align 4
  %sta3 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 1
  %sta4 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48
  %7 = ptrtoint ptr %sta3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %sta4, ptr %sta3, align 4
  %tid5 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 2
  %conv = trunc i32 %tid to i16
  %8 = ptrtoint ptr %tid5 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %tid5, align 4
  %ssn = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 3
  %timeout = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 6
  %9 = ptrtoint ptr %timeout to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %timeout, align 4
  %dep_map.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 13, i32 0, i32 0, i32 4
  %10 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 3)
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.rcu_dereference_protected_tid_tx.exit_crit_edge

entry.rcu_dereference_protected_tid_tx.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_dereference_protected_tid_tx.exit

lor.lhs.false.i:                                  ; preds = %entry
  %dep_map1.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 39, i32 0, i32 5
  %call.i12.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map1.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i)
  %tobool3.not.i = icmp eq i32 %call.i12.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.rcu_dereference_protected_tid_tx.exit_crit_edge

lor.lhs.false.i.rcu_dereference_protected_tid_tx.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_dereference_protected_tid_tx.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.rcu_dereference_protected_tid_tx.exit_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.rcu_dereference_protected_tid_tx.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_dereference_protected_tid_tx.exit

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %.b11.i = load i1, ptr @rcu_dereference_protected_tid_tx.__warned, align 1
  br i1 %.b11.i, label %land.lhs.true6.i.rcu_dereference_protected_tid_tx.exit_crit_edge, label %if.then.i

land.lhs.true6.i.rcu_dereference_protected_tid_tx.exit_crit_edge: ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_dereference_protected_tid_tx.exit

if.then.i:                                        ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_dereference_protected_tid_tx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 757, ptr noundef nonnull @.str.23) #8
  br label %rcu_dereference_protected_tid_tx.exit

rcu_dereference_protected_tid_tx.exit:            ; preds = %if.then.i, %land.lhs.true6.i.rcu_dereference_protected_tid_tx.exit_crit_edge, %land.lhs.true.i.rcu_dereference_protected_tid_tx.exit_crit_edge, %lor.lhs.false.i.rcu_dereference_protected_tid_tx.exit_crit_edge, %entry.rcu_dereference_protected_tid_tx.exit_crit_edge
  %arrayidx.i = getelementptr %struct.sta_info, ptr %sta, i32 0, i32 39, i32 9, i32 %tid
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %state = getelementptr inbounds %struct.tid_ampdu_tx, ptr %13, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %state) #8
  %arrayidx.i66 = getelementptr %struct.sta_info, ptr %sta, i32 0, i32 48, i32 28, i32 %tid
  %14 = ptrtoint ptr %arrayidx.i66 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i66, align 4
  %tobool.not.i67 = icmp eq ptr %15, null
  br i1 %tobool.not.i67, label %rcu_dereference_protected_tid_tx.exit.ieee80211_agg_stop_txq.exit_crit_edge, label %if.end.i

rcu_dereference_protected_tid_tx.exit.ieee80211_agg_stop_txq.exit_crit_edge: ; preds = %rcu_dereference_protected_tid_tx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_agg_stop_txq.exit

if.end.i:                                         ; preds = %rcu_dereference_protected_tid_tx.exit
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %local.i = getelementptr i8, ptr %17, i32 -2988
  %18 = ptrtoint ptr %local.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %local.i, align 4
  %lock.i = getelementptr inbounds %struct.ieee80211_local, ptr %19, i32 0, i32 1, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #8
  %flags.i = getelementptr i8, ptr %15, i32 -4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i) #8
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #8
  br label %ieee80211_agg_stop_txq.exit

ieee80211_agg_stop_txq.exit:                      ; preds = %if.end.i, %rcu_dereference_protected_tid_tx.exit.ieee80211_agg_stop_txq.exit_crit_edge
  tail call void @synchronize_net() #8
  %arrayidx = getelementptr %struct.sta_info, ptr %sta, i32 0, i32 37, i32 %tid
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx, align 2
  %22 = lshr i16 %21, 4
  %23 = ptrtoint ptr %ssn to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %ssn, align 2
  %call9 = call i32 @drv_ampdu_action(ptr noundef %1, ptr noundef %3, ptr noundef nonnull %params) #8
  %24 = ptrtoint ptr %ssn to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %ssn, align 2
  %ssn11 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %13, i32 0, i32 12
  %26 = ptrtoint ptr %ssn11 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %ssn11, align 4
  %27 = zext i32 %call9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call9, label %if.then18 [
    i32 2, label %ieee80211_agg_stop_txq.exit.cleanup_crit_edge
    i32 1, label %if.then15
    i32 0, label %ieee80211_agg_stop_txq.exit.if.end31_crit_edge
  ]

ieee80211_agg_stop_txq.exit.if.end31_crit_edge:   ; preds = %ieee80211_agg_stop_txq.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

ieee80211_agg_stop_txq.exit.cleanup_crit_edge:    ; preds = %ieee80211_agg_stop_txq.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then15:                                        ; preds = %ieee80211_agg_stop_txq.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 0, ptr noundef %state) #8
  br label %if.end31

if.then18:                                        ; preds = %ieee80211_agg_stop_txq.exit
  %name = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %3, i32 0, i32 10
  %addr = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 1
  call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.3, ptr noundef %name, ptr noundef %addr, i32 noundef %tid) #8
  %lock = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 13
  call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  call fastcc void @ieee80211_agg_splice_packets(ptr noundef %3, ptr noundef %13, i16 noundef zeroext %conv)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %28 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i68 = icmp eq i32 %28, 0
  br i1 %tobool.not.i68, label %if.then18.ieee80211_assign_tid_tx.exit_crit_edge, label %land.rhs.i

if.then18.ieee80211_assign_tid_tx.exit_crit_edge: ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_assign_tid_tx.exit

land.rhs.i:                                       ; preds = %if.then18
  %dep_map.i69 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 39, i32 0, i32 5
  %call.i.i70 = call i32 @lock_is_held_type(ptr noundef %dep_map.i69, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i70)
  %cmp.not.i = icmp eq i32 %call.i.i70, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i71_crit_edge, !prof !126

land.rhs.i.if.end.i71_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i71

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 145, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i71

if.end.i71:                                       ; preds = %do.end.i, %land.rhs.i.if.end.i71_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %.pr.i = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool26.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool26.not.i, label %if.end.i71.ieee80211_assign_tid_tx.exit_crit_edge, label %land.rhs27.i

if.end.i71.ieee80211_assign_tid_tx.exit_crit_edge: ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_assign_tid_tx.exit

land.rhs27.i:                                     ; preds = %if.end.i71
  %call.i110.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110.i)
  %cmp30.not.i = icmp eq i32 %call.i110.i, 0
  br i1 %cmp30.not.i, label %do.end49.i, label %land.rhs27.i.ieee80211_assign_tid_tx.exit_crit_edge, !prof !126

land.rhs27.i.ieee80211_assign_tid_tx.exit_crit_edge: ; preds = %land.rhs27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_assign_tid_tx.exit

do.end49.i:                                       ; preds = %land.rhs27.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 146, i32 noundef 9, ptr noundef null) #8
  br label %ieee80211_assign_tid_tx.exit

ieee80211_assign_tid_tx.exit:                     ; preds = %do.end49.i, %land.rhs27.i.ieee80211_assign_tid_tx.exit_crit_edge, %if.end.i71.ieee80211_assign_tid_tx.exit_crit_edge, %if.then18.ieee80211_assign_tid_tx.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !128
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr null, ptr %arrayidx.i, align 4
  %30 = and i32 %tid, 7
  %arrayidx.i.i.i = getelementptr [8 x i32], ptr @ieee802_1d_to_ac, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.ieee80211_sub_if_data, ptr %3, i32 0, i32 59, i32 7, i32 %32
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %34 to i32
  %local.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %3, i32 0, i32 7
  %35 = ptrtoint ptr %local.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %local.i.i, align 4
  %arrayidx1.i.i = getelementptr %struct.ieee80211_local, ptr %36, i32 0, i32 56, i32 %conv.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx1.i.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !131
  call void @llvm.prefetch.p0(ptr %arrayidx1.i.i, i32 1, i32 3, i32 1) #8
  %37 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx1.i.i, ptr %arrayidx1.i.i, i32 1, ptr elementtype(i32) %arrayidx1.i.i) #8, !srcloc !132
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %37, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !133
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %ieee80211_assign_tid_tx.exit.ieee80211_agg_splice_finish.exit_crit_edge

ieee80211_assign_tid_tx.exit.ieee80211_agg_splice_finish.exit_crit_edge: ; preds = %ieee80211_assign_tid_tx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_agg_splice_finish.exit

if.then.i.i:                                      ; preds = %ieee80211_assign_tid_tx.exit
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %local.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %local.i.i, align 4
  call void @ieee80211_wake_queue_by_reason(ptr noundef %39, i32 noundef %conv.i.i, i32 noundef 3, i1 noundef zeroext false) #8
  br label %ieee80211_agg_splice_finish.exit

ieee80211_agg_splice_finish.exit:                 ; preds = %if.then.i.i, %ieee80211_assign_tid_tx.exit.ieee80211_agg_splice_finish.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  call fastcc void @ieee80211_agg_start_txq(ptr noundef %sta, i32 noundef %tid, i1 noundef zeroext false)
  %tobool24.not = icmp eq ptr %13, null
  br i1 %tobool24.not, label %ieee80211_agg_splice_finish.exit.cleanup_crit_edge, label %do.end

ieee80211_agg_splice_finish.exit.cleanup_crit_edge: ; preds = %ieee80211_agg_splice_finish.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %ieee80211_agg_splice_finish.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @kvfree_call_rcu(ptr noundef nonnull %13, ptr noundef null) #8
  br label %cleanup

if.end31:                                         ; preds = %if.then15, %ieee80211_agg_stop_txq.exit.if.end31_crit_edge
  call fastcc void @ieee80211_send_addba_with_timeout(ptr noundef %sta, ptr noundef %13)
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %do.end, %ieee80211_agg_splice_finish.exit.cleanup_crit_edge, %ieee80211_agg_stop_txq.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %params) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ieee80211_agg_splice_packets(ptr nocapture noundef readonly %sdata, ptr noundef %tid_tx, i16 noundef zeroext %tid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %conv = zext i16 %tid to i32
  %and.i = and i32 %conv, 7
  %arrayidx.i = getelementptr [8 x i32], ptr @ieee802_1d_to_ac, i32 0, i32 %and.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %arrayidx = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 7, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv2 = zext i8 %5 to i32
  %arrayidx1.i = getelementptr %struct.ieee80211_local, ptr %1, i32 0, i32 56, i32 %conv2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx1.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @llvm.prefetch.p0(ptr %arrayidx1.i, i32 1, i32 3, i32 1) #8
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx1.i, ptr %arrayidx1.i, i32 1, ptr elementtype(i32) %arrayidx1.i) #8, !srcloc !135
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !136
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i)
  %cmp.i = icmp eq i32 %asmresult.i.i.i.i.i, 1
  br i1 %cmp.i, label %if.then.i, label %entry.ieee80211_stop_queue_agg.exit_crit_edge

entry.ieee80211_stop_queue_agg.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_stop_queue_agg.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %local1, align 4
  tail call void @ieee80211_stop_queue_by_reason(ptr noundef %8, i32 noundef %conv2, i32 noundef 3, i1 noundef zeroext false) #8
  br label %ieee80211_stop_queue_agg.exit

ieee80211_stop_queue_agg.exit:                    ; preds = %if.then.i, %entry.ieee80211_stop_queue_agg.exit_crit_edge
  %tobool.not = icmp eq ptr %tid_tx, null
  br i1 %tobool.not, label %do.end, label %if.end27, !prof !126

do.end:                                           ; preds = %ieee80211_stop_queue_agg.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 252, i32 noundef 9, ptr noundef nonnull @.str.24, i32 noundef %conv) #8
  br label %cleanup

if.end27:                                         ; preds = %ieee80211_stop_queue_agg.exit
  %pending = getelementptr inbounds %struct.tid_ampdu_tx, ptr %tid_tx, i32 0, i32 3
  %9 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pending, align 4
  %cmp.i58.not = icmp eq ptr %10, %pending
  br i1 %cmp.i58.not, label %if.end27.cleanup_crit_edge, label %do.body32

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body32:                                        ; preds = %if.end27
  %queue_stop_reason_lock = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 12
  %call36 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_stop_reason_lock) #8
  %11 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pending, align 4
  %cmp.i.not.i = icmp eq ptr %12, %pending
  br i1 %cmp.i.not.i, label %do.body32.skb_queue_splice_tail_init.exit_crit_edge, label %if.then.i60

do.body32.skb_queue_splice_tail_init.exit_crit_edge: ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_queue_splice_tail_init.exit

if.then.i60:                                      ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx43 = getelementptr %struct.ieee80211_local, ptr %1, i32 0, i32 53, i32 %conv2
  %prev.i = getelementptr inbounds %struct.anon.65, ptr %arrayidx43, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i, align 4
  %prev2.i.i = getelementptr inbounds %struct.tid_ampdu_tx, ptr %tid_tx, i32 0, i32 3, i32 0, i32 0, i32 1
  %15 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev2.i.i, align 4
  %prev5.i.i = getelementptr inbounds %struct.anon.44, ptr %12, i32 0, i32 1
  %17 = ptrtoint ptr %prev5.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %14, ptr %prev5.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %12, ptr %14, align 8
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %arrayidx43, ptr %16, align 8
  store volatile ptr %16, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.tid_ampdu_tx, ptr %tid_tx, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %qlen.i, align 4
  %qlen1.i = getelementptr %struct.ieee80211_local, ptr %1, i32 0, i32 53, i32 %conv2, i32 1
  %22 = ptrtoint ptr %qlen1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %qlen1.i, align 4
  %add.i = add i32 %23, %21
  store i32 %add.i, ptr %qlen1.i, align 4
  %24 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %pending, ptr %pending, align 4
  store ptr %pending, ptr %prev2.i.i, align 4
  store i32 0, ptr %qlen.i, align 4
  br label %skb_queue_splice_tail_init.exit

skb_queue_splice_tail_init.exit:                  ; preds = %if.then.i60, %do.body32.skb_queue_splice_tail_init.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_stop_reason_lock, i32 noundef %call36) #8
  br label %cleanup

cleanup:                                          ; preds = %skb_queue_splice_tail_init.exit, %if.end27.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ieee80211_agg_start_txq(ptr noundef %sta, i32 noundef %tid, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.sta_info, ptr %sta, i32 0, i32 48, i32 28, i32 %tid
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 39, i32 0, i32 5
  %call.i43 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43)
  %cmp.not = icmp eq i32 %call.i43, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !126

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 216, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool26.not = icmp eq ptr %1, null
  br i1 %tobool26.not, label %if.end.cleanup_crit_edge, label %if.end28

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28:                                         ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %1, i32 -244
  %flags = getelementptr i8, ptr %1, i32 -4
  br i1 %enable, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #8
  br label %if.end33

if.else:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #8
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then31
  %flags34 = getelementptr i8, ptr %1, i32 -4
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags34) #8
  tail call fastcc void @local_bh_disable()
  %3 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !125
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.end33.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end33.rcu_read_lock.exit_crit_edge:            ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end33
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.35, i32 noundef 696, ptr noundef nonnull @.str.36) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end33.rcu_read_lock.exit_crit_edge
  %sdata = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 6
  %7 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sdata, align 4
  %local = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %local, align 4
  tail call void @ieee80211_schedule_txq(ptr noundef %10, ptr noundef nonnull %1) #8
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 -4080
  %in_reconfig.i.i = getelementptr inbounds %struct.ieee80211_local, ptr %10, i32 0, i32 36
  %13 = ptrtoint ptr %in_reconfig.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %in_reconfig.i.i, align 2, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags34) #8
  br label %schedule_and_wake_txq.exit

if.end.i.i:                                       ; preds = %rcu_read_lock.exit
  %flags2.i.i = getelementptr i8, ptr %12, i32 -2984
  %15 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags2.i.i, align 8
  %and.i.i = and i32 %16, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool3.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool3.not.i.i, label %land.rhs.i.i, label %if.end53.i.i

land.rhs.i.i:                                     ; preds = %if.end.i.i
  %.b68.i.i = load i1, ptr @drv_wake_tx_queue.__already_done, align 1
  br i1 %.b68.i.i, label %land.rhs.i.i.schedule_and_wake_txq.exit_crit_edge, label %cleanup.critedge.i.i, !prof !129

land.rhs.i.i.schedule_and_wake_txq.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %schedule_and_wake_txq.exit

if.end53.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @trace_drv_wake_tx_queue(ptr noundef %10, ptr noundef %add.ptr.i.i.i, ptr noundef %add.ptr.i) #8
  %ops.i.i = getelementptr inbounds %struct.ieee80211_local, ptr %10, i32 0, i32 8
  %17 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i.i, align 4
  %wake_tx_queue.i.i = getelementptr inbounds %struct.ieee80211_ops, ptr %18, i32 0, i32 92
  %19 = ptrtoint ptr %wake_tx_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wake_tx_queue.i.i, align 4
  tail call void %20(ptr noundef %10, ptr noundef nonnull %1) #8
  br label %schedule_and_wake_txq.exit

cleanup.critedge.i.i:                             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @drv_wake_tx_queue.__already_done, align 1
  %dev.c.i.i = getelementptr i8, ptr %12, i32 -2992
  %21 = ptrtoint ptr %dev.c.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.c.i.i, align 8
  %tobool22.not.c.i.i = icmp eq ptr %22, null
  %name24.c.i.i = getelementptr i8, ptr %12, i32 -2976
  %cond.c.i.i = select i1 %tobool22.not.c.i.i, ptr %name24.c.i.i, ptr %22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 1228, i32 noundef 9, ptr noundef nonnull @.str.26, ptr noundef %cond.c.i.i, i32 noundef %16) #8
  br label %schedule_and_wake_txq.exit

schedule_and_wake_txq.exit:                       ; preds = %cleanup.critedge.i.i, %if.end53.i.i, %land.rhs.i.i.schedule_and_wake_txq.exit_crit_edge, %if.then.i.i
  %call.i44 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i44, label %schedule_and_wake_txq.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i47

schedule_and_wake_txq.exit.rcu_read_unlock.exit_crit_edge: ; preds = %schedule_and_wake_txq.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i47:                                ; preds = %schedule_and_wake_txq.exit
  %call1.i45 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i45)
  %tobool.not.i46 = icmp eq i32 %call1.i45, 0
  br i1 %tobool.not.i46, label %land.lhs.true.i47.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i49

land.lhs.true.i47.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i47
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i49:                               ; preds = %land.lhs.true.i47
  %.b4.i48 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i48, label %land.lhs.true2.i49.rcu_read_unlock.exit_crit_edge, label %if.then.i50

land.lhs.true2.i49.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i49
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i50:                                      ; preds = %land.lhs.true2.i49
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.35, i32 noundef 724, ptr noundef nonnull @.str.40) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i50, %land.lhs.true2.i49.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i47.rcu_read_unlock.exit_crit_edge, %schedule_and_wake_txq.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !127
  %23 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i.i.i.i.i51 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i51 to ptr
  %preempt_count.i.i.i.i52 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i52, align 4
  %sub.i.i.i = add i32 %26, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i52, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  tail call fastcc void @local_bh_enable()
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ieee80211_send_addba_with_timeout(ptr noundef %sta, ptr noundef %tid_tx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sdata1 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 6
  %0 = ptrtoint ptr %sdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdata1, align 4
  %local2 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 5
  %2 = ptrtoint ptr %local2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %local2, align 8
  %tid3 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %tid_tx, i32 0, i32 16
  %4 = ptrtoint ptr %tid3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tid3, align 2
  %addba_resp_timer = getelementptr inbounds %struct.tid_ampdu_tx, ptr %tid_tx, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %6, 100
  %call = tail call i32 @mod_timer(ptr noundef %addba_resp_timer, i32 noundef %add) #8
  %name = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 10
  %addr = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 1
  %conv = zext i8 %5 to i32
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.29, ptr noundef %name, ptr noundef %addr, i32 noundef %conv) #8
  %lock = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %arrayidx = getelementptr %struct.sta_info, ptr %sta, i32 0, i32 39, i32 11, i32 %conv
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx, align 4
  %arrayidx8 = getelementptr %struct.sta_info, ptr %sta, i32 0, i32 39, i32 12, i32 %conv
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx8, align 1
  %inc = add i8 %10, 1
  store i8 %inc, ptr %arrayidx8, align 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  %he_cap = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 6
  %11 = ptrtoint ptr %he_cap to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %he_cap, align 8, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %max_tx_aggregation_subframes = getelementptr inbounds %struct.ieee80211_hw, ptr %3, i32 0, i32 18
  %13 = ptrtoint ptr %max_tx_aggregation_subframes to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %max_tx_aggregation_subframes, align 2
  %phi.bo = shl i16 %14, 6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %buf_size.0 = phi i16 [ %phi.bo, %if.then ], [ 4096, %entry.if.end_crit_edge ]
  %conv14 = zext i8 %5 to i16
  %dialog_token = getelementptr inbounds %struct.tid_ampdu_tx, ptr %tid_tx, i32 0, i32 8
  %15 = ptrtoint ptr %dialog_token to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %dialog_token, align 2
  %ssn = getelementptr inbounds %struct.tid_ampdu_tx, ptr %tid_tx, i32 0, i32 12
  %17 = ptrtoint ptr %ssn to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %ssn, align 4
  %timeout = getelementptr inbounds %struct.tid_ampdu_tx, ptr %tid_tx, i32 0, i32 7
  %19 = ptrtoint ptr %timeout to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %timeout, align 4
  %local1.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 7
  %21 = ptrtoint ptr %local1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %local1.i, align 4
  %extra_tx_headroom.i = getelementptr inbounds %struct.ieee80211_hw, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %extra_tx_headroom.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %extra_tx_headroom.i, align 4
  %add.i = add i32 %24, 50
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add.i, i32 noundef 2592) #8
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %if.end.ieee80211_send_addba_request.exit_crit_edge, label %if.end.i

if.end.ieee80211_send_addba_request.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_send_addba_request.exit

if.end.i:                                         ; preds = %if.end
  %25 = ptrtoint ptr %extra_tx_headroom.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %extra_tx_headroom.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %27 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %28, i32 %26
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %29 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %30, i32 %26
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 24) #8
  %31 = call ptr @memset(ptr %call.i.i, i32 0, i32 24)
  %da5.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i.i, i32 0, i32 2
  %32 = call ptr @memcpy(ptr %da5.i, ptr %addr, i32 6)
  %sa.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i.i, i32 0, i32 3
  %vif.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 59
  %addr.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 59, i32 2
  %33 = call ptr @memcpy(ptr %sa.i, ptr %addr.i, i32 6)
  %34 = ptrtoint ptr %vif.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %vif.i, align 8
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %35, label %if.end.i.if.end41.i_crit_edge [
    i32 3, label %if.end.i.if.then16.i_crit_edge
    i32 4, label %if.end.i.if.then16.i_crit_edge56
    i32 7, label %if.end.i.if.then16.i_crit_edge57
    i32 2, label %if.then24.i
    i32 1, label %if.then33.i
  ]

if.end.i.if.then16.i_crit_edge57:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16.i

if.end.i.if.then16.i_crit_edge56:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16.i

if.end.i.if.then16.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16.i

if.end.i.if.end41.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.i

if.then16.i:                                      ; preds = %if.end.i.if.then16.i_crit_edge, %if.end.i.if.then16.i_crit_edge56, %if.end.i.if.then16.i_crit_edge57
  %bssid.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i.i, i32 0, i32 4
  %37 = call ptr @memcpy(ptr %bssid.i, ptr %addr.i, i32 6)
  br label %if.end41.i

if.then24.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %bssid25.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i.i, i32 0, i32 4
  %bssid27.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 25
  %38 = call ptr @memcpy(ptr %bssid25.i, ptr %bssid27.i, i32 6)
  br label %if.end41.i

if.then33.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %bssid34.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i.i, i32 0, i32 4
  %u36.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57
  %bssid37.i = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %u36.i, i32 0, i32 10
  %39 = call ptr @memcpy(ptr %bssid34.i, ptr %bssid37.i, i32 6)
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then33.i, %if.then24.i, %if.then16.i, %if.end.i.if.end41.i_crit_edge
  %40 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 -12288, ptr %call.i.i, align 2
  %call42.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 9) #8
  %u43.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i.i, i32 0, i32 6
  %41 = ptrtoint ptr %u43.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 3, ptr %u43.i, align 2
  %u45.i = getelementptr inbounds %struct.anon.167, ptr %u43.i, i32 0, i32 1
  %42 = ptrtoint ptr %u45.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %u45.i, align 1
  %dialog_token48.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i.i, i32 0, i32 6, i32 0, i32 1
  %43 = ptrtoint ptr %dialog_token48.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %16, ptr %dialog_token48.i, align 1
  %44 = shl nuw nsw i16 %conv14, 2
  %45 = and i16 %44, 60
  %46 = or i16 %buf_size.0, %45
  %or58105.i = or i16 %46, 3
  %47 = tail call i16 @llvm.bswap.i16(i16 %or58105.i) #8
  %capab62.i = getelementptr inbounds %struct.anon.167, ptr %u43.i, i32 0, i32 1, i32 0, i32 2
  %48 = ptrtoint ptr %capab62.i to i32
  call void @__asan_storeN_noabort(i32 %48, i32 2)
  store i16 %47, ptr %capab62.i, align 1
  %49 = tail call i16 @llvm.bswap.i16(i16 %20) #8
  %timeout65.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i.i, i32 0, i32 6, i32 0, i32 2, i32 1
  %50 = ptrtoint ptr %timeout65.i to i32
  call void @__asan_storeN_noabort(i32 %50, i32 2)
  store i16 %49, ptr %timeout65.i, align 1
  %shl.i = shl i16 %18, 4
  %51 = tail call i16 @llvm.bswap.i16(i16 %shl.i) #8
  %start_seq_num70.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i.i, i32 0, i32 6, i32 0, i32 2, i32 3
  %52 = ptrtoint ptr %start_seq_num70.i to i32
  call void @__asan_storeN_noabort(i32 %52, i32 2)
  store i16 %51, ptr %start_seq_num70.i, align 1
  tail call fastcc void @ieee80211_tx_skb_tid(ptr noundef %1, ptr noundef nonnull %call.i.i.i, i32 noundef %conv) #8
  br label %ieee80211_send_addba_request.exit

ieee80211_send_addba_request.exit:                ; preds = %if.end41.i, %if.end.ieee80211_send_addba_request.exit_crit_edge
  %state = getelementptr inbounds %struct.tid_ampdu_tx, ptr %tid_tx, i32 0, i32 5
  %call15 = tail call i32 @_test_and_set_bit(i32 noundef 8, ptr noundef %state) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %ieee80211_send_addba_request.exit.if.end31_crit_edge, label %do.end, !prof !129

ieee80211_send_addba_request.exit.if.end31_crit_edge: ; preds = %ieee80211_send_addba_request.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

do.end:                                           ; preds = %ieee80211_send_addba_request.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 487, i32 noundef 9, ptr noundef null) #8
  br label %if.end31

if.end31:                                         ; preds = %do.end, %ieee80211_send_addba_request.exit.if.end31_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_start_tx_ba_session(ptr noundef %pubsta, i16 noundef zeroext %tid, i16 noundef zeroext %timeout) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %pubsta, i32 -2720
  %sdata1 = getelementptr i8, ptr %pubsta, i32 -2676
  %0 = ptrtoint ptr %sdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdata1, align 4
  %local2 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %local2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %local2, align 4
  tail call fastcc void @trace_api_start_tx_ba_session(ptr noundef %pubsta, i16 noundef zeroext %tid)
  %reserved_tid = getelementptr i8, ptr %pubsta, i32 -356
  %4 = ptrtoint ptr %reserved_tid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reserved_tid, align 4
  %conv3 = zext i16 %tid to i32
  %6 = zext i8 %5 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %tid)
  %cmp = icmp eq i16 %6, %tid
  br i1 %cmp, label %do.end, label %if.end27, !prof !126

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 594, i32 noundef 9, ptr noundef nonnull @.str.4, i32 noundef %conv3) #8
  br label %cleanup

if.end27:                                         ; preds = %entry
  %ht_supported = getelementptr inbounds %struct.ieee80211_sta, ptr %pubsta, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %ht_supported to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ht_supported, align 2, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool28.not = icmp eq i8 %8, 0
  br i1 %tobool28.not, label %land.lhs.true, label %if.end27.if.end33_crit_edge

if.end27.if.end33_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

land.lhs.true:                                    ; preds = %if.end27
  %9 = ptrtoint ptr %sdata1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sdata1, align 4
  %chandef = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %10, i32 0, i32 59, i32 1, i32 32
  %11 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chandef, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %cmp30.not = icmp eq i32 %14, 3
  br i1 %cmp30.not, label %land.lhs.true.if.end33_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.end33:                                         ; preds = %land.lhs.true.if.end33_crit_edge, %if.end27.if.end33_crit_edge
  %ops = getelementptr inbounds %struct.ieee80211_local, ptr %3, i32 0, i32 8
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops, align 4
  %ampdu_action = getelementptr inbounds %struct.ieee80211_ops, ptr %16, i32 0, i32 47
  %17 = ptrtoint ptr %ampdu_action to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ampdu_action, align 4
  %tobool34.not = icmp eq ptr %18, null
  br i1 %tobool34.not, label %land.rhs, label %if.end89

land.rhs:                                         ; preds = %if.end33
  %.b349 = load i1, ptr @ieee80211_start_tx_ba_session.__already_done, align 1
  br i1 %.b349, label %land.rhs.cleanup_crit_edge, label %if.then52, !prof !129

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then52:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ieee80211_start_tx_ba_session.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 601, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end89:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %tid)
  %cmp91 = icmp ugt i16 %tid, 15
  br i1 %cmp91, label %if.end89.cleanup_crit_edge, label %lor.lhs.false

if.end89.cleanup_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end89
  %flags.i = getelementptr inbounds %struct.ieee80211_hw, ptr %3, i32 0, i32 4
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags.i, align 4
  %21 = and i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.i.not = icmp eq i32 %21, 0
  br i1 %tobool.i.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false93

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false93:                                  ; preds = %lor.lhs.false
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %flags.i, align 4
  %24 = and i32 %23, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.i352.not = icmp eq i32 %24, 0
  br i1 %tobool.i352.not, label %if.end98, label %lor.lhs.false93.cleanup_crit_edge

lor.lhs.false93.cleanup_crit_edge:                ; preds = %lor.lhs.false93
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end98:                                         ; preds = %lor.lhs.false93
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %tid)
  %cmp101 = icmp ugt i16 %tid, 7
  br i1 %cmp101, label %do.end118, label %if.end134, !prof !126

do.end118:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 609, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end134:                                        ; preds = %if.end98
  %name = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 10
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %pubsta, i32 0, i32 1
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.5, ptr noundef %name, ptr noundef %addr, i32 noundef %conv3) #8
  %vif137 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 59
  %25 = ptrtoint ptr %vif137 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vif137, align 8
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %26, label %if.end134.cleanup_crit_edge [
    i32 2, label %if.end134.if.end161_crit_edge
    i32 7, label %if.end134.if.end161_crit_edge359
    i32 4, label %if.end134.if.end161_crit_edge360
    i32 3, label %if.end134.if.end161_crit_edge361
    i32 1, label %if.end134.if.end161_crit_edge362
  ]

if.end134.if.end161_crit_edge362:                 ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end161

if.end134.if.end161_crit_edge361:                 ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end161

if.end134.if.end161_crit_edge360:                 ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end161

if.end134.if.end161_crit_edge359:                 ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end161

if.end134.if.end161_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end161

if.end134.cleanup_crit_edge:                      ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end161:                                        ; preds = %if.end134.if.end161_crit_edge, %if.end134.if.end161_crit_edge359, %if.end134.if.end161_crit_edge360, %if.end134.if.end161_crit_edge361, %if.end134.if.end161_crit_edge362
  %_flags.i = getelementptr i8, ptr %pubsta, i32 -2452
  %28 = ptrtoint ptr %_flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %_flags.i, align 4
  %30 = and i32 %29, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool163.not = icmp eq i32 %30, 0
  br i1 %tobool163.not, label %if.end171, label %if.then164

if.then164:                                       ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.6, ptr noundef %name, ptr noundef %addr, i32 noundef %conv3) #8
  br label %cleanup

if.end171:                                        ; preds = %if.end161
  %31 = ptrtoint ptr %_flags.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %_flags.i, align 4
  %33 = and i32 %32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool173.not = icmp eq i32 %33, 0
  br i1 %tobool173.not, label %if.end171.if.end184_crit_edge, label %land.lhs.true174

if.end171.if.end184_crit_edge:                    ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end184

land.lhs.true174:                                 ; preds = %if.end171
  %34 = ptrtoint ptr %_flags.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %_flags.i, align 4
  %36 = and i32 %35, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool176.not = icmp eq i32 %36, 0
  br i1 %tobool176.not, label %if.then177, label %land.lhs.true174.if.end184_crit_edge

land.lhs.true174.if.end184_crit_edge:             ; preds = %land.lhs.true174
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end184

if.then177:                                       ; preds = %land.lhs.true174
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.7, ptr noundef %name, ptr noundef %addr, i32 noundef %conv3) #8
  br label %cleanup

if.end184:                                        ; preds = %land.lhs.true174.if.end184_crit_edge, %if.end171.if.end184_crit_edge
  %37 = ptrtoint ptr %sdata1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sdata1, align 4
  %vif186 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %38, i32 0, i32 59
  %39 = ptrtoint ptr %vif186 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %vif186, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp188 = icmp eq i32 %40, 1
  br i1 %cmp188, label %land.lhs.true190, label %if.end184.if.end200_crit_edge

if.end184.if.end200_crit_edge:                    ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end200

land.lhs.true190:                                 ; preds = %if.end184
  %41 = ptrtoint ptr %ht_supported to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %ht_supported, align 2, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool194.not = icmp eq i8 %42, 0
  br i1 %tobool194.not, label %if.then195, label %land.lhs.true190.if.end200_crit_edge

land.lhs.true190.if.end200_crit_edge:             ; preds = %land.lhs.true190
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end200

if.then195:                                       ; preds = %land.lhs.true190
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.8, ptr noundef %name, ptr noundef %addr) #8
  br label %cleanup

if.end200:                                        ; preds = %land.lhs.true190.if.end200_crit_edge, %if.end184.if.end200_crit_edge
  %lock = getelementptr i8, ptr %pubsta, i32 -2568
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  %addba_req_num = getelementptr i8, ptr %pubsta, i32 -412
  %arrayidx = getelementptr [16 x i8], ptr %addba_req_num, i32 0, i32 %conv3
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %44)
  %cmp202 = icmp ugt i8 %44, 15
  br i1 %cmp202, label %if.end200.err_unlock_sta_crit_edge, label %if.end205

if.end200.err_unlock_sta_crit_edge:               ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_unlock_sta

if.end205:                                        ; preds = %if.end200
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %44)
  %cmp211 = icmp ugt i8 %44, 3
  br i1 %cmp211, label %land.lhs.true213, label %if.end205.if.end231_crit_edge

if.end205.if.end231_crit_edge:                    ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end231

land.lhs.true213:                                 ; preds = %if.end205
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %45 = load volatile i32, ptr @jiffies, align 128
  %last_addba_req_time = getelementptr i8, ptr %pubsta, i32 -476
  %arrayidx216 = getelementptr [16 x i32], ptr %last_addba_req_time, i32 0, i32 %conv3
  %46 = ptrtoint ptr %arrayidx216 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx216, align 4
  %add.neg = add i32 %45, -1500
  %sub = sub i32 %add.neg, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp217 = icmp slt i32 %sub, 0
  br i1 %cmp217, label %if.then219, label %land.lhs.true213.if.end231_crit_edge

land.lhs.true213.if.end231_crit_edge:             ; preds = %land.lhs.true213
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end231

if.then219:                                       ; preds = %land.lhs.true213
  call void @__sanitizer_cov_trace_pc() #10
  %conv226 = zext i8 %44 to i32
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.9, ptr noundef %name, i32 noundef %conv226, ptr noundef %addr, i32 noundef %conv3) #8
  br label %err_unlock_sta

if.end231:                                        ; preds = %land.lhs.true213.if.end231_crit_edge, %if.end205.if.end231_crit_edge
  %call233 = tail call fastcc ptr @rcu_dereference_protected_tid_tx(ptr noundef %add.ptr, i32 noundef %conv3)
  %tobool234.not = icmp eq ptr %call233, null
  br i1 %tobool234.not, label %lor.lhs.false235, label %if.end231.if.then240_crit_edge

if.end231.if.then240_crit_edge:                   ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then240

lor.lhs.false235:                                 ; preds = %if.end231
  %tid_start_tx = getelementptr i8, ptr %pubsta, i32 -540
  %arrayidx238 = getelementptr [16 x ptr], ptr %tid_start_tx, i32 0, i32 %conv3
  %48 = ptrtoint ptr %arrayidx238 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx238, align 4
  %tobool239.not = icmp eq ptr %49, null
  br i1 %tobool239.not, label %if.end247, label %lor.lhs.false235.if.then240_crit_edge

lor.lhs.false235.if.then240_crit_edge:            ; preds = %lor.lhs.false235
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then240

if.then240:                                       ; preds = %lor.lhs.false235.if.then240_crit_edge, %if.end231.if.then240_crit_edge
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.10, ptr noundef %name, ptr noundef %addr, i32 noundef %conv3) #8
  br label %err_unlock_sta

if.end247:                                        ; preds = %lor.lhs.false235
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %50 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %50, i32 noundef 2848, i32 noundef 188) #11
  %tobool249.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool249.not, label %if.end247.err_unlock_sta_crit_edge, label %if.end251

if.end247.err_unlock_sta_crit_edge:               ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_unlock_sta

if.end251:                                        ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #10
  %pending = getelementptr inbounds %struct.tid_ampdu_tx, ptr %call7.i.i, i32 0, i32 3
  %lock.i = getelementptr inbounds %struct.tid_ampdu_tx, ptr %call7.i.i, i32 0, i32 3, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.30, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #8
  %51 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %pending, ptr %pending, align 8
  %prev.i.i = getelementptr inbounds %struct.tid_ampdu_tx, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 0, i32 1
  %52 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %pending, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.tid_ampdu_tx, ptr %call7.i.i, i32 0, i32 3, i32 1
  %53 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %qlen.i.i, align 8
  %state = getelementptr inbounds %struct.tid_ampdu_tx, ptr %call7.i.i, i32 0, i32 5
  %54 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %state, align 4
  %or.i = or i32 %55, 16
  store i32 %or.i, ptr %state, align 4
  %timeout252 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %call7.i.i, i32 0, i32 7
  %56 = ptrtoint ptr %timeout252 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %timeout, ptr %timeout252, align 4
  %sta253 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %call7.i.i, i32 0, i32 4
  %57 = ptrtoint ptr %sta253 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %add.ptr, ptr %sta253, align 8
  %conv254 = trunc i16 %tid to i8
  %tid255 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %call7.i.i, i32 0, i32 16
  %58 = ptrtoint ptr %tid255 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv254, ptr %tid255, align 2
  %addba_resp_timer = getelementptr inbounds %struct.tid_ampdu_tx, ptr %call7.i.i, i32 0, i32 2
  tail call void @init_timer_key(ptr noundef %addba_resp_timer, ptr noundef nonnull @sta_addba_resp_timer_expired, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef nonnull @ieee80211_start_tx_ba_session.__key) #8
  %session_timer = getelementptr inbounds %struct.tid_ampdu_tx, ptr %call7.i.i, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %session_timer, ptr noundef nonnull @sta_tx_agg_session_timer_expired, i32 noundef 524288, ptr noundef nonnull @.str.13, ptr noundef nonnull @ieee80211_start_tx_ba_session.__key.12) #8
  %dialog_token_allocator = getelementptr i8, ptr %pubsta, i32 -396
  %59 = ptrtoint ptr %dialog_token_allocator to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %dialog_token_allocator, align 4
  %inc = add i8 %60, 1
  store i8 %inc, ptr %dialog_token_allocator, align 4
  %dialog_token = getelementptr inbounds %struct.tid_ampdu_tx, ptr %call7.i.i, i32 0, i32 8
  %61 = ptrtoint ptr %dialog_token to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %inc, ptr %dialog_token, align 2
  %62 = ptrtoint ptr %arrayidx238 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call7.i.i, ptr %arrayidx238, align 4
  %work = getelementptr i8, ptr %pubsta, i32 -648
  tail call void @ieee80211_queue_work(ptr noundef %3, ptr noundef %work) #8
  br label %err_unlock_sta

err_unlock_sta:                                   ; preds = %if.end251, %if.end247.err_unlock_sta_crit_edge, %if.then240, %if.then219, %if.end200.err_unlock_sta_crit_edge
  %ret.0 = phi i32 [ -16, %if.then219 ], [ -11, %if.then240 ], [ 0, %if.end251 ], [ -16, %if.end200.err_unlock_sta_crit_edge ], [ -12, %if.end247.err_unlock_sta_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %err_unlock_sta, %if.then195, %if.then177, %if.then164, %if.end134.cleanup_crit_edge, %do.end118, %lor.lhs.false93.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end89.cleanup_crit_edge, %if.then52, %land.rhs.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end118 ], [ -22, %if.then164 ], [ %ret.0, %err_unlock_sta ], [ -22, %if.then195 ], [ -22, %if.then177 ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.then52 ], [ -22, %lor.lhs.false93.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end89.cleanup_crit_edge ], [ -22, %if.end134.cleanup_crit_edge ], [ -22, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_api_start_tx_ba_session(ptr noundef %sta, i16 noundef zeroext %tid) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_start_tx_ba_session, i32 0, i32 1), ptr blockaddress(@trace_api_start_tx_ba_session, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !137

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !129

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !138
  %call42 = tail call i32 @__traceiter_api_start_tx_ba_session(ptr noundef null, ptr noundef %sta, i16 noundef zeroext %tid) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !139
  %13 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !129

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !140
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_start_tx_ba_session, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_start_tx_ba_session, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_api_start_tx_ba_session.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_api_start_tx_ba_session.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 1998, ptr noundef nonnull @.str.21) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !141
  %31 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sta_addba_resp_timer_expired(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sta1 = getelementptr i8, ptr %t, i32 104
  %0 = ptrtoint ptr %sta1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sta1, align 4
  %tid2 = getelementptr i8, ptr %t, i32 130
  %2 = ptrtoint ptr %tid2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tid2, align 2
  %state = getelementptr i8, ptr %t, i32 108
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %sdata5 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %sdata5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sdata5, align 4
  %name6 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %8, i32 0, i32 10
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %addr = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 48, i32 1
  %conv = zext i8 %3 to i32
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.31, ptr noundef %name6, ptr noundef %addr, i32 noundef %conv) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sta8 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 48
  %addr9 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 48, i32 1
  %conv11 = zext i8 %3 to i32
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.32, ptr noundef %name6, ptr noundef %addr9, i32 noundef %conv11) #8
  %conv13 = zext i8 %3 to i16
  %call14 = tail call i32 @ieee80211_stop_tx_ba_session(ptr noundef %sta8, i16 noundef zeroext %conv13)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sta_tx_agg_session_timer_expired(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sta1 = getelementptr i8, ptr %t, i32 152
  %0 = ptrtoint ptr %sta1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sta1, align 4
  %tid2 = getelementptr i8, ptr %t, i32 178
  %2 = ptrtoint ptr %tid2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tid2, align 2
  %state = getelementptr i8, ptr %t, i32 156
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state, align 4
  %6 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %last_tx = getelementptr i8, ptr %t, i32 160
  %7 = ptrtoint ptr %last_tx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %last_tx, align 4
  %timeout3 = getelementptr i8, ptr %t, i32 164
  %9 = ptrtoint ptr %timeout3 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %timeout3, align 4
  %conv = zext i16 %10 to i32
  %mul = shl nuw nsw i32 %conv, 10
  %call3.i = tail call i32 @__usecs_to_jiffies(i32 noundef %mul) #8
  %add = add i32 %call3.i, %8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %11, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %sdata = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sdata, align 4
  %name = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %13, i32 0, i32 10
  %sta9 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 48
  %addr = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 48, i32 1
  %conv11 = zext i8 %3 to i32
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.33, ptr noundef %name, ptr noundef %addr, i32 noundef %conv11) #8
  %conv13 = zext i8 %3 to i16
  %call14 = tail call i32 @ieee80211_stop_tx_ba_session(ptr noundef %sta9, i16 noundef zeroext %conv13)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then6, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_start_tx_ba_cb(ptr noundef %sta, i32 noundef %tid, ptr noundef %tid_tx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sdata1 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 6
  %0 = ptrtoint ptr %sdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdata1, align 4
  %local2 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %local2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %local2, align 4
  %state = getelementptr inbounds %struct.tid_ampdu_tx, ptr %tid_tx, i32 0, i32 5
  %call = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end24, label %do.end, !prof !129

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 779, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end24:                                         ; preds = %entry
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state, align 4
  %6 = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool27.not = icmp eq i32 %6, 0
  br i1 %tobool27.not, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ieee80211_send_addba_with_timeout(ptr noundef %sta, ptr noundef %tid_tx)
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state, align 4
  %9 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool32.not = icmp eq i32 %9, 0
  br i1 %tobool32.not, label %if.end29.cleanup_crit_edge, label %if.then33

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %conv = trunc i32 %tid to i16
  tail call fastcc void @ieee80211_agg_tx_operational(ptr noundef %3, ptr noundef %sta, i16 noundef zeroext %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %if.end29.cleanup_crit_edge, %if.then28, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ieee80211_agg_tx_operational(ptr noundef %local, ptr noundef %sta, i16 noundef zeroext %tid) unnamed_addr #0 align 64 {
entry:
  %params = alloca %struct.ieee80211_ampdu_params, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %params) #8
  %0 = getelementptr inbounds i8, ptr %params, i32 12
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 -1, ptr %0, align 4
  %2 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 6, ptr %params, align 4
  %sta1 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 1
  %sta2 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48
  %3 = ptrtoint ptr %sta1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %sta2, ptr %sta1, align 4
  %tid3 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 2
  %4 = ptrtoint ptr %tid3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %tid, ptr %tid3, align 4
  %ssn = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 3
  %buf_size = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 4
  %amsdu = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 5
  %timeout = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 6
  %5 = ptrtoint ptr %timeout to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %timeout, align 4
  %6 = ptrtoint ptr %ssn to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %ssn, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %7 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 39, i32 0, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !126

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 742, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %conv = zext i16 %tid to i32
  %dep_map.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 13, i32 0, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end.rcu_dereference_protected_tid_tx.exit_crit_edge

if.end.rcu_dereference_protected_tid_tx.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_dereference_protected_tid_tx.exit

lor.lhs.false.i:                                  ; preds = %if.end
  %dep_map1.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 39, i32 0, i32 5
  %call.i12.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map1.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i)
  %tobool3.not.i = icmp eq i32 %call.i12.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.rcu_dereference_protected_tid_tx.exit_crit_edge

lor.lhs.false.i.rcu_dereference_protected_tid_tx.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_dereference_protected_tid_tx.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.rcu_dereference_protected_tid_tx.exit_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.rcu_dereference_protected_tid_tx.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_dereference_protected_tid_tx.exit

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %.b11.i = load i1, ptr @rcu_dereference_protected_tid_tx.__warned, align 1
  br i1 %.b11.i, label %land.lhs.true6.i.rcu_dereference_protected_tid_tx.exit_crit_edge, label %if.then.i

land.lhs.true6.i.rcu_dereference_protected_tid_tx.exit_crit_edge: ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_dereference_protected_tid_tx.exit

if.then.i:                                        ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_dereference_protected_tid_tx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 757, ptr noundef nonnull @.str.23) #8
  br label %rcu_dereference_protected_tid_tx.exit

rcu_dereference_protected_tid_tx.exit:            ; preds = %if.then.i, %land.lhs.true6.i.rcu_dereference_protected_tid_tx.exit_crit_edge, %land.lhs.true.i.rcu_dereference_protected_tid_tx.exit_crit_edge, %lor.lhs.false.i.rcu_dereference_protected_tid_tx.exit_crit_edge, %if.end.rcu_dereference_protected_tid_tx.exit_crit_edge
  %arrayidx.i = getelementptr %struct.sta_info, ptr %sta, i32 0, i32 39, i32 9, i32 %conv
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %buf_size28 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %buf_size28 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %buf_size28, align 2
  %12 = ptrtoint ptr %buf_size to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %buf_size, align 4
  %amsdu30 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %9, i32 0, i32 15
  %13 = ptrtoint ptr %amsdu30 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %amsdu30, align 1, !range !130
  %15 = ptrtoint ptr %amsdu to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %amsdu, align 2
  %sdata = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 6
  %16 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sdata, align 4
  %name = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %17, i32 0, i32 10
  %addr = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 1
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.34, ptr noundef %name, ptr noundef %addr, i32 noundef %conv) #8
  %18 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sdata, align 4
  %call37 = call i32 @drv_ampdu_action(ptr noundef %local, ptr noundef %19, ptr noundef nonnull %params) #8
  %lock = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 13
  call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  %20 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sdata, align 4
  call fastcc void @ieee80211_agg_splice_packets(ptr noundef %21, ptr noundef %9, i16 noundef zeroext %tid)
  %state = getelementptr inbounds %struct.tid_ampdu_tx, ptr %9, i32 0, i32 5
  call void @_set_bit(i32 noundef 2, ptr noundef %state) #8
  %22 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sdata, align 4
  %24 = and i16 %tid, 7
  %and.i.i.i = zext i16 %24 to i32
  %arrayidx.i.i.i = getelementptr [8 x i32], ptr @ieee802_1d_to_ac, i32 0, i32 %and.i.i.i
  %25 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.ieee80211_sub_if_data, ptr %23, i32 0, i32 59, i32 7, i32 %26
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %28 to i32
  %local.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %23, i32 0, i32 7
  %29 = ptrtoint ptr %local.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %local.i.i, align 4
  %arrayidx1.i.i = getelementptr %struct.ieee80211_local, ptr %30, i32 0, i32 56, i32 %conv.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx1.i.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !131
  call void @llvm.prefetch.p0(ptr %arrayidx1.i.i, i32 1, i32 3, i32 1) #8
  %31 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx1.i.i, ptr %arrayidx1.i.i, i32 1, ptr elementtype(i32) %arrayidx1.i.i) #8, !srcloc !132
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %31, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !133
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %rcu_dereference_protected_tid_tx.exit.ieee80211_agg_splice_finish.exit_crit_edge

rcu_dereference_protected_tid_tx.exit.ieee80211_agg_splice_finish.exit_crit_edge: ; preds = %rcu_dereference_protected_tid_tx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_agg_splice_finish.exit

if.then.i.i:                                      ; preds = %rcu_dereference_protected_tid_tx.exit
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %local.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %local.i.i, align 4
  call void @ieee80211_wake_queue_by_reason(ptr noundef %33, i32 noundef %conv.i.i, i32 noundef 3, i1 noundef zeroext false) #8
  br label %ieee80211_agg_splice_finish.exit

ieee80211_agg_splice_finish.exit:                 ; preds = %if.then.i.i, %rcu_dereference_protected_tid_tx.exit.ieee80211_agg_splice_finish.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  call fastcc void @ieee80211_agg_start_txq(ptr noundef %sta, i32 noundef %conv, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %params) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_start_tx_ba_cb_irqsafe(ptr noundef %vif, ptr noundef %ra, i16 noundef zeroext %tid) #0 align 64 {
entry:
  %sta = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %vif, i32 -4080
  %local1 = getelementptr i8, ptr %vif, i32 -2988
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sta) #8
  %2 = ptrtoint ptr %sta to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %sta, align 4, !annotation !142
  tail call fastcc void @trace_api_start_tx_ba_cb(ptr noundef %add.ptr.i, ptr noundef %ra, i16 noundef zeroext %tid)
  %3 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !125
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.35, i32 noundef 696, ptr noundef nonnull @.str.36) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call2 = call fastcc ptr @ieee80211_lookup_tid_tx(ptr noundef %add.ptr.i, ptr noundef %ra, i16 noundef zeroext %tid, ptr noundef nonnull %sta)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %rcu_read_lock.exit.out_crit_edge, label %if.end

rcu_read_lock.exit.out_crit_edge:                 ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  %state = getelementptr inbounds %struct.tid_ampdu_tx, ptr %call2, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 6, ptr noundef %state) #8
  %7 = ptrtoint ptr %sta to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sta, align 4
  %work = getelementptr inbounds %struct.sta_info, ptr %8, i32 0, i32 39, i32 8
  tail call void @ieee80211_queue_work(ptr noundef %1, ptr noundef %work) #8
  br label %out

out:                                              ; preds = %if.end, %rcu_read_lock.exit.out_crit_edge
  %call.i8 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i8, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i11

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i11:                                ; preds = %out
  %call1.i9 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i9)
  %tobool.not.i10 = icmp eq i32 %call1.i9, 0
  br i1 %tobool.not.i10, label %land.lhs.true.i11.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i13

land.lhs.true.i11.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i11
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i13:                               ; preds = %land.lhs.true.i11
  %.b4.i12 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i12, label %land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge, label %if.then.i14

land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i13
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i14:                                      ; preds = %land.lhs.true2.i13
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.35, i32 noundef 724, ptr noundef nonnull @.str.40) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i14, %land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i11.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !127
  %9 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i.i.i.i.i15 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i15 to ptr
  %preempt_count.i.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i16, align 4
  %sub.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i16, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sta) #8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_api_start_tx_ba_cb(ptr noundef %sdata, ptr noundef %ra, i16 noundef zeroext %tid) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_start_tx_ba_cb, i32 0, i32 1), ptr blockaddress(@trace_api_start_tx_ba_cb, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !137

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !129

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !143
  %call42 = tail call i32 @__traceiter_api_start_tx_ba_cb(ptr noundef null, ptr noundef %sdata, ptr noundef %ra, i16 noundef zeroext %tid) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !144
  %13 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !129

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !140
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_start_tx_ba_cb, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_start_tx_ba_cb, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_api_start_tx_ba_cb.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_api_start_tx_ba_cb.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 2021, ptr noundef nonnull @.str.21) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !141
  %31 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ieee80211_lookup_tid_tx(ptr noundef %sdata, ptr noundef %ra, i16 noundef zeroext %tid, ptr nocapture noundef writeonly %sta) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %tid to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %tid)
  %cmp = icmp ugt i16 %tid, 15
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.37, ptr noundef %name, i32 noundef %conv, i32 noundef 16) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @sta_info_get_bss(ptr noundef %sdata, ptr noundef %ra) #8
  %0 = ptrtoint ptr %sta to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %sta, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %name4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.38, ptr noundef %name4, ptr noundef %ra) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %arrayidx = getelementptr %struct.sta_info, ptr %call, i32 0, i32 39, i32 9, i32 %conv
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %arrayidx, align 4
  %call9 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true, label %if.end6.do.end18_crit_edge

if.end6.do.end18_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

land.lhs.true:                                    ; preds = %if.end6
  %call11 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true.do.end18_crit_edge, label %land.lhs.true13

land.lhs.true.do.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

land.lhs.true13:                                  ; preds = %land.lhs.true
  %.b62 = load i1, ptr @ieee80211_lookup_tid_tx.__warned, align 1
  br i1 %.b62, label %land.lhs.true13.do.end18_crit_edge, label %if.then15

land.lhs.true13.do.end18_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

if.then15:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ieee80211_lookup_tid_tx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 810, ptr noundef nonnull @.str.21) #8
  br label %do.end18

do.end18:                                         ; preds = %if.then15, %land.lhs.true13.do.end18_crit_edge, %land.lhs.true.do.end18_crit_edge, %if.end6.do.end18_crit_edge
  %tobool20.not = icmp eq ptr %2, null
  br i1 %tobool20.not, label %do.end33, label %do.end18.cleanup_crit_edge, !prof !126

do.end18.cleanup_crit_edge:                       ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end33:                                         ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 812, i32 noundef 9, ptr noundef null) #8
  %name49 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.39, ptr noundef %name49) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end33, %do.end18.cleanup_crit_edge, %if.then3, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ null, %if.then3 ], [ %2, %do.end18.cleanup_crit_edge ], [ null, %do.end33 ]
  ret ptr %retval.0
}

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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.35, i32 noundef 724, ptr noundef nonnull @.str.40) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !127
  %0 = tail call i32 @llvm.read_register.i32(metadata !115) #8
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__ieee80211_stop_tx_ba_session(ptr noundef %sta, i16 noundef zeroext %tid, i32 noundef %reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ampdu_mlme = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 39
  tail call void @mutex_lock_nested(ptr noundef %ampdu_mlme, i32 noundef 0) #8
  %call = tail call i32 @___ieee80211_stop_tx_ba_session(ptr noundef %sta, i16 noundef zeroext %tid, i32 noundef %reason)
  tail call void @mutex_unlock(ptr noundef %ampdu_mlme) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_stop_tx_ba_session(ptr noundef %pubsta, i16 noundef zeroext %tid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %pubsta, i32 -2720
  %sdata1 = getelementptr i8, ptr %pubsta, i32 -2676
  %0 = ptrtoint ptr %sdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdata1, align 4
  %local2 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %local2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %local2, align 4
  tail call fastcc void @trace_api_stop_tx_ba_session(ptr noundef %pubsta, i16 noundef zeroext %tid)
  %ops = getelementptr inbounds %struct.ieee80211_local, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %ampdu_action = getelementptr inbounds %struct.ieee80211_ops, ptr %5, i32 0, i32 47
  %6 = ptrtoint ptr %ampdu_action to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ampdu_action, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i16 %tid to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %tid)
  %cmp = icmp ugt i16 %tid, 15
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %lock = getelementptr i8, ptr %pubsta, i32 -2568
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  %dep_map.i = getelementptr i8, ptr %pubsta, i32 -2552
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end5.rcu_dereference_protected_tid_tx.exit_crit_edge

if.end5.rcu_dereference_protected_tid_tx.exit_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_dereference_protected_tid_tx.exit

lor.lhs.false.i:                                  ; preds = %if.end5
  %dep_map1.i = getelementptr i8, ptr %pubsta, i32 -776
  %call.i12.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map1.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i)
  %tobool3.not.i = icmp eq i32 %call.i12.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.rcu_dereference_protected_tid_tx.exit_crit_edge

lor.lhs.false.i.rcu_dereference_protected_tid_tx.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_dereference_protected_tid_tx.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.rcu_dereference_protected_tid_tx.exit_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.rcu_dereference_protected_tid_tx.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_dereference_protected_tid_tx.exit

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %.b11.i = load i1, ptr @rcu_dereference_protected_tid_tx.__warned, align 1
  br i1 %.b11.i, label %land.lhs.true6.i.rcu_dereference_protected_tid_tx.exit_crit_edge, label %if.then.i

land.lhs.true6.i.rcu_dereference_protected_tid_tx.exit_crit_edge: ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_dereference_protected_tid_tx.exit

if.then.i:                                        ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_dereference_protected_tid_tx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 757, ptr noundef nonnull @.str.23) #8
  br label %rcu_dereference_protected_tid_tx.exit

rcu_dereference_protected_tid_tx.exit:            ; preds = %if.then.i, %land.lhs.true6.i.rcu_dereference_protected_tid_tx.exit_crit_edge, %land.lhs.true.i.rcu_dereference_protected_tid_tx.exit_crit_edge, %lor.lhs.false.i.rcu_dereference_protected_tid_tx.exit_crit_edge, %if.end5.rcu_dereference_protected_tid_tx.exit_crit_edge
  %arrayidx.i = getelementptr %struct.sta_info, ptr %add.ptr, i32 0, i32 39, i32 9, i32 %conv
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %rcu_dereference_protected_tid_tx.exit.unlock_crit_edge, label %if.end9

rcu_dereference_protected_tid_tx.exit.unlock_crit_edge: ; preds = %rcu_dereference_protected_tid_tx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.end9:                                          ; preds = %rcu_dereference_protected_tid_tx.exit
  %reserved_tid = getelementptr i8, ptr %pubsta, i32 -356
  %10 = ptrtoint ptr %reserved_tid to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %reserved_tid, align 4
  %12 = zext i8 %11 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %tid)
  %cmp12 = icmp eq i16 %12, %tid
  br i1 %cmp12, label %do.end, label %if.end9.if.end29_crit_edge, !prof !126

if.end9.if.end29_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 879, i32 noundef 9, ptr noundef nonnull @.str.14, i32 noundef %conv) #8
  br label %if.end29

if.end29:                                         ; preds = %do.end, %if.end9.if.end29_crit_edge
  %state = getelementptr inbounds %struct.tid_ampdu_tx, ptr %9, i32 0, i32 5
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %state, align 4
  %15 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool38.not = icmp eq i32 %15, 0
  br i1 %tobool38.not, label %if.end40, label %if.end29.unlock_crit_edge

if.end29.unlock_crit_edge:                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.end40:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 5, ptr noundef %state) #8
  %work = getelementptr i8, ptr %pubsta, i32 -648
  tail call void @ieee80211_queue_work(ptr noundef %3, ptr noundef %work) #8
  br label %unlock

unlock:                                           ; preds = %if.end40, %if.end29.unlock_crit_edge, %rcu_dereference_protected_tid_tx.exit.unlock_crit_edge
  %ret.0 = phi i32 [ 0, %if.end40 ], [ -2, %rcu_dereference_protected_tid_tx.exit.unlock_crit_edge ], [ 0, %if.end29.unlock_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %unlock, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %unlock ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_api_stop_tx_ba_session(ptr noundef %sta, i16 noundef zeroext %tid) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_stop_tx_ba_session, i32 0, i32 1), ptr blockaddress(@trace_api_stop_tx_ba_session, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !137

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !129

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !145
  %call42 = tail call i32 @__traceiter_api_stop_tx_ba_session(ptr noundef null, ptr noundef %sta, i16 noundef zeroext %tid) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !146
  %13 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !129

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !140
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_stop_tx_ba_session, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_stop_tx_ba_session, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_api_stop_tx_ba_session.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_api_stop_tx_ba_session.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 2042, ptr noundef nonnull @.str.21) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !141
  %31 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_stop_tx_ba_cb(ptr noundef %sta, i32 noundef %tid, ptr noundef %tid_tx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sdata1 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 6
  %0 = ptrtoint ptr %sdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdata1, align 4
  %name = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 10
  %addr = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 1
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.15, ptr noundef %name, ptr noundef %addr, i32 noundef %tid) #8
  %lock = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  %state = getelementptr inbounds %struct.tid_ampdu_tx, ptr %tid_tx, i32 0, i32 5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %4 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end17.thread, label %if.end

if.end:                                           ; preds = %entry
  %stop_initiator = getelementptr inbounds %struct.tid_ampdu_tx, ptr %tid_tx, i32 0, i32 9
  %5 = ptrtoint ptr %stop_initiator to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %stop_initiator, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp = icmp eq i8 %6, 1
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %tx_stop = getelementptr inbounds %struct.tid_ampdu_tx, ptr %tid_tx, i32 0, i32 10
  %7 = ptrtoint ptr %tx_stop to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tx_stop, align 4, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool10.not = icmp ne i8 %8, 0
  br label %if.end13

if.end13:                                         ; preds = %land.lhs.true, %if.end.if.end13_crit_edge
  %send_delba.0 = phi i1 [ false, %if.end.if.end13_crit_edge ], [ %tobool10.not, %land.lhs.true ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %9 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.end13.if.end55.i_crit_edge, label %land.rhs.i

if.end13.if.end55.i_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.i

land.rhs.i:                                       ; preds = %if.end13
  %dep_map.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 39, i32 0, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !126

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 274, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %.pr.i = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool26.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool26.not.i, label %if.end.i.if.end55.i_crit_edge, label %land.rhs27.i

if.end.i.if.end55.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.i

land.rhs27.i:                                     ; preds = %if.end.i
  %dep_map28.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 13, i32 0, i32 0, i32 4
  %call.i89.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map28.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89.i)
  %cmp30.not.i = icmp eq i32 %call.i89.i, 0
  br i1 %cmp30.not.i, label %do.end49.i, label %land.rhs27.i.if.end55.i_crit_edge, !prof !126

land.rhs27.i.if.end55.i_crit_edge:                ; preds = %land.rhs27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.i

do.end49.i:                                       ; preds = %land.rhs27.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 275, i32 noundef 9, ptr noundef null) #8
  br label %if.end55.i

if.end55.i:                                       ; preds = %do.end49.i, %land.rhs27.i.if.end55.i_crit_edge, %if.end.i.if.end55.i_crit_edge, %if.end13.if.end55.i_crit_edge
  %dep_map.i.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 13, i32 0, i32 0, i32 4
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %if.end55.i.rcu_dereference_protected_tid_tx.exit.i_crit_edge

if.end55.i.rcu_dereference_protected_tid_tx.exit.i_crit_edge: ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_dereference_protected_tid_tx.exit.i

lor.lhs.false.i.i:                                ; preds = %if.end55.i
  %dep_map1.i.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 39, i32 0, i32 5
  %call.i12.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map1.i.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool3.not.i.i = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.rcu_dereference_protected_tid_tx.exit.i_crit_edge

lor.lhs.false.i.i.rcu_dereference_protected_tid_tx.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_dereference_protected_tid_tx.exit.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call4.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true.i.i.rcu_dereference_protected_tid_tx.exit.i_crit_edge, label %land.lhs.true6.i.i

land.lhs.true.i.i.rcu_dereference_protected_tid_tx.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_dereference_protected_tid_tx.exit.i

land.lhs.true6.i.i:                               ; preds = %land.lhs.true.i.i
  %.b11.i.i = load i1, ptr @rcu_dereference_protected_tid_tx.__warned, align 1
  br i1 %.b11.i.i, label %land.lhs.true6.i.i.rcu_dereference_protected_tid_tx.exit.i_crit_edge, label %if.then.i.i

land.lhs.true6.i.i.rcu_dereference_protected_tid_tx.exit.i_crit_edge: ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_dereference_protected_tid_tx.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_dereference_protected_tid_tx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 757, ptr noundef nonnull @.str.23) #8
  br label %rcu_dereference_protected_tid_tx.exit.i

rcu_dereference_protected_tid_tx.exit.i:          ; preds = %if.then.i.i, %land.lhs.true6.i.i.rcu_dereference_protected_tid_tx.exit.i_crit_edge, %land.lhs.true.i.i.rcu_dereference_protected_tid_tx.exit.i_crit_edge, %lor.lhs.false.i.i.rcu_dereference_protected_tid_tx.exit.i_crit_edge, %if.end55.i.rcu_dereference_protected_tid_tx.exit.i_crit_edge
  %arrayidx.i.i = getelementptr %struct.sta_info, ptr %sta, i32 0, i32 39, i32 9, i32 %tid
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i, align 4
  %12 = ptrtoint ptr %sdata1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sdata1, align 4
  %conv.i = trunc i32 %tid to i16
  tail call fastcc void @ieee80211_agg_splice_packets(ptr noundef %13, ptr noundef %11, i16 noundef zeroext %conv.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %14 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i90.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i90.i, label %rcu_dereference_protected_tid_tx.exit.i.ieee80211_assign_tid_tx.exit.i_crit_edge, label %land.rhs.i.i

rcu_dereference_protected_tid_tx.exit.i.ieee80211_assign_tid_tx.exit.i_crit_edge: ; preds = %rcu_dereference_protected_tid_tx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_assign_tid_tx.exit.i

land.rhs.i.i:                                     ; preds = %rcu_dereference_protected_tid_tx.exit.i
  %dep_map.i91.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 39, i32 0, i32 5
  %call.i.i92.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i91.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i92.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i92.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.if.end.i.i_crit_edge, !prof !126

land.rhs.i.i.if.end.i.i_crit_edge:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 145, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %land.rhs.i.i.if.end.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %.pr.i.i = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i.i)
  %tobool26.not.i.i = icmp eq i32 %.pr.i.i, 0
  br i1 %tobool26.not.i.i, label %if.end.i.i.ieee80211_assign_tid_tx.exit.i_crit_edge, label %land.rhs27.i.i

if.end.i.i.ieee80211_assign_tid_tx.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_assign_tid_tx.exit.i

land.rhs27.i.i:                                   ; preds = %if.end.i.i
  %call.i110.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110.i.i)
  %cmp30.not.i.i = icmp eq i32 %call.i110.i.i, 0
  br i1 %cmp30.not.i.i, label %do.end49.i.i, label %land.rhs27.i.i.ieee80211_assign_tid_tx.exit.i_crit_edge, !prof !126

land.rhs27.i.i.ieee80211_assign_tid_tx.exit.i_crit_edge: ; preds = %land.rhs27.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_assign_tid_tx.exit.i

do.end49.i.i:                                     ; preds = %land.rhs27.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 146, i32 noundef 9, ptr noundef null) #8
  br label %ieee80211_assign_tid_tx.exit.i

ieee80211_assign_tid_tx.exit.i:                   ; preds = %do.end49.i.i, %land.rhs27.i.i.ieee80211_assign_tid_tx.exit.i_crit_edge, %if.end.i.i.ieee80211_assign_tid_tx.exit.i_crit_edge, %rcu_dereference_protected_tid_tx.exit.i.ieee80211_assign_tid_tx.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !128
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr null, ptr %arrayidx.i.i, align 4
  %16 = ptrtoint ptr %sdata1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sdata1, align 4
  %18 = and i32 %tid, 7
  %arrayidx.i.i.i.i = getelementptr [8 x i32], ptr @ieee802_1d_to_ac, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.ieee80211_sub_if_data, ptr %17, i32 0, i32 59, i32 7, i32 %20
  %21 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %22 to i32
  %local.i.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %17, i32 0, i32 7
  %23 = ptrtoint ptr %local.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %local.i.i.i, align 4
  %arrayidx1.i.i.i = getelementptr %struct.ieee80211_local, ptr %24, i32 0, i32 56, i32 %conv.i.i.i
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx1.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @llvm.prefetch.p0(ptr %arrayidx1.i.i.i, i32 1, i32 3, i32 1) #8
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx1.i.i.i, ptr %arrayidx1.i.i.i, i32 1, ptr elementtype(i32) %arrayidx1.i.i.i) #8, !srcloc !132
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %25, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !133
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %ieee80211_assign_tid_tx.exit.i.ieee80211_agg_splice_finish.exit.i_crit_edge

ieee80211_assign_tid_tx.exit.i.ieee80211_agg_splice_finish.exit.i_crit_edge: ; preds = %ieee80211_assign_tid_tx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_agg_splice_finish.exit.i

if.then.i.i.i:                                    ; preds = %ieee80211_assign_tid_tx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %local.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %local.i.i.i, align 4
  tail call void @ieee80211_wake_queue_by_reason(ptr noundef %27, i32 noundef %conv.i.i.i, i32 noundef 3, i1 noundef zeroext false) #8
  br label %ieee80211_agg_splice_finish.exit.i

ieee80211_agg_splice_finish.exit.i:               ; preds = %if.then.i.i.i, %ieee80211_assign_tid_tx.exit.i.ieee80211_agg_splice_finish.exit.i_crit_edge
  %tobool69.not.i = icmp eq ptr %11, null
  br i1 %tobool69.not.i, label %ieee80211_agg_splice_finish.exit.i.if.end17_crit_edge, label %do.end73.i

ieee80211_agg_splice_finish.exit.i.if.end17_crit_edge: ; preds = %ieee80211_agg_splice_finish.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

do.end73.i:                                       ; preds = %ieee80211_agg_splice_finish.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kvfree_call_rcu(ptr noundef nonnull %11, ptr noundef null) #8
  br label %if.end17

if.end17.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.16, ptr noundef %name, ptr noundef %addr, i32 noundef %tid) #8
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  br label %if.end24

if.end17:                                         ; preds = %do.end73.i, %ieee80211_agg_splice_finish.exit.i.if.end17_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  tail call fastcc void @ieee80211_agg_start_txq(ptr noundef %sta, i32 noundef %tid, i1 noundef zeroext false)
  br i1 %send_delba.0, label %if.then19, label %if.end17.if.end24_crit_edge

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ieee80211_send_delba(ptr noundef %1, ptr noundef %addr, i16 noundef zeroext %conv.i, i16 noundef zeroext 1, i16 noundef zeroext 37) #8
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %if.end17.if.end24_crit_edge, %if.end17.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_send_delba(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_stop_tx_ba_cb_irqsafe(ptr noundef %vif, ptr noundef %ra, i16 noundef zeroext %tid) #0 align 64 {
entry:
  %sta = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %vif, i32 -4080
  %local1 = getelementptr i8, ptr %vif, i32 -2988
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sta) #8
  %2 = ptrtoint ptr %sta to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %sta, align 4, !annotation !142
  tail call fastcc void @trace_api_stop_tx_ba_cb(ptr noundef %add.ptr.i, ptr noundef %ra, i16 noundef zeroext %tid)
  %3 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !125
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.35, i32 noundef 696, ptr noundef nonnull @.str.36) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call2 = call fastcc ptr @ieee80211_lookup_tid_tx(ptr noundef %add.ptr.i, ptr noundef %ra, i16 noundef zeroext %tid, ptr noundef nonnull %sta)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %rcu_read_lock.exit.out_crit_edge, label %if.end

rcu_read_lock.exit.out_crit_edge:                 ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  %state = getelementptr inbounds %struct.tid_ampdu_tx, ptr %call2, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 7, ptr noundef %state) #8
  %7 = ptrtoint ptr %sta to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sta, align 4
  %work = getelementptr inbounds %struct.sta_info, ptr %8, i32 0, i32 39, i32 8
  tail call void @ieee80211_queue_work(ptr noundef %1, ptr noundef %work) #8
  br label %out

out:                                              ; preds = %if.end, %rcu_read_lock.exit.out_crit_edge
  %call.i8 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i8, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i11

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i11:                                ; preds = %out
  %call1.i9 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i9)
  %tobool.not.i10 = icmp eq i32 %call1.i9, 0
  br i1 %tobool.not.i10, label %land.lhs.true.i11.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i13

land.lhs.true.i11.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i11
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i13:                               ; preds = %land.lhs.true.i11
  %.b4.i12 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i12, label %land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge, label %if.then.i14

land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i13
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i14:                                      ; preds = %land.lhs.true2.i13
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.35, i32 noundef 724, ptr noundef nonnull @.str.40) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i14, %land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i11.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !127
  %9 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i.i.i.i.i15 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i15 to ptr
  %preempt_count.i.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i16, align 4
  %sub.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i16, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sta) #8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_api_stop_tx_ba_cb(ptr noundef %sdata, ptr noundef %ra, i16 noundef zeroext %tid) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_stop_tx_ba_cb, i32 0, i32 1), ptr blockaddress(@trace_api_stop_tx_ba_cb, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !137

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !129

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !147
  %call42 = tail call i32 @__traceiter_api_stop_tx_ba_cb(ptr noundef null, ptr noundef %sdata, ptr noundef %ra, i16 noundef zeroext %tid) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !148
  %13 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !129

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !140
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_stop_tx_ba_cb, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_api_stop_tx_ba_cb, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_api_stop_tx_ba_cb.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_api_stop_tx_ba_cb.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 2065, ptr noundef nonnull @.str.21) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !141
  %31 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_process_addba_resp(ptr noundef %local, ptr noundef %sta, ptr nocapture noundef readonly %mgmt, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.ieee80211_mgmt, ptr %mgmt, i32 0, i32 6
  %capab2 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %mgmt, i32 0, i32 6, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %capab2 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %capab2, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %3 = and i16 %2, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp ne i16 %3, 0
  %4 = trunc i16 %3 to i8
  %5 = trunc i16 %2 to i8
  %div7.i.lhs.trunc = lshr i8 %5, 2
  %div7.i146147 = and i8 %div7.i.lhs.trunc, 15
  %div7.i.zext = zext i8 %div7.i146147 to i16
  %div7.i141148 = lshr i16 %2, 6
  %max_tx_aggregation_subframes = getelementptr inbounds %struct.ieee80211_hw, ptr %local, i32 0, i32 18
  %6 = ptrtoint ptr %max_tx_aggregation_subframes to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %max_tx_aggregation_subframes, align 2
  %8 = tail call i16 @llvm.umin.i16(i16 %div7.i141148, i16 %7)
  %idxprom = zext i8 %div7.i146147 to i32
  %arrayidx = getelementptr %struct.sta_info, ptr %sta, i32 0, i32 48, i32 28, i32 %idxprom
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool13.not = icmp eq ptr %10, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool13.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %flags = getelementptr i8, ptr %10, i32 -4
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ampdu_mlme = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 39
  tail call void @mutex_lock_nested(ptr noundef %ampdu_mlme, i32 noundef 0) #8
  %dep_map.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 13, i32 0, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end.rcu_dereference_protected_tid_tx.exit_crit_edge

if.end.rcu_dereference_protected_tid_tx.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_dereference_protected_tid_tx.exit

lor.lhs.false.i:                                  ; preds = %if.end
  %dep_map1.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 39, i32 0, i32 5
  %call.i12.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map1.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i)
  %tobool3.not.i = icmp eq i32 %call.i12.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.rcu_dereference_protected_tid_tx.exit_crit_edge

lor.lhs.false.i.rcu_dereference_protected_tid_tx.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_dereference_protected_tid_tx.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.rcu_dereference_protected_tid_tx.exit_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.rcu_dereference_protected_tid_tx.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_dereference_protected_tid_tx.exit

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %.b11.i = load i1, ptr @rcu_dereference_protected_tid_tx.__warned, align 1
  br i1 %.b11.i, label %land.lhs.true6.i.rcu_dereference_protected_tid_tx.exit_crit_edge, label %if.then.i145

land.lhs.true6.i.rcu_dereference_protected_tid_tx.exit_crit_edge: ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_dereference_protected_tid_tx.exit

if.then.i145:                                     ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_dereference_protected_tid_tx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 757, ptr noundef nonnull @.str.23) #8
  br label %rcu_dereference_protected_tid_tx.exit

rcu_dereference_protected_tid_tx.exit:            ; preds = %if.then.i145, %land.lhs.true6.i.rcu_dereference_protected_tid_tx.exit_crit_edge, %land.lhs.true.i.rcu_dereference_protected_tid_tx.exit_crit_edge, %lor.lhs.false.i.rcu_dereference_protected_tid_tx.exit_crit_edge, %if.end.rcu_dereference_protected_tid_tx.exit_crit_edge
  %arrayidx.i = getelementptr %struct.sta_info, ptr %sta, i32 0, i32 39, i32 9, i32 %idxprom
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %tobool17.not = icmp eq ptr %12, null
  br i1 %tobool17.not, label %rcu_dereference_protected_tid_tx.exit.out_crit_edge, label %if.end19

rcu_dereference_protected_tid_tx.exit.out_crit_edge: ; preds = %rcu_dereference_protected_tid_tx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end19:                                         ; preds = %rcu_dereference_protected_tid_tx.exit
  %dialog_token = getelementptr inbounds %struct.ieee80211_mgmt, ptr %mgmt, i32 0, i32 6, i32 0, i32 1
  %13 = ptrtoint ptr %dialog_token to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dialog_token, align 1
  %dialog_token23 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %12, i32 0, i32 8
  %15 = ptrtoint ptr %dialog_token23 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %dialog_token23, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %16)
  %cmp25.not = icmp eq i8 %14, %16
  br i1 %cmp25.not, label %if.end31, label %if.then27

if.then27:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %sdata = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 6
  %17 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sdata, align 4
  %name = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %18, i32 0, i32 10
  %addr = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 1
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.17, ptr noundef %name, ptr noundef %addr, i32 noundef %idxprom) #8
  br label %out

if.end31:                                         ; preds = %if.end19
  %addba_resp_timer = getelementptr inbounds %struct.tid_ampdu_tx, ptr %12, i32 0, i32 2
  %call32 = tail call i32 @del_timer_sync(ptr noundef %addba_resp_timer) #8
  %sdata33 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 6
  %19 = ptrtoint ptr %sdata33 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sdata33, align 4
  %name34 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %20, i32 0, i32 10
  %addr37 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 1
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.18, ptr noundef %name34, ptr noundef %addr37, i32 noundef %idxprom) #8
  %state = getelementptr inbounds %struct.tid_ampdu_tx, ptr %12, i32 0, i32 5
  %21 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %state, align 4
  %23 = and i32 %22, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool41.not = icmp eq i32 %23, 0
  br i1 %tobool41.not, label %lor.lhs.false, label %if.end31.if.then45_crit_edge

if.end31.if.then45_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then45

lor.lhs.false:                                    ; preds = %if.end31
  %24 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %state, align 4
  %26 = and i32 %25, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool44.not = icmp eq i32 %26, 0
  br i1 %tobool44.not, label %if.end53, label %lor.lhs.false.if.then45_crit_edge

lor.lhs.false.if.then45_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then45

if.then45:                                        ; preds = %lor.lhs.false.if.then45_crit_edge, %if.end31.if.then45_crit_edge
  %27 = ptrtoint ptr %sdata33 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sdata33, align 4
  %name47 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %28, i32 0, i32 10
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.19, ptr noundef %name47, ptr noundef %addr37, i32 noundef %idxprom) #8
  br label %out

if.end53:                                         ; preds = %lor.lhs.false
  %status = getelementptr inbounds %struct.anon.167, ptr %u, i32 0, i32 1, i32 0, i32 2
  %29 = ptrtoint ptr %status to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %cmp57 = icmp ne i16 %30, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool61.not = icmp eq i16 %8, 0
  %or.cond139 = select i1 %cmp57, i1 true, i1 %tobool61.not
  br i1 %or.cond139, label %if.else, label %if.then62

if.then62:                                        ; preds = %if.end53
  %call64 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %state) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %if.then62.out_crit_edge

if.then62.out_crit_edge:                          ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end67:                                         ; preds = %if.then62
  %buf_size68 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %12, i32 0, i32 11
  %31 = ptrtoint ptr %buf_size68 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %8, ptr %buf_size68, align 2
  %amsdu70 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %12, i32 0, i32 15
  %32 = ptrtoint ptr %amsdu70 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %4, ptr %amsdu70, align 1
  %33 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %state, align 4
  %and1.i144 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i144)
  %tobool74.not = icmp eq i32 %and1.i144, 0
  br i1 %tobool74.not, label %if.end67.if.end76_crit_edge, label %if.then75

if.end67.if.end76_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

if.then75:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ieee80211_agg_tx_operational(ptr noundef %local, ptr noundef %sta, i16 noundef zeroext %div7.i.zext)
  br label %if.end76

if.end76:                                         ; preds = %if.then75, %if.end67.if.end76_crit_edge
  %arrayidx79 = getelementptr %struct.sta_info, ptr %sta, i32 0, i32 39, i32 12, i32 %idxprom
  %35 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %arrayidx79, align 1
  %timeout = getelementptr inbounds %struct.ieee80211_mgmt, ptr %mgmt, i32 0, i32 6, i32 0, i32 2, i32 3
  %36 = ptrtoint ptr %timeout to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %timeout, align 1
  %38 = tail call i16 @llvm.bswap.i16(i16 %37)
  %timeout82 = getelementptr inbounds %struct.tid_ampdu_tx, ptr %12, i32 0, i32 7
  %39 = ptrtoint ptr %timeout82 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %timeout82, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool84.not = icmp eq i16 %37, 0
  br i1 %tobool84.not, label %if.end76.out_crit_edge, label %if.then85

if.end76.out_crit_edge:                           ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then85:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  %session_timer = getelementptr inbounds %struct.tid_ampdu_tx, ptr %12, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %40 = load volatile i32, ptr @jiffies, align 128
  %conv87 = zext i16 %38 to i32
  %mul = shl nuw nsw i32 %conv87, 10
  %call3.i = tail call i32 @__usecs_to_jiffies(i32 noundef %mul) #8
  %add = add i32 %call3.i, %40
  %call89 = tail call i32 @mod_timer(ptr noundef %session_timer, i32 noundef %add) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %last_tx = getelementptr inbounds %struct.tid_ampdu_tx, ptr %12, i32 0, i32 6
  %42 = ptrtoint ptr %last_tx to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %last_tx, align 4
  br label %out

if.else:                                          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %call91 = tail call i32 @___ieee80211_stop_tx_ba_session(ptr noundef %sta, i16 noundef zeroext %div7.i.zext, i32 noundef 0)
  br label %out

out:                                              ; preds = %if.else, %if.then85, %if.end76.out_crit_edge, %if.then62.out_crit_edge, %if.then45, %if.then27, %rcu_dereference_protected_tid_tx.exit.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %ampdu_mlme) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ieee80211_tx_skb_tid_band(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queue_by_reason(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queue_by_reason(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_schedule_txq(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_drv_wake_tx_queue(ptr noundef %local, ptr noundef %sdata, ptr noundef %txq) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_wake_tx_queue, i32 0, i32 1), ptr blockaddress(@trace_drv_wake_tx_queue, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !137

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !129

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !149
  %call42 = tail call i32 @__traceiter_drv_wake_tx_queue(ptr noundef null, ptr noundef %local, ptr noundef %sdata, ptr noundef %txq) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !150
  %13 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !129

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !140
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_wake_tx_queue, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_wake_tx_queue, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_drv_wake_tx_queue.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_drv_wake_tx_queue.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 2754, ptr noundef nonnull @.str.21) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !141
  %31 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_wake_tx_queue(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_api_start_tx_ba_session(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_api_start_tx_ba_cb(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

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
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sta_info_get_bss(ptr noundef, ptr noundef) local_unnamed_addr #4

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
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_api_stop_tx_ba_session(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_api_stop_tx_ba_cb(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !33, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !57, !58, !60, !61, !62, !64, !66, !67, !68, !70, !71, !72, !74, !75, !77, !79, !80, !82, !83, !85, !87, !89, !91, !93, !94, !96, !97, !98, !100, !102, !104, !106, !108, !109, !111, !112, !114}
!llvm.named.register.sp = !{!115}
!llvm.module.flags = !{!116, !117, !118, !119, !120, !121, !122, !123}
!llvm.ident = !{!124}

!0 = !{ptr @__ksymtab_ieee80211_send_bar, !1, !"__ksymtab_ieee80211_send_bar", i1 false, i1 false}
!1 = !{!"../net/mac80211/agg-tx.c", i32 140, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/mac80211/agg-tx.c", i32 145, i32 2}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../net/mac80211/agg-tx.c", i32 326, i32 3}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../net/mac80211/agg-tx.c", i32 353, i32 3}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/mac80211/agg-tx.c", i32 371, i32 2}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/mac80211/agg-tx.c", i32 537, i32 3}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/mac80211/agg-tx.c", i32 593, i32 6}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../net/mac80211/agg-tx.c", i32 601, i32 6}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/mac80211/agg-tx.c", i32 612, i32 2}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/mac80211/agg-tx.c", i32 623, i32 3}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/mac80211/agg-tx.c", i32 631, i32 3}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/mac80211/agg-tx.c", i32 651, i32 3}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/mac80211/agg-tx.c", i32 673, i32 3}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/mac80211/agg-tx.c", i32 683, i32 3}
!28 = !{ptr @ieee80211_start_tx_ba_session.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../net/mac80211/agg-tx.c", i32 705, i32 2}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @ieee80211_start_tx_ba_session.__key.12, !32, !"__key", i1 false, i1 false}
!32 = !{!"../net/mac80211/agg-tx.c", i32 708, i32 2}
!33 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @__ksymtab_ieee80211_start_tx_ba_session, !35, !"__ksymtab_ieee80211_start_tx_ba_session", i1 false, i1 false}
!35 = !{!"../net/mac80211/agg-tx.c", i32 728, i32 1}
!36 = !{ptr @__ksymtab_ieee80211_start_tx_ba_cb_irqsafe, !37, !"__ksymtab_ieee80211_start_tx_ba_cb_irqsafe", i1 false, i1 false}
!37 = !{!"../net/mac80211/agg-tx.c", i32 838, i32 1}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/mac80211/agg-tx.c", i32 878, i32 2}
!40 = !{ptr @__ksymtab_ieee80211_stop_tx_ba_session, !41, !"__ksymtab_ieee80211_stop_tx_ba_session", i1 false, i1 false}
!41 = !{!"../net/mac80211/agg-tx.c", i32 894, i32 1}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/mac80211/agg-tx.c", i32 903, i32 2}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/mac80211/agg-tx.c", i32 909, i32 3}
!46 = !{ptr @__ksymtab_ieee80211_stop_tx_ba_cb_irqsafe, !47, !"__ksymtab_ieee80211_stop_tx_ba_cb_irqsafe", i1 false, i1 false}
!47 = !{!"../net/mac80211/agg-tx.c", i32 952, i32 1}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/mac80211/agg-tx.c", i32 982, i32 3}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/mac80211/agg-tx.c", i32 989, i32 2}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/mac80211/agg-tx.c", i32 999, i32 3}
!54 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!55 = !{!"../net/mac80211/ieee80211_i.h", i32 2199, i32 17}
!56 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!58 = distinct !{null, !59, !"__warned", i1 false, i1 false}
!59 = !{!"../net/mac80211/sta_info.h", i32 755, i32 9}
!60 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../net/mac80211/agg-tx.c", i32 250, i32 6}
!64 = distinct !{null, !65, !"__already_done", i1 false, i1 false}
!65 = !{!"../net/mac80211/driver-ops.h", i32 1228, i32 7}
!66 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!68 = distinct !{null, !69, !"__already_done", i1 false, i1 false}
!69 = !{!"../net/mac80211/trace.h", i32 2725, i32 1}
!70 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!71 = distinct !{null, !69, !"__warned", i1 false, i1 false}
!72 = distinct !{null, !73, !"__already_done", i1 false, i1 false}
!73 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!74 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../net/mac80211/agg-tx.c", i32 462, i32 2}
!77 = distinct !{null, !78, !"__already_done", i1 false, i1 false}
!78 = !{!"../net/mac80211/trace.h", i32 1979, i32 1}
!79 = distinct !{null, !78, !"__warned", i1 false, i1 false}
!80 = !{ptr @skb_queue_head_init.__key, !81, !"__key", i1 false, i1 false}
!81 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!82 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../net/mac80211/agg-tx.c", i32 440, i32 3}
!85 = !{ptr @.str.32, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../net/mac80211/agg-tx.c", i32 446, i32 2}
!87 = !{ptr @.str.33, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../net/mac80211/agg-tx.c", i32 576, i32 2}
!89 = !{ptr @.str.34, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../net/mac80211/agg-tx.c", i32 748, i32 2}
!91 = distinct !{null, !92, !"__already_done", i1 false, i1 false}
!92 = !{!"../net/mac80211/trace.h", i32 2000, i32 1}
!93 = distinct !{null, !92, !"__warned", i1 false, i1 false}
!94 = distinct !{null, !95, !"__warned", i1 false, i1 false}
!95 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!96 = !{ptr @.str.35, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.36, !95, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.37, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../net/mac80211/agg-tx.c", i32 799, i32 3}
!100 = !{ptr @.str.38, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../net/mac80211/agg-tx.c", i32 806, i32 3}
!102 = distinct !{null, !103, !"__warned", i1 false, i1 false}
!103 = !{!"../net/mac80211/agg-tx.c", i32 810, i32 11}
!104 = !{ptr @.str.39, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../net/mac80211/agg-tx.c", i32 813, i32 3}
!106 = distinct !{null, !107, !"__warned", i1 false, i1 false}
!107 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!108 = !{ptr @.str.40, !107, !"<string literal>", i1 false, i1 false}
!109 = distinct !{null, !110, !"__already_done", i1 false, i1 false}
!110 = !{!"../net/mac80211/trace.h", i32 2023, i32 1}
!111 = distinct !{null, !110, !"__warned", i1 false, i1 false}
!112 = distinct !{null, !113, !"__already_done", i1 false, i1 false}
!113 = !{!"../net/mac80211/trace.h", i32 2044, i32 1}
!114 = distinct !{null, !113, !"__warned", i1 false, i1 false}
!115 = !{!"sp"}
!116 = !{i32 1, !"wchar_size", i32 2}
!117 = !{i32 1, !"min_enum_size", i32 4}
!118 = !{i32 8, !"branch-target-enforcement", i32 0}
!119 = !{i32 8, !"sign-return-address", i32 0}
!120 = !{i32 8, !"sign-return-address-all", i32 0}
!121 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!122 = !{i32 7, !"uwtable", i32 1}
!123 = !{i32 7, !"frame-pointer", i32 2}
!124 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!125 = !{i64 2149803453}
!126 = !{!"branch_weights", i32 1, i32 2000}
!127 = !{i64 2149803719}
!128 = !{i64 2161340690}
!129 = !{!"branch_weights", i32 2000, i32 1}
!130 = !{i8 0, i8 2}
!131 = !{i64 2148595268}
!132 = !{i64 2148510001, i64 2148510033, i64 2148510062, i64 2148510096, i64 2148510127, i64 2148510150}
!133 = !{i64 2148595497}
!134 = !{i64 2148592227}
!135 = !{i64 2148507536, i64 2148507568, i64 2148507597, i64 2148507631, i64 2148507662, i64 2148507685}
!136 = !{i64 2148592456}
!137 = !{i64 2148988631, i64 2148988636, i64 2148988649, i64 2148988693, i64 2148988727, i64 2148988748}
!138 = !{i64 2160405656}
!139 = !{i64 2160405881}
!140 = !{i64 2149812012}
!141 = !{i64 2149813048}
!142 = !{!"auto-init"}
!143 = !{i64 2160422883}
!144 = !{i64 2160423110}
!145 = !{i64 2160443759}
!146 = !{i64 2160443982}
!147 = !{i64 2160460894}
!148 = !{i64 2160461119}
!149 = !{i64 2161057470}
!150 = !{i64 2161057701}
