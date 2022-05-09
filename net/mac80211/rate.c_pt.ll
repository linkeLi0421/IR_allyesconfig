; ModuleID = '/llk/IR_all_yes/net/mac80211/rate.c_pt.bc'
source_filename = "../net/mac80211/rate.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ieee80211_rate_control_register\22, \22a\22\09"
module asm "\09.weak\09__crc_ieee80211_rate_control_register\09\09\09\09"
module asm "\09.long\09__crc_ieee80211_rate_control_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_rate_control_register:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_rate_control_register\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_rate_control_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ieee80211_rate_control_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_ieee80211_rate_control_unregister\09\09\09\09"
module asm "\09.long\09__crc_ieee80211_rate_control_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_rate_control_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_rate_control_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_rate_control_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ieee80211_get_tx_rates\22, \22a\22\09"
module asm "\09.weak\09__crc_ieee80211_get_tx_rates\09\09\09\09"
module asm "\09.long\09__crc_ieee80211_get_tx_rates\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_get_tx_rates:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_get_tx_rates\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_get_tx_rates:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rate_control_set_rates\22, \22a\22\09"
module asm "\09.weak\09__crc_rate_control_set_rates\09\09\09\09"
module asm "\09.long\09__crc_rate_control_set_rates\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rate_control_set_rates:\09\09\09\09\09"
module asm "\09.asciz \09\22rate_control_set_rates\22\09\09\09\09\09"
module asm "__kstrtabns_rate_control_set_rates:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.98 }
%union.anon.98 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.sta_info = type { %struct.list_head, %struct.list_head, %struct.callback_head, %struct.rhlist_head, [6 x i8], ptr, ptr, [8 x ptr], [4 x ptr], i8, ptr, ptr, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.work_struct, i16, i8, i8, i8, i32, i32, %struct.spinlock, [4 x %struct.sk_buff_head], [4 x %struct.sk_buff_head], i32, i32, i64, i32, %struct.ieee80211_sta_rx_stats, %struct.anon.192, [17 x i16], %struct.anon.193, %struct.anon.194, [16 x i16], [4 x %struct.airtime_info], %struct.sta_ampdu_mlme, ptr, i32, i32, ptr, %struct.codel_params, i8, %struct.cfg80211_chan_def, %struct.ieee80211_fragment_cache, %struct.ieee80211_sta }
%struct.callback_head = type { ptr, ptr }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.ieee80211_sta_rx_stats = type { i32, i32, i32, i32, i32, i32, i8, [4 x i8], i32, %struct.u64_stats_sync, i64, [17 x i64] }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.anon.192 = type { %struct.ewma_signal, [4 x %struct.ewma_signal] }
%struct.ewma_signal = type { i32 }
%struct.anon.193 = type { i32, i32, i32, i32, i32, [17 x i64], [17 x i64], i32, i8, i8, %struct.ewma_avg_signal }
%struct.ewma_avg_signal = type { i32 }
%struct.anon.194 = type { [4 x i64], [4 x i64], %struct.ieee80211_tx_rate, %struct.rate_info, [17 x i64] }
%struct.ieee80211_tx_rate = type <{ i8, i16 }>
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.airtime_info = type { i64, i64, i64, i64, %struct.list_head, %struct.atomic_t, i32, i32, i32, i16 }
%struct.sta_ampdu_mlme = type { %struct.mutex, [16 x ptr], [16 x i8], [1 x i32], [1 x i32], [1 x i32], [1 x i32], [1 x i32], %struct.work_struct, [16 x ptr], [16 x ptr], [16 x i32], [16 x i8], i8 }
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
%struct.ieee80211_sub_if_data = type { %struct.list_head, %struct.wireless_dev, %struct.list_head, i32, i32, %struct.delayed_work, ptr, ptr, i32, i32, [16 x i8], %struct.ieee80211_fragment_cache, i16, i8, [8 x ptr], ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8, i32, %struct.atomic_t, [4 x %struct.ieee80211_tx_queue_params], ptr, [4 x %struct.airtime_info], %struct.work_struct, i8, %struct.cfg80211_chan_def, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.cfg80211_chan_def, i8, i8, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, i8, i32, i32, i32, i8, %struct.delayed_work, ptr, [6 x i32], [6 x i8], [6 x [10 x i8]], [6 x i8], [6 x [8 x i16]], [6 x i32], i8, %union.anon.157, %struct.anon.191, %struct.ieee80211_vif }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.125, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.anon.125 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.cfg80211_bss_selection = type { i32, %union.anon.126 }
%union.anon.126 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.157 = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i32, i8, [32 x i8], i32, i8, i8, i8, i8, i8, i32, i32, %struct.atomic_t, i32, i32, i32, ptr, %struct.spinlock, %struct.mesh_preq_queue, i32, %struct.mesh_stats, %struct.mesh_config, %struct.atomic_t, i32, i8, i32, ptr, ptr, i8, i32, i8, ptr, i64, %struct.spinlock, i32, i32, i32, %struct.ps_data, ptr, i32, i8, i16, i32, %struct.mesh_table, %struct.mesh_table, i32, i32 }
%struct.mesh_preq_queue = type { %struct.list_head, [6 x i8], i8 }
%struct.mesh_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.mesh_config = type { i16, i16, i16, i16, i8, i8, i8, i8, i32, i8, i32, i16, i32, i16, i16, i16, i8, i8, i8, i16, i8, i8, i32, i16, i32, i16, i16, i32, i16, i32, i8 }
%struct.ps_data = type { [252 x i8], %struct.sk_buff_head, %struct.atomic_t, i32, i8 }
%struct.mesh_table = type { %struct.hlist_head, %struct.spinlock, %struct.rhashtable, %struct.hlist_head, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.anon.191 = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.124, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.anon.124 = type { i64, i64, i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.rate_control_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rate_control_ref = type { ptr, ptr }
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
%struct.ieee80211_tx_status = type { ptr, ptr, ptr, ptr, ptr }
%struct.rate_control_alg = type { %struct.list_head, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
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
%struct.ieee80211_sta_rates = type { %struct.callback_head, [4 x %struct.anon.129] }
%struct.anon.129 = type { i8, i8, i8, i8, i16 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.ieee80211_tx_info = type { i32, i32, %union.anon.141 }
%union.anon.141 = type { %struct.anon.145, [32 x i8] }
%struct.anon.145 = type { i64 }
%struct.ieee80211_tx_rate_control = type { ptr, ptr, ptr, ptr, %struct.ieee80211_tx_rate, i8, i8, i32, ptr, i8 }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__param_str_ieee80211_default_rc_algo = internal constant [35 x i8] c"mac80211.ieee80211_default_rc_algo\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@ieee80211_default_rc_algo = internal global { ptr, [28 x i8] } { ptr @.str.12, [28 x i8] zeroinitializer }, align 32
@__param_ieee80211_default_rc_algo = internal constant %struct.kernel_param { ptr @__param_str_ieee80211_default_rc_algo, ptr null, ptr @param_ops_charp, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @ieee80211_default_rc_algo } }, section "__param", align 4
@__UNIQUE_ID_ieee80211_default_rc_algotype819 = internal constant [50 x i8] c"mac80211.parmtype=ieee80211_default_rc_algo:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_ieee80211_default_rc_algo820 = internal constant [91 x i8] c"mac80211.parm=ieee80211_default_rc_algo:Default rate control algorithm for mac80211 to use\00", section ".modinfo", align 1
@rate_control_rate_init.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/mac80211/rate.c\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rate_control_tx_status.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rate_control_rate_update.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rate_ctrl_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @rate_ctrl_mutex, i64 52), ptr getelementptr (i8, ptr @rate_ctrl_mutex, i64 52) }, ptr @rate_ctrl_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@rate_ctrl_algs = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @rate_ctrl_algs, ptr @rate_ctrl_algs }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_ieee80211_rate_control_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_rate_control_register = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_rate_control_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_rate_control_register to i32), ptr @__kstrtab_ieee80211_rate_control_register, ptr @__kstrtabns_ieee80211_rate_control_register }, section "___ksymtab+ieee80211_rate_control_register", align 4
@__kstrtab_ieee80211_rate_control_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_rate_control_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_rate_control_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_rate_control_unregister to i32), ptr @__kstrtab_ieee80211_rate_control_unregister, ptr @__kstrtabns_ieee80211_rate_control_unregister }, section "___ksymtab+ieee80211_rate_control_unregister", align 4
@rcname_ops = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @rcname_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@ieee80211_check_rate_mask.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"%s: no overlap between basic rates (0x%x) and user mask (0x%x on band %d) - clearing the latter\00", [32 x i8] zeroinitializer }, align 32
@__kstrtab_ieee80211_get_tx_rates = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_get_tx_rates = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_get_tx_rates = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_get_tx_rates to i32), ptr @__kstrtab_ieee80211_get_tx_rates, ptr @__kstrtabns_ieee80211_get_tx_rates }, section "___ksymtab+ieee80211_get_tx_rates", align 4
@__kstrtab_rate_control_set_rates = external dso_local constant [0 x i8], align 1
@__kstrtabns_rate_control_set_rates = external dso_local constant [0 x i8], align 1
@__ksymtab_rate_control_set_rates = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rate_control_set_rates to i32), ptr @__kstrtab_rate_control_set_rates, ptr @__kstrtabns_rate_control_set_rates }, section "___ksymtab+rate_control_set_rates", align 4
@ieee80211_init_rate_ctrl_alg.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@ieee80211_init_rate_ctrl_alg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str, i32 986, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to select rate control algorithm\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ieee80211_init_rate_ctrl_alg\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ieee80211_init_rate_ctrl_alg._entry_ptr = internal global ptr @ieee80211_init_rate_ctrl_alg._entry, section ".printk_index", align 4
@ieee80211_init_rate_ctrl_alg._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str, i32 994, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Selected rate control algorithm '%s'\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@ieee80211_init_rate_ctrl_alg._entry_ptr.11 = internal global ptr @ieee80211_init_rate_ctrl_alg._entry.8, section ".printk_index", align 4
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"minstrel_ht\00", [20 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rate_ctrl_mutex.wait_lock\00", [38 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rate_ctrl_mutex\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rate_control_fill_sta_table.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rate_control_send_low.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.19 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"no supported rates for sta %pM (0x%x, band %d) in rate_mask 0x%x with flags 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@rate_fixup_ratelist.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ieee80211_get_sband.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"net/mac80211/ieee80211_i.h\00", [37 x i8] zeroinitializer }, align 32
@drv_sta_rate_tbl_update.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"net/mac80211/driver-ops.h\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: Failed check-sdata-in-driver check, flags: 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@__tracepoint_drv_sta_rate_tbl_update = external dso_local global %struct.tracepoint, align 4
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/mac80211/trace.h\00", [43 x i8] zeroinitializer }, align 32
@trace_drv_sta_rate_tbl_update.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_drv_return_void = external dso_local global %struct.tracepoint, align 4
@trace_drv_return_void.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 6, i64 7]
@___asan_gen_.26 = private unnamed_addr constant [26 x i8] c"ieee80211_default_rc_algo\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 25, i32 14 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 46, i32 17 }
@___asan_gen_.35 = private unnamed_addr constant [16 x i8] c"rate_ctrl_mutex\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [15 x i8] c"rate_ctrl_algs\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 22, i32 8 }
@___asan_gen_.41 = private unnamed_addr constant [11 x i8] c"rcname_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 224, i32 30 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 291, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 972, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 985, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 993, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 25, i32 42 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 695, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 723, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 23, i32 8 }
@___asan_gen_.93 = private constant [23 x i8] c"../net/mac80211/rate.c\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 371, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant [30 x i8] c"../net/mac80211/ieee80211_i.h\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 1505, i32 17 }
@___asan_gen_.102 = private unnamed_addr constant [29 x i8] c"../net/mac80211/driver-ops.h\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 545, i32 7 }
@___asan_gen_.105 = private unnamed_addr constant [24 x i8] c"../net/mac80211/trace.h\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 962, i32 1 }
@___asan_gen_.107 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 108, i32 2 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_ieee80211_default_rc_algo820, ptr @__UNIQUE_ID_ieee80211_default_rc_algotype819, ptr @__ksymtab_ieee80211_get_tx_rates, ptr @__ksymtab_ieee80211_rate_control_register, ptr @__ksymtab_ieee80211_rate_control_unregister, ptr @__ksymtab_rate_control_set_rates, ptr @__param_ieee80211_default_rc_algo, ptr @ieee80211_init_rate_ctrl_alg._entry, ptr @ieee80211_init_rate_ctrl_alg._entry.8, ptr @ieee80211_init_rate_ctrl_alg._entry_ptr, ptr @ieee80211_init_rate_ctrl_alg._entry_ptr.11, ptr @ieee80211_default_rc_algo, ptr @.str, ptr @.str.1, ptr @rate_ctrl_mutex, ptr @rate_ctrl_algs, ptr @rcname_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_default_rc_algo to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rate_ctrl_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rate_ctrl_algs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcname_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_init_rate_ctrl_alg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_init_rate_ctrl_alg._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rate_control_rate_init(ptr noundef %sta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sdata = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 6
  %0 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdata, align 4
  %local1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %local1, align 4
  %rate_ctrl = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 10
  %4 = ptrtoint ptr %rate_ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rate_ctrl, align 4
  %sta2 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48
  %rate_ctrl_priv = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 11
  %6 = ptrtoint ptr %rate_ctrl_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rate_ctrl_priv, align 8
  tail call void @ieee80211_sta_set_rx_nss(ptr noundef %sta) #10
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = tail call i32 @llvm.read_register.i32(metadata !88) #10
  %and.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !98
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 696, ptr noundef nonnull @.str.14) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %12 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sdata, align 4
  %chanctx_conf4 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %13, i32 0, i32 59, i32 9
  %14 = ptrtoint ptr %chanctx_conf4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %chanctx_conf4, align 4
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end14_crit_edge

rcu_read_lock.exit.do.end14_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.do.end14_crit_edge, label %land.lhs.true9

land.lhs.true.do.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14

land.lhs.true9:                                   ; preds = %land.lhs.true
  %.b71 = load i1, ptr @rate_control_rate_init.__warned, align 1
  br i1 %.b71, label %land.lhs.true9.do.end14_crit_edge, label %if.then11

land.lhs.true9.do.end14_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14

if.then11:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rate_control_rate_init.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 46, ptr noundef nonnull @.str.1) #10
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %land.lhs.true9.do.end14_crit_edge, %land.lhs.true.do.end14_crit_edge, %rcu_read_lock.exit.do.end14_crit_edge
  %tobool16.not = icmp eq ptr %15, null
  br i1 %tobool16.not, label %do.end29, label %if.end45, !prof !99

do.end29:                                         ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 47, i32 noundef 9, ptr noundef null) #10
  tail call fastcc void @rcu_read_unlock()
  br label %cleanup

if.end45:                                         ; preds = %do.end14
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wiphy, align 8
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %arrayidx = getelementptr %struct.wiphy, ptr %17, i32 0, i32 53, i32 %21
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %band46 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %band46 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %band46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %25)
  %cmp = icmp eq i32 %25, 4
  br i1 %cmp, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end45
  tail call void @ieee80211_s1g_sta_rate_init(ptr noundef %sta) #10
  %call.i72 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i72, label %if.then47.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i75

if.then47.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i75:                                ; preds = %if.then47
  %call1.i73 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i73)
  %tobool.not.i74 = icmp eq i32 %call1.i73, 0
  br i1 %tobool.not.i74, label %land.lhs.true.i75.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i77

land.lhs.true.i75.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i75
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i77:                               ; preds = %land.lhs.true.i75
  %.b4.i76 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i76, label %land.lhs.true2.i77.rcu_read_unlock.exit_crit_edge, label %if.then.i78

land.lhs.true2.i77.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i77
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i78:                                      ; preds = %land.lhs.true2.i77
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.15) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i78, %land.lhs.true2.i77.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i75.rcu_read_unlock.exit_crit_edge, %if.then47.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !100
  %26 = tail call i32 @llvm.read_register.i32(metadata !88) #10
  %and.i.i.i.i.i79 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i79 to ptr
  %preempt_count.i.i.i.i80 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i80 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i80, align 4
  %sub.i.i.i = add i32 %29, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i80, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %cleanup

if.end48:                                         ; preds = %if.end45
  %rate_ctrl_lock = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %rate_ctrl_lock) #10
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %5, align 4
  %rate_init = getelementptr inbounds %struct.rate_control_ops, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %rate_init to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rate_init, align 4
  %priv = getelementptr inbounds %struct.rate_control_ref, ptr %5, i32 0, i32 1
  %34 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %priv, align 4
  tail call void %33(ptr noundef %35, ptr noundef %23, ptr noundef nonnull %15, ptr noundef %sta2, ptr noundef %7) #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %rate_ctrl_lock) #10
  %call.i81 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i81, label %if.end48.rcu_read_unlock.exit91_crit_edge, label %land.lhs.true.i84

if.end48.rcu_read_unlock.exit91_crit_edge:        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit91

land.lhs.true.i84:                                ; preds = %if.end48
  %call1.i82 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i82)
  %tobool.not.i83 = icmp eq i32 %call1.i82, 0
  br i1 %tobool.not.i83, label %land.lhs.true.i84.rcu_read_unlock.exit91_crit_edge, label %land.lhs.true2.i86

land.lhs.true.i84.rcu_read_unlock.exit91_crit_edge: ; preds = %land.lhs.true.i84
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit91

land.lhs.true2.i86:                               ; preds = %land.lhs.true.i84
  %.b4.i85 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i85, label %land.lhs.true2.i86.rcu_read_unlock.exit91_crit_edge, label %if.then.i87

land.lhs.true2.i86.rcu_read_unlock.exit91_crit_edge: ; preds = %land.lhs.true2.i86
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit91

if.then.i87:                                      ; preds = %land.lhs.true2.i86
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.15) #10
  br label %rcu_read_unlock.exit91

rcu_read_unlock.exit91:                           ; preds = %if.then.i87, %land.lhs.true2.i86.rcu_read_unlock.exit91_crit_edge, %land.lhs.true.i84.rcu_read_unlock.exit91_crit_edge, %if.end48.rcu_read_unlock.exit91_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !100
  %36 = tail call i32 @llvm.read_register.i32(metadata !88) #10
  %and.i.i.i.i.i88 = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i.i88 to ptr
  %preempt_count.i.i.i.i89 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i.i.i89 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i.i.i89, align 4
  %sub.i.i.i90 = add i32 %39, -1
  store volatile i32 %sub.i.i.i90, ptr %preempt_count.i.i.i.i89, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %_flags.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 24
  tail call void @_set_bit(i32 noundef 21, ptr noundef %_flags.i) #10
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit91, %rcu_read_unlock.exit, %do.end29, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sta_set_rx_nss(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.15) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !100
  %0 = tail call i32 @llvm.read_register.i32(metadata !88) #10
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_s1g_sta_rate_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rate_control_tx_status(ptr nocapture noundef readonly %local, ptr noundef %sband, ptr noundef %st) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rate_ctrl = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 58
  %0 = ptrtoint ptr %rate_ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rate_ctrl, align 8
  %2 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %st, align 4
  %rate_ctrl_priv = getelementptr i8, ptr %3, i32 -2616
  %4 = ptrtoint ptr %rate_ctrl_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rate_ctrl_priv, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %_flags.i = getelementptr i8, ptr %3, i32 -2452
  %6 = ptrtoint ptr %_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %_flags.i, align 4
  %8 = and i32 %7, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.not = icmp eq i32 %8, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %rate_ctrl_lock = getelementptr i8, ptr %3, i32 -2612
  tail call void @_raw_spin_lock_bh(ptr noundef %rate_ctrl_lock) #10
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %tx_status_ext = getelementptr inbounds %struct.rate_control_ops, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %tx_status_ext to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tx_status_ext, align 4
  %tobool3.not = icmp eq ptr %12, null
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %priv = getelementptr inbounds %struct.rate_control_ref, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 4
  tail call void %12(ptr noundef %14, ptr noundef %sband, ptr noundef %5, ptr noundef %st) #10
  br label %if.end51

if.else:                                          ; preds = %if.end
  %skb = getelementptr inbounds %struct.ieee80211_tx_status, ptr %st, i32 0, i32 2
  %15 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %skb, align 4
  %tobool7.not = icmp eq ptr %16, null
  br i1 %tobool7.not, label %land.end, label %if.then8

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %tx_status = getelementptr inbounds %struct.rate_control_ops, ptr %10, i32 0, i32 10
  %17 = ptrtoint ptr %tx_status to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tx_status, align 4
  %priv10 = getelementptr inbounds %struct.rate_control_ref, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %priv10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv10, align 4
  %21 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %st, align 4
  tail call void %18(ptr noundef %20, ptr noundef %sband, ptr noundef %22, ptr noundef %5, ptr noundef nonnull %16) #10
  br label %if.end51

land.end:                                         ; preds = %if.else
  %.b73 = load i1, ptr @rate_control_tx_status.__already_done, align 1
  br i1 %.b73, label %land.end.if.end51_crit_edge, label %if.then19, !prof !101

land.end.if.end51_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.then19:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rate_control_tx_status.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 86, i32 noundef 9, ptr noundef null) #10
  br label %if.end51

if.end51:                                         ; preds = %if.then19, %land.end.if.end51_crit_edge, %if.then8, %if.then4
  tail call void @_raw_spin_unlock_bh(ptr noundef %rate_ctrl_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rate_control_rate_update(ptr noundef %local, ptr noundef %sband, ptr noundef %sta, i32 noundef %changed) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rate_ctrl = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 58
  %0 = ptrtoint ptr %rate_ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rate_ctrl, align 8
  %sta1 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48
  %rate_ctrl_priv = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 11
  %2 = ptrtoint ptr %rate_ctrl_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rate_ctrl_priv, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end48_crit_edge, label %land.lhs.true

entry.if.end48_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %rate_update = getelementptr inbounds %struct.rate_control_ops, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %rate_update to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rate_update, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %land.lhs.true.if.end48_crit_edge, label %if.then

land.lhs.true.if.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then:                                          ; preds = %land.lhs.true
  %8 = tail call i32 @llvm.read_register.i32(metadata !88) #10
  %and.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !98
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.then.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then.rcu_read_lock.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 696, ptr noundef nonnull @.str.14) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then.rcu_read_lock.exit_crit_edge
  %sdata = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 6
  %12 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sdata, align 4
  %chanctx_conf3 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %13, i32 0, i32 59, i32 9
  %14 = ptrtoint ptr %chanctx_conf3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %chanctx_conf3, align 4
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %land.lhs.true6, label %rcu_read_lock.exit.do.end13_crit_edge

rcu_read_lock.exit.do.end13_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end13

land.lhs.true6:                                   ; preds = %rcu_read_lock.exit
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true6.do.end13_crit_edge, label %land.lhs.true9

land.lhs.true6.do.end13_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end13

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %.b67 = load i1, ptr @rate_control_rate_update.__warned, align 1
  br i1 %.b67, label %land.lhs.true9.do.end13_crit_edge, label %if.then11

land.lhs.true9.do.end13_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end13

if.then11:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rate_control_rate_update.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 103, ptr noundef nonnull @.str.1) #10
  br label %do.end13

do.end13:                                         ; preds = %if.then11, %land.lhs.true9.do.end13_crit_edge, %land.lhs.true6.do.end13_crit_edge, %rcu_read_lock.exit.do.end13_crit_edge
  %tobool15.not = icmp eq ptr %15, null
  br i1 %tobool15.not, label %do.end28, label %if.end44, !prof !99

do.end28:                                         ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 104, i32 noundef 9, ptr noundef null) #10
  tail call fastcc void @rcu_read_unlock()
  br label %cleanup

if.end44:                                         ; preds = %do.end13
  %rate_ctrl_lock = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %rate_ctrl_lock) #10
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %rate_update46 = getelementptr inbounds %struct.rate_control_ops, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %rate_update46 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rate_update46, align 4
  %priv = getelementptr inbounds %struct.rate_control_ref, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv, align 4
  tail call void %19(ptr noundef %21, ptr noundef %sband, ptr noundef nonnull %15, ptr noundef %sta1, ptr noundef %3, i32 noundef %changed) #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %rate_ctrl_lock) #10
  %call.i68 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i68, label %if.end44.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i71

if.end44.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i71:                                ; preds = %if.end44
  %call1.i69 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i69)
  %tobool.not.i70 = icmp eq i32 %call1.i69, 0
  br i1 %tobool.not.i70, label %land.lhs.true.i71.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i73

land.lhs.true.i71.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i71
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i73:                               ; preds = %land.lhs.true.i71
  %.b4.i72 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i72, label %land.lhs.true2.i73.rcu_read_unlock.exit_crit_edge, label %if.then.i74

land.lhs.true2.i73.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i73
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i74:                                      ; preds = %land.lhs.true2.i73
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.15) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i74, %land.lhs.true2.i73.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i71.rcu_read_unlock.exit_crit_edge, %if.end44.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !100
  %22 = tail call i32 @llvm.read_register.i32(metadata !88) #10
  %and.i.i.i.i.i75 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i75 to ptr
  %preempt_count.i.i.i.i76 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i76 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i76, align 4
  %sub.i.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i76, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %if.end48

if.end48:                                         ; preds = %rcu_read_unlock.exit, %land.lhs.true.if.end48_crit_edge, %entry.if.end48_crit_edge
  %sdata49 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 6
  %26 = ptrtoint ptr %sdata49 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sdata49, align 4
  tail call void @drv_sta_rc_update(ptr noundef %local, ptr noundef %27, ptr noundef %sta1, i32 noundef %changed) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %do.end28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drv_sta_rc_update(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_rate_control_register(ptr noundef %ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.rate_control_ops, ptr %ops, i32 0, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @rate_ctrl_mutex, i32 noundef 0) #10
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %alg.0.in = phi ptr [ @rate_ctrl_algs, %if.end ], [ %alg.0, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %alg.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %alg.0 = load ptr, ptr %alg.0.in, align 4
  %cmp.not = icmp eq ptr %alg.0, @rate_ctrl_algs
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %ops1 = getelementptr inbounds %struct.rate_control_alg, ptr %alg.0, i32 0, i32 1
  %3 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops1, align 4
  %name2 = getelementptr inbounds %struct.rate_control_ops, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %name2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name2, align 4
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 4
  %call = tail call i32 @strcmp(ptr noundef %6, ptr noundef %8) #13
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %do.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 129, i32 noundef 9, ptr noundef null) #10
  br label %cleanup.sink.split

for.end:                                          ; preds = %for.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 12) #14
  %cmp31 = icmp eq ptr %call7.i.i, null
  br i1 %cmp31, label %for.end.cleanup.sink.split_crit_edge, label %if.end33

for.end.cleanup.sink.split_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end33:                                         ; preds = %for.end
  %ops34 = getelementptr inbounds %struct.rate_control_alg, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %ops34 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %ops, ptr %ops34, align 8
  %11 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @rate_ctrl_algs, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %11, ptr noundef nonnull @rate_ctrl_algs) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end33.cleanup.sink.split_crit_edge

if.end33.cleanup.sink.split_crit_edge:            ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end.i.i:                                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  store ptr %call7.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @rate_ctrl_algs, i32 0, i32 1), align 4
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @rate_ctrl_algs, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %11, ptr %prev3.i.i, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %call7.i.i, ptr %11, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.i.i, %if.end33.cleanup.sink.split_crit_edge, %for.end.cleanup.sink.split_crit_edge, %do.end
  %retval.0.ph = phi i32 [ -114, %do.end ], [ -12, %for.end.cleanup.sink.split_crit_edge ], [ 0, %if.end33.cleanup.sink.split_crit_edge ], [ 0, %if.end.i.i ]
  tail call void @mutex_unlock(ptr noundef nonnull @rate_ctrl_mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_rate_control_unregister(ptr noundef readnone %ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @rate_ctrl_mutex, i32 noundef 0) #10
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %alg.0.in = phi ptr [ @rate_ctrl_algs, %entry ], [ %alg.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %alg.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %alg.0 = load ptr, ptr %alg.0.in, align 4
  %cmp.not = icmp eq ptr %alg.0, @rate_ctrl_algs
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.cond
  %ops1 = getelementptr inbounds %struct.rate_control_alg, ptr %alg.0, i32 0, i32 1
  %1 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops1, align 4
  %cmp2 = icmp eq ptr %2, %ops
  br i1 %cmp2, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.then:                                          ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %alg.0) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %alg.0, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %alg.0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %alg.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %9 = ptrtoint ptr %alg.0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %alg.0, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %alg.0, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %alg.0) #10
  br label %for.end

for.end:                                          ; preds = %list_del.exit, %for.cond.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @rate_ctrl_mutex) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcname_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %name = getelementptr inbounds %struct.rate_control_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %call = tail call i32 @strlen(ptr noundef %5) #13
  %call3 = tail call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef %5, i32 noundef %call) #10
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_check_rate_mask(ptr noundef %sdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %basic_rates2 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 24
  %2 = ptrtoint ptr %basic_rates2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %basic_rates2, align 8
  %chandef = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 32
  %4 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chandef, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end27, !prof !99

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 273, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end27:                                         ; preds = %entry
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp = icmp eq i32 %7, 4
  br i1 %cmp, label %if.end27.cleanup_crit_edge, label %if.end34

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end34:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool35.not = icmp eq i32 %3, 0
  br i1 %tobool35.not, label %land.rhs, label %if.end89

land.rhs:                                         ; preds = %if.end34
  %.b116 = load i1, ptr @ieee80211_check_rate_mask.__already_done, align 1
  br i1 %.b116, label %land.rhs.cleanup_crit_edge, label %if.then52, !prof !101

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then52:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ieee80211_check_rate_mask.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 282, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end89:                                         ; preds = %if.end34
  %arrayidx = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 50, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %and = and i32 %9, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool91.not = icmp eq i32 %and, 0
  br i1 %tobool91.not, label %if.end93, label %if.end89.cleanup_crit_edge

if.end89.cleanup_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end93:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wiphy, align 8
  %arrayidx90 = getelementptr %struct.wiphy, ptr %11, i32 0, i32 53, i32 %7
  %12 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx90, align 4
  %name = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.2, ptr noundef %name, i32 noundef %3, i32 noundef %9, i32 noundef %7) #10
  %n_bitrates = getelementptr inbounds %struct.ieee80211_supported_band, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n_bitrates, align 4
  %notmask = shl nsw i32 -1, %15
  %sub = xor i32 %notmask, -1
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end93, %if.end89.cleanup_crit_edge, %if.then52, %land.rhs.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sdata_dbg(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_get_tx_rates(ptr noundef readonly %vif, ptr noundef %sta, ptr noundef %skb, ptr noundef %dest, i32 noundef %max_rates) #0 align 64 {
entry:
  %mcs_mask.i = alloca [10 x i8], align 1
  %mask.i = alloca i32, align 4
  %rate_flags.i = alloca i16, align 2
  %vht_mask.i = alloca [8 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %tobool.not.i = icmp eq ptr %sta, null
  br i1 %tobool.not.i, label %entry.if.end14.i_crit_edge, label %land.lhs.true.i

entry.if.end14.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

land.lhs.true.i:                                  ; preds = %entry
  %skip_table.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 21
  %0 = ptrtoint ptr %skip_table.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %skip_table.i, align 1
  %1 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not.i = icmp eq i8 %1, 0
  br i1 %tobool1.not.i, label %if.then.i, label %land.lhs.true.i.if.end14.i_crit_edge

land.lhs.true.i.if.end14.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %rates2.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 16
  %2 = ptrtoint ptr %rates2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %rates2.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true5.i, label %if.then.i.if.end14.i_crit_edge

if.then.i.if.end14.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

land.lhs.true5.i:                                 ; preds = %if.then.i
  %call6.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true5.i.if.end14.i_crit_edge, label %land.lhs.true8.i

land.lhs.true5.i.if.end14.i_crit_edge:            ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true5.i
  %.b160.i = load i1, ptr @rate_control_fill_sta_table.__warned, align 1
  br i1 %.b160.i, label %land.lhs.true8.i.if.end14.i_crit_edge, label %if.then10.i

land.lhs.true8.i.if.end14.i_crit_edge:            ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

if.then10.i:                                      ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rate_control_fill_sta_table.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 718, ptr noundef nonnull @.str.1) #10
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then10.i, %land.lhs.true8.i.if.end14.i_crit_edge, %land.lhs.true5.i.if.end14.i_crit_edge, %if.then.i.if.end14.i_crit_edge, %land.lhs.true.i.if.end14.i_crit_edge, %entry.if.end14.i_crit_edge
  %ratetbl.0.i = phi ptr [ null, %land.lhs.true.i.if.end14.i_crit_edge ], [ null, %entry.if.end14.i_crit_edge ], [ %3, %if.then10.i ], [ %3, %land.lhs.true8.i.if.end14.i_crit_edge ], [ %3, %land.lhs.true5.i.if.end14.i_crit_edge ], [ %3, %if.then.i.if.end14.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_rates)
  %cmp16161.i = icmp sgt i32 %max_rates, 0
  br i1 %cmp16161.i, label %for.body.lr.ph.i, label %if.end14.i.rate_control_fill_sta_table.exit_crit_edge

if.end14.i.rate_control_fill_sta_table.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rate_control_fill_sta_table.exit

for.body.lr.ph.i:                                 ; preds = %if.end14.i
  %4 = tail call i32 @llvm.smin.i32(i32 %max_rates, i32 4) #10
  %5 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %cmp31.not.i = icmp eq ptr %5, %dest
  %tobool38.not.i = icmp eq ptr %ratetbl.0.i, null
  %use_rts.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 21
  br label %land.lhs.true18.i

land.lhs.true18.i:                                ; preds = %lor.lhs.false.i.land.lhs.true18.i_crit_edge, %for.body.lr.ph.i
  %i.0162.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %lor.lhs.false.i.land.lhs.true18.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %5, i32 0, i32 %i.0162.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp20.i = icmp sgt i8 %7, -1
  br i1 %cmp20.i, label %land.lhs.true22.i, label %land.lhs.true18.i.if.else.i_crit_edge

land.lhs.true18.i.if.else.i_crit_edge:            ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true22.i:                                ; preds = %land.lhs.true18.i
  %count.i = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %5, i32 0, i32 %i.0162.i, i32 1
  %8 = ptrtoint ptr %count.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %bf.load25.i = load i16, ptr %count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %bf.load25.i)
  %tobool28.not.i = icmp ult i16 %bf.load25.i, 2048
  br i1 %tobool28.not.i, label %land.lhs.true22.i.if.else.i_crit_edge, label %if.then29.i

land.lhs.true22.i.if.else.i_crit_edge:            ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then29.i:                                      ; preds = %land.lhs.true22.i
  br i1 %cmp31.not.i, label %if.then29.i.if.end102.i_crit_edge, label %if.then33.i

if.then29.i.if.end102.i_crit_edge:                ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end102.i

if.then33.i:                                      ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx34.i = getelementptr %struct.ieee80211_tx_rate, ptr %dest, i32 %i.0162.i
  %9 = call ptr @memcpy(ptr %arrayidx34.i, ptr %arrayidx.i, i32 3)
  br label %if.end102.i

if.else.i:                                        ; preds = %land.lhs.true22.i.if.else.i_crit_edge, %land.lhs.true18.i.if.else.i_crit_edge
  br i1 %tobool38.not.i, label %if.else93.i, label %if.then39.i

if.then39.i:                                      ; preds = %if.else.i
  %arrayidx40.i = getelementptr %struct.ieee80211_sta_rates, ptr %ratetbl.0.i, i32 0, i32 1, i32 %i.0162.i
  %10 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx40.i, align 2
  %arrayidx42.i = getelementptr %struct.ieee80211_tx_rate, ptr %dest, i32 %i.0162.i
  %12 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %arrayidx42.i, align 1
  %flags.i = getelementptr %struct.ieee80211_sta_rates, ptr %ratetbl.0.i, i32 0, i32 1, i32 %i.0162.i, i32 4
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %flags.i, align 2
  %flags47.i = getelementptr %struct.ieee80211_tx_rate, ptr %dest, i32 %i.0162.i, i32 1
  %15 = ptrtoint ptr %flags47.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %bf.load48.i = load i16, ptr %flags47.i, align 1
  %bf.value.i = and i16 %14, 2047
  %bf.clear49.i = and i16 %bf.load48.i, -2048
  %bf.set.i = or i16 %bf.clear49.i, %bf.value.i
  store i16 %bf.set.i, ptr %flags47.i, align 1
  %16 = ptrtoint ptr %use_rts.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load50.i = load i8, ptr %use_rts.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load50.i)
  %tobool52.not.i = icmp sgt i8 %bf.load50.i, -1
  br i1 %tobool52.not.i, label %if.else63.i, label %if.then53.i

if.then53.i:                                      ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #12
  %count_rts.i = getelementptr %struct.ieee80211_sta_rates, ptr %ratetbl.0.i, i32 0, i32 1, i32 %i.0162.i, i32 3
  %17 = ptrtoint ptr %count_rts.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %count_rts.i, align 1
  %bf.value60.i = zext i8 %18 to i16
  %bf.shl.i = shl i16 %bf.value60.i, 11
  %bf.set62.i = or i16 %bf.shl.i, %bf.value.i
  %19 = ptrtoint ptr %flags47.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 %bf.set62.i, ptr %flags47.i, align 1
  br label %if.end102.i

if.else63.i:                                      ; preds = %if.then39.i
  %20 = and i8 %bf.load50.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool67.not.i = icmp eq i8 %20, 0
  br i1 %tobool67.not.i, label %if.else79.i, label %if.then68.i

if.then68.i:                                      ; preds = %if.else63.i
  call void @__sanitizer_cov_trace_pc() #12
  %count_cts.i = getelementptr %struct.ieee80211_sta_rates, ptr %ratetbl.0.i, i32 0, i32 1, i32 %i.0162.i, i32 2
  %21 = ptrtoint ptr %count_cts.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %count_cts.i, align 2
  %bf.value75.i = zext i8 %22 to i16
  %bf.shl76.i = shl i16 %bf.value75.i, 11
  %bf.set78.i = or i16 %bf.shl76.i, %bf.value.i
  %23 = ptrtoint ptr %flags47.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 %bf.set78.i, ptr %flags47.i, align 1
  br label %if.end102.i

if.else79.i:                                      ; preds = %if.else63.i
  call void @__sanitizer_cov_trace_pc() #12
  %count82.i = getelementptr %struct.ieee80211_sta_rates, ptr %ratetbl.0.i, i32 0, i32 1, i32 %i.0162.i, i32 1
  %24 = ptrtoint ptr %count82.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %count82.i, align 1
  %bf.value87.i = zext i8 %25 to i16
  %bf.shl88.i = shl i16 %bf.value87.i, 11
  %bf.set90.i = or i16 %bf.shl88.i, %bf.value.i
  %26 = ptrtoint ptr %flags47.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 %bf.set90.i, ptr %flags47.i, align 1
  br label %if.end102.i

if.else93.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx94.i = getelementptr %struct.ieee80211_tx_rate, ptr %dest, i32 %i.0162.i
  %27 = ptrtoint ptr %arrayidx94.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %arrayidx94.i, align 1
  %count97.i = getelementptr %struct.ieee80211_tx_rate, ptr %dest, i32 %i.0162.i, i32 1
  %28 = ptrtoint ptr %count97.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %bf.load98.i = load i16, ptr %count97.i, align 1
  %bf.clear99.i = and i16 %bf.load98.i, 2047
  store i16 %bf.clear99.i, ptr %count97.i, align 1
  br label %if.end102.i

if.end102.i:                                      ; preds = %if.else93.i, %if.else79.i, %if.then68.i, %if.then53.i, %if.then33.i, %if.then29.i.if.end102.i_crit_edge
  %arrayidx103.i = getelementptr %struct.ieee80211_tx_rate, ptr %dest, i32 %i.0162.i
  %29 = ptrtoint ptr %arrayidx103.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx103.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp106.i = icmp slt i8 %30, 0
  br i1 %cmp106.i, label %if.end102.i.rate_control_fill_sta_table.exit_crit_edge, label %lor.lhs.false.i

if.end102.i.rate_control_fill_sta_table.exit_crit_edge: ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rate_control_fill_sta_table.exit

lor.lhs.false.i:                                  ; preds = %if.end102.i
  %count109.i = getelementptr %struct.ieee80211_tx_rate, ptr %dest, i32 %i.0162.i, i32 1
  %31 = ptrtoint ptr %count109.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %bf.load110.i = load i16, ptr %count109.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %bf.load110.i)
  %tobool112.not.i = icmp ult i16 %bf.load110.i, 2048
  %inc.i = add nuw nsw i32 %i.0162.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %4)
  %exitcond.not.i = icmp eq i32 %inc.i, %4
  %or.cond.i = select i1 %tobool112.not.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %lor.lhs.false.i.rate_control_fill_sta_table.exit_crit_edge, label %lor.lhs.false.i.land.lhs.true18.i_crit_edge

lor.lhs.false.i.land.lhs.true18.i_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true18.i

lor.lhs.false.i.rate_control_fill_sta_table.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rate_control_fill_sta_table.exit

rate_control_fill_sta_table.exit:                 ; preds = %lor.lhs.false.i.rate_control_fill_sta_table.exit_crit_edge, %if.end102.i.rate_control_fill_sta_table.exit_crit_edge, %if.end14.i.rate_control_fill_sta_table.exit_crit_edge
  %tobool.not = icmp eq ptr %vif, null
  br i1 %tobool.not, label %rate_control_fill_sta_table.exit.cleanup_crit_edge, label %if.end

rate_control_fill_sta_table.exit.cleanup_crit_edge: ; preds = %rate_control_fill_sta_table.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %rate_control_fill_sta_table.exit
  %add.ptr.i = getelementptr i8, ptr %vif, i32 -4080
  %local = getelementptr i8, ptr %vif, i32 -2988
  %32 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %local, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wiphy, align 8
  %band = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %36 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %36)
  %bf.load = load i32, ptr %band, align 4
  %bf.lshr = lshr i32 %bf.load, 29
  %arrayidx = getelementptr %struct.wiphy, ptr %35, i32 0, i32 53, i32 %bf.lshr
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx, align 4
  %39 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cb.i, align 8
  %and.i = and i32 %40, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i40 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i40, label %ieee80211_is_tx_data.exit, label %if.end.if.then3_crit_edge

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

ieee80211_is_tx_data.exit:                        ; preds = %if.end
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %41 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %42, align 2
  %45 = and i16 %44, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %45)
  %cmp.i.i = icmp eq i16 %45, 2048
  br i1 %cmp.i.i, label %ieee80211_is_tx_data.exit.if.then3_crit_edge, label %ieee80211_is_tx_data.exit.if.end4_crit_edge

ieee80211_is_tx_data.exit.if.end4_crit_edge:      ; preds = %ieee80211_is_tx_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

ieee80211_is_tx_data.exit.if.then3_crit_edge:     ; preds = %ieee80211_is_tx_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

if.then3:                                         ; preds = %ieee80211_is_tx_data.exit.if.then3_crit_edge, %if.end.if.then3_crit_edge
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %mcs_mask.i) #10
  %46 = call ptr @memset(ptr %mcs_mask.i, i32 255, i32 10)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i) #10
  %47 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %mask.i, align 4, !annotation !102
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rate_flags.i) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %vht_mask.i) #10
  %48 = call ptr @memset(ptr %vht_mask.i, i32 255, i32 16)
  %call.i41 = call fastcc zeroext i1 @rate_control_cap_mask(ptr noundef %add.ptr.i, ptr noundef %38, ptr noundef %sta, ptr noundef nonnull %mask.i, ptr noundef nonnull %mcs_mask.i, ptr noundef nonnull %vht_mask.i) #10
  br i1 %call.i41, label %if.end.i, label %if.then3.rate_control_apply_mask.exit_crit_edge

if.then3.rate_control_apply_mask.exit_crit_edge:  ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %rate_control_apply_mask.exit

if.end.i:                                         ; preds = %if.then3
  %width.i = getelementptr i8, ptr %vif, i32 112
  %49 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %width.i, align 4
  br i1 %cmp16161.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.rate_control_apply_mask.exit_crit_edge

if.end.i.rate_control_apply_mask.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rate_control_apply_mask.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %if.end5.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.031.i = phi i32 [ %inc.i47, %if.end5.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i42 = getelementptr %struct.ieee80211_tx_rate, ptr %dest, i32 %i.031.i
  %51 = ptrtoint ptr %arrayidx.i42 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.i42, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %cmp2.i = icmp slt i8 %52, 0
  br i1 %cmp2.i, label %for.body.i.rate_control_apply_mask.exit_crit_edge, label %if.end5.i

for.body.i.rate_control_apply_mask.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rate_control_apply_mask.exit

if.end5.i:                                        ; preds = %for.body.i
  %flags.i43 = getelementptr %struct.ieee80211_tx_rate, ptr %dest, i32 %i.031.i, i32 1
  %53 = ptrtoint ptr %flags.i43 to i32
  call void @__asan_loadN_noabort(i32 %53, i32 2)
  %bf.load.i44 = load i16, ptr %flags.i43, align 1
  %bf.clear.i = and i16 %bf.load.i44, 2047
  %54 = ptrtoint ptr %rate_flags.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %bf.clear.i, ptr %rate_flags.i, align 2
  %55 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %mask.i, align 4
  call fastcc void @rate_idx_match_mask(ptr noundef %arrayidx.i42, ptr noundef nonnull %rate_flags.i, ptr noundef %38, i32 noundef %50, i32 noundef %56, ptr noundef nonnull %mcs_mask.i, ptr noundef nonnull %vht_mask.i) #10
  %57 = ptrtoint ptr %rate_flags.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %rate_flags.i, align 2
  %59 = ptrtoint ptr %flags.i43 to i32
  call void @__asan_loadN_noabort(i32 %59, i32 2)
  %bf.load13.i = load i16, ptr %flags.i43, align 1
  %bf.value.i45 = and i16 %58, 2047
  %bf.clear14.i = and i16 %bf.load13.i, -2048
  %bf.set.i46 = or i16 %bf.clear14.i, %bf.value.i45
  store i16 %bf.set.i46, ptr %flags.i43, align 1
  %inc.i47 = add nuw nsw i32 %i.031.i, 1
  %exitcond.not.i48 = icmp eq i32 %inc.i47, %max_rates
  br i1 %exitcond.not.i48, label %if.end5.i.rate_control_apply_mask.exit_crit_edge, label %if.end5.i.for.body.i_crit_edge

if.end5.i.for.body.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end5.i.rate_control_apply_mask.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rate_control_apply_mask.exit

rate_control_apply_mask.exit:                     ; preds = %if.end5.i.rate_control_apply_mask.exit_crit_edge, %for.body.i.rate_control_apply_mask.exit_crit_edge, %if.end.i.rate_control_apply_mask.exit_crit_edge, %if.then3.rate_control_apply_mask.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vht_mask.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rate_flags.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %mcs_mask.i) #10
  br label %if.end4

if.end4:                                          ; preds = %rate_control_apply_mask.exit, %ieee80211_is_tx_data.exit.if.end4_crit_edge
  %60 = ptrtoint ptr %dest to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %dest, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %cmp = icmp slt i8 %61, 0
  br i1 %cmp, label %if.then7, label %if.end4.if.end14_crit_edge

if.end4.if.end14_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %local, align 4
  %64 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %64)
  %bf.load11 = load i32, ptr %band, align 4
  %bf.lshr12 = lshr i32 %bf.load11, 29
  %arrayidx13 = getelementptr %struct.ieee80211_sub_if_data, ptr %add.ptr.i, i32 0, i32 50, i32 %bf.lshr12
  %65 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx13, align 4
  tail call fastcc void @__rate_control_send_low(ptr noundef %63, ptr noundef %38, ptr noundef %sta, ptr noundef %cb.i, i32 noundef %66)
  br label %if.end14

if.end14:                                         ; preds = %if.then7, %if.end4.if.end14_crit_edge
  br i1 %tobool.not.i, label %if.end14.cleanup_crit_edge, label %if.then16

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then16:                                        ; preds = %if.end14
  %flags.i49 = getelementptr inbounds %struct.ieee80211_tx_rate, ptr %dest, i32 0, i32 1
  %67 = ptrtoint ptr %flags.i49 to i32
  call void @__asan_loadN_noabort(i32 %67, i32 2)
  %bf.load.i50 = load i16, ptr %flags.i49, align 1
  %68 = and i16 %bf.load.i50, 264
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %tobool.not.i51 = icmp eq i16 %68, 0
  br i1 %tobool.not.i51, label %if.then.i52, label %if.then16.if.end33.i_crit_edge

if.then16.if.end33.i_crit_edge:                   ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i

if.then.i52:                                      ; preds = %if.then16
  %basic_rates1.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 24
  %69 = ptrtoint ptr %basic_rates1.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %basic_rates1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool2.not.i = icmp eq i32 %70, 0
  %71 = tail call i32 @llvm.cttz.i32(i32 %70, i1 true) #10, !range !103
  %72 = trunc i32 %71 to i8
  %conv3.i = select i1 %tobool2.not.i, i8 0, i8 %72
  %bitrates.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %38, i32 0, i32 1
  %73 = ptrtoint ptr %bitrates.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %bitrates.i, align 4
  %n_bitrates.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %38, i32 0, i32 4
  %75 = ptrtoint ptr %n_bitrates.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %n_bitrates.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp362.i = icmp sgt i32 %76, 0
  br i1 %cmp362.i, label %for.body.lr.ph.i53, label %if.then.i52.for.end.i_crit_edge

if.then.i52.for.end.i_crit_edge:                  ; preds = %if.then.i52
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.lr.ph.i53:                               ; preds = %if.then.i52
  %77 = ptrtoint ptr %dest to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %dest, align 1
  %idxprom.i = sext i8 %78 to i32
  %bitrate13.i = getelementptr %struct.ieee80211_rate, ptr %74, i32 %idxprom.i, i32 1
  br label %for.body.i54

for.body.i54:                                     ; preds = %for.inc.i.for.body.i54_crit_edge, %for.body.lr.ph.i53
  %i.0364.i = phi i32 [ 0, %for.body.lr.ph.i53 ], [ %inc.i56, %for.inc.i.for.body.i54_crit_edge ]
  %baserate.0363.i = phi i8 [ %conv3.i, %for.body.lr.ph.i53 ], [ %baserate.1.i, %for.inc.i.for.body.i54_crit_edge ]
  %shl.i = shl nuw i32 1, %i.0364.i
  %and7.i = and i32 %shl.i, %70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %for.body.i54.for.inc.i_crit_edge, label %if.end.i55

for.body.i54.for.inc.i_crit_edge:                 ; preds = %for.body.i54
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i55:                                       ; preds = %for.body.i54
  %bitrate.i = getelementptr %struct.ieee80211_rate, ptr %74, i32 %i.0364.i, i32 1
  %79 = ptrtoint ptr %bitrate.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %bitrate.i, align 4
  %81 = ptrtoint ptr %bitrate13.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %bitrate13.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %80, i16 %82)
  %cmp15.i = icmp ugt i16 %80, %82
  br i1 %cmp15.i, label %if.end.i55.for.inc.i_crit_edge, label %if.end18.i

if.end.i55.for.inc.i_crit_edge:                   ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end18.i:                                       ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #12
  %idxprom20.i = sext i8 %baserate.0363.i to i32
  %bitrate22.i = getelementptr %struct.ieee80211_rate, ptr %74, i32 %idxprom20.i, i32 1
  %83 = ptrtoint ptr %bitrate22.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %bitrate22.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %84, i16 %80)
  %cmp28.i = icmp ult i16 %84, %80
  %conv31.i = trunc i32 %i.0364.i to i8
  %spec.select360.i = select i1 %cmp28.i, i8 %conv31.i, i8 %baserate.0363.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end18.i, %if.end.i55.for.inc.i_crit_edge, %for.body.i54.for.inc.i_crit_edge
  %baserate.1.i = phi i8 [ %baserate.0363.i, %if.end.i55.for.inc.i_crit_edge ], [ %baserate.0363.i, %for.body.i54.for.inc.i_crit_edge ], [ %spec.select360.i, %if.end18.i ]
  %inc.i56 = add nuw nsw i32 %i.0364.i, 1
  %exitcond.not.i57 = icmp eq i32 %inc.i56, %76
  br i1 %exitcond.not.i57, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i54_crit_edge

for.inc.i.for.body.i54_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i54

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then.i52.for.end.i_crit_edge
  %baserate.0.lcssa.i = phi i8 [ %conv3.i, %if.then.i52.for.end.i_crit_edge ], [ %baserate.1.i, %for.inc.i.for.end.i_crit_edge ]
  %rts_cts_rate_idx.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %85 = ptrtoint ptr %rts_cts_rate_idx.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %baserate.0.lcssa.i, ptr %rts_cts_rate_idx.i, align 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %for.end.i, %if.then16.if.end33.i_crit_edge
  br i1 %cmp16161.i, label %for.body37.lr.ph.i, label %if.end33.i.cleanup_crit_edge

if.end33.i.cleanup_crit_edge:                     ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body37.lr.ph.i:                               ; preds = %if.end33.i
  %use_cts_prot.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 21
  %n_bitrates172.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %38, i32 0, i32 4
  %bitrates230.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %38, i32 0, i32 1
  br label %for.body37.i

for.body37.i:                                     ; preds = %for.inc288.i.for.body37.i_crit_edge, %for.body37.lr.ph.i
  %inval.0.off0369.i = phi i1 [ false, %for.body37.lr.ph.i ], [ %inval.1.off0.i, %for.inc288.i.for.body37.i_crit_edge ]
  %i.1367.i = phi i32 [ 0, %for.body37.lr.ph.i ], [ %inc289.i, %for.inc288.i.for.body37.i_crit_edge ]
  %arrayidx40.i58 = getelementptr %struct.ieee80211_tx_rate, ptr %dest, i32 %i.1367.i
  br i1 %inval.0.off0369.i, label %if.then39.i59, label %if.end42.i

if.then39.i59:                                    ; preds = %for.body37.i
  call void @__sanitizer_cov_trace_pc() #12
  %86 = ptrtoint ptr %arrayidx40.i58 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 -1, ptr %arrayidx40.i58, align 1
  br label %for.inc288.i

if.end42.i:                                       ; preds = %for.body37.i
  %87 = ptrtoint ptr %arrayidx40.i58 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx40.i58, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %cmp46.i = icmp slt i8 %88, 0
  br i1 %cmp46.i, label %if.end42.i.for.inc288.i_crit_edge, label %if.end49.i

if.end42.i.for.inc288.i_crit_edge:                ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc288.i

if.end49.i:                                       ; preds = %if.end42.i
  %flags51.i = getelementptr %struct.ieee80211_tx_rate, ptr %dest, i32 %i.1367.i, i32 1
  %89 = ptrtoint ptr %flags51.i to i32
  call void @__asan_loadN_noabort(i32 %89, i32 2)
  %bf.load52.i = load i16, ptr %flags51.i, align 1
  %bf.clear53.i = and i16 %bf.load52.i, 2047
  %conv54.i = zext i16 %bf.clear53.i to i32
  %and55.i = and i32 %conv54.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i)
  %tobool56.not.i = icmp eq i32 %and55.i, 0
  br i1 %tobool56.not.i, label %if.end105.i, label %if.then57.i

if.then57.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 76, i8 %88)
  %cmp61.i = icmp ugt i8 %88, 76
  br i1 %cmp61.i, label %do.end.i, label %if.then57.i.if.end77.i_crit_edge, !prof !99

if.then57.i.if.end77.i_crit_edge:                 ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77.i

do.end.i:                                         ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 667, i32 noundef 9, ptr noundef null) #10
  br label %if.end77.i

if.end77.i:                                       ; preds = %do.end.i, %if.then57.i.if.end77.i_crit_edge
  %90 = ptrtoint ptr %flags51.i to i32
  call void @__asan_loadN_noabort(i32 %90, i32 2)
  %bf.load86.i = load i16, ptr %flags51.i, align 1
  %91 = and i16 %bf.load86.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %91)
  %tobool90.not.i = icmp eq i16 %91, 0
  br i1 %tobool90.not.i, label %land.lhs.true.i60, label %if.end77.i.for.inc288.i_crit_edge

if.end77.i.for.inc288.i_crit_edge:                ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc288.i

land.lhs.true.i60:                                ; preds = %if.end77.i
  %92 = ptrtoint ptr %use_cts_prot.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %bf.load91.i = load i8, ptr %use_cts_prot.i, align 1
  %93 = and i8 %bf.load91.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool94.not.i = icmp eq i8 %93, 0
  br i1 %tobool94.not.i, label %land.lhs.true.i60.for.inc288.i_crit_edge, label %if.then95.i

land.lhs.true.i60.for.inc288.i_crit_edge:         ; preds = %land.lhs.true.i60
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc288.i

if.then95.i:                                      ; preds = %land.lhs.true.i60
  call void @__sanitizer_cov_trace_pc() #12
  %bf.set.i61 = or i16 %bf.load86.i, 2
  %94 = ptrtoint ptr %flags51.i to i32
  call void @__asan_storeN_noabort(i32 %94, i32 2)
  store i16 %bf.set.i61, ptr %flags51.i, align 1
  br label %for.inc288.i

if.end105.i:                                      ; preds = %if.end49.i
  %and111.i = and i32 %conv54.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111.i)
  %tobool112.not.i62 = icmp eq i32 %and111.i, 0
  br i1 %tobool112.not.i62, label %if.end148.i, label %if.then113.i

if.then113.i:                                     ; preds = %if.end105.i
  %95 = and i8 %88, 14
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %95)
  %cmp117.i = icmp ugt i8 %95, 9
  br i1 %cmp117.i, label %do.end134.i, label %if.then113.i.for.inc288.i_crit_edge, !prof !99

if.then113.i.for.inc288.i_crit_edge:              ; preds = %if.then113.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc288.i

do.end134.i:                                      ; preds = %if.then113.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 677, i32 noundef 9, ptr noundef null) #10
  br label %for.inc288.i

if.end148.i:                                      ; preds = %if.end105.i
  %96 = ptrtoint ptr %use_cts_prot.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %bf.load149.i = load i8, ptr %use_cts_prot.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load149.i)
  %tobool151.not.i = icmp sgt i8 %bf.load149.i, -1
  br i1 %tobool151.not.i, label %if.end148.i.if.end168.i_crit_edge, label %if.then152.i

if.end148.i.if.end168.i_crit_edge:                ; preds = %if.end148.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end168.i

if.then152.i:                                     ; preds = %if.end148.i
  call void @__sanitizer_cov_trace_pc() #12
  %bf.set163.i = or i16 %bf.load52.i, 1
  %97 = ptrtoint ptr %flags51.i to i32
  call void @__asan_storeN_noabort(i32 %97, i32 2)
  store i16 %bf.set163.i, ptr %flags51.i, align 1
  %98 = ptrtoint ptr %use_cts_prot.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %bf.load165.i = load i8, ptr %use_cts_prot.i, align 1
  %bf.clear166.i = and i8 %bf.load165.i, -65
  store i8 %bf.clear166.i, ptr %use_cts_prot.i, align 1
  br label %if.end168.i

if.end168.i:                                      ; preds = %if.then152.i, %if.end148.i.if.end168.i_crit_edge
  %99 = ptrtoint ptr %arrayidx40.i58 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx40.i58, align 1
  %conv171.i = sext i8 %100 to i32
  %101 = ptrtoint ptr %n_bitrates172.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %n_bitrates172.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %conv171.i)
  %cmp173.not.i = icmp sgt i32 %102, %conv171.i
  br i1 %cmp173.not.i, label %if.end229.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end168.i
  %.b359.i = load i1, ptr @rate_fixup_ratelist.__already_done, align 1
  br i1 %.b359.i, label %land.rhs.i.if.then226.i_crit_edge, label %if.then190.i, !prof !101

land.rhs.i.if.then226.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then226.i

if.then190.i:                                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rate_fixup_ratelist.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 688, i32 noundef 9, ptr noundef null) #10
  br label %if.then226.i

if.then226.i:                                     ; preds = %if.then190.i, %land.rhs.i.if.then226.i_crit_edge
  %103 = ptrtoint ptr %arrayidx40.i58 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 -1, ptr %arrayidx40.i58, align 1
  br label %for.inc288.i

if.end229.i:                                      ; preds = %if.end168.i
  %104 = ptrtoint ptr %bitrates230.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %bitrates230.i, align 4
  %arrayidx234.i = getelementptr %struct.ieee80211_rate, ptr %105, i32 %conv171.i
  %106 = ptrtoint ptr %use_cts_prot.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %bf.load235.i = load i8, ptr %use_cts_prot.i, align 1
  %107 = and i8 %bf.load235.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool239.not.i = icmp eq i8 %107, 0
  br i1 %tobool239.not.i, label %if.end229.i.if.end256.i_crit_edge, label %land.lhs.true240.i

if.end229.i.if.end256.i_crit_edge:                ; preds = %if.end229.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end256.i

land.lhs.true240.i:                               ; preds = %if.end229.i
  %108 = ptrtoint ptr %arrayidx234.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx234.i, align 4
  %and242.i = and i32 %109, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and242.i)
  %tobool243.not.i = icmp eq i32 %and242.i, 0
  br i1 %tobool243.not.i, label %land.lhs.true240.i.if.end256.i_crit_edge, label %if.then244.i

land.lhs.true240.i.if.end256.i_crit_edge:         ; preds = %land.lhs.true240.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end256.i

if.then244.i:                                     ; preds = %land.lhs.true240.i
  call void @__sanitizer_cov_trace_pc() #12
  %110 = ptrtoint ptr %flags51.i to i32
  call void @__asan_loadN_noabort(i32 %110, i32 2)
  %bf.load247.i = load i16, ptr %flags51.i, align 1
  %bf.set255.i = or i16 %bf.load247.i, 4
  store i16 %bf.set255.i, ptr %flags51.i, align 1
  br label %if.end256.i

if.end256.i:                                      ; preds = %if.then244.i, %land.lhs.true240.i.if.end256.i_crit_edge, %if.end229.i.if.end256.i_crit_edge
  %111 = ptrtoint ptr %flags51.i to i32
  call void @__asan_loadN_noabort(i32 %111, i32 2)
  %bf.load259.i = load i16, ptr %flags51.i, align 1
  %112 = and i16 %bf.load259.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %112)
  %tobool263.not.i = icmp eq i16 %112, 0
  br i1 %tobool263.not.i, label %land.lhs.true264.i, label %if.end256.i.for.inc288.i_crit_edge

if.end256.i.for.inc288.i_crit_edge:               ; preds = %if.end256.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc288.i

land.lhs.true264.i:                               ; preds = %if.end256.i
  %113 = ptrtoint ptr %use_cts_prot.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %bf.load266.i = load i8, ptr %use_cts_prot.i, align 1
  %114 = and i8 %bf.load266.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool270.not.i = icmp eq i8 %114, 0
  br i1 %tobool270.not.i, label %land.lhs.true264.i.for.inc288.i_crit_edge, label %land.lhs.true271.i

land.lhs.true264.i.for.inc288.i_crit_edge:        ; preds = %land.lhs.true264.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc288.i

land.lhs.true271.i:                               ; preds = %land.lhs.true264.i
  %115 = ptrtoint ptr %arrayidx234.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx234.i, align 4
  %and273.i = and i32 %116, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and273.i)
  %tobool274.not.i = icmp eq i32 %and273.i, 0
  br i1 %tobool274.not.i, label %land.lhs.true271.i.for.inc288.i_crit_edge, label %if.then275.i

land.lhs.true271.i.for.inc288.i_crit_edge:        ; preds = %land.lhs.true271.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc288.i

if.then275.i:                                     ; preds = %land.lhs.true271.i
  call void @__sanitizer_cov_trace_pc() #12
  %bf.set286.i = or i16 %bf.load259.i, 2
  %117 = ptrtoint ptr %flags51.i to i32
  call void @__asan_storeN_noabort(i32 %117, i32 2)
  store i16 %bf.set286.i, ptr %flags51.i, align 1
  br label %for.inc288.i

for.inc288.i:                                     ; preds = %if.then275.i, %land.lhs.true271.i.for.inc288.i_crit_edge, %land.lhs.true264.i.for.inc288.i_crit_edge, %if.end256.i.for.inc288.i_crit_edge, %if.then226.i, %do.end134.i, %if.then113.i.for.inc288.i_crit_edge, %if.then95.i, %land.lhs.true.i60.for.inc288.i_crit_edge, %if.end77.i.for.inc288.i_crit_edge, %if.end42.i.for.inc288.i_crit_edge, %if.then39.i59
  %inval.1.off0.i = phi i1 [ true, %if.then39.i59 ], [ false, %if.end77.i.for.inc288.i_crit_edge ], [ false, %if.then95.i ], [ false, %land.lhs.true.i60.for.inc288.i_crit_edge ], [ false, %if.then226.i ], [ false, %if.end256.i.for.inc288.i_crit_edge ], [ false, %if.then275.i ], [ false, %land.lhs.true271.i.for.inc288.i_crit_edge ], [ false, %land.lhs.true264.i.for.inc288.i_crit_edge ], [ true, %if.end42.i.for.inc288.i_crit_edge ], [ false, %do.end134.i ], [ false, %if.then113.i.for.inc288.i_crit_edge ]
  %inc289.i = add nuw nsw i32 %i.1367.i, 1
  %exitcond370.not.i = icmp eq i32 %inc289.i, %max_rates
  br i1 %exitcond370.not.i, label %for.inc288.i.cleanup_crit_edge, label %for.inc288.i.for.body37.i_crit_edge

for.inc288.i.for.body37.i_crit_edge:              ; preds = %for.inc288.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body37.i

for.inc288.i.cleanup_crit_edge:                   ; preds = %for.inc288.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc288.i.cleanup_crit_edge, %if.end33.i.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %rate_control_fill_sta_table.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__rate_control_send_low(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %sband, ptr noundef %sta, ptr nocapture noundef %info, i32 noundef %rate_mask) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %width.i = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %switch.selectcmp.i = icmp eq i32 %1, 7
  %switch.select.i = select i1 %switch.selectcmp.i, i32 64, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %switch.selectcmp2.i = icmp eq i32 %1, 6
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 32, i32 %switch.select.i
  %band = getelementptr inbounds %struct.ieee80211_supported_band, ptr %sband, i32 0, i32 2
  %2 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %band, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.if.end12_crit_edge [
    i32 4, label %if.then
    i32 0, label %land.lhs.true
  ]

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 2
  %flags = getelementptr inbounds %struct.ieee80211_tx_rate, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %bf.load = load i16, ptr %flags, align 1
  %bf.set = or i16 %bf.load, 256
  store i16 %bf.set, ptr %flags, align 1
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %5, align 8
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %info, align 8
  %and = lshr i32 %9, 23
  %10 = and i32 %and, 16
  %11 = or i32 %10, %switch.select3.i
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true, %entry.if.end12_crit_edge
  %rate_flags.0 = phi i32 [ %switch.select3.i, %entry.if.end12_crit_edge ], [ %11, %land.lhs.true ]
  %12 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %12, align 8
  %n_bitrates = getelementptr inbounds %struct.ieee80211_supported_band, ptr %sband, i32 0, i32 4
  %14 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n_bitrates, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp16146 = icmp sgt i32 %15, 0
  br i1 %cmp16146, label %for.body.lr.ph, label %if.end12.for.end_crit_edge

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end12
  %bitrates = getelementptr inbounds %struct.ieee80211_supported_band, ptr %sband, i32 0, i32 1
  %cmp.i = icmp eq ptr %sta, null
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0147 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.0147
  %and18 = and i32 %shl, %rate_mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %for.body.for.inc_crit_edge, label %if.end21

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end21:                                         ; preds = %for.body
  %16 = ptrtoint ptr %bitrates to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bitrates, align 4
  %arrayidx22 = getelementptr %struct.ieee80211_rate, ptr %17, i32 %i.0147
  %18 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx22, align 4
  %and24 = and i32 %19, %rate_flags.0
  call void @__sanitizer_cov_trace_cmp4(i32 %and24, i32 %rate_flags.0)
  %cmp25.not = icmp eq i32 %and24, %rate_flags.0
  br i1 %cmp25.not, label %if.end28, label %if.end21.for.inc_crit_edge

if.end21.for.inc_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end28:                                         ; preds = %if.end21
  br i1 %cmp.i, label %if.end28.if.end33_crit_edge, label %rate_supported.exit

if.end28.if.end33_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

rate_supported.exit:                              ; preds = %if.end28
  %20 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %band, align 4
  %arrayidx.i = getelementptr [6 x i32], ptr %sta, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 4
  %24 = and i32 %23, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool31.not = icmp eq i32 %24, 0
  br i1 %tobool31.not, label %rate_supported.exit.for.inc_crit_edge, label %rate_supported.exit.if.end33_crit_edge

rate_supported.exit.if.end33_crit_edge:           ; preds = %rate_supported.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

rate_supported.exit.for.inc_crit_edge:            ; preds = %rate_supported.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end33:                                         ; preds = %rate_supported.exit.if.end33_crit_edge, %if.end28.if.end33_crit_edge
  %conv34 = trunc i32 %i.0147 to i8
  %25 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv34, ptr %12, align 8
  br label %for.end

for.inc:                                          ; preds = %rate_supported.exit.for.inc_crit_edge, %if.end21.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0147, 1
  %exitcond.not = icmp eq i32 %inc, %15
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end33, %if.end12.for.end_crit_edge
  %i.0144 = phi i32 [ %i.0147, %if.end33 ], [ 0, %if.end12.for.end_crit_edge ], [ %15, %for.inc.for.end_crit_edge ]
  %26 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %n_bitrates, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0144, i32 %27)
  %cmp39 = icmp eq i32 %i.0144, %27
  br i1 %cmp39, label %land.rhs, label %for.end.if.end80_crit_edge

for.end.if.end80_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

land.rhs:                                         ; preds = %for.end
  %.b139 = load i1, ptr @__rate_control_send_low.__already_done, align 1
  br i1 %.b139, label %land.rhs.if.end80_crit_edge, label %if.then49, !prof !101

land.rhs.if.end80_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.then49:                                        ; preds = %land.rhs
  store i1 true, ptr @__rate_control_send_low.__already_done, align 1
  %tobool59.not = icmp eq ptr %sta, null
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  %cond = select i1 %tobool59.not, ptr null, ptr %addr
  br i1 %tobool59.not, label %if.then49.cond.end65_crit_edge, label %cond.true61

if.then49.cond.end65_crit_edge:                   ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end65

cond.true61:                                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %band, align 4
  %arrayidx63 = getelementptr [6 x i32], ptr %sta, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx63, align 4
  br label %cond.end65

cond.end65:                                       ; preds = %cond.true61, %if.then49.cond.end65_crit_edge
  %cond66 = phi i32 [ %31, %cond.true61 ], [ -1, %if.then49.cond.end65_crit_edge ]
  %32 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %band, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.19, ptr noundef %cond, i32 noundef %cond66, i32 noundef %33, i32 noundef %rate_mask, i32 noundef %rate_flags.0) #10
  br label %if.end80

if.end80:                                         ; preds = %cond.end65, %land.rhs.if.end80_crit_edge, %for.end.if.end80_crit_edge
  %34 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %info, align 8
  %and89 = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %cond.false92, label %if.end80.cond.end94_crit_edge

if.end80.cond.end94_crit_edge:                    ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end94

cond.false92:                                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  %max_rate_tries = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 16
  %36 = ptrtoint ptr %max_rate_tries to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %max_rate_tries, align 1
  %phi.bo = zext i8 %37 to i16
  %phi.bo138 = shl i16 %phi.bo, 11
  br label %cond.end94

cond.end94:                                       ; preds = %cond.false92, %if.end80.cond.end94_crit_edge
  %cond95 = phi i16 [ %phi.bo138, %cond.false92 ], [ 2048, %if.end80.cond.end94_crit_edge ]
  %count = getelementptr inbounds %struct.ieee80211_tx_rate, ptr %12, i32 0, i32 1
  %38 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %bf.load99 = load i16, ptr %count, align 1
  %bf.clear101 = and i16 %bf.load99, 2047
  %bf.set102 = or i16 %bf.clear101, %cond95
  store i16 %bf.set102, ptr %count, align 1
  %skip_table = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 2, i32 1, i32 5
  %39 = ptrtoint ptr %skip_table to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load103 = load i8, ptr %skip_table, align 1
  %bf.set105 = or i8 %bf.load103, 16
  store i8 %bf.set105, ptr %skip_table, align 1
  br label %cleanup

cleanup:                                          ; preds = %cond.end94, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rate_control_get_rate(ptr noundef %sdata, ptr noundef %sta, ptr noundef %txrc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %local = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local, align 4
  %rate_ctrl = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 58
  %2 = ptrtoint ptr %rate_ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rate_ctrl, align 8
  %skb = getelementptr inbounds %struct.ieee80211_tx_rate_control, ptr %txrc, i32 0, i32 3
  %4 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skb, align 4
  %6 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %6, align 1
  %flags = getelementptr %struct.sk_buff, ptr %5, i32 0, i32 3, i32 9
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 0, ptr %flags, align 1
  %arrayidx.1 = getelementptr %struct.sk_buff, ptr %5, i32 0, i32 3, i32 11
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %arrayidx.1, align 1
  %flags.1 = getelementptr %struct.sk_buff, ptr %5, i32 0, i32 3, i32 12
  %10 = ptrtoint ptr %flags.1 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 0, ptr %flags.1, align 1
  %arrayidx.2 = getelementptr %struct.sk_buff, ptr %5, i32 0, i32 3, i32 14
  %11 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %arrayidx.2, align 1
  %flags.2 = getelementptr %struct.sk_buff, ptr %5, i32 0, i32 3, i32 15
  %12 = ptrtoint ptr %flags.2 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 0, ptr %flags.2, align 1
  %arrayidx.3 = getelementptr %struct.sk_buff, ptr %5, i32 0, i32 3, i32 17
  %13 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %arrayidx.3, align 1
  %flags.3 = getelementptr %struct.sk_buff, ptr %5, i32 0, i32 3, i32 18
  %14 = ptrtoint ptr %flags.3 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 0, ptr %flags.3, align 1
  %tobool.not = icmp eq ptr %sta, null
  %sta8 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48
  %spec.select = select i1 %tobool.not, ptr null, ptr %sta8
  %call9 = tail call fastcc zeroext i1 @rate_control_send_low(ptr noundef %spec.select, ptr noundef %txrc)
  br i1 %call9, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %local, align 4
  %flags.i = getelementptr inbounds %struct.ieee80211_hw, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags.i, align 4
  %19 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.i.not = icmp eq i32 %19, 0
  br i1 %tobool.i.not, label %if.end13, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end
  br i1 %tobool.not, label %if.end13.if.else_crit_edge, label %land.lhs.true

if.end13.if.else_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %if.end13
  %_flags.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 24
  %20 = ptrtoint ptr %_flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %_flags.i, align 4
  %22 = and i32 %21, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool16.not = icmp eq i32 %22, 0
  %tobool20.not = icmp eq ptr %sta8, null
  %or.cond = select i1 %tobool16.not, i1 true, i1 %tobool20.not
  br i1 %or.cond, label %land.lhs.true.if.else_crit_edge, label %if.then21

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %rate_ctrl_priv = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 11
  %23 = ptrtoint ptr %rate_ctrl_priv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rate_ctrl_priv, align 8
  %rate_ctrl_lock = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %rate_ctrl_lock) #10
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 4
  %get_rate = getelementptr inbounds %struct.rate_control_ops, ptr %26, i32 0, i32 11
  %27 = ptrtoint ptr %get_rate to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %get_rate, align 4
  %priv = getelementptr inbounds %struct.rate_control_ref, ptr %3, i32 0, i32 1
  %29 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %priv, align 4
  tail call void %28(ptr noundef %30, ptr noundef nonnull %sta8, ptr noundef %24, ptr noundef %txrc) #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %rate_ctrl_lock) #10
  br label %if.end24

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end13.if.else_crit_edge
  %call23 = tail call fastcc zeroext i1 @rate_control_send_low(ptr noundef null, ptr noundef %txrc)
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then21
  %ista.065 = phi ptr [ null, %if.else ], [ %sta8, %if.then21 ]
  %31 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %local, align 4
  %flags.i60 = getelementptr inbounds %struct.ieee80211_hw, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %flags.i60 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %flags.i60, align 4
  %35 = and i32 %34, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.i61.not = icmp eq i32 %35, 0
  br i1 %tobool.i61.not, label %if.end29, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %vif = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59
  %36 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %skb, align 4
  tail call void @ieee80211_get_tx_rates(ptr noundef %vif, ptr noundef %ista.065, ptr noundef %37, ptr noundef %6, i32 noundef 4)
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end24.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @rate_control_send_low(ptr noundef %pubsta, ptr nocapture noundef readonly %txrc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %skb = getelementptr inbounds %struct.ieee80211_tx_rate_control, ptr %txrc, i32 0, i32 3
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %sband1 = getelementptr inbounds %struct.ieee80211_tx_rate_control, ptr %txrc, i32 0, i32 1
  %2 = ptrtoint ptr %sband1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sband1, align 4
  %tobool.not = icmp eq ptr %pubsta, null
  br i1 %tobool.not, label %land.lhs.true.critedge, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cb.i, align 8
  %and.i = and i32 %5, 536870916
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.rhs.i, label %lor.lhs.false.if.else.critedge_crit_edge

lor.lhs.false.if.else.critedge_crit_edge:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.critedge

lor.rhs.i:                                        ; preds = %lor.lhs.false
  %and.i.i = and i32 %5, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %rc_no_data_or_no_ack_use_min.exit, label %lor.rhs.i.cleanup_crit_edge

lor.rhs.i.cleanup_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

rc_no_data_or_no_ack_use_min.exit:                ; preds = %lor.rhs.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %7, align 2
  %10 = and i16 %9, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %10)
  %cmp.i.i.i.not = icmp eq i16 %10, 2048
  br i1 %cmp.i.i.i.not, label %rc_no_data_or_no_ack_use_min.exit.cleanup_crit_edge, label %rc_no_data_or_no_ack_use_min.exit.if.else.critedge_crit_edge

rc_no_data_or_no_ack_use_min.exit.if.else.critedge_crit_edge: ; preds = %rc_no_data_or_no_ack_use_min.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.critedge

rc_no_data_or_no_ack_use_min.exit.cleanup_crit_edge: ; preds = %rc_no_data_or_no_ack_use_min.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.critedge:                           ; preds = %entry
  %11 = ptrtoint ptr %txrc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %txrc, align 4
  %rate_idx_mask.c43 = getelementptr inbounds %struct.ieee80211_tx_rate_control, ptr %txrc, i32 0, i32 7
  %13 = ptrtoint ptr %rate_idx_mask.c43 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rate_idx_mask.c43, align 4
  tail call fastcc void @__rate_control_send_low(ptr noundef %12, ptr noundef %3, ptr noundef null, ptr noundef %cb.i, i32 noundef %14)
  %bss = getelementptr inbounds %struct.ieee80211_tx_rate_control, ptr %txrc, i32 0, i32 9
  %15 = ptrtoint ptr %bss to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bss, align 4, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool4.not = icmp eq i8 %16, 0
  br i1 %tobool4.not, label %land.lhs.true.critedge.cleanup_crit_edge, label %if.then5

land.lhs.true.critedge.cleanup_crit_edge:         ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then5:                                         ; preds = %land.lhs.true.critedge
  %bss_conf = getelementptr inbounds %struct.ieee80211_tx_rate_control, ptr %txrc, i32 0, i32 2
  %17 = ptrtoint ptr %bss_conf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bss_conf, align 4
  %band = getelementptr inbounds %struct.ieee80211_supported_band, ptr %3, i32 0, i32 2
  %19 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %band, align 4
  %arrayidx = getelementptr %struct.ieee80211_bss_conf, ptr %18, i32 0, i32 26, i32 %20
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp = icmp sgt i32 %22, 0
  br i1 %cmp, label %if.then7, label %if.then5.if.then17_crit_edge

if.then5.if.then17_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %23 = trunc i32 %22 to i8
  %conv = add i8 %23, -1
  %24 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv, ptr %24, align 8
  br label %cleanup

if.else.critedge:                                 ; preds = %rc_no_data_or_no_ack_use_min.exit.if.else.critedge_crit_edge, %lor.lhs.false.if.else.critedge_crit_edge
  %26 = ptrtoint ptr %txrc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %txrc, align 4
  %rate_idx_mask.c = getelementptr inbounds %struct.ieee80211_tx_rate_control, ptr %txrc, i32 0, i32 7
  %28 = ptrtoint ptr %rate_idx_mask.c to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rate_idx_mask.c, align 4
  tail call fastcc void @__rate_control_send_low(ptr noundef %27, ptr noundef %3, ptr noundef nonnull %pubsta, ptr noundef %cb.i, i32 noundef %29)
  %sdata = getelementptr i8, ptr %pubsta, i32 -2676
  %30 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sdata, align 4
  %vif = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %31, i32 0, i32 59
  %32 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %33)
  %cmp.i = icmp eq i32 %33, 7
  br i1 %cmp.i, label %if.else.critedge.if.then17_crit_edge, label %if.else.critedge.cleanup_crit_edge

if.else.critedge.cleanup_crit_edge:               ; preds = %if.else.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else.critedge.if.then17_crit_edge:             ; preds = %if.else.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17

if.then17:                                        ; preds = %if.else.critedge.if.then17_crit_edge, %if.then5.if.then17_crit_edge
  %34 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  %bss_conf20 = getelementptr inbounds %struct.ieee80211_tx_rate_control, ptr %txrc, i32 0, i32 2
  %35 = ptrtoint ptr %bss_conf20 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bss_conf20, align 4
  %basic_rates = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %36, i32 0, i32 24
  %37 = ptrtoint ptr %basic_rates to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %basic_rates, align 8
  %band.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %3, i32 0, i32 2
  %39 = ptrtoint ptr %band.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %band.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %40)
  %cmp.i45 = icmp eq i32 %40, 4
  br i1 %cmp.i45, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 9
  %41 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %bf.load.i = load i16, ptr %flags.i, align 1
  %bf.set.i = or i16 %bf.load.i, 256
  store i16 %bf.set.i, ptr %flags.i, align 1
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp4.i = icmp eq i32 %38, 0
  br i1 %cmp4.i, label %if.end.i.cleanup_crit_edge, label %if.end7.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i
  %42 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp10.i = icmp slt i8 %43, 0
  br i1 %cmp10.i, label %if.end7.i.cleanup_crit_edge, label %if.end13.i

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13.i:                                       ; preds = %if.end7.i
  %conv942.i = zext i8 %43 to i32
  %shl.i = shl nuw i32 1, %conv942.i
  %and.i46 = and i32 %shl.i, %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i46)
  %tobool.not.i47 = icmp eq i32 %and.i46, 0
  br i1 %tobool.not.i47, label %for.cond.preheader.i, label %if.end13.i.cleanup_crit_edge

if.end13.i.cleanup_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.end13.i
  %n_bitrates.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %3, i32 0, i32 4
  %44 = ptrtoint ptr %n_bitrates.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %n_bitrates.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.preheader.i
  %i.0.in.i = phi i8 [ %i.0.i, %for.body.i.for.cond.i_crit_edge ], [ %43, %for.cond.preheader.i ]
  %i.0.i = add i8 %i.0.in.i, 1
  %conv21.i = zext i8 %i.0.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %conv21.i)
  %cmp22.not.i = icmp slt i32 %45, %conv21.i
  br i1 %cmp22.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %shl25.i = shl nuw i32 1, %conv21.i
  %and26.i = and i32 %shl25.i, %38
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.cleanup.sink.split.i_crit_edge

for.body.i.cleanup.sink.split.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

cleanup.sink.split.i:                             ; preds = %for.body.i.cleanup.sink.split.i_crit_edge, %if.then.i
  %i.0.lcssa45.sink.i = phi i8 [ 0, %if.then.i ], [ %i.0.i, %for.body.i.cleanup.sink.split.i_crit_edge ]
  %46 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %i.0.lcssa45.sink.i, ptr %34, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split.i, %for.cond.i.cleanup_crit_edge, %if.end13.i.cleanup_crit_edge, %if.end7.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.else.critedge.cleanup_crit_edge, %if.then7, %land.lhs.true.critedge.cleanup_crit_edge, %rc_no_data_or_no_ack_use_min.exit.cleanup_crit_edge, %lor.rhs.i.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.then7 ], [ true, %if.else.critedge.cleanup_crit_edge ], [ true, %land.lhs.true.critedge.cleanup_crit_edge ], [ false, %rc_no_data_or_no_ack_use_min.exit.cleanup_crit_edge ], [ true, %if.end.i.cleanup_crit_edge ], [ true, %if.end7.i.cleanup_crit_edge ], [ true, %if.end13.i.cleanup_crit_edge ], [ true, %cleanup.sink.split.i ], [ false, %lor.rhs.i.cleanup_crit_edge ], [ true, %for.cond.i.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rate_control_set_rates(ptr noundef %hw, ptr noundef %pubsta, ptr noundef %rates) #0 align 64 {
entry:
  %mask.i = alloca i32, align 4
  %mcs_mask.i = alloca [10 x i8], align 1
  %vht_mask.i = alloca [8 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %pubsta, i32 -2720
  %sdata = getelementptr i8, ptr %pubsta, i32 -2676
  %0 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdata, align 4
  %local1.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %local1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %local1.i, align 4
  %4 = tail call i32 @llvm.read_register.i32(metadata !88) #10
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !98
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 696, ptr noundef nonnull @.str.14) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %chanctx_conf2.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 59, i32 9
  %8 = ptrtoint ptr %chanctx_conf2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %chanctx_conf2.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end9.i_crit_edge

rcu_read_lock.exit.i.do.end9.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.do.end9.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.do.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %.b19.i = load i1, ptr @ieee80211_get_sband.__warned, align 1
  br i1 %.b19.i, label %land.lhs.true6.i.do.end9.i_crit_edge, label %if.then.i

land.lhs.true6.i.do.end9.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i

if.then.i:                                        ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ieee80211_get_sband.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 1505, ptr noundef nonnull @.str.1) #10
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.then.i, %land.lhs.true6.i.do.end9.i_crit_edge, %land.lhs.true.i.do.end9.i_crit_edge, %rcu_read_lock.exit.i.do.end9.i_crit_edge
  %tobool11.not.i = icmp eq ptr %9, null
  br i1 %tobool11.not.i, label %if.then12.i, label %if.end13.i

if.then12.i:                                      ; preds = %do.end9.i
  %call.i20.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i20.i, label %if.then12.i.ieee80211_get_sband.exit.thread_crit_edge, label %land.lhs.true.i23.i

if.then12.i.ieee80211_get_sband.exit.thread_crit_edge: ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ieee80211_get_sband.exit.thread

land.lhs.true.i23.i:                              ; preds = %if.then12.i
  %call1.i21.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i21.i)
  %tobool.not.i22.i = icmp eq i32 %call1.i21.i, 0
  br i1 %tobool.not.i22.i, label %land.lhs.true.i23.i.ieee80211_get_sband.exit.thread_crit_edge, label %land.lhs.true2.i25.i

land.lhs.true.i23.i.ieee80211_get_sband.exit.thread_crit_edge: ; preds = %land.lhs.true.i23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ieee80211_get_sband.exit.thread

land.lhs.true2.i25.i:                             ; preds = %land.lhs.true.i23.i
  %.b4.i24.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i24.i, label %land.lhs.true2.i25.i.ieee80211_get_sband.exit.thread_crit_edge, label %if.then.i26.i

land.lhs.true2.i25.i.ieee80211_get_sband.exit.thread_crit_edge: ; preds = %land.lhs.true2.i25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ieee80211_get_sband.exit.thread

if.then.i26.i:                                    ; preds = %land.lhs.true2.i25.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.15) #10
  br label %ieee80211_get_sband.exit.thread

ieee80211_get_sband.exit.thread:                  ; preds = %if.then.i26.i, %land.lhs.true2.i25.i.ieee80211_get_sband.exit.thread_crit_edge, %land.lhs.true.i23.i.ieee80211_get_sband.exit.thread_crit_edge, %if.then12.i.ieee80211_get_sband.exit.thread_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !100
  %10 = tail call i32 @llvm.read_register.i32(metadata !88) #10
  %and.i.i.i.i.i27.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i27.i to ptr
  %preempt_count.i.i.i.i28.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i28.i, align 4
  %sub.i.i.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i28.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %cleanup

if.end13.i:                                       ; preds = %do.end9.i
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %9, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %call.i29.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i29.i, label %if.end13.i.ieee80211_get_sband.exit_crit_edge, label %land.lhs.true.i32.i

if.end13.i.ieee80211_get_sband.exit_crit_edge:    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ieee80211_get_sband.exit

land.lhs.true.i32.i:                              ; preds = %if.end13.i
  %call1.i30.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i30.i)
  %tobool.not.i31.i = icmp eq i32 %call1.i30.i, 0
  br i1 %tobool.not.i31.i, label %land.lhs.true.i32.i.ieee80211_get_sband.exit_crit_edge, label %land.lhs.true2.i34.i

land.lhs.true.i32.i.ieee80211_get_sband.exit_crit_edge: ; preds = %land.lhs.true.i32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ieee80211_get_sband.exit

land.lhs.true2.i34.i:                             ; preds = %land.lhs.true.i32.i
  %.b4.i33.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i33.i, label %land.lhs.true2.i34.i.ieee80211_get_sband.exit_crit_edge, label %if.then.i35.i

land.lhs.true2.i34.i.ieee80211_get_sband.exit_crit_edge: ; preds = %land.lhs.true2.i34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ieee80211_get_sband.exit

if.then.i35.i:                                    ; preds = %land.lhs.true2.i34.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.15) #10
  br label %ieee80211_get_sband.exit

ieee80211_get_sband.exit:                         ; preds = %if.then.i35.i, %land.lhs.true2.i34.i.ieee80211_get_sband.exit_crit_edge, %land.lhs.true.i32.i.ieee80211_get_sband.exit_crit_edge, %if.end13.i.ieee80211_get_sband.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !100
  %18 = tail call i32 @llvm.read_register.i32(metadata !88) #10
  %and.i.i.i.i.i36.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i36.i to ptr
  %preempt_count.i.i.i.i37.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i37.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i37.i, align 4
  %sub.i.i.i38.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i38.i, ptr %preempt_count.i.i.i.i37.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %3, i32 0, i32 1
  %22 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wiphy.i, align 8
  %arrayidx.i = getelementptr %struct.wiphy, ptr %23, i32 0, i32 53, i32 %17
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %25, null
  br i1 %tobool.not, label %ieee80211_get_sband.exit.cleanup_crit_edge, label %if.end

ieee80211_get_sband.exit.cleanup_crit_edge:       ; preds = %ieee80211_get_sband.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %ieee80211_get_sband.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i) #10
  %26 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %mask.i, align 4, !annotation !102
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %mcs_mask.i) #10
  %27 = call ptr @memset(ptr %mcs_mask.i, i32 255, i32 10)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %vht_mask.i) #10
  %28 = call ptr @memset(ptr %vht_mask.i, i32 255, i32 16)
  %29 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sdata, align 4
  %call.i72 = call fastcc zeroext i1 @rate_control_cap_mask(ptr noundef %30, ptr noundef nonnull %25, ptr noundef %pubsta, ptr noundef nonnull %mask.i, ptr noundef nonnull %mcs_mask.i, ptr noundef nonnull %vht_mask.i) #10
  br i1 %call.i72, label %if.end.i, label %if.end.rate_control_apply_mask_ratetbl.exit_crit_edge

if.end.rate_control_apply_mask_ratetbl.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rate_control_apply_mask_ratetbl.exit

if.end.i:                                         ; preds = %if.end
  %31 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sdata, align 4
  %width.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %32, i32 0, i32 59, i32 1, i32 32, i32 1
  %33 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %width.i, align 4
  %arrayidx.i73 = getelementptr %struct.ieee80211_sta_rates, ptr %rates, i32 0, i32 1, i32 0
  %35 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.i73, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp4.i = icmp slt i8 %36, 0
  br i1 %cmp4.i, label %if.end.i.rate_control_apply_mask_ratetbl.exit_crit_edge, label %if.end7.i

if.end.i.rate_control_apply_mask_ratetbl.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rate_control_apply_mask_ratetbl.exit

if.end7.i:                                        ; preds = %if.end.i
  %flags.i = getelementptr %struct.ieee80211_sta_rates, ptr %rates, i32 0, i32 1, i32 0, i32 4
  %37 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mask.i, align 4
  call fastcc void @rate_idx_match_mask(ptr noundef %arrayidx.i73, ptr noundef %flags.i, ptr noundef nonnull %25, i32 noundef %34, i32 noundef %38, ptr noundef nonnull %mcs_mask.i, ptr noundef nonnull %vht_mask.i) #10
  %arrayidx.1.i = getelementptr %struct.ieee80211_sta_rates, ptr %rates, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp4.1.i = icmp slt i8 %40, 0
  br i1 %cmp4.1.i, label %if.end7.i.rate_control_apply_mask_ratetbl.exit_crit_edge, label %if.end7.1.i

if.end7.i.rate_control_apply_mask_ratetbl.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rate_control_apply_mask_ratetbl.exit

if.end7.1.i:                                      ; preds = %if.end7.i
  %flags.1.i = getelementptr %struct.ieee80211_sta_rates, ptr %rates, i32 0, i32 1, i32 1, i32 4
  call fastcc void @rate_idx_match_mask(ptr noundef %arrayidx.1.i, ptr noundef %flags.1.i, ptr noundef nonnull %25, i32 noundef %34, i32 noundef %38, ptr noundef nonnull %mcs_mask.i, ptr noundef nonnull %vht_mask.i) #10
  %arrayidx.2.i = getelementptr %struct.ieee80211_sta_rates, ptr %rates, i32 0, i32 1, i32 2
  %41 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp4.2.i = icmp slt i8 %42, 0
  br i1 %cmp4.2.i, label %if.end7.1.i.rate_control_apply_mask_ratetbl.exit_crit_edge, label %if.end7.2.i

if.end7.1.i.rate_control_apply_mask_ratetbl.exit_crit_edge: ; preds = %if.end7.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rate_control_apply_mask_ratetbl.exit

if.end7.2.i:                                      ; preds = %if.end7.1.i
  %flags.2.i = getelementptr %struct.ieee80211_sta_rates, ptr %rates, i32 0, i32 1, i32 2, i32 4
  call fastcc void @rate_idx_match_mask(ptr noundef %arrayidx.2.i, ptr noundef %flags.2.i, ptr noundef nonnull %25, i32 noundef %34, i32 noundef %38, ptr noundef nonnull %mcs_mask.i, ptr noundef nonnull %vht_mask.i) #10
  %arrayidx.3.i = getelementptr %struct.ieee80211_sta_rates, ptr %rates, i32 0, i32 1, i32 3
  %43 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.3.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp4.3.i = icmp slt i8 %44, 0
  br i1 %cmp4.3.i, label %if.end7.2.i.rate_control_apply_mask_ratetbl.exit_crit_edge, label %if.end7.3.i

if.end7.2.i.rate_control_apply_mask_ratetbl.exit_crit_edge: ; preds = %if.end7.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rate_control_apply_mask_ratetbl.exit

if.end7.3.i:                                      ; preds = %if.end7.2.i
  call void @__sanitizer_cov_trace_pc() #12
  %flags.3.i = getelementptr %struct.ieee80211_sta_rates, ptr %rates, i32 0, i32 1, i32 3, i32 4
  call fastcc void @rate_idx_match_mask(ptr noundef %arrayidx.3.i, ptr noundef %flags.3.i, ptr noundef nonnull %25, i32 noundef %34, i32 noundef %38, ptr noundef nonnull %mcs_mask.i, ptr noundef nonnull %vht_mask.i) #10
  br label %rate_control_apply_mask_ratetbl.exit

rate_control_apply_mask_ratetbl.exit:             ; preds = %if.end7.3.i, %if.end7.2.i.rate_control_apply_mask_ratetbl.exit_crit_edge, %if.end7.1.i.rate_control_apply_mask_ratetbl.exit_crit_edge, %if.end7.i.rate_control_apply_mask_ratetbl.exit_crit_edge, %if.end.i.rate_control_apply_mask_ratetbl.exit_crit_edge, %if.end.rate_control_apply_mask_ratetbl.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vht_mask.i) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %mcs_mask.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #10
  %rates2 = getelementptr inbounds %struct.ieee80211_sta, ptr %pubsta, i32 0, i32 16
  %45 = ptrtoint ptr %rates2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rates2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !105
  %47 = ptrtoint ptr %rates2 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %rates, ptr %rates2, align 4
  %tobool40.not = icmp eq ptr %46, null
  br i1 %tobool40.not, label %rate_control_apply_mask_ratetbl.exit.if.end51_crit_edge, label %do.end47

rate_control_apply_mask_ratetbl.exit.if.end51_crit_edge: ; preds = %rate_control_apply_mask_ratetbl.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

do.end47:                                         ; preds = %rate_control_apply_mask_ratetbl.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kvfree_call_rcu(ptr noundef nonnull %46, ptr noundef null) #10
  br label %if.end51

if.end51:                                         ; preds = %do.end47, %rate_control_apply_mask_ratetbl.exit.if.end51_crit_edge
  %uploaded = getelementptr i8, ptr %pubsta, i32 -2460
  %48 = ptrtoint ptr %uploaded to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %uploaded, align 4, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool52.not = icmp eq i8 %49, 0
  br i1 %tobool52.not, label %if.end51.if.end56_crit_edge, label %if.then53

if.end51.if.end56_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.then53:                                        ; preds = %if.end51
  %50 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sdata, align 4
  %vif.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %51, i32 0, i32 59
  %52 = ptrtoint ptr %vif.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %vif.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %53)
  %cmp.i.i = icmp eq i32 %53, 4
  br i1 %cmp.i.i, label %if.then.i.i74, label %if.then53.get_bss_sdata.exit.i_crit_edge

if.then53.get_bss_sdata.exit.i_crit_edge:         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_bss_sdata.exit.i

if.then.i.i74:                                    ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  %bss.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %51, i32 0, i32 49
  %54 = ptrtoint ptr %bss.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bss.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %55, i32 -2552
  br label %get_bss_sdata.exit.i

get_bss_sdata.exit.i:                             ; preds = %if.then.i.i74, %if.then53.get_bss_sdata.exit.i_crit_edge
  %sdata.addr.0.i.i = phi ptr [ %add.ptr.i.i, %if.then.i.i74 ], [ %51, %if.then53.get_bss_sdata.exit.i_crit_edge ]
  %flags.i75 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.addr.0.i.i, i32 0, i32 8
  %56 = ptrtoint ptr %flags.i75 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags.i75, align 8
  %and.i = and i32 %57, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i76 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i76, label %land.rhs.i, label %if.end48.i

land.rhs.i:                                       ; preds = %get_bss_sdata.exit.i
  %.b69.i = load i1, ptr @drv_sta_rate_tbl_update.__already_done, align 1
  br i1 %.b69.i, label %land.rhs.i.if.end56_crit_edge, label %return.critedge.i, !prof !101

land.rhs.i.if.end56_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.end48.i:                                       ; preds = %get_bss_sdata.exit.i
  tail call fastcc void @trace_drv_sta_rate_tbl_update(ptr noundef %hw, ptr noundef %sdata.addr.0.i.i, ptr noundef %pubsta) #10
  %ops.i = getelementptr inbounds %struct.ieee80211_local, ptr %hw, i32 0, i32 8
  %58 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops.i, align 4
  %sta_rate_tbl_update.i = getelementptr inbounds %struct.ieee80211_ops, ptr %59, i32 0, i32 39
  %60 = ptrtoint ptr %sta_rate_tbl_update.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sta_rate_tbl_update.i, align 4
  %tobool49.not.i = icmp eq ptr %61, null
  br i1 %tobool49.not.i, label %if.end48.i.if.end53.i_crit_edge, label %if.then50.i

if.end48.i.if.end53.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53.i

if.then50.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #12
  %vif.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.addr.0.i.i, i32 0, i32 59
  tail call void %61(ptr noundef %hw, ptr noundef %vif.i, ptr noundef %pubsta) #10
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then50.i, %if.end48.i.if.end53.i_crit_edge
  tail call fastcc void @trace_drv_return_void(ptr noundef %hw) #10
  br label %if.end56

return.critedge.i:                                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @drv_sta_rate_tbl_update.__already_done, align 1
  %dev.c.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.addr.0.i.i, i32 0, i32 6
  %62 = ptrtoint ptr %dev.c.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev.c.i, align 8
  %tobool18.not.c.i = icmp eq ptr %63, null
  %name20.c.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.addr.0.i.i, i32 0, i32 10
  %cond.c.i = select i1 %tobool18.not.c.i, ptr %name20.c.i, ptr %63
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 545, i32 noundef 9, ptr noundef nonnull @.str.22, ptr noundef %cond.c.i, i32 noundef %57) #10
  br label %if.end56

if.end56:                                         ; preds = %return.critedge.i, %if.end53.i, %land.rhs.i.if.end56_crit_edge, %if.end51.if.end56_crit_edge
  %call57 = tail call i32 @sta_get_expected_throughput(ptr noundef %add.ptr) #10
  tail call void @ieee80211_sta_set_expected_throughput(ptr noundef %pubsta, i32 noundef %call57) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %ieee80211_get_sband.exit.cleanup_crit_edge, %ieee80211_get_sband.exit.thread
  %retval.0 = phi i32 [ 0, %if.end56 ], [ -22, %ieee80211_get_sband.exit.cleanup_crit_edge ], [ -22, %ieee80211_get_sband.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sta_set_expected_throughput(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sta_get_expected_throughput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_init_rate_ctrl_alg(ptr noundef %local, ptr noundef readonly %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b140 = load i1, ptr @ieee80211_init_rate_ctrl_alg.__already_done, align 1
  br i1 %.b140, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !101

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ieee80211_init_rate_ctrl_alg.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 972, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str, i32 noundef 972) #10
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %open_count = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 13
  %0 = ptrtoint ptr %open_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %open_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool37.not = icmp eq i32 %1, 0
  br i1 %tobool37.not, label %if.end39, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end39:                                         ; preds = %if.end29
  %flags.i = getelementptr inbounds %struct.ieee80211_hw, ptr %local, i32 0, i32 4
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags.i, align 4
  %4 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %if.end78, label %if.then41

if.then41:                                        ; preds = %if.end39
  %ops = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 8
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %set_rts_threshold = getelementptr inbounds %struct.ieee80211_ops, ptr %6, i32 0, i32 30
  %7 = ptrtoint ptr %set_rts_threshold to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %set_rts_threshold, align 4
  %tobool43.not = icmp eq ptr %8, null
  br i1 %tobool43.not, label %do.end61, label %if.then41.cleanup_crit_edge, !prof !99

if.then41.cleanup_crit_edge:                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end61:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 978, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end78:                                         ; preds = %if.end39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 8) #14
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.end78.do.end84_crit_edge, label %if.end.i

if.end78.do.end84_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end84

if.end.i:                                         ; preds = %if.end78
  tail call void @kernel_param_lock(ptr noundef null) #10
  %tobool.not.i.i = icmp eq ptr %name, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.if.end.i.i.i_crit_edge

if.end.i.if.end.i.i.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

if.end.i.i:                                       ; preds = %if.end.i
  %10 = load ptr, ptr @ieee80211_default_rc_algo, align 4
  %tobool.not.i.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.if.then7.i.i_crit_edge, label %if.end.i.i.if.end.i.i.i_crit_edge

if.end.i.i.if.end.i.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

if.end.i.i.if.then7.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i.i

if.end.i.i.i:                                     ; preds = %if.end.i.i.if.end.i.i.i_crit_edge, %if.end.i.if.end.i.i.i_crit_edge
  %alg_name.045.i.i = phi ptr [ %10, %if.end.i.i.if.end.i.i.i_crit_edge ], [ %name, %if.end.i.if.end.i.i.i_crit_edge ]
  tail call void @mutex_lock_nested(ptr noundef nonnull @rate_ctrl_mutex, i32 noundef 0) #10
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %if.end.i.i.i
  %alg.0.in.i.i.i = phi ptr [ @rate_ctrl_algs, %if.end.i.i.i ], [ %alg.0.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ]
  %11 = ptrtoint ptr %alg.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %alg.0.i.i.i = load ptr, ptr %alg.0.in.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %alg.0.i.i.i, @rate_ctrl_algs
  br i1 %cmp.not.i.i.i, label %for.cond.i.i.i.ieee80211_try_rate_control_ops_get.exit.i.i_crit_edge, label %for.body.i.i.i

for.cond.i.i.i.ieee80211_try_rate_control_ops_get.exit.i.i_crit_edge: ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ieee80211_try_rate_control_ops_get.exit.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %ops1.i.i.i = getelementptr inbounds %struct.rate_control_alg, ptr %alg.0.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %ops1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops1.i.i.i, align 4
  %name2.i.i.i = getelementptr inbounds %struct.rate_control_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %name2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name2.i.i.i, align 4
  %call.i.i.i = tail call i32 @strcmp(ptr noundef %15, ptr noundef nonnull %alg_name.045.i.i) #15
  %tobool3.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %for.body.i.i.i.ieee80211_try_rate_control_ops_get.exit.i.i_crit_edge, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i.i

for.body.i.i.i.ieee80211_try_rate_control_ops_get.exit.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ieee80211_try_rate_control_ops_get.exit.i.i

ieee80211_try_rate_control_ops_get.exit.i.i:      ; preds = %for.body.i.i.i.ieee80211_try_rate_control_ops_get.exit.i.i_crit_edge, %for.cond.i.i.i.ieee80211_try_rate_control_ops_get.exit.i.i_crit_edge
  %ops.0.i.i.i = phi ptr [ null, %for.cond.i.i.i.ieee80211_try_rate_control_ops_get.exit.i.i_crit_edge ], [ %13, %for.body.i.i.i.ieee80211_try_rate_control_ops_get.exit.i.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @rate_ctrl_mutex) #10
  %tobool1.not.i.i = icmp ne ptr %ops.0.i.i.i, null
  %brmerge.i.i = or i1 %tobool.not.i.i, %tobool1.not.i.i
  br i1 %brmerge.i.i, label %ieee80211_try_rate_control_ops_get.exit.i.i.if.end5.i.i_crit_edge, label %if.then3.i.i

ieee80211_try_rate_control_ops_get.exit.i.i.if.end5.i.i_crit_edge: ; preds = %ieee80211_try_rate_control_ops_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i.i

if.then3.i.i:                                     ; preds = %ieee80211_try_rate_control_ops_get.exit.i.i
  %16 = load ptr, ptr @ieee80211_default_rc_algo, align 4
  %tobool.not.i14.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i14.i.i, label %if.then3.i.i.if.then7.i.i_crit_edge, label %if.end.i15.i.i

if.then3.i.i.if.then7.i.i_crit_edge:              ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i.i

if.end.i15.i.i:                                   ; preds = %if.then3.i.i
  tail call void @mutex_lock_nested(ptr noundef nonnull @rate_ctrl_mutex, i32 noundef 0) #10
  br label %for.cond.i19.i.i

for.cond.i19.i.i:                                 ; preds = %for.body.i24.i.i.for.cond.i19.i.i_crit_edge, %if.end.i15.i.i
  %alg.0.in.i16.i.i = phi ptr [ @rate_ctrl_algs, %if.end.i15.i.i ], [ %alg.0.i17.i.i, %for.body.i24.i.i.for.cond.i19.i.i_crit_edge ]
  %17 = ptrtoint ptr %alg.0.in.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %alg.0.i17.i.i = load ptr, ptr %alg.0.in.i16.i.i, align 4
  %cmp.not.i18.i.i = icmp eq ptr %alg.0.i17.i.i, @rate_ctrl_algs
  br i1 %cmp.not.i18.i.i, label %for.cond.i19.i.i.for.end.i26.i.i_crit_edge, label %for.body.i24.i.i

for.cond.i19.i.i.for.end.i26.i.i_crit_edge:       ; preds = %for.cond.i19.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i26.i.i

for.body.i24.i.i:                                 ; preds = %for.cond.i19.i.i
  %ops1.i20.i.i = getelementptr inbounds %struct.rate_control_alg, ptr %alg.0.i17.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %ops1.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops1.i20.i.i, align 4
  %name2.i21.i.i = getelementptr inbounds %struct.rate_control_ops, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %name2.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name2.i21.i.i, align 4
  %call.i22.i.i = tail call i32 @strcmp(ptr noundef %21, ptr noundef nonnull %16) #15
  %tobool3.not.i23.i.i = icmp eq i32 %call.i22.i.i, 0
  br i1 %tobool3.not.i23.i.i, label %for.body.i24.i.i.for.end.i26.i.i_crit_edge, label %for.body.i24.i.i.for.cond.i19.i.i_crit_edge

for.body.i24.i.i.for.cond.i19.i.i_crit_edge:      ; preds = %for.body.i24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i19.i.i

for.body.i24.i.i.for.end.i26.i.i_crit_edge:       ; preds = %for.body.i24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i26.i.i

for.end.i26.i.i:                                  ; preds = %for.body.i24.i.i.for.end.i26.i.i_crit_edge, %for.cond.i19.i.i.for.end.i26.i.i_crit_edge
  %ops.0.i25.i.i = phi ptr [ null, %for.cond.i19.i.i.for.end.i26.i.i_crit_edge ], [ %19, %for.body.i24.i.i.for.end.i26.i.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @rate_ctrl_mutex) #10
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %for.end.i26.i.i, %ieee80211_try_rate_control_ops_get.exit.i.i.if.end5.i.i_crit_edge
  %ops.0.i.i = phi ptr [ %ops.0.i.i.i, %ieee80211_try_rate_control_ops_get.exit.i.i.if.end5.i.i_crit_edge ], [ %ops.0.i25.i.i, %for.end.i26.i.i ]
  %tobool6.not.i.i = icmp eq ptr %ops.0.i.i, null
  br i1 %tobool6.not.i.i, label %if.end5.i.i.if.then7.i.i_crit_edge, label %ieee80211_rate_control_ops_get.exit.thread.i

if.end5.i.i.if.then7.i.i_crit_edge:               ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i.i

ieee80211_rate_control_ops_get.exit.thread.i:     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kernel_param_unlock(ptr noundef null) #10
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %ops.0.i.i, ptr %call7.i.i, align 8
  br label %if.end5.i

if.then7.i.i:                                     ; preds = %if.end5.i.i.if.then7.i.i_crit_edge, %if.then3.i.i.if.then7.i.i_crit_edge, %if.end.i.i.if.then7.i.i_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @rate_ctrl_mutex, i32 noundef 0) #10
  br label %for.cond.i33.i.i

for.cond.i33.i.i:                                 ; preds = %for.body.i38.i.i.for.cond.i33.i.i_crit_edge, %if.then7.i.i
  %alg.0.in.i30.i.i = phi ptr [ @rate_ctrl_algs, %if.then7.i.i ], [ %alg.0.i31.i.i, %for.body.i38.i.i.for.cond.i33.i.i_crit_edge ]
  %23 = ptrtoint ptr %alg.0.in.i30.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %alg.0.i31.i.i = load ptr, ptr %alg.0.in.i30.i.i, align 4
  %cmp.not.i32.i.i = icmp eq ptr %alg.0.i31.i.i, @rate_ctrl_algs
  br i1 %cmp.not.i32.i.i, label %for.cond.i33.i.i.ieee80211_rate_control_ops_get.exit.i_crit_edge, label %for.body.i38.i.i

for.cond.i33.i.i.ieee80211_rate_control_ops_get.exit.i_crit_edge: ; preds = %for.cond.i33.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ieee80211_rate_control_ops_get.exit.i

for.body.i38.i.i:                                 ; preds = %for.cond.i33.i.i
  %ops1.i34.i.i = getelementptr inbounds %struct.rate_control_alg, ptr %alg.0.i31.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %ops1.i34.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops1.i34.i.i, align 4
  %name2.i35.i.i = getelementptr inbounds %struct.rate_control_ops, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %name2.i35.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %name2.i35.i.i, align 4
  %call.i36.i.i = tail call i32 @strcmp(ptr noundef %27, ptr noundef nonnull dereferenceable(12) @.str.12) #15
  %tobool3.not.i37.i.i = icmp eq i32 %call.i36.i.i, 0
  br i1 %tobool3.not.i37.i.i, label %for.body.i38.i.i.ieee80211_rate_control_ops_get.exit.i_crit_edge, label %for.body.i38.i.i.for.cond.i33.i.i_crit_edge

for.body.i38.i.i.for.cond.i33.i.i_crit_edge:      ; preds = %for.body.i38.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i33.i.i

for.body.i38.i.i.ieee80211_rate_control_ops_get.exit.i_crit_edge: ; preds = %for.body.i38.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ieee80211_rate_control_ops_get.exit.i

ieee80211_rate_control_ops_get.exit.i:            ; preds = %for.body.i38.i.i.ieee80211_rate_control_ops_get.exit.i_crit_edge, %for.cond.i33.i.i.ieee80211_rate_control_ops_get.exit.i_crit_edge
  %ops.0.i39.i.i = phi ptr [ null, %for.cond.i33.i.i.ieee80211_rate_control_ops_get.exit.i_crit_edge ], [ %25, %for.body.i38.i.i.ieee80211_rate_control_ops_get.exit.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @rate_ctrl_mutex) #10
  tail call void @kernel_param_unlock(ptr noundef null) #10
  %28 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %ops.0.i39.i.i, ptr %call7.i.i, align 8
  %tobool3.not.i = icmp eq ptr %ops.0.i39.i.i, null
  br i1 %tobool3.not.i, label %ieee80211_rate_control_ops_get.exit.i.free.i_crit_edge, label %ieee80211_rate_control_ops_get.exit.i.if.end5.i_crit_edge

ieee80211_rate_control_ops_get.exit.i.if.end5.i_crit_edge: ; preds = %ieee80211_rate_control_ops_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

ieee80211_rate_control_ops_get.exit.i.free.i_crit_edge: ; preds = %ieee80211_rate_control_ops_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %free.i

if.end5.i:                                        ; preds = %ieee80211_rate_control_ops_get.exit.i.if.end5.i_crit_edge, %ieee80211_rate_control_ops_get.exit.thread.i
  %ops.1.i21.i = phi ptr [ %ops.0.i.i, %ieee80211_rate_control_ops_get.exit.thread.i ], [ %ops.0.i39.i.i, %ieee80211_rate_control_ops_get.exit.i.if.end5.i_crit_edge ]
  %alloc.i = getelementptr inbounds %struct.rate_control_ops, ptr %ops.1.i21.i, i32 0, i32 2
  %29 = ptrtoint ptr %alloc.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %alloc.i, align 4
  %call7.i = tail call ptr %30(ptr noundef %local) #10
  %priv.i = getelementptr inbounds %struct.rate_control_ref, ptr %call7.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i, ptr %priv.i, align 4
  %tobool9.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool9.not.i, label %if.end5.i.free.i_crit_edge, label %if.end86

if.end5.i.free.i_crit_edge:                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %free.i

free.i:                                           ; preds = %if.end5.i.free.i_crit_edge, %ieee80211_rate_control_ops_get.exit.i.free.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %do.end84

do.end84:                                         ; preds = %free.i, %if.end78.do.end84_crit_edge
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %local, i32 0, i32 1
  %32 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %33, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.4) #16
  br label %cleanup

if.end86:                                         ; preds = %if.end5.i
  %rate_ctrl = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 58
  %34 = ptrtoint ptr %rate_ctrl to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rate_ctrl, align 8
  %tobool88.not = icmp eq ptr %35, null
  br i1 %tobool88.not, label %if.end86.if.end110_crit_edge, label %do.end104, !prof !101

if.end86.if.end110_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end110

do.end104:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 990, i32 noundef 9, ptr noundef null) #10
  br label %if.end110

if.end110:                                        ; preds = %do.end104, %if.end86.if.end110_crit_edge
  %36 = ptrtoint ptr %rate_ctrl to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call7.i.i, ptr %rate_ctrl, align 8
  %wiphy123 = getelementptr inbounds %struct.ieee80211_hw, ptr %local, i32 0, i32 1
  %37 = ptrtoint ptr %wiphy123 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wiphy123, align 8
  %dev124 = getelementptr inbounds %struct.wiphy, ptr %38, i32 0, i32 56
  %39 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call7.i.i, align 8
  %name126 = getelementptr inbounds %struct.rate_control_ops, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %name126 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %name126, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.10, ptr noundef %dev124, ptr noundef nonnull @.str.9, ptr noundef %42) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end110, %do.end84, %do.end61, %if.then41.cleanup_crit_edge, %if.end29.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end110 ], [ -2, %do.end84 ], [ -16, %if.end29.cleanup_crit_edge ], [ -22, %do.end61 ], [ 0, %if.then41.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rate_control_deinitialize(ptr nocapture noundef %local) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rate_ctrl = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 58
  %0 = ptrtoint ptr %rate_ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rate_ctrl, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %rate_ctrl to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %rate_ctrl, align 8
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %free.i = getelementptr inbounds %struct.rate_control_ops, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %free.i, align 4
  %priv.i = getelementptr inbounds %struct.rate_control_ref, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv.i, align 4
  tail call void %6(ptr noundef %8) #10
  %debugfs.i = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 136
  %9 = ptrtoint ptr %debugfs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %debugfs.i, align 8
  tail call void @debugfs_remove(ptr noundef %10) #10
  %11 = ptrtoint ptr %debugfs.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %debugfs.i, align 8
  tail call void @kfree(ptr noundef nonnull %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @rate_control_cap_mask(ptr nocapture noundef readonly %sdata, ptr nocapture noundef readonly %sband, ptr noundef readonly %sta, ptr nocapture noundef %mask, ptr nocapture noundef %mcs_mask, ptr nocapture noundef %vht_mask) unnamed_addr #0 align 64 {
entry:
  %sta_vht_mask = alloca [8 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %band = getelementptr inbounds %struct.ieee80211_supported_band, ptr %sband, i32 0, i32 2
  %0 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %band, align 4
  %arrayidx = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 50, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %mask, align 4
  %width.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 32, i32 1
  %5 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %6)
  %switch.selectcmp.i = icmp eq i32 %6, 7
  %switch.select.i = select i1 %switch.selectcmp.i, i32 64, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %6)
  %switch.selectcmp2.i = icmp eq i32 %6, 6
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 32, i32 %switch.select.i
  %n_bitrates = getelementptr inbounds %struct.ieee80211_supported_band, ptr %sband, i32 0, i32 4
  %7 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %n_bitrates, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp107.not = icmp eq i32 %8, 0
  br i1 %cmp107.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %bitrates = getelementptr inbounds %struct.ieee80211_supported_band, ptr %sband, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0108 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %9 = ptrtoint ptr %bitrates to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bitrates, align 4
  %arrayidx1 = getelementptr %struct.ieee80211_rate, ptr %10, i32 %i.0108
  %11 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx1, align 4
  %and = and i32 %12, %switch.select3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %switch.select3.i)
  %cmp3.not = icmp eq i32 %and, %switch.select3.i
  br i1 %cmp3.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %shl = shl nuw i32 1, %i.0108
  %neg = xor i32 %shl, -1
  %13 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mask, align 4
  %and4 = and i32 %14, %neg
  store i32 %and4, ptr %mask, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0108, 1
  %15 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %n_bitrates, align 4
  %cmp = icmp ult i32 %inc, %16
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %16, %for.inc.for.end_crit_edge ]
  %17 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mask, align 4
  %notmask = shl nsw i32 -1, %.lcssa
  %sub = xor i32 %notmask, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %sub)
  %cmp7 = icmp eq i32 %18, %sub
  br i1 %cmp7, label %land.lhs.true, label %for.end.if.end15_crit_edge

for.end.if.end15_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

land.lhs.true:                                    ; preds = %for.end
  %19 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %band, align 4
  %arrayidx9 = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 51, i32 %20
  %21 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx9, align 1, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not = icmp eq i8 %22, 0
  br i1 %tobool.not, label %land.lhs.true10, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

land.lhs.true10:                                  ; preds = %land.lhs.true
  %arrayidx12 = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 53, i32 %20
  %23 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx12, align 1, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool13.not = icmp eq i8 %24, 0
  br i1 %tobool13.not, label %land.lhs.true10.cleanup_crit_edge, label %land.lhs.true10.if.end15_crit_edge

land.lhs.true10.if.end15_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

land.lhs.true10.cleanup_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true10.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge, %for.end.if.end15_crit_edge
  %25 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %band, align 4
  %arrayidx18 = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 51, i32 %26
  %27 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx18, align 1, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool19.not = icmp eq i8 %28, 0
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx22 = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 52, i32 %26
  %29 = call ptr @memcpy(ptr %mcs_mask, ptr %arrayidx22, i32 10)
  br label %if.end23

if.else:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %30 = call ptr @memset(ptr %mcs_mask, i32 255, i32 10)
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then20
  %31 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %band, align 4
  %arrayidx26 = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 53, i32 %32
  %33 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx26, align 1, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool27.not = icmp eq i8 %34, 0
  br i1 %tobool27.not, label %if.else32, label %if.then28

if.then28:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx30 = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 54, i32 %32
  %35 = call ptr @memcpy(ptr %vht_mask, ptr %arrayidx30, i32 16)
  br label %if.end33

if.else32:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %36 = call ptr @memset(ptr %vht_mask, i32 255, i32 16)
  br label %if.end33

if.end33:                                         ; preds = %if.else32, %if.then28
  %tobool34.not = icmp eq ptr %sta, null
  br i1 %tobool34.not, label %if.end33.cleanup_crit_edge, label %if.then35

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sta_vht_mask) #10
  %37 = getelementptr inbounds [8 x i16], ptr %sta_vht_mask, i32 0, i32 1
  %38 = getelementptr inbounds [8 x i16], ptr %sta_vht_mask, i32 0, i32 2
  %39 = getelementptr inbounds [8 x i16], ptr %sta_vht_mask, i32 0, i32 3
  %40 = getelementptr inbounds [8 x i16], ptr %sta_vht_mask, i32 0, i32 4
  %41 = getelementptr inbounds [8 x i16], ptr %sta_vht_mask, i32 0, i32 5
  %42 = getelementptr inbounds [8 x i16], ptr %sta_vht_mask, i32 0, i32 6
  %43 = getelementptr inbounds [8 x i16], ptr %sta_vht_mask, i32 0, i32 7
  %44 = call ptr @memset(ptr %sta_vht_mask, i32 255, i32 16)
  %45 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %band, align 4
  %arrayidx37 = getelementptr [6 x i32], ptr %sta, i32 0, i32 %46
  %47 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx37, align 4
  %49 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mask, align 4
  %and38 = and i32 %50, %48
  store i32 %and38, ptr %mask, align 4
  %mcs = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4
  %51 = ptrtoint ptr %mcs to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %mcs, align 1
  %53 = ptrtoint ptr %mcs_mask to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %mcs_mask, align 1
  %and45106 = and i8 %54, %52
  store i8 %and45106, ptr %mcs_mask, align 1
  %arrayidx42.1 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4, i32 0, i32 1
  %55 = ptrtoint ptr %arrayidx42.1 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx42.1, align 1
  %arrayidx43.1 = getelementptr i8, ptr %mcs_mask, i32 1
  %57 = ptrtoint ptr %arrayidx43.1 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx43.1, align 1
  %and45106.1 = and i8 %58, %56
  store i8 %and45106.1, ptr %arrayidx43.1, align 1
  %arrayidx42.2 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4, i32 0, i32 2
  %59 = ptrtoint ptr %arrayidx42.2 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx42.2, align 1
  %arrayidx43.2 = getelementptr i8, ptr %mcs_mask, i32 2
  %61 = ptrtoint ptr %arrayidx43.2 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx43.2, align 1
  %and45106.2 = and i8 %62, %60
  store i8 %and45106.2, ptr %arrayidx43.2, align 1
  %arrayidx42.3 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4, i32 0, i32 3
  %63 = ptrtoint ptr %arrayidx42.3 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx42.3, align 1
  %arrayidx43.3 = getelementptr i8, ptr %mcs_mask, i32 3
  %65 = ptrtoint ptr %arrayidx43.3 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx43.3, align 1
  %and45106.3 = and i8 %66, %64
  store i8 %and45106.3, ptr %arrayidx43.3, align 1
  %arrayidx42.4 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4, i32 0, i32 4
  %67 = ptrtoint ptr %arrayidx42.4 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx42.4, align 1
  %arrayidx43.4 = getelementptr i8, ptr %mcs_mask, i32 4
  %69 = ptrtoint ptr %arrayidx43.4 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx43.4, align 1
  %and45106.4 = and i8 %70, %68
  store i8 %and45106.4, ptr %arrayidx43.4, align 1
  %arrayidx42.5 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4, i32 0, i32 5
  %71 = ptrtoint ptr %arrayidx42.5 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx42.5, align 1
  %arrayidx43.5 = getelementptr i8, ptr %mcs_mask, i32 5
  %73 = ptrtoint ptr %arrayidx43.5 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx43.5, align 1
  %and45106.5 = and i8 %74, %72
  store i8 %and45106.5, ptr %arrayidx43.5, align 1
  %arrayidx42.6 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4, i32 0, i32 6
  %75 = ptrtoint ptr %arrayidx42.6 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx42.6, align 1
  %arrayidx43.6 = getelementptr i8, ptr %mcs_mask, i32 6
  %77 = ptrtoint ptr %arrayidx43.6 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx43.6, align 1
  %and45106.6 = and i8 %78, %76
  store i8 %and45106.6, ptr %arrayidx43.6, align 1
  %arrayidx42.7 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4, i32 0, i32 7
  %79 = ptrtoint ptr %arrayidx42.7 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx42.7, align 1
  %arrayidx43.7 = getelementptr i8, ptr %mcs_mask, i32 7
  %81 = ptrtoint ptr %arrayidx43.7 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx43.7, align 1
  %and45106.7 = and i8 %82, %80
  store i8 %and45106.7, ptr %arrayidx43.7, align 1
  %arrayidx42.8 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4, i32 0, i32 8
  %83 = ptrtoint ptr %arrayidx42.8 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx42.8, align 1
  %arrayidx43.8 = getelementptr i8, ptr %mcs_mask, i32 8
  %85 = ptrtoint ptr %arrayidx43.8 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx43.8, align 1
  %and45106.8 = and i8 %86, %84
  store i8 %and45106.8, ptr %arrayidx43.8, align 1
  %arrayidx42.9 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4, i32 0, i32 9
  %87 = ptrtoint ptr %arrayidx42.9 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx42.9, align 1
  %arrayidx43.9 = getelementptr i8, ptr %mcs_mask, i32 9
  %89 = ptrtoint ptr %arrayidx43.9 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx43.9, align 1
  %and45106.9 = and i8 %90, %88
  store i8 %and45106.9, ptr %arrayidx43.9, align 1
  %vht_mcs = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5, i32 2
  %91 = ptrtoint ptr %vht_mcs to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %vht_mcs, align 4
  call void @ieee80211_get_vht_mask_from_cap(i16 noundef zeroext %92, ptr noundef nonnull %sta_vht_mask) #10
  %93 = ptrtoint ptr %sta_vht_mask to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %sta_vht_mask, align 2
  %95 = ptrtoint ptr %vht_mask to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %vht_mask, align 2
  %and59105 = and i16 %96, %94
  store i16 %and59105, ptr %vht_mask, align 2
  %97 = ptrtoint ptr %37 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %37, align 2
  %arrayidx57.1 = getelementptr i16, ptr %vht_mask, i32 1
  %99 = ptrtoint ptr %arrayidx57.1 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %arrayidx57.1, align 2
  %and59105.1 = and i16 %100, %98
  store i16 %and59105.1, ptr %arrayidx57.1, align 2
  %101 = ptrtoint ptr %38 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %38, align 2
  %arrayidx57.2 = getelementptr i16, ptr %vht_mask, i32 2
  %103 = ptrtoint ptr %arrayidx57.2 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %arrayidx57.2, align 2
  %and59105.2 = and i16 %104, %102
  store i16 %and59105.2, ptr %arrayidx57.2, align 2
  %105 = ptrtoint ptr %39 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %39, align 2
  %arrayidx57.3 = getelementptr i16, ptr %vht_mask, i32 3
  %107 = ptrtoint ptr %arrayidx57.3 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %arrayidx57.3, align 2
  %and59105.3 = and i16 %108, %106
  store i16 %and59105.3, ptr %arrayidx57.3, align 2
  %109 = ptrtoint ptr %40 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %40, align 2
  %arrayidx57.4 = getelementptr i16, ptr %vht_mask, i32 4
  %111 = ptrtoint ptr %arrayidx57.4 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %arrayidx57.4, align 2
  %and59105.4 = and i16 %112, %110
  store i16 %and59105.4, ptr %arrayidx57.4, align 2
  %113 = ptrtoint ptr %41 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %41, align 2
  %arrayidx57.5 = getelementptr i16, ptr %vht_mask, i32 5
  %115 = ptrtoint ptr %arrayidx57.5 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %arrayidx57.5, align 2
  %and59105.5 = and i16 %116, %114
  store i16 %and59105.5, ptr %arrayidx57.5, align 2
  %117 = ptrtoint ptr %42 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %42, align 2
  %arrayidx57.6 = getelementptr i16, ptr %vht_mask, i32 6
  %119 = ptrtoint ptr %arrayidx57.6 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %arrayidx57.6, align 2
  %and59105.6 = and i16 %120, %118
  store i16 %and59105.6, ptr %arrayidx57.6, align 2
  %121 = ptrtoint ptr %43 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %43, align 2
  %arrayidx57.7 = getelementptr i16, ptr %vht_mask, i32 7
  %123 = ptrtoint ptr %arrayidx57.7 to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %arrayidx57.7, align 2
  %and59105.7 = and i16 %124, %122
  store i16 %and59105.7, ptr %arrayidx57.7, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sta_vht_mask) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %if.end33.cleanup_crit_edge, %land.lhs.true10.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %land.lhs.true10.cleanup_crit_edge ], [ true, %if.then35 ], [ true, %if.end33.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rate_idx_match_mask(ptr nocapture noundef %rate_idx, ptr nocapture noundef %rate_flags, ptr nocapture noundef readonly %sband, i32 noundef %chan_width, i32 noundef %mask, ptr nocapture noundef readonly %mcs_mask, ptr nocapture noundef readonly %vht_mask) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rate_flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %rate_flags, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %rate_idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rate_idx, align 1
  %conv.i = sext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.i = icmp slt i8 %3, 0
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %for.cond7.preheader.preheader.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.cond7.preheader.preheader.i:                  ; preds = %if.then
  %shr.i = ashr i32 %conv.i, 4
  %and.i = and i32 %conv.i, 15
  %arrayidx.i = getelementptr i16, ptr %vht_mask, i32 %shr.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i, align 2
  %conv11.i = zext i16 %5 to i32
  br label %for.body10.i

for.body10.i:                                     ; preds = %for.inc.i.for.body10.i_crit_edge, %for.cond7.preheader.preheader.i
  %j.079.i = phi i32 [ %and.i, %for.cond7.preheader.preheader.i ], [ %dec.i, %for.inc.i.for.body10.i_crit_edge ]
  %shl.i = shl nuw i32 1, %j.079.i
  %and12.i = and i32 %shl.i, %conv11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool.not.i, label %for.inc.i, label %for.body10.i.rate_idx_match_vht_mcs_mask.exit_crit_edge

for.body10.i.rate_idx_match_vht_mcs_mask.exit_crit_edge: ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rate_idx_match_vht_mcs_mask.exit

for.inc.i:                                        ; preds = %for.body10.i
  %dec.i = add nsw i32 %j.079.i, -1
  %cmp8.i = icmp sgt i32 %j.079.i, 0
  br i1 %cmp8.i, label %for.inc.i.for.body10.i_crit_edge, label %for.end.i

for.inc.i.for.body10.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body10.i

for.end.i:                                        ; preds = %for.inc.i
  %dec18.i = add nsw i32 %shr.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %3)
  %cmp5.i = icmp sgt i8 %3, 15
  br i1 %cmp5.i, label %for.cond7.preheader.i.1, label %for.end.i.for.end19.i_crit_edge

for.end.i.for.end19.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end19.i

for.cond7.preheader.i.1:                          ; preds = %for.end.i
  %arrayidx.i.1 = getelementptr i16, ptr %vht_mask, i32 %dec18.i
  %6 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.i.1, align 2
  %conv11.i.1 = zext i16 %7 to i32
  br label %for.body10.i.1

for.body10.i.1:                                   ; preds = %for.inc.i.1.for.body10.i.1_crit_edge, %for.cond7.preheader.i.1
  %j.079.i.1 = phi i32 [ 15, %for.cond7.preheader.i.1 ], [ %dec.i.1, %for.inc.i.1.for.body10.i.1_crit_edge ]
  %shl.i.1 = shl nuw i32 1, %j.079.i.1
  %and12.i.1 = and i32 %shl.i.1, %conv11.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.1)
  %tobool.not.i.1 = icmp eq i32 %and12.i.1, 0
  br i1 %tobool.not.i.1, label %for.inc.i.1, label %for.body10.i.1.rate_idx_match_vht_mcs_mask.exit_crit_edge

for.body10.i.1.rate_idx_match_vht_mcs_mask.exit_crit_edge: ; preds = %for.body10.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %rate_idx_match_vht_mcs_mask.exit

for.inc.i.1:                                      ; preds = %for.body10.i.1
  %dec.i.1 = add nsw i32 %j.079.i.1, -1
  %cmp8.i.1 = icmp sgt i32 %j.079.i.1, 0
  br i1 %cmp8.i.1, label %for.inc.i.1.for.body10.i.1_crit_edge, label %for.end.i.1

for.inc.i.1.for.body10.i.1_crit_edge:             ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body10.i.1

for.end.i.1:                                      ; preds = %for.inc.i.1
  %dec18.i.1 = add nsw i32 %shr.i, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %3)
  %cmp5.i.1 = icmp sgt i8 %3, 31
  br i1 %cmp5.i.1, label %for.cond7.preheader.i.2, label %for.end.i.1.for.end19.i_crit_edge

for.end.i.1.for.end19.i_crit_edge:                ; preds = %for.end.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end19.i

for.cond7.preheader.i.2:                          ; preds = %for.end.i.1
  %arrayidx.i.2 = getelementptr i16, ptr %vht_mask, i32 %dec18.i.1
  %8 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx.i.2, align 2
  %conv11.i.2 = zext i16 %9 to i32
  br label %for.body10.i.2

for.body10.i.2:                                   ; preds = %for.inc.i.2.for.body10.i.2_crit_edge, %for.cond7.preheader.i.2
  %j.079.i.2 = phi i32 [ 15, %for.cond7.preheader.i.2 ], [ %dec.i.2, %for.inc.i.2.for.body10.i.2_crit_edge ]
  %shl.i.2 = shl nuw i32 1, %j.079.i.2
  %and12.i.2 = and i32 %shl.i.2, %conv11.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.2)
  %tobool.not.i.2 = icmp eq i32 %and12.i.2, 0
  br i1 %tobool.not.i.2, label %for.inc.i.2, label %for.body10.i.2.rate_idx_match_vht_mcs_mask.exit_crit_edge

for.body10.i.2.rate_idx_match_vht_mcs_mask.exit_crit_edge: ; preds = %for.body10.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %rate_idx_match_vht_mcs_mask.exit

for.inc.i.2:                                      ; preds = %for.body10.i.2
  %dec.i.2 = add nsw i32 %j.079.i.2, -1
  %cmp8.i.2 = icmp sgt i32 %j.079.i.2, 0
  br i1 %cmp8.i.2, label %for.inc.i.2.for.body10.i.2_crit_edge, label %for.end.i.2

for.inc.i.2.for.body10.i.2_crit_edge:             ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body10.i.2

for.end.i.2:                                      ; preds = %for.inc.i.2
  %dec18.i.2 = add nsw i32 %shr.i, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %3)
  %cmp5.i.2 = icmp sgt i8 %3, 47
  br i1 %cmp5.i.2, label %for.cond7.preheader.i.3, label %for.end.i.2.for.end19.i_crit_edge

for.end.i.2.for.end19.i_crit_edge:                ; preds = %for.end.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end19.i

for.cond7.preheader.i.3:                          ; preds = %for.end.i.2
  %arrayidx.i.3 = getelementptr i16, ptr %vht_mask, i32 %dec18.i.2
  %10 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx.i.3, align 2
  %conv11.i.3 = zext i16 %11 to i32
  br label %for.body10.i.3

for.body10.i.3:                                   ; preds = %for.inc.i.3.for.body10.i.3_crit_edge, %for.cond7.preheader.i.3
  %j.079.i.3 = phi i32 [ 15, %for.cond7.preheader.i.3 ], [ %dec.i.3, %for.inc.i.3.for.body10.i.3_crit_edge ]
  %shl.i.3 = shl nuw i32 1, %j.079.i.3
  %and12.i.3 = and i32 %shl.i.3, %conv11.i.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.3)
  %tobool.not.i.3 = icmp eq i32 %and12.i.3, 0
  br i1 %tobool.not.i.3, label %for.inc.i.3, label %for.body10.i.3.rate_idx_match_vht_mcs_mask.exit_crit_edge

for.body10.i.3.rate_idx_match_vht_mcs_mask.exit_crit_edge: ; preds = %for.body10.i.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %rate_idx_match_vht_mcs_mask.exit

for.inc.i.3:                                      ; preds = %for.body10.i.3
  %dec.i.3 = add nsw i32 %j.079.i.3, -1
  %cmp8.i.3 = icmp sgt i32 %j.079.i.3, 0
  br i1 %cmp8.i.3, label %for.inc.i.3.for.body10.i.3_crit_edge, label %for.end.i.3

for.inc.i.3.for.body10.i.3_crit_edge:             ; preds = %for.inc.i.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body10.i.3

for.end.i.3:                                      ; preds = %for.inc.i.3
  %dec18.i.3 = add nsw i32 %shr.i, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %3)
  %cmp5.i.3 = icmp sgt i8 %3, 63
  br i1 %cmp5.i.3, label %for.cond7.preheader.i.4, label %for.end.i.3.for.end19.i_crit_edge

for.end.i.3.for.end19.i_crit_edge:                ; preds = %for.end.i.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end19.i

for.cond7.preheader.i.4:                          ; preds = %for.end.i.3
  %arrayidx.i.4 = getelementptr i16, ptr %vht_mask, i32 %dec18.i.3
  %12 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx.i.4, align 2
  %conv11.i.4 = zext i16 %13 to i32
  br label %for.body10.i.4

for.body10.i.4:                                   ; preds = %for.inc.i.4.for.body10.i.4_crit_edge, %for.cond7.preheader.i.4
  %j.079.i.4 = phi i32 [ 15, %for.cond7.preheader.i.4 ], [ %dec.i.4, %for.inc.i.4.for.body10.i.4_crit_edge ]
  %shl.i.4 = shl nuw i32 1, %j.079.i.4
  %and12.i.4 = and i32 %shl.i.4, %conv11.i.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.4)
  %tobool.not.i.4 = icmp eq i32 %and12.i.4, 0
  br i1 %tobool.not.i.4, label %for.inc.i.4, label %for.body10.i.4.rate_idx_match_vht_mcs_mask.exit_crit_edge

for.body10.i.4.rate_idx_match_vht_mcs_mask.exit_crit_edge: ; preds = %for.body10.i.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %rate_idx_match_vht_mcs_mask.exit

for.inc.i.4:                                      ; preds = %for.body10.i.4
  %dec.i.4 = add nsw i32 %j.079.i.4, -1
  %cmp8.i.4 = icmp sgt i32 %j.079.i.4, 0
  br i1 %cmp8.i.4, label %for.inc.i.4.for.body10.i.4_crit_edge, label %for.end.i.4

for.inc.i.4.for.body10.i.4_crit_edge:             ; preds = %for.inc.i.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body10.i.4

for.end.i.4:                                      ; preds = %for.inc.i.4
  %dec18.i.4 = add nsw i32 %shr.i, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 79, i8 %3)
  %cmp5.i.4 = icmp sgt i8 %3, 79
  br i1 %cmp5.i.4, label %for.cond7.preheader.i.5, label %for.end.i.4.for.end19.i_crit_edge

for.end.i.4.for.end19.i_crit_edge:                ; preds = %for.end.i.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end19.i

for.cond7.preheader.i.5:                          ; preds = %for.end.i.4
  %arrayidx.i.5 = getelementptr i16, ptr %vht_mask, i32 %dec18.i.4
  %14 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx.i.5, align 2
  %conv11.i.5 = zext i16 %15 to i32
  br label %for.body10.i.5

for.body10.i.5:                                   ; preds = %for.inc.i.5.for.body10.i.5_crit_edge, %for.cond7.preheader.i.5
  %j.079.i.5 = phi i32 [ 15, %for.cond7.preheader.i.5 ], [ %dec.i.5, %for.inc.i.5.for.body10.i.5_crit_edge ]
  %shl.i.5 = shl nuw i32 1, %j.079.i.5
  %and12.i.5 = and i32 %shl.i.5, %conv11.i.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.5)
  %tobool.not.i.5 = icmp eq i32 %and12.i.5, 0
  br i1 %tobool.not.i.5, label %for.inc.i.5, label %for.body10.i.5.rate_idx_match_vht_mcs_mask.exit_crit_edge

for.body10.i.5.rate_idx_match_vht_mcs_mask.exit_crit_edge: ; preds = %for.body10.i.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %rate_idx_match_vht_mcs_mask.exit

for.inc.i.5:                                      ; preds = %for.body10.i.5
  %dec.i.5 = add nsw i32 %j.079.i.5, -1
  %cmp8.i.5 = icmp sgt i32 %j.079.i.5, 0
  br i1 %cmp8.i.5, label %for.inc.i.5.for.body10.i.5_crit_edge, label %for.end.i.5

for.inc.i.5.for.body10.i.5_crit_edge:             ; preds = %for.inc.i.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body10.i.5

for.end.i.5:                                      ; preds = %for.inc.i.5
  %dec18.i.5 = add nsw i32 %shr.i, -6
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %3)
  %cmp5.i.5 = icmp sgt i8 %3, 95
  br i1 %cmp5.i.5, label %for.cond7.preheader.i.6, label %for.end.i.5.for.end19.i_crit_edge

for.end.i.5.for.end19.i_crit_edge:                ; preds = %for.end.i.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end19.i

for.cond7.preheader.i.6:                          ; preds = %for.end.i.5
  %arrayidx.i.6 = getelementptr i16, ptr %vht_mask, i32 %dec18.i.5
  %16 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx.i.6, align 2
  %conv11.i.6 = zext i16 %17 to i32
  br label %for.body10.i.6

for.body10.i.6:                                   ; preds = %for.inc.i.6.for.body10.i.6_crit_edge, %for.cond7.preheader.i.6
  %j.079.i.6 = phi i32 [ 15, %for.cond7.preheader.i.6 ], [ %dec.i.6, %for.inc.i.6.for.body10.i.6_crit_edge ]
  %shl.i.6 = shl nuw i32 1, %j.079.i.6
  %and12.i.6 = and i32 %shl.i.6, %conv11.i.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.6)
  %tobool.not.i.6 = icmp eq i32 %and12.i.6, 0
  br i1 %tobool.not.i.6, label %for.inc.i.6, label %for.body10.i.6.rate_idx_match_vht_mcs_mask.exit_crit_edge

for.body10.i.6.rate_idx_match_vht_mcs_mask.exit_crit_edge: ; preds = %for.body10.i.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %rate_idx_match_vht_mcs_mask.exit

for.inc.i.6:                                      ; preds = %for.body10.i.6
  %dec.i.6 = add nsw i32 %j.079.i.6, -1
  %cmp8.i.6 = icmp sgt i32 %j.079.i.6, 0
  br i1 %cmp8.i.6, label %for.inc.i.6.for.body10.i.6_crit_edge, label %for.end.i.6

for.inc.i.6.for.body10.i.6_crit_edge:             ; preds = %for.inc.i.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body10.i.6

for.end.i.6:                                      ; preds = %for.inc.i.6
  %dec18.i.6 = add nsw i32 %shr.i, -7
  call void @__sanitizer_cov_trace_const_cmp1(i8 111, i8 %3)
  %cmp5.i.6 = icmp sgt i8 %3, 111
  br i1 %cmp5.i.6, label %for.cond7.preheader.i.7, label %for.end.i.6.for.end19.i_crit_edge

for.end.i.6.for.end19.i_crit_edge:                ; preds = %for.end.i.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end19.i

for.cond7.preheader.i.7:                          ; preds = %for.end.i.6
  %arrayidx.i.7 = getelementptr i16, ptr %vht_mask, i32 %dec18.i.6
  %18 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.i.7, align 2
  %conv11.i.7 = zext i16 %19 to i32
  br label %for.body10.i.7

for.body10.i.7:                                   ; preds = %for.inc.i.7.for.body10.i.7_crit_edge, %for.cond7.preheader.i.7
  %j.079.i.7 = phi i32 [ 15, %for.cond7.preheader.i.7 ], [ %dec.i.7, %for.inc.i.7.for.body10.i.7_crit_edge ]
  %shl.i.7 = shl nuw i32 1, %j.079.i.7
  %and12.i.7 = and i32 %shl.i.7, %conv11.i.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.7)
  %tobool.not.i.7 = icmp eq i32 %and12.i.7, 0
  br i1 %tobool.not.i.7, label %for.inc.i.7, label %for.body10.i.7.rate_idx_match_vht_mcs_mask.exit_crit_edge

for.body10.i.7.rate_idx_match_vht_mcs_mask.exit_crit_edge: ; preds = %for.body10.i.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %rate_idx_match_vht_mcs_mask.exit

for.inc.i.7:                                      ; preds = %for.body10.i.7
  %dec.i.7 = add nsw i32 %j.079.i.7, -1
  %cmp8.i.7 = icmp sgt i32 %j.079.i.7, 0
  br i1 %cmp8.i.7, label %for.inc.i.7.for.body10.i.7_crit_edge, label %for.inc.i.7.for.end19.i_crit_edge

for.inc.i.7.for.end19.i_crit_edge:                ; preds = %for.inc.i.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end19.i

for.inc.i.7.for.body10.i.7_crit_edge:             ; preds = %for.inc.i.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body10.i.7

for.end19.i:                                      ; preds = %for.inc.i.7.for.end19.i_crit_edge, %for.end.i.6.for.end19.i_crit_edge, %for.end.i.5.for.end19.i_crit_edge, %for.end.i.4.for.end19.i_crit_edge, %for.end.i.3.for.end19.i_crit_edge, %for.end.i.2.for.end19.i_crit_edge, %for.end.i.1.for.end19.i_crit_edge, %for.end.i.for.end19.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %3)
  %cmp2684.not.i = icmp eq i8 %3, 127
  br i1 %cmp2684.not.i, label %for.end19.i.if.end_crit_edge, label %for.cond29.preheader.preheader.i

for.end19.i.if.end_crit_edge:                     ; preds = %for.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.cond29.preheader.preheader.i:                 ; preds = %for.end19.i
  %add.i = add nsw i32 %conv.i, 1
  %and24.i = and i32 %add.i, 15
  %shr21.i = ashr i32 %add.i, 4
  %smax = call i32 @llvm.smax.i32(i32 %shr21.i, i32 7)
  br label %for.cond29.preheader.i

for.cond29.preheader.i:                           ; preds = %for.end44.i.for.cond29.preheader.i_crit_edge, %for.cond29.preheader.preheader.i
  %rbit.186.i = phi i32 [ 0, %for.end44.i.for.cond29.preheader.i_crit_edge ], [ %and24.i, %for.cond29.preheader.preheader.i ]
  %i.185.i = phi i32 [ %inc46.i, %for.end44.i.for.cond29.preheader.i_crit_edge ], [ %shr21.i, %for.cond29.preheader.preheader.i ]
  %arrayidx33.i = getelementptr i16, ptr %vht_mask, i32 %i.185.i
  %20 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx33.i, align 2
  %conv34.i = zext i16 %21 to i32
  br label %for.body32.i

for.body32.i:                                     ; preds = %for.inc43.i.for.body32.i_crit_edge, %for.cond29.preheader.i
  %j.183.i = phi i32 [ %rbit.186.i, %for.cond29.preheader.i ], [ %inc.i, %for.inc43.i.for.body32.i_crit_edge ]
  %shl35.i = shl nuw nsw i32 1, %j.183.i
  %and36.i = and i32 %shl35.i, %conv34.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  br i1 %tobool37.not.i, label %for.inc43.i, label %for.body32.i.rate_idx_match_vht_mcs_mask.exit_crit_edge

for.body32.i.rate_idx_match_vht_mcs_mask.exit_crit_edge: ; preds = %for.body32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rate_idx_match_vht_mcs_mask.exit

for.inc43.i:                                      ; preds = %for.body32.i
  %inc.i = add nuw nsw i32 %j.183.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.end44.i, label %for.inc43.i.for.body32.i_crit_edge

for.inc43.i.for.body32.i_crit_edge:               ; preds = %for.inc43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body32.i

for.end44.i:                                      ; preds = %for.inc43.i
  %inc46.i = add nsw i32 %i.185.i, 1
  %exitcond.not = icmp eq i32 %i.185.i, %smax
  br i1 %exitcond.not, label %for.end44.i.if.end_crit_edge, label %for.end44.i.for.cond29.preheader.i_crit_edge

for.end44.i.for.cond29.preheader.i_crit_edge:     ; preds = %for.end44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond29.preheader.i

for.end44.i.if.end_crit_edge:                     ; preds = %for.end44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

rate_idx_match_vht_mcs_mask.exit:                 ; preds = %for.body32.i.rate_idx_match_vht_mcs_mask.exit_crit_edge, %for.body10.i.7.rate_idx_match_vht_mcs_mask.exit_crit_edge, %for.body10.i.6.rate_idx_match_vht_mcs_mask.exit_crit_edge, %for.body10.i.5.rate_idx_match_vht_mcs_mask.exit_crit_edge, %for.body10.i.4.rate_idx_match_vht_mcs_mask.exit_crit_edge, %for.body10.i.3.rate_idx_match_vht_mcs_mask.exit_crit_edge, %for.body10.i.2.rate_idx_match_vht_mcs_mask.exit_crit_edge, %for.body10.i.1.rate_idx_match_vht_mcs_mask.exit_crit_edge, %for.body10.i.rate_idx_match_vht_mcs_mask.exit_crit_edge
  %i.185.lcssa.sink.i = phi i32 [ %i.185.i, %for.body32.i.rate_idx_match_vht_mcs_mask.exit_crit_edge ], [ %shr.i, %for.body10.i.rate_idx_match_vht_mcs_mask.exit_crit_edge ], [ %dec18.i, %for.body10.i.1.rate_idx_match_vht_mcs_mask.exit_crit_edge ], [ %dec18.i.1, %for.body10.i.2.rate_idx_match_vht_mcs_mask.exit_crit_edge ], [ %dec18.i.2, %for.body10.i.3.rate_idx_match_vht_mcs_mask.exit_crit_edge ], [ %dec18.i.3, %for.body10.i.4.rate_idx_match_vht_mcs_mask.exit_crit_edge ], [ %dec18.i.4, %for.body10.i.5.rate_idx_match_vht_mcs_mask.exit_crit_edge ], [ %dec18.i.5, %for.body10.i.6.rate_idx_match_vht_mcs_mask.exit_crit_edge ], [ %dec18.i.6, %for.body10.i.7.rate_idx_match_vht_mcs_mask.exit_crit_edge ]
  %j.183.lcssa.sink.i = phi i32 [ %j.183.i, %for.body32.i.rate_idx_match_vht_mcs_mask.exit_crit_edge ], [ %j.079.i, %for.body10.i.rate_idx_match_vht_mcs_mask.exit_crit_edge ], [ %j.079.i.1, %for.body10.i.1.rate_idx_match_vht_mcs_mask.exit_crit_edge ], [ %j.079.i.2, %for.body10.i.2.rate_idx_match_vht_mcs_mask.exit_crit_edge ], [ %j.079.i.3, %for.body10.i.3.rate_idx_match_vht_mcs_mask.exit_crit_edge ], [ %j.079.i.4, %for.body10.i.4.rate_idx_match_vht_mcs_mask.exit_crit_edge ], [ %j.079.i.5, %for.body10.i.5.rate_idx_match_vht_mcs_mask.exit_crit_edge ], [ %j.079.i.6, %for.body10.i.6.rate_idx_match_vht_mcs_mask.exit_crit_edge ], [ %j.079.i.7, %for.body10.i.7.rate_idx_match_vht_mcs_mask.exit_crit_edge ]
  %shl39.i = shl i32 %i.185.lcssa.sink.i, 4
  %or40.i = or i32 %j.183.lcssa.sink.i, %shl39.i
  br label %if.end58.sink.split

if.end:                                           ; preds = %for.end44.i.if.end_crit_edge, %for.end19.i.if.end_crit_edge, %if.then.if.end_crit_edge
  %22 = ptrtoint ptr %rate_idx to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %rate_idx, align 1
  %23 = ptrtoint ptr %rate_flags to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %rate_flags, align 2
  %25 = and i16 %24, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %chan_width)
  %cmp = icmp eq i32 %chan_width, 2
  %spec.select.v = select i1 %cmp, i16 40, i16 8
  %spec.select = or i16 %25, %spec.select.v
  %26 = ptrtoint ptr %rate_flags to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %spec.select, ptr %rate_flags, align 2
  %27 = ptrtoint ptr %rate_idx to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %rate_idx, align 1
  %conv.i87 = sext i8 %28 to i32
  %29 = add i8 %28, -80
  call void @__sanitizer_cov_trace_const_cmp1(i8 -87, i8 %29)
  %30 = icmp ult i8 %29, -87
  br i1 %30, label %if.end.if.end15_crit_edge, label %for.cond7.preheader.preheader.i88

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

for.cond7.preheader.preheader.i88:                ; preds = %if.end
  %.frozen = freeze i8 %28
  %div74.i = sdiv i8 %.frozen, 8
  %div.sext94.i = zext i8 %div74.i to i32
  %31 = mul i8 %div74.i, 8
  %rem75.i.decomposed = sub i8 %.frozen, %31
  %rem.sext.i = sext i8 %rem75.i.decomposed to i32
  br label %for.cond7.preheader.i89

for.cond7.preheader.i89:                          ; preds = %for.end.i100.for.cond7.preheader.i89_crit_edge, %for.cond7.preheader.preheader.i88
  %rbit.085.i = phi i32 [ 7, %for.end.i100.for.cond7.preheader.i89_crit_edge ], [ %rem.sext.i, %for.cond7.preheader.preheader.i88 ]
  %i.083.i = phi i32 [ %dec16.i, %for.end.i100.for.cond7.preheader.i89_crit_edge ], [ %div.sext94.i, %for.cond7.preheader.preheader.i88 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %rbit.085.i)
  %cmp880.i = icmp sgt i32 %rbit.085.i, -1
  br i1 %cmp880.i, label %for.body10.lr.ph.i, label %for.cond7.preheader.i89.for.end.i100_crit_edge

for.cond7.preheader.i89.for.end.i100_crit_edge:   ; preds = %for.cond7.preheader.i89
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i100

for.body10.lr.ph.i:                               ; preds = %for.cond7.preheader.i89
  %arrayidx.i90 = getelementptr i8, ptr %mcs_mask, i32 %i.083.i
  %32 = ptrtoint ptr %arrayidx.i90 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i90, align 1
  %conv11.i91 = zext i8 %33 to i32
  %shl.i92 = shl nuw i32 1, %rbit.085.i
  %and.i93 = and i32 %shl.i92, %conv11.i91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i93)
  %tobool.not.i94 = icmp eq i32 %and.i93, 0
  br i1 %tobool.not.i94, label %for.inc.i98, label %for.body10.lr.ph.i.rate_idx_match_mcs_mask.exit_crit_edge

for.body10.lr.ph.i.rate_idx_match_mcs_mask.exit_crit_edge: ; preds = %for.body10.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rate_idx_match_mcs_mask.exit

for.inc.i98:                                      ; preds = %for.body10.lr.ph.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rbit.085.i)
  %cmp8.i97 = icmp sgt i32 %rbit.085.i, 0
  br i1 %cmp8.i97, label %for.body10.i95.1, label %for.inc.i98.for.end.i100_crit_edge

for.inc.i98.for.end.i100_crit_edge:               ; preds = %for.inc.i98
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i100

for.body10.i95.1:                                 ; preds = %for.inc.i98
  %dec.i96 = add nsw i32 %rbit.085.i, -1
  %shl.i92.1 = shl nuw i32 1, %dec.i96
  %and.i93.1 = and i32 %shl.i92.1, %conv11.i91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i93.1)
  %tobool.not.i94.1 = icmp eq i32 %and.i93.1, 0
  br i1 %tobool.not.i94.1, label %for.inc.i98.1, label %for.body10.i95.1.rate_idx_match_mcs_mask.exit_crit_edge

for.body10.i95.1.rate_idx_match_mcs_mask.exit_crit_edge: ; preds = %for.body10.i95.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %rate_idx_match_mcs_mask.exit

for.inc.i98.1:                                    ; preds = %for.body10.i95.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rbit.085.i)
  %cmp8.i97.1 = icmp sgt i32 %rbit.085.i, 1
  br i1 %cmp8.i97.1, label %for.body10.i95.2, label %for.inc.i98.1.for.end.i100_crit_edge

for.inc.i98.1.for.end.i100_crit_edge:             ; preds = %for.inc.i98.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i100

for.body10.i95.2:                                 ; preds = %for.inc.i98.1
  %dec.i96.1 = add nsw i32 %rbit.085.i, -2
  %shl.i92.2 = shl nuw i32 1, %dec.i96.1
  %and.i93.2 = and i32 %shl.i92.2, %conv11.i91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i93.2)
  %tobool.not.i94.2 = icmp eq i32 %and.i93.2, 0
  br i1 %tobool.not.i94.2, label %for.inc.i98.2, label %for.body10.i95.2.rate_idx_match_mcs_mask.exit_crit_edge

for.body10.i95.2.rate_idx_match_mcs_mask.exit_crit_edge: ; preds = %for.body10.i95.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %rate_idx_match_mcs_mask.exit

for.inc.i98.2:                                    ; preds = %for.body10.i95.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %rbit.085.i)
  %cmp8.i97.2 = icmp sgt i32 %rbit.085.i, 2
  br i1 %cmp8.i97.2, label %for.body10.i95.3, label %for.inc.i98.2.for.end.i100_crit_edge

for.inc.i98.2.for.end.i100_crit_edge:             ; preds = %for.inc.i98.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i100

for.body10.i95.3:                                 ; preds = %for.inc.i98.2
  %dec.i96.2 = add nsw i32 %rbit.085.i, -3
  %shl.i92.3 = shl nuw i32 1, %dec.i96.2
  %and.i93.3 = and i32 %shl.i92.3, %conv11.i91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i93.3)
  %tobool.not.i94.3 = icmp eq i32 %and.i93.3, 0
  br i1 %tobool.not.i94.3, label %for.inc.i98.3, label %for.body10.i95.3.rate_idx_match_mcs_mask.exit_crit_edge

for.body10.i95.3.rate_idx_match_mcs_mask.exit_crit_edge: ; preds = %for.body10.i95.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %rate_idx_match_mcs_mask.exit

for.inc.i98.3:                                    ; preds = %for.body10.i95.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %rbit.085.i)
  %cmp8.i97.3 = icmp sgt i32 %rbit.085.i, 3
  br i1 %cmp8.i97.3, label %for.body10.i95.4, label %for.inc.i98.3.for.end.i100_crit_edge

for.inc.i98.3.for.end.i100_crit_edge:             ; preds = %for.inc.i98.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i100

for.body10.i95.4:                                 ; preds = %for.inc.i98.3
  %dec.i96.3 = add nsw i32 %rbit.085.i, -4
  %shl.i92.4 = shl nuw i32 1, %dec.i96.3
  %and.i93.4 = and i32 %shl.i92.4, %conv11.i91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i93.4)
  %tobool.not.i94.4 = icmp eq i32 %and.i93.4, 0
  br i1 %tobool.not.i94.4, label %for.inc.i98.4, label %for.body10.i95.4.rate_idx_match_mcs_mask.exit_crit_edge

for.body10.i95.4.rate_idx_match_mcs_mask.exit_crit_edge: ; preds = %for.body10.i95.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %rate_idx_match_mcs_mask.exit

for.inc.i98.4:                                    ; preds = %for.body10.i95.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %rbit.085.i)
  %cmp8.i97.4 = icmp sgt i32 %rbit.085.i, 4
  br i1 %cmp8.i97.4, label %for.body10.i95.5, label %for.inc.i98.4.for.end.i100_crit_edge

for.inc.i98.4.for.end.i100_crit_edge:             ; preds = %for.inc.i98.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i100

for.body10.i95.5:                                 ; preds = %for.inc.i98.4
  %dec.i96.4 = add nsw i32 %rbit.085.i, -5
  %shl.i92.5 = shl nuw i32 1, %dec.i96.4
  %and.i93.5 = and i32 %shl.i92.5, %conv11.i91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i93.5)
  %tobool.not.i94.5 = icmp eq i32 %and.i93.5, 0
  br i1 %tobool.not.i94.5, label %for.inc.i98.5, label %for.body10.i95.5.rate_idx_match_mcs_mask.exit_crit_edge

for.body10.i95.5.rate_idx_match_mcs_mask.exit_crit_edge: ; preds = %for.body10.i95.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %rate_idx_match_mcs_mask.exit

for.inc.i98.5:                                    ; preds = %for.body10.i95.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %rbit.085.i)
  %cmp8.i97.5 = icmp sgt i32 %rbit.085.i, 5
  br i1 %cmp8.i97.5, label %for.body10.i95.6, label %for.inc.i98.5.for.end.i100_crit_edge

for.inc.i98.5.for.end.i100_crit_edge:             ; preds = %for.inc.i98.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i100

for.body10.i95.6:                                 ; preds = %for.inc.i98.5
  %dec.i96.5 = add nsw i32 %rbit.085.i, -6
  %shl.i92.6 = shl nuw i32 1, %dec.i96.5
  %and.i93.6 = and i32 %shl.i92.6, %conv11.i91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i93.6)
  %tobool.not.i94.6 = icmp eq i32 %and.i93.6, 0
  br i1 %tobool.not.i94.6, label %for.inc.i98.6, label %for.body10.i95.6.rate_idx_match_mcs_mask.exit_crit_edge

for.body10.i95.6.rate_idx_match_mcs_mask.exit_crit_edge: ; preds = %for.body10.i95.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %rate_idx_match_mcs_mask.exit

for.inc.i98.6:                                    ; preds = %for.body10.i95.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %rbit.085.i)
  %cmp8.i97.6 = icmp sgt i32 %rbit.085.i, 6
  br i1 %cmp8.i97.6, label %for.body10.i95.7, label %for.inc.i98.6.for.end.i100_crit_edge

for.inc.i98.6.for.end.i100_crit_edge:             ; preds = %for.inc.i98.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i100

for.body10.i95.7:                                 ; preds = %for.inc.i98.6
  %dec.i96.6 = add nsw i32 %rbit.085.i, -7
  %shl.i92.7 = shl nuw i32 1, %dec.i96.6
  %and.i93.7 = and i32 %shl.i92.7, %conv11.i91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i93.7)
  %tobool.not.i94.7 = icmp eq i32 %and.i93.7, 0
  br i1 %tobool.not.i94.7, label %for.body10.i95.7.for.end.i100_crit_edge, label %for.body10.i95.7.rate_idx_match_mcs_mask.exit_crit_edge

for.body10.i95.7.rate_idx_match_mcs_mask.exit_crit_edge: ; preds = %for.body10.i95.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %rate_idx_match_mcs_mask.exit

for.body10.i95.7.for.end.i100_crit_edge:          ; preds = %for.body10.i95.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i100

for.end.i100:                                     ; preds = %for.body10.i95.7.for.end.i100_crit_edge, %for.inc.i98.6.for.end.i100_crit_edge, %for.inc.i98.5.for.end.i100_crit_edge, %for.inc.i98.4.for.end.i100_crit_edge, %for.inc.i98.3.for.end.i100_crit_edge, %for.inc.i98.2.for.end.i100_crit_edge, %for.inc.i98.1.for.end.i100_crit_edge, %for.inc.i98.for.end.i100_crit_edge, %for.cond7.preheader.i89.for.end.i100_crit_edge
  %dec16.i = add nsw i32 %i.083.i, -1
  %cmp5.i99 = icmp sgt i32 %i.083.i, 0
  br i1 %cmp5.i99, label %for.end.i100.for.cond7.preheader.i89_crit_edge, label %for.end17.i

for.end.i100.for.cond7.preheader.i89_crit_edge:   ; preds = %for.end.i100
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond7.preheader.i89

for.end17.i:                                      ; preds = %for.end.i100
  call void @__sanitizer_cov_trace_const_cmp1(i8 79, i8 %28)
  %cmp2587.i = icmp slt i8 %28, 79
  br i1 %cmp2587.i, label %for.cond28.preheader.preheader.i, label %for.end17.i.if.end15_crit_edge

for.end17.i.if.end15_crit_edge:                   ; preds = %for.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

for.cond28.preheader.preheader.i:                 ; preds = %for.end17.i
  %add19.i = add nsw i32 %conv.i87, 1
  %add19.i.frozen = freeze i32 %add19.i
  %div20.i = sdiv i32 %add19.i.frozen, 8
  %34 = mul i32 %div20.i, 8
  %rem23.i.decomposed = sub i32 %add19.i.frozen, %34
  %smax337 = call i32 @llvm.smax.i32(i32 %div20.i, i32 9)
  br label %for.cond28.preheader.i

for.cond28.preheader.i:                           ; preds = %for.end43.i.for.cond28.preheader.i_crit_edge, %for.cond28.preheader.preheader.i
  %rbit.189.i = phi i32 [ 0, %for.end43.i.for.cond28.preheader.i_crit_edge ], [ %rem23.i.decomposed, %for.cond28.preheader.preheader.i ]
  %i.188.i = phi i32 [ %inc45.i, %for.end43.i.for.cond28.preheader.i_crit_edge ], [ %div20.i, %for.cond28.preheader.preheader.i ]
  %arrayidx32.i = getelementptr i8, ptr %mcs_mask, i32 %i.188.i
  %35 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx32.i, align 1
  %conv33.i = zext i8 %36 to i32
  br label %for.body31.i

for.body31.i:                                     ; preds = %for.inc42.i.for.body31.i_crit_edge, %for.cond28.preheader.i
  %j.186.i = phi i32 [ %rbit.189.i, %for.cond28.preheader.i ], [ %inc.i101, %for.inc42.i.for.body31.i_crit_edge ]
  %shl34.i = shl nuw nsw i32 1, %j.186.i
  %and35.i = and i32 %shl34.i, %conv33.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.not.i, label %for.inc42.i, label %for.body31.i.rate_idx_match_mcs_mask.exit_crit_edge

for.body31.i.rate_idx_match_mcs_mask.exit_crit_edge: ; preds = %for.body31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rate_idx_match_mcs_mask.exit

for.inc42.i:                                      ; preds = %for.body31.i
  %inc.i101 = add nsw i32 %j.186.i, 1
  %exitcond.not.i102 = icmp eq i32 %inc.i101, 8
  br i1 %exitcond.not.i102, label %for.end43.i, label %for.inc42.i.for.body31.i_crit_edge

for.inc42.i.for.body31.i_crit_edge:               ; preds = %for.inc42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body31.i

for.end43.i:                                      ; preds = %for.inc42.i
  %inc45.i = add nsw i32 %i.188.i, 1
  %exitcond338.not = icmp eq i32 %i.188.i, %smax337
  br i1 %exitcond338.not, label %for.end43.i.if.end15_crit_edge, label %for.end43.i.for.cond28.preheader.i_crit_edge

for.end43.i.for.cond28.preheader.i_crit_edge:     ; preds = %for.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond28.preheader.i

for.end43.i.if.end15_crit_edge:                   ; preds = %for.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

rate_idx_match_mcs_mask.exit:                     ; preds = %for.body31.i.rate_idx_match_mcs_mask.exit_crit_edge, %for.body10.i95.7.rate_idx_match_mcs_mask.exit_crit_edge, %for.body10.i95.6.rate_idx_match_mcs_mask.exit_crit_edge, %for.body10.i95.5.rate_idx_match_mcs_mask.exit_crit_edge, %for.body10.i95.4.rate_idx_match_mcs_mask.exit_crit_edge, %for.body10.i95.3.rate_idx_match_mcs_mask.exit_crit_edge, %for.body10.i95.2.rate_idx_match_mcs_mask.exit_crit_edge, %for.body10.i95.1.rate_idx_match_mcs_mask.exit_crit_edge, %for.body10.lr.ph.i.rate_idx_match_mcs_mask.exit_crit_edge
  %i.188.lcssa.sink.i = phi i32 [ %i.188.i, %for.body31.i.rate_idx_match_mcs_mask.exit_crit_edge ], [ %i.083.i, %for.body10.i95.7.rate_idx_match_mcs_mask.exit_crit_edge ], [ %i.083.i, %for.body10.i95.6.rate_idx_match_mcs_mask.exit_crit_edge ], [ %i.083.i, %for.body10.i95.5.rate_idx_match_mcs_mask.exit_crit_edge ], [ %i.083.i, %for.body10.i95.4.rate_idx_match_mcs_mask.exit_crit_edge ], [ %i.083.i, %for.body10.i95.3.rate_idx_match_mcs_mask.exit_crit_edge ], [ %i.083.i, %for.body10.i95.2.rate_idx_match_mcs_mask.exit_crit_edge ], [ %i.083.i, %for.body10.i95.1.rate_idx_match_mcs_mask.exit_crit_edge ], [ %i.083.i, %for.body10.lr.ph.i.rate_idx_match_mcs_mask.exit_crit_edge ]
  %j.186.lcssa.sink.i = phi i32 [ %j.186.i, %for.body31.i.rate_idx_match_mcs_mask.exit_crit_edge ], [ %rbit.085.i, %for.body10.lr.ph.i.rate_idx_match_mcs_mask.exit_crit_edge ], [ %dec.i96, %for.body10.i95.1.rate_idx_match_mcs_mask.exit_crit_edge ], [ %dec.i96.1, %for.body10.i95.2.rate_idx_match_mcs_mask.exit_crit_edge ], [ %dec.i96.2, %for.body10.i95.3.rate_idx_match_mcs_mask.exit_crit_edge ], [ %dec.i96.3, %for.body10.i95.4.rate_idx_match_mcs_mask.exit_crit_edge ], [ %dec.i96.4, %for.body10.i95.5.rate_idx_match_mcs_mask.exit_crit_edge ], [ %dec.i96.5, %for.body10.i95.6.rate_idx_match_mcs_mask.exit_crit_edge ], [ %dec.i96.6, %for.body10.i95.7.rate_idx_match_mcs_mask.exit_crit_edge ]
  %mul38.i = shl i32 %i.188.lcssa.sink.i, 3
  %add39.i = add i32 %j.186.lcssa.sink.i, %mul38.i
  br label %if.end58.sink.split

if.end15:                                         ; preds = %for.end43.i.if.end15_crit_edge, %for.end17.i.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %37 = ptrtoint ptr %rate_flags to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %rate_flags, align 2
  %39 = and i16 %38, -41
  store i16 %39, ptr %rate_flags, align 2
  %n_bitrates = getelementptr inbounds %struct.ieee80211_supported_band, ptr %sband, i32 0, i32 4
  %40 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %n_bitrates, align 4
  %42 = ptrtoint ptr %rate_idx to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %rate_idx, align 1
  %conv.i105 = sext i8 %43 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %43)
  %cmp29.i = icmp sgt i8 %43, -1
  br i1 %cmp29.i, label %if.end15.for.body.i_crit_edge, label %if.end15.for.cond4.i.preheader_crit_edge

if.end15.for.cond4.i.preheader_crit_edge:         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond4.i.preheader

if.end15.for.body.i_crit_edge:                    ; preds = %if.end15
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i111.for.body.i_crit_edge, %if.end15.for.body.i_crit_edge
  %j.030.i = phi i32 [ %dec.i109, %for.inc.i111.for.body.i_crit_edge ], [ %conv.i105, %if.end15.for.body.i_crit_edge ]
  %shl.i106 = shl nuw i32 1, %j.030.i
  %and.i107 = and i32 %shl.i106, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i107)
  %tobool.not.i108 = icmp eq i32 %and.i107, 0
  br i1 %tobool.not.i108, label %for.inc.i111, label %for.body.i.if.end58.sink.split_crit_edge

for.body.i.if.end58.sink.split_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58.sink.split

for.inc.i111:                                     ; preds = %for.body.i
  %dec.i109 = add nsw i32 %j.030.i, -1
  %cmp.i110 = icmp sgt i32 %j.030.i, 0
  br i1 %cmp.i110, label %for.inc.i111.for.body.i_crit_edge, label %for.inc.i111.for.cond4.i.preheader_crit_edge

for.inc.i111.for.cond4.i.preheader_crit_edge:     ; preds = %for.inc.i111
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond4.i.preheader

for.inc.i111.for.body.i_crit_edge:                ; preds = %for.inc.i111
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond4.i.preheader:                            ; preds = %for.inc.i111.for.cond4.i.preheader_crit_edge, %if.end15.for.cond4.i.preheader_crit_edge
  br label %for.cond4.i

for.cond4.i:                                      ; preds = %for.body7.i.for.cond4.i_crit_edge, %for.cond4.i.preheader
  %j.1.in.i = phi i32 [ %j.1.i, %for.body7.i.for.cond4.i_crit_edge ], [ %conv.i105, %for.cond4.i.preheader ]
  %j.1.i = add nsw i32 %j.1.in.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %j.1.i, i32 %41)
  %cmp5.i112 = icmp slt i32 %j.1.i, %41
  br i1 %cmp5.i112, label %for.body7.i, label %for.cond4.i.if.end58_crit_edge

for.cond4.i.if.end58_crit_edge:                   ; preds = %for.cond4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

for.body7.i:                                      ; preds = %for.cond4.i
  %shl8.i = shl nuw i32 1, %j.1.i
  %and9.i = and i32 %shl8.i, %mask
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %for.body7.i.for.cond4.i_crit_edge, label %for.body7.i.if.end58.sink.split_crit_edge

for.body7.i.if.end58.sink.split_crit_edge:        ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58.sink.split

for.body7.i.for.cond4.i_crit_edge:                ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond4.i

if.else:                                          ; preds = %entry
  %and23 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.else36, label %if.then25

if.then25:                                        ; preds = %if.else
  %44 = ptrtoint ptr %rate_idx to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %rate_idx, align 1
  %conv.i115 = sext i8 %45 to i32
  %46 = add i8 %45, -80
  call void @__sanitizer_cov_trace_const_cmp1(i8 -87, i8 %46)
  %47 = icmp ult i8 %46, -87
  br i1 %47, label %if.then25.if.end28_crit_edge, label %for.cond7.preheader.preheader.i120

if.then25.if.end28_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

for.cond7.preheader.preheader.i120:               ; preds = %if.then25
  %.frozen487 = freeze i8 %45
  %div74.i116 = sdiv i8 %.frozen487, 8
  %div.sext94.i117 = zext i8 %div74.i116 to i32
  %48 = mul i8 %div74.i116, 8
  %rem75.i118.decomposed = sub i8 %.frozen487, %48
  %rem.sext.i119 = sext i8 %rem75.i118.decomposed to i32
  br label %for.cond7.preheader.i124

for.cond7.preheader.i124:                         ; preds = %for.end.i138.for.cond7.preheader.i124_crit_edge, %for.cond7.preheader.preheader.i120
  %rbit.085.i121 = phi i32 [ 7, %for.end.i138.for.cond7.preheader.i124_crit_edge ], [ %rem.sext.i119, %for.cond7.preheader.preheader.i120 ]
  %i.083.i122 = phi i32 [ %dec16.i136, %for.end.i138.for.cond7.preheader.i124_crit_edge ], [ %div.sext94.i117, %for.cond7.preheader.preheader.i120 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %rbit.085.i121)
  %cmp880.i123 = icmp sgt i32 %rbit.085.i121, -1
  br i1 %cmp880.i123, label %for.body10.lr.ph.i127, label %for.cond7.preheader.i124.for.end.i138_crit_edge

for.cond7.preheader.i124.for.end.i138_crit_edge:  ; preds = %for.cond7.preheader.i124
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i138

for.body10.lr.ph.i127:                            ; preds = %for.cond7.preheader.i124
  %arrayidx.i125 = getelementptr i8, ptr %mcs_mask, i32 %i.083.i122
  %49 = ptrtoint ptr %arrayidx.i125 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.i125, align 1
  %conv11.i126 = zext i8 %50 to i32
  %shl.i129 = shl nuw i32 1, %rbit.085.i121
  %and.i130 = and i32 %shl.i129, %conv11.i126
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i130)
  %tobool.not.i131 = icmp eq i32 %and.i130, 0
  br i1 %tobool.not.i131, label %for.inc.i135, label %for.body10.lr.ph.i127.rate_idx_match_mcs_mask.exit168_crit_edge

for.body10.lr.ph.i127.rate_idx_match_mcs_mask.exit168_crit_edge: ; preds = %for.body10.lr.ph.i127
  call void @__sanitizer_cov_trace_pc() #12
  br label %rate_idx_match_mcs_mask.exit168

for.inc.i135:                                     ; preds = %for.body10.lr.ph.i127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rbit.085.i121)
  %cmp8.i134 = icmp sgt i32 %rbit.085.i121, 0
  br i1 %cmp8.i134, label %for.body10.i132.1, label %for.inc.i135.for.end.i138_crit_edge

for.inc.i135.for.end.i138_crit_edge:              ; preds = %for.inc.i135
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i138

for.body10.i132.1:                                ; preds = %for.inc.i135
  %dec.i133 = add nsw i32 %rbit.085.i121, -1
  %shl.i129.1 = shl nuw i32 1, %dec.i133
  %and.i130.1 = and i32 %shl.i129.1, %conv11.i126
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i130.1)
  %tobool.not.i131.1 = icmp eq i32 %and.i130.1, 0
  br i1 %tobool.not.i131.1, label %for.inc.i135.1, label %for.body10.i132.1.rate_idx_match_mcs_mask.exit168_crit_edge

for.body10.i132.1.rate_idx_match_mcs_mask.exit168_crit_edge: ; preds = %for.body10.i132.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %rate_idx_match_mcs_mask.exit168

for.inc.i135.1:                                   ; preds = %for.body10.i132.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rbit.085.i121)
  %cmp8.i134.1 = icmp sgt i32 %rbit.085.i121, 1
  br i1 %cmp8.i134.1, label %for.body10.i132.2, label %for.inc.i135.1.for.end.i138_crit_edge

for.inc.i135.1.for.end.i138_crit_edge:            ; preds = %for.inc.i135.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i138

for.body10.i132.2:                                ; preds = %for.inc.i135.1
  %dec.i133.1 = add nsw i32 %rbit.085.i121, -2
  %shl.i129.2 = shl nuw i32 1, %dec.i133.1
  %and.i130.2 = and i32 %shl.i129.2, %conv11.i126
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i130.2)
  %tobool.not.i131.2 = icmp eq i32 %and.i130.2, 0
  br i1 %tobool.not.i131.2, label %for.inc.i135.2, label %for.body10.i132.2.rate_idx_match_mcs_mask.exit168_crit_edge

for.body10.i132.2.rate_idx_match_mcs_mask.exit168_crit_edge: ; preds = %for.body10.i132.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %rate_idx_match_mcs_mask.exit168

for.inc.i135.2:                                   ; preds = %for.body10.i132.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %rbit.085.i121)
  %cmp8.i134.2 = icmp sgt i32 %rbit.085.i121, 2
  br i1 %cmp8.i134.2, label %for.body10.i132.3, label %for.inc.i135.2.for.end.i138_crit_edge

for.inc.i135.2.for.end.i138_crit_edge:            ; preds = %for.inc.i135.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i138

for.body10.i132.3:                                ; preds = %for.inc.i135.2
  %dec.i133.2 = add nsw i32 %rbit.085.i121, -3
  %shl.i129.3 = shl nuw i32 1, %dec.i133.2
  %and.i130.3 = and i32 %shl.i129.3, %conv11.i126
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i130.3)
  %tobool.not.i131.3 = icmp eq i32 %and.i130.3, 0
  br i1 %tobool.not.i131.3, label %for.inc.i135.3, label %for.body10.i132.3.rate_idx_match_mcs_mask.exit168_crit_edge

for.body10.i132.3.rate_idx_match_mcs_mask.exit168_crit_edge: ; preds = %for.body10.i132.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %rate_idx_match_mcs_mask.exit168

for.inc.i135.3:                                   ; preds = %for.body10.i132.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %rbit.085.i121)
  %cmp8.i134.3 = icmp sgt i32 %rbit.085.i121, 3
  br i1 %cmp8.i134.3, label %for.body10.i132.4, label %for.inc.i135.3.for.end.i138_crit_edge

for.inc.i135.3.for.end.i138_crit_edge:            ; preds = %for.inc.i135.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i138

for.body10.i132.4:                                ; preds = %for.inc.i135.3
  %dec.i133.3 = add nsw i32 %rbit.085.i121, -4
  %shl.i129.4 = shl nuw i32 1, %dec.i133.3
  %and.i130.4 = and i32 %shl.i129.4, %conv11.i126
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i130.4)
  %tobool.not.i131.4 = icmp eq i32 %and.i130.4, 0
  br i1 %tobool.not.i131.4, label %for.inc.i135.4, label %for.body10.i132.4.rate_idx_match_mcs_mask.exit168_crit_edge

for.body10.i132.4.rate_idx_match_mcs_mask.exit168_crit_edge: ; preds = %for.body10.i132.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %rate_idx_match_mcs_mask.exit168

for.inc.i135.4:                                   ; preds = %for.body10.i132.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %rbit.085.i121)
  %cmp8.i134.4 = icmp sgt i32 %rbit.085.i121, 4
  br i1 %cmp8.i134.4, label %for.body10.i132.5, label %for.inc.i135.4.for.end.i138_crit_edge

for.inc.i135.4.for.end.i138_crit_edge:            ; preds = %for.inc.i135.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i138

for.body10.i132.5:                                ; preds = %for.inc.i135.4
  %dec.i133.4 = add nsw i32 %rbit.085.i121, -5
  %shl.i129.5 = shl nuw i32 1, %dec.i133.4
  %and.i130.5 = and i32 %shl.i129.5, %conv11.i126
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i130.5)
  %tobool.not.i131.5 = icmp eq i32 %and.i130.5, 0
  br i1 %tobool.not.i131.5, label %for.inc.i135.5, label %for.body10.i132.5.rate_idx_match_mcs_mask.exit168_crit_edge

for.body10.i132.5.rate_idx_match_mcs_mask.exit168_crit_edge: ; preds = %for.body10.i132.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %rate_idx_match_mcs_mask.exit168

for.inc.i135.5:                                   ; preds = %for.body10.i132.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %rbit.085.i121)
  %cmp8.i134.5 = icmp sgt i32 %rbit.085.i121, 5
  br i1 %cmp8.i134.5, label %for.body10.i132.6, label %for.inc.i135.5.for.end.i138_crit_edge

for.inc.i135.5.for.end.i138_crit_edge:            ; preds = %for.inc.i135.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i138

for.body10.i132.6:                                ; preds = %for.inc.i135.5
  %dec.i133.5 = add nsw i32 %rbit.085.i121, -6
  %shl.i129.6 = shl nuw i32 1, %dec.i133.5
  %and.i130.6 = and i32 %shl.i129.6, %conv11.i126
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i130.6)
  %tobool.not.i131.6 = icmp eq i32 %and.i130.6, 0
  br i1 %tobool.not.i131.6, label %for.inc.i135.6, label %for.body10.i132.6.rate_idx_match_mcs_mask.exit168_crit_edge

for.body10.i132.6.rate_idx_match_mcs_mask.exit168_crit_edge: ; preds = %for.body10.i132.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %rate_idx_match_mcs_mask.exit168

for.inc.i135.6:                                   ; preds = %for.body10.i132.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %rbit.085.i121)
  %cmp8.i134.6 = icmp sgt i32 %rbit.085.i121, 6
  br i1 %cmp8.i134.6, label %for.body10.i132.7, label %for.inc.i135.6.for.end.i138_crit_edge

for.inc.i135.6.for.end.i138_crit_edge:            ; preds = %for.inc.i135.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i138

for.body10.i132.7:                                ; preds = %for.inc.i135.6
  %dec.i133.6 = add nsw i32 %rbit.085.i121, -7
  %shl.i129.7 = shl nuw i32 1, %dec.i133.6
  %and.i130.7 = and i32 %shl.i129.7, %conv11.i126
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i130.7)
  %tobool.not.i131.7 = icmp eq i32 %and.i130.7, 0
  br i1 %tobool.not.i131.7, label %for.body10.i132.7.for.end.i138_crit_edge, label %for.body10.i132.7.rate_idx_match_mcs_mask.exit168_crit_edge

for.body10.i132.7.rate_idx_match_mcs_mask.exit168_crit_edge: ; preds = %for.body10.i132.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %rate_idx_match_mcs_mask.exit168

for.body10.i132.7.for.end.i138_crit_edge:         ; preds = %for.body10.i132.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i138

for.end.i138:                                     ; preds = %for.body10.i132.7.for.end.i138_crit_edge, %for.inc.i135.6.for.end.i138_crit_edge, %for.inc.i135.5.for.end.i138_crit_edge, %for.inc.i135.4.for.end.i138_crit_edge, %for.inc.i135.3.for.end.i138_crit_edge, %for.inc.i135.2.for.end.i138_crit_edge, %for.inc.i135.1.for.end.i138_crit_edge, %for.inc.i135.for.end.i138_crit_edge, %for.cond7.preheader.i124.for.end.i138_crit_edge
  %dec16.i136 = add nsw i32 %i.083.i122, -1
  %cmp5.i137 = icmp sgt i32 %i.083.i122, 0
  br i1 %cmp5.i137, label %for.end.i138.for.cond7.preheader.i124_crit_edge, label %for.end17.i140

for.end.i138.for.cond7.preheader.i124_crit_edge:  ; preds = %for.end.i138
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond7.preheader.i124

for.end17.i140:                                   ; preds = %for.end.i138
  call void @__sanitizer_cov_trace_const_cmp1(i8 79, i8 %45)
  %cmp2587.i139 = icmp slt i8 %45, 79
  br i1 %cmp2587.i139, label %for.cond28.preheader.preheader.i144, label %for.end17.i140.if.end28_crit_edge

for.end17.i140.if.end28_crit_edge:                ; preds = %for.end17.i140
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

for.cond28.preheader.preheader.i144:              ; preds = %for.end17.i140
  %add19.i141 = add nsw i32 %conv.i115, 1
  %add19.i141.frozen = freeze i32 %add19.i141
  %div20.i143 = sdiv i32 %add19.i141.frozen, 8
  %51 = mul i32 %div20.i143, 8
  %rem23.i142.decomposed = sub i32 %add19.i141.frozen, %51
  %smax339 = call i32 @llvm.smax.i32(i32 %div20.i143, i32 9)
  br label %for.cond28.preheader.i149

for.cond28.preheader.i149:                        ; preds = %for.end43.i160.for.cond28.preheader.i149_crit_edge, %for.cond28.preheader.preheader.i144
  %rbit.189.i145 = phi i32 [ 0, %for.end43.i160.for.cond28.preheader.i149_crit_edge ], [ %rem23.i142.decomposed, %for.cond28.preheader.preheader.i144 ]
  %i.188.i146 = phi i32 [ %inc45.i158, %for.end43.i160.for.cond28.preheader.i149_crit_edge ], [ %div20.i143, %for.cond28.preheader.preheader.i144 ]
  %arrayidx32.i147 = getelementptr i8, ptr %mcs_mask, i32 %i.188.i146
  %52 = ptrtoint ptr %arrayidx32.i147 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx32.i147, align 1
  %conv33.i148 = zext i8 %53 to i32
  br label %for.body31.i154

for.body31.i154:                                  ; preds = %for.inc42.i157.for.body31.i154_crit_edge, %for.cond28.preheader.i149
  %j.186.i150 = phi i32 [ %rbit.189.i145, %for.cond28.preheader.i149 ], [ %inc.i155, %for.inc42.i157.for.body31.i154_crit_edge ]
  %shl34.i151 = shl nuw nsw i32 1, %j.186.i150
  %and35.i152 = and i32 %shl34.i151, %conv33.i148
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i152)
  %tobool36.not.i153 = icmp eq i32 %and35.i152, 0
  br i1 %tobool36.not.i153, label %for.inc42.i157, label %for.body31.i154.rate_idx_match_mcs_mask.exit168_crit_edge

for.body31.i154.rate_idx_match_mcs_mask.exit168_crit_edge: ; preds = %for.body31.i154
  call void @__sanitizer_cov_trace_pc() #12
  br label %rate_idx_match_mcs_mask.exit168

for.inc42.i157:                                   ; preds = %for.body31.i154
  %inc.i155 = add nsw i32 %j.186.i150, 1
  %exitcond.not.i156 = icmp eq i32 %inc.i155, 8
  br i1 %exitcond.not.i156, label %for.end43.i160, label %for.inc42.i157.for.body31.i154_crit_edge

for.inc42.i157.for.body31.i154_crit_edge:         ; preds = %for.inc42.i157
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body31.i154

for.end43.i160:                                   ; preds = %for.inc42.i157
  %inc45.i158 = add nsw i32 %i.188.i146, 1
  %exitcond340.not = icmp eq i32 %i.188.i146, %smax339
  br i1 %exitcond340.not, label %for.end43.i160.if.end28_crit_edge, label %for.end43.i160.for.cond28.preheader.i149_crit_edge

for.end43.i160.for.cond28.preheader.i149_crit_edge: ; preds = %for.end43.i160
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond28.preheader.i149

for.end43.i160.if.end28_crit_edge:                ; preds = %for.end43.i160
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

rate_idx_match_mcs_mask.exit168:                  ; preds = %for.body31.i154.rate_idx_match_mcs_mask.exit168_crit_edge, %for.body10.i132.7.rate_idx_match_mcs_mask.exit168_crit_edge, %for.body10.i132.6.rate_idx_match_mcs_mask.exit168_crit_edge, %for.body10.i132.5.rate_idx_match_mcs_mask.exit168_crit_edge, %for.body10.i132.4.rate_idx_match_mcs_mask.exit168_crit_edge, %for.body10.i132.3.rate_idx_match_mcs_mask.exit168_crit_edge, %for.body10.i132.2.rate_idx_match_mcs_mask.exit168_crit_edge, %for.body10.i132.1.rate_idx_match_mcs_mask.exit168_crit_edge, %for.body10.lr.ph.i127.rate_idx_match_mcs_mask.exit168_crit_edge
  %i.188.lcssa.sink.i161 = phi i32 [ %i.188.i146, %for.body31.i154.rate_idx_match_mcs_mask.exit168_crit_edge ], [ %i.083.i122, %for.body10.i132.7.rate_idx_match_mcs_mask.exit168_crit_edge ], [ %i.083.i122, %for.body10.i132.6.rate_idx_match_mcs_mask.exit168_crit_edge ], [ %i.083.i122, %for.body10.i132.5.rate_idx_match_mcs_mask.exit168_crit_edge ], [ %i.083.i122, %for.body10.i132.4.rate_idx_match_mcs_mask.exit168_crit_edge ], [ %i.083.i122, %for.body10.i132.3.rate_idx_match_mcs_mask.exit168_crit_edge ], [ %i.083.i122, %for.body10.i132.2.rate_idx_match_mcs_mask.exit168_crit_edge ], [ %i.083.i122, %for.body10.i132.1.rate_idx_match_mcs_mask.exit168_crit_edge ], [ %i.083.i122, %for.body10.lr.ph.i127.rate_idx_match_mcs_mask.exit168_crit_edge ]
  %j.186.lcssa.sink.i162 = phi i32 [ %j.186.i150, %for.body31.i154.rate_idx_match_mcs_mask.exit168_crit_edge ], [ %rbit.085.i121, %for.body10.lr.ph.i127.rate_idx_match_mcs_mask.exit168_crit_edge ], [ %dec.i133, %for.body10.i132.1.rate_idx_match_mcs_mask.exit168_crit_edge ], [ %dec.i133.1, %for.body10.i132.2.rate_idx_match_mcs_mask.exit168_crit_edge ], [ %dec.i133.2, %for.body10.i132.3.rate_idx_match_mcs_mask.exit168_crit_edge ], [ %dec.i133.3, %for.body10.i132.4.rate_idx_match_mcs_mask.exit168_crit_edge ], [ %dec.i133.4, %for.body10.i132.5.rate_idx_match_mcs_mask.exit168_crit_edge ], [ %dec.i133.5, %for.body10.i132.6.rate_idx_match_mcs_mask.exit168_crit_edge ], [ %dec.i133.6, %for.body10.i132.7.rate_idx_match_mcs_mask.exit168_crit_edge ]
  %mul38.i163 = shl i32 %i.188.lcssa.sink.i161, 3
  %add39.i164 = add i32 %j.186.lcssa.sink.i162, %mul38.i163
  br label %if.end58.sink.split

if.end28:                                         ; preds = %for.end43.i160.if.end28_crit_edge, %for.end17.i140.if.end28_crit_edge, %if.then25.if.end28_crit_edge
  %54 = ptrtoint ptr %rate_idx to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %rate_idx, align 1
  %55 = ptrtoint ptr %rate_flags to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %rate_flags, align 2
  %57 = and i16 %56, 7
  store i16 %57, ptr %rate_flags, align 2
  %n_bitrates32 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %sband, i32 0, i32 4
  %58 = ptrtoint ptr %n_bitrates32 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %n_bitrates32, align 4
  %60 = load i8, ptr %rate_idx, align 1
  %conv.i169 = sext i8 %60 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %60)
  %cmp29.i170 = icmp sgt i8 %60, -1
  br i1 %cmp29.i170, label %if.end28.for.body.i176_crit_edge, label %if.end28.for.cond4.i183.preheader_crit_edge

if.end28.for.cond4.i183.preheader_crit_edge:      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond4.i183.preheader

if.end28.for.body.i176_crit_edge:                 ; preds = %if.end28
  br label %for.body.i176

for.body.i176:                                    ; preds = %for.inc.i179.for.body.i176_crit_edge, %if.end28.for.body.i176_crit_edge
  %j.030.i172 = phi i32 [ %dec.i177, %for.inc.i179.for.body.i176_crit_edge ], [ %conv.i169, %if.end28.for.body.i176_crit_edge ]
  %shl.i173 = shl nuw i32 1, %j.030.i172
  %and.i174 = and i32 %shl.i173, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i174)
  %tobool.not.i175 = icmp eq i32 %and.i174, 0
  br i1 %tobool.not.i175, label %for.inc.i179, label %for.body.i176.if.end58.sink.split_crit_edge

for.body.i176.if.end58.sink.split_crit_edge:      ; preds = %for.body.i176
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58.sink.split

for.inc.i179:                                     ; preds = %for.body.i176
  %dec.i177 = add nsw i32 %j.030.i172, -1
  %cmp.i178 = icmp sgt i32 %j.030.i172, 0
  br i1 %cmp.i178, label %for.inc.i179.for.body.i176_crit_edge, label %for.inc.i179.for.cond4.i183.preheader_crit_edge

for.inc.i179.for.cond4.i183.preheader_crit_edge:  ; preds = %for.inc.i179
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond4.i183.preheader

for.inc.i179.for.body.i176_crit_edge:             ; preds = %for.inc.i179
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i176

for.cond4.i183.preheader:                         ; preds = %for.inc.i179.for.cond4.i183.preheader_crit_edge, %if.end28.for.cond4.i183.preheader_crit_edge
  br label %for.cond4.i183

for.cond4.i183:                                   ; preds = %for.body7.i187.for.cond4.i183_crit_edge, %for.cond4.i183.preheader
  %j.1.in.i180 = phi i32 [ %j.1.i181, %for.body7.i187.for.cond4.i183_crit_edge ], [ %conv.i169, %for.cond4.i183.preheader ]
  %j.1.i181 = add nsw i32 %j.1.in.i180, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %j.1.i181, i32 %59)
  %cmp5.i182 = icmp slt i32 %j.1.i181, %59
  br i1 %cmp5.i182, label %for.body7.i187, label %for.cond4.i183.if.end58_crit_edge

for.cond4.i183.if.end58_crit_edge:                ; preds = %for.cond4.i183
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

for.body7.i187:                                   ; preds = %for.cond4.i183
  %shl8.i184 = shl nuw i32 1, %j.1.i181
  %and9.i185 = and i32 %shl8.i184, %mask
  %tobool10.not.i186 = icmp eq i32 %and9.i185, 0
  br i1 %tobool10.not.i186, label %for.body7.i187.for.cond4.i183_crit_edge, label %for.body7.i187.if.end58.sink.split_crit_edge

for.body7.i187.if.end58.sink.split_crit_edge:     ; preds = %for.body7.i187
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58.sink.split

for.body7.i187.for.cond4.i183_crit_edge:          ; preds = %for.body7.i187
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond4.i183

if.else36:                                        ; preds = %if.else
  %n_bitrates37 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %sband, i32 0, i32 4
  %61 = ptrtoint ptr %n_bitrates37 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %n_bitrates37, align 4
  %63 = ptrtoint ptr %rate_idx to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %rate_idx, align 1
  %conv.i193 = sext i8 %64 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %64)
  %cmp29.i194 = icmp sgt i8 %64, -1
  br i1 %cmp29.i194, label %if.else36.for.body.i200_crit_edge, label %if.else36.for.cond4.i207.preheader_crit_edge

if.else36.for.cond4.i207.preheader_crit_edge:     ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond4.i207.preheader

if.else36.for.body.i200_crit_edge:                ; preds = %if.else36
  br label %for.body.i200

for.body.i200:                                    ; preds = %for.inc.i203.for.body.i200_crit_edge, %if.else36.for.body.i200_crit_edge
  %j.030.i196 = phi i32 [ %dec.i201, %for.inc.i203.for.body.i200_crit_edge ], [ %conv.i193, %if.else36.for.body.i200_crit_edge ]
  %shl.i197 = shl nuw i32 1, %j.030.i196
  %and.i198 = and i32 %shl.i197, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i198)
  %tobool.not.i199 = icmp eq i32 %and.i198, 0
  br i1 %tobool.not.i199, label %for.inc.i203, label %for.body.i200.if.end58.sink.split_crit_edge

for.body.i200.if.end58.sink.split_crit_edge:      ; preds = %for.body.i200
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58.sink.split

for.inc.i203:                                     ; preds = %for.body.i200
  %dec.i201 = add nsw i32 %j.030.i196, -1
  %cmp.i202 = icmp sgt i32 %j.030.i196, 0
  br i1 %cmp.i202, label %for.inc.i203.for.body.i200_crit_edge, label %for.inc.i203.for.cond4.i207.preheader_crit_edge

for.inc.i203.for.cond4.i207.preheader_crit_edge:  ; preds = %for.inc.i203
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond4.i207.preheader

for.inc.i203.for.body.i200_crit_edge:             ; preds = %for.inc.i203
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i200

for.cond4.i207.preheader:                         ; preds = %for.inc.i203.for.cond4.i207.preheader_crit_edge, %if.else36.for.cond4.i207.preheader_crit_edge
  br label %for.cond4.i207

for.cond4.i207:                                   ; preds = %for.body7.i211.for.cond4.i207_crit_edge, %for.cond4.i207.preheader
  %j.1.in.i204 = phi i32 [ %j.1.i205, %for.body7.i211.for.cond4.i207_crit_edge ], [ %conv.i193, %for.cond4.i207.preheader ]
  %j.1.i205 = add nsw i32 %j.1.in.i204, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %j.1.i205, i32 %62)
  %cmp5.i206 = icmp slt i32 %j.1.i205, %62
  br i1 %cmp5.i206, label %for.body7.i211, label %if.end40

for.body7.i211:                                   ; preds = %for.cond4.i207
  %shl8.i208 = shl nuw i32 1, %j.1.i205
  %and9.i209 = and i32 %shl8.i208, %mask
  %tobool10.not.i210 = icmp eq i32 %and9.i209, 0
  br i1 %tobool10.not.i210, label %for.body7.i211.for.cond4.i207_crit_edge, label %for.body7.i211.if.end58.sink.split_crit_edge

for.body7.i211.if.end58.sink.split_crit_edge:     ; preds = %for.body7.i211
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58.sink.split

for.body7.i211.for.cond4.i207_crit_edge:          ; preds = %for.body7.i211
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond4.i207

if.end40:                                         ; preds = %for.cond4.i207
  %65 = zext i32 %chan_width to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %chan_width, label %sw.epilog [
    i32 0, label %if.end40.if.end58_crit_edge
    i32 6, label %if.end40.if.end58_crit_edge489
    i32 7, label %if.end40.if.end58_crit_edge490
  ]

if.end40.if.end58_crit_edge490:                   ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.end40.if.end58_crit_edge489:                   ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.end40.if.end58_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

sw.epilog:                                        ; preds = %if.end40
  %66 = ptrtoint ptr %rate_idx to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %rate_idx, align 1
  %67 = ptrtoint ptr %rate_flags to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %rate_flags, align 2
  %69 = and i16 %68, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %chan_width)
  %cmp47 = icmp eq i32 %chan_width, 2
  %spec.select86.v = select i1 %cmp47, i16 40, i16 8
  %spec.select86 = or i16 %69, %spec.select86.v
  %70 = ptrtoint ptr %rate_flags to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %spec.select86, ptr %rate_flags, align 2
  %71 = ptrtoint ptr %rate_idx to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %rate_idx, align 1
  %conv.i217 = sext i8 %72 to i32
  %73 = add i8 %72, -80
  call void @__sanitizer_cov_trace_const_cmp1(i8 -87, i8 %73)
  %74 = icmp ult i8 %73, -87
  br i1 %74, label %sw.epilog.if.end58_crit_edge, label %for.cond7.preheader.preheader.i222

sw.epilog.if.end58_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

for.cond7.preheader.preheader.i222:               ; preds = %sw.epilog
  %.frozen488 = freeze i8 %72
  %div74.i218 = sdiv i8 %.frozen488, 8
  %div.sext94.i219 = zext i8 %div74.i218 to i32
  %75 = mul i8 %div74.i218, 8
  %rem75.i220.decomposed = sub i8 %.frozen488, %75
  %rem.sext.i221 = sext i8 %rem75.i220.decomposed to i32
  br label %for.cond7.preheader.i226

for.cond7.preheader.i226:                         ; preds = %for.end.i240.for.cond7.preheader.i226_crit_edge, %for.cond7.preheader.preheader.i222
  %rbit.085.i223 = phi i32 [ 7, %for.end.i240.for.cond7.preheader.i226_crit_edge ], [ %rem.sext.i221, %for.cond7.preheader.preheader.i222 ]
  %i.083.i224 = phi i32 [ %dec16.i238, %for.end.i240.for.cond7.preheader.i226_crit_edge ], [ %div.sext94.i219, %for.cond7.preheader.preheader.i222 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %rbit.085.i223)
  %cmp880.i225 = icmp sgt i32 %rbit.085.i223, -1
  br i1 %cmp880.i225, label %for.body10.lr.ph.i229, label %for.cond7.preheader.i226.for.end.i240_crit_edge

for.cond7.preheader.i226.for.end.i240_crit_edge:  ; preds = %for.cond7.preheader.i226
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i240

for.body10.lr.ph.i229:                            ; preds = %for.cond7.preheader.i226
  %arrayidx.i227 = getelementptr i8, ptr %mcs_mask, i32 %i.083.i224
  %76 = ptrtoint ptr %arrayidx.i227 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx.i227, align 1
  %conv11.i228 = zext i8 %77 to i32
  %shl.i231 = shl nuw i32 1, %rbit.085.i223
  %and.i232 = and i32 %shl.i231, %conv11.i228
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i232)
  %tobool.not.i233 = icmp eq i32 %and.i232, 0
  br i1 %tobool.not.i233, label %for.inc.i237, label %for.body10.lr.ph.i229.cleanup.sink.split.i268_crit_edge

for.body10.lr.ph.i229.cleanup.sink.split.i268_crit_edge: ; preds = %for.body10.lr.ph.i229
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i268

for.inc.i237:                                     ; preds = %for.body10.lr.ph.i229
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rbit.085.i223)
  %cmp8.i236 = icmp sgt i32 %rbit.085.i223, 0
  br i1 %cmp8.i236, label %for.body10.i234.1, label %for.inc.i237.for.end.i240_crit_edge

for.inc.i237.for.end.i240_crit_edge:              ; preds = %for.inc.i237
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i240

for.body10.i234.1:                                ; preds = %for.inc.i237
  %dec.i235 = add nsw i32 %rbit.085.i223, -1
  %shl.i231.1 = shl nuw i32 1, %dec.i235
  %and.i232.1 = and i32 %shl.i231.1, %conv11.i228
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i232.1)
  %tobool.not.i233.1 = icmp eq i32 %and.i232.1, 0
  br i1 %tobool.not.i233.1, label %for.inc.i237.1, label %for.body10.i234.1.cleanup.sink.split.i268_crit_edge

for.body10.i234.1.cleanup.sink.split.i268_crit_edge: ; preds = %for.body10.i234.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i268

for.inc.i237.1:                                   ; preds = %for.body10.i234.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rbit.085.i223)
  %cmp8.i236.1 = icmp sgt i32 %rbit.085.i223, 1
  br i1 %cmp8.i236.1, label %for.body10.i234.2, label %for.inc.i237.1.for.end.i240_crit_edge

for.inc.i237.1.for.end.i240_crit_edge:            ; preds = %for.inc.i237.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i240

for.body10.i234.2:                                ; preds = %for.inc.i237.1
  %dec.i235.1 = add nsw i32 %rbit.085.i223, -2
  %shl.i231.2 = shl nuw i32 1, %dec.i235.1
  %and.i232.2 = and i32 %shl.i231.2, %conv11.i228
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i232.2)
  %tobool.not.i233.2 = icmp eq i32 %and.i232.2, 0
  br i1 %tobool.not.i233.2, label %for.inc.i237.2, label %for.body10.i234.2.cleanup.sink.split.i268_crit_edge

for.body10.i234.2.cleanup.sink.split.i268_crit_edge: ; preds = %for.body10.i234.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i268

for.inc.i237.2:                                   ; preds = %for.body10.i234.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %rbit.085.i223)
  %cmp8.i236.2 = icmp sgt i32 %rbit.085.i223, 2
  br i1 %cmp8.i236.2, label %for.body10.i234.3, label %for.inc.i237.2.for.end.i240_crit_edge

for.inc.i237.2.for.end.i240_crit_edge:            ; preds = %for.inc.i237.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i240

for.body10.i234.3:                                ; preds = %for.inc.i237.2
  %dec.i235.2 = add nsw i32 %rbit.085.i223, -3
  %shl.i231.3 = shl nuw i32 1, %dec.i235.2
  %and.i232.3 = and i32 %shl.i231.3, %conv11.i228
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i232.3)
  %tobool.not.i233.3 = icmp eq i32 %and.i232.3, 0
  br i1 %tobool.not.i233.3, label %for.inc.i237.3, label %for.body10.i234.3.cleanup.sink.split.i268_crit_edge

for.body10.i234.3.cleanup.sink.split.i268_crit_edge: ; preds = %for.body10.i234.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i268

for.inc.i237.3:                                   ; preds = %for.body10.i234.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %rbit.085.i223)
  %cmp8.i236.3 = icmp sgt i32 %rbit.085.i223, 3
  br i1 %cmp8.i236.3, label %for.body10.i234.4, label %for.inc.i237.3.for.end.i240_crit_edge

for.inc.i237.3.for.end.i240_crit_edge:            ; preds = %for.inc.i237.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i240

for.body10.i234.4:                                ; preds = %for.inc.i237.3
  %dec.i235.3 = add nsw i32 %rbit.085.i223, -4
  %shl.i231.4 = shl nuw i32 1, %dec.i235.3
  %and.i232.4 = and i32 %shl.i231.4, %conv11.i228
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i232.4)
  %tobool.not.i233.4 = icmp eq i32 %and.i232.4, 0
  br i1 %tobool.not.i233.4, label %for.inc.i237.4, label %for.body10.i234.4.cleanup.sink.split.i268_crit_edge

for.body10.i234.4.cleanup.sink.split.i268_crit_edge: ; preds = %for.body10.i234.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i268

for.inc.i237.4:                                   ; preds = %for.body10.i234.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %rbit.085.i223)
  %cmp8.i236.4 = icmp sgt i32 %rbit.085.i223, 4
  br i1 %cmp8.i236.4, label %for.body10.i234.5, label %for.inc.i237.4.for.end.i240_crit_edge

for.inc.i237.4.for.end.i240_crit_edge:            ; preds = %for.inc.i237.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i240

for.body10.i234.5:                                ; preds = %for.inc.i237.4
  %dec.i235.4 = add nsw i32 %rbit.085.i223, -5
  %shl.i231.5 = shl nuw i32 1, %dec.i235.4
  %and.i232.5 = and i32 %shl.i231.5, %conv11.i228
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i232.5)
  %tobool.not.i233.5 = icmp eq i32 %and.i232.5, 0
  br i1 %tobool.not.i233.5, label %for.inc.i237.5, label %for.body10.i234.5.cleanup.sink.split.i268_crit_edge

for.body10.i234.5.cleanup.sink.split.i268_crit_edge: ; preds = %for.body10.i234.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i268

for.inc.i237.5:                                   ; preds = %for.body10.i234.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %rbit.085.i223)
  %cmp8.i236.5 = icmp sgt i32 %rbit.085.i223, 5
  br i1 %cmp8.i236.5, label %for.body10.i234.6, label %for.inc.i237.5.for.end.i240_crit_edge

for.inc.i237.5.for.end.i240_crit_edge:            ; preds = %for.inc.i237.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i240

for.body10.i234.6:                                ; preds = %for.inc.i237.5
  %dec.i235.5 = add nsw i32 %rbit.085.i223, -6
  %shl.i231.6 = shl nuw i32 1, %dec.i235.5
  %and.i232.6 = and i32 %shl.i231.6, %conv11.i228
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i232.6)
  %tobool.not.i233.6 = icmp eq i32 %and.i232.6, 0
  br i1 %tobool.not.i233.6, label %for.inc.i237.6, label %for.body10.i234.6.cleanup.sink.split.i268_crit_edge

for.body10.i234.6.cleanup.sink.split.i268_crit_edge: ; preds = %for.body10.i234.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i268

for.inc.i237.6:                                   ; preds = %for.body10.i234.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %rbit.085.i223)
  %cmp8.i236.6 = icmp sgt i32 %rbit.085.i223, 6
  br i1 %cmp8.i236.6, label %for.body10.i234.7, label %for.inc.i237.6.for.end.i240_crit_edge

for.inc.i237.6.for.end.i240_crit_edge:            ; preds = %for.inc.i237.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i240

for.body10.i234.7:                                ; preds = %for.inc.i237.6
  %dec.i235.6 = add nsw i32 %rbit.085.i223, -7
  %shl.i231.7 = shl nuw i32 1, %dec.i235.6
  %and.i232.7 = and i32 %shl.i231.7, %conv11.i228
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i232.7)
  %tobool.not.i233.7 = icmp eq i32 %and.i232.7, 0
  br i1 %tobool.not.i233.7, label %for.body10.i234.7.for.end.i240_crit_edge, label %for.body10.i234.7.cleanup.sink.split.i268_crit_edge

for.body10.i234.7.cleanup.sink.split.i268_crit_edge: ; preds = %for.body10.i234.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i268

for.body10.i234.7.for.end.i240_crit_edge:         ; preds = %for.body10.i234.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i240

for.end.i240:                                     ; preds = %for.body10.i234.7.for.end.i240_crit_edge, %for.inc.i237.6.for.end.i240_crit_edge, %for.inc.i237.5.for.end.i240_crit_edge, %for.inc.i237.4.for.end.i240_crit_edge, %for.inc.i237.3.for.end.i240_crit_edge, %for.inc.i237.2.for.end.i240_crit_edge, %for.inc.i237.1.for.end.i240_crit_edge, %for.inc.i237.for.end.i240_crit_edge, %for.cond7.preheader.i226.for.end.i240_crit_edge
  %dec16.i238 = add nsw i32 %i.083.i224, -1
  %cmp5.i239 = icmp sgt i32 %i.083.i224, 0
  br i1 %cmp5.i239, label %for.end.i240.for.cond7.preheader.i226_crit_edge, label %for.end17.i242

for.end.i240.for.cond7.preheader.i226_crit_edge:  ; preds = %for.end.i240
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond7.preheader.i226

for.end17.i242:                                   ; preds = %for.end.i240
  call void @__sanitizer_cov_trace_const_cmp1(i8 79, i8 %72)
  %cmp2587.i241 = icmp slt i8 %72, 79
  br i1 %cmp2587.i241, label %for.cond28.preheader.preheader.i246, label %for.end17.i242.if.end58_crit_edge

for.end17.i242.if.end58_crit_edge:                ; preds = %for.end17.i242
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

for.cond28.preheader.preheader.i246:              ; preds = %for.end17.i242
  %add19.i243 = add nsw i32 %conv.i217, 1
  %add19.i243.frozen = freeze i32 %add19.i243
  %div20.i245 = sdiv i32 %add19.i243.frozen, 8
  %78 = mul i32 %div20.i245, 8
  %rem23.i244.decomposed = sub i32 %add19.i243.frozen, %78
  %smax341 = call i32 @llvm.smax.i32(i32 %div20.i245, i32 9)
  br label %for.cond28.preheader.i251

for.cond28.preheader.i251:                        ; preds = %for.end43.i262.for.cond28.preheader.i251_crit_edge, %for.cond28.preheader.preheader.i246
  %rbit.189.i247 = phi i32 [ 0, %for.end43.i262.for.cond28.preheader.i251_crit_edge ], [ %rem23.i244.decomposed, %for.cond28.preheader.preheader.i246 ]
  %i.188.i248 = phi i32 [ %inc45.i260, %for.end43.i262.for.cond28.preheader.i251_crit_edge ], [ %div20.i245, %for.cond28.preheader.preheader.i246 ]
  %arrayidx32.i249 = getelementptr i8, ptr %mcs_mask, i32 %i.188.i248
  %79 = ptrtoint ptr %arrayidx32.i249 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx32.i249, align 1
  %conv33.i250 = zext i8 %80 to i32
  br label %for.body31.i256

for.body31.i256:                                  ; preds = %for.inc42.i259.for.body31.i256_crit_edge, %for.cond28.preheader.i251
  %j.186.i252 = phi i32 [ %rbit.189.i247, %for.cond28.preheader.i251 ], [ %inc.i257, %for.inc42.i259.for.body31.i256_crit_edge ]
  %shl34.i253 = shl nuw nsw i32 1, %j.186.i252
  %and35.i254 = and i32 %shl34.i253, %conv33.i250
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i254)
  %tobool36.not.i255 = icmp eq i32 %and35.i254, 0
  br i1 %tobool36.not.i255, label %for.inc42.i259, label %for.body31.i256.cleanup.sink.split.i268_crit_edge

for.body31.i256.cleanup.sink.split.i268_crit_edge: ; preds = %for.body31.i256
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i268

for.inc42.i259:                                   ; preds = %for.body31.i256
  %inc.i257 = add nsw i32 %j.186.i252, 1
  %exitcond.not.i258 = icmp eq i32 %inc.i257, 8
  br i1 %exitcond.not.i258, label %for.end43.i262, label %for.inc42.i259.for.body31.i256_crit_edge

for.inc42.i259.for.body31.i256_crit_edge:         ; preds = %for.inc42.i259
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body31.i256

for.end43.i262:                                   ; preds = %for.inc42.i259
  %inc45.i260 = add nsw i32 %i.188.i248, 1
  %exitcond342.not = icmp eq i32 %i.188.i248, %smax341
  br i1 %exitcond342.not, label %for.end43.i262.if.end58_crit_edge, label %for.end43.i262.for.cond28.preheader.i251_crit_edge

for.end43.i262.for.cond28.preheader.i251_crit_edge: ; preds = %for.end43.i262
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond28.preheader.i251

for.end43.i262.if.end58_crit_edge:                ; preds = %for.end43.i262
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

cleanup.sink.split.i268:                          ; preds = %for.body31.i256.cleanup.sink.split.i268_crit_edge, %for.body10.i234.7.cleanup.sink.split.i268_crit_edge, %for.body10.i234.6.cleanup.sink.split.i268_crit_edge, %for.body10.i234.5.cleanup.sink.split.i268_crit_edge, %for.body10.i234.4.cleanup.sink.split.i268_crit_edge, %for.body10.i234.3.cleanup.sink.split.i268_crit_edge, %for.body10.i234.2.cleanup.sink.split.i268_crit_edge, %for.body10.i234.1.cleanup.sink.split.i268_crit_edge, %for.body10.lr.ph.i229.cleanup.sink.split.i268_crit_edge
  %i.188.lcssa.sink.i263 = phi i32 [ %i.188.i248, %for.body31.i256.cleanup.sink.split.i268_crit_edge ], [ %i.083.i224, %for.body10.i234.7.cleanup.sink.split.i268_crit_edge ], [ %i.083.i224, %for.body10.i234.6.cleanup.sink.split.i268_crit_edge ], [ %i.083.i224, %for.body10.i234.5.cleanup.sink.split.i268_crit_edge ], [ %i.083.i224, %for.body10.i234.4.cleanup.sink.split.i268_crit_edge ], [ %i.083.i224, %for.body10.i234.3.cleanup.sink.split.i268_crit_edge ], [ %i.083.i224, %for.body10.i234.2.cleanup.sink.split.i268_crit_edge ], [ %i.083.i224, %for.body10.i234.1.cleanup.sink.split.i268_crit_edge ], [ %i.083.i224, %for.body10.lr.ph.i229.cleanup.sink.split.i268_crit_edge ]
  %j.186.lcssa.sink.i264 = phi i32 [ %j.186.i252, %for.body31.i256.cleanup.sink.split.i268_crit_edge ], [ %rbit.085.i223, %for.body10.lr.ph.i229.cleanup.sink.split.i268_crit_edge ], [ %dec.i235, %for.body10.i234.1.cleanup.sink.split.i268_crit_edge ], [ %dec.i235.1, %for.body10.i234.2.cleanup.sink.split.i268_crit_edge ], [ %dec.i235.2, %for.body10.i234.3.cleanup.sink.split.i268_crit_edge ], [ %dec.i235.3, %for.body10.i234.4.cleanup.sink.split.i268_crit_edge ], [ %dec.i235.4, %for.body10.i234.5.cleanup.sink.split.i268_crit_edge ], [ %dec.i235.5, %for.body10.i234.6.cleanup.sink.split.i268_crit_edge ], [ %dec.i235.6, %for.body10.i234.7.cleanup.sink.split.i268_crit_edge ]
  %mul38.i265 = shl i32 %i.188.lcssa.sink.i263, 3
  %add39.i266 = add i32 %j.186.lcssa.sink.i264, %mul38.i265
  br label %if.end58.sink.split

if.end58.sink.split:                              ; preds = %cleanup.sink.split.i268, %for.body7.i211.if.end58.sink.split_crit_edge, %for.body.i200.if.end58.sink.split_crit_edge, %for.body7.i187.if.end58.sink.split_crit_edge, %for.body.i176.if.end58.sink.split_crit_edge, %rate_idx_match_mcs_mask.exit168, %for.body7.i.if.end58.sink.split_crit_edge, %for.body.i.if.end58.sink.split_crit_edge, %rate_idx_match_mcs_mask.exit, %rate_idx_match_vht_mcs_mask.exit
  %add39.i266.sink = phi i32 [ %add39.i266, %cleanup.sink.split.i268 ], [ %add39.i164, %rate_idx_match_mcs_mask.exit168 ], [ %add39.i, %rate_idx_match_mcs_mask.exit ], [ %or40.i, %rate_idx_match_vht_mcs_mask.exit ], [ %j.1.i205, %for.body7.i211.if.end58.sink.split_crit_edge ], [ %j.030.i196, %for.body.i200.if.end58.sink.split_crit_edge ], [ %j.1.i181, %for.body7.i187.if.end58.sink.split_crit_edge ], [ %j.030.i172, %for.body.i176.if.end58.sink.split_crit_edge ], [ %j.1.i, %for.body7.i.if.end58.sink.split_crit_edge ], [ %j.030.i, %for.body.i.if.end58.sink.split_crit_edge ]
  %conv40.i267 = trunc i32 %add39.i266.sink to i8
  %81 = ptrtoint ptr %rate_idx to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv40.i267, ptr %rate_idx, align 1
  br label %if.end58

if.end58:                                         ; preds = %if.end58.sink.split, %for.end43.i262.if.end58_crit_edge, %for.end17.i242.if.end58_crit_edge, %sw.epilog.if.end58_crit_edge, %if.end40.if.end58_crit_edge, %if.end40.if.end58_crit_edge489, %if.end40.if.end58_crit_edge490, %for.cond4.i183.if.end58_crit_edge, %for.cond4.i.if.end58_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_get_vht_mask_from_cap(i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #9

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_drv_sta_rate_tbl_update(ptr noundef %local, ptr noundef %sdata, ptr noundef %sta) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_sta_rate_tbl_update, i32 0, i32 1), ptr blockaddress(@trace_drv_sta_rate_tbl_update, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !106

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !88) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !101

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !88) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !107
  %call42 = tail call i32 @__traceiter_drv_sta_rate_tbl_update(ptr noundef null, ptr noundef %local, ptr noundef %sdata, ptr noundef %sta) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !108
  %13 = tail call i32 @llvm.read_register.i32(metadata !88) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !88) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !101

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !88) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !109
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_sta_rate_tbl_update, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_sta_rate_tbl_update, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_drv_sta_rate_tbl_update.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_drv_sta_rate_tbl_update.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 967, ptr noundef nonnull @.str.1) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !110
  %31 = tail call i32 @llvm.read_register.i32(metadata !88) #10
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_drv_return_void(ptr noundef %local) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), ptr blockaddress(@trace_drv_return_void, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !106

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !88) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !101

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !88) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !111
  %call42 = tail call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %local) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !112
  %13 = tail call i32 @llvm.read_register.i32(metadata !88) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !88) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !101

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !88) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !109
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_drv_return_void.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_drv_return_void.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 205, ptr noundef nonnull @.str.1) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !110
  %31 = tail call i32 @llvm.read_register.i32(metadata !88) #10
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
declare dso_local i32 @__traceiter_drv_sta_rate_tbl_update(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_return_void(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_param_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_param_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !32, !34, !35, !36, !37, !38, !39, !41, !42, !43, !44, !45, !47, !49, !51, !52, !53, !55, !56, !58, !60, !61, !62, !64, !66, !68, !69, !71, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !87}
!llvm.named.register.sp = !{!88}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = !{ptr @__param_ieee80211_default_rc_algo, !1, !"__param_ieee80211_default_rc_algo", i1 false, i1 false}
!1 = !{!"../net/mac80211/rate.c", i32 26, i32 1}
!2 = !{ptr @__UNIQUE_ID_ieee80211_default_rc_algotype819, !1, !"__UNIQUE_ID_ieee80211_default_rc_algotype819", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_ieee80211_default_rc_algo820, !4, !"__UNIQUE_ID_ieee80211_default_rc_algo820", i1 false, i1 false}
!4 = !{!"../net/mac80211/rate.c", i32 27, i32 1}
!5 = distinct !{null, !6, !"__warned", i1 false, i1 false}
!6 = !{!"../net/mac80211/rate.c", i32 46, i32 17}
!7 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../net/mac80211/rate.c", i32 86, i32 3}
!11 = distinct !{null, !12, !"__warned", i1 false, i1 false}
!12 = !{!"../net/mac80211/rate.c", i32 103, i32 18}
!13 = !{ptr @__ksymtab_ieee80211_rate_control_register, !14, !"__ksymtab_ieee80211_rate_control_register", i1 false, i1 false}
!14 = !{!"../net/mac80211/rate.c", i32 147, i32 1}
!15 = !{ptr @__ksymtab_ieee80211_rate_control_unregister, !16, !"__ksymtab_ieee80211_rate_control_unregister", i1 false, i1 false}
!16 = !{!"../net/mac80211/rate.c", i32 163, i32 1}
!17 = !{ptr @rcname_ops, !18, !"rcname_ops", i1 false, i1 false}
!18 = !{!"../net/mac80211/rate.c", i32 224, i32 30}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../net/mac80211/rate.c", i32 282, i32 6}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/mac80211/rate.c", i32 291, i32 2}
!23 = !{ptr @__ksymtab_ieee80211_get_tx_rates, !24, !"__ksymtab_ieee80211_get_tx_rates", i1 false, i1 false}
!24 = !{!"../net/mac80211/rate.c", i32 890, i32 1}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../net/mac80211/rate.c", i32 953, i32 8}
!27 = !{ptr @__ksymtab_rate_control_set_rates, !28, !"__ksymtab_rate_control_set_rates", i1 false, i1 false}
!28 = !{!"../net/mac80211/rate.c", i32 965, i32 1}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../net/mac80211/rate.c", i32 972, i32 2}
!31 = !{ptr @.str.3, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/mac80211/rate.c", i32 985, i32 3}
!34 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @ieee80211_init_rate_ctrl_alg._entry, !33, !"_entry", i1 false, i1 false}
!38 = !{ptr @ieee80211_init_rate_ctrl_alg._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/mac80211/rate.c", i32 993, i32 2}
!41 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @ieee80211_init_rate_ctrl_alg._entry.8, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @ieee80211_init_rate_ctrl_alg._entry_ptr.11, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @__param_str_ieee80211_default_rc_algo, !1, !"__param_str_ieee80211_default_rc_algo", i1 false, i1 false}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/mac80211/rate.c", i32 25, i32 42}
!47 = !{ptr @ieee80211_default_rc_algo, !48, !"ieee80211_default_rc_algo", i1 false, i1 false}
!48 = !{!"../net/mac80211/rate.c", i32 25, i32 14}
!49 = distinct !{null, !50, !"__warned", i1 false, i1 false}
!50 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!51 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!53 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!54 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!55 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!56 = distinct !{null, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/mac80211/sta_info.h", i32 695, i32 2}
!58 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/mac80211/rate.c", i32 23, i32 8}
!60 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @rate_ctrl_mutex, !59, !"rate_ctrl_mutex", i1 false, i1 false}
!62 = !{ptr @rate_ctrl_algs, !63, !"rate_ctrl_algs", i1 false, i1 false}
!63 = !{!"../net/mac80211/rate.c", i32 22, i32 8}
!64 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!65 = !{!"../net/mac80211/rate.c", i32 718, i32 13}
!66 = distinct !{null, !67, !"__already_done", i1 false, i1 false}
!67 = !{!"../net/mac80211/rate.c", i32 371, i32 2}
!68 = !{ptr @.str.19, !67, !"<string literal>", i1 false, i1 false}
!69 = distinct !{null, !70, !"__already_done", i1 false, i1 false}
!70 = !{!"../net/mac80211/rate.c", i32 688, i32 7}
!71 = distinct !{null, !72, !"__warned", i1 false, i1 false}
!72 = !{!"../net/mac80211/ieee80211_i.h", i32 1505, i32 17}
!73 = !{ptr @.str.20, !72, !"<string literal>", i1 false, i1 false}
!74 = distinct !{null, !75, !"__already_done", i1 false, i1 false}
!75 = !{!"../net/mac80211/driver-ops.h", i32 545, i32 7}
!76 = !{ptr @.str.21, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.22, !75, !"<string literal>", i1 false, i1 false}
!78 = distinct !{null, !79, !"__already_done", i1 false, i1 false}
!79 = !{!"../net/mac80211/trace.h", i32 962, i32 1}
!80 = !{ptr @.str.23, !79, !"<string literal>", i1 false, i1 false}
!81 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!82 = distinct !{null, !83, !"__already_done", i1 false, i1 false}
!83 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!84 = !{ptr @.str.24, !83, !"<string literal>", i1 false, i1 false}
!85 = distinct !{null, !86, !"__already_done", i1 false, i1 false}
!86 = !{!"../net/mac80211/trace.h", i32 202, i32 1}
!87 = distinct !{null, !86, !"__warned", i1 false, i1 false}
!88 = !{!"sp"}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 1, !"min_enum_size", i32 4}
!91 = !{i32 8, !"branch-target-enforcement", i32 0}
!92 = !{i32 8, !"sign-return-address", i32 0}
!93 = !{i32 8, !"sign-return-address-all", i32 0}
!94 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!98 = !{i64 2149624981}
!99 = !{!"branch_weights", i32 1, i32 2000}
!100 = !{i64 2149625247}
!101 = !{!"branch_weights", i32 2000, i32 1}
!102 = !{!"auto-init"}
!103 = !{i32 0, i32 33}
!104 = !{i8 0, i8 2}
!105 = !{i64 2161422541}
!106 = !{i64 2148715547, i64 2148715552, i64 2148715565, i64 2148715609, i64 2148715643, i64 2148715664}
!107 = !{i64 2159562366}
!108 = !{i64 2159562609}
!109 = !{i64 2149633540}
!110 = !{i64 2149634576}
!111 = !{i64 2158761112}
!112 = !{i64 2158761315}
