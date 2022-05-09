; ModuleID = '/llk/IR_all_yes/net/mac80211/tdls.c_pt.bc'
source_filename = "../net/mac80211/tdls.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ieee80211_tdls_oper_request\22, \22a\22\09"
module asm "\09.weak\09__crc_ieee80211_tdls_oper_request\09\09\09\09"
module asm "\09.long\09__crc_ieee80211_tdls_oper_request\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ieee80211_tdls_oper_request:\09\09\09\09\09"
module asm "\09.asciz \09\22ieee80211_tdls_oper_request\22\09\09\09\09\09"
module asm "__kstrtabns_ieee80211_tdls_oper_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.91 }
%struct.atomic_t = type { i32 }
%union.anon.91 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ieee80211_local = type { %struct.ieee80211_hw, %struct.fq, ptr, %struct.codel_params, [4 x %struct.airtime_sched_info], i16, i32, %struct.atomic_t, ptr, ptr, [16 x i32], [16 x [11 x i32]], %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i8, i8, %struct.spinlock, %struct.work_struct, %struct.netdev_hw_addr_list, i8, i8, i8, i8, i8, i8, i8, i8, %struct.work_struct, i8, i8, i32, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.mutex, %struct.spinlock, i32, %struct.list_head, %struct.rhltable, %struct.timer_list, i32, [16 x %struct.sk_buff_head], %struct.tasklet_struct, %struct.tasklet_struct, [16 x %struct.atomic_t], %struct.atomic_t, ptr, %struct.arc4_ctx, %struct.arc4_ctx, i32, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.mutex, i32, %struct.cfg80211_ssid, ptr, ptr, ptr, %struct.cfg80211_chan_def, i32, i32, i32, i32, %struct.cfg80211_scan_info, %struct.work_struct, ptr, ptr, [6 x i8], i32, i32, %struct.delayed_work, ptr, %struct.cfg80211_chan_def, ptr, %struct.list_head, %struct.mutex, %struct.led_trigger, %struct.led_trigger, %struct.led_trigger, %struct.led_trigger, %struct.led_trigger, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, %struct.work_struct, %struct.work_struct, %struct.timer_list, %struct.notifier_block, %struct.notifier_block, i32, i32, i32, %struct.work_struct, %struct.local_debugfsdentries, i8, %struct.delayed_work, %struct.list_head, %struct.work_struct, %struct.work_struct, i32, i64, %struct.idr, %struct.spinlock, ptr, ptr, %struct.cfg80211_chan_def, [8 x i8] }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.fq = type { ptr, ptr, %struct.list_head, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.codel_params = type { i32, i32, i32, i32, i8, i8, i8 }
%struct.airtime_sched_info = type { %struct.spinlock, %struct.rb_root_cached, ptr, %struct.list_head, i64, i64, i64, i64, i64, i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.rhltable = type { %struct.rhashtable }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.140, i32 }
%union.anon.140 = type { ptr }
%struct.arc4_ctx = type { [256 x i32], i32, i32 }
%struct.cfg80211_ssid = type { [32 x i8], i8 }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.led_trigger = type { ptr, ptr, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.local_debugfsdentries = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.125, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
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
%struct.anon.125 = type { i64, i64, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sta_info = type { %struct.list_head, %struct.list_head, %struct.callback_head, %struct.rhlist_head, [6 x i8], ptr, ptr, [8 x ptr], [4 x ptr], i8, ptr, ptr, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.work_struct, i16, i8, i8, i8, i32, i32, %struct.spinlock, [4 x %struct.sk_buff_head], [4 x %struct.sk_buff_head], i32, i32, i64, i32, %struct.ieee80211_sta_rx_stats, %struct.anon.148, [17 x i16], %struct.anon.149, %struct.anon.150, [16 x i16], [4 x %struct.airtime_info], %struct.sta_ampdu_mlme, ptr, i32, i32, ptr, %struct.codel_params, i8, %struct.cfg80211_chan_def, %struct.ieee80211_fragment_cache, %struct.ieee80211_sta }
%struct.callback_head = type { ptr, ptr }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.ieee80211_sta_rx_stats = type { i32, i32, i32, i32, i32, i32, i8, [4 x i8], i32, %struct.u64_stats_sync, i64, [17 x i64] }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.anon.148 = type { %struct.ewma_signal, [4 x %struct.ewma_signal] }
%struct.ewma_signal = type { i32 }
%struct.anon.149 = type { i32, i32, i32, i32, i32, [17 x i64], [17 x i64], i32, i8, i8, %struct.ewma_avg_signal }
%struct.ewma_avg_signal = type { i32 }
%struct.anon.150 = type { [4 x i64], [4 x i64], %struct.ieee80211_tx_rate, %struct.rate_info, [17 x i64] }
%struct.ieee80211_tx_rate = type <{ i8, i16 }>
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.airtime_info = type { i64, i64, i64, i64, %struct.list_head, %struct.atomic_t, i32, i32, i32, i16 }
%struct.sta_ampdu_mlme = type { %struct.mutex, [16 x ptr], [16 x i8], [1 x i32], [1 x i32], [1 x i32], [1 x i32], [1 x i32], %struct.work_struct, [16 x ptr], [16 x ptr], [16 x i32], [16 x i8], i8 }
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
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon.40, %union.anon.43, %union.anon.44, [48 x i8], %union.anon.45, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.47, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, ptr, %union.anon.42 }
%union.anon.42 = type { ptr }
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
%struct.ieee80211_sub_if_data = type { %struct.list_head, %struct.wireless_dev, %struct.list_head, i32, i32, %struct.delayed_work, ptr, ptr, i32, i32, [16 x i8], %struct.ieee80211_fragment_cache, i16, i8, [8 x ptr], ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8, i32, %struct.atomic_t, [4 x %struct.ieee80211_tx_queue_params], ptr, [4 x %struct.airtime_info], %struct.work_struct, i8, %struct.cfg80211_chan_def, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.cfg80211_chan_def, i8, i8, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, i8, i32, i32, i32, i8, %struct.delayed_work, ptr, [6 x i32], [6 x i8], [6 x [10 x i8]], [6 x i8], [6 x [8 x i16]], [6 x i32], i8, %union.anon.160, %struct.anon.194, %struct.ieee80211_vif }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.126, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.anon.126 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.cfg80211_bss_selection = type { i32, %union.anon.127 }
%union.anon.127 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%union.anon.160 = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i32, i8, [32 x i8], i32, i8, i8, i8, i8, i8, i32, i32, %struct.atomic_t, i32, i32, i32, ptr, %struct.spinlock, %struct.mesh_preq_queue, i32, %struct.mesh_stats, %struct.mesh_config, %struct.atomic_t, i32, i8, i32, ptr, ptr, i8, i32, i8, ptr, i64, %struct.spinlock, i32, i32, i32, %struct.ps_data, ptr, i32, i8, i16, i32, %struct.mesh_table, %struct.mesh_table, i32, i32 }
%struct.mesh_preq_queue = type { %struct.list_head, [6 x i8], i8 }
%struct.mesh_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.mesh_config = type { i16, i16, i16, i16, i8, i8, i8, i8, i32, i8, i32, i16, i32, i16, i16, i16, i8, i8, i8, i16, i8, i8, i32, i16, i32, i16, i16, i32, i16, i32, i8 }
%struct.ps_data = type { [252 x i8], %struct.sk_buff_head, %struct.atomic_t, i32, i8 }
%struct.mesh_table = type { %struct.hlist_head, %struct.spinlock, %struct.rhashtable, %struct.hlist_head, %struct.spinlock, %struct.atomic_t }
%struct.hlist_head = type { ptr }
%struct.anon.194 = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_tdls_data = type { [6 x i8], [6 x i8], i16, i8, i8, i8, %union.anon.195 }
%union.anon.195 = type <{ %struct.anon.199, [3 x i8] }>
%struct.anon.199 = type { i16, [0 x i8] }
%struct.anon.201 = type { i8, i8, [0 x i8] }
%struct.ieee80211_tdls_ch_sw_params = type { ptr, ptr, i8, i32, i32, i16, i16, ptr, i32 }
%struct.ieee802_11_elems = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [8 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i8, i8 }
%struct.ieee80211_tdls_lnkie = type { i8, i8, [6 x i8], [6 x i8], [6 x i8] }
%struct.ieee80211_ch_switch_timing = type { i16, i16 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.anon.196 = type <{ i8, i16, [0 x i8] }>
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.161 }
%union.anon.161 = type { %struct.anon.167, [16 x i8] }
%struct.anon.167 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.anon.174 = type { i8, %union.anon.175 }
%union.anon.175 = type <{ %struct.anon.180, [17 x i8] }>
%struct.anon.180 = type { i8, i8, i16, i16, i16, [0 x i8] }
%struct.ieee80211_if_managed = type { %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i32, i32, i8, i8, ptr, ptr, ptr, [6 x i8], i8, i8, i8, i8, i32, i32, %struct.work_struct, i32, i8, i8, i8, i32, i8, i8, i16, i32, i32, i32, i32, i32, i8, i16, %struct.ewma_beacon_signal, i32, i32, i32, i32, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_s1g_cap, %struct.ieee80211_s1g_cap, [6 x i8], %struct.delayed_work, ptr, ptr, %struct.spinlock, i8, i8, [4 x %struct.ieee80211_sta_tx_tspec], %struct.delayed_work, ptr, i32 }
%struct.ewma_beacon_signal = type { i32 }
%struct.ieee80211_s1g_cap = type { [10 x i8], [5 x i8] }
%struct.ieee80211_sta_tx_tspec = type { i32, i32, i8, i8, i32, i32, i8 }
%struct.ieee80211_wmm_param_ie = type { i8, i8, [3 x i8], i8, i8, i8, i8, i8, [4 x %struct.ieee80211_wmm_ac_param] }
%struct.ieee80211_wmm_ac_param = type { i8, i8, i16 }

@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: TDLS del peer %pM\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: TDLS mgmt action %d peer %pM status %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: TDLS oper %d peer %pM\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: TDLS: disallow link during CSA\0A\00", [60 x i8] zeroinitializer }, align 32
@ieee80211_tdls_oper.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/mac80211/tdls.c\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: Discarding TDLS oper %d - not STA or disconnected\0A\00", [41 x i8] zeroinitializer }, align 32
@__kstrtab_ieee80211_tdls_oper_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_ieee80211_tdls_oper_request = external dso_local constant [0 x i8], align 1
@__ksymtab_ieee80211_tdls_oper_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ieee80211_tdls_oper_request to i32), ptr @__kstrtab_ieee80211_tdls_oper_request, ptr @__kstrtabns_ieee80211_tdls_oper_request }, section "___ksymtab+ieee80211_tdls_oper_request", align 4
@.str.6 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: Invalid TDLS peer %pM for channel switch request\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: TDLS channel switch unsupported by %pM\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: Invalid TDLS peer %pM for channel switch cancel\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: TDLS channel switch not initiated by %pM\0A\00", [50 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@ieee80211_process_tdls_channel_switch.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ieee80211_teardown_tdls_peers.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: disconnected from TDLS peer %pM (Reason: %u=%s)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: Aborting TDLS setup due to SMPS mode %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: Failed sending TDLS teardown packet %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"net/mac80211/driver-ops.h\00", [38 x i8] zeroinitializer }, align 32
@drv_mgd_protect_tdls_discover.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.15 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: Failed check-sdata-in-driver check, flags: 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@drv_mgd_protect_tdls_discover.__already_done.16 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_mgd_protect_tdls_discover = external dso_local global %struct.tracepoint, align 4
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/mac80211/trace.h\00", [43 x i8] zeroinitializer }, align 32
@trace_drv_mgd_protect_tdls_discover.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_drv_return_void = external dso_local global %struct.tracepoint, align 4
@trace_drv_return_void.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ieee80211_get_sband.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"net/mac80211/ieee80211_i.h\00", [37 x i8] zeroinitializer }, align 32
@ieee80211_tdls_add_setup_start_ies.before_ext_cap = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01\072$0", [27 x i8] zeroinitializer }, align 32
@ieee80211_tdls_add_setup_start_ies.before_ht_cap = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\01\072$0\7F.78;", [22 x i8] zeroinitializer }, align 32
@ieee80211_tdls_add_setup_start_ies.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ieee80211_tdls_add_setup_start_ies.before_vht_cap = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\01\072$0\7F.78;\9E", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: TDLS ch width upgraded %d -> %d\0A\00", [59 x i8] zeroinitializer }, align 32
@ieee80211_tdls_add_setup_cfm_ies.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ieee80211_tdls_add_setup_cfm_ies.before_qos = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"0", [31 x i8] zeroinitializer }, align 32
@ieee80211_tdls_add_setup_cfm_ies.before_ht_op = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.78", [28 x i8] zeroinitializer }, align 32
@ieee80211_tdls_add_chan_switch_req_ies.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ieee80211_tdls_add_chan_switch_req_ies.before_lnkie = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c">", [31 x i8] zeroinitializer }, align 32
@ieee80211_tx_skb_tid.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@iee80211_tdls_recalc_chanctx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@iee80211_tdls_have_ht_peers.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: Failed building TDLS channel switch frame\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: No switch timing IE in TDLS switch\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%s: TDLS channel switch request template for %pM ch %d width %d\0A\00", [63 x i8] zeroinitializer }, align 32
@drv_tdls_channel_switch.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_tdls_channel_switch = external dso_local global %struct.tracepoint, align 4
@trace_drv_tdls_channel_switch.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_drv_return_int = external dso_local global %struct.tracepoint, align 4
@trace_drv_return_int.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@drv_tdls_cancel_channel_switch.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_tdls_cancel_channel_switch = external dso_local global %struct.tracepoint, align 4
@trace_drv_tdls_cancel_channel_switch.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.28 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: TDLS channel switch req too short: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: Invalid channel in TDLS chan switch: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: Unsupported channel for TDLS chan switch: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: Invalid IEs in TDLS channel switch req\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: TDLS channel switch req - missing IEs\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: TDLS chan switch to forbidden channel\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: TDLS chan switch from non-peer sta %pM\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: TDLS chan switch invalid lnk-id initiator\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: TDLS chan switch - wide chan unsupported\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s: TDLS ch switch request received from %pM ch %d width %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: Failed building TDLS channel switch resp frame\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: No switch timing IE in TDLS switch resp\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: TDLS get channel switch response template for %pM\0A\00", [41 x i8] zeroinitializer }, align 32
@__tracepoint_drv_tdls_recv_channel_switch = external dso_local global %struct.tracepoint, align 4
@trace_drv_tdls_recv_channel_switch.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.41 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: TDLS channel switch resp too short: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: Invalid IEs in TDLS channel switch resp\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: TDLS channel switch resp - missing IEs\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s: TDLS channel switch response received from %pM status %d\0A\00", [34 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.47 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 1, i64 2, i64 3, i64 10, i64 14]
@__sancov_gen_cov_switch_values.48 = internal global [10 x i64] [i64 8, i64 8, i64 0, i64 1, i64 2, i64 3, i64 5, i64 6, i64 10, i64 14]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 14]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 8, i64 5, i64 6]
@__sancov_gen_cov_switch_values.52 = internal global [8 x i64] [i64 6, i64 8, i64 2, i64 3, i64 4, i64 5, i64 6, i64 112]
@__sancov_gen_cov_switch_values.53 = internal global [10 x i64] [i64 8, i64 8, i64 0, i64 1, i64 2, i64 3, i64 5, i64 6, i64 10, i64 14]
@__sancov_gen_cov_switch_values.54 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 5, i64 6, i64 10]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 14]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 14]
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 35, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1242, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1371, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1376, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1395, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1448, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1576, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1584, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1620, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1627, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1975, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 2000, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1081, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1167, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 860, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant [29 x i8] c"../net/mac80211/driver-ops.h\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 862, i32 7 }
@___asan_gen_.109 = private unnamed_addr constant [24 x i8] c"../net/mac80211/trace.h\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 1510, i32 1 }
@___asan_gen_.112 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 108, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [30 x i8] c"../net/mac80211/ieee80211_i.h\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1505, i32 17 }
@___asan_gen_.117 = private unnamed_addr constant [15 x i8] c"before_ext_cap\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 384, i32 19 }
@___asan_gen_.120 = private unnamed_addr constant [14 x i8] c"before_ht_cap\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 408, i32 19 }
@___asan_gen_.123 = private unnamed_addr constant [15 x i8] c"before_vht_cap\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 478, i32 19 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 349, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant [11 x i8] c"before_qos\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 571, i32 19 }
@___asan_gen_.132 = private unnamed_addr constant [13 x i8] c"before_ht_op\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 588, i32 19 }
@___asan_gen_.135 = private unnamed_addr constant [13 x i8] c"before_lnkie\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 662, i32 19 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1257, i32 9 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1535, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1543, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1551, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1798, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1826, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1833, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1845, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1851, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1877, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1885, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1897, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1905, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1924, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1659, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1668, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1677, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1700, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1729, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1735, i32 3 }
@___asan_gen_.199 = private constant [23 x i8] c"../net/mac80211/tdls.c\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1763, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 695, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 723, i32 2 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__ksymtab_ieee80211_tdls_oper_request, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @ieee80211_tdls_add_setup_start_ies.before_ext_cap, ptr @ieee80211_tdls_add_setup_start_ies.before_ht_cap, ptr @ieee80211_tdls_add_setup_start_ies.before_vht_cap, ptr @.str.21, ptr @ieee80211_tdls_add_setup_cfm_ies.before_qos, ptr @ieee80211_tdls_add_setup_cfm_ies.before_ht_op, ptr @ieee80211_tdls_add_chan_switch_req_ies.before_lnkie, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_tdls_add_setup_start_ies.before_ext_cap to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_tdls_add_setup_start_ies.before_ht_cap to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_tdls_add_setup_start_ies.before_vht_cap to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_tdls_add_setup_cfm_ies.before_qos to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_tdls_add_setup_cfm_ies.before_ht_op to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_tdls_add_chan_switch_req_ies.before_lnkie to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_tdls_peer_del_work(ptr noundef %wk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr i8, ptr %wk, i32 -2100
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %mtx = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 66
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #7
  %tdls_peer = getelementptr i8, ptr %wk, i32 -6
  %2 = ptrtoint ptr %tdls_peer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tdls_peer, align 4
  %add.ptr.i = getelementptr i8, ptr %wk, i32 -2
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr.i, align 2
  %conv.i = zext i16 %5 to i32
  %or.i = or i32 %3, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %wk, i32 -3192
  %name = getelementptr i8, ptr %wk, i32 -2088
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str, ptr noundef %name, ptr noundef %tdls_peer) #7
  %call9 = tail call i32 @sta_info_destroy_addr(ptr noundef %add.ptr, ptr noundef %tdls_peer) #7
  %6 = call ptr @memset(ptr %tdls_peer, i32 0, i32 6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mtx) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sdata_dbg(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sta_info_destroy_addr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_tdls_mgmt(ptr nocapture noundef readonly %wiphy, ptr noundef %dev, ptr noundef %peer, i8 noundef zeroext %action_code, i8 noundef zeroext %dialog_token, i16 noundef zeroext %status_code, i32 noundef %peer_capability, i1 noundef zeroext %initiator, ptr noundef %extra_ies, i32 noundef %extra_ies_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %flags = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 32
  %and = and i32 %1, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %vif = getelementptr i8, ptr %dev, i32 6384
  %2 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %associated = getelementptr i8, ptr %dev, i32 5240
  %4 = ptrtoint ptr %associated to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %associated, align 8
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %lor.lhs.false
  %conv = zext i8 %action_code to i32
  %6 = zext i8 %action_code to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %action_code, label %if.end3.sw.epilog_crit_edge [
    i8 0, label %if.end3.sw.bb_crit_edge
    i8 1, label %if.end3.sw.bb_crit_edge65
    i8 3, label %sw.bb6
    i8 10, label %sw.bb9
    i8 2, label %if.end3.sw.bb10_crit_edge
    i8 14, label %if.end3.sw.bb10_crit_edge66
  ]

if.end3.sw.bb10_crit_edge66:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb10

if.end3.sw.bb10_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb10

if.end3.sw.bb_crit_edge65:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end3.sw.bb_crit_edge:                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end3.sw.epilog_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end3.sw.bb_crit_edge, %if.end3.sw.bb_crit_edge65
  %local1.i = getelementptr i8, ptr %dev, i32 3396
  %7 = ptrtoint ptr %local1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %local1.i, align 4
  %driver_smps_mode.i = getelementptr i8, ptr %dev, i32 5268
  %9 = ptrtoint ptr %driver_smps_mode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %driver_smps_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %switch.i = icmp ult i32 %10, 2
  br i1 %switch.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr i8, ptr %dev, i32 3408
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.12, ptr noundef %name.i, i32 noundef %10) #7
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  %mtx.i = getelementptr inbounds %struct.ieee80211_local, ptr %8, i32 0, i32 66
  tail call void @mutex_lock_nested(ptr noundef %mtx.i, i32 noundef 0) #7
  %tdls_peer.i = getelementptr i8, ptr %dev, i32 5490
  %11 = ptrtoint ptr %tdls_peer.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tdls_peer.i, align 4
  %add.ptr.i.i45 = getelementptr i8, ptr %dev, i32 5494
  %13 = ptrtoint ptr %add.ptr.i.i45 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr.i.i45, align 2
  %conv.i.i = zext i16 %14 to i32
  %or.i.i = or i32 %12, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.if.end12.i_crit_edge, label %land.lhs.true6.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

land.lhs.true6.i:                                 ; preds = %if.end.i
  %15 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %peer, align 4
  %xor.i.i = xor i32 %16, %12
  %add.ptr1.i.i = getelementptr i8, ptr %peer, i32 4
  %17 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %18, %14
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i2.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i2.i)
  %cmp.i3.i = icmp eq i32 %or.i2.i, 0
  br i1 %cmp.i3.i, label %land.lhs.true6.i.if.end12.i_crit_edge, label %land.lhs.true6.i.out_unlock.i_crit_edge

land.lhs.true6.i.out_unlock.i_crit_edge:          ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock.i

land.lhs.true6.i.if.end12.i_crit_edge:            ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

if.end12.i:                                       ; preds = %land.lhs.true6.i.if.end12.i_crit_edge, %if.end.i.if.end12.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %status_code)
  %cmp13.i = icmp eq i16 %status_code, 0
  br i1 %cmp13.i, label %if.then15.i, label %if.end12.i.if.end19.i_crit_edge

if.end12.i.if.end19.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i

if.then15.i:                                      ; preds = %if.end12.i
  %19 = tail call i32 @llvm.read_register.i32(metadata !151) #7
  %and.i.i.i.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %22, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !161
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i.i, label %if.then15.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then15.i.rcu_read_lock.exit.i_crit_edge:       ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then15.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 696, ptr noundef nonnull @.str.46) #7
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then15.i.rcu_read_lock.exit.i_crit_edge
  %call16.i = tail call ptr @sta_info_get(ptr noundef %add.ptr.i.i, ptr noundef %peer) #7
  %tobool.not.i = icmp eq ptr %call16.i, null
  %call.i4.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %tobool.not.i, label %if.then17.i, label %if.end18.i

if.then17.i:                                      ; preds = %rcu_read_lock.exit.i
  br i1 %call.i4.i, label %if.then17.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i7.i

if.then17.i.rcu_read_unlock.exit.i_crit_edge:     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit.i

land.lhs.true.i7.i:                               ; preds = %if.then17.i
  %call1.i5.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i)
  %tobool.not.i6.i = icmp eq i32 %call1.i5.i, 0
  br i1 %tobool.not.i6.i, label %land.lhs.true.i7.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i9.i

land.lhs.true.i7.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i9.i:                              ; preds = %land.lhs.true.i7.i
  %.b4.i8.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8.i, label %land.lhs.true2.i9.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i10.i

land.lhs.true2.i9.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit.i

if.then.i10.i:                                    ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 724, ptr noundef nonnull @.str.47) #7
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i10.i, %land.lhs.true2.i9.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i7.i.rcu_read_unlock.exit.i_crit_edge, %if.then17.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !162
  %23 = tail call i32 @llvm.read_register.i32(metadata !151) #7
  %and.i.i.i.i.i11.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i11.i to ptr
  %preempt_count.i.i.i.i12.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i12.i, align 4
  %sub.i.i.i.i = add i32 %26, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i12.i, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %out_unlock.i

if.end18.i:                                       ; preds = %rcu_read_lock.exit.i
  br i1 %call.i4.i, label %if.end18.i.rcu_read_unlock.exit23.i_crit_edge, label %land.lhs.true.i16.i

if.end18.i.rcu_read_unlock.exit23.i_crit_edge:    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit23.i

land.lhs.true.i16.i:                              ; preds = %if.end18.i
  %call1.i14.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i14.i)
  %tobool.not.i15.i = icmp eq i32 %call1.i14.i, 0
  br i1 %tobool.not.i15.i, label %land.lhs.true.i16.i.rcu_read_unlock.exit23.i_crit_edge, label %land.lhs.true2.i18.i

land.lhs.true.i16.i.rcu_read_unlock.exit23.i_crit_edge: ; preds = %land.lhs.true.i16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit23.i

land.lhs.true2.i18.i:                             ; preds = %land.lhs.true.i16.i
  %.b4.i17.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i17.i, label %land.lhs.true2.i18.i.rcu_read_unlock.exit23.i_crit_edge, label %if.then.i19.i

land.lhs.true2.i18.i.rcu_read_unlock.exit23.i_crit_edge: ; preds = %land.lhs.true2.i18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit23.i

if.then.i19.i:                                    ; preds = %land.lhs.true2.i18.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 724, ptr noundef nonnull @.str.47) #7
  br label %rcu_read_unlock.exit23.i

rcu_read_unlock.exit23.i:                         ; preds = %if.then.i19.i, %land.lhs.true2.i18.i.rcu_read_unlock.exit23.i_crit_edge, %land.lhs.true.i16.i.rcu_read_unlock.exit23.i_crit_edge, %if.end18.i.rcu_read_unlock.exit23.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !162
  %27 = tail call i32 @llvm.read_register.i32(metadata !151) #7
  %and.i.i.i.i.i20.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i20.i to ptr
  %preempt_count.i.i.i.i21.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i21.i, align 4
  %sub.i.i.i22.i = add i32 %30, -1
  store volatile i32 %sub.i.i.i22.i, ptr %preempt_count.i.i.i.i21.i, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %if.end19.i

if.end19.i:                                       ; preds = %rcu_read_unlock.exit23.i, %if.end12.i.if.end19.i_crit_edge
  tail call void @ieee80211_flush_queues(ptr noundef %8, ptr noundef %add.ptr.i.i, i1 noundef zeroext false) #7
  %31 = call ptr @memcpy(ptr %tdls_peer.i, ptr %peer, i32 6)
  tail call void @mutex_unlock(ptr noundef %mtx.i) #7
  %call25.i = tail call fastcc i32 @ieee80211_tdls_prep_mgmt_packet(ptr noundef %dev, ptr noundef %peer, i8 noundef zeroext %action_code, i8 noundef zeroext %dialog_token, i16 noundef zeroext %status_code, i1 noundef zeroext %initiator, ptr noundef %extra_ies, i32 noundef %extra_ies_len) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp26.i = icmp slt i32 %call25.i, 0
  br i1 %cmp26.i, label %if.then28.i, label %if.end34.i

if.then28.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_lock_nested(ptr noundef %mtx.i, i32 noundef 0) #7
  %32 = call ptr @memset(ptr %tdls_peer.i, i32 0, i32 6)
  tail call void @mutex_unlock(ptr noundef %mtx.i) #7
  br label %sw.epilog

if.end34.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %local1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %local1.i, align 4
  %tdls_peer_del_work.i = getelementptr i8, ptr %dev, i32 5496
  tail call void @ieee80211_queue_delayed_work(ptr noundef %34, ptr noundef %tdls_peer_del_work.i, i32 noundef 1500) #7
  br label %sw.epilog

out_unlock.i:                                     ; preds = %rcu_read_unlock.exit.i, %land.lhs.true6.i.out_unlock.i_crit_edge
  %ret.0.i = phi i32 [ -67, %rcu_read_unlock.exit.i ], [ -16, %land.lhs.true6.i.out_unlock.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mtx.i) #7
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end3
  %local1.i47 = getelementptr i8, ptr %dev, i32 3396
  %35 = ptrtoint ptr %local1.i47 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %local1.i47, align 4
  tail call void @ieee80211_stop_vif_queues(ptr noundef %36, ptr noundef %add.ptr.i.i, i32 noundef 8) #7
  tail call void @ieee80211_flush_queues(ptr noundef %36, ptr noundef %add.ptr.i.i, i1 noundef zeroext false) #7
  %call2.i = tail call fastcc i32 @ieee80211_tdls_prep_mgmt_packet(ptr noundef %dev, ptr noundef %peer, i8 noundef zeroext 3, i8 noundef zeroext %dialog_token, i16 noundef zeroext %status_code, i1 noundef zeroext %initiator, ptr noundef %extra_ies, i32 noundef %extra_ies_len) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %if.then.i49, label %sw.bb6.if.end.i54_crit_edge

sw.bb6.if.end.i54_crit_edge:                      ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i54

if.then.i49:                                      ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  %name.i48 = getelementptr i8, ptr %dev, i32 3408
  tail call void (ptr, ...) @__sdata_err(ptr noundef nonnull @.str.13, ptr noundef %name.i48, i32 noundef %call2.i) #7
  br label %if.end.i54

if.end.i54:                                       ; preds = %if.then.i49, %sw.bb6.if.end.i54_crit_edge
  %37 = tail call i32 @llvm.read_register.i32(metadata !151) #7
  %and.i.i.i.i.i.i50 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i.i50 to ptr
  %preempt_count.i.i.i.i.i51 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i.i.i.i51, align 4
  %add.i.i.i.i52 = add i32 %40, 1
  store volatile i32 %add.i.i.i.i52, ptr %preempt_count.i.i.i.i.i51, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !161
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i.i53 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i.i53, label %if.end.i54.rcu_read_lock.exit.i61_crit_edge, label %land.lhs.true.i.i57

if.end.i54.rcu_read_lock.exit.i61_crit_edge:      ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i61

land.lhs.true.i.i57:                              ; preds = %if.end.i54
  %call1.i.i55 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i55)
  %tobool.not.i.i56 = icmp eq i32 %call1.i.i55, 0
  br i1 %tobool.not.i.i56, label %land.lhs.true.i.i57.rcu_read_lock.exit.i61_crit_edge, label %land.lhs.true2.i.i59

land.lhs.true.i.i57.rcu_read_lock.exit.i61_crit_edge: ; preds = %land.lhs.true.i.i57
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i61

land.lhs.true2.i.i59:                             ; preds = %land.lhs.true.i.i57
  %.b4.i.i58 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i58, label %land.lhs.true2.i.i59.rcu_read_lock.exit.i61_crit_edge, label %if.then.i.i60

land.lhs.true2.i.i59.rcu_read_lock.exit.i61_crit_edge: ; preds = %land.lhs.true2.i.i59
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i61

if.then.i.i60:                                    ; preds = %land.lhs.true2.i.i59
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 696, ptr noundef nonnull @.str.46) #7
  br label %rcu_read_lock.exit.i61

rcu_read_lock.exit.i61:                           ; preds = %if.then.i.i60, %land.lhs.true2.i.i59.rcu_read_lock.exit.i61_crit_edge, %land.lhs.true.i.i57.rcu_read_lock.exit.i61_crit_edge, %if.end.i54.rcu_read_lock.exit.i61_crit_edge
  %call3.i = tail call ptr @sta_info_get(ptr noundef %add.ptr.i.i, ptr noundef %peer) #7
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %rcu_read_lock.exit.i61.if.end6.i_crit_edge, label %if.then5.i

rcu_read_lock.exit.i61.if.end6.i_crit_edge:       ; preds = %rcu_read_lock.exit.i61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

if.then5.i:                                       ; preds = %rcu_read_lock.exit.i61
  call void @__sanitizer_cov_trace_pc() #9
  %_flags.i.i = getelementptr inbounds %struct.sta_info, ptr %call3.i, i32 0, i32 24
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %_flags.i.i) #7
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %rcu_read_lock.exit.i61.if.end6.i_crit_edge
  %call.i1.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i1.i, label %if.end6.i.ieee80211_tdls_mgmt_teardown.exit_crit_edge, label %land.lhs.true.i4.i

if.end6.i.ieee80211_tdls_mgmt_teardown.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ieee80211_tdls_mgmt_teardown.exit

land.lhs.true.i4.i:                               ; preds = %if.end6.i
  %call1.i2.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i2.i)
  %tobool.not.i3.i = icmp eq i32 %call1.i2.i, 0
  br i1 %tobool.not.i3.i, label %land.lhs.true.i4.i.ieee80211_tdls_mgmt_teardown.exit_crit_edge, label %land.lhs.true2.i6.i

land.lhs.true.i4.i.ieee80211_tdls_mgmt_teardown.exit_crit_edge: ; preds = %land.lhs.true.i4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ieee80211_tdls_mgmt_teardown.exit

land.lhs.true2.i6.i:                              ; preds = %land.lhs.true.i4.i
  %.b4.i5.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i5.i, label %land.lhs.true2.i6.i.ieee80211_tdls_mgmt_teardown.exit_crit_edge, label %if.then.i7.i

land.lhs.true2.i6.i.ieee80211_tdls_mgmt_teardown.exit_crit_edge: ; preds = %land.lhs.true2.i6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ieee80211_tdls_mgmt_teardown.exit

if.then.i7.i:                                     ; preds = %land.lhs.true2.i6.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 724, ptr noundef nonnull @.str.47) #7
  br label %ieee80211_tdls_mgmt_teardown.exit

ieee80211_tdls_mgmt_teardown.exit:                ; preds = %if.then.i7.i, %land.lhs.true2.i6.i.ieee80211_tdls_mgmt_teardown.exit_crit_edge, %land.lhs.true.i4.i.ieee80211_tdls_mgmt_teardown.exit_crit_edge, %if.end6.i.ieee80211_tdls_mgmt_teardown.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !162
  %41 = tail call i32 @llvm.read_register.i32(metadata !151) #7
  %and.i.i.i.i.i8.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i8.i to ptr
  %preempt_count.i.i.i.i9.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i.i9.i, align 4
  %sub.i.i.i.i62 = add i32 %44, -1
  store volatile i32 %sub.i.i.i.i62, ptr %preempt_count.i.i.i.i9.i, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  tail call void @ieee80211_wake_vif_queues(ptr noundef %36, ptr noundef %add.ptr.i.i, i32 noundef 8) #7
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end3
  %local = getelementptr i8, ptr %dev, i32 3396
  %45 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %local, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.14, i32 noundef 860) #7
  %flags.i = getelementptr i8, ptr %dev, i32 3400
  %47 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %48, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i64 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i64, label %land.rhs.i, label %if.end52.i

land.rhs.i:                                       ; preds = %sw.bb9
  %.b130.i = load i1, ptr @drv_mgd_protect_tdls_discover.__already_done, align 1
  br i1 %.b130.i, label %land.rhs.i.sw.bb10_crit_edge, label %return.critedge.i, !prof !163

land.rhs.i.sw.bb10_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb10

if.end52.i:                                       ; preds = %sw.bb9
  %49 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %50)
  %cmp.not.i = icmp eq i32 %50, 2
  br i1 %cmp.not.i, label %if.end52.i.if.end98.i_crit_edge, label %land.rhs60.i

if.end52.i.if.end98.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98.i

land.rhs60.i:                                     ; preds = %if.end52.i
  %.b128129.i = load i1, ptr @drv_mgd_protect_tdls_discover.__already_done.16, align 1
  br i1 %.b128129.i, label %land.rhs60.i.if.end98.i_crit_edge, label %if.then71.i, !prof !163

land.rhs60.i.if.end98.i_crit_edge:                ; preds = %land.rhs60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98.i

if.then71.i:                                      ; preds = %land.rhs60.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @drv_mgd_protect_tdls_discover.__already_done.16, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 864, i32 noundef 9, ptr noundef null) #7
  br label %if.end98.i

if.end98.i:                                       ; preds = %if.then71.i, %land.rhs60.i.if.end98.i_crit_edge, %if.end52.i.if.end98.i_crit_edge
  tail call fastcc void @trace_drv_mgd_protect_tdls_discover(ptr noundef %46, ptr noundef %add.ptr.i.i) #7
  %ops.i = getelementptr inbounds %struct.ieee80211_local, ptr %46, i32 0, i32 8
  %51 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ops.i, align 4
  %mgd_protect_tdls_discover.i = getelementptr inbounds %struct.ieee80211_ops, ptr %52, i32 0, i32 71
  %53 = ptrtoint ptr %mgd_protect_tdls_discover.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mgd_protect_tdls_discover.i, align 4
  %tobool106.not.i = icmp eq ptr %54, null
  br i1 %tobool106.not.i, label %if.end98.i.if.end111.i_crit_edge, label %if.then107.i

if.end98.i.if.end111.i_crit_edge:                 ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end111.i

if.then107.i:                                     ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %54(ptr noundef %46, ptr noundef %vif) #7
  br label %if.end111.i

if.end111.i:                                      ; preds = %if.then107.i, %if.end98.i.if.end111.i_crit_edge
  tail call fastcc void @trace_drv_return_void(ptr noundef %46) #7
  br label %sw.bb10

return.critedge.i:                                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @drv_mgd_protect_tdls_discover.__already_done, align 1
  %dev.c.i = getelementptr i8, ptr %dev, i32 3392
  %55 = ptrtoint ptr %dev.c.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev.c.i, align 8
  %tobool22.not.c.i = icmp eq ptr %56, null
  %name24.c.i = getelementptr i8, ptr %dev, i32 3408
  %cond.c.i = select i1 %tobool22.not.c.i, ptr %name24.c.i, ptr %56
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 862, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef %cond.c.i, i32 noundef %48) #7
  br label %sw.bb10

sw.bb10:                                          ; preds = %return.critedge.i, %if.end111.i, %land.rhs.i.sw.bb10_crit_edge, %if.end3.sw.bb10_crit_edge, %if.end3.sw.bb10_crit_edge66
  %call12 = tail call fastcc i32 @ieee80211_tdls_prep_mgmt_packet(ptr noundef %dev, ptr noundef %peer, i8 noundef zeroext %action_code, i8 noundef zeroext %dialog_token, i16 noundef zeroext %status_code, i1 noundef zeroext %initiator, ptr noundef %extra_ies, i32 noundef %extra_ies_len)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb10, %ieee80211_tdls_mgmt_teardown.exit, %out_unlock.i, %if.end34.i, %if.then28.i, %if.then.i, %if.end3.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %call12, %sw.bb10 ], [ 0, %ieee80211_tdls_mgmt_teardown.exit ], [ -95, %if.end3.sw.epilog_crit_edge ], [ -524, %if.then.i ], [ %call25.i, %if.then28.i ], [ 0, %if.end34.i ], [ %ret.0.i, %out_unlock.i ]
  %name = getelementptr i8, ptr %dev, i32 3408
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.1, ptr noundef %name, i32 noundef %conv, ptr noundef %peer, i32 noundef %ret.0) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ -524, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_tdls_prep_mgmt_packet(ptr noundef %dev, ptr noundef %peer, i8 noundef zeroext %action_code, i8 noundef zeroext %dialog_token, i16 noundef zeroext %status_code, i1 noundef zeroext %initiator, ptr noundef %extra_ies, i32 noundef %extra_ies_len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = tail call i32 @llvm.read_register.i32(metadata !151) #7
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !161
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 696, ptr noundef nonnull @.str.46) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call1 = tail call ptr @sta_info_get(ptr noundef %add.ptr.i.i, ptr noundef %peer) #7
  %4 = zext i8 %action_code to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.48)
  switch i8 %action_code, label %sw.default [
    i8 0, label %sw.bb
    i8 2, label %rcu_read_lock.exit.sw.bb3_crit_edge
    i8 10, label %rcu_read_lock.exit.sw.bb3_crit_edge40
    i8 1, label %sw.bb4
    i8 14, label %rcu_read_lock.exit.sw.bb10_crit_edge
    i8 3, label %rcu_read_lock.exit.sw.epilog_crit_edge
    i8 5, label %rcu_read_lock.exit.sw.epilog_crit_edge41
    i8 6, label %rcu_read_lock.exit.sw.epilog_crit_edge42
  ]

rcu_read_lock.exit.sw.epilog_crit_edge42:         ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

rcu_read_lock.exit.sw.epilog_crit_edge41:         ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

rcu_read_lock.exit.sw.epilog_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

rcu_read_lock.exit.sw.bb10_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb10

rcu_read_lock.exit.sw.bb3_crit_edge40:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

rcu_read_lock.exit.sw.bb3_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

sw.bb:                                            ; preds = %rcu_read_lock.exit
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %sw.bb.sw.bb3_crit_edge, label %if.then

sw.bb.sw.bb3_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %_flags.i = getelementptr inbounds %struct.sta_info, ptr %call1, i32 0, i32 24
  tail call void @_set_bit(i32 noundef 13, ptr noundef %_flags.i) #7
  %tdls_initiator = getelementptr inbounds %struct.sta_info, ptr %call1, i32 0, i32 48, i32 18
  %5 = ptrtoint ptr %tdls_initiator to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %tdls_initiator, align 1
  br label %sw.bb3

sw.bb3:                                           ; preds = %if.then, %sw.bb.sw.bb3_crit_edge, %rcu_read_lock.exit.sw.bb3_crit_edge, %rcu_read_lock.exit.sw.bb3_crit_edge40
  br label %sw.epilog

sw.bb4:                                           ; preds = %rcu_read_lock.exit
  %tobool5.not = icmp eq ptr %call1, null
  br i1 %tobool5.not, label %sw.bb4.sw.bb10_crit_edge, label %if.then6

sw.bb4.sw.bb10_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb10

if.then6:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  %_flags.i12 = getelementptr inbounds %struct.sta_info, ptr %call1, i32 0, i32 24
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %_flags.i12) #7
  %tdls_initiator8 = getelementptr inbounds %struct.sta_info, ptr %call1, i32 0, i32 48, i32 18
  %6 = ptrtoint ptr %tdls_initiator8 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %tdls_initiator8, align 1
  br label %sw.bb10

sw.bb10:                                          ; preds = %if.then6, %sw.bb4.sw.bb10_crit_edge, %rcu_read_lock.exit.sw.bb10_crit_edge
  br label %sw.epilog

sw.default:                                       ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb10, %sw.bb3, %rcu_read_lock.exit.sw.epilog_crit_edge, %rcu_read_lock.exit.sw.epilog_crit_edge41, %rcu_read_lock.exit.sw.epilog_crit_edge42
  %initiator.addr.0.shrunk = phi i1 [ %initiator, %sw.default ], [ %initiator, %rcu_read_lock.exit.sw.epilog_crit_edge ], [ %initiator, %rcu_read_lock.exit.sw.epilog_crit_edge41 ], [ %initiator, %rcu_read_lock.exit.sw.epilog_crit_edge42 ], [ false, %sw.bb10 ], [ true, %sw.bb3 ]
  %cmp = phi i1 [ true, %sw.default ], [ false, %rcu_read_lock.exit.sw.epilog_crit_edge ], [ false, %rcu_read_lock.exit.sw.epilog_crit_edge41 ], [ false, %rcu_read_lock.exit.sw.epilog_crit_edge42 ], [ false, %sw.bb10 ], [ false, %sw.bb3 ]
  %ret.0 = phi i32 [ -524, %sw.default ], [ 0, %rcu_read_lock.exit.sw.epilog_crit_edge ], [ 0, %rcu_read_lock.exit.sw.epilog_crit_edge41 ], [ 0, %rcu_read_lock.exit.sw.epilog_crit_edge42 ], [ 0, %sw.bb10 ], [ 0, %sw.bb3 ]
  %tobool12.not = icmp eq ptr %call1, null
  br i1 %tobool12.not, label %sw.epilog.if.end16_crit_edge, label %land.lhs.true

sw.epilog.if.end16_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

land.lhs.true:                                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %_flags.i13 = getelementptr inbounds %struct.sta_info, ptr %call1, i32 0, i32 24
  %7 = ptrtoint ptr %_flags.i13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %_flags.i13, align 4
  %9 = and i32 %8, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool14.not = icmp ne i32 %9, 0
  %spec.select = or i1 %initiator.addr.0.shrunk, %tobool14.not
  br label %if.end16

if.end16:                                         ; preds = %land.lhs.true, %sw.epilog.if.end16_crit_edge
  %initiator.addr.1.shrunk = phi i1 [ %initiator.addr.0.shrunk, %sw.epilog.if.end16_crit_edge ], [ %spec.select, %land.lhs.true ]
  %call.i14 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i14, label %if.end16.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i17

if.end16.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i17:                                ; preds = %if.end16
  %call1.i15 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i15)
  %tobool.not.i16 = icmp eq i32 %call1.i15, 0
  br i1 %tobool.not.i16, label %land.lhs.true.i17.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i19

land.lhs.true.i17.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i17
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i19:                               ; preds = %land.lhs.true.i17
  %.b4.i18 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i18, label %land.lhs.true2.i19.rcu_read_unlock.exit_crit_edge, label %if.then.i20

land.lhs.true2.i19.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i19
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i20:                                      ; preds = %land.lhs.true2.i19
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 724, ptr noundef nonnull @.str.47) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i20, %land.lhs.true2.i19.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i17.rcu_read_unlock.exit_crit_edge, %if.end16.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !162
  %10 = tail call i32 @llvm.read_register.i32(metadata !151) #7
  %and.i.i.i.i.i21 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i21 to ptr
  %preempt_count.i.i.i.i22 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i22, align 4
  %sub.i.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i22, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br i1 %cmp, label %rcu_read_unlock.exit.fail_crit_edge, label %if.end19

rcu_read_unlock.exit.fail_crit_edge:              ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end19:                                         ; preds = %rcu_read_unlock.exit
  %call21 = tail call fastcc ptr @ieee80211_tdls_build_mgmt_packet_data(ptr noundef %add.ptr.i.i, ptr noundef %peer, i8 noundef zeroext %action_code, i8 noundef zeroext %dialog_token, i16 noundef zeroext %status_code, i1 noundef zeroext %initiator.addr.1.shrunk, ptr noundef %extra_ies, i32 noundef %extra_ies_len, i8 noundef zeroext 0, ptr noundef null)
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.end19.fail_crit_edge, label %if.end24

if.end19.fail_crit_edge:                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end24:                                         ; preds = %if.end19
  %14 = zext i8 %action_code to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.49)
  switch i8 %action_code, label %sw.epilog34 [
    i8 14, label %if.then28
    i8 0, label %if.end24.sw.epilog34.thread_crit_edge
    i8 1, label %if.end24.sw.epilog34.thread_crit_edge43
  ]

if.end24.sw.epilog34.thread_crit_edge43:          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog34.thread

if.end24.sw.epilog34.thread_crit_edge:            ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog34.thread

if.then28:                                        ; preds = %if.end24
  %15 = tail call i32 @llvm.read_register.i32(metadata !151) #7
  %and.i.i.i.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %18, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !161
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i.i.i, label %if.then28.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then28.rcu_read_lock.exit.i.i_crit_edge:       ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then28
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 696, ptr noundef nonnull @.str.46) #7
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.then28.rcu_read_lock.exit.i.i_crit_edge
  %chanctx_conf1.i.i = getelementptr i8, ptr %dev, i32 7204
  %19 = ptrtoint ptr %chanctx_conf1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %chanctx_conf1.i.i, align 4
  %call.i.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %rcu_read_lock.exit.i.i.do.end8.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end8.i.i_crit_edge:     ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8.i.i

land.lhs.true.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call3.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.do.end8.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.do.end8.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %.b1.i.i = load i1, ptr @ieee80211_tx_skb_tid.__warned, align 1
  br i1 %.b1.i.i, label %land.lhs.true5.i.i.do.end8.i.i_crit_edge, label %if.then.i.i

land.lhs.true5.i.i.do.end8.i.i_crit_edge:         ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8.i.i

if.then.i.i:                                      ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @ieee80211_tx_skb_tid.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 2199, ptr noundef nonnull @.str.18) #7
  br label %do.end8.i.i

do.end8.i.i:                                      ; preds = %if.then.i.i, %land.lhs.true5.i.i.do.end8.i.i_crit_edge, %land.lhs.true.i.i.do.end8.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end8.i.i_crit_edge
  %tobool10.not.i.i = icmp eq ptr %20, null
  br i1 %tobool10.not.i.i, label %do.end23.i.i, label %if.end39.i.i, !prof !164

do.end23.i.i:                                     ; preds = %do.end8.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 2200, i32 noundef 9, ptr noundef null) #7
  %call.i1.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i1.i, label %do.end23.i.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i3.i

do.end23.i.i.rcu_read_unlock.exit.i_crit_edge:    ; preds = %do.end23.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit.i

land.lhs.true.i3.i:                               ; preds = %do.end23.i.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i2.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i2.i, label %land.lhs.true.i3.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i3.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i3.i
  %.b4.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i4.i

land.lhs.true2.i.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit.i

if.then.i4.i:                                     ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 724, ptr noundef nonnull @.str.47) #7
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i4.i, %land.lhs.true2.i.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i3.i.rcu_read_unlock.exit.i_crit_edge, %do.end23.i.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !162
  %21 = tail call i32 @llvm.read_register.i32(metadata !151) #7
  %and.i.i.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %24, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  tail call void @kfree_skb_reason(ptr noundef nonnull %call21, i32 noundef 0) #7
  br label %cleanup

if.end39.i.i:                                     ; preds = %do.end8.i.i
  %25 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %20, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  tail call void @__ieee80211_tx_skb_tid_band(ptr noundef %add.ptr.i.i, ptr noundef nonnull %call21, i32 noundef 7, i32 noundef %28) #7
  %call.i2.i.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i2.i.i, label %if.end39.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true.i5.i.i

if.end39.i.i.rcu_read_unlock.exit.i.i_crit_edge:  ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit.i.i

land.lhs.true.i5.i.i:                             ; preds = %if.end39.i.i
  %call1.i3.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3.i.i)
  %tobool.not.i4.i.i = icmp eq i32 %call1.i3.i.i, 0
  br i1 %tobool.not.i4.i.i, label %land.lhs.true.i5.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true2.i7.i.i

land.lhs.true.i5.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit.i.i

land.lhs.true2.i7.i.i:                            ; preds = %land.lhs.true.i5.i.i
  %.b4.i6.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6.i.i, label %land.lhs.true2.i7.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %if.then.i8.i.i

land.lhs.true2.i7.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit.i.i

if.then.i8.i.i:                                   ; preds = %land.lhs.true2.i7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 724, ptr noundef nonnull @.str.47) #7
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i8.i.i, %land.lhs.true2.i7.i.i.rcu_read_unlock.exit.i.i_crit_edge, %land.lhs.true.i5.i.i.rcu_read_unlock.exit.i.i_crit_edge, %if.end39.i.i.rcu_read_unlock.exit.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !162
  %29 = tail call i32 @llvm.read_register.i32(metadata !151) #7
  %and.i.i.i.i.i9.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i9.i.i to ptr
  %preempt_count.i.i.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i10.i.i, align 4
  %sub.i.i.i.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i10.i.i, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %cleanup

sw.epilog34.thread:                               ; preds = %if.end24.sw.epilog34.thread_crit_edge, %if.end24.sw.epilog34.thread_crit_edge43
  %priority = getelementptr inbounds %struct.sk_buff, ptr %call21, i32 0, i32 15, i32 0, i32 6
  %33 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 258, ptr %priority, align 4
  %call3537 = tail call zeroext i16 @ieee80211_select_queue(ptr noundef %add.ptr.i.i, ptr noundef nonnull %call21) #7
  %queue_mapping1.i38 = getelementptr inbounds %struct.sk_buff, ptr %call21, i32 0, i32 10
  %34 = ptrtoint ptr %queue_mapping1.i38 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %call3537, ptr %queue_mapping1.i38, align 8
  br label %if.end61

sw.epilog34:                                      ; preds = %if.end24
  %priority33 = getelementptr inbounds %struct.sk_buff, ptr %call21, i32 0, i32 15, i32 0, i32 6
  %35 = ptrtoint ptr %priority33 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 261, ptr %priority33, align 4
  %call35 = tail call zeroext i16 @ieee80211_select_queue(ptr noundef %add.ptr.i.i, ptr noundef nonnull %call21) #7
  %queue_mapping1.i = getelementptr inbounds %struct.sk_buff, ptr %call21, i32 0, i32 10
  %36 = ptrtoint ptr %queue_mapping1.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %call35, ptr %queue_mapping1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %action_code)
  %cmp37 = icmp eq i8 %action_code, 3
  br i1 %cmp37, label %land.lhs.true39, label %sw.epilog34.if.end61_crit_edge

sw.epilog34.if.end61_crit_edge:                   ; preds = %sw.epilog34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

land.lhs.true39:                                  ; preds = %sw.epilog34
  %local = getelementptr i8, ptr %dev, i32 3396
  %37 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %local, align 4
  %flags.i = getelementptr inbounds %struct.ieee80211_hw, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %flags.i, align 4
  %41 = and i32 %40, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.i.not = icmp eq i32 %41, 0
  br i1 %tobool.i.not, label %land.lhs.true39.if.end61_crit_edge, label %if.then42

land.lhs.true39.if.end61_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.then42:                                        ; preds = %land.lhs.true39
  %42 = tail call i32 @llvm.read_register.i32(metadata !151) #7
  %and.i.i.i.i.i1 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i.i.i1 to ptr
  %preempt_count.i.i.i.i2 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i.i.i2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i.i.i2, align 4
  %add.i.i.i3 = add i32 %45, 1
  store volatile i32 %add.i.i.i3, ptr %preempt_count.i.i.i.i2, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !161
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i4 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i4, label %if.then42.rcu_read_lock.exit11_crit_edge, label %land.lhs.true.i7

if.then42.rcu_read_lock.exit11_crit_edge:         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit11

land.lhs.true.i7:                                 ; preds = %if.then42
  %call1.i5 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5)
  %tobool.not.i6 = icmp eq i32 %call1.i5, 0
  br i1 %tobool.not.i6, label %land.lhs.true.i7.rcu_read_lock.exit11_crit_edge, label %land.lhs.true2.i9

land.lhs.true.i7.rcu_read_lock.exit11_crit_edge:  ; preds = %land.lhs.true.i7
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit11

land.lhs.true2.i9:                                ; preds = %land.lhs.true.i7
  %.b4.i8 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i8, label %land.lhs.true2.i9.rcu_read_lock.exit11_crit_edge, label %if.then.i10

land.lhs.true2.i9.rcu_read_lock.exit11_crit_edge: ; preds = %land.lhs.true2.i9
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit11

if.then.i10:                                      ; preds = %land.lhs.true2.i9
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 696, ptr noundef nonnull @.str.46) #7
  br label %rcu_read_lock.exit11

rcu_read_lock.exit11:                             ; preds = %if.then.i10, %land.lhs.true2.i9.rcu_read_lock.exit11_crit_edge, %land.lhs.true.i7.rcu_read_lock.exit11_crit_edge, %if.then42.rcu_read_lock.exit11_crit_edge
  %call43 = tail call ptr @sta_info_get(ptr noundef %add.ptr.i.i, ptr noundef %peer) #7
  %tobool44.not = icmp eq ptr %call43, null
  br i1 %tobool44.not, label %rcu_read_lock.exit11.land.end_crit_edge, label %land.rhs

rcu_read_lock.exit11.land.end_crit_edge:          ; preds = %rcu_read_lock.exit11
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.rhs:                                         ; preds = %rcu_read_lock.exit11
  call void @__sanitizer_cov_trace_pc() #9
  %_flags.i23 = getelementptr inbounds %struct.sta_info, ptr %call43, i32 0, i32 24
  %46 = ptrtoint ptr %_flags.i23 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %_flags.i23, align 4
  %48 = and i32 %47, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool46 = icmp ne i32 %48, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %rcu_read_lock.exit11.land.end_crit_edge
  %49 = phi i1 [ false, %rcu_read_lock.exit11.land.end_crit_edge ], [ %tobool46, %land.rhs ]
  %call.i26 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i26, label %land.end.rcu_read_unlock.exit36_crit_edge, label %land.lhs.true.i29

land.end.rcu_read_unlock.exit36_crit_edge:        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit36

land.lhs.true.i29:                                ; preds = %land.end
  %call1.i27 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i27)
  %tobool.not.i28 = icmp eq i32 %call1.i27, 0
  br i1 %tobool.not.i28, label %land.lhs.true.i29.rcu_read_unlock.exit36_crit_edge, label %land.lhs.true2.i31

land.lhs.true.i29.rcu_read_unlock.exit36_crit_edge: ; preds = %land.lhs.true.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit36

land.lhs.true2.i31:                               ; preds = %land.lhs.true.i29
  %.b4.i30 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i30, label %land.lhs.true2.i31.rcu_read_unlock.exit36_crit_edge, label %if.then.i32

land.lhs.true2.i31.rcu_read_unlock.exit36_crit_edge: ; preds = %land.lhs.true2.i31
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit36

if.then.i32:                                      ; preds = %land.lhs.true2.i31
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 724, ptr noundef nonnull @.str.47) #7
  br label %rcu_read_unlock.exit36

rcu_read_unlock.exit36:                           ; preds = %if.then.i32, %land.lhs.true2.i31.rcu_read_unlock.exit36_crit_edge, %land.lhs.true.i29.rcu_read_unlock.exit36_crit_edge, %land.end.rcu_read_unlock.exit36_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !162
  %50 = tail call i32 @llvm.read_register.i32(metadata !151) #7
  %and.i.i.i.i.i33 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i.i.i33 to ptr
  %preempt_count.i.i.i.i34 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %preempt_count.i.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %preempt_count.i.i.i.i34, align 4
  %sub.i.i.i35 = add i32 %53, -1
  store volatile i32 %sub.i.i.i35, ptr %preempt_count.i.i.i.i34, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  %teardown_lock = getelementptr i8, ptr %dev, i32 5604
  tail call void @_raw_spin_lock_bh(ptr noundef %teardown_lock) #7
  br i1 %49, label %land.lhs.true50, label %rcu_read_unlock.exit36.if.end58_crit_edge

rcu_read_unlock.exit36.if.end58_crit_edge:        ; preds = %rcu_read_unlock.exit36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

land.lhs.true50:                                  ; preds = %rcu_read_unlock.exit36
  %teardown_skb = getelementptr i8, ptr %dev, i32 5600
  %54 = ptrtoint ptr %teardown_skb to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %teardown_skb, align 8
  %tobool52.not = icmp eq ptr %55, null
  br i1 %tobool52.not, label %if.then53, label %land.lhs.true50.if.end58_crit_edge

land.lhs.true50.if.end58_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.then53:                                        ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #9
  %call54 = tail call ptr @skb_copy(ptr noundef nonnull %call21, i32 noundef 2592) #7
  %56 = ptrtoint ptr %teardown_skb to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call54, ptr %teardown_skb, align 8
  %orig_teardown_skb = getelementptr i8, ptr %dev, i32 5596
  %57 = ptrtoint ptr %orig_teardown_skb to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call21, ptr %orig_teardown_skb, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then53, %land.lhs.true50.if.end58_crit_edge, %rcu_read_unlock.exit36.if.end58_crit_edge
  %flags.0 = phi i32 [ 0, %land.lhs.true50.if.end58_crit_edge ], [ 1048577, %if.then53 ], [ 0, %rcu_read_unlock.exit36.if.end58_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %teardown_lock) #7
  br label %if.end61

if.end61:                                         ; preds = %if.end58, %land.lhs.true39.if.end61_crit_edge, %sw.epilog34.if.end61_crit_edge, %sw.epilog34.thread
  %flags.1 = phi i32 [ %flags.0, %if.end58 ], [ 0, %land.lhs.true39.if.end61_crit_edge ], [ 0, %sw.epilog34.if.end61_crit_edge ], [ 0, %sw.epilog34.thread ]
  tail call fastcc void @local_bh_disable()
  tail call void @__ieee80211_subif_start_xmit(ptr noundef nonnull %call21, ptr noundef %dev, i32 noundef %flags.1, i32 noundef 0, ptr noundef null) #7
  tail call fastcc void @local_bh_enable()
  br label %cleanup

fail:                                             ; preds = %if.end19.fail_crit_edge, %rcu_read_unlock.exit.fail_crit_edge
  %ret.1 = phi i32 [ %ret.0, %rcu_read_unlock.exit.fail_crit_edge ], [ -22, %if.end19.fail_crit_edge ]
  tail call void @consume_skb(ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end61, %rcu_read_unlock.exit.i.i, %rcu_read_unlock.exit.i
  %retval.0 = phi i32 [ %ret.1, %fail ], [ 0, %if.end61 ], [ 0, %rcu_read_unlock.exit.i ], [ 0, %rcu_read_unlock.exit.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_tdls_oper(ptr nocapture noundef readonly %wiphy, ptr noundef %dev, ptr noundef %peer, i32 noundef %oper) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %local1 = getelementptr i8, ptr %dev, i32 3396
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %flags = getelementptr inbounds %struct.wiphy, ptr %wiphy, i32 0, i32 11
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 32
  %and = and i32 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %vif = getelementptr i8, ptr %dev, i32 6384
  %4 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.not = icmp eq i32 %5, 2
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %oper)
  %switch = icmp ult i32 %oper, 3
  br i1 %switch, label %if.end3.cleanup_crit_edge, label %sw.epilog

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog:                                        ; preds = %if.end3
  %mtx.i = getelementptr i8, ptr %dev, i32 2348
  tail call void @mutex_lock_nested(ptr noundef %mtx.i, i32 noundef 0) #7
  %mtx = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 66
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #7
  %name = getelementptr i8, ptr %dev, i32 3408
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.2, ptr noundef %name, i32 noundef %oper, ptr noundef %peer) #7
  %6 = zext i32 %oper to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %oper, label %sw.epilog.if.end83_crit_edge [
    i32 3, label %sw.bb5
    i32 4, label %sw.epilog66
  ]

sw.epilog.if.end83_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

sw.bb5:                                           ; preds = %sw.epilog
  %csa_active = getelementptr i8, ptr %dev, i32 7191
  %7 = ptrtoint ptr %csa_active to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %csa_active, align 1, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool7.not = icmp eq i8 %8, 0
  br i1 %tobool7.not, label %if.end11, label %if.then8

if.then8:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.3, ptr noundef %name) #7
  br label %if.end83

if.end11:                                         ; preds = %sw.bb5
  %sta_mtx = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 46
  tail call void @mutex_lock_nested(ptr noundef %sta_mtx, i32 noundef 0) #7
  %call12 = tail call ptr @sta_info_get(ptr noundef %add.ptr.i.i, ptr noundef %peer) #7
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %sta_mtx) #7
  br label %if.end83

if.end16:                                         ; preds = %if.end11
  tail call fastcc void @iee80211_tdls_recalc_chanctx(ptr noundef %add.ptr.i.i, ptr noundef nonnull %call12)
  tail call fastcc void @iee80211_tdls_recalc_ht_protection(ptr noundef %add.ptr.i.i, ptr noundef nonnull %call12)
  %_flags.i = getelementptr inbounds %struct.sta_info, ptr %call12, i32 0, i32 24
  tail call void @_set_bit(i32 noundef 12, ptr noundef %_flags.i) #7
  tail call void @mutex_unlock(ptr noundef %sta_mtx) #7
  %tdls_peer = getelementptr i8, ptr %dev, i32 5490
  %9 = ptrtoint ptr %tdls_peer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tdls_peer, align 4
  %add.ptr.i = getelementptr i8, ptr %dev, i32 5494
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr.i, align 2
  %conv.i = zext i16 %12 to i32
  %or.i = or i32 %10, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.end16.land.rhs_crit_edge, label %lor.rhs

if.end16.land.rhs_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

lor.rhs:                                          ; preds = %if.end16
  %13 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %peer, align 4
  %xor.i = xor i32 %14, %10
  %add.ptr1.i = getelementptr i8, ptr %peer, i32 4
  %15 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %16, %12
  %xor3.i = zext i16 %xor37.i to i32
  %or.i132 = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i132)
  %cmp.i133.not = icmp eq i32 %or.i132, 0
  br i1 %cmp.i133.not, label %lor.rhs.land.lhs.true_crit_edge, label %lor.rhs.land.rhs_crit_edge

lor.rhs.land.rhs_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

lor.rhs.land.lhs.true_crit_edge:                  ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

land.rhs:                                         ; preds = %lor.rhs.land.rhs_crit_edge, %if.end16.land.rhs_crit_edge
  %.b129 = load i1, ptr @ieee80211_tdls_oper.__already_done, align 1
  br i1 %.b129, label %land.rhs.land.lhs.true_crit_edge, label %if.then32, !prof !163

land.rhs.land.lhs.true_crit_edge:                 ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.then32:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @ieee80211_tdls_oper.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1396, i32 noundef 9, ptr noundef null) #7
  br label %land.lhs.true

sw.epilog66:                                      ; preds = %sw.epilog
  %tx_pending_tasklet = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 54
  tail call void @tasklet_kill(ptr noundef %tx_pending_tasklet) #7
  tail call void @ieee80211_flush_queues(ptr noundef %1, ptr noundef %add.ptr.i.i, i1 noundef zeroext false) #7
  %call63 = tail call i32 @sta_info_destroy_addr(ptr noundef %add.ptr.i.i, ptr noundef %peer) #7
  %sta_mtx64 = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 46
  tail call void @mutex_lock_nested(ptr noundef %sta_mtx64, i32 noundef 0) #7
  tail call fastcc void @iee80211_tdls_recalc_ht_protection(ptr noundef %add.ptr.i.i, ptr noundef null)
  tail call void @mutex_unlock(ptr noundef %sta_mtx64) #7
  tail call fastcc void @iee80211_tdls_recalc_chanctx(ptr noundef %add.ptr.i.i, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp67 = icmp eq i32 %call63, 0
  br i1 %cmp67, label %sw.epilog66.land.lhs.true_crit_edge, label %sw.epilog66.if.end83_crit_edge

sw.epilog66.if.end83_crit_edge:                   ; preds = %sw.epilog66
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

sw.epilog66.land.lhs.true_crit_edge:              ; preds = %sw.epilog66
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.epilog66.land.lhs.true_crit_edge, %if.then32, %land.rhs.land.lhs.true_crit_edge, %lor.rhs.land.lhs.true_crit_edge
  %tdls_peer69 = getelementptr i8, ptr %dev, i32 5490
  %17 = ptrtoint ptr %tdls_peer69 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tdls_peer69, align 4
  %19 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %peer, align 4
  %xor.i134 = xor i32 %20, %18
  %add.ptr.i135 = getelementptr i8, ptr %dev, i32 5494
  %21 = ptrtoint ptr %add.ptr.i135 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr.i135, align 2
  %add.ptr1.i136 = getelementptr i8, ptr %peer, i32 4
  %23 = ptrtoint ptr %add.ptr1.i136 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %add.ptr1.i136, align 2
  %xor37.i137 = xor i16 %24, %22
  %xor3.i138 = zext i16 %xor37.i137 to i32
  %or.i139 = or i32 %xor.i134, %xor3.i138
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i139)
  %cmp.i140 = icmp eq i32 %or.i139, 0
  br i1 %cmp.i140, label %if.then72, label %land.lhs.true.if.then80_crit_edge

land.lhs.true.if.then80_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then80

if.then72:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %tdls_peer_del_work = getelementptr i8, ptr %dev, i32 5496
  %call74 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %tdls_peer_del_work) #7
  %25 = call ptr @memset(ptr %tdls_peer69, i32 0, i32 6)
  br label %if.then80

if.then80:                                        ; preds = %if.then72, %land.lhs.true.if.then80_crit_edge
  %26 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %local1, align 4
  %request_smps_work = getelementptr i8, ptr %dev, i32 5272
  tail call void @ieee80211_queue_work(ptr noundef %27, ptr noundef %request_smps_work) #7
  br label %if.end83

if.end83:                                         ; preds = %if.then80, %sw.epilog66.if.end83_crit_edge, %if.then14, %if.then8, %sw.epilog.if.end83_crit_edge
  %ret.0144 = phi i32 [ %call63, %sw.epilog66.if.end83_crit_edge ], [ 0, %if.then80 ], [ -524, %sw.epilog.if.end83_crit_edge ], [ -67, %if.then14 ], [ -16, %if.then8 ]
  tail call void @mutex_unlock(ptr noundef %mtx) #7
  tail call void @mutex_unlock(ptr noundef %mtx.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end83, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0144, %if.end83 ], [ -524, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -524, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sta_info_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iee80211_tdls_recalc_chanctx(ptr nocapture noundef readonly %sdata, ptr noundef %sta) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %chanctx_mtx = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 89
  tail call void @mutex_lock_nested(ptr noundef %chanctx_mtx, i32 noundef 0) #7
  %dep_map = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 89, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true5

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b57 = load i1, ptr @iee80211_tdls_recalc_chanctx.__warned, align 1
  br i1 %.b57, label %land.lhs.true5.do.end_crit_edge, label %if.then

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @iee80211_tdls_recalc_chanctx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1258, ptr noundef nonnull @.str.22) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %chanctx_conf = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 9
  %2 = ptrtoint ptr %chanctx_conf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chanctx_conf, align 4
  %tobool7.not = icmp eq ptr %3, null
  br i1 %tobool7.not, label %do.end.if.end33_crit_edge, label %if.then8

do.end.if.end33_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then8:                                         ; preds = %do.end
  %width9 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %width9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width9, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wiphy, align 8
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %arrayidx = getelementptr %struct.wiphy, ptr %7, i32 0, i32 53, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -48
  tail call void @ieee80211_recalc_chanctx_chantype(ptr noundef %1, ptr noundef %add.ptr) #7
  %14 = ptrtoint ptr %width9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %width9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %15)
  %cmp.not = icmp eq i32 %5, %15
  %tobool15.not = icmp eq ptr %sta, null
  %or.cond = or i1 %tobool15.not, %cmp.not
  br i1 %or.cond, label %if.then8.if.end33_crit_edge, label %land.lhs.true16

if.then8.if.end33_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

land.lhs.true16:                                  ; preds = %if.then8
  %_flags.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 24
  %16 = ptrtoint ptr %_flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %_flags.i, align 4
  %18 = and i32 %17, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool18.not = icmp eq i32 %18, 0
  br i1 %tobool18.not, label %land.lhs.true16.if.end33_crit_edge, label %if.then19

land.lhs.true16.if.end33_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then19:                                        ; preds = %land.lhs.true16
  %call22 = tail call i32 @ieee80211_chan_width_to_rx_bw(i32 noundef %15) #7
  %call23 = tail call i32 @ieee80211_sta_cap_rx_bw(ptr noundef nonnull %sta) #7
  %19 = tail call i32 @llvm.umin.i32(i32 %call22, i32 %call23)
  %bandwidth = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 14
  %20 = ptrtoint ptr %bandwidth to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bandwidth, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp27.not = icmp eq i32 %19, %21
  br i1 %cmp27.not, label %if.then19.if.end33_crit_edge, label %if.then28

if.then19.if.end33_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then28:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %19, ptr %bandwidth, align 8
  tail call void @rate_control_rate_update(ptr noundef %1, ptr noundef %13, ptr noundef nonnull %sta, i32 noundef 1) #7
  tail call void @ieee80211_recalc_chanctx_chantype(ptr noundef %1, ptr noundef %add.ptr) #7
  br label %if.end33

if.end33:                                         ; preds = %if.then28, %if.then19.if.end33_crit_edge, %land.lhs.true16.if.end33_crit_edge, %if.then8.if.end33_crit_edge, %do.end.if.end33_crit_edge
  tail call void @mutex_unlock(ptr noundef %chanctx_mtx) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iee80211_tdls_recalc_ht_protection(ptr noundef %sdata, ptr noundef readonly %sta) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 36, i32 0, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %sta, null
  br i1 %tobool1.not, label %if.end.lor.rhs_crit_edge, label %land.lhs.true

if.end.lor.rhs_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

land.lhs.true:                                    ; preds = %if.end
  %ht_supported = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 3, i32 1
  %2 = ptrtoint ptr %ht_supported to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ht_supported, align 2, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %land.lhs.true.lor.rhs_crit_edge, label %lor.end.thread

land.lhs.true.lor.rhs_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

lor.end.thread:                                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %ht_operation_mode38 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 27
  %4 = ptrtoint ptr %ht_operation_mode38 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ht_operation_mode38, align 8
  br label %35

lor.rhs:                                          ; preds = %land.lhs.true.lor.rhs_crit_edge, %if.end.lor.rhs_crit_edge
  %6 = tail call i32 @llvm.read_register.i32(metadata !151) #7
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !161
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i.i, label %lor.rhs.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

lor.rhs.rcu_read_lock.exit.i_crit_edge:           ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %lor.rhs
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 696, ptr noundef nonnull @.str.46) #7
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %lor.rhs.rcu_read_lock.exit.i_crit_edge
  %call.i = tail call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end.i_crit_edge

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b47.i = load i1, ptr @iee80211_tdls_have_ht_peers.__warned, align 1
  br i1 %.b47.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @iee80211_tdls_have_ht_peers.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1295, ptr noundef nonnull @.str.10) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  %local.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %10 = ptrtoint ptr %local.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %local.i, align 4
  %sta_list.i = getelementptr inbounds %struct.ieee80211_local, ptr %11, i32 0, i32 49
  %12 = ptrtoint ptr %sta_list.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %sta.060.i = load volatile ptr, ptr %sta_list.i, align 4
  %cmp.not61.i = icmp eq ptr %sta.060.i, %sta_list.i
  br i1 %cmp.not61.i, label %do.end.i.for.end.i_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %sta.062.i = phi ptr [ %sta.0.i, %for.inc.i.for.body.i_crit_edge ], [ %sta.060.i, %do.end.i.for.body.i_crit_edge ]
  %tdls.i = getelementptr inbounds %struct.sta_info, ptr %sta.062.i, i32 0, i32 48, i32 17
  %13 = ptrtoint ptr %tdls.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %tdls.i, align 4, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool12.not.i = icmp eq i8 %14, 0
  br i1 %tobool12.not.i, label %for.body.i.for.inc.i_crit_edge, label %lor.lhs.false.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %sdata13.i = getelementptr inbounds %struct.sta_info, ptr %sta.062.i, i32 0, i32 6
  %15 = ptrtoint ptr %sdata13.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sdata13.i, align 4
  %cmp14.not.i = icmp eq ptr %16, %sdata
  br i1 %cmp14.not.i, label %lor.lhs.false15.i, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

lor.lhs.false15.i:                                ; preds = %lor.lhs.false.i
  %uploaded.i = getelementptr inbounds %struct.sta_info, ptr %sta.062.i, i32 0, i32 22
  %17 = ptrtoint ptr %uploaded.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %uploaded.i, align 4, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool16.not.i = icmp eq i8 %18, 0
  br i1 %tobool16.not.i, label %lor.lhs.false15.i.for.inc.i_crit_edge, label %lor.lhs.false17.i

lor.lhs.false15.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

lor.lhs.false17.i:                                ; preds = %lor.lhs.false15.i
  %_flags.i.i = getelementptr inbounds %struct.sta_info, ptr %sta.062.i, i32 0, i32 24
  %19 = ptrtoint ptr %_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %_flags.i.i, align 4
  %21 = and i32 %20, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool19.not.i = icmp eq i32 %21, 0
  br i1 %tobool19.not.i, label %lor.lhs.false17.i.for.inc.i_crit_edge, label %lor.lhs.false20.i

lor.lhs.false17.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

lor.lhs.false20.i:                                ; preds = %lor.lhs.false17.i
  %22 = ptrtoint ptr %_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %_flags.i.i, align 4
  %24 = and i32 %23, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool22.not.i = icmp eq i32 %24, 0
  br i1 %tobool22.not.i, label %lor.lhs.false20.i.for.inc.i_crit_edge, label %lor.lhs.false23.i

lor.lhs.false20.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

lor.lhs.false23.i:                                ; preds = %lor.lhs.false20.i
  %ht_supported.i = getelementptr inbounds %struct.sta_info, ptr %sta.062.i, i32 0, i32 48, i32 3, i32 1
  %25 = ptrtoint ptr %ht_supported.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ht_supported.i, align 2, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool25.not.i = icmp eq i8 %26, 0
  br i1 %tobool25.not.i, label %lor.lhs.false23.i.for.inc.i_crit_edge, label %lor.lhs.false23.i.for.end.i_crit_edge

lor.lhs.false23.i.for.end.i_crit_edge:            ; preds = %lor.lhs.false23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

lor.lhs.false23.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %lor.lhs.false23.i.for.inc.i_crit_edge, %lor.lhs.false20.i.for.inc.i_crit_edge, %lor.lhs.false17.i.for.inc.i_crit_edge, %lor.lhs.false15.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %27 = ptrtoint ptr %sta.062.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %sta.0.i = load volatile ptr, ptr %sta.062.i, align 4
  %cmp.not.i = icmp eq ptr %sta.0.i, %sta_list.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %lor.lhs.false23.i.for.end.i_crit_edge, %do.end.i.for.end.i_crit_edge
  %tobool4.not = phi i1 [ true, %do.end.i.for.end.i_crit_edge ], [ false, %lor.lhs.false23.i.for.end.i_crit_edge ], [ true, %for.inc.i.for.end.i_crit_edge ]
  %call.i51.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i51.i, label %for.end.i.lor.end_crit_edge, label %land.lhs.true.i54.i

for.end.i.lor.end_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

land.lhs.true.i54.i:                              ; preds = %for.end.i
  %call1.i52.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i52.i)
  %tobool.not.i53.i = icmp eq i32 %call1.i52.i, 0
  br i1 %tobool.not.i53.i, label %land.lhs.true.i54.i.lor.end_crit_edge, label %land.lhs.true2.i56.i

land.lhs.true.i54.i.lor.end_crit_edge:            ; preds = %land.lhs.true.i54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

land.lhs.true2.i56.i:                             ; preds = %land.lhs.true.i54.i
  %.b4.i55.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i55.i, label %land.lhs.true2.i56.i.lor.end_crit_edge, label %if.then.i57.i

land.lhs.true2.i56.i.lor.end_crit_edge:           ; preds = %land.lhs.true2.i56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

if.then.i57.i:                                    ; preds = %land.lhs.true2.i56.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 724, ptr noundef nonnull @.str.47) #7
  br label %lor.end

lor.end:                                          ; preds = %if.then.i57.i, %land.lhs.true2.i56.i.lor.end_crit_edge, %land.lhs.true.i54.i.lor.end_crit_edge, %for.end.i.lor.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !162
  %28 = tail call i32 @llvm.read_register.i32(metadata !151) #7
  %and.i.i.i.i.i58.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i58.i to ptr
  %preempt_count.i.i.i.i59.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i59.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i59.i, align 4
  %sub.i.i.i.i = add i32 %31, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i59.i, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  %ht_operation_mode = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 27
  %32 = ptrtoint ptr %ht_operation_mode to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %ht_operation_mode, align 8
  %34 = and i16 %33, -24
  br i1 %tobool4.not, label %lor.end._crit_edge, label %lor.end._crit_edge41

lor.end._crit_edge41:                             ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %35

lor.end._crit_edge:                               ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %38

35:                                               ; preds = %lor.end._crit_edge41, %lor.end.thread
  %36 = phi i16 [ %5, %lor.end.thread ], [ %33, %lor.end._crit_edge41 ]
  %ht_operation_mode40 = phi ptr [ %ht_operation_mode38, %lor.end.thread ], [ %ht_operation_mode, %lor.end._crit_edge41 ]
  %37 = or i16 %36, 23
  br label %38

38:                                               ; preds = %35, %lor.end._crit_edge
  %39 = phi i16 [ %36, %35 ], [ %33, %lor.end._crit_edge ]
  %ht_operation_mode39 = phi ptr [ %ht_operation_mode40, %35 ], [ %ht_operation_mode, %lor.end._crit_edge ]
  %40 = phi i16 [ %37, %35 ], [ %34, %lor.end._crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %40, i16 %39)
  %cmp = icmp eq i16 %40, %39
  br i1 %cmp, label %.cleanup_crit_edge, label %if.end21

.cleanup_crit_edge:                               ; preds = %38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %38
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %ht_operation_mode39 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %ht_operation_mode39, align 8
  tail call void @ieee80211_bss_info_change_notify(ptr noundef %sdata, i32 noundef 16) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_flush_queues(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_tdls_oper_request(ptr noundef %vif, ptr noundef %peer, i32 noundef %oper, i16 noundef zeroext %reason_code, i32 noundef %gfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %assoc = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 10
  %2 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %assoc, align 1, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %name = getelementptr i8, ptr %vif, i32 -2976
  tail call void (ptr, ...) @__sdata_err(ptr noundef nonnull @.str.5, ptr noundef %name, i32 noundef %oper) #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr i8, ptr %vif, i32 -2992
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void @cfg80211_tdls_oper_request(ptr noundef %5, ptr noundef %peer, i32 noundef %oper, i16 noundef zeroext %reason_code, i32 noundef %gfp) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sdata_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_tdls_oper_request(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_tdls_channel_switch(ptr nocapture noundef readnone %wiphy, ptr noundef %dev, ptr noundef %addr, i8 noundef zeroext %oper_class, ptr noundef %chandef) local_unnamed_addr #0 align 64 {
entry:
  %extra_ies.i = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %local1 = getelementptr i8, ptr %dev, i32 3396
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %2 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chandef, align 4
  %freq_offset = getelementptr inbounds %struct.ieee80211_channel, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %freq_offset to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %freq_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %sta_mtx = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 46
  tail call void @mutex_lock_nested(ptr noundef %sta_mtx, i32 noundef 0) #7
  %call2 = tail call ptr @sta_info_get(ptr noundef %add.ptr.i.i, ptr noundef %addr) #7
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr i8, ptr %dev, i32 3408
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.6, ptr noundef %name, ptr noundef %addr) #7
  br label %out

if.end5:                                          ; preds = %if.end
  %_flags.i = getelementptr inbounds %struct.sta_info, ptr %call2, i32 0, i32 24
  %6 = ptrtoint ptr %_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %_flags.i, align 4
  %8 = and i32 %7, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool7.not = icmp eq i32 %8, 0
  br i1 %tobool7.not, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %name9 = getelementptr i8, ptr %dev, i32 3408
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.7, ptr noundef %name9, ptr noundef %addr) #7
  br label %out

if.end11:                                         ; preds = %if.end5
  %sdata1.i = getelementptr inbounds %struct.sta_info, ptr %call2, i32 0, i32 6
  %9 = ptrtoint ptr %sdata1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sdata1.i, align 4
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %extra_ies.i) #7
  %width.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 1
  %11 = call ptr @memset(ptr %extra_ies.i, i32 255, i32 9)
  %12 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp.i = icmp eq i32 %13, 2
  br i1 %cmp.i, label %cfg80211_get_chandef_type.exit.i, label %if.end11.if.end.i_crit_edge

if.end11.if.end.i_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

cfg80211_get_chandef_type.exit.i:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %14 = getelementptr inbounds [9 x i8], ptr %extra_ies.i, i32 0, i32 3
  %15 = getelementptr inbounds [9 x i8], ptr %extra_ies.i, i32 0, i32 2
  %16 = getelementptr inbounds [9 x i8], ptr %extra_ies.i, i32 0, i32 1
  %17 = ptrtoint ptr %extra_ies.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 62, ptr %extra_ies.i, align 1
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %16, align 1
  %center_freq1.i.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 2
  %19 = ptrtoint ptr %center_freq1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %center_freq1.i.i, align 4
  %21 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %chandef, align 4
  %center_freq.i.i = getelementptr inbounds %struct.ieee80211_channel, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %center_freq.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %center_freq.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %24)
  %cmp.i.i = icmp ugt i32 %20, %24
  %conv.i = select i1 %cmp.i.i, i8 1, i8 3
  %25 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv.i, ptr %15, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %cfg80211_get_chandef_type.exit.i, %if.end11.if.end.i_crit_edge
  %extra_ies_len.0.i = phi i32 [ 9, %cfg80211_get_chandef_type.exit.i ], [ 6, %if.end11.if.end.i_crit_edge ]
  %pos.0.i = phi ptr [ %14, %cfg80211_get_chandef_type.exit.i ], [ %extra_ies.i, %if.end11.if.end.i_crit_edge ]
  %incdec.ptr.i.i = getelementptr i8, ptr %pos.0.i, i32 1
  %26 = ptrtoint ptr %pos.0.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 104, ptr %pos.0.i, align 1
  %incdec.ptr1.i.i = getelementptr i8, ptr %pos.0.i, i32 2
  %27 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 4, ptr %incdec.ptr.i.i, align 1
  %28 = ptrtoint ptr %incdec.ptr1.i.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 0, ptr %incdec.ptr1.i.i, align 1
  %switch_timeout3.i.i = getelementptr i8, ptr %pos.0.i, i32 4
  %29 = ptrtoint ptr %switch_timeout3.i.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 0, ptr %switch_timeout3.i.i, align 1
  %addr.i = getelementptr inbounds %struct.sta_info, ptr %call2, i32 0, i32 48, i32 1
  %tdls_initiator.i = getelementptr inbounds %struct.sta_info, ptr %call2, i32 0, i32 48, i32 18
  %30 = ptrtoint ptr %tdls_initiator.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %tdls_initiator.i, align 1, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool7.not.i = icmp eq i8 %31, 0
  %call9.i = call fastcc ptr @ieee80211_tdls_build_mgmt_packet_data(ptr noundef %10, ptr noundef %addr.i, i8 noundef zeroext 5, i8 noundef zeroext 0, i16 noundef zeroext 0, i1 noundef zeroext %tobool7.not.i, ptr noundef nonnull %extra_ies.i, i32 noundef %extra_ies_len.0.i, i8 noundef zeroext %oper_class, ptr noundef %chandef) #7
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %if.end.i.ieee80211_tdls_ch_sw_tmpl_get.exit.thread_crit_edge, label %if.end12.i

if.end.i.ieee80211_tdls_ch_sw_tmpl_get.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ieee80211_tdls_ch_sw_tmpl_get.exit.thread

if.end12.i:                                       ; preds = %if.end.i
  %call13.i = call ptr @ieee80211_build_data_template(ptr noundef %10, ptr noundef nonnull %call9.i, i32 noundef 0) #7
  %cmp.i63.i = icmp ugt ptr %call13.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i63.i, label %if.then15.i, label %if.end17.i

if.then15.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %10, i32 0, i32 10
  call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.24, ptr noundef %name.i) #7
  br label %ieee80211_tdls_ch_sw_tmpl_get.exit.thread

if.end17.i:                                       ; preds = %if.end12.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call13.i, i32 0, i32 19
  %32 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i.i, align 4
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call13.i, i32 0, i32 18
  %34 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %head.i.i.i.i, align 8
  %network_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call13.i, i32 0, i32 15, i32 0, i32 20
  %36 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %37 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %35, i32 %conv.i.i.i.i
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr.i.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %33 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %add.ptr.i.i45 = getelementptr i8, ptr %33, i32 %sub.ptr.sub.i.i.i
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i45, i32 -14
  %u.i.i = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %add.ptr1.i.i, i32 0, i32 6
  %variable.i.i = getelementptr inbounds %struct.anon.201, ptr %u.i.i, i32 0, i32 2
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call13.i, i32 0, i32 6
  %38 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %variable.i.i to i32
  %sub.ptr.sub.neg.i.i = add i32 %39, %sub.ptr.rhs.cast.i.i.i
  %sub.i.i = sub i32 %sub.ptr.sub.neg.i.i, %sub.ptr.lhs.cast.i.i
  %call.i.i.i.i = call ptr @cfg80211_find_elem_match(i8 noundef zeroext 104, ptr noundef %variable.i.i, i32 noundef %sub.i.i, ptr noundef null, i32 noundef 0, i32 noundef 0) #7
  %tobool21.not.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool21.not.i, label %if.then22.i, label %ieee80211_tdls_ch_sw_tmpl_get.exit

if.then22.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  %name23.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %10, i32 0, i32 10
  call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.25, ptr noundef %name23.i) #7
  call void @__dev_kfree_skb_any(ptr noundef %call13.i, i32 noundef 1) #7
  br label %ieee80211_tdls_ch_sw_tmpl_get.exit.thread

ieee80211_tdls_ch_sw_tmpl_get.exit.thread:        ; preds = %if.then22.i, %if.then15.i, %if.end.i.ieee80211_tdls_ch_sw_tmpl_get.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %extra_ies.i) #7
  br label %out

ieee80211_tdls_ch_sw_tmpl_get.exit:               ; preds = %if.end17.i
  %40 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %call.i.i.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %41 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %name27.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %10, i32 0, i32 10
  %42 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %chandef, align 4
  %center_freq.i = getelementptr inbounds %struct.ieee80211_channel, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %center_freq.i, align 4
  %46 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %width.i, align 4
  call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.26, ptr noundef %name27.i, ptr noundef %addr.i, i32 noundef %45, i32 noundef %47) #7
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %extra_ies.i) #7
  %tobool13.not = icmp eq ptr %call13.i, null
  br i1 %tobool13.not, label %ieee80211_tdls_ch_sw_tmpl_get.exit.out_crit_edge, label %if.end15

ieee80211_tdls_ch_sw_tmpl_get.exit.out_crit_edge: ; preds = %ieee80211_tdls_ch_sw_tmpl_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end15:                                         ; preds = %ieee80211_tdls_ch_sw_tmpl_get.exit
  %sta16 = getelementptr inbounds %struct.sta_info, ptr %call2, i32 0, i32 48
  call void @__might_sleep(ptr noundef nonnull @.str.14, i32 noundef 1173) #7
  %flags.i = getelementptr i8, ptr %dev, i32 3400
  %48 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %49, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end54.i

land.rhs.i:                                       ; preds = %if.end15
  %.b76.i = load i1, ptr @drv_tdls_channel_switch.__already_done, align 1
  br i1 %.b76.i, label %land.rhs.i.out_crit_edge, label %cleanup.critedge.i, !prof !163

land.rhs.i.out_crit_edge:                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end54.i:                                       ; preds = %if.end15
  %ops.i = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 8
  %50 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ops.i, align 4
  %tdls_channel_switch.i = getelementptr inbounds %struct.ieee80211_ops, ptr %51, i32 0, i32 89
  %52 = ptrtoint ptr %tdls_channel_switch.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tdls_channel_switch.i, align 4
  %tobool55.not.i = icmp eq ptr %53, null
  br i1 %tobool55.not.i, label %if.end54.i.out_crit_edge, label %drv_tdls_channel_switch.exit

if.end54.i.out_crit_edge:                         ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

cleanup.critedge.i:                               ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @drv_tdls_channel_switch.__already_done, align 1
  %dev.c.i = getelementptr i8, ptr %dev, i32 3392
  %54 = ptrtoint ptr %dev.c.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.c.i, align 8
  %tobool24.not.c.i = icmp eq ptr %55, null
  %name26.c.i = getelementptr i8, ptr %dev, i32 3408
  %cond.c.i = select i1 %tobool24.not.c.i, ptr %name26.c.i, ptr %55
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 1174, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef %cond.c.i, i32 noundef %49) #7
  br label %out

drv_tdls_channel_switch.exit:                     ; preds = %if.end54.i
  call fastcc void @trace_drv_tdls_channel_switch(ptr noundef %1, ptr noundef %add.ptr.i.i, ptr noundef %sta16, i8 noundef zeroext %oper_class, ptr noundef %chandef) #7
  %56 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ops.i, align 4
  %tdls_channel_switch59.i = getelementptr inbounds %struct.ieee80211_ops, ptr %57, i32 0, i32 89
  %58 = ptrtoint ptr %tdls_channel_switch59.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tdls_channel_switch59.i, align 4
  %vif.i = getelementptr i8, ptr %dev, i32 6384
  %call.i = call i32 %59(ptr noundef %1, ptr noundef %vif.i, ptr noundef %sta16, i8 noundef zeroext %oper_class, ptr noundef %chandef, ptr noundef nonnull %call13.i, i32 noundef %sub.ptr.sub.i) #7
  call fastcc void @trace_drv_return_int(ptr noundef %1, i32 noundef %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool18.not = icmp eq i32 %call.i, 0
  br i1 %tobool18.not, label %if.then19, label %drv_tdls_channel_switch.exit.out_crit_edge

drv_tdls_channel_switch.exit.out_crit_edge:       ; preds = %drv_tdls_channel_switch.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then19:                                        ; preds = %drv_tdls_channel_switch.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @_set_bit(i32 noundef 15, ptr noundef %_flags.i) #7
  br label %out

out:                                              ; preds = %if.then19, %drv_tdls_channel_switch.exit.out_crit_edge, %cleanup.critedge.i, %if.end54.i.out_crit_edge, %land.rhs.i.out_crit_edge, %ieee80211_tdls_ch_sw_tmpl_get.exit.out_crit_edge, %ieee80211_tdls_ch_sw_tmpl_get.exit.thread, %if.then8, %if.then4
  %skb.0 = phi ptr [ %call13.i, %drv_tdls_channel_switch.exit.out_crit_edge ], [ %call13.i, %if.then19 ], [ null, %if.then8 ], [ null, %if.then4 ], [ null, %ieee80211_tdls_ch_sw_tmpl_get.exit.out_crit_edge ], [ null, %ieee80211_tdls_ch_sw_tmpl_get.exit.thread ], [ %call13.i, %if.end54.i.out_crit_edge ], [ %call13.i, %land.rhs.i.out_crit_edge ], [ %call13.i, %cleanup.critedge.i ]
  %ret.0 = phi i32 [ %call.i, %drv_tdls_channel_switch.exit.out_crit_edge ], [ 0, %if.then19 ], [ -524, %if.then8 ], [ -2, %if.then4 ], [ -2, %ieee80211_tdls_ch_sw_tmpl_get.exit.out_crit_edge ], [ -2, %ieee80211_tdls_ch_sw_tmpl_get.exit.thread ], [ -95, %if.end54.i.out_crit_edge ], [ -5, %land.rhs.i.out_crit_edge ], [ -5, %cleanup.critedge.i ]
  call void @mutex_unlock(ptr noundef %sta_mtx) #7
  call void @__dev_kfree_skb_any(ptr noundef %skb.0, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_tdls_cancel_channel_switch(ptr nocapture noundef readnone %wiphy, ptr noundef %dev, ptr noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %local1 = getelementptr i8, ptr %dev, i32 3396
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %sta_mtx = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 46
  tail call void @mutex_lock_nested(ptr noundef %sta_mtx, i32 noundef 0) #7
  %call2 = tail call ptr @sta_info_get(ptr noundef %add.ptr.i.i, ptr noundef %addr) #7
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr i8, ptr %dev, i32 3408
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.8, ptr noundef %name, ptr noundef %addr) #7
  br label %out

if.end:                                           ; preds = %entry
  %_flags.i = getelementptr inbounds %struct.sta_info, ptr %call2, i32 0, i32 24
  %2 = ptrtoint ptr %_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %_flags.i, align 4
  %4 = and i32 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool4.not = icmp eq i32 %4, 0
  br i1 %tobool4.not, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %name6 = getelementptr i8, ptr %dev, i32 3408
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.9, ptr noundef %name6, ptr noundef %addr) #7
  br label %out

if.end8:                                          ; preds = %if.end
  %sta9 = getelementptr inbounds %struct.sta_info, ptr %call2, i32 0, i32 48
  tail call void @__might_sleep(ptr noundef nonnull @.str.14, i32 noundef 1193) #7
  %flags.i = getelementptr i8, ptr %dev, i32 3400
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end52.i

land.rhs.i:                                       ; preds = %if.end8
  %.b71.i = load i1, ptr @drv_tdls_cancel_channel_switch.__already_done, align 1
  br i1 %.b71.i, label %land.rhs.i.drv_tdls_cancel_channel_switch.exit_crit_edge, label %return.critedge.i, !prof !163

land.rhs.i.drv_tdls_cancel_channel_switch.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drv_tdls_cancel_channel_switch.exit

if.end52.i:                                       ; preds = %if.end8
  %ops.i = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %tdls_cancel_channel_switch.i = getelementptr inbounds %struct.ieee80211_ops, ptr %8, i32 0, i32 90
  %9 = ptrtoint ptr %tdls_cancel_channel_switch.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tdls_cancel_channel_switch.i, align 4
  %tobool53.not.i = icmp eq ptr %10, null
  br i1 %tobool53.not.i, label %if.end52.i.drv_tdls_cancel_channel_switch.exit_crit_edge, label %if.end55.i

if.end52.i.drv_tdls_cancel_channel_switch.exit_crit_edge: ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drv_tdls_cancel_channel_switch.exit

if.end55.i:                                       ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @trace_drv_tdls_cancel_channel_switch(ptr noundef %1, ptr noundef %add.ptr.i.i, ptr noundef %sta9) #7
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %tdls_cancel_channel_switch57.i = getelementptr inbounds %struct.ieee80211_ops, ptr %12, i32 0, i32 90
  %13 = ptrtoint ptr %tdls_cancel_channel_switch57.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tdls_cancel_channel_switch57.i, align 4
  %vif.i = getelementptr i8, ptr %dev, i32 6384
  tail call void %14(ptr noundef %1, ptr noundef %vif.i, ptr noundef %sta9) #7
  tail call fastcc void @trace_drv_return_void(ptr noundef %1) #7
  br label %drv_tdls_cancel_channel_switch.exit

return.critedge.i:                                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @drv_tdls_cancel_channel_switch.__already_done, align 1
  %dev.c.i = getelementptr i8, ptr %dev, i32 3392
  %15 = ptrtoint ptr %dev.c.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.c.i, align 8
  %tobool22.not.c.i = icmp eq ptr %16, null
  %name24.c.i = getelementptr i8, ptr %dev, i32 3408
  %cond.c.i = select i1 %tobool22.not.c.i, ptr %name24.c.i, ptr %16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 1194, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef %cond.c.i, i32 noundef %6) #7
  br label %drv_tdls_cancel_channel_switch.exit

drv_tdls_cancel_channel_switch.exit:              ; preds = %return.critedge.i, %if.end55.i, %if.end52.i.drv_tdls_cancel_channel_switch.exit_crit_edge, %land.rhs.i.drv_tdls_cancel_channel_switch.exit_crit_edge
  tail call void @_clear_bit(i32 noundef 15, ptr noundef %_flags.i) #7
  br label %out

out:                                              ; preds = %drv_tdls_cancel_channel_switch.exit, %if.then5, %if.then
  tail call void @mutex_unlock(ptr noundef %sta_mtx) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_process_tdls_channel_switch(ptr noundef %sdata, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %params.i96 = alloca %struct.ieee80211_tdls_ch_sw_params, align 4
  %chandef.i = alloca %struct.cfg80211_chan_def, align 4
  %params.i = alloca %struct.ieee80211_tdls_ch_sw_params, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %local = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %2 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %local, align 4
  %wiphy1 = getelementptr inbounds %struct.ieee80211_hw, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %wiphy1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wiphy1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %6 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.mutex, ptr %5, i32 0, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !164

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1943, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %features = getelementptr inbounds %struct.wiphy, ptr %5, i32 0, i32 13
  %7 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %features, align 8
  %and = and i32 %8, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %if.end.cleanup_crit_edge, label %if.end27

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end27:                                         ; preds = %if.end
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %9 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not.i = icmp eq i32 %10, 0
  br i1 %tobool.i.not.i, label %if.end27.if.end31_crit_edge, label %cond.true.i

if.end27.if.end31_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

cond.true.i:                                      ; preds = %if.end27
  %call.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %10) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %cond.true.i.cleanup_crit_edge, label %cond.true.i.if.end31_crit_edge

cond.true.i.if.end31_crit_edge:                   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

cond.true.i.cleanup_crit_edge:                    ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end31:                                         ; preds = %cond.true.i.if.end31_crit_edge, %if.end27.if.end31_crit_edge
  %action_code = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %action_code to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %action_code, align 1
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.51)
  switch i8 %12, label %land.end41 [
    i8 5, label %sw.bb
    i8 6, label %sw.bb33
  ]

sw.bb:                                            ; preds = %if.end31
  %14 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %local, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %chandef.i) #7
  %16 = call ptr @memset(ptr %chandef.i, i32 255, i32 28)
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %params.i) #7
  %19 = call ptr @memset(ptr %params.i, i32 0, i32 32)
  %action_code.i = getelementptr inbounds %struct.ieee80211_tdls_ch_sw_params, ptr %params.i, i32 0, i32 2
  %20 = ptrtoint ptr %action_code.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 5, ptr %action_code.i, align 4
  %device_timestamp.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %21 = ptrtoint ptr %device_timestamp.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %device_timestamp.i, align 8
  %timestamp.i = getelementptr inbounds %struct.ieee80211_tdls_ch_sw_params, ptr %params.i, i32 0, i32 4
  %23 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %timestamp.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %24 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %25)
  %cmp.i = icmp ult i32 %25, 19
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.28, ptr noundef %name.i, i32 noundef %25) #7
  br label %ieee80211_process_tdls_channel_switch_req.exit

if.end.i:                                         ; preds = %sw.bb
  %u.i = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %18, i32 0, i32 6
  %26 = ptrtoint ptr %u.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %u.i, align 1
  %oper_class5.i = getelementptr inbounds %struct.anon.201, ptr %u.i, i32 0, i32 1
  %28 = ptrtoint ptr %oper_class5.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %oper_class5.i, align 1
  %30 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.52)
  switch i8 %29, label %if.end.i.if.else.i_crit_edge [
    i8 112, label %if.end.i.land.lhs.true.i_crit_edge
    i8 2, label %if.end.i.land.lhs.true.i_crit_edge129
    i8 3, label %if.end.i.land.lhs.true.i_crit_edge130
    i8 4, label %if.end.i.land.lhs.true.i_crit_edge131
    i8 5, label %if.end.i.land.lhs.true.i_crit_edge132
    i8 6, label %if.end.i.land.lhs.true.i_crit_edge133
  ]

if.end.i.land.lhs.true.i_crit_edge133:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

if.end.i.land.lhs.true.i_crit_edge132:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

if.end.i.land.lhs.true.i_crit_edge131:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

if.end.i.land.lhs.true.i_crit_edge130:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

if.end.i.land.lhs.true.i_crit_edge129:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

if.end.i.land.lhs.true.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end.i.land.lhs.true.i_crit_edge, %if.end.i.land.lhs.true.i_crit_edge129, %if.end.i.land.lhs.true.i_crit_edge130, %if.end.i.land.lhs.true.i_crit_edge131, %if.end.i.land.lhs.true.i_crit_edge132, %if.end.i.land.lhs.true.i_crit_edge133
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %27)
  %cmp28.i = icmp ult i8 %27, 14
  br i1 %cmp28.i, label %land.lhs.true.i.if.end34.i_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i.if.end34.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.i.if.else.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %27)
  %cmp32.i = icmp ugt i8 %27, 13
  %cond.i94 = zext i1 %cmp32.i to i32
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.else.i, %land.lhs.true.i.if.end34.i_crit_edge
  %band.0.i = phi i32 [ %cond.i94, %if.else.i ], [ 1, %land.lhs.true.i.if.end34.i_crit_edge ]
  %conv35.i = zext i8 %27 to i32
  %call.i.i95 = tail call i32 @ieee80211_channel_to_freq_khz(i32 noundef %conv35.i, i32 noundef %band.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %call.i.i95)
  %31 = icmp ult i32 %call.i.i95, 1000
  br i1 %31, label %if.then39.i, label %if.end43.i

if.then39.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  %name40.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.29, ptr noundef %name40.i, i32 noundef %conv35.i) #7
  br label %ieee80211_process_tdls_channel_switch_req.exit

if.end43.i:                                       ; preds = %if.end34.i
  %32 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %local, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wiphy.i, align 8
  %36 = urem i32 %call.i.i95, 1000
  %mul.i.i = sub nuw i32 %call.i.i95, %36
  %call.i3.i = tail call ptr @ieee80211_get_channel_khz(ptr noundef %35, i32 noundef %mul.i.i) #7
  %tobool.not.i = icmp eq ptr %call.i3.i, null
  br i1 %tobool.not.i, label %if.then46.i, label %if.end50.i

if.then46.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  %name47.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.30, ptr noundef %name47.i, i32 noundef %conv35.i) #7
  br label %ieee80211_process_tdls_channel_switch_req.exit

if.end50.i:                                       ; preds = %if.end43.i
  %variable.i = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %18, i32 0, i32 6, i32 1
  %37 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len.i, align 4
  %sub.i = add i32 %38, -19
  %call.i4.i = tail call ptr @ieee802_11_parse_elems_crc(ptr noundef %variable.i, i32 noundef %sub.i, i1 noundef zeroext false, i64 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null) #7
  %tobool55.not.i = icmp eq ptr %call.i4.i, null
  br i1 %tobool55.not.i, label %if.end50.i.ieee80211_process_tdls_channel_switch_req.exit_crit_edge, label %if.end57.i

if.end50.i.ieee80211_process_tdls_channel_switch_req.exit_crit_edge: ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ieee80211_process_tdls_channel_switch_req.exit

if.end57.i:                                       ; preds = %if.end50.i
  %parse_error.i = getelementptr inbounds %struct.ieee802_11_elems, ptr %call.i4.i, i32 0, i32 76
  %39 = ptrtoint ptr %parse_error.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %parse_error.i, align 2, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool58.not.i = icmp eq i8 %40, 0
  br i1 %tobool58.not.i, label %if.end62.i, label %if.then59.i

if.then59.i:                                      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #9
  %name60.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.31, ptr noundef %name60.i) #7
  br label %free.i

if.end62.i:                                       ; preds = %if.end57.i
  %ch_sw_timing.i = getelementptr inbounds %struct.ieee802_11_elems, ptr %call.i4.i, i32 0, i32 4
  %41 = ptrtoint ptr %ch_sw_timing.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ch_sw_timing.i, align 4
  %tobool63.not.i = icmp eq ptr %42, null
  br i1 %tobool63.not.i, label %if.end62.i.if.then66.i_crit_edge, label %lor.lhs.false64.i

if.end62.i.if.then66.i_crit_edge:                 ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then66.i

lor.lhs.false64.i:                                ; preds = %if.end62.i
  %lnk_id.i = getelementptr inbounds %struct.ieee802_11_elems, ptr %call.i4.i, i32 0, i32 3
  %43 = ptrtoint ptr %lnk_id.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %lnk_id.i, align 4
  %tobool65.not.i = icmp eq ptr %44, null
  br i1 %tobool65.not.i, label %lor.lhs.false64.i.if.then66.i_crit_edge, label %if.end69.i

lor.lhs.false64.i.if.then66.i_crit_edge:          ; preds = %lor.lhs.false64.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then66.i

if.then66.i:                                      ; preds = %lor.lhs.false64.i.if.then66.i_crit_edge, %if.end62.i.if.then66.i_crit_edge
  %name67.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.32, ptr noundef %name67.i) #7
  br label %free.i

if.end69.i:                                       ; preds = %lor.lhs.false64.i
  %sec_chan_offs.i = getelementptr inbounds %struct.ieee802_11_elems, ptr %call.i4.i, i32 0, i32 44
  %45 = ptrtoint ptr %sec_chan_offs.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sec_chan_offs.i, align 4
  %tobool70.not.i = icmp eq ptr %46, null
  br i1 %tobool70.not.i, label %if.end69.i.if.end77.i_crit_edge, label %if.else72.i

if.end69.i.if.end77.i_crit_edge:                  ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77.i

if.else72.i:                                      ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %46, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %48)
  %switch.selectcmp.i = icmp eq i8 %48, 3
  %switch.select.i = select i1 %switch.selectcmp.i, i32 2, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %48)
  %switch.selectcmp1.i = icmp eq i8 %48, 1
  %switch.select2.i = select i1 %switch.selectcmp1.i, i32 3, i32 %switch.select.i
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.else72.i, %if.end69.i.if.end77.i_crit_edge
  %chan_type.0.i = phi i32 [ 1, %if.end69.i.if.end77.i_crit_edge ], [ %switch.select2.i, %if.else72.i ]
  call void @cfg80211_chandef_create(ptr noundef nonnull %chandef.i, ptr noundef nonnull %call.i3.i, i32 noundef %chan_type.0.i) #7
  %49 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %local, align 4
  %wiphy80.i = getelementptr inbounds %struct.ieee80211_hw, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %wiphy80.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %wiphy80.i, align 8
  %iftype.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 1, i32 1
  %53 = ptrtoint ptr %iftype.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %iftype.i, align 4
  %call81.i = call zeroext i1 @cfg80211_reg_can_beacon_relax(ptr noundef %52, ptr noundef nonnull %chandef.i, i32 noundef %54) #7
  br i1 %call81.i, label %if.end85.i, label %if.then82.i

if.then82.i:                                      ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #9
  %name83.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.33, ptr noundef %name83.i) #7
  br label %free.i

if.end85.i:                                       ; preds = %if.end77.i
  %sta_mtx.i = getelementptr inbounds %struct.ieee80211_local, ptr %15, i32 0, i32 46
  call void @mutex_lock_nested(ptr noundef %sta_mtx.i, i32 noundef 0) #7
  %sa.i = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %18, i32 0, i32 1
  %call87.i = call ptr @sta_info_get(ptr noundef %sdata, ptr noundef %sa.i) #7
  %tobool88.not.i = icmp eq ptr %call87.i, null
  br i1 %tobool88.not.i, label %if.end85.i.if.then92.i_crit_edge, label %lor.lhs.false89.i

if.end85.i.if.then92.i_crit_edge:                 ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then92.i

lor.lhs.false89.i:                                ; preds = %if.end85.i
  %_flags.i.i = getelementptr inbounds %struct.sta_info, ptr %call87.i, i32 0, i32 24
  %55 = ptrtoint ptr %_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %_flags.i.i, align 4
  %57 = and i32 %56, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool91.not.i = icmp eq i32 %57, 0
  br i1 %tobool91.not.i, label %lor.lhs.false89.i.if.then92.i_crit_edge, label %if.end97.i

lor.lhs.false89.i.if.then92.i_crit_edge:          ; preds = %lor.lhs.false89.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then92.i

if.then92.i:                                      ; preds = %lor.lhs.false89.i.if.then92.i_crit_edge, %if.end85.i.if.then92.i_crit_edge
  %name93.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.34, ptr noundef %name93.i, ptr noundef %sa.i) #7
  br label %out.i

if.end97.i:                                       ; preds = %lor.lhs.false89.i
  %sta98.i = getelementptr inbounds %struct.sta_info, ptr %call87.i, i32 0, i32 48
  %58 = ptrtoint ptr %params.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %sta98.i, ptr %params.i, align 4
  %59 = ptrtoint ptr %lnk_id.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %lnk_id.i, align 4
  %init_sta.i = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %60, i32 0, i32 3
  %addr.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 2
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(6) %init_sta.i, ptr noundef dereferenceable(6) %addr.i, i32 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool104.not.i = icmp eq i32 %bcmp.i, 0
  %tdls_initiator.i = getelementptr inbounds %struct.sta_info, ptr %call87.i, i32 0, i32 48, i32 18
  %61 = ptrtoint ptr %tdls_initiator.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %tdls_initiator.i, align 1, !range !165
  %63 = zext i1 %tobool104.not.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %62, i8 %63)
  %cmp110.i = icmp eq i8 %62, %63
  br i1 %cmp110.i, label %if.then112.i, label %if.end115.i

if.then112.i:                                     ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #9
  %name113.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.35, ptr noundef %name113.i) #7
  br label %out.i

if.end115.i:                                      ; preds = %if.end97.i
  %ht_supported.i = getelementptr inbounds %struct.sta_info, ptr %call87.i, i32 0, i32 48, i32 3, i32 1
  %64 = ptrtoint ptr %ht_supported.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %ht_supported.i, align 2, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool117.not.i = icmp eq i8 %65, 0
  br i1 %tobool117.not.i, label %land.lhs.true118.i, label %if.end115.i.if.end129.i_crit_edge

if.end115.i.if.end129.i_crit_edge:                ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end129.i

land.lhs.true118.i:                               ; preds = %if.end115.i
  %66 = ptrtoint ptr %sec_chan_offs.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %sec_chan_offs.i, align 4
  %tobool120.not.i = icmp eq ptr %67, null
  br i1 %tobool120.not.i, label %land.lhs.true118.i.if.end129.i_crit_edge, label %land.lhs.true121.i

land.lhs.true118.i.if.end129.i_crit_edge:         ; preds = %land.lhs.true118.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end129.i

land.lhs.true121.i:                               ; preds = %land.lhs.true118.i
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %67, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool125.not.i = icmp eq i8 %69, 0
  br i1 %tobool125.not.i, label %land.lhs.true121.i.if.end129.i_crit_edge, label %if.then126.i

land.lhs.true121.i.if.end129.i_crit_edge:         ; preds = %land.lhs.true121.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end129.i

if.then126.i:                                     ; preds = %land.lhs.true121.i
  call void @__sanitizer_cov_trace_pc() #9
  %name127.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.36, ptr noundef %name127.i) #7
  br label %out.i

if.end129.i:                                      ; preds = %land.lhs.true121.i.if.end129.i_crit_edge, %land.lhs.true118.i.if.end129.i_crit_edge, %if.end115.i.if.end129.i_crit_edge
  %chandef130.i = getelementptr inbounds %struct.ieee80211_tdls_ch_sw_params, ptr %params.i, i32 0, i32 1
  %70 = ptrtoint ptr %chandef130.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %chandef.i, ptr %chandef130.i, align 4
  %71 = ptrtoint ptr %ch_sw_timing.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ch_sw_timing.i, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_loadN_noabort(i32 %73, i32 2)
  %74 = load i16, ptr %72, align 1
  %75 = call i16 @llvm.bswap.i16(i16 %74) #7
  %switch_time132.i = getelementptr inbounds %struct.ieee80211_tdls_ch_sw_params, ptr %params.i, i32 0, i32 5
  %76 = ptrtoint ptr %switch_time132.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %switch_time132.i, align 4
  %77 = ptrtoint ptr %ch_sw_timing.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ch_sw_timing.i, align 4
  %switch_timeout.i = getelementptr inbounds %struct.ieee80211_ch_switch_timing, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %switch_timeout.i to i32
  call void @__asan_loadN_noabort(i32 %79, i32 2)
  %80 = load i16, ptr %switch_timeout.i, align 1
  %81 = call i16 @llvm.bswap.i16(i16 %80) #7
  %switch_timeout134.i = getelementptr inbounds %struct.ieee80211_tdls_ch_sw_params, ptr %params.i, i32 0, i32 6
  %82 = ptrtoint ptr %switch_timeout134.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %81, ptr %switch_timeout134.i, align 2
  %ch_sw_tm_ie.i = getelementptr inbounds %struct.ieee80211_tdls_ch_sw_params, ptr %params.i, i32 0, i32 8
  %call135.i = call fastcc ptr @ieee80211_tdls_ch_sw_resp_tmpl_get(ptr noundef nonnull %call87.i, ptr noundef %ch_sw_tm_ie.i) #7
  %tmpl_skb.i = getelementptr inbounds %struct.ieee80211_tdls_ch_sw_params, ptr %params.i, i32 0, i32 7
  %83 = ptrtoint ptr %tmpl_skb.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call135.i, ptr %tmpl_skb.i, align 4
  %tobool137.not.i = icmp eq ptr %call135.i, null
  br i1 %tobool137.not.i, label %if.end129.i.out.i_crit_edge, label %if.end139.i

if.end129.i.out.i_crit_edge:                      ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.end139.i:                                      ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #9
  %84 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %local, align 4
  call fastcc void @drv_tdls_recv_channel_switch(ptr noundef %85, ptr noundef %sdata, ptr noundef nonnull %params.i) #7
  %name141.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  %86 = ptrtoint ptr %chandef130.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %chandef130.i, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 4
  %center_freq.i = getelementptr inbounds %struct.ieee80211_channel, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %center_freq.i, align 4
  %width.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %87, i32 0, i32 1
  %92 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %width.i, align 4
  call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.37, ptr noundef %name141.i, ptr noundef %sa.i, i32 noundef %91, i32 noundef %93) #7
  br label %out.i

out.i:                                            ; preds = %if.end139.i, %if.end129.i.out.i_crit_edge, %if.then126.i, %if.then112.i, %if.then92.i
  call void @mutex_unlock(ptr noundef %sta_mtx.i) #7
  %tmpl_skb149.i = getelementptr inbounds %struct.ieee80211_tdls_ch_sw_params, ptr %params.i, i32 0, i32 7
  %94 = ptrtoint ptr %tmpl_skb149.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %tmpl_skb149.i, align 4
  call void @__dev_kfree_skb_any(ptr noundef %95, i32 noundef 1) #7
  br label %free.i

free.i:                                           ; preds = %out.i, %if.then82.i, %if.then66.i, %if.then59.i
  call void @kfree(ptr noundef nonnull %call.i4.i) #7
  br label %ieee80211_process_tdls_channel_switch_req.exit

ieee80211_process_tdls_channel_switch_req.exit:   ; preds = %free.i, %if.end50.i.ieee80211_process_tdls_channel_switch_req.exit_crit_edge, %if.then46.i, %if.then39.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %params.i) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %chandef.i) #7
  br label %cleanup

sw.bb33:                                          ; preds = %if.end31
  %96 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %local, align 4
  %98 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %params.i96) #7
  %100 = call ptr @memset(ptr %params.i96, i32 0, i32 32)
  %action_code.i99 = getelementptr inbounds %struct.ieee80211_tdls_ch_sw_params, ptr %params.i96, i32 0, i32 2
  %101 = ptrtoint ptr %action_code.i99 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 6, ptr %action_code.i99, align 4
  %device_timestamp.i100 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %102 = ptrtoint ptr %device_timestamp.i100 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %device_timestamp.i100, align 8
  %timestamp.i101 = getelementptr inbounds %struct.ieee80211_tdls_ch_sw_params, ptr %params.i96, i32 0, i32 4
  %104 = ptrtoint ptr %timestamp.i101 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %timestamp.i101, align 4
  %len.i102 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %105 = ptrtoint ptr %len.i102 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %len.i102, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %106)
  %cmp.i103 = icmp ult i32 %106, 19
  br i1 %cmp.i103, label %if.then.i105, label %if.end.i109

if.then.i105:                                     ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #9
  %name.i104 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.41, ptr noundef %name.i104, i32 noundef %106) #7
  br label %ieee80211_process_tdls_channel_switch_resp.exit

if.end.i109:                                      ; preds = %sw.bb33
  %sta_mtx.i106 = getelementptr inbounds %struct.ieee80211_local, ptr %97, i32 0, i32 46
  tail call void @mutex_lock_nested(ptr noundef %sta_mtx.i106, i32 noundef 0) #7
  %sa.i107 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %99, i32 0, i32 1
  %call4.i = tail call ptr @sta_info_get(ptr noundef %sdata, ptr noundef %sa.i107) #7
  %tobool.not.i108 = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i108, label %if.end.i109.if.then7.i_crit_edge, label %lor.lhs.false.i

if.end.i109.if.then7.i_crit_edge:                 ; preds = %if.end.i109
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7.i

lor.lhs.false.i:                                  ; preds = %if.end.i109
  %_flags.i.i110 = getelementptr inbounds %struct.sta_info, ptr %call4.i, i32 0, i32 24
  %107 = ptrtoint ptr %_flags.i.i110 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %_flags.i.i110, align 4
  %109 = and i32 %108, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool6.not.i = icmp eq i32 %109, 0
  br i1 %tobool6.not.i, label %lor.lhs.false.i.if.then7.i_crit_edge, label %if.end12.i

lor.lhs.false.i.if.then7.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7.i

if.then7.i:                                       ; preds = %lor.lhs.false.i.if.then7.i_crit_edge, %if.end.i109.if.then7.i_crit_edge
  %name8.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.34, ptr noundef %name8.i, ptr noundef %sa.i107) #7
  br label %out.i126

if.end12.i:                                       ; preds = %lor.lhs.false.i
  %sta13.i = getelementptr inbounds %struct.sta_info, ptr %call4.i, i32 0, i32 48
  %110 = ptrtoint ptr %params.i96 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %sta13.i, ptr %params.i96, align 4
  %u.i111 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %99, i32 0, i32 6
  %111 = ptrtoint ptr %u.i111 to i32
  call void @__asan_loadN_noabort(i32 %111, i32 2)
  %112 = load i16, ptr %u.i111, align 1
  %113 = tail call i16 @llvm.bswap.i16(i16 %112) #7
  %conv.i = zext i16 %113 to i32
  %status.i = getelementptr inbounds %struct.ieee80211_tdls_ch_sw_params, ptr %params.i96, i32 0, i32 3
  %114 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %conv.i, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %112)
  %cmp16.not.i = icmp eq i16 %112, 0
  br i1 %cmp16.not.i, label %if.end19.i, label %if.end12.i.call_drv.i_crit_edge

if.end12.i.call_drv.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %call_drv.i

if.end19.i:                                       ; preds = %if.end12.i
  %variable.i112 = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %99, i32 0, i32 6, i32 1
  %115 = ptrtoint ptr %len.i102 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %len.i102, align 4
  %sub.i113 = add i32 %116, -19
  %call.i.i114 = tail call ptr @ieee802_11_parse_elems_crc(ptr noundef %variable.i112, i32 noundef %sub.i113, i1 noundef zeroext false, i64 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null) #7
  %tobool24.not.i = icmp eq ptr %call.i.i114, null
  br i1 %tobool24.not.i, label %if.end19.i.out.i126_crit_edge, label %if.end26.i

if.end19.i.out.i126_crit_edge:                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i126

if.end26.i:                                       ; preds = %if.end19.i
  %parse_error.i115 = getelementptr inbounds %struct.ieee802_11_elems, ptr %call.i.i114, i32 0, i32 76
  %117 = ptrtoint ptr %parse_error.i115 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %parse_error.i115, align 2, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool27.not.i = icmp eq i8 %118, 0
  br i1 %tobool27.not.i, label %if.end31.i, label %if.then28.i

if.then28.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  %name29.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.42, ptr noundef %name29.i) #7
  br label %out.i126

if.end31.i:                                       ; preds = %if.end26.i
  %ch_sw_timing.i116 = getelementptr inbounds %struct.ieee802_11_elems, ptr %call.i.i114, i32 0, i32 4
  %119 = ptrtoint ptr %ch_sw_timing.i116 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %ch_sw_timing.i116, align 4
  %tobool32.not.i = icmp eq ptr %120, null
  br i1 %tobool32.not.i, label %if.end31.i.if.then35.i_crit_edge, label %lor.lhs.false33.i

if.end31.i.if.then35.i_crit_edge:                 ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then35.i

lor.lhs.false33.i:                                ; preds = %if.end31.i
  %lnk_id.i117 = getelementptr inbounds %struct.ieee802_11_elems, ptr %call.i.i114, i32 0, i32 3
  %121 = ptrtoint ptr %lnk_id.i117 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %lnk_id.i117, align 4
  %tobool34.not.i = icmp eq ptr %122, null
  br i1 %tobool34.not.i, label %lor.lhs.false33.i.if.then35.i_crit_edge, label %if.end38.i

lor.lhs.false33.i.if.then35.i_crit_edge:          ; preds = %lor.lhs.false33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then35.i

if.then35.i:                                      ; preds = %lor.lhs.false33.i.if.then35.i_crit_edge, %if.end31.i.if.then35.i_crit_edge
  %name36.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.43, ptr noundef %name36.i) #7
  br label %out.i126

if.end38.i:                                       ; preds = %lor.lhs.false33.i
  %init_sta.i118 = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %122, i32 0, i32 3
  %addr.i119 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 2
  %bcmp.i120 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %init_sta.i118, ptr noundef dereferenceable(6) %addr.i119, i32 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i120)
  %tobool43.not.i = icmp eq i32 %bcmp.i120, 0
  %tdls_initiator.i121 = getelementptr inbounds %struct.sta_info, ptr %call4.i, i32 0, i32 48, i32 18
  %123 = ptrtoint ptr %tdls_initiator.i121 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %tdls_initiator.i121, align 1, !range !165
  %125 = zext i1 %tobool43.not.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %124, i8 %125)
  %cmp49.i = icmp eq i8 %124, %125
  br i1 %cmp49.i, label %if.then51.i, label %if.end54.i

if.then51.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #9
  %name52.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.35, ptr noundef %name52.i) #7
  br label %out.i126

if.end54.i:                                       ; preds = %if.end38.i
  %126 = ptrtoint ptr %120 to i32
  call void @__asan_loadN_noabort(i32 %126, i32 2)
  %127 = load i16, ptr %120, align 1
  %128 = tail call i16 @llvm.bswap.i16(i16 %127) #7
  %switch_time56.i = getelementptr inbounds %struct.ieee80211_tdls_ch_sw_params, ptr %params.i96, i32 0, i32 5
  %129 = ptrtoint ptr %switch_time56.i to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %128, ptr %switch_time56.i, align 4
  %130 = ptrtoint ptr %ch_sw_timing.i116 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %ch_sw_timing.i116, align 4
  %switch_timeout.i122 = getelementptr inbounds %struct.ieee80211_ch_switch_timing, ptr %131, i32 0, i32 1
  %132 = ptrtoint ptr %switch_timeout.i122 to i32
  call void @__asan_loadN_noabort(i32 %132, i32 2)
  %133 = load i16, ptr %switch_timeout.i122, align 1
  %134 = tail call i16 @llvm.bswap.i16(i16 %133) #7
  %switch_timeout58.i = getelementptr inbounds %struct.ieee80211_tdls_ch_sw_params, ptr %params.i96, i32 0, i32 6
  %135 = ptrtoint ptr %switch_timeout58.i to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %134, ptr %switch_timeout58.i, align 2
  %ch_sw_tm_ie.i123 = getelementptr inbounds %struct.ieee80211_tdls_ch_sw_params, ptr %params.i96, i32 0, i32 8
  %call59.i = call fastcc ptr @ieee80211_tdls_ch_sw_resp_tmpl_get(ptr noundef nonnull %call4.i, ptr noundef %ch_sw_tm_ie.i123) #7
  %tmpl_skb.i124 = getelementptr inbounds %struct.ieee80211_tdls_ch_sw_params, ptr %params.i96, i32 0, i32 7
  %136 = ptrtoint ptr %tmpl_skb.i124 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %call59.i, ptr %tmpl_skb.i124, align 4
  %tobool61.not.i = icmp eq ptr %call59.i, null
  br i1 %tobool61.not.i, label %if.end54.i.out.i126_crit_edge, label %if.end54.i.call_drv.i_crit_edge

if.end54.i.call_drv.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %call_drv.i

if.end54.i.out.i126_crit_edge:                    ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i126

call_drv.i:                                       ; preds = %if.end54.i.call_drv.i_crit_edge, %if.end12.i.call_drv.i_crit_edge
  %elems.0.i = phi ptr [ null, %if.end12.i.call_drv.i_crit_edge ], [ %call.i.i114, %if.end54.i.call_drv.i_crit_edge ]
  %137 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %local, align 4
  call fastcc void @trace_drv_tdls_recv_channel_switch(ptr noundef %138, ptr noundef %sdata, ptr noundef nonnull %params.i96) #7
  %ops.i.i = getelementptr inbounds %struct.ieee80211_local, ptr %138, i32 0, i32 8
  %139 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %ops.i.i, align 4
  %tdls_recv_channel_switch.i.i = getelementptr inbounds %struct.ieee80211_ops, ptr %140, i32 0, i32 91
  %141 = ptrtoint ptr %tdls_recv_channel_switch.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %tdls_recv_channel_switch.i.i, align 4
  %tobool.not.i.i125 = icmp eq ptr %142, null
  br i1 %tobool.not.i.i125, label %call_drv.i.drv_tdls_recv_channel_switch.exit.i_crit_edge, label %if.then.i.i

call_drv.i.drv_tdls_recv_channel_switch.exit.i_crit_edge: ; preds = %call_drv.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drv_tdls_recv_channel_switch.exit.i

if.then.i.i:                                      ; preds = %call_drv.i
  call void @__sanitizer_cov_trace_pc() #9
  %vif.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59
  call void %142(ptr noundef %138, ptr noundef %vif.i.i, ptr noundef nonnull %params.i96) #7
  br label %drv_tdls_recv_channel_switch.exit.i

drv_tdls_recv_channel_switch.exit.i:              ; preds = %if.then.i.i, %call_drv.i.drv_tdls_recv_channel_switch.exit.i_crit_edge
  call fastcc void @trace_drv_return_void(ptr noundef %138) #7
  %name65.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  %143 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %status.i, align 4
  call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.44, ptr noundef %name65.i, ptr noundef %sa.i107, i32 noundef %144) #7
  br label %out.i126

out.i126:                                         ; preds = %drv_tdls_recv_channel_switch.exit.i, %if.end54.i.out.i126_crit_edge, %if.then51.i, %if.then35.i, %if.then28.i, %if.end19.i.out.i126_crit_edge, %if.then7.i
  %elems.1.i = phi ptr [ %elems.0.i, %drv_tdls_recv_channel_switch.exit.i ], [ %call.i.i114, %if.then28.i ], [ %call.i.i114, %if.then51.i ], [ %call.i.i114, %if.then35.i ], [ null, %if.then7.i ], [ null, %if.end19.i.out.i126_crit_edge ], [ %call.i.i114, %if.end54.i.out.i126_crit_edge ]
  call void @mutex_unlock(ptr noundef %sta_mtx.i106) #7
  %tmpl_skb71.i = getelementptr inbounds %struct.ieee80211_tdls_ch_sw_params, ptr %params.i96, i32 0, i32 7
  %145 = ptrtoint ptr %tmpl_skb71.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %tmpl_skb71.i, align 4
  call void @__dev_kfree_skb_any(ptr noundef %146, i32 noundef 1) #7
  call void @kfree(ptr noundef %elems.1.i) #7
  br label %ieee80211_process_tdls_channel_switch_resp.exit

ieee80211_process_tdls_channel_switch_resp.exit:  ; preds = %out.i126, %if.then.i105
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %params.i96) #7
  br label %cleanup

land.end41:                                       ; preds = %if.end31
  %.b93 = load i1, ptr @ieee80211_process_tdls_channel_switch.__already_done, align 1
  br i1 %.b93, label %land.end41.cleanup_crit_edge, label %if.then48, !prof !163

land.end41.cleanup_crit_edge:                     ; preds = %land.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then48:                                        ; preds = %land.end41
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @ieee80211_process_tdls_channel_switch.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1964, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %land.end41.cleanup_crit_edge, %ieee80211_process_tdls_channel_switch_resp.exit, %ieee80211_process_tdls_channel_switch_req.exit, %cond.true.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_teardown_tdls_peers(ptr noundef %sdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !151) #7
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !161
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 696, ptr noundef nonnull @.str.46) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b41 = load i1, ptr @ieee80211_teardown_tdls_peers.__warned, align 1
  br i1 %.b41, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @ieee80211_teardown_tdls_peers.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1975, ptr noundef nonnull @.str.10) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %local = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %4 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %local, align 4
  %sta_list = getelementptr inbounds %struct.ieee80211_local, ptr %5, i32 0, i32 49
  %6 = ptrtoint ptr %sta_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %sta.053 = load volatile ptr, ptr %sta_list, align 4
  %cmp.not55 = icmp eq ptr %sta.053, %sta_list
  br i1 %cmp.not55, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %vif = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59
  %assoc.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 10
  %dev.i = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 6
  %name.i = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %sta.056 = phi ptr [ %sta.053, %for.body.lr.ph ], [ %sta.0, %for.inc.for.body_crit_edge ]
  %tdls = getelementptr inbounds %struct.sta_info, ptr %sta.056, i32 0, i32 48, i32 17
  %7 = ptrtoint ptr %tdls to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tdls, align 4, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool12.not = icmp eq i8 %8, 0
  br i1 %tobool12.not, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %sdata13 = getelementptr inbounds %struct.sta_info, ptr %sta.056, i32 0, i32 6
  %9 = ptrtoint ptr %sdata13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sdata13, align 4
  %cmp14.not = icmp eq ptr %10, %sdata
  br i1 %cmp14.not, label %lor.lhs.false15, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

lor.lhs.false15:                                  ; preds = %lor.lhs.false
  %uploaded = getelementptr inbounds %struct.sta_info, ptr %sta.056, i32 0, i32 22
  %11 = ptrtoint ptr %uploaded to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %uploaded, align 4, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool16.not = icmp eq i8 %12, 0
  br i1 %tobool16.not, label %lor.lhs.false15.for.inc_crit_edge, label %lor.lhs.false17

lor.lhs.false15.for.inc_crit_edge:                ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

lor.lhs.false17:                                  ; preds = %lor.lhs.false15
  %_flags.i = getelementptr inbounds %struct.sta_info, ptr %sta.056, i32 0, i32 24
  %13 = ptrtoint ptr %_flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %_flags.i, align 4
  %15 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool19.not = icmp eq i32 %15, 0
  br i1 %tobool19.not, label %lor.lhs.false17.for.inc_crit_edge, label %if.end21

lor.lhs.false17.for.inc_crit_edge:                ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end21:                                         ; preds = %lor.lhs.false17
  %addr = getelementptr inbounds %struct.sta_info, ptr %sta.056, i32 0, i32 48, i32 1
  %16 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp.not.i = icmp eq i32 %17, 2
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end21.if.then.i43_crit_edge

if.end21.if.then.i43_crit_edge:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i43

lor.lhs.false.i:                                  ; preds = %if.end21
  %18 = ptrtoint ptr %assoc.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %assoc.i, align 1, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i42 = icmp eq i8 %19, 0
  br i1 %tobool.not.i42, label %lor.lhs.false.i.if.then.i43_crit_edge, label %if.end.i

lor.lhs.false.i.if.then.i43_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i43

if.then.i43:                                      ; preds = %lor.lhs.false.i.if.then.i43_crit_edge, %if.end21.if.then.i43_crit_edge
  tail call void (ptr, ...) @__sdata_err(ptr noundef nonnull @.str.5, ptr noundef %name.i, i32 noundef 2) #7
  br label %for.inc

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 8
  tail call void @cfg80211_tdls_oper_request(ptr noundef %21, ptr noundef %addr, i32 noundef 2, i16 noundef zeroext 26, i32 noundef 2592) #7
  br label %for.inc

for.inc:                                          ; preds = %if.end.i, %if.then.i43, %lor.lhs.false17.for.inc_crit_edge, %lor.lhs.false15.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %22 = ptrtoint ptr %sta.056 to i32
  call void @__asan_load4_noabort(i32 %22)
  %sta.0 = load volatile ptr, ptr %sta.056, align 4
  %23 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %local, align 4
  %sta_list10 = getelementptr inbounds %struct.ieee80211_local, ptr %24, i32 0, i32 49
  %cmp.not = icmp eq ptr %sta.0, %sta_list10
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i44 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i44, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i47

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i47:                                ; preds = %for.end
  %call1.i45 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i45)
  %tobool.not.i46 = icmp eq i32 %call1.i45, 0
  br i1 %tobool.not.i46, label %land.lhs.true.i47.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i49

land.lhs.true.i47.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i47
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i49:                               ; preds = %land.lhs.true.i47
  %.b4.i48 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i48, label %land.lhs.true2.i49.rcu_read_unlock.exit_crit_edge, label %if.then.i50

land.lhs.true2.i49.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i49
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i50:                                      ; preds = %land.lhs.true2.i49
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 724, ptr noundef nonnull @.str.47) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i50, %land.lhs.true2.i49.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i47.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !162
  %25 = tail call i32 @llvm.read_register.i32(metadata !151) #7
  %and.i.i.i.i.i51 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i51 to ptr
  %preempt_count.i.i.i.i52 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i.i52, align 4
  %sub.i.i.i = add i32 %28, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i52, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_tdls_handle_disconnect(ptr noundef %sdata, ptr noundef %peer, i16 noundef zeroext %reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !151) #7
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !161
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 696, ptr noundef nonnull @.str.46) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %vif = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59
  %call = tail call ptr @ieee80211_find_sta(ptr noundef %vif, ptr noundef %peer) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %rcu_read_lock.exit.if.then_crit_edge, label %lor.lhs.false

rcu_read_lock.exit.if.then_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %rcu_read_lock.exit
  %tdls = getelementptr inbounds %struct.ieee80211_sta, ptr %call, i32 0, i32 17
  %4 = ptrtoint ptr %tdls to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tdls, align 4, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %rcu_read_lock.exit.if.then_crit_edge
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i10, label %if.then.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

if.then.rcu_read_unlock.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %if.then
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 724, ptr noundef nonnull @.str.47) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %if.then.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !162
  %6 = tail call i32 @llvm.read_register.i32(metadata !151) #7
  %and.i.i.i.i.i17 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call.i19 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i19, label %if.end.rcu_read_unlock.exit29_crit_edge, label %land.lhs.true.i22

if.end.rcu_read_unlock.exit29_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit29

land.lhs.true.i22:                                ; preds = %if.end
  %call1.i20 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i20)
  %tobool.not.i21 = icmp eq i32 %call1.i20, 0
  br i1 %tobool.not.i21, label %land.lhs.true.i22.rcu_read_unlock.exit29_crit_edge, label %land.lhs.true2.i24

land.lhs.true.i22.rcu_read_unlock.exit29_crit_edge: ; preds = %land.lhs.true.i22
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit29

land.lhs.true2.i24:                               ; preds = %land.lhs.true.i22
  %.b4.i23 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i23, label %land.lhs.true2.i24.rcu_read_unlock.exit29_crit_edge, label %if.then.i25

land.lhs.true2.i24.rcu_read_unlock.exit29_crit_edge: ; preds = %land.lhs.true2.i24
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit29

if.then.i25:                                      ; preds = %land.lhs.true2.i24
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 724, ptr noundef nonnull @.str.47) #7
  br label %rcu_read_unlock.exit29

rcu_read_unlock.exit29:                           ; preds = %if.then.i25, %land.lhs.true2.i24.rcu_read_unlock.exit29_crit_edge, %land.lhs.true.i22.rcu_read_unlock.exit29_crit_edge, %if.end.rcu_read_unlock.exit29_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !162
  %10 = tail call i32 @llvm.read_register.i32(metadata !151) #7
  %and.i.i.i.i.i26 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i26 to ptr
  %preempt_count.i.i.i.i27 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i27, align 4
  %sub.i.i.i28 = add i32 %13, -1
  store volatile i32 %sub.i.i.i28, ptr %preempt_count.i.i.i.i27, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  %name = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  %conv = zext i16 %reason to i32
  %call2 = tail call ptr @ieee80211_get_reason_code_string(i16 noundef zeroext %reason) #7
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.11, ptr noundef %name, ptr noundef %peer, i32 noundef %conv, ptr noundef %call2) #7
  %14 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp.not.i = icmp eq i32 %15, 2
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %rcu_read_unlock.exit29.if.then.i31_crit_edge

rcu_read_unlock.exit29.if.then.i31_crit_edge:     ; preds = %rcu_read_unlock.exit29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i31

lor.lhs.false.i:                                  ; preds = %rcu_read_unlock.exit29
  %assoc.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 10
  %16 = ptrtoint ptr %assoc.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %assoc.i, align 1, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i30 = icmp eq i8 %17, 0
  br i1 %tobool.not.i30, label %lor.lhs.false.i.if.then.i31_crit_edge, label %if.end.i

lor.lhs.false.i.if.then.i31_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i31

if.then.i31:                                      ; preds = %lor.lhs.false.i.if.then.i31_crit_edge, %rcu_read_unlock.exit29.if.then.i31_crit_edge
  tail call void (ptr, ...) @__sdata_err(ptr noundef nonnull @.str.5, ptr noundef %name, i32 noundef 2) #7
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 6
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 8
  tail call void @cfg80211_tdls_oper_request(ptr noundef %19, ptr noundef %peer, i32 noundef 2, i16 noundef zeroext 25, i32 noundef 2592) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.then.i31, %rcu_read_unlock.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_find_sta(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_get_reason_code_string(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_delayed_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_vif_queues(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_vif_queues(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_drv_mgd_protect_tdls_discover(ptr noundef %local, ptr noundef %sdata) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_mgd_protect_tdls_discover, i32 0, i32 1), ptr blockaddress(@trace_drv_mgd_protect_tdls_discover, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !166

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !151) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !163

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !151) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !167
  %call42 = tail call i32 @__traceiter_drv_mgd_protect_tdls_discover(ptr noundef null, ptr noundef %local, ptr noundef %sdata) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !168
  %13 = tail call i32 @llvm.read_register.i32(metadata !151) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !151) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !163

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !151) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !169
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_mgd_protect_tdls_discover, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_mgd_protect_tdls_discover, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_drv_mgd_protect_tdls_discover.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_drv_mgd_protect_tdls_discover.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 1515, ptr noundef nonnull @.str.18) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !170
  %31 = tail call i32 @llvm.read_register.i32(metadata !151) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), ptr blockaddress(@trace_drv_return_void, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !166

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !151) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !163

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !151) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !171
  %call42 = tail call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %local) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !172
  %13 = tail call i32 @llvm.read_register.i32(metadata !151) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !151) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !163

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !151) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !169
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_drv_return_void.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_drv_return_void.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 205, ptr noundef nonnull @.str.18) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !170
  %31 = tail call i32 @llvm.read_register.i32(metadata !151) #7
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
declare dso_local i32 @__traceiter_drv_mgd_protect_tdls_discover(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_return_void(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ieee80211_tdls_build_mgmt_packet_data(ptr noundef %sdata, ptr noundef %peer, i8 noundef zeroext %action_code, i8 noundef zeroext %dialog_token, i16 noundef zeroext %status_code, i1 noundef zeroext %initiator, ptr noundef %extra_ies, i32 noundef %extra_ies_len, i8 noundef zeroext %oper_class, ptr noundef readonly %chandef) unnamed_addr #0 align 64 {
entry:
  %op_class.i.i.i = alloca i8, align 1
  %ht_cap.i.i = alloca %struct.ieee80211_sta_ht_cap, align 2
  %vht_cap.i.i = alloca %struct.ieee80211_sta_vht_cap, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %dev = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 6
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %extra_tx_headroom = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %extra_tx_headroom to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %extra_tx_headroom, align 4
  %add13 = add i32 %extra_ies_len, 259
  %add14 = add i32 %add13, %5
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %3, i32 noundef %add14, i32 noundef 2592) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %extra_tx_headroom to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %extra_tx_headroom, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %7
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %11, i32 %7
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %12 = zext i8 %action_code to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.53)
  switch i8 %action_code, label %if.end.fail_crit_edge [
    i8 0, label %if.end.sw.bb_crit_edge
    i8 1, label %if.end.sw.bb_crit_edge82
    i8 2, label %if.end.sw.bb_crit_edge83
    i8 3, label %if.end.sw.bb_crit_edge84
    i8 10, label %if.end.sw.bb_crit_edge85
    i8 5, label %if.end.sw.bb_crit_edge86
    i8 6, label %if.end.sw.bb_crit_edge87
    i8 14, label %sw.bb.i58
  ]

if.end.sw.bb_crit_edge87:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge86:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge85:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge84:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge83:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge82:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge82, %if.end.sw.bb_crit_edge83, %if.end.sw.bb_crit_edge84, %if.end.sw.bb_crit_edge85, %if.end.sw.bb_crit_edge86, %if.end.sw.bb_crit_edge87
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 2304
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 17) #7
  %15 = call ptr @memcpy(ptr %call1.i, ptr %peer, i32 6)
  %sa.i = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %call1.i, i32 0, i32 1
  %addr.i = getelementptr i8, ptr %14, i32 7184
  %16 = call ptr @memcpy(ptr %sa.i, ptr %addr.i, i32 6)
  %ether_type.i = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %call1.i, i32 0, i32 2
  %17 = ptrtoint ptr %ether_type.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 -30451, ptr %ether_type.i, align 1
  %payload_type.i = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %call1.i, i32 0, i32 3
  %18 = ptrtoint ptr %payload_type.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %payload_type.i, align 1
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 18
  %21 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %20 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %22 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 20
  %add.i.i = add i16 %conv.i.i.i, 14
  %23 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %add.i.i, ptr %network_header.i.i.i, align 4
  %24 = zext i8 %action_code to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.54)
  switch i8 %action_code, label %sw.bb.fail_crit_edge [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb9.i
    i8 2, label %sw.bb3.i
    i8 3, label %sw.bb28.i
    i8 10, label %sw.bb33.i
    i8 5, label %sw.bb23.i
    i8 6, label %sw.bb25.i
  ]

sw.bb.fail_crit_edge:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

sw.bb.i:                                          ; preds = %sw.bb
  %category.i = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %call1.i, i32 0, i32 4
  %25 = ptrtoint ptr %category.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 12, ptr %category.i, align 1
  %action_code4.i = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %call1.i, i32 0, i32 5
  %26 = ptrtoint ptr %action_code4.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %action_code4.i, align 1
  %call5.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 3) #7
  %u.i = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %call1.i, i32 0, i32 6
  %27 = ptrtoint ptr %u.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %dialog_token, ptr %u.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %status_code)
  %cmp.not.i.i = icmp eq i16 %status_code, 0
  br i1 %cmp.not.i.i, label %if.end.i.i, label %sw.bb.i.ieee80211_get_tdls_sta_capab.exit.i_crit_edge

sw.bb.i.ieee80211_get_tdls_sta_capab.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ieee80211_get_tdls_sta_capab.exit.i

if.end.i.i:                                       ; preds = %sw.bb.i
  %call.i.i = tail call fastcc ptr @ieee80211_get_sband(ptr noundef %add.ptr.i.i.i) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.i.if.end5.i.i_crit_edge, label %land.lhs.true.i.i

if.end.i.i.if.end5.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %band.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %call.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %band.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %band.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp2.i.i = icmp eq i32 %29, 0
  br i1 %cmp2.i.i, label %land.lhs.true.i.i.ieee80211_get_tdls_sta_capab.exit.i_crit_edge, label %land.lhs.true.i.i.if.end5.i.i_crit_edge

land.lhs.true.i.i.if.end5.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i.i

land.lhs.true.i.i.ieee80211_get_tdls_sta_capab.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ieee80211_get_tdls_sta_capab.exit.i

if.end5.i.i:                                      ; preds = %land.lhs.true.i.i.if.end5.i.i_crit_edge, %if.end.i.i.if.end5.i.i_crit_edge
  br label %ieee80211_get_tdls_sta_capab.exit.i

ieee80211_get_tdls_sta_capab.exit.i:              ; preds = %if.end5.i.i, %land.lhs.true.i.i.ieee80211_get_tdls_sta_capab.exit.i_crit_edge, %sw.bb.i.ieee80211_get_tdls_sta_capab.exit.i_crit_edge
  %retval.0.i.i = phi i16 [ 0, %if.end5.i.i ], [ 0, %sw.bb.i.ieee80211_get_tdls_sta_capab.exit.i_crit_edge ], [ 1056, %land.lhs.true.i.i.ieee80211_get_tdls_sta_capab.exit.i_crit_edge ]
  %30 = tail call i16 @llvm.bswap.i16(i16 %retval.0.i.i) #7
  %capability.i = getelementptr inbounds %struct.anon.196, ptr %u.i, i32 0, i32 1
  %31 = ptrtoint ptr %capability.i to i32
  call void @__asan_storeN_noabort(i32 %31, i32 2)
  store i16 %30, ptr %capability.i, align 1
  br label %sw.bb.i69

sw.bb9.i:                                         ; preds = %sw.bb
  %category10.i = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %call1.i, i32 0, i32 4
  %32 = ptrtoint ptr %category10.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 12, ptr %category10.i, align 1
  %action_code11.i = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %call1.i, i32 0, i32 5
  %33 = ptrtoint ptr %action_code11.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %action_code11.i, align 1
  %call12.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 5) #7
  %34 = tail call i16 @llvm.bswap.i16(i16 %status_code) #7
  %u13.i = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %call1.i, i32 0, i32 6
  %35 = ptrtoint ptr %u13.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 %34, ptr %u13.i, align 1
  %dialog_token16.i = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %call1.i, i32 0, i32 6, i32 1
  %36 = ptrtoint ptr %dialog_token16.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %dialog_token, ptr %dialog_token16.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %status_code)
  %cmp.not.i1.i = icmp eq i16 %status_code, 0
  br i1 %cmp.not.i1.i, label %if.end.i4.i, label %sw.bb9.i.ieee80211_get_tdls_sta_capab.exit10.i_crit_edge

sw.bb9.i.ieee80211_get_tdls_sta_capab.exit10.i_crit_edge: ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ieee80211_get_tdls_sta_capab.exit10.i

if.end.i4.i:                                      ; preds = %sw.bb9.i
  %call.i2.i = tail call fastcc ptr @ieee80211_get_sband(ptr noundef %add.ptr.i.i.i) #7
  %tobool.not.i3.i = icmp eq ptr %call.i2.i, null
  br i1 %tobool.not.i3.i, label %if.end.i4.i.if.end5.i8.i_crit_edge, label %land.lhs.true.i7.i

if.end.i4.i.if.end5.i8.i_crit_edge:               ; preds = %if.end.i4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i8.i

land.lhs.true.i7.i:                               ; preds = %if.end.i4.i
  %band.i5.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %call.i2.i, i32 0, i32 2
  %37 = ptrtoint ptr %band.i5.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %band.i5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp2.i6.i = icmp eq i32 %38, 0
  br i1 %cmp2.i6.i, label %land.lhs.true.i7.i.ieee80211_get_tdls_sta_capab.exit10.i_crit_edge, label %land.lhs.true.i7.i.if.end5.i8.i_crit_edge

land.lhs.true.i7.i.if.end5.i8.i_crit_edge:        ; preds = %land.lhs.true.i7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i8.i

land.lhs.true.i7.i.ieee80211_get_tdls_sta_capab.exit10.i_crit_edge: ; preds = %land.lhs.true.i7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ieee80211_get_tdls_sta_capab.exit10.i

if.end5.i8.i:                                     ; preds = %land.lhs.true.i7.i.if.end5.i8.i_crit_edge, %if.end.i4.i.if.end5.i8.i_crit_edge
  br label %ieee80211_get_tdls_sta_capab.exit10.i

ieee80211_get_tdls_sta_capab.exit10.i:            ; preds = %if.end5.i8.i, %land.lhs.true.i7.i.ieee80211_get_tdls_sta_capab.exit10.i_crit_edge, %sw.bb9.i.ieee80211_get_tdls_sta_capab.exit10.i_crit_edge
  %retval.0.i9.i = phi i16 [ 0, %if.end5.i8.i ], [ 0, %sw.bb9.i.ieee80211_get_tdls_sta_capab.exit10.i_crit_edge ], [ 1056, %land.lhs.true.i7.i.ieee80211_get_tdls_sta_capab.exit10.i_crit_edge ]
  %39 = tail call i16 @llvm.bswap.i16(i16 %retval.0.i9.i) #7
  %capability19.i = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %call1.i, i32 0, i32 6, i32 1, i32 1
  %40 = ptrtoint ptr %capability19.i to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 %39, ptr %capability19.i, align 1
  br label %sw.bb.i69

sw.bb28.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %category29.i = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %call1.i, i32 0, i32 4
  %41 = ptrtoint ptr %category29.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 12, ptr %category29.i, align 1
  %action_code30.i = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %call1.i, i32 0, i32 5
  %42 = ptrtoint ptr %action_code30.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 3, ptr %action_code30.i, align 1
  %call31.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 2) #7
  %43 = tail call i16 @llvm.bswap.i16(i16 %status_code) #7
  %u32.i = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %call1.i, i32 0, i32 6
  %44 = ptrtoint ptr %u32.i to i32
  call void @__asan_storeN_noabort(i32 %44, i32 2)
  store i16 %43, ptr %u32.i, align 1
  br label %sw.bb10.i

sw.bb33.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %category34.i = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %call1.i, i32 0, i32 4
  %45 = ptrtoint ptr %category34.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 12, ptr %category34.i, align 1
  %action_code35.i = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %call1.i, i32 0, i32 5
  %46 = ptrtoint ptr %action_code35.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 10, ptr %action_code35.i, align 1
  %call36.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 1) #7
  %u37.i = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %call1.i, i32 0, i32 6
  %47 = ptrtoint ptr %u37.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %dialog_token, ptr %u37.i, align 1
  br label %sw.bb10.i

sw.bb.i58:                                        ; preds = %if.end
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev, align 8
  %call.i.i54 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 24) #7
  %50 = call ptr @memset(ptr %call.i.i54, i32 0, i32 24)
  %da.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i.i54, i32 0, i32 2
  %51 = call ptr @memcpy(ptr %da.i, ptr %peer, i32 6)
  %sa.i55 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i.i54, i32 0, i32 3
  %addr.i56 = getelementptr i8, ptr %49, i32 7184
  %52 = call ptr @memcpy(ptr %sa.i55, ptr %addr.i56, i32 6)
  %bssid.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i.i54, i32 0, i32 4
  %bssid5.i = getelementptr i8, ptr %49, i32 5252
  %53 = call ptr @memcpy(ptr %bssid.i, ptr %bssid5.i, i32 6)
  %54 = ptrtoint ptr %call.i.i54 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 -12288, ptr %call.i.i54, align 2
  %call7.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 5) #7
  %u8.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i.i54, i32 0, i32 6
  %55 = ptrtoint ptr %u8.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 4, ptr %u8.i, align 2
  %u10.i = getelementptr inbounds %struct.anon.174, ptr %u8.i, i32 0, i32 1
  %56 = ptrtoint ptr %u10.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 14, ptr %u10.i, align 1
  %dialog_token14.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i.i54, i32 0, i32 6, i32 0, i32 1
  %57 = ptrtoint ptr %dialog_token14.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %dialog_token, ptr %dialog_token14.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %status_code)
  %cmp.not.i.i57 = icmp eq i16 %status_code, 0
  br i1 %cmp.not.i.i57, label %if.end.i.i60, label %sw.bb.i58.ieee80211_prep_tdls_direct.exit_crit_edge

sw.bb.i58.ieee80211_prep_tdls_direct.exit_crit_edge: ; preds = %sw.bb.i58
  call void @__sanitizer_cov_trace_pc() #9
  br label %ieee80211_prep_tdls_direct.exit

if.end.i.i60:                                     ; preds = %sw.bb.i58
  %add.ptr.i.i.i53 = getelementptr i8, ptr %49, i32 2304
  %call.i1.i = tail call fastcc ptr @ieee80211_get_sband(ptr noundef %add.ptr.i.i.i53) #7
  %tobool.not.i.i59 = icmp eq ptr %call.i1.i, null
  br i1 %tobool.not.i.i59, label %if.end.i.i60.if.end5.i.i64_crit_edge, label %land.lhs.true.i.i63

if.end.i.i60.if.end5.i.i64_crit_edge:             ; preds = %if.end.i.i60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i.i64

land.lhs.true.i.i63:                              ; preds = %if.end.i.i60
  %band.i.i61 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %call.i1.i, i32 0, i32 2
  %58 = ptrtoint ptr %band.i.i61 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %band.i.i61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp2.i.i62 = icmp eq i32 %59, 0
  br i1 %cmp2.i.i62, label %land.lhs.true.i.i63.ieee80211_prep_tdls_direct.exit_crit_edge, label %land.lhs.true.i.i63.if.end5.i.i64_crit_edge

land.lhs.true.i.i63.if.end5.i.i64_crit_edge:      ; preds = %land.lhs.true.i.i63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i.i64

land.lhs.true.i.i63.ieee80211_prep_tdls_direct.exit_crit_edge: ; preds = %land.lhs.true.i.i63
  call void @__sanitizer_cov_trace_pc() #9
  br label %ieee80211_prep_tdls_direct.exit

if.end5.i.i64:                                    ; preds = %land.lhs.true.i.i63.if.end5.i.i64_crit_edge, %if.end.i.i60.if.end5.i.i64_crit_edge
  br label %ieee80211_prep_tdls_direct.exit

ieee80211_prep_tdls_direct.exit:                  ; preds = %if.end5.i.i64, %land.lhs.true.i.i63.ieee80211_prep_tdls_direct.exit_crit_edge, %sw.bb.i58.ieee80211_prep_tdls_direct.exit_crit_edge
  %retval.0.i.i65 = phi i16 [ 0, %if.end5.i.i64 ], [ 0, %sw.bb.i58.ieee80211_prep_tdls_direct.exit_crit_edge ], [ 1056, %land.lhs.true.i.i63.ieee80211_prep_tdls_direct.exit_crit_edge ]
  %60 = tail call i16 @llvm.bswap.i16(i16 %retval.0.i.i65) #7
  %capability.i66 = getelementptr inbounds %struct.anon.174, ptr %u8.i, i32 0, i32 1, i32 0, i32 2
  %61 = ptrtoint ptr %capability.i66 to i32
  call void @__asan_storeN_noabort(i32 %61, i32 2)
  store i16 %60, ptr %capability.i66, align 1
  br label %sw.bb.i69

sw.bb.i69:                                        ; preds = %ieee80211_prep_tdls_direct.exit, %ieee80211_get_tdls_sta_capab.exit10.i, %ieee80211_get_tdls_sta_capab.exit.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %status_code)
  %cmp.i = icmp eq i16 %status_code, 0
  br i1 %cmp.i, label %if.then.i, label %sw.bb.i69.cleanup_crit_edge

sw.bb.i69.cleanup_crit_edge:                      ; preds = %sw.bb.i69
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %sw.bb.i69
  %62 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %local1, align 4
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %ht_cap.i.i) #7
  %64 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, ptr %ht_cap.i.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %vht_cap.i.i) #7
  %call.i.i70 = tail call fastcc ptr @ieee80211_get_sband(ptr noundef %sdata) #7
  %tobool.not.i.i71 = icmp eq ptr %call.i.i70, null
  br i1 %tobool.not.i.i71, label %if.then.i.ieee80211_tdls_add_setup_start_ies.exit.i_crit_edge, label %if.end.i.i73

if.then.i.ieee80211_tdls_add_setup_start_ies.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ieee80211_tdls_add_setup_start_ies.exit.i

if.end.i.i73:                                     ; preds = %if.then.i
  %band.i.i72 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %call.i.i70, i32 0, i32 2
  %65 = ptrtoint ptr %band.i.i72 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %band.i.i72, align 4
  %call2.i.i = tail call i32 @ieee80211_add_srates_ie(ptr noundef %sdata, ptr noundef nonnull %call.i, i1 noundef zeroext false, i32 noundef %66) #7
  %67 = ptrtoint ptr %band.i.i72 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %band.i.i72, align 4
  %call4.i.i = tail call i32 @ieee80211_add_ext_srates_ie(ptr noundef %sdata, ptr noundef nonnull %call.i, i1 noundef zeroext false, i32 noundef %68) #7
  %call.i.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 2) #7
  %incdec.ptr.i.i.i = getelementptr i8, ptr %call.i.i.i, i32 1
  %69 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 36, ptr %call.i.i.i, align 1
  %call1.i.i.i = tail call fastcc zeroext i8 @ieee80211_tdls_add_subband(ptr noundef %sdata, ptr noundef nonnull %call.i, i16 noundef zeroext 2412, i16 noundef zeroext 2472, i16 noundef zeroext 5) #7
  %call2.i.i.i = tail call fastcc zeroext i8 @ieee80211_tdls_add_subband(ptr noundef %sdata, ptr noundef nonnull %call.i, i16 noundef zeroext 5000, i16 noundef zeroext 5825, i16 noundef zeroext 20) #7
  %add.i.i.i = add i8 %call2.i.i.i, %call1.i.i.i
  %mul.i.i.i = shl i8 %add.i.i.i, 1
  %70 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %mul.i.i.i, ptr %incdec.ptr.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %extra_ies_len)
  %tobool5.not.i.i = icmp eq i32 %extra_ies_len, 0
  br i1 %tobool5.not.i.i, label %if.end.i.i73.if.end9.i.i_crit_edge, label %if.then6.i.i

if.end.i.i73.if.end9.i.i_crit_edge:               ; preds = %if.end.i.i73
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i.i

if.then6.i.i:                                     ; preds = %if.end.i.i73
  call void @__sanitizer_cov_trace_pc() #9
  %call.i282.i.i = tail call i32 @ieee80211_ie_split_ric(ptr noundef %extra_ies, i32 noundef %extra_ies_len, ptr noundef nonnull @ieee80211_tdls_add_setup_start_ies.before_ext_cap, i32 noundef 5, ptr noundef null, i32 noundef 0, i32 noundef 0) #7
  %call.i283.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %call.i282.i.i) #7
  %71 = call ptr @memcpy(ptr %call.i283.i.i, ptr %extra_ies, i32 %call.i282.i.i)
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.then6.i.i, %if.end.i.i73.if.end9.i.i_crit_edge
  %offset.0.i.i = phi i32 [ %call.i282.i.i, %if.then6.i.i ], [ 0, %if.end.i.i73.if.end9.i.i_crit_edge ]
  %72 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %local1, align 4
  %wiphy.i.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %wiphy.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %wiphy.i.i.i, align 8
  %features.i.i.i = getelementptr inbounds %struct.wiphy, ptr %75, i32 0, i32 13
  %76 = ptrtoint ptr %features.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %features.i.i.i, align 8
  %flags.i.i.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %73, i32 0, i32 4
  %78 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %80 = and i32 %79, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.i.not.i.i.i = icmp eq i32 %80, 0
  br i1 %tobool.i.not.i.i.i, label %if.end9.i.i.land.end.i.i.i_crit_edge, label %land.rhs.i.i.i

if.end9.i.i.land.end.i.i.i_crit_edge:             ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %u.i.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57
  %tdls_wider_bw_prohibited.i.i.i = getelementptr inbounds %struct.ieee80211_if_managed, ptr %u.i.i.i, i32 0, i32 58
  %81 = ptrtoint ptr %tdls_wider_bw_prohibited.i.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %tdls_wider_bw_prohibited.i.i.i, align 1, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool3.not.i.i.i = icmp eq i8 %82, 0
  br label %land.end.i.i.i

land.end.i.i.i:                                   ; preds = %land.rhs.i.i.i, %if.end9.i.i.land.end.i.i.i_crit_edge
  %83 = phi i1 [ false, %if.end9.i.i.land.end.i.i.i_crit_edge ], [ %tobool3.not.i.i.i, %land.rhs.i.i.i ]
  %arrayidx.i.i.i.i.i = getelementptr %struct.ieee80211_hw, ptr %73, i32 0, i32 4, i32 1
  %84 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %arrayidx.i.i.i.i.i, align 4
  %call8.i.i.i = tail call fastcc ptr @ieee80211_get_sband(ptr noundef %sdata) #7
  %tobool9.not.i.i.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool9.not.i.i.i, label %land.end.i.i.i.ieee80211_tdls_add_ext_capab.exit.i.i_crit_edge, label %land.rhs10.i.i.i

land.end.i.i.i.ieee80211_tdls_add_ext_capab.exit.i.i_crit_edge: ; preds = %land.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ieee80211_tdls_add_ext_capab.exit.i.i

land.rhs10.i.i.i:                                 ; preds = %land.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %vht_cap.i.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %call8.i.i.i, i32 0, i32 6
  %86 = ptrtoint ptr %vht_cap.i.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %vht_cap.i.i.i, align 4, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool11.i.i.i = icmp ne i8 %87, 0
  %phi.sel.i.i.i = select i1 %tobool11.i.i.i, i1 %83, i1 false
  %phi.sel51.i.i.i = select i1 %phi.sel.i.i.i, i8 32, i8 0
  br label %ieee80211_tdls_add_ext_capab.exit.i.i

ieee80211_tdls_add_ext_capab.exit.i.i:            ; preds = %land.rhs10.i.i.i, %land.end.i.i.i.ieee80211_tdls_add_ext_capab.exit.i.i_crit_edge
  %88 = phi i8 [ 0, %land.end.i.i.i.ieee80211_tdls_add_ext_capab.exit.i.i_crit_edge ], [ %phi.sel51.i.i.i, %land.rhs10.i.i.i ]
  %call14.i.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 10) #7
  %incdec.ptr.i284.i.i = getelementptr i8, ptr %call14.i.i.i, i32 1
  %89 = ptrtoint ptr %call14.i.i.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 127, ptr %call14.i.i.i, align 1
  %incdec.ptr15.i.i.i = getelementptr i8, ptr %call14.i.i.i, i32 2
  %90 = ptrtoint ptr %incdec.ptr.i284.i.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 8, ptr %incdec.ptr.i284.i.i, align 1
  %incdec.ptr16.i.i.i = getelementptr i8, ptr %call14.i.i.i, i32 3
  %91 = ptrtoint ptr %incdec.ptr15.i.i.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %incdec.ptr15.i.i.i, align 1
  %incdec.ptr17.i.i.i = getelementptr i8, ptr %call14.i.i.i, i32 4
  %92 = ptrtoint ptr %incdec.ptr16.i.i.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %incdec.ptr16.i.i.i, align 1
  %incdec.ptr18.i.i.i = getelementptr i8, ptr %call14.i.i.i, i32 5
  %93 = ptrtoint ptr %incdec.ptr17.i.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %incdec.ptr17.i.i.i, align 1
  %and.i.i.i = lshr i32 %77, 22
  %94 = and i32 %and.i.i.i, 64
  %95 = lshr i32 %85, 3
  %96 = and i32 %95, 16
  %or.i.i.i = or i32 %96, %94
  %conv.i.i.i74 = trunc i32 %or.i.i.i to i8
  %incdec.ptr22.i.i.i = getelementptr i8, ptr %call14.i.i.i, i32 6
  %97 = ptrtoint ptr %incdec.ptr18.i.i.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %conv.i.i.i74, ptr %incdec.ptr18.i.i.i, align 1
  %incdec.ptr23.i.i.i = getelementptr i8, ptr %call14.i.i.i, i32 7
  %98 = ptrtoint ptr %incdec.ptr22.i.i.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 32, ptr %incdec.ptr22.i.i.i, align 1
  %incdec.ptr24.i.i.i = getelementptr i8, ptr %call14.i.i.i, i32 8
  %99 = ptrtoint ptr %incdec.ptr23.i.i.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %incdec.ptr23.i.i.i, align 1
  %100 = ptrtoint ptr %incdec.ptr24.i.i.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %incdec.ptr24.i.i.i, align 1
  %incdec.ptr25.i.i.i = getelementptr i8, ptr %call14.i.i.i, i32 9
  %101 = ptrtoint ptr %incdec.ptr25.i.i.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %88, ptr %incdec.ptr25.i.i.i, align 1
  %queues.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %63, i32 0, i32 11
  %102 = ptrtoint ptr %queues.i.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %queues.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %103)
  %cmp.i.i = icmp ult i16 %103, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %action_code)
  %cmp12.not.i.i = icmp eq i8 %action_code, 14
  %or.cond.i.i = or i1 %cmp12.not.i.i, %cmp.i.i
  br i1 %or.cond.i.i, label %ieee80211_tdls_add_ext_capab.exit.i.i.if.end17.i.i_crit_edge, label %if.then14.i.i

ieee80211_tdls_add_ext_capab.exit.i.i.if.end17.i.i_crit_edge: ; preds = %ieee80211_tdls_add_ext_capab.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i.i

if.then14.i.i:                                    ; preds = %ieee80211_tdls_add_ext_capab.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 9) #7
  %call16.i.i = tail call ptr @ieee80211_add_wmm_info_ie(ptr noundef %call15.i.i, i8 noundef zeroext 0) #7
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.then14.i.i, %ieee80211_tdls_add_ext_capab.exit.i.i.if.end17.i.i_crit_edge
  br i1 %tobool5.not.i.i, label %if.end17.i.i.if.end24.i.i_crit_edge, label %if.then19.i.i

if.end17.i.i.if.end24.i.i_crit_edge:              ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i.i

if.then19.i.i:                                    ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i285.i.i = tail call i32 @ieee80211_ie_split_ric(ptr noundef %extra_ies, i32 noundef %extra_ies_len, ptr noundef nonnull @ieee80211_tdls_add_setup_start_ies.before_ht_cap, i32 noundef 10, ptr noundef null, i32 noundef 0, i32 noundef %offset.0.i.i) #7
  %add.ptr21.i.i = getelementptr i8, ptr %extra_ies, i32 %offset.0.i.i
  %sub22.i.i = sub i32 %call.i285.i.i, %offset.0.i.i
  %call.i286.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %sub22.i.i) #7
  %104 = call ptr @memcpy(ptr %call.i286.i.i, ptr %add.ptr21.i.i, i32 %sub22.i.i)
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %if.then19.i.i, %if.end17.i.i.if.end24.i.i_crit_edge
  %offset.1.i.i = phi i32 [ %call.i285.i.i, %if.then19.i.i ], [ %offset.0.i.i, %if.end17.i.i.if.end24.i.i_crit_edge ]
  %sta_mtx.i.i = getelementptr inbounds %struct.ieee80211_local, ptr %63, i32 0, i32 46
  tail call void @mutex_lock_nested(ptr noundef %sta_mtx.i.i, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %action_code)
  %cmp26.i.i = icmp eq i8 %action_code, 1
  br i1 %cmp26.i.i, label %if.then28.i.i, label %if.end24.i.i.if.end75.i.i_crit_edge

if.end24.i.i.if.end75.i.i_crit_edge:              ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75.i.i

if.then28.i.i:                                    ; preds = %if.end24.i.i
  %call29.i.i = tail call ptr @sta_info_get(ptr noundef %sdata, ptr noundef %peer) #7
  %tobool30.not.i.i = icmp eq ptr %call29.i.i, null
  br i1 %tobool30.not.i.i, label %land.rhs.i.i, label %if.end74.i.i

land.rhs.i.i:                                     ; preds = %if.then28.i.i
  %.b278.i.i = load i1, ptr @ieee80211_tdls_add_setup_start_ies.__already_done, align 1
  br i1 %.b278.i.i, label %land.rhs.i.i.if.then72.i.i_crit_edge, label %if.then41.i.i, !prof !163

land.rhs.i.i.if.then72.i.i_crit_edge:             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then72.i.i

if.then41.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @ieee80211_tdls_add_setup_start_ies.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 433, i32 noundef 9, ptr noundef null) #7
  br label %if.then72.i.i

if.then72.i.i:                                    ; preds = %if.then41.i.i, %land.rhs.i.i.if.then72.i.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %sta_mtx.i.i) #7
  br label %ieee80211_tdls_add_setup_start_ies.exit.i

if.end74.i.i:                                     ; preds = %if.then28.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %tdls_chandef.i.i = getelementptr inbounds %struct.sta_info, ptr %call29.i.i, i32 0, i32 46
  %chandef.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 32
  %105 = call ptr @memcpy(ptr %tdls_chandef.i.i, ptr %chandef.i.i, i32 28)
  br label %if.end75.i.i

if.end75.i.i:                                     ; preds = %if.end74.i.i, %if.end24.i.i.if.end75.i.i_crit_edge
  %sta.0.i.i = phi ptr [ %call29.i.i, %if.end74.i.i ], [ null, %if.end24.i.i.if.end75.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %op_class.i.i.i) #7
  %106 = ptrtoint ptr %op_class.i.i.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 -1, ptr %op_class.i.i.i, align 1, !annotation !173
  %chandef.i.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 32
  %call.i287.i.i = call zeroext i1 @ieee80211_chandef_to_operating_class(ptr noundef %chandef.i.i.i, ptr noundef nonnull %op_class.i.i.i) #7
  br i1 %call.i287.i.i, label %if.end.i.i.i, label %if.end75.i.i.ieee80211_tdls_add_oper_classes.exit.i.i_crit_edge

if.end75.i.i.ieee80211_tdls_add_oper_classes.exit.i.i_crit_edge: ; preds = %if.end75.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ieee80211_tdls_add_oper_classes.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end75.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i288.i.i = call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 4) #7
  %incdec.ptr.i289.i.i = getelementptr i8, ptr %call1.i288.i.i, i32 1
  %107 = ptrtoint ptr %call1.i288.i.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 59, ptr %call1.i288.i.i, align 1
  %incdec.ptr2.i.i.i = getelementptr i8, ptr %call1.i288.i.i, i32 2
  %108 = ptrtoint ptr %incdec.ptr.i289.i.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 2, ptr %incdec.ptr.i289.i.i, align 1
  %109 = ptrtoint ptr %op_class.i.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %op_class.i.i.i, align 1
  %incdec.ptr3.i.i.i = getelementptr i8, ptr %call1.i288.i.i, i32 3
  %111 = ptrtoint ptr %incdec.ptr2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %110, ptr %incdec.ptr2.i.i.i, align 1
  %112 = load i8, ptr %op_class.i.i.i, align 1
  %113 = ptrtoint ptr %incdec.ptr3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %112, ptr %incdec.ptr3.i.i.i, align 1
  br label %ieee80211_tdls_add_oper_classes.exit.i.i

ieee80211_tdls_add_oper_classes.exit.i.i:         ; preds = %if.end.i.i.i, %if.end75.i.i.ieee80211_tdls_add_oper_classes.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %op_class.i.i.i) #7
  %ht_cap76.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %call.i.i70, i32 0, i32 5
  %114 = call ptr @memcpy(ptr %ht_cap.i.i, ptr %ht_cap76.i.i, i32 22)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %action_code)
  %cmp78.i.i = icmp eq i8 %action_code, 0
  %115 = zext i8 %action_code to i64
  call void @__sanitizer_cov_trace_switch(i64 %115, ptr @__sancov_gen_cov_switch_values.55)
  switch i8 %action_code, label %ieee80211_tdls_add_oper_classes.exit.i.i.if.else.i.i_crit_edge [
    i8 14, label %ieee80211_tdls_add_oper_classes.exit.i.i.land.lhs.true83.i.i_crit_edge
    i8 0, label %ieee80211_tdls_add_oper_classes.exit.i.i.land.lhs.true83.i.i_crit_edge88
  ]

ieee80211_tdls_add_oper_classes.exit.i.i.land.lhs.true83.i.i_crit_edge88: ; preds = %ieee80211_tdls_add_oper_classes.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true83.i.i

ieee80211_tdls_add_oper_classes.exit.i.i.land.lhs.true83.i.i_crit_edge: ; preds = %ieee80211_tdls_add_oper_classes.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true83.i.i

ieee80211_tdls_add_oper_classes.exit.i.i.if.else.i.i_crit_edge: ; preds = %ieee80211_tdls_add_oper_classes.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i

land.lhs.true83.i.i:                              ; preds = %ieee80211_tdls_add_oper_classes.exit.i.i.land.lhs.true83.i.i_crit_edge, %ieee80211_tdls_add_oper_classes.exit.i.i.land.lhs.true83.i.i_crit_edge88
  %116 = ptrtoint ptr %64 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %64, align 2, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool84.not.i.i = icmp eq i8 %117, 0
  br i1 %tobool84.not.i.i, label %land.lhs.true83.i.i.if.else.i.i_crit_edge, label %if.then86.i.i

land.lhs.true83.i.i.if.else.i.i_crit_edge:        ; preds = %land.lhs.true83.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i

if.then86.i.i:                                    ; preds = %land.lhs.true83.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @ieee80211_apply_htcap_overrides(ptr noundef %sdata, ptr noundef nonnull %ht_cap.i.i) #7
  %118 = ptrtoint ptr %ht_cap.i.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %ht_cap.i.i, align 2
  %120 = or i16 %119, 12
  store i16 %120, ptr %ht_cap.i.i, align 2
  %call89.i.i = call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 28) #7
  %121 = ptrtoint ptr %ht_cap.i.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %ht_cap.i.i, align 2
  %call91.i.i = call ptr @ieee80211_ie_build_ht_cap(ptr noundef %call89.i.i, ptr noundef nonnull %ht_cap.i.i, i16 noundef zeroext %122) #7
  br label %if.end112.i.i

if.else.i.i:                                      ; preds = %land.lhs.true83.i.i.if.else.i.i_crit_edge, %ieee80211_tdls_add_oper_classes.exit.i.i.if.else.i.i_crit_edge
  br i1 %cmp26.i.i, label %land.lhs.true95.i.i, label %if.else.i.i.if.end112.i.i_crit_edge

if.else.i.i.if.end112.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end112.i.i

land.lhs.true95.i.i:                              ; preds = %if.else.i.i
  %123 = ptrtoint ptr %64 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %64, align 2, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool97.not.i.i = icmp eq i8 %124, 0
  br i1 %tobool97.not.i.i, label %land.lhs.true95.i.i.if.end121.i.i_crit_edge, label %land.lhs.true99.i.i

land.lhs.true95.i.i.if.end121.i.i_crit_edge:      ; preds = %land.lhs.true95.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end121.i.i

land.lhs.true99.i.i:                              ; preds = %land.lhs.true95.i.i
  %ht_supported102.i.i = getelementptr inbounds %struct.sta_info, ptr %sta.0.i.i, i32 0, i32 48, i32 3, i32 1
  %125 = ptrtoint ptr %ht_supported102.i.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %ht_supported102.i.i, align 2, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool103.not.i.i = icmp eq i8 %126, 0
  br i1 %tobool103.not.i.i, label %land.lhs.true99.i.i.if.end112.i.i_crit_edge, label %if.then105.i.i

land.lhs.true99.i.i.if.end112.i.i_crit_edge:      ; preds = %land.lhs.true99.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end112.i.i

if.then105.i.i:                                   ; preds = %land.lhs.true99.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %ht_cap101.i.i = getelementptr inbounds %struct.sta_info, ptr %sta.0.i.i, i32 0, i32 48, i32 3
  %127 = call ptr @memcpy(ptr %ht_cap.i.i, ptr %ht_cap101.i.i, i32 22)
  %call108.i.i = call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 28) #7
  %128 = ptrtoint ptr %ht_cap.i.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %ht_cap.i.i, align 2
  %call110.i.i = call ptr @ieee80211_ie_build_ht_cap(ptr noundef %call108.i.i, ptr noundef nonnull %ht_cap.i.i, i16 noundef zeroext %129) #7
  br label %if.end112.i.i

if.end112.i.i:                                    ; preds = %if.then105.i.i, %land.lhs.true99.i.i.if.end112.i.i_crit_edge, %if.else.i.i.if.end112.i.i_crit_edge, %if.then86.i.i
  %130 = ptrtoint ptr %64 to i32
  call void @__asan_load1_noabort(i32 %130)
  %.pr.i.i = load i8, ptr %64, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i.i)
  %tobool114.not.i.i = icmp eq i8 %.pr.i.i, 0
  br i1 %tobool114.not.i.i, label %if.end112.i.i.if.end121.i.i_crit_edge, label %land.lhs.true116.i.i

if.end112.i.i.if.end121.i.i_crit_edge:            ; preds = %if.end112.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end121.i.i

land.lhs.true116.i.i:                             ; preds = %if.end112.i.i
  %131 = ptrtoint ptr %ht_cap.i.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %ht_cap.i.i, align 2
  %133 = and i16 %132, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %133)
  %tobool119.not.i.i = icmp eq i16 %133, 0
  br i1 %tobool119.not.i.i, label %land.lhs.true116.i.i.if.end121.i.i_crit_edge, label %if.then120.i.i

land.lhs.true116.i.i.if.end121.i.i_crit_edge:     ; preds = %land.lhs.true116.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end121.i.i

if.then120.i.i:                                   ; preds = %land.lhs.true116.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i290.i.i = call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 3) #7
  %incdec.ptr.i291.i.i = getelementptr i8, ptr %call.i290.i.i, i32 1
  %134 = ptrtoint ptr %call.i290.i.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 72, ptr %call.i290.i.i, align 1
  %incdec.ptr1.i.i.i = getelementptr i8, ptr %call.i290.i.i, i32 2
  %135 = ptrtoint ptr %incdec.ptr.i291.i.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 1, ptr %incdec.ptr.i291.i.i, align 1
  %136 = ptrtoint ptr %incdec.ptr1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 1, ptr %incdec.ptr1.i.i.i, align 1
  br label %if.end121.i.i

if.end121.i.i:                                    ; preds = %if.then120.i.i, %land.lhs.true116.i.i.if.end121.i.i_crit_edge, %if.end112.i.i.if.end121.i.i_crit_edge, %land.lhs.true95.i.i.if.end121.i.i_crit_edge
  %addr.i.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 2
  %init_addr.0.i.i.i = select i1 %initiator, ptr %addr.i.i.i, ptr %peer
  %rsp_addr.0.i.i.i = select i1 %initiator, ptr %peer, ptr %addr.i.i.i
  %call.i292.i.i = call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 20) #7
  %137 = ptrtoint ptr %call.i292.i.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 101, ptr %call.i292.i.i, align 1
  %ie_len.i.i.i = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %call.i292.i.i, i32 0, i32 1
  %138 = ptrtoint ptr %ie_len.i.i.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 18, ptr %ie_len.i.i.i, align 1
  %bssid.i.i.i = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %call.i292.i.i, i32 0, i32 2
  %bssid5.i.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 25
  %139 = call ptr @memcpy(ptr %bssid.i.i.i, ptr %bssid5.i.i.i, i32 6)
  %init_sta.i.i.i = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %call.i292.i.i, i32 0, i32 3
  %140 = call ptr @memcpy(ptr %init_sta.i.i.i, ptr %init_addr.0.i.i.i, i32 6)
  %resp_sta.i.i.i = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %call.i292.i.i, i32 0, i32 4
  %141 = call ptr @memcpy(ptr %resp_sta.i.i.i, ptr %rsp_addr.0.i.i.i, i32 6)
  br i1 %tobool5.not.i.i, label %if.end121.i.i.if.end129.i.i_crit_edge, label %if.then124.i.i

if.end121.i.i.if.end129.i.i_crit_edge:            ; preds = %if.end121.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end129.i.i

if.then124.i.i:                                   ; preds = %if.end121.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i293.i.i = call i32 @ieee80211_ie_split_ric(ptr noundef %extra_ies, i32 noundef %extra_ies_len, ptr noundef nonnull @ieee80211_tdls_add_setup_start_ies.before_vht_cap, i32 noundef 11, ptr noundef null, i32 noundef 0, i32 noundef %offset.1.i.i) #7
  %add.ptr126.i.i = getelementptr i8, ptr %extra_ies, i32 %offset.1.i.i
  %sub127.i.i = sub i32 %call.i293.i.i, %offset.1.i.i
  %call.i294.i.i = call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %sub127.i.i) #7
  %142 = call ptr @memcpy(ptr %call.i294.i.i, ptr %add.ptr126.i.i, i32 %sub127.i.i)
  br label %if.end129.i.i

if.end129.i.i:                                    ; preds = %if.then124.i.i, %if.end121.i.i.if.end129.i.i_crit_edge
  %offset.2.i.i = phi i32 [ %call.i293.i.i, %if.then124.i.i ], [ %offset.1.i.i, %if.end121.i.i.if.end129.i.i_crit_edge ]
  %vht_cap130.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %call.i.i70, i32 0, i32 6
  %143 = call ptr @memcpy(ptr %vht_cap.i.i, ptr %vht_cap130.i.i, i32 16)
  %144 = zext i8 %action_code to i64
  call void @__sanitizer_cov_trace_switch(i64 %144, ptr @__sancov_gen_cov_switch_values.56)
  switch i8 %action_code, label %if.end129.i.i.if.else150.i.i_crit_edge [
    i8 14, label %if.end129.i.i.land.lhs.true138.i.i_crit_edge
    i8 0, label %if.end129.i.i.land.lhs.true138.i.i_crit_edge89
  ]

if.end129.i.i.land.lhs.true138.i.i_crit_edge89:   ; preds = %if.end129.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true138.i.i

if.end129.i.i.land.lhs.true138.i.i_crit_edge:     ; preds = %if.end129.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true138.i.i

if.end129.i.i.if.else150.i.i_crit_edge:           ; preds = %if.end129.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else150.i.i

land.lhs.true138.i.i:                             ; preds = %if.end129.i.i.land.lhs.true138.i.i_crit_edge, %if.end129.i.i.land.lhs.true138.i.i_crit_edge89
  %145 = ptrtoint ptr %vht_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %vht_cap.i.i, align 4, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %tobool139.not.i.i = icmp eq i8 %146, 0
  br i1 %tobool139.not.i.i, label %land.lhs.true138.i.i.if.else150.i.i_crit_edge, label %if.then141.i.i

land.lhs.true138.i.i.if.else150.i.i_crit_edge:    ; preds = %land.lhs.true138.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else150.i.i

if.then141.i.i:                                   ; preds = %land.lhs.true138.i.i
  call void @ieee80211_apply_vhtcap_overrides(ptr noundef %sdata, ptr noundef nonnull %vht_cap.i.i) #7
  br i1 %cmp78.i.i, label %if.then145.i.i, label %if.then141.i.i.if.end146.i.i_crit_edge

if.then141.i.i.if.end146.i.i_crit_edge:           ; preds = %if.then141.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end146.i.i

if.then145.i.i:                                   ; preds = %if.then141.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i295.i.i = call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 4) #7
  %incdec.ptr.i296.i.i = getelementptr i8, ptr %call.i295.i.i, i32 1
  %147 = ptrtoint ptr %call.i295.i.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 -59, ptr %call.i295.i.i, align 1
  %incdec.ptr1.i297.i.i = getelementptr i8, ptr %call.i295.i.i, i32 2
  %148 = ptrtoint ptr %incdec.ptr.i296.i.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 2, ptr %incdec.ptr.i296.i.i, align 1
  %aid.i.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 13
  %149 = ptrtoint ptr %aid.i.i.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %aid.i.i.i, align 2
  %151 = call i16 @llvm.bswap.i16(i16 %150) #7
  %152 = ptrtoint ptr %incdec.ptr1.i297.i.i to i32
  call void @__asan_storeN_noabort(i32 %152, i32 2)
  store i16 %151, ptr %incdec.ptr1.i297.i.i, align 1
  br label %if.end146.i.i

if.end146.i.i:                                    ; preds = %if.then145.i.i, %if.then141.i.i.if.end146.i.i_crit_edge
  %call147.i.i = call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 14) #7
  %cap148.i.i = getelementptr inbounds %struct.ieee80211_sta_vht_cap, ptr %vht_cap.i.i, i32 0, i32 1
  %153 = ptrtoint ptr %cap148.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %cap148.i.i, align 4
  %call149.i.i = call ptr @ieee80211_ie_build_vht_cap(ptr noundef %call147.i.i, ptr noundef nonnull %vht_cap.i.i, i32 noundef %154) #7
  br label %if.end175.i.i

if.else150.i.i:                                   ; preds = %land.lhs.true138.i.i.if.else150.i.i_crit_edge, %if.end129.i.i.if.else150.i.i_crit_edge
  br i1 %cmp26.i.i, label %land.lhs.true154.i.i, label %if.else150.i.i.if.end175.i.i_crit_edge

if.else150.i.i.if.end175.i.i_crit_edge:           ; preds = %if.else150.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end175.i.i

land.lhs.true154.i.i:                             ; preds = %if.else150.i.i
  %155 = ptrtoint ptr %vht_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %vht_cap.i.i, align 4, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %tobool156.not.i.i = icmp eq i8 %156, 0
  br i1 %tobool156.not.i.i, label %land.lhs.true154.i.i.if.end175.i.i_crit_edge, label %land.lhs.true158.i.i

land.lhs.true154.i.i.if.end175.i.i_crit_edge:     ; preds = %land.lhs.true154.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end175.i.i

land.lhs.true158.i.i:                             ; preds = %land.lhs.true154.i.i
  %vht_cap160.i.i = getelementptr inbounds %struct.sta_info, ptr %sta.0.i.i, i32 0, i32 48, i32 5
  %157 = ptrtoint ptr %vht_cap160.i.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %vht_cap160.i.i, align 8, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %tobool162.not.i.i = icmp eq i8 %158, 0
  br i1 %tobool162.not.i.i, label %land.lhs.true158.i.i.if.end175.i.i_crit_edge, label %if.then164.i.i

land.lhs.true158.i.i.if.end175.i.i_crit_edge:     ; preds = %land.lhs.true158.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end175.i.i

if.then164.i.i:                                   ; preds = %land.lhs.true158.i.i
  %159 = call ptr @memcpy(ptr %vht_cap.i.i, ptr %vht_cap160.i.i, i32 16)
  %call.i298.i.i = call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 4) #7
  %incdec.ptr.i299.i.i = getelementptr i8, ptr %call.i298.i.i, i32 1
  %160 = ptrtoint ptr %call.i298.i.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 -59, ptr %call.i298.i.i, align 1
  %incdec.ptr1.i300.i.i = getelementptr i8, ptr %call.i298.i.i, i32 2
  %161 = ptrtoint ptr %incdec.ptr.i299.i.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 2, ptr %incdec.ptr.i299.i.i, align 1
  %aid.i301.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 13
  %162 = ptrtoint ptr %aid.i301.i.i to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %aid.i301.i.i, align 2
  %164 = call i16 @llvm.bswap.i16(i16 %163) #7
  %165 = ptrtoint ptr %incdec.ptr1.i300.i.i to i32
  call void @__asan_storeN_noabort(i32 %165, i32 2)
  store i16 %164, ptr %incdec.ptr1.i300.i.i, align 1
  %call167.i.i = call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 14) #7
  %cap168.i.i = getelementptr inbounds %struct.ieee80211_sta_vht_cap, ptr %vht_cap.i.i, i32 0, i32 1
  %166 = ptrtoint ptr %cap168.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %cap168.i.i, align 4
  %call169.i.i = call ptr @ieee80211_ie_build_vht_cap(ptr noundef %call167.i.i, ptr noundef nonnull %vht_cap.i.i, i32 noundef %167) #7
  %_flags.i.i.i = getelementptr inbounds %struct.sta_info, ptr %sta.0.i.i, i32 0, i32 24
  %168 = ptrtoint ptr %_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load volatile i32, ptr %_flags.i.i.i, align 4
  %170 = and i32 %169, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %tobool171.not.i.i = icmp eq i32 %170, 0
  br i1 %tobool171.not.i.i, label %if.then164.i.i.if.end175.i.i_crit_edge, label %if.then172.i.i

if.then164.i.i.if.end175.i.i_crit_edge:           ; preds = %if.then164.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end175.i.i

if.then172.i.i:                                   ; preds = %if.then164.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @ieee80211_tdls_chandef_vht_upgrade(ptr noundef %sdata, ptr noundef %sta.0.i.i) #7
  br label %if.end175.i.i

if.end175.i.i:                                    ; preds = %if.then172.i.i, %if.then164.i.i.if.end175.i.i_crit_edge, %land.lhs.true158.i.i.if.end175.i.i_crit_edge, %land.lhs.true154.i.i.if.end175.i.i_crit_edge, %if.else150.i.i.if.end175.i.i_crit_edge, %if.end146.i.i
  call void @mutex_unlock(ptr noundef %sta_mtx.i.i) #7
  br i1 %tobool5.not.i.i, label %if.end175.i.i.ieee80211_tdls_add_setup_start_ies.exit.i_crit_edge, label %if.then178.i.i

if.end175.i.i.ieee80211_tdls_add_setup_start_ies.exit.i_crit_edge: ; preds = %if.end175.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ieee80211_tdls_add_setup_start_ies.exit.i

if.then178.i.i:                                   ; preds = %if.end175.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr179.i.i = getelementptr i8, ptr %extra_ies, i32 %offset.2.i.i
  %sub180.i.i = sub i32 %extra_ies_len, %offset.2.i.i
  %call.i302.i.i = call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %sub180.i.i) #7
  %171 = call ptr @memcpy(ptr %call.i302.i.i, ptr %add.ptr179.i.i, i32 %sub180.i.i)
  br label %ieee80211_tdls_add_setup_start_ies.exit.i

ieee80211_tdls_add_setup_start_ies.exit.i:        ; preds = %if.then178.i.i, %if.end175.i.i.ieee80211_tdls_add_setup_start_ies.exit.i_crit_edge, %if.then72.i.i, %if.then.i.ieee80211_tdls_add_setup_start_ies.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vht_cap.i.i) #7
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %ht_cap.i.i) #7
  br label %cleanup

sw.bb3.i:                                         ; preds = %sw.bb
  %category21.i = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %call1.i, i32 0, i32 4
  %172 = ptrtoint ptr %category21.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 12, ptr %category21.i, align 1
  %action_code22.i = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %call1.i, i32 0, i32 5
  %173 = ptrtoint ptr %action_code22.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 2, ptr %action_code22.i, align 1
  %call23.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 3) #7
  %174 = tail call i16 @llvm.bswap.i16(i16 %status_code) #7
  %u24.i = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %call1.i, i32 0, i32 6
  %175 = ptrtoint ptr %u24.i to i32
  call void @__asan_storeN_noabort(i32 %175, i32 2)
  store i16 %174, ptr %u24.i, align 1
  %dialog_token27.i = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %call1.i, i32 0, i32 6, i32 1
  %176 = ptrtoint ptr %dialog_token27.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %dialog_token, ptr %dialog_token27.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %status_code)
  %cmp5.i = icmp eq i16 %status_code, 0
  br i1 %cmp5.i, label %if.then7.i, label %sw.bb3.i.cleanup_crit_edge

sw.bb3.i.cleanup_crit_edge:                       ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then7.i:                                       ; preds = %sw.bb3.i
  %177 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %local1, align 4
  %call.i59.i = tail call fastcc ptr @ieee80211_get_sband(ptr noundef %sdata) #7
  %tobool.not.i60.i = icmp eq ptr %call.i59.i, null
  br i1 %tobool.not.i60.i, label %if.then7.i.cleanup_crit_edge, label %if.end.i64.i

if.then7.i.cleanup_crit_edge:                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i64.i:                                     ; preds = %if.then7.i
  %sta_mtx.i61.i = getelementptr inbounds %struct.ieee80211_local, ptr %178, i32 0, i32 46
  tail call void @mutex_lock_nested(ptr noundef %sta_mtx.i61.i, i32 noundef 0) #7
  %call2.i62.i = tail call ptr @sta_info_get(ptr noundef %sdata, ptr noundef %peer) #7
  %bssid.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 25
  %call3.i.i = tail call ptr @sta_info_get(ptr noundef %sdata, ptr noundef %bssid.i.i) #7
  %tobool4.not.i.i = icmp eq ptr %call2.i62.i, null
  %tobool5.not.i63.i = icmp eq ptr %call3.i.i, null
  %spec.select.i.i = select i1 %tobool4.not.i.i, i1 true, i1 %tobool5.not.i63.i
  br i1 %spec.select.i.i, label %land.rhs.i65.i, label %if.end48.i.i

land.rhs.i65.i:                                   ; preds = %if.end.i64.i
  %.b169.i.i = load i1, ptr @ieee80211_tdls_add_setup_cfm_ies.__already_done, align 1
  br i1 %.b169.i.i, label %land.rhs.i65.i.if.then46.i.i_crit_edge, label %if.then15.i.i, !prof !163

land.rhs.i65.i.if.then46.i.i_crit_edge:           ; preds = %land.rhs.i65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then46.i.i

if.then15.i.i:                                    ; preds = %land.rhs.i65.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @ieee80211_tdls_add_setup_cfm_ies.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 562, i32 noundef 9, ptr noundef null) #7
  br label %if.then46.i.i

if.then46.i.i:                                    ; preds = %if.then15.i.i, %land.rhs.i65.i.if.then46.i.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %sta_mtx.i61.i) #7
  br label %cleanup

if.end48.i.i:                                     ; preds = %if.end.i64.i
  %tdls_chandef.i66.i = getelementptr inbounds %struct.sta_info, ptr %call2.i62.i, i32 0, i32 46
  %chandef.i67.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 32
  %179 = call ptr @memcpy(ptr %tdls_chandef.i66.i, ptr %chandef.i67.i, i32 28)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %extra_ies_len)
  %tobool49.not.i.i = icmp eq i32 %extra_ies_len, 0
  br i1 %tobool49.not.i.i, label %if.end48.i.i.if.end53.i.i_crit_edge, label %if.then50.i.i

if.end48.i.i.if.end53.i.i_crit_edge:              ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53.i.i

if.then50.i.i:                                    ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i68.i = tail call i32 @ieee80211_ie_split_ric(ptr noundef %extra_ies, i32 noundef %extra_ies_len, ptr noundef nonnull @ieee80211_tdls_add_setup_cfm_ies.before_qos, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0) #7
  %call.i171.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %call.i.i68.i) #7
  %180 = call ptr @memcpy(ptr %call.i171.i.i, ptr %extra_ies, i32 %call.i.i68.i)
  br label %if.end53.i.i

if.end53.i.i:                                     ; preds = %if.then50.i.i, %if.end48.i.i.if.end53.i.i_crit_edge
  %offset.0.i69.i = phi i32 [ %call.i.i68.i, %if.then50.i.i ], [ 0, %if.end48.i.i.if.end53.i.i_crit_edge ]
  %queues.i70.i = getelementptr inbounds %struct.ieee80211_hw, ptr %178, i32 0, i32 11
  %181 = ptrtoint ptr %queues.i70.i to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %queues.i70.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %182)
  %cmp.i71.i = icmp ugt i16 %182, 3
  br i1 %cmp.i71.i, label %land.lhs.true.i.i75, label %if.end53.i.i.if.end59.i.i_crit_edge

if.end53.i.i.if.end59.i.i_crit_edge:              ; preds = %if.end53.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59.i.i

land.lhs.true.i.i75:                              ; preds = %if.end53.i.i
  %wme.i.i = getelementptr inbounds %struct.sta_info, ptr %call2.i62.i, i32 0, i32 48, i32 10
  %183 = ptrtoint ptr %wme.i.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %wme.i.i, align 4, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %184)
  %tobool56.not.i.i = icmp eq i8 %184, 0
  br i1 %tobool56.not.i.i, label %land.lhs.true.i.i75.if.end59.i.i_crit_edge, label %if.then58.i.i

land.lhs.true.i.i75.if.end59.i.i_crit_edge:       ; preds = %land.lhs.true.i.i75
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59.i.i

if.then58.i.i:                                    ; preds = %land.lhs.true.i.i75
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 26) #7
  %185 = getelementptr inbounds i8, ptr %call.i.i.i.i, i32 9
  %186 = call ptr @memset(ptr %185, i32 0, i32 17)
  %187 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 -35, ptr %call.i.i.i.i, align 1
  %len.i.i.i = getelementptr inbounds %struct.ieee80211_wmm_param_ie, ptr %call.i.i.i.i, i32 0, i32 1
  %188 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 24, ptr %len.i.i.i, align 1
  %oui.i.i.i = getelementptr inbounds %struct.ieee80211_wmm_param_ie, ptr %call.i.i.i.i, i32 0, i32 2
  %189 = ptrtoint ptr %oui.i.i.i to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 0, ptr %oui.i.i.i, align 1
  %arrayidx2.i.i.i = getelementptr %struct.ieee80211_wmm_param_ie, ptr %call.i.i.i.i, i32 0, i32 2, i32 1
  %190 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 80, ptr %arrayidx2.i.i.i, align 1
  %arrayidx4.i.i.i = getelementptr %struct.ieee80211_wmm_param_ie, ptr %call.i.i.i.i, i32 0, i32 2, i32 2
  %191 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 -14, ptr %arrayidx4.i.i.i, align 1
  %oui_type.i.i.i = getelementptr inbounds %struct.ieee80211_wmm_param_ie, ptr %call.i.i.i.i, i32 0, i32 3
  %192 = ptrtoint ptr %oui_type.i.i.i to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 2, ptr %oui_type.i.i.i, align 1
  %oui_subtype.i.i.i = getelementptr inbounds %struct.ieee80211_wmm_param_ie, ptr %call.i.i.i.i, i32 0, i32 4
  %193 = ptrtoint ptr %oui_subtype.i.i.i to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 1, ptr %oui_subtype.i.i.i, align 1
  %version.i.i.i = getelementptr inbounds %struct.ieee80211_wmm_param_ie, ptr %call.i.i.i.i, i32 0, i32 5
  %194 = ptrtoint ptr %version.i.i.i to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 1, ptr %version.i.i.i, align 1
  %qos_info.i.i.i = getelementptr inbounds %struct.ieee80211_wmm_param_ie, ptr %call.i.i.i.i, i32 0, i32 6
  %195 = ptrtoint ptr %qos_info.i.i.i to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 0, ptr %qos_info.i.i.i, align 1
  %arrayidx6.i.i.i = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 26, i32 2
  %aifs.i.i.i = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 26, i32 2, i32 3
  %196 = ptrtoint ptr %aifs.i.i.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %aifs.i.i.i, align 2
  %acm.i.i.i = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 26, i32 2, i32 4
  %198 = ptrtoint ptr %acm.i.i.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %acm.i.i.i, align 1, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %199)
  %tobool.not.i.i.i = icmp eq i8 %199, 0
  %conv.i.i.i.i = and i8 %197, 15
  %200 = or i8 %conv.i.i.i.i, 16
  %spec.select.i.i.i.i = select i1 %tobool.not.i.i.i, i8 %conv.i.i.i.i, i8 %200
  %arrayidx8.i.i.i = getelementptr %struct.ieee80211_wmm_param_ie, ptr %call.i.i.i.i, i32 0, i32 8, i32 0
  %201 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 %spec.select.i.i.i.i, ptr %arrayidx8.i.i.i, align 1
  %cw_max.i.i.i = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 26, i32 2, i32 2
  %202 = ptrtoint ptr %cw_max.i.i.i to i32
  call void @__asan_load2_noabort(i32 %202)
  %203 = load i16, ptr %cw_max.i.i.i, align 2
  %cw_min.i.i.i = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 26, i32 2, i32 1
  %204 = ptrtoint ptr %cw_min.i.i.i to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %cw_min.i.i.i, align 2
  %conv.i35.i.i.i = zext i16 %205 to i32
  %add.i.i.i.i = add nuw nsw i32 %conv.i35.i.i.i, 1
  %206 = tail call i32 @llvm.ctlz.i32(i32 %add.i.i.i.i, i1 true) #7, !range !174
  %conv13.i.i.i.i = zext i16 %203 to i32
  %add14.i.i.i.i = add nuw nsw i32 %conv13.i.i.i.i, 1
  %207 = tail call i32 @llvm.ctlz.i32(i32 %add14.i.i.i.i, i1 true) #7, !range !174
  %sub.i.i.i.i.i = and i32 %206, 15
  %sub.i44.i.i.i.i = shl nuw nsw i32 %207, 4
  %208 = or i32 %sub.i.i.i.i.i, %sub.i44.i.i.i.i
  %209 = trunc i32 %208 to i8
  %conv37.i.i.i.i = xor i8 %209, -1
  %cw.i.i.i = getelementptr %struct.ieee80211_wmm_param_ie, ptr %call.i.i.i.i, i32 0, i32 8, i32 0, i32 1
  %210 = ptrtoint ptr %cw.i.i.i to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 %conv37.i.i.i.i, ptr %cw.i.i.i, align 1
  %211 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %arrayidx6.i.i.i, align 2
  %213 = tail call i16 @llvm.bswap.i16(i16 %212) #7
  %txop_limit.i.i.i = getelementptr %struct.ieee80211_wmm_param_ie, ptr %call.i.i.i.i, i32 0, i32 8, i32 0, i32 2
  %214 = ptrtoint ptr %txop_limit.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %214, i32 2)
  store i16 %213, ptr %txop_limit.i.i.i, align 1
  %arrayidx6.1.i.i.i = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 26, i32 3
  %aifs.1.i.i.i = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 26, i32 3, i32 3
  %215 = ptrtoint ptr %aifs.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %aifs.1.i.i.i, align 2
  %acm.1.i.i.i = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 26, i32 3, i32 4
  %217 = ptrtoint ptr %acm.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %acm.1.i.i.i, align 1, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %218)
  %tobool.not.1.i.i.i = icmp eq i8 %218, 0
  %conv.i.1.i.i.i = and i8 %216, 15
  %219 = or i8 %conv.i.1.i.i.i, 16
  %spec.select.i.1.i.i.i = select i1 %tobool.not.1.i.i.i, i8 %conv.i.1.i.i.i, i8 %219
  %conv6.i.1.i.i.i = or i8 %spec.select.i.1.i.i.i, 32
  %arrayidx8.1.i.i.i = getelementptr %struct.ieee80211_wmm_param_ie, ptr %call.i.i.i.i, i32 0, i32 8, i32 1
  %220 = ptrtoint ptr %arrayidx8.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 %conv6.i.1.i.i.i, ptr %arrayidx8.1.i.i.i, align 1
  %cw_max.1.i.i.i = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 26, i32 3, i32 2
  %221 = ptrtoint ptr %cw_max.1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %221)
  %222 = load i16, ptr %cw_max.1.i.i.i, align 2
  %cw_min.1.i.i.i = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 26, i32 3, i32 1
  %223 = ptrtoint ptr %cw_min.1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %223)
  %224 = load i16, ptr %cw_min.1.i.i.i, align 2
  %conv.i35.1.i.i.i = zext i16 %224 to i32
  %add.i.1.i.i.i = add nuw nsw i32 %conv.i35.1.i.i.i, 1
  %225 = tail call i32 @llvm.ctlz.i32(i32 %add.i.1.i.i.i, i1 true) #7, !range !174
  %conv13.i.1.i.i.i = zext i16 %222 to i32
  %add14.i.1.i.i.i = add nuw nsw i32 %conv13.i.1.i.i.i, 1
  %226 = tail call i32 @llvm.ctlz.i32(i32 %add14.i.1.i.i.i, i1 true) #7, !range !174
  %sub.i.i.1.i.i.i = and i32 %225, 15
  %sub.i44.i.1.i.i.i = shl nuw nsw i32 %226, 4
  %227 = or i32 %sub.i.i.1.i.i.i, %sub.i44.i.1.i.i.i
  %228 = trunc i32 %227 to i8
  %conv37.i.1.i.i.i = xor i8 %228, -1
  %cw.1.i.i.i = getelementptr %struct.ieee80211_wmm_param_ie, ptr %call.i.i.i.i, i32 0, i32 8, i32 1, i32 1
  %229 = ptrtoint ptr %cw.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 %conv37.i.1.i.i.i, ptr %cw.1.i.i.i, align 1
  %230 = ptrtoint ptr %arrayidx6.1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %230)
  %231 = load i16, ptr %arrayidx6.1.i.i.i, align 2
  %232 = tail call i16 @llvm.bswap.i16(i16 %231) #7
  %txop_limit.1.i.i.i = getelementptr %struct.ieee80211_wmm_param_ie, ptr %call.i.i.i.i, i32 0, i32 8, i32 1, i32 2
  %233 = ptrtoint ptr %txop_limit.1.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %233, i32 2)
  store i16 %232, ptr %txop_limit.1.i.i.i, align 1
  %arrayidx6.2.i.i.i = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 26, i32 1
  %aifs.2.i.i.i = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 26, i32 1, i32 3
  %234 = ptrtoint ptr %aifs.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %aifs.2.i.i.i, align 2
  %acm.2.i.i.i = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 26, i32 1, i32 4
  %236 = ptrtoint ptr %acm.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %acm.2.i.i.i, align 1, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %237)
  %tobool.not.2.i.i.i = icmp eq i8 %237, 0
  %conv.i.2.i.i.i = and i8 %235, 15
  %238 = or i8 %conv.i.2.i.i.i, 16
  %spec.select.i.2.i.i.i = select i1 %tobool.not.2.i.i.i, i8 %conv.i.2.i.i.i, i8 %238
  %conv6.i.2.i.i.i = or i8 %spec.select.i.2.i.i.i, 64
  %arrayidx8.2.i.i.i = getelementptr %struct.ieee80211_wmm_param_ie, ptr %call.i.i.i.i, i32 0, i32 8, i32 2
  %239 = ptrtoint ptr %arrayidx8.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 %conv6.i.2.i.i.i, ptr %arrayidx8.2.i.i.i, align 1
  %cw_max.2.i.i.i = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 26, i32 1, i32 2
  %240 = ptrtoint ptr %cw_max.2.i.i.i to i32
  call void @__asan_load2_noabort(i32 %240)
  %241 = load i16, ptr %cw_max.2.i.i.i, align 2
  %cw_min.2.i.i.i = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 26, i32 1, i32 1
  %242 = ptrtoint ptr %cw_min.2.i.i.i to i32
  call void @__asan_load2_noabort(i32 %242)
  %243 = load i16, ptr %cw_min.2.i.i.i, align 2
  %conv.i35.2.i.i.i = zext i16 %243 to i32
  %add.i.2.i.i.i = add nuw nsw i32 %conv.i35.2.i.i.i, 1
  %244 = tail call i32 @llvm.ctlz.i32(i32 %add.i.2.i.i.i, i1 true) #7, !range !174
  %conv13.i.2.i.i.i = zext i16 %241 to i32
  %add14.i.2.i.i.i = add nuw nsw i32 %conv13.i.2.i.i.i, 1
  %245 = tail call i32 @llvm.ctlz.i32(i32 %add14.i.2.i.i.i, i1 true) #7, !range !174
  %sub.i.i.2.i.i.i = and i32 %244, 15
  %sub.i44.i.2.i.i.i = shl nuw nsw i32 %245, 4
  %246 = or i32 %sub.i.i.2.i.i.i, %sub.i44.i.2.i.i.i
  %247 = trunc i32 %246 to i8
  %conv37.i.2.i.i.i = xor i8 %247, -1
  %cw.2.i.i.i = getelementptr %struct.ieee80211_wmm_param_ie, ptr %call.i.i.i.i, i32 0, i32 8, i32 2, i32 1
  %248 = ptrtoint ptr %cw.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 %conv37.i.2.i.i.i, ptr %cw.2.i.i.i, align 1
  %249 = ptrtoint ptr %arrayidx6.2.i.i.i to i32
  call void @__asan_load2_noabort(i32 %249)
  %250 = load i16, ptr %arrayidx6.2.i.i.i, align 2
  %251 = tail call i16 @llvm.bswap.i16(i16 %250) #7
  %txop_limit.2.i.i.i = getelementptr %struct.ieee80211_wmm_param_ie, ptr %call.i.i.i.i, i32 0, i32 8, i32 2, i32 2
  %252 = ptrtoint ptr %txop_limit.2.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %252, i32 2)
  store i16 %251, ptr %txop_limit.2.i.i.i, align 1
  %aifs.3.i.i.i = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 26, i32 0, i32 3
  %253 = ptrtoint ptr %aifs.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %aifs.3.i.i.i, align 2
  %acm.3.i.i.i = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 26, i32 0, i32 4
  %255 = ptrtoint ptr %acm.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %acm.3.i.i.i, align 1, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %256)
  %tobool.not.3.i.i.i = icmp eq i8 %256, 0
  %conv.i.3.i.i.i = and i8 %254, 15
  %257 = or i8 %conv.i.3.i.i.i, 16
  %spec.select.i.3.i.i.i = select i1 %tobool.not.3.i.i.i, i8 %conv.i.3.i.i.i, i8 %257
  %conv6.i.3.i.i.i = or i8 %spec.select.i.3.i.i.i, 96
  %arrayidx8.3.i.i.i = getelementptr %struct.ieee80211_wmm_param_ie, ptr %call.i.i.i.i, i32 0, i32 8, i32 3
  %258 = ptrtoint ptr %arrayidx8.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 %conv6.i.3.i.i.i, ptr %arrayidx8.3.i.i.i, align 1
  %cw_max.3.i.i.i = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 26, i32 0, i32 2
  %259 = ptrtoint ptr %cw_max.3.i.i.i to i32
  call void @__asan_load2_noabort(i32 %259)
  %260 = load i16, ptr %cw_max.3.i.i.i, align 2
  %cw_min.3.i.i.i = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 26, i32 0, i32 1
  %261 = ptrtoint ptr %cw_min.3.i.i.i to i32
  call void @__asan_load2_noabort(i32 %261)
  %262 = load i16, ptr %cw_min.3.i.i.i, align 2
  %conv.i35.3.i.i.i = zext i16 %262 to i32
  %add.i.3.i.i.i = add nuw nsw i32 %conv.i35.3.i.i.i, 1
  %263 = tail call i32 @llvm.ctlz.i32(i32 %add.i.3.i.i.i, i1 true) #7, !range !174
  %conv13.i.3.i.i.i = zext i16 %260 to i32
  %add14.i.3.i.i.i = add nuw nsw i32 %conv13.i.3.i.i.i, 1
  %264 = tail call i32 @llvm.ctlz.i32(i32 %add14.i.3.i.i.i, i1 true) #7, !range !174
  %arrayidx6.3.i.i.i = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 26, i32 0
  %sub.i.i.3.i.i.i = and i32 %263, 15
  %sub.i44.i.3.i.i.i = shl nuw nsw i32 %264, 4
  %265 = or i32 %sub.i.i.3.i.i.i, %sub.i44.i.3.i.i.i
  %266 = trunc i32 %265 to i8
  %conv37.i.3.i.i.i = xor i8 %266, -1
  %cw.3.i.i.i = getelementptr %struct.ieee80211_wmm_param_ie, ptr %call.i.i.i.i, i32 0, i32 8, i32 3, i32 1
  %267 = ptrtoint ptr %cw.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 %conv37.i.3.i.i.i, ptr %cw.3.i.i.i, align 1
  %268 = ptrtoint ptr %arrayidx6.3.i.i.i to i32
  call void @__asan_load2_noabort(i32 %268)
  %269 = load i16, ptr %arrayidx6.3.i.i.i, align 2
  %270 = tail call i16 @llvm.bswap.i16(i16 %269) #7
  %txop_limit.3.i.i.i = getelementptr %struct.ieee80211_wmm_param_ie, ptr %call.i.i.i.i, i32 0, i32 8, i32 3, i32 2
  %271 = ptrtoint ptr %txop_limit.3.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %271, i32 2)
  store i16 %270, ptr %txop_limit.3.i.i.i, align 1
  br label %if.end59.i.i

if.end59.i.i:                                     ; preds = %if.then58.i.i, %land.lhs.true.i.i75.if.end59.i.i_crit_edge, %if.end53.i.i.if.end59.i.i_crit_edge
  br i1 %tobool49.not.i.i, label %if.end59.i.i.if.end66.i.i_crit_edge, label %if.then61.i.i

if.end59.i.i.if.end66.i.i_crit_edge:              ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66.i.i

if.then61.i.i:                                    ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i172.i.i = tail call i32 @ieee80211_ie_split_ric(ptr noundef %extra_ies, i32 noundef %extra_ies_len, ptr noundef nonnull @ieee80211_tdls_add_setup_cfm_ies.before_ht_op, i32 noundef 4, ptr noundef null, i32 noundef 0, i32 noundef %offset.0.i69.i) #7
  %add.ptr63.i.i = getelementptr i8, ptr %extra_ies, i32 %offset.0.i69.i
  %sub64.i.i = sub i32 %call.i172.i.i, %offset.0.i69.i
  %call.i173.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %sub64.i.i) #7
  %272 = call ptr @memcpy(ptr %call.i173.i.i, ptr %add.ptr63.i.i, i32 %sub64.i.i)
  br label %if.end66.i.i

if.end66.i.i:                                     ; preds = %if.then61.i.i, %if.end59.i.i.if.end66.i.i_crit_edge
  %offset.1.i72.i = phi i32 [ %call.i172.i.i, %if.then61.i.i ], [ %offset.0.i69.i, %if.end59.i.i.if.end66.i.i_crit_edge ]
  %ht_supported.i.i = getelementptr inbounds %struct.sta_info, ptr %call3.i.i, i32 0, i32 48, i32 3, i32 1
  %273 = ptrtoint ptr %ht_supported.i.i to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %ht_supported.i.i, align 2, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %274)
  %tobool68.not.i.i = icmp eq i8 %274, 0
  br i1 %tobool68.not.i.i, label %land.lhs.true69.i.i, label %if.end66.i.i.if.end83.i.i_crit_edge

if.end66.i.i.if.end83.i.i_crit_edge:              ; preds = %if.end66.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83.i.i

land.lhs.true69.i.i:                              ; preds = %if.end66.i.i
  %ht_supported72.i.i = getelementptr inbounds %struct.sta_info, ptr %call2.i62.i, i32 0, i32 48, i32 3, i32 1
  %275 = ptrtoint ptr %ht_supported72.i.i to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %ht_supported72.i.i, align 2, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %276)
  %tobool73.not.i.i = icmp eq i8 %276, 0
  br i1 %tobool73.not.i.i, label %land.lhs.true69.i.i.if.end83.i.i_crit_edge, label %if.then75.i.i

land.lhs.true69.i.i.if.end83.i.i_crit_edge:       ; preds = %land.lhs.true69.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83.i.i

if.then75.i.i:                                    ; preds = %land.lhs.true69.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %ht_cap71.i.i = getelementptr inbounds %struct.sta_info, ptr %call2.i62.i, i32 0, i32 48, i32 3
  %call76.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 24) #7
  %call82.i.i = tail call ptr @ieee80211_ie_build_ht_oper(ptr noundef %call76.i.i, ptr noundef %ht_cap71.i.i, ptr noundef %chandef.i67.i, i16 noundef zeroext 23, i1 noundef zeroext true) #7
  br label %if.end83.i.i

if.end83.i.i:                                     ; preds = %if.then75.i.i, %land.lhs.true69.i.i.if.end83.i.i_crit_edge, %if.end66.i.i.if.end83.i.i_crit_edge
  %addr.i.i73.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 2
  %init_addr.0.i.i74.i = select i1 %initiator, ptr %addr.i.i73.i, ptr %peer
  %rsp_addr.0.i.i75.i = select i1 %initiator, ptr %peer, ptr %addr.i.i73.i
  %call.i174.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 20) #7
  %277 = ptrtoint ptr %call.i174.i.i to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 101, ptr %call.i174.i.i, align 1
  %ie_len.i.i76.i = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %call.i174.i.i, i32 0, i32 1
  %278 = ptrtoint ptr %ie_len.i.i76.i to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 18, ptr %ie_len.i.i76.i, align 1
  %bssid.i.i77.i = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %call.i174.i.i, i32 0, i32 2
  %279 = call ptr @memcpy(ptr %bssid.i.i77.i, ptr %bssid.i.i, i32 6)
  %init_sta.i.i78.i = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %call.i174.i.i, i32 0, i32 3
  %280 = call ptr @memcpy(ptr %init_sta.i.i78.i, ptr %init_addr.0.i.i74.i, i32 6)
  %resp_sta.i.i79.i = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %call.i174.i.i, i32 0, i32 4
  %281 = call ptr @memcpy(ptr %resp_sta.i.i79.i, ptr %rsp_addr.0.i.i75.i, i32 6)
  %band.i80.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %call.i59.i, i32 0, i32 2
  %282 = ptrtoint ptr %band.i80.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %band.i80.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %283)
  %cmp85.not.i.i = icmp eq i32 %283, 0
  br i1 %cmp85.not.i.i, label %if.end83.i.i.if.end101.i.i_crit_edge, label %land.lhs.true87.i.i

if.end83.i.i.if.end101.i.i_crit_edge:             ; preds = %if.end83.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101.i.i

land.lhs.true87.i.i:                              ; preds = %if.end83.i.i
  %vht_cap.i81.i = getelementptr inbounds %struct.sta_info, ptr %call2.i62.i, i32 0, i32 48, i32 5
  %284 = ptrtoint ptr %vht_cap.i81.i to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %vht_cap.i81.i, align 8, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %285)
  %tobool89.not.i.i = icmp eq i8 %285, 0
  br i1 %tobool89.not.i.i, label %land.lhs.true87.i.i.if.end101.i.i_crit_edge, label %if.then91.i.i

land.lhs.true87.i.i.if.end101.i.i_crit_edge:      ; preds = %land.lhs.true87.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101.i.i

if.then91.i.i:                                    ; preds = %land.lhs.true87.i.i
  %_flags.i.i82.i = getelementptr inbounds %struct.sta_info, ptr %call2.i62.i, i32 0, i32 24
  %286 = ptrtoint ptr %_flags.i.i82.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load volatile i32, ptr %_flags.i.i82.i, align 4
  %288 = and i32 %287, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %288)
  %tobool93.not.i.i = icmp eq i32 %288, 0
  br i1 %tobool93.not.i.i, label %if.then91.i.i.if.end95.i.i_crit_edge, label %if.then94.i.i

if.then91.i.i.if.end95.i.i_crit_edge:             ; preds = %if.then91.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95.i.i

if.then94.i.i:                                    ; preds = %if.then91.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @ieee80211_tdls_chandef_vht_upgrade(ptr noundef %sdata, ptr noundef nonnull %call2.i62.i) #7
  br label %if.end95.i.i

if.end95.i.i:                                     ; preds = %if.then94.i.i, %if.then91.i.i.if.end95.i.i_crit_edge
  %call96.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 7) #7
  %call100.i.i = tail call ptr @ieee80211_ie_build_vht_oper(ptr noundef %call96.i.i, ptr noundef %vht_cap.i81.i, ptr noundef %tdls_chandef.i66.i) #7
  br label %if.end101.i.i

if.end101.i.i:                                    ; preds = %if.end95.i.i, %land.lhs.true87.i.i.if.end101.i.i_crit_edge, %if.end83.i.i.if.end101.i.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %sta_mtx.i61.i) #7
  br i1 %tobool49.not.i.i, label %if.end101.i.i.cleanup_crit_edge, label %if.then104.i.i

if.end101.i.i.cleanup_crit_edge:                  ; preds = %if.end101.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then104.i.i:                                   ; preds = %if.end101.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr105.i.i = getelementptr i8, ptr %extra_ies, i32 %offset.1.i72.i
  %sub106.i.i = sub i32 %extra_ies_len, %offset.1.i72.i
  %call.i175.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %sub106.i.i) #7
  %289 = call ptr @memcpy(ptr %call.i175.i.i, ptr %add.ptr105.i.i, i32 %sub106.i.i)
  br label %cleanup

sw.bb10.i:                                        ; preds = %sw.bb33.i, %sw.bb28.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %extra_ies_len)
  %tobool11.not.i = icmp eq i32 %extra_ies_len, 0
  br i1 %tobool11.not.i, label %sw.bb10.i.if.end13.i_crit_edge, label %if.then12.i

sw.bb10.i.if.end13.i_crit_edge:                   ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

if.then12.i:                                      ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i83.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %extra_ies_len) #7
  %290 = call ptr @memcpy(ptr %call.i83.i, ptr %extra_ies, i32 %extra_ies_len)
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then12.i, %sw.bb10.i.if.end13.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %status_code)
  %cmp15.i = icmp eq i16 %status_code, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %action_code)
  %cmp18.i = icmp eq i8 %action_code, 3
  %or.cond.i = or i1 %cmp18.i, %cmp15.i
  br i1 %or.cond.i, label %if.then20.i, label %if.end13.i.cleanup_crit_edge

if.end13.i.cleanup_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then20.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  %addr.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 2
  %init_addr.0.i.i = select i1 %initiator, ptr %addr.i.i, ptr %peer
  %rsp_addr.0.i.i = select i1 %initiator, ptr %peer, ptr %addr.i.i
  %call.i84.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 20) #7
  %291 = ptrtoint ptr %call.i84.i to i32
  call void @__asan_store1_noabort(i32 %291)
  store i8 101, ptr %call.i84.i, align 1
  %ie_len.i.i = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %call.i84.i, i32 0, i32 1
  %292 = ptrtoint ptr %ie_len.i.i to i32
  call void @__asan_store1_noabort(i32 %292)
  store i8 18, ptr %ie_len.i.i, align 1
  %bssid.i85.i = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %call.i84.i, i32 0, i32 2
  %bssid5.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 25
  %293 = call ptr @memcpy(ptr %bssid.i85.i, ptr %bssid5.i.i, i32 6)
  %init_sta.i.i = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %call.i84.i, i32 0, i32 3
  %294 = call ptr @memcpy(ptr %init_sta.i.i, ptr %init_addr.0.i.i, i32 6)
  %resp_sta.i.i = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %call.i84.i, i32 0, i32 4
  %295 = call ptr @memcpy(ptr %resp_sta.i.i, ptr %rsp_addr.0.i.i, i32 6)
  br label %cleanup

sw.bb23.i:                                        ; preds = %sw.bb
  %category40.i = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %call1.i, i32 0, i32 4
  %296 = ptrtoint ptr %category40.i to i32
  call void @__asan_store1_noabort(i32 %296)
  store i8 12, ptr %category40.i, align 1
  %action_code41.i = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %call1.i, i32 0, i32 5
  %297 = ptrtoint ptr %action_code41.i to i32
  call void @__asan_store1_noabort(i32 %297)
  store i8 5, ptr %action_code41.i, align 1
  %call42.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 2) #7
  %tobool.not.i86.i = icmp eq ptr %chandef, null
  br i1 %tobool.not.i86.i, label %land.rhs.i87.i, label %if.end40.i.i

land.rhs.i87.i:                                   ; preds = %sw.bb23.i
  %.b75.i.i = load i1, ptr @ieee80211_tdls_add_chan_switch_req_ies.__already_done, align 1
  br i1 %.b75.i.i, label %land.rhs.i87.i.cleanup_crit_edge, label %if.then.i.i, !prof !163

land.rhs.i87.i.cleanup_crit_edge:                 ; preds = %land.rhs.i87.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i.i:                                      ; preds = %land.rhs.i87.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @ieee80211_tdls_add_chan_switch_req_ies.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 653, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end40.i.i:                                     ; preds = %sw.bb23.i
  %298 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %data.i, align 4
  %300 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %chandef, align 4
  %center_freq.i.i = getelementptr inbounds %struct.ieee80211_channel, ptr %301, i32 0, i32 1
  %302 = ptrtoint ptr %center_freq.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %center_freq.i.i, align 4
  %mul.i.i88.i = mul i32 %303, 1000
  %call.i.i89.i = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i.i88.i) #7
  %conv.i.i = trunc i32 %call.i.i89.i to i8
  %u.i.i = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %299, i32 0, i32 6
  %304 = ptrtoint ptr %u.i.i to i32
  call void @__asan_store1_noabort(i32 %304)
  store i8 %conv.i.i, ptr %u.i.i, align 1
  %oper_class42.i.i = getelementptr inbounds %struct.anon.201, ptr %u.i.i, i32 0, i32 1
  %305 = ptrtoint ptr %oper_class42.i.i to i32
  call void @__asan_store1_noabort(i32 %305)
  store i8 %oper_class, ptr %oper_class42.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %extra_ies_len)
  %tobool43.not.i.i = icmp eq i32 %extra_ies_len, 0
  br i1 %tobool43.not.i.i, label %if.end40.i.i.if.end47.i.i_crit_edge, label %if.then44.i.i

if.end40.i.i.if.end47.i.i_crit_edge:              ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47.i.i

if.then44.i.i:                                    ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i77.i.i = tail call i32 @ieee80211_ie_split_ric(ptr noundef %extra_ies, i32 noundef %extra_ies_len, ptr noundef nonnull @ieee80211_tdls_add_chan_switch_req_ies.before_lnkie, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0) #7
  %call.i78.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %call.i77.i.i) #7
  %306 = call ptr @memcpy(ptr %call.i78.i.i, ptr %extra_ies, i32 %call.i77.i.i)
  br label %if.end47.i.i

if.end47.i.i:                                     ; preds = %if.then44.i.i, %if.end40.i.i.if.end47.i.i_crit_edge
  %offset.0.i90.i = phi i32 [ %call.i77.i.i, %if.then44.i.i ], [ 0, %if.end40.i.i.if.end47.i.i_crit_edge ]
  %addr.i.i91.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 2
  %init_addr.0.i.i92.i = select i1 %initiator, ptr %addr.i.i91.i, ptr %peer
  %rsp_addr.0.i.i93.i = select i1 %initiator, ptr %peer, ptr %addr.i.i91.i
  %call.i79.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 20) #7
  %307 = ptrtoint ptr %call.i79.i.i to i32
  call void @__asan_store1_noabort(i32 %307)
  store i8 101, ptr %call.i79.i.i, align 1
  %ie_len.i.i94.i = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %call.i79.i.i, i32 0, i32 1
  %308 = ptrtoint ptr %ie_len.i.i94.i to i32
  call void @__asan_store1_noabort(i32 %308)
  store i8 18, ptr %ie_len.i.i94.i, align 1
  %bssid.i.i95.i = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %call.i79.i.i, i32 0, i32 2
  %bssid5.i.i96.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 25
  %309 = call ptr @memcpy(ptr %bssid.i.i95.i, ptr %bssid5.i.i96.i, i32 6)
  %init_sta.i.i97.i = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %call.i79.i.i, i32 0, i32 3
  %310 = call ptr @memcpy(ptr %init_sta.i.i97.i, ptr %init_addr.0.i.i92.i, i32 6)
  %resp_sta.i.i98.i = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %call.i79.i.i, i32 0, i32 4
  %311 = call ptr @memcpy(ptr %resp_sta.i.i98.i, ptr %rsp_addr.0.i.i93.i, i32 6)
  br i1 %tobool43.not.i.i, label %if.end47.i.i.cleanup_crit_edge, label %if.then50.i99.i

if.end47.i.i.cleanup_crit_edge:                   ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then50.i99.i:                                  ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr51.i.i = getelementptr i8, ptr %extra_ies, i32 %offset.0.i90.i
  %sub52.i.i = sub i32 %extra_ies_len, %offset.0.i90.i
  %call.i80.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %sub52.i.i) #7
  %312 = call ptr @memcpy(ptr %call.i80.i.i, ptr %add.ptr51.i.i, i32 %sub52.i.i)
  br label %cleanup

sw.bb25.i:                                        ; preds = %sw.bb
  %category44.i = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %call1.i, i32 0, i32 4
  %313 = ptrtoint ptr %category44.i to i32
  call void @__asan_store1_noabort(i32 %313)
  store i8 12, ptr %category44.i, align 1
  %action_code45.i = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %call1.i, i32 0, i32 5
  %314 = ptrtoint ptr %action_code45.i to i32
  call void @__asan_store1_noabort(i32 %314)
  store i8 6, ptr %action_code45.i, align 1
  %call46.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 2) #7
  %315 = tail call i16 @llvm.bswap.i16(i16 %status_code) #7
  %u47.i = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %call1.i, i32 0, i32 6
  %316 = ptrtoint ptr %u47.i to i32
  call void @__asan_storeN_noabort(i32 %316, i32 2)
  store i16 %315, ptr %u47.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %status_code)
  %cmp.i100.i = icmp eq i16 %status_code, 0
  br i1 %cmp.i100.i, label %if.then.i110.i, label %sw.bb25.i.if.end.i111.i_crit_edge

sw.bb25.i.if.end.i111.i_crit_edge:                ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i111.i

if.then.i110.i:                                   ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #9
  %addr.i.i101.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 2
  %init_addr.0.i.i102.i = select i1 %initiator, ptr %addr.i.i101.i, ptr %peer
  %rsp_addr.0.i.i103.i = select i1 %initiator, ptr %peer, ptr %addr.i.i101.i
  %call.i.i104.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 20) #7
  %317 = ptrtoint ptr %call.i.i104.i to i32
  call void @__asan_store1_noabort(i32 %317)
  store i8 101, ptr %call.i.i104.i, align 1
  %ie_len.i.i105.i = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %call.i.i104.i, i32 0, i32 1
  %318 = ptrtoint ptr %ie_len.i.i105.i to i32
  call void @__asan_store1_noabort(i32 %318)
  store i8 18, ptr %ie_len.i.i105.i, align 1
  %bssid.i.i106.i = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %call.i.i104.i, i32 0, i32 2
  %bssid5.i.i107.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 25
  %319 = call ptr @memcpy(ptr %bssid.i.i106.i, ptr %bssid5.i.i107.i, i32 6)
  %init_sta.i.i108.i = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %call.i.i104.i, i32 0, i32 3
  %320 = call ptr @memcpy(ptr %init_sta.i.i108.i, ptr %init_addr.0.i.i102.i, i32 6)
  %resp_sta.i.i109.i = getelementptr inbounds %struct.ieee80211_tdls_lnkie, ptr %call.i.i104.i, i32 0, i32 4
  %321 = call ptr @memcpy(ptr %resp_sta.i.i109.i, ptr %rsp_addr.0.i.i103.i, i32 6)
  br label %if.end.i111.i

if.end.i111.i:                                    ; preds = %if.then.i110.i, %sw.bb25.i.if.end.i111.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %extra_ies_len)
  %tobool2.not.i.i = icmp eq i32 %extra_ies_len, 0
  br i1 %tobool2.not.i.i, label %if.end.i111.i.cleanup_crit_edge, label %if.then3.i.i

if.end.i111.i.cleanup_crit_edge:                  ; preds = %if.end.i111.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3.i.i:                                     ; preds = %if.end.i111.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i7.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %extra_ies_len) #7
  %322 = call ptr @memcpy(ptr %call.i7.i.i, ptr %extra_ies, i32 %extra_ies_len)
  br label %cleanup

fail:                                             ; preds = %sw.bb.fail_crit_edge, %if.end.fail_crit_edge
  tail call void @consume_skb(ptr noundef nonnull %call.i) #7
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.then3.i.i, %if.end.i111.i.cleanup_crit_edge, %if.then50.i99.i, %if.end47.i.i.cleanup_crit_edge, %if.then.i.i, %land.rhs.i87.i.cleanup_crit_edge, %if.then20.i, %if.end13.i.cleanup_crit_edge, %if.then104.i.i, %if.end101.i.i.cleanup_crit_edge, %if.then46.i.i, %if.then7.i.cleanup_crit_edge, %sw.bb3.i.cleanup_crit_edge, %ieee80211_tdls_add_setup_start_ies.exit.i, %sw.bb.i69.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %fail ], [ null, %entry.cleanup_crit_edge ], [ %call.i, %sw.bb.i69.cleanup_crit_edge ], [ %call.i, %ieee80211_tdls_add_setup_start_ies.exit.i ], [ %call.i, %sw.bb3.i.cleanup_crit_edge ], [ %call.i, %if.then7.i.cleanup_crit_edge ], [ %call.i, %if.then46.i.i ], [ %call.i, %if.end101.i.i.cleanup_crit_edge ], [ %call.i, %if.then104.i.i ], [ %call.i, %if.end13.i.cleanup_crit_edge ], [ %call.i, %if.then20.i ], [ %call.i, %land.rhs.i87.i.cleanup_crit_edge ], [ %call.i, %if.then.i.i ], [ %call.i, %if.end47.i.i.cleanup_crit_edge ], [ %call.i, %if.then50.i99.i ], [ %call.i, %if.end.i111.i.cleanup_crit_edge ], [ %call.i, %if.then3.i.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ieee80211_select_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ieee80211_subif_start_xmit(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ieee80211_get_sband(ptr noundef %sdata) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %local1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !151) #7
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !161
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 696, ptr noundef nonnull @.str.46) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %chanctx_conf2 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 9
  %6 = ptrtoint ptr %chanctx_conf2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %chanctx_conf2, align 4
  %call = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end9_crit_edge

rcu_read_lock.exit.do.end9_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b19 = load i1, ptr @ieee80211_get_sband.__warned, align 1
  br i1 %.b19, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @ieee80211_get_sband.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 1505, ptr noundef nonnull @.str.18) #7
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %rcu_read_lock.exit.do.end9_crit_edge
  %tobool11.not = icmp eq ptr %7, null
  br i1 %tobool11.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %do.end9
  %call.i20 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i20, label %if.then12.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i23

if.then12.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i23:                                ; preds = %if.then12
  %call1.i21 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i21)
  %tobool.not.i22 = icmp eq i32 %call1.i21, 0
  br i1 %tobool.not.i22, label %land.lhs.true.i23.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i25

land.lhs.true.i23.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i23
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i25:                               ; preds = %land.lhs.true.i23
  %.b4.i24 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i24, label %land.lhs.true2.i25.rcu_read_unlock.exit_crit_edge, label %if.then.i26

land.lhs.true2.i25.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i25
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i26:                                      ; preds = %land.lhs.true2.i25
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 724, ptr noundef nonnull @.str.47) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i26, %land.lhs.true2.i25.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i23.rcu_read_unlock.exit_crit_edge, %if.then12.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !162
  %8 = tail call i32 @llvm.read_register.i32(metadata !151) #7
  %and.i.i.i.i.i27 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i27 to ptr
  %preempt_count.i.i.i.i28 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i28, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i28, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %cleanup

if.end13:                                         ; preds = %do.end9
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %7, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %call.i29 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i29, label %if.end13.rcu_read_unlock.exit39_crit_edge, label %land.lhs.true.i32

if.end13.rcu_read_unlock.exit39_crit_edge:        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit39

land.lhs.true.i32:                                ; preds = %if.end13
  %call1.i30 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i30)
  %tobool.not.i31 = icmp eq i32 %call1.i30, 0
  br i1 %tobool.not.i31, label %land.lhs.true.i32.rcu_read_unlock.exit39_crit_edge, label %land.lhs.true2.i34

land.lhs.true.i32.rcu_read_unlock.exit39_crit_edge: ; preds = %land.lhs.true.i32
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit39

land.lhs.true2.i34:                               ; preds = %land.lhs.true.i32
  %.b4.i33 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i33, label %land.lhs.true2.i34.rcu_read_unlock.exit39_crit_edge, label %if.then.i35

land.lhs.true2.i34.rcu_read_unlock.exit39_crit_edge: ; preds = %land.lhs.true2.i34
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit39

if.then.i35:                                      ; preds = %land.lhs.true2.i34
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 724, ptr noundef nonnull @.str.47) #7
  br label %rcu_read_unlock.exit39

rcu_read_unlock.exit39:                           ; preds = %if.then.i35, %land.lhs.true2.i34.rcu_read_unlock.exit39_crit_edge, %land.lhs.true.i32.rcu_read_unlock.exit39_crit_edge, %if.end13.rcu_read_unlock.exit39_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !162
  %16 = tail call i32 @llvm.read_register.i32(metadata !151) #7
  %and.i.i.i.i.i36 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i36 to ptr
  %preempt_count.i.i.i.i37 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i37, align 4
  %sub.i.i.i38 = add i32 %19, -1
  store volatile i32 %sub.i.i.i38, ptr %preempt_count.i.i.i.i37, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wiphy, align 8
  %arrayidx = getelementptr %struct.wiphy, ptr %21, i32 0, i32 53, i32 %15
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit39, %rcu_read_unlock.exit
  %retval.0 = phi ptr [ %23, %rcu_read_unlock.exit39 ], [ null, %rcu_read_unlock.exit ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_add_srates_ie(ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_add_ext_srates_ie(ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_add_wmm_info_ie(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_apply_htcap_overrides(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_ie_build_ht_cap(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_apply_vhtcap_overrides(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_ie_build_vht_cap(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ieee80211_tdls_chandef_vht_upgrade(ptr noundef %sdata, ptr noundef %sta) unnamed_addr #0 align 64 {
entry:
  %uc = alloca %struct.cfg80211_chan_def, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %uc) #7
  %tdls_chandef = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 46
  %0 = call ptr @memcpy(ptr %uc, ptr %tdls_chandef, i32 28)
  %call = tail call i32 @ieee80211_sta_cap_chan_bw(ptr noundef %sta) #7
  %1 = and i32 %call, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %switch = icmp eq i32 %1, 6
  br i1 %switch, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = tail call i32 @llvm.umin.i32(i32 %call, i32 3)
  %width = getelementptr inbounds %struct.cfg80211_chan_def, ptr %uc, i32 0, i32 1
  %3 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %2)
  %cmp5.not = icmp ult i32 %4, %2
  br i1 %cmp5.not, label %for.cond.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %5 = ptrtoint ptr %uc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %uc, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %center_freq, align 4
  %sub = add i32 %8, -5210
  %9 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %9)
  %cmp12 = icmp slt i32 %9, 31
  br i1 %cmp12, label %for.cond.preheader.if.then14_crit_edge, label %for.cond

for.cond.preheader.if.then14_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

for.cond:                                         ; preds = %for.cond.preheader
  %sub.1 = add i32 %8, -5290
  %10 = tail call i32 @llvm.abs.i32(i32 %sub.1, i1 false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %10)
  %cmp12.1 = icmp slt i32 %10, 31
  br i1 %cmp12.1, label %for.cond.if.then14_crit_edge, label %for.cond.1

for.cond.if.then14_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

for.cond.1:                                       ; preds = %for.cond
  %sub.2 = add i32 %8, -5530
  %11 = tail call i32 @llvm.abs.i32(i32 %sub.2, i1 false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %11)
  %cmp12.2 = icmp slt i32 %11, 31
  br i1 %cmp12.2, label %for.cond.1.if.then14_crit_edge, label %for.cond.2

for.cond.1.if.then14_crit_edge:                   ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

for.cond.2:                                       ; preds = %for.cond.1
  %sub.3 = add i32 %8, -5610
  %12 = tail call i32 @llvm.abs.i32(i32 %sub.3, i1 false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %12)
  %cmp12.3 = icmp slt i32 %12, 31
  br i1 %cmp12.3, label %for.cond.2.if.then14_crit_edge, label %for.cond.3

for.cond.2.if.then14_crit_edge:                   ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

for.cond.3:                                       ; preds = %for.cond.2
  %sub.4 = add i32 %8, -5690
  %13 = tail call i32 @llvm.abs.i32(i32 %sub.4, i1 false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %13)
  %cmp12.4 = icmp slt i32 %13, 31
  br i1 %cmp12.4, label %for.cond.3.if.then14_crit_edge, label %for.cond.4

for.cond.3.if.then14_crit_edge:                   ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

for.cond.4:                                       ; preds = %for.cond.3
  %sub.5 = add i32 %8, -5775
  %14 = tail call i32 @llvm.abs.i32(i32 %sub.5, i1 false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %14)
  %cmp12.5 = icmp slt i32 %14, 31
  br i1 %cmp12.5, label %for.cond.4.if.then14_crit_edge, label %for.cond.4.for.end_crit_edge

for.cond.4.for.end_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.4.if.then14_crit_edge:                   ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

if.then14:                                        ; preds = %for.cond.4.if.then14_crit_edge, %for.cond.3.if.then14_crit_edge, %for.cond.2.if.then14_crit_edge, %for.cond.1.if.then14_crit_edge, %for.cond.if.then14_crit_edge, %for.cond.preheader.if.then14_crit_edge
  %.lcssa = phi i32 [ 5210, %for.cond.preheader.if.then14_crit_edge ], [ 5290, %for.cond.if.then14_crit_edge ], [ 5530, %for.cond.1.if.then14_crit_edge ], [ 5610, %for.cond.2.if.then14_crit_edge ], [ 5690, %for.cond.3.if.then14_crit_edge ], [ 5775, %for.cond.4.if.then14_crit_edge ]
  %center_freq1 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %uc, i32 0, i32 2
  %15 = ptrtoint ptr %center_freq1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.lcssa, ptr %center_freq1, align 4
  %center_freq2 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %uc, i32 0, i32 3
  %16 = ptrtoint ptr %center_freq2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %center_freq2, align 4
  %17 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 3, ptr %width, align 4
  br label %for.end

for.end:                                          ; preds = %if.then14, %for.cond.4.for.end_crit_edge
  %center_freq119 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %uc, i32 0, i32 2
  %18 = ptrtoint ptr %center_freq119 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %center_freq119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %while.cond.preheader

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.cond.preheader:                             ; preds = %for.end
  %width27 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 46, i32 1
  %local = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %iftype = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 1, i32 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %while.cond.preheader
  %20 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %2)
  %cmp23 = icmp ugt i32 %21, %2
  br i1 %cmp23, label %while.cond.while.body_crit_edge, label %lor.rhs

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

lor.rhs:                                          ; preds = %while.cond
  %22 = ptrtoint ptr %width27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %width27, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp28 = icmp ugt i32 %21, %23
  br i1 %cmp28, label %land.rhs, label %lor.rhs.while.end_crit_edge

lor.rhs.while.end_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

land.rhs:                                         ; preds = %lor.rhs
  %24 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %local, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wiphy, align 8
  %28 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %iftype, align 4
  %call30 = call zeroext i1 @cfg80211_reg_can_beacon_relax(ptr noundef %27, ptr noundef nonnull %uc, i32 noundef %29) #7
  br i1 %call30, label %land.rhs.while.end_crit_edge, label %land.rhs.while.body_crit_edge

land.rhs.while.body_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %land.rhs.while.body_crit_edge, %while.cond.while.body_crit_edge
  %call31 = call i32 @ieee80211_chandef_downgrade(ptr noundef nonnull %uc) #7
  br label %while.cond

while.end:                                        ; preds = %land.rhs.while.end_crit_edge, %lor.rhs.while.end_crit_edge
  %30 = ptrtoint ptr %uc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %uc, align 4
  %32 = ptrtoint ptr %tdls_chandef to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tdls_chandef, align 4
  %cmp.i = icmp eq ptr %31, %33
  br i1 %cmp.i, label %land.lhs.true.i, label %while.end.if.then34_crit_edge

while.end.if.then34_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then34

land.lhs.true.i:                                  ; preds = %while.end
  %34 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %width, align 4
  %36 = ptrtoint ptr %width27 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %width27, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp3.i = icmp eq i32 %35, %37
  br i1 %cmp3.i, label %land.lhs.true4.i, label %land.lhs.true.i.if.then34_crit_edge

land.lhs.true.i.if.then34_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then34

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %38 = ptrtoint ptr %center_freq119 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %center_freq119, align 4
  %center_freq15.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 46, i32 2
  %40 = ptrtoint ptr %center_freq15.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %center_freq15.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp6.i = icmp eq i32 %39, %41
  br i1 %cmp6.i, label %land.lhs.true7.i, label %land.lhs.true4.i.if.then34_crit_edge

land.lhs.true4.i.if.then34_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then34

land.lhs.true7.i:                                 ; preds = %land.lhs.true4.i
  %freq1_offset.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %uc, i32 0, i32 5
  %42 = ptrtoint ptr %freq1_offset.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %freq1_offset.i, align 4
  %freq1_offset8.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 46, i32 5
  %44 = ptrtoint ptr %freq1_offset8.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %freq1_offset8.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %43, i16 %45)
  %cmp10.i = icmp eq i16 %43, %45
  br i1 %cmp10.i, label %cfg80211_chandef_identical.exit, label %land.lhs.true7.i.if.then34_crit_edge

land.lhs.true7.i.if.then34_crit_edge:             ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then34

cfg80211_chandef_identical.exit:                  ; preds = %land.lhs.true7.i
  %center_freq2.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %uc, i32 0, i32 3
  %46 = ptrtoint ptr %center_freq2.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %center_freq2.i, align 4
  %center_freq212.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 46, i32 3
  %48 = ptrtoint ptr %center_freq212.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %center_freq212.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %cmp13.i = icmp eq i32 %47, %49
  br i1 %cmp13.i, label %cfg80211_chandef_identical.exit.cleanup_crit_edge, label %cfg80211_chandef_identical.exit.if.then34_crit_edge

cfg80211_chandef_identical.exit.if.then34_crit_edge: ; preds = %cfg80211_chandef_identical.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then34

cfg80211_chandef_identical.exit.cleanup_crit_edge: ; preds = %cfg80211_chandef_identical.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then34:                                        ; preds = %cfg80211_chandef_identical.exit.if.then34_crit_edge, %land.lhs.true7.i.if.then34_crit_edge, %land.lhs.true4.i.if.then34_crit_edge, %land.lhs.true.i.if.then34_crit_edge, %while.end.if.then34_crit_edge
  %name = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  %50 = ptrtoint ptr %width27 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %width27, align 4
  %52 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %width, align 4
  call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.21, ptr noundef %name, i32 noundef %51, i32 noundef %53) #7
  %54 = call ptr @memcpy(ptr %tdls_chandef, ptr %uc, i32 28)
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %cfg80211_chandef_identical.exit.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %uc) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @ieee80211_tdls_add_subband(ptr nocapture noundef readonly %sdata, ptr noundef %skb, i16 noundef zeroext %start, i16 noundef zeroext %end, i16 noundef zeroext %spacing) unnamed_addr #0 align 64 {
entry:
  %chandef = alloca %struct.cfg80211_chan_def, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %chandef) #7
  %0 = call ptr @memset(ptr %chandef, i32 255, i32 28)
  %local = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %1 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %local, align 4
  %wiphy1 = getelementptr inbounds %struct.ieee80211_hw, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %wiphy1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wiphy1, align 8
  %conv2 = zext i16 %end to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %start, i16 %end)
  %cmp.not53 = icmp ugt i16 %start, %end
  br i1 %cmp.not53, label %entry.if.end31_crit_edge, label %for.body.lr.ph

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

for.body.lr.ph:                                   ; preds = %entry
  %conv = zext i16 %start to i32
  %iftype = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 1, i32 1
  %conv21 = zext i16 %spacing to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %subband_cnt.057 = phi i8 [ 0, %for.body.lr.ph ], [ %subband_cnt.1, %for.inc.for.body_crit_edge ]
  %ch_cnt.056 = phi i8 [ 0, %for.body.lr.ph ], [ %ch_cnt.1, %for.inc.for.body_crit_edge ]
  %subband_start.055 = phi i32 [ -1, %for.body.lr.ph ], [ %spec.select, %for.inc.for.body_crit_edge ]
  %i.054 = phi i32 [ %conv, %for.body.lr.ph ], [ %add, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ch_cnt.056)
  %tobool.not = icmp eq i8 %ch_cnt.056, 0
  %spec.select = select i1 %tobool.not, i32 %i.054, i32 %subband_start.055
  %5 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %local, align 4
  %wiphy6 = getelementptr inbounds %struct.ieee80211_hw, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %wiphy6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wiphy6, align 8
  %mul.i = mul i32 %i.054, 1000
  %call.i = call ptr @ieee80211_get_channel_khz(ptr noundef %8, i32 noundef %mul.i) #7
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %for.body.if.end12_crit_edge, label %if.then8

for.body.if.end12_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then8:                                         ; preds = %for.body
  call void @cfg80211_chandef_create(ptr noundef nonnull %chandef, ptr noundef nonnull %call.i, i32 noundef 0) #7
  %9 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iftype, align 4
  %call9 = call zeroext i1 @cfg80211_reg_can_beacon_relax(ptr noundef %4, ptr noundef nonnull %chandef, i32 noundef %10) #7
  br i1 %call9, label %if.then10, label %if.then8.if.end12_crit_edge

if.then8.if.end12_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  %inc = add i8 %ch_cnt.056, 1
  br label %for.inc

if.end12:                                         ; preds = %if.then8.if.end12_crit_edge, %for.body.if.end12_crit_edge
  br i1 %tobool.not, label %if.end12.for.inc_crit_edge, label %if.then14

if.end12.for.inc_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = call ptr @skb_put(ptr noundef %skb, i32 noundef 2) #7
  %mul.i49 = mul i32 %spec.select, 1000
  %call.i50 = call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i49) #7
  %conv17 = trunc i32 %call.i50 to i8
  %incdec.ptr = getelementptr i8, ptr %call15, i32 1
  %11 = ptrtoint ptr %call15 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv17, ptr %call15, align 1
  %12 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %ch_cnt.056, ptr %incdec.ptr, align 1
  %inc19 = add i8 %subband_cnt.057, 1
  br label %for.inc

for.inc:                                          ; preds = %if.then14, %if.end12.for.inc_crit_edge, %if.then10
  %ch_cnt.1 = phi i8 [ %inc, %if.then10 ], [ 0, %if.then14 ], [ 0, %if.end12.for.inc_crit_edge ]
  %subband_cnt.1 = phi i8 [ %subband_cnt.057, %if.then10 ], [ %inc19, %if.then14 ], [ %subband_cnt.057, %if.end12.for.inc_crit_edge ]
  %add = add i32 %i.054, %conv21
  %cmp.not = icmp sgt i32 %add, %conv2
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ch_cnt.1)
  %tobool22.not = icmp eq i8 %ch_cnt.1, 0
  br i1 %tobool22.not, label %for.end.if.end31_crit_edge, label %if.then23

for.end.if.end31_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then23:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %phi.bo = mul i32 %spec.select, 1000
  %call25 = call ptr @skb_put(ptr noundef %skb, i32 noundef 2) #7
  %call.i52 = call i32 @ieee80211_freq_khz_to_channel(i32 noundef %phi.bo) #7
  %conv27 = trunc i32 %call.i52 to i8
  %incdec.ptr28 = getelementptr i8, ptr %call25, i32 1
  %13 = ptrtoint ptr %call25 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv27, ptr %call25, align 1
  %14 = ptrtoint ptr %incdec.ptr28 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %ch_cnt.1, ptr %incdec.ptr28, align 1
  %inc30 = add i8 %subband_cnt.1, 1
  br label %if.end31

if.end31:                                         ; preds = %if.then23, %for.end.if.end31_crit_edge, %entry.if.end31_crit_edge
  %subband_cnt.2 = phi i8 [ %inc30, %if.then23 ], [ %subband_cnt.1, %for.end.if.end31_crit_edge ], [ 0, %entry.if.end31_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %chandef) #7
  ret i8 %subband_cnt.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_chandef_create(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfg80211_reg_can_beacon_relax(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_get_channel_khz(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_freq_khz_to_channel(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_ie_split_ric(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ieee80211_chandef_to_operating_class(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_sta_cap_chan_bw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_chandef_downgrade(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_ie_build_ht_oper(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_ie_build_vht_oper(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ieee80211_tx_skb_tid_band(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_recalc_chanctx_chantype(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_chan_width_to_rx_bw(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_sta_cap_rx_bw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rate_control_rate_update(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_bss_info_change_notify(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_build_data_template(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_find_elem_match(i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_drv_tdls_channel_switch(ptr noundef %local, ptr noundef %sdata, ptr noundef %sta, i8 noundef zeroext %oper_class, ptr noundef %chandef) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_tdls_channel_switch, i32 0, i32 1), ptr blockaddress(@trace_drv_tdls_channel_switch, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !166

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !151) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !163

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !151) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !175
  %call42 = tail call i32 @__traceiter_drv_tdls_channel_switch(ptr noundef null, ptr noundef %local, ptr noundef %sdata, ptr noundef %sta, i8 noundef zeroext %oper_class, ptr noundef %chandef) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !176
  %13 = tail call i32 @llvm.read_register.i32(metadata !151) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !151) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !163

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !151) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !169
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_tdls_channel_switch, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_tdls_channel_switch, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_drv_tdls_channel_switch.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_drv_tdls_channel_switch.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 2653, ptr noundef nonnull @.str.18) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !170
  %31 = tail call i32 @llvm.read_register.i32(metadata !151) #7
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
define internal fastcc void @trace_drv_return_int(ptr noundef %local, i32 noundef %ret) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), ptr blockaddress(@trace_drv_return_int, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !166

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !151) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !163

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !151) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !177
  %call42 = tail call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %local, i32 noundef %ret) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !178
  %13 = tail call i32 @llvm.read_register.i32(metadata !151) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !151) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !163

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !151) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !169
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_drv_return_int.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_drv_return_int.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 219, ptr noundef nonnull @.str.18) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !170
  %31 = tail call i32 @llvm.read_register.i32(metadata !151) #7
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
declare dso_local i32 @__traceiter_drv_tdls_channel_switch(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_return_int(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_drv_tdls_cancel_channel_switch(ptr noundef %local, ptr noundef %sdata, ptr noundef %sta) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_tdls_cancel_channel_switch, i32 0, i32 1), ptr blockaddress(@trace_drv_tdls_cancel_channel_switch, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !166

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !151) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !163

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !151) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !179
  %call42 = tail call i32 @__traceiter_drv_tdls_cancel_channel_switch(ptr noundef null, ptr noundef %local, ptr noundef %sdata, ptr noundef %sta) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !180
  %13 = tail call i32 @llvm.read_register.i32(metadata !151) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !151) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !163

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !151) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !169
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_tdls_cancel_channel_switch, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_tdls_cancel_channel_switch, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_drv_tdls_cancel_channel_switch.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_drv_tdls_cancel_channel_switch.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 2679, ptr noundef nonnull @.str.18) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !170
  %31 = tail call i32 @llvm.read_register.i32(metadata !151) #7
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
declare dso_local i32 @__traceiter_drv_tdls_cancel_channel_switch(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ieee80211_tdls_ch_sw_resp_tmpl_get(ptr noundef %sta, ptr noundef writeonly %ch_sw_tm_ie_offset) unnamed_addr #0 align 64 {
entry:
  %extra_ies = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sdata1 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 6
  %0 = ptrtoint ptr %sdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdata1, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %extra_ies) #7
  %2 = getelementptr inbounds [6 x i8], ptr %extra_ies, i32 0, i32 1
  %3 = getelementptr inbounds [6 x i8], ptr %extra_ies, i32 0, i32 2
  %4 = getelementptr inbounds [6 x i8], ptr %extra_ies, i32 0, i32 4
  %5 = ptrtoint ptr %extra_ies to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 104, ptr %extra_ies, align 1
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 4, ptr %2, align 1
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 0, ptr %3, align 1
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 0, ptr %4, align 1
  %addr = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 1
  %tdls_initiator = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 18
  %9 = ptrtoint ptr %tdls_initiator to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tdls_initiator, align 1, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  %call = call fastcc ptr @ieee80211_tdls_build_mgmt_packet_data(ptr noundef %1, ptr noundef %addr, i8 noundef zeroext 6, i8 noundef zeroext 0, i16 noundef zeroext 0, i1 noundef zeroext %tobool.not, ptr noundef nonnull %extra_ies, i32 noundef 6, i8 noundef zeroext 0, ptr noundef null)
  %tobool6.not = icmp eq ptr %call, null
  br i1 %tobool6.not, label %entry.cleanup26_crit_edge, label %if.end

entry.cleanup26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup26

if.end:                                           ; preds = %entry
  %call7 = call ptr @ieee80211_build_data_template(ptr noundef %1, ptr noundef nonnull %call, i32 noundef 0) #7
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 10
  call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.38, ptr noundef %name) #7
  br label %cleanup26

if.end11:                                         ; preds = %if.end
  %tobool12.not = icmp eq ptr %ch_sw_tm_ie_offset, null
  br i1 %tobool12.not, label %if.end11.if.end20_crit_edge, label %if.then13

if.end11.if.end20_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then13:                                        ; preds = %if.end11
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call7, i32 0, i32 19
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call7, i32 0, i32 18
  %13 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call7, i32 0, i32 15, i32 0, i32 20
  %15 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %16 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 %conv.i.i.i
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %add.ptr.i = getelementptr i8, ptr %12, i32 %sub.ptr.sub.i.i
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 -14
  %u.i = getelementptr inbounds %struct.ieee80211_tdls_data, ptr %add.ptr1.i, i32 0, i32 6
  %variable.i = getelementptr inbounds %struct.anon.201, ptr %u.i, i32 0, i32 2
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call7, i32 0, i32 6
  %17 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %variable.i to i32
  %sub.ptr.sub.neg.i = add i32 %18, %sub.ptr.rhs.cast.i.i
  %sub.i = sub i32 %sub.ptr.sub.neg.i, %sub.ptr.lhs.cast.i
  %call.i.i.i = call ptr @cfg80211_find_elem_match(i8 noundef zeroext 104, ptr noundef %variable.i, i32 noundef %sub.i, ptr noundef null, i32 noundef 0, i32 noundef 0) #7
  %tobool15.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool15.not, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %name17 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 10
  call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.39, ptr noundef %name17) #7
  call void @__dev_kfree_skb_any(ptr noundef %call7, i32 noundef 1) #7
  br label %cleanup26

if.end19:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %call.i.i.i to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %20 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %21 = ptrtoint ptr %ch_sw_tm_ie_offset to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub.ptr.sub, ptr %ch_sw_tm_ie_offset, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.end11.if.end20_crit_edge
  %name21 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 10
  call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.40, ptr noundef %name21, ptr noundef %addr) #7
  br label %cleanup26

cleanup26:                                        ; preds = %if.end20, %if.then16, %if.then9, %entry.cleanup26_crit_edge
  %retval.1 = phi ptr [ null, %if.then9 ], [ %call7, %if.end20 ], [ null, %entry.cleanup26_crit_edge ], [ null, %if.then16 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %extra_ies) #7
  ret ptr %retval.1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @drv_tdls_recv_channel_switch(ptr noundef %local, ptr noundef %sdata, ptr noundef %params) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @trace_drv_tdls_recv_channel_switch(ptr noundef %local, ptr noundef %sdata, ptr noundef %params)
  %ops = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 8
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %tdls_recv_channel_switch = getelementptr inbounds %struct.ieee80211_ops, ptr %1, i32 0, i32 91
  %2 = ptrtoint ptr %tdls_recv_channel_switch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tdls_recv_channel_switch, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %vif = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59
  tail call void %3(ptr noundef %local, ptr noundef %vif, ptr noundef %params) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @trace_drv_return_void(ptr noundef %local)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_channel_to_freq_khz(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee802_11_parse_elems_crc(ptr noundef, i32 noundef, i1 noundef zeroext, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_drv_tdls_recv_channel_switch(ptr noundef %local, ptr noundef %sdata, ptr noundef %params) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_tdls_recv_channel_switch, i32 0, i32 1), ptr blockaddress(@trace_drv_tdls_recv_channel_switch, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !166

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !151) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !163

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !151) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !181
  %call42 = tail call i32 @__traceiter_drv_tdls_recv_channel_switch(ptr noundef null, ptr noundef %local, ptr noundef %sdata, ptr noundef %params) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !182
  %13 = tail call i32 @llvm.read_register.i32(metadata !151) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !151) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !163

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !151) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !169
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_tdls_recv_channel_switch, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_tdls_recv_channel_switch, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_drv_tdls_recv_channel_switch.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_drv_tdls_recv_channel_switch.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 2723, ptr noundef nonnull @.str.18) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !170
  %31 = tail call i32 @llvm.read_register.i32(metadata !151) #7
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
declare dso_local i32 @__traceiter_drv_tdls_recv_channel_switch(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !28, !30, !32, !34, !36, !38, !39, !41, !43, !44, !45, !46, !48, !49, !51, !52, !54, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !82, !84, !86, !88, !90, !92, !94, !96, !98, !99, !101, !102, !104, !106, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !136, !138, !140, !142, !144, !146, !147, !148, !150}
!llvm.named.register.sp = !{!151}
!llvm.module.flags = !{!152, !153, !154, !155, !156, !157, !158, !159}
!llvm.ident = !{!160}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/mac80211/tdls.c", i32 35, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/mac80211/tdls.c", i32 1242, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/mac80211/tdls.c", i32 1371, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/mac80211/tdls.c", i32 1376, i32 4}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../net/mac80211/tdls.c", i32 1395, i32 3}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/mac80211/tdls.c", i32 1448, i32 3}
!13 = !{ptr @__ksymtab_ieee80211_tdls_oper_request, !14, !"__ksymtab_ieee80211_tdls_oper_request", i1 false, i1 false}
!14 = !{!"../net/mac80211/tdls.c", i32 1455, i32 1}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/mac80211/tdls.c", i32 1576, i32 3}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/mac80211/tdls.c", i32 1584, i32 3}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/mac80211/tdls.c", i32 1620, i32 3}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/mac80211/tdls.c", i32 1627, i32 3}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../net/mac80211/tdls.c", i32 1964, i32 3}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../net/mac80211/tdls.c", i32 1975, i32 2}
!27 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/mac80211/tdls.c", i32 2000, i32 2}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/mac80211/tdls.c", i32 1081, i32 3}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/mac80211/tdls.c", i32 1167, i32 3}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/mac80211/driver-ops.h", i32 860, i32 2}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../net/mac80211/driver-ops.h", i32 862, i32 7}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../net/mac80211/driver-ops.h", i32 864, i32 2}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../net/mac80211/trace.h", i32 1510, i32 1}
!43 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!44 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!45 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!48 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!49 = distinct !{null, !50, !"__already_done", i1 false, i1 false}
!50 = !{!"../net/mac80211/trace.h", i32 202, i32 1}
!51 = distinct !{null, !50, !"__warned", i1 false, i1 false}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../net/mac80211/ieee80211_i.h", i32 1505, i32 17}
!54 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @ieee80211_tdls_add_setup_start_ies.before_ext_cap, !56, !"before_ext_cap", i1 false, i1 false}
!56 = !{!"../net/mac80211/tdls.c", i32 384, i32 19}
!57 = !{ptr @ieee80211_tdls_add_setup_start_ies.before_ht_cap, !58, !"before_ht_cap", i1 false, i1 false}
!58 = !{!"../net/mac80211/tdls.c", i32 408, i32 19}
!59 = distinct !{null, !60, !"__already_done", i1 false, i1 false}
!60 = !{!"../net/mac80211/tdls.c", i32 433, i32 7}
!61 = !{ptr @ieee80211_tdls_add_setup_start_ies.before_vht_cap, !62, !"before_vht_cap", i1 false, i1 false}
!62 = !{!"../net/mac80211/tdls.c", i32 478, i32 19}
!63 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../net/mac80211/tdls.c", i32 349, i32 3}
!65 = distinct !{null, !66, !"__already_done", i1 false, i1 false}
!66 = !{!"../net/mac80211/tdls.c", i32 562, i32 6}
!67 = !{ptr @ieee80211_tdls_add_setup_cfm_ies.before_qos, !68, !"before_qos", i1 false, i1 false}
!68 = !{!"../net/mac80211/tdls.c", i32 571, i32 19}
!69 = !{ptr @ieee80211_tdls_add_setup_cfm_ies.before_ht_op, !70, !"before_ht_op", i1 false, i1 false}
!70 = !{!"../net/mac80211/tdls.c", i32 588, i32 19}
!71 = distinct !{null, !72, !"__already_done", i1 false, i1 false}
!72 = !{!"../net/mac80211/tdls.c", i32 241, i32 3}
!73 = distinct !{null, !74, !"__already_done", i1 false, i1 false}
!74 = !{!"../net/mac80211/tdls.c", i32 653, i32 6}
!75 = !{ptr @ieee80211_tdls_add_chan_switch_req_ies.before_lnkie, !76, !"before_lnkie", i1 false, i1 false}
!76 = !{!"../net/mac80211/tdls.c", i32 662, i32 19}
!77 = distinct !{null, !78, !"__warned", i1 false, i1 false}
!78 = !{!"../net/mac80211/ieee80211_i.h", i32 2199, i32 17}
!79 = distinct !{null, !80, !"__warned", i1 false, i1 false}
!80 = !{!"../net/mac80211/tdls.c", i32 1257, i32 9}
!81 = !{ptr @.str.22, !80, !"<string literal>", i1 false, i1 false}
!82 = distinct !{null, !83, !"__warned", i1 false, i1 false}
!83 = !{!"../net/mac80211/tdls.c", i32 1295, i32 2}
!84 = distinct !{null, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../net/mac80211/sta_info.h", i32 695, i32 2}
!86 = !{ptr @.str.24, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../net/mac80211/tdls.c", i32 1535, i32 3}
!88 = !{ptr @.str.25, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../net/mac80211/tdls.c", i32 1543, i32 4}
!90 = !{ptr @.str.26, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../net/mac80211/tdls.c", i32 1551, i32 2}
!92 = distinct !{null, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../include/net/cfg80211.h", i32 778, i32 3}
!94 = distinct !{null, !95, !"__already_done", i1 false, i1 false}
!95 = !{!"../net/mac80211/driver-ops.h", i32 1174, i32 7}
!96 = distinct !{null, !97, !"__already_done", i1 false, i1 false}
!97 = !{!"../net/mac80211/trace.h", i32 2623, i32 1}
!98 = distinct !{null, !97, !"__warned", i1 false, i1 false}
!99 = distinct !{null, !100, !"__already_done", i1 false, i1 false}
!100 = !{!"../net/mac80211/trace.h", i32 207, i32 1}
!101 = distinct !{null, !100, !"__warned", i1 false, i1 false}
!102 = distinct !{null, !103, !"__already_done", i1 false, i1 false}
!103 = !{!"../net/mac80211/driver-ops.h", i32 1194, i32 7}
!104 = distinct !{null, !105, !"__already_done", i1 false, i1 false}
!105 = !{!"../net/mac80211/trace.h", i32 2655, i32 1}
!106 = distinct !{null, !105, !"__warned", i1 false, i1 false}
!107 = !{ptr @.str.28, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../net/mac80211/tdls.c", i32 1798, i32 3}
!109 = !{ptr @.str.29, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../net/mac80211/tdls.c", i32 1826, i32 3}
!111 = !{ptr @.str.30, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../net/mac80211/tdls.c", i32 1833, i32 3}
!113 = !{ptr @.str.31, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../net/mac80211/tdls.c", i32 1845, i32 3}
!115 = !{ptr @.str.32, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../net/mac80211/tdls.c", i32 1851, i32 3}
!117 = !{ptr @.str.33, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../net/mac80211/tdls.c", i32 1877, i32 3}
!119 = !{ptr @.str.34, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../net/mac80211/tdls.c", i32 1885, i32 3}
!121 = !{ptr @.str.35, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../net/mac80211/tdls.c", i32 1897, i32 3}
!123 = !{ptr @.str.36, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../net/mac80211/tdls.c", i32 1905, i32 3}
!125 = !{ptr @.str.37, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../net/mac80211/tdls.c", i32 1924, i32 2}
!127 = !{ptr @.str.38, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../net/mac80211/tdls.c", i32 1659, i32 3}
!129 = !{ptr @.str.39, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../net/mac80211/tdls.c", i32 1668, i32 4}
!131 = !{ptr @.str.40, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../net/mac80211/tdls.c", i32 1677, i32 2}
!133 = distinct !{null, !134, !"__already_done", i1 false, i1 false}
!134 = !{!"../net/mac80211/trace.h", i32 2681, i32 1}
!135 = distinct !{null, !134, !"__warned", i1 false, i1 false}
!136 = !{ptr @.str.41, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../net/mac80211/tdls.c", i32 1700, i32 3}
!138 = !{ptr @.str.42, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../net/mac80211/tdls.c", i32 1729, i32 3}
!140 = !{ptr @.str.43, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../net/mac80211/tdls.c", i32 1735, i32 3}
!142 = !{ptr @.str.44, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../net/mac80211/tdls.c", i32 1763, i32 2}
!144 = distinct !{null, !145, !"__warned", i1 false, i1 false}
!145 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!146 = !{ptr @.str.45, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.46, !145, !"<string literal>", i1 false, i1 false}
!148 = distinct !{null, !149, !"__warned", i1 false, i1 false}
!149 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!150 = !{ptr @.str.47, !149, !"<string literal>", i1 false, i1 false}
!151 = !{!"sp"}
!152 = !{i32 1, !"wchar_size", i32 2}
!153 = !{i32 1, !"min_enum_size", i32 4}
!154 = !{i32 8, !"branch-target-enforcement", i32 0}
!155 = !{i32 8, !"sign-return-address", i32 0}
!156 = !{i32 8, !"sign-return-address-all", i32 0}
!157 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!158 = !{i32 7, !"uwtable", i32 1}
!159 = !{i32 7, !"frame-pointer", i32 2}
!160 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!161 = !{i64 2149829418}
!162 = !{i64 2149829684}
!163 = !{!"branch_weights", i32 2000, i32 1}
!164 = !{!"branch_weights", i32 1, i32 2000}
!165 = !{i8 0, i8 2}
!166 = !{i64 2149014596, i64 2149014601, i64 2149014614, i64 2149014658, i64 2149014692, i64 2149014713}
!167 = !{i64 2160077611}
!168 = !{i64 2160077856}
!169 = !{i64 2149837977}
!170 = !{i64 2149839013}
!171 = !{i64 2158788675}
!172 = !{i64 2158788878}
!173 = !{!"auto-init"}
!174 = !{i32 0, i32 33}
!175 = !{i64 2161056091}
!176 = !{i64 2161056376}
!177 = !{i64 2158804965}
!178 = !{i64 2158805176}
!179 = !{i64 2161074851}
!180 = !{i64 2161075108}
!181 = !{i64 2161097965}
!182 = !{i64 2161098224}
