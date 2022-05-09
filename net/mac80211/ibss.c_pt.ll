; ModuleID = '/llk/IR_all_yes/net/mac80211/ibss.c_pt.bc'
source_filename = "../net/mac80211/ibss.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.91 }
%struct.atomic_t = type { i32 }
%union.anon.91 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.ieee80211_sub_if_data = type { %struct.list_head, %struct.wireless_dev, %struct.list_head, i32, i32, %struct.delayed_work, ptr, ptr, i32, i32, [16 x i8], %struct.ieee80211_fragment_cache, i16, i8, [8 x ptr], ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8, i32, %struct.atomic_t, [4 x %struct.ieee80211_tx_queue_params], ptr, [4 x %struct.airtime_info], %struct.work_struct, i8, %struct.cfg80211_chan_def, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.cfg80211_chan_def, i8, i8, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, i8, i32, i32, i32, i8, %struct.delayed_work, ptr, [6 x i32], [6 x i8], [6 x [10 x i8]], [6 x i8], [6 x [8 x i16]], [6 x i32], i8, %union.anon.160, %struct.anon.194, %struct.ieee80211_vif }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.126, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.126 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.cfg80211_bss_selection = type { i32, %union.anon.127 }
%union.anon.127 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.ieee80211_fragment_cache = type { [4 x %struct.ieee80211_fragment_entry], i32 }
%struct.ieee80211_fragment_entry = type { %struct.sk_buff_head, i32, i16, i16, i16, i8, i8, [6 x i8], i32 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.airtime_info = type { i64, i64, i64, i64, %struct.list_head, %struct.atomic_t, i32, i32, i32, i16 }
%struct.list_head = type { ptr, ptr }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%union.anon.160 = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i32, i8, [32 x i8], i32, i8, i8, i8, i8, i8, i32, i32, %struct.atomic_t, i32, i32, i32, ptr, %struct.spinlock, %struct.mesh_preq_queue, i32, %struct.mesh_stats, %struct.mesh_config, %struct.atomic_t, i32, i8, i32, ptr, ptr, i8, i32, i8, ptr, i64, %struct.spinlock, i32, i32, i32, %struct.ps_data, ptr, i32, i8, i16, i32, %struct.mesh_table, %struct.mesh_table, i32, i32 }
%struct.mesh_preq_queue = type { %struct.list_head, [6 x i8], i8 }
%struct.mesh_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.mesh_config = type { i16, i16, i16, i16, i8, i8, i8, i8, i32, i8, i32, i16, i32, i16, i16, i16, i8, i8, i8, i16, i8, i8, i32, i16, i32, i16, i16, i32, i16, i32, i8 }
%struct.ps_data = type { [252 x i8], %struct.sk_buff_head, %struct.atomic_t, i32, i8 }
%struct.mesh_table = type { %struct.hlist_head, %struct.spinlock, %struct.rhashtable, %struct.hlist_head, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
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
%struct.ieee80211_if_ibss = type { %struct.timer_list, %struct.work_struct, i32, i32, i8, i8, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, ptr, %struct.cfg80211_chan_def, i32, ptr, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.spinlock, %struct.list_head, i32 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.cfg80211_bss = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, i16, i16, [6 x i8], i8, [4 x i8], i8, i8, [3 x i8], [0 x i8] }
%struct.beacon_data = type { ptr, ptr, i32, i32, ptr, [2 x i16], i8, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.161 }
%union.anon.161 = type { %struct.anon.167, [16 x i8] }
%struct.anon.167 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.anon.169 = type <{ i64, i16, i16, [0 x i8] }>
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
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.cfg80211_csa_settings = type { %struct.cfg80211_chan_def, %struct.cfg80211_beacon_data, ptr, ptr, i32, i32, %struct.cfg80211_beacon_data, i8, i8, i8 }
%struct.cfg80211_beacon_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_local = type { %struct.ieee80211_hw, %struct.fq, ptr, %struct.codel_params, [4 x %struct.airtime_sched_info], i16, i32, %struct.atomic_t, ptr, ptr, [16 x i32], [16 x [11 x i32]], %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i8, i8, %struct.spinlock, %struct.work_struct, %struct.netdev_hw_addr_list, i8, i8, i8, i8, i8, i8, i8, i8, %struct.work_struct, i8, i8, i32, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.mutex, %struct.spinlock, i32, %struct.list_head, %struct.rhltable, %struct.timer_list, i32, [16 x %struct.sk_buff_head], %struct.tasklet_struct, %struct.tasklet_struct, [16 x %struct.atomic_t], %struct.atomic_t, ptr, %struct.arc4_ctx, %struct.arc4_ctx, i32, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.mutex, i32, %struct.cfg80211_ssid, ptr, ptr, ptr, %struct.cfg80211_chan_def, i32, i32, i32, i32, %struct.cfg80211_scan_info, %struct.work_struct, ptr, ptr, [6 x i8], i32, i32, %struct.delayed_work, ptr, %struct.cfg80211_chan_def, ptr, %struct.list_head, %struct.mutex, %struct.led_trigger, %struct.led_trigger, %struct.led_trigger, %struct.led_trigger, %struct.led_trigger, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, %struct.work_struct, %struct.work_struct, %struct.timer_list, %struct.notifier_block, %struct.notifier_block, i32, i32, i32, %struct.work_struct, %struct.local_debugfsdentries, i8, %struct.delayed_work, %struct.list_head, %struct.work_struct, %struct.work_struct, i32, i64, %struct.idr, %struct.spinlock, ptr, ptr, %struct.cfg80211_chan_def, [8 x i8] }
%struct.fq = type { ptr, ptr, %struct.list_head, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.codel_params = type { i32, i32, i32, i32, i8, i8, i8 }
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
%struct.sta_info = type { %struct.list_head, %struct.list_head, %struct.callback_head, %struct.rhlist_head, [6 x i8], ptr, ptr, [8 x ptr], [4 x ptr], i8, ptr, ptr, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.work_struct, i16, i8, i8, i8, i32, i32, %struct.spinlock, [4 x %struct.sk_buff_head], [4 x %struct.sk_buff_head], i32, i32, i64, i32, %struct.ieee80211_sta_rx_stats, %struct.anon.148, [17 x i16], %struct.anon.149, %struct.anon.150, [16 x i16], [4 x %struct.airtime_info], %struct.sta_ampdu_mlme, ptr, i32, i32, ptr, %struct.codel_params, i8, %struct.cfg80211_chan_def, %struct.ieee80211_fragment_cache, %struct.ieee80211_sta }
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
%struct.sta_ampdu_mlme = type { %struct.mutex, [16 x ptr], [16 x i8], [1 x i32], [1 x i32], [1 x i32], [1 x i32], [1 x i32], %struct.work_struct, [16 x ptr], [16 x ptr], [16 x i32], [16 x i8], i8 }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
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
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee802_11_elems = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [8 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i8, i8 }
%struct.anon.174 = type { i8, %union.anon.175 }
%union.anon.175 = type <{ %struct.anon.180, [17 x i8] }>
%struct.anon.180 = type { i8, i8, i16, i16, i16, [0 x i8] }
%struct.ieee80211_csa_ie = type { %struct.cfg80211_chan_def, i8, i8, i8, i16, i16, i32 }
%struct.ieee80211_bss = type { i32, i32, i8, i8, [32 x i8], i32, ptr, i32, i8, i8, i8, i8 }
%struct.cfg80211_inform_bss = type { ptr, i32, i32, i64, i64, [6 x i8], i8, [4 x i8] }

@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/mac80211/ibss.c\00", [44 x i8] zeroinitializer }, align 32
@ieee80211_ibss_csa_beacon.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@ieee80211_ibss_csa_beacon.__warned.2 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@ieee80211_ibss_rx_no_sta._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str, i32 1212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016%s: No room for a new IBSS STA entry %pM\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ieee80211_ibss_rx_no_sta\00", [39 x i8] zeroinitializer }, align 32
@ieee80211_ibss_rx_no_sta._entry_ptr = internal global ptr @ieee80211_ibss_rx_no_sta._entry, section ".printk_index", align 4
@ieee80211_ibss_rx_no_sta.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ieee80211_ibss_rx_no_sta.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ieee80211_ibss_setup_sdata.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"(&ifibss->timer)\00", [47 x i8] zeroinitializer }, align 32
@ieee80211_ibss_setup_sdata.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&ifibss->incomplete_lock\00", [39 x i8] zeroinitializer }, align 32
@ieee80211_ibss_setup_sdata.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"(work_completion)(&ifibss->csa_connection_drop_work)\00", [43 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"net/mac80211/ieee80211_i.h\00", [37 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@ieee80211_rx_mgmt_probe_req.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: RX ProbeReq SA=%pM DA=%pM\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: \09BSSID=%pM (tx_last_beacon=%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Invalid SSID IE in ProbeReq from %pM\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Sending ProbeResp to %pM\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"net/mac80211/driver-ops.h\00", [38 x i8] zeroinitializer }, align 32
@__tracepoint_drv_tx_last_beacon = external dso_local global %struct.tracepoint, align 4
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/mac80211/trace.h\00", [43 x i8] zeroinitializer }, align 32
@trace_drv_tx_last_beacon.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_drv_return_int = external dso_local global %struct.tracepoint, align 4
@trace_drv_return_int.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ieee80211_tx_skb_tid.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: RX beacon SA=%pM BSSID=%pM TSF=0x%llx\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: \09BCN=0x%llx diff=%lld @%lu\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%s: beacon TSF higher than local TSF - IBSS merge with BSSID %pM\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"%s: updated supp_rates set for %pM based on beacon/probe_resp (0x%x -> 0x%x)\0A\00", [50 x i8] zeroinitializer }, align 32
@ieee80211_update_sta_info.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.26 = internal constant { [122 x i8], [38 x i8] } { [122 x i8] c"%s: IBSS %pM received channel switch from incompatible channel width (%d MHz, width:%d, CF1/2: %d/%d MHz), disconnecting\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"%s: IBSS %pM switches to unsupported channel (%d MHz, width:%d, CF1/2: %d/%d MHz), disconnecting\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: received csa with an identical chandef, ignoring\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%s: received channel switch announcement to go to channel %d MHz\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: Can't handle channel switch, disconnect\0A\00", [51 x i8] zeroinitializer }, align 32
@ieee80211_have_rx_timestamp.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ieee80211_sta_join_ibss.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ieee80211_vif_get_shift.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__ieee80211_sta_join_ibss.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.32 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: Failed to join IBSS, beacons forbidden\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Failed to join IBSS, invalid chandef\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s: Failed to join IBSS, DFS channel without control program\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: Failed to join IBSS, no channel context\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: Failed to join IBSS, driver failure: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@drv_leave_ibss.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.37 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: Failed check-sdata-in-driver check, flags: 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@__tracepoint_drv_leave_ibss = external dso_local global %struct.tracepoint, align 4
@trace_drv_leave_ibss.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_drv_return_void = external dso_local global %struct.tracepoint, align 4
@trace_drv_return_void.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@drv_join_ibss.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_drv_join_ibss = external dso_local global %struct.tracepoint, align 4
@trace_drv_join_ibss.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ieee80211_ibss_add_sta._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.38, ptr @.str, i32 609, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ieee80211_ibss_add_sta\00", [41 x i8] zeroinitializer }, align 32
@ieee80211_ibss_add_sta._entry_ptr = internal global ptr @ieee80211_ibss_add_sta._entry, section ".printk_index", align 4
@ieee80211_ibss_add_sta.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ieee80211_ibss_add_sta.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: RX Auth SA=%pM DA=%pM\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: \09BSSID=%pM (auth_transaction=%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: RX DeAuth SA=%pM DA=%pM\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: \09BSSID=%pM (reason: %d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Adding new IBSS station %pM\0A\00", [63 x i8] zeroinitializer }, align 32
@sta_info_pre_move_state.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/mac80211/sta_info.h\00", [40 x i8] zeroinitializer }, align 32
@sta_info_pre_move_state.__already_done.45 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.46 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: sta_find_ibss (active_ibss=%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: sta_find_ibss: selected %pM current %pM\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: Selected IBSS BSSID %pM based on configured SSID\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: Created IBSS using preconfigured BSSID %pM\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: sta_find_ibss: did not try to join ibss\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: Trigger new scan to find an IBSS to join\0A\00", [50 x i8] zeroinitializer }, align 32
@ieee80211_sta_active_ibss.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.52 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Creating new IBSS network, BSSID %pM\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"%s: No active IBSS STAs - trying to scan for other IBSS networks with same SSID (merge)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: expiring inactive %sSTA %pM\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"not authorized \00", [16 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@ieee80211_ibss_disconnect.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@switch.table.ieee80211_ibss_process_chanswitch = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 3088, i32 3072, i32 3088, i32 3088, i32 3088, i32 3088, i32 3088, i32 3088], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 6, i64 7]
@__sancov_gen_cov_switch_values.58 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 4, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.59 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 6, i64 7]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.61 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.62 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 6, i64 7]
@__sancov_gen_cov_switch_values.63 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.64 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 6, i64 7]
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 503, i32 6 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 507, i32 8 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 512, i32 14 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1211, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1732, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1734, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1735, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant [30 x i8] c"../net/mac80211/ieee80211_i.h\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 1050, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 695, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 723, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1541, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1542, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1556, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1576, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 589, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant [24 x i8] c"../net/mac80211/trace.h\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1067, i32 1 }
@___asan_gen_.132 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 108, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1171, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1174, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1180, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1019, i32 5 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 834, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 852, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 876, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 882, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 896, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 273, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 291, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 296, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 308, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 376, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant [29 x i8] c"../net/mac80211/driver-ops.h\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 1128, i32 7 }
@___asan_gen_.179 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 608, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 958, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 959, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 939, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 940, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 573, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant [27 x i8] c"../net/mac80211/sta_info.h\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 742, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1439, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1459, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1462, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1475, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1482, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1490, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 656, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1340, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1310, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.237 = private constant [23 x i8] c"../net/mac80211/ibss.c\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1268, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant [47 x i8] c"switch.table.ieee80211_ibss_process_chanswitch\00", align 1
@llvm.compiler.used = appending global [61 x ptr] [ptr @ieee80211_ibss_add_sta._entry, ptr @ieee80211_ibss_add_sta._entry_ptr, ptr @ieee80211_ibss_rx_no_sta._entry, ptr @ieee80211_ibss_rx_no_sta._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ieee80211_ibss_setup_sdata.__key, ptr @.str.6, ptr @ieee80211_ibss_setup_sdata.__key.7, ptr @.str.8, ptr @ieee80211_ibss_setup_sdata.__key.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @switch.table.ieee80211_ibss_process_chanswitch], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_ibss_rx_no_sta._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_ibss_setup_sdata.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_ibss_setup_sdata.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_ibss_setup_sdata.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 122, i32 160, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_ibss_add_sta._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ieee80211_ibss_process_chanswitch to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_ibss_csa_beacon(ptr noundef %sdata, ptr noundef %csa_settings) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i158 = icmp eq i32 %0, 0
  br i1 %tobool.not.i158, label %entry.sdata_assert_lock.exit_crit_edge, label %land.rhs.i

entry.sdata_assert_lock.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdata_assert_lock.exit

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 1, i32 7, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.sdata_assert_lock.exit_crit_edge, !prof !171

land.rhs.i.sdata_assert_lock.exit_crit_edge:      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdata_assert_lock.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1050, i32 noundef 9, ptr noundef null) #9
  br label %sdata_assert_lock.exit

sdata_assert_lock.exit:                           ; preds = %do.end.i, %land.rhs.i.sdata_assert_lock.exit_crit_edge, %entry.sdata_assert_lock.exit_crit_edge
  %privacy = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %u, i32 0, i32 6
  %1 = ptrtoint ptr %privacy to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %privacy, align 2, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %spec.select = select i1 %tobool.not, i16 2, i16 18
  %local = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %3 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %local, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wiphy, align 8
  %chandef = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 5
  %7 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chandef, align 4
  %bssid = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %u, i32 0, i32 10
  %ssid = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 2, i32 3
  %ssid_len = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 3
  %9 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ssid_len, align 4
  %conv3 = zext i8 %10 to i32
  %11 = xor i8 %2, 1
  %12 = zext i8 %11 to i32
  %call = tail call ptr @cfg80211_get_bss(ptr noundef %6, ptr noundef %8, ptr noundef %bssid, ptr noundef %ssid, i32 noundef %conv3, i32 noundef 2, i32 noundef %12) #9
  %tobool7.not = icmp eq ptr %call, null
  br i1 %tobool7.not, label %do.end, label %if.end32, !prof !171

do.end:                                           ; preds = %sdata_assert_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 503, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end32:                                         ; preds = %sdata_assert_lock.exit
  %13 = tail call i32 @llvm.read_register.i32(metadata !161) #9
  %and.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %16, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !173
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %if.end32.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end32.rcu_read_lock.exit_crit_edge:            ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end32
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end32.rcu_read_lock.exit_crit_edge
  %ies37 = getelementptr inbounds %struct.cfg80211_bss, ptr %call, i32 0, i32 2
  %17 = ptrtoint ptr %ies37 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %ies37, align 4
  %call39 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end48_crit_edge

rcu_read_lock.exit.do.end48_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end48

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call41 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %land.lhs.true.do.end48_crit_edge, label %land.lhs.true43

land.lhs.true.do.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end48

land.lhs.true43:                                  ; preds = %land.lhs.true
  %.b157 = load i1, ptr @ieee80211_ibss_csa_beacon.__warned, align 1
  br i1 %.b157, label %land.lhs.true43.do.end48_crit_edge, label %if.then45

land.lhs.true43.do.end48_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end48

if.then45:                                        ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ieee80211_ibss_csa_beacon.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 507, ptr noundef nonnull @.str.1) #9
  br label %do.end48

do.end48:                                         ; preds = %if.then45, %land.lhs.true43.do.end48_crit_edge, %land.lhs.true.do.end48_crit_edge, %rcu_read_lock.exit.do.end48_crit_edge
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %18, align 8
  %call.i159 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i159, label %do.end48.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i162

do.end48.rcu_read_unlock.exit_crit_edge:          ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i162:                               ; preds = %do.end48
  %call1.i160 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i160)
  %tobool.not.i161 = icmp eq i32 %call1.i160, 0
  br i1 %tobool.not.i161, label %land.lhs.true.i162.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i164

land.lhs.true.i162.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i162
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i164:                              ; preds = %land.lhs.true.i162
  %.b4.i163 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i163, label %land.lhs.true2.i164.rcu_read_unlock.exit_crit_edge, label %if.then.i165

land.lhs.true2.i164.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i164
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i165:                                     ; preds = %land.lhs.true2.i164
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i165, %land.lhs.true2.i164.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i162.rcu_read_unlock.exit_crit_edge, %do.end48.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !174
  %21 = tail call i32 @llvm.read_register.i32(metadata !161) #9
  %and.i.i.i.i.i166 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i166 to ptr
  %preempt_count.i.i.i.i167 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i167 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i167, align 4
  %sub.i.i.i = add i32 %24, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i167, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %25 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %local, align 4
  %wiphy53 = getelementptr inbounds %struct.ieee80211_hw, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %wiphy53 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wiphy53, align 8
  tail call void @cfg80211_put_bss(ptr noundef %28, ptr noundef nonnull %call) #9
  %dep_map = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 1, i32 7, i32 5
  %call.i169 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i169)
  %tobool56.not = icmp eq i32 %call.i169, 0
  br i1 %tobool56.not, label %land.lhs.true57, label %rcu_read_unlock.exit.do.end65_crit_edge

rcu_read_unlock.exit.do.end65_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end65

land.lhs.true57:                                  ; preds = %rcu_read_unlock.exit
  %call58 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true57.do.end65_crit_edge, label %land.lhs.true60

land.lhs.true57.do.end65_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end65

land.lhs.true60:                                  ; preds = %land.lhs.true57
  %.b155156 = load i1, ptr @ieee80211_ibss_csa_beacon.__warned.2, align 1
  br i1 %.b155156, label %land.lhs.true60.do.end65_crit_edge, label %if.then62

land.lhs.true60.do.end65_crit_edge:               ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end65

if.then62:                                        ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ieee80211_ibss_csa_beacon.__warned.2, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 513, ptr noundef nonnull @.str.3) #9
  br label %do.end65

do.end65:                                         ; preds = %if.then62, %land.lhs.true60.do.end65_crit_edge, %land.lhs.true57.do.end65_crit_edge, %rcu_read_unlock.exit.do.end65_crit_edge
  %presp67 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 6, i32 31
  %29 = ptrtoint ptr %presp67 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %presp67, align 4
  %beacon_int = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 19
  %31 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %beacon_int, align 2
  %conv68 = zext i16 %32 to i32
  %basic_rates = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 24
  %33 = ptrtoint ptr %basic_rates to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %basic_rates, align 8
  %call72 = tail call fastcc ptr @ieee80211_ibss_build_presp(ptr noundef %sdata, i32 noundef %conv68, i32 noundef %34, i16 noundef zeroext %spec.select, i64 noundef %20, ptr noundef %chandef, ptr noundef null, ptr noundef %csa_settings)
  %tobool73.not = icmp eq ptr %call72, null
  br i1 %tobool73.not, label %do.end65.cleanup_crit_edge, label %do.body76

do.end65.cleanup_crit_edge:                       ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body76:                                        ; preds = %do.end65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !175
  %35 = ptrtoint ptr %presp67 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %call72, ptr %presp67, align 4
  %tobool115.not = icmp eq ptr %30, null
  br i1 %tobool115.not, label %do.body76.cleanup_crit_edge, label %do.end122

do.body76.cleanup_crit_edge:                      ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end122:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #11
  %callback_head = getelementptr inbounds %struct.beacon_data, ptr %30, i32 0, i32 7
  tail call void @kvfree_call_rcu(ptr noundef %callback_head, ptr noundef nonnull inttoptr (i32 28 to ptr)) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end122, %do.body76.cleanup_crit_edge, %do.end65.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -12, %do.end65.cleanup_crit_edge ], [ 256, %do.end122 ], [ 256, %do.body76.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_get_bss(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_put_bss(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ieee80211_ibss_build_presp(ptr noundef %sdata, i32 noundef %beacon_int, i32 noundef %basic_rates, i16 noundef zeroext %capability, i64 noundef %tsf, ptr noundef %chandef, ptr noundef writeonly %have_higher_than_11mbit, ptr noundef readonly %csa_settings) unnamed_addr #0 align 64 {
entry:
  %ht_cap194 = alloca %struct.ieee80211_sta_ht_cap, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57
  %local1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %ie_len = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %u, i32 0, i32 13
  %2 = ptrtoint ptr %ie_len to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ie_len, align 1
  %conv = zext i8 %3 to i32
  %add = add nuw nsw i32 %conv, 191
  %add2 = add nuw nsw i32 %conv, 227
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add2, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup257_crit_edge, label %if.end

entry.cleanup257_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup257

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr %struct.beacon_data, ptr %call9.i.i, i32 1
  %4 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr, ptr %call9.i.i, align 128
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 20480, ptr %add.ptr, align 4
  %da = getelementptr %struct.beacon_data, ptr %call9.i.i, i32 1, i32 1
  %6 = call ptr @memset(ptr %da, i32 255, i32 6)
  %sa = getelementptr inbounds %struct.ieee80211_mgmt, ptr %add.ptr, i32 0, i32 3
  %addr = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 2
  %7 = call ptr @memcpy(ptr %sa, ptr %addr, i32 6)
  %bssid = getelementptr %struct.beacon_data, ptr %call9.i.i, i32 1, i32 4
  %bssid7 = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %u, i32 0, i32 10
  %8 = call ptr @memcpy(ptr %bssid, ptr %bssid7, i32 6)
  %conv9 = trunc i32 %beacon_int to i16
  %9 = tail call i16 @llvm.bswap.i16(i16 %conv9)
  %u10 = getelementptr %struct.beacon_data, ptr %call9.i.i, i32 1, i32 6
  %beacon_int11 = getelementptr %struct.beacon_data, ptr %call9.i.i, i32 1, i32 7, i32 1
  %10 = ptrtoint ptr %beacon_int11 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %beacon_int11, align 4
  %11 = tail call i64 @llvm.bswap.i64(i64 %tsf)
  %12 = ptrtoint ptr %u10 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %11, ptr %u10, align 4
  %13 = tail call i16 @llvm.bswap.i16(i16 %capability)
  %capab_info = getelementptr inbounds %struct.anon.169, ptr %u10, i32 0, i32 2
  %14 = ptrtoint ptr %capab_info to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %capab_info, align 2
  %add.ptr14 = getelementptr %struct.beacon_data, ptr %call9.i.i, i32 2
  %incdec.ptr = getelementptr i8, ptr %add.ptr14, i32 1
  %15 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %add.ptr14, align 8
  %ssid_len = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 3
  %16 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ssid_len, align 4
  %incdec.ptr15 = getelementptr i8, ptr %incdec.ptr, i32 1
  %18 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %incdec.ptr, align 1
  %ssid = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 2, i32 3
  %conv18 = zext i8 %17 to i32
  %19 = call ptr @memcpy(ptr %incdec.ptr15, ptr %ssid, i32 %conv18)
  %add.ptr21 = getelementptr i8, ptr %incdec.ptr15, i32 %conv18
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wiphy, align 8
  %22 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chandef, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %arrayidx = getelementptr %struct.wiphy, ptr %21, i32 0, i32 53, i32 %25
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 4
  %width.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 1
  %28 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %29)
  %switch.selectcmp.i = icmp eq i32 %29, 7
  %switch.select.i = select i1 %switch.selectcmp.i, i32 64, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %29)
  %switch.selectcmp2.i = icmp eq i32 %29, 6
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 32, i32 %switch.select.i
  %switch.select.i397 = zext i1 %switch.selectcmp.i to i32
  %switch.select3.i399 = select i1 %switch.selectcmp2.i, i32 2, i32 %switch.select.i397
  %tobool24.not = icmp eq ptr %have_higher_than_11mbit, null
  br i1 %tobool24.not, label %if.end.if.end26_crit_edge, label %if.then25

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %have_higher_than_11mbit to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %have_higher_than_11mbit, align 1
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end.if.end26_crit_edge
  %n_bitrates = getelementptr inbounds %struct.ieee80211_supported_band, ptr %27, i32 0, i32 4
  %31 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %n_bitrates, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp413 = icmp sgt i32 %32, 0
  br i1 %cmp413, label %for.body.lr.ph, label %if.end26.for.end_crit_edge

if.end26.for.end_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end26
  %bitrates = getelementptr inbounds %struct.ieee80211_supported_band, ptr %27, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %rates.0417 = phi i32 [ 0, %for.body.lr.ph ], [ %rates.1, %for.inc.for.body_crit_edge ]
  %i.0415 = phi i32 [ 0, %for.body.lr.ph ], [ %inc41, %for.inc.for.body_crit_edge ]
  %rates_n.0414 = phi i32 [ 0, %for.body.lr.ph ], [ %rates_n.1, %for.inc.for.body_crit_edge ]
  %33 = ptrtoint ptr %bitrates to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bitrates, align 4
  %arrayidx28 = getelementptr %struct.ieee80211_rate, ptr %34, i32 %i.0415
  %35 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx28, align 4
  %and = and i32 %36, %switch.select3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %switch.select3.i)
  %cmp29.not = icmp eq i32 %and, %switch.select3.i
  br i1 %cmp29.not, label %if.end32, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end32:                                         ; preds = %for.body
  %bitrate = getelementptr %struct.ieee80211_rate, ptr %34, i32 %i.0415, i32 1
  %37 = ptrtoint ptr %bitrate to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %bitrate, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 111, i16 %38)
  %cmp36 = icmp ult i16 %38, 111
  %brmerge = or i1 %tobool24.not, %cmp36
  br i1 %brmerge, label %if.end32.if.end40_crit_edge, label %if.then39

if.end32.if.end40_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then39:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %have_higher_than_11mbit to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %have_higher_than_11mbit, align 1
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end32.if.end40_crit_edge
  %shl = shl nuw i32 1, %i.0415
  %or = or i32 %rates.0417, %shl
  %inc = add i32 %rates_n.0414, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end40, %for.body.for.inc_crit_edge
  %rates_n.1 = phi i32 [ %rates_n.0414, %for.body.for.inc_crit_edge ], [ %inc, %if.end40 ]
  %rates.1 = phi i32 [ %rates.0417, %for.body.for.inc_crit_edge ], [ %or, %if.end40 ]
  %inc41 = add nuw nsw i32 %i.0415, 1
  %40 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %n_bitrates, align 4
  %cmp = icmp slt i32 %inc41, %41
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end26.for.end_crit_edge
  %rates_n.0.lcssa = phi i32 [ 0, %if.end26.for.end_crit_edge ], [ %rates_n.1, %for.inc.for.end_crit_edge ]
  %rates.0.lcssa = phi i32 [ 0, %if.end26.for.end_crit_edge ], [ %rates.1, %for.inc.for.end_crit_edge ]
  %incdec.ptr42 = getelementptr i8, ptr %add.ptr21, i32 1
  %42 = ptrtoint ptr %add.ptr21 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %add.ptr21, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %rates_n.0.lcssa)
  %cmp43 = icmp sgt i32 %rates_n.0.lcssa, 8
  %43 = tail call i32 @llvm.smin.i32(i32 %rates_n.0.lcssa, i32 8)
  %conv45 = trunc i32 %43 to i8
  %incdec.ptr46 = getelementptr i8, ptr %incdec.ptr42, i32 1
  %44 = ptrtoint ptr %incdec.ptr42 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv45, ptr %incdec.ptr42, align 1
  %45 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %n_bitrates, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp49419 = icmp sgt i32 %46, 0
  br i1 %cmp49419, label %for.body51.lr.ph, label %for.end.for.end85_crit_edge

for.end.for.end85_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end85

for.body51.lr.ph:                                 ; preds = %for.end
  %mul = shl i32 5, %switch.select3.i399
  %bitrates52 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %27, i32 0, i32 1
  %add57 = add nsw i32 %mul, -1
  br label %for.body51

for.body51:                                       ; preds = %for.inc83.for.body51_crit_edge, %for.body51.lr.ph
  %rates_added.0423 = phi i32 [ 0, %for.body51.lr.ph ], [ %rates_added.1.ph, %for.inc83.for.body51_crit_edge ]
  %pos.0422 = phi ptr [ %incdec.ptr46, %for.body51.lr.ph ], [ %pos.1.ph, %for.inc83.for.body51_crit_edge ]
  %ri.0420 = phi i32 [ 0, %for.body51.lr.ph ], [ %inc84, %for.inc83.for.body51_crit_edge ]
  %shl60 = shl nuw i32 1, %ri.0420
  %and61 = and i32 %shl60, %rates.0.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %for.body51.for.inc83_crit_edge, label %if.end64

for.body51.for.inc83_crit_edge:                   ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc83

if.end64:                                         ; preds = %for.body51
  %47 = ptrtoint ptr %bitrates52 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bitrates52, align 4
  %bitrate54 = getelementptr %struct.ieee80211_rate, ptr %48, i32 %ri.0420, i32 1
  %49 = ptrtoint ptr %bitrate54 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %bitrate54, align 4
  %conv55 = zext i16 %50 to i32
  %sub = add nsw i32 %add57, %conv55
  %div = sdiv i32 %sub, %mul
  %and66 = and i32 %shl60, %basic_rates
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  %spec.select = select i1 %tobool67.not, i32 0, i32 128
  %or73 = or i32 %div, %spec.select
  %conv74 = trunc i32 %or73 to i8
  %incdec.ptr75 = getelementptr i8, ptr %pos.0422, i32 1
  %51 = ptrtoint ptr %pos.0422 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv74, ptr %pos.0422, align 1
  %inc76 = add i32 %rates_added.0423, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc76)
  %cmp77 = icmp eq i32 %inc76, 8
  br i1 %cmp77, label %cleanup, label %if.end64.for.inc83_crit_edge

if.end64.for.inc83_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc83

cleanup:                                          ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  %inc80 = add nuw nsw i32 %ri.0420, 1
  br label %for.end85

for.inc83:                                        ; preds = %if.end64.for.inc83_crit_edge, %for.body51.for.inc83_crit_edge
  %pos.1.ph = phi ptr [ %incdec.ptr75, %if.end64.for.inc83_crit_edge ], [ %pos.0422, %for.body51.for.inc83_crit_edge ]
  %rates_added.1.ph = phi i32 [ %inc76, %if.end64.for.inc83_crit_edge ], [ %rates_added.0423, %for.body51.for.inc83_crit_edge ]
  %inc84 = add nuw nsw i32 %ri.0420, 1
  %52 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %n_bitrates, align 4
  %cmp49 = icmp slt i32 %inc84, %53
  br i1 %cmp49, label %for.inc83.for.body51_crit_edge, label %for.inc83.for.end85_crit_edge

for.inc83.for.end85_crit_edge:                    ; preds = %for.inc83
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end85

for.inc83.for.body51_crit_edge:                   ; preds = %for.inc83
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body51

for.end85:                                        ; preds = %for.inc83.for.end85_crit_edge, %cleanup, %for.end.for.end85_crit_edge
  %ri.2 = phi i32 [ %inc80, %cleanup ], [ 0, %for.end.for.end85_crit_edge ], [ %inc84, %for.inc83.for.end85_crit_edge ]
  %pos.2 = phi ptr [ %incdec.ptr75, %cleanup ], [ %incdec.ptr46, %for.end.for.end85_crit_edge ], [ %pos.1.ph, %for.inc83.for.end85_crit_edge ]
  %band86 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %27, i32 0, i32 2
  %54 = ptrtoint ptr %band86 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %band86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp87 = icmp eq i32 %55, 0
  br i1 %cmp87, label %if.then89, label %for.end85.if.end96_crit_edge

for.end85.if.end96_crit_edge:                     ; preds = %for.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end96

if.then89:                                        ; preds = %for.end85
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr90 = getelementptr i8, ptr %pos.2, i32 1
  %56 = ptrtoint ptr %pos.2 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 3, ptr %pos.2, align 1
  %incdec.ptr91 = getelementptr i8, ptr %pos.2, i32 2
  %57 = ptrtoint ptr %incdec.ptr90 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %incdec.ptr90, align 1
  %58 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %chandef, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %center_freq, align 4
  %mul.i = mul i32 %61, 1000
  %call.i = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i) #9
  %conv94 = trunc i32 %call.i to i8
  %incdec.ptr95 = getelementptr i8, ptr %pos.2, i32 3
  %62 = ptrtoint ptr %incdec.ptr91 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv94, ptr %incdec.ptr91, align 1
  br label %if.end96

if.end96:                                         ; preds = %if.then89, %for.end85.if.end96_crit_edge
  %pos.3 = phi ptr [ %incdec.ptr95, %if.then89 ], [ %pos.2, %for.end85.if.end96_crit_edge ]
  %incdec.ptr97 = getelementptr i8, ptr %pos.3, i32 1
  %63 = ptrtoint ptr %pos.3 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 6, ptr %pos.3, align 1
  %incdec.ptr98 = getelementptr i8, ptr %pos.3, i32 2
  %64 = ptrtoint ptr %incdec.ptr97 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 2, ptr %incdec.ptr97, align 1
  %incdec.ptr99 = getelementptr i8, ptr %pos.3, i32 3
  %65 = ptrtoint ptr %incdec.ptr98 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %incdec.ptr98, align 1
  %incdec.ptr100 = getelementptr i8, ptr %pos.3, i32 4
  %66 = ptrtoint ptr %incdec.ptr99 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %incdec.ptr99, align 1
  %tobool101.not = icmp eq ptr %csa_settings, null
  br i1 %tobool101.not, label %if.end96.if.end121_crit_edge, label %if.then102

if.end96.if.end121_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end121

if.then102:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr103 = getelementptr i8, ptr %pos.3, i32 5
  %67 = ptrtoint ptr %incdec.ptr100 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 37, ptr %incdec.ptr100, align 1
  %incdec.ptr104 = getelementptr i8, ptr %pos.3, i32 6
  %68 = ptrtoint ptr %incdec.ptr103 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 3, ptr %incdec.ptr103, align 1
  %block_tx = getelementptr inbounds %struct.cfg80211_csa_settings, ptr %csa_settings, i32 0, i32 8
  %69 = ptrtoint ptr %block_tx to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %block_tx, align 1, !range !172
  %incdec.ptr109 = getelementptr i8, ptr %pos.3, i32 7
  %71 = ptrtoint ptr %incdec.ptr104 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %incdec.ptr104, align 1
  %72 = ptrtoint ptr %csa_settings to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %csa_settings, align 4
  %center_freq112 = getelementptr inbounds %struct.ieee80211_channel, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %center_freq112 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %center_freq112, align 4
  %mul.i400 = mul i32 %75, 1000
  %call.i401 = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i400) #9
  %conv114 = trunc i32 %call.i401 to i8
  %incdec.ptr115 = getelementptr i8, ptr %pos.3, i32 8
  %76 = ptrtoint ptr %incdec.ptr109 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv114, ptr %incdec.ptr109, align 1
  %77 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %call9.i.i, align 128
  %sub.ptr.lhs.cast = ptrtoint ptr %incdec.ptr115 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %78 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv117 = trunc i32 %sub.ptr.sub to i16
  %cntdwn_counter_offsets = getelementptr inbounds %struct.beacon_data, ptr %call9.i.i, i32 0, i32 5
  %79 = ptrtoint ptr %cntdwn_counter_offsets to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %conv117, ptr %cntdwn_counter_offsets, align 4
  %count = getelementptr inbounds %struct.cfg80211_csa_settings, ptr %csa_settings, i32 0, i32 9
  %80 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %count, align 2
  %incdec.ptr119 = getelementptr i8, ptr %pos.3, i32 9
  %82 = ptrtoint ptr %incdec.ptr115 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %incdec.ptr115, align 1
  %83 = load i8, ptr %count, align 2
  %cntdwn_current_counter = getelementptr inbounds %struct.beacon_data, ptr %call9.i.i, i32 0, i32 6
  %84 = ptrtoint ptr %cntdwn_current_counter to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %cntdwn_current_counter, align 8
  br label %if.end121

if.end121:                                        ; preds = %if.then102, %if.end96.if.end121_crit_edge
  %pos.4 = phi ptr [ %incdec.ptr119, %if.then102 ], [ %incdec.ptr100, %if.end96.if.end121_crit_edge ]
  br i1 %cmp43, label %if.then124, label %if.end121.if.end170_crit_edge

if.end121.if.end170_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end170

if.then124:                                       ; preds = %if.end121
  %incdec.ptr125 = getelementptr i8, ptr %pos.4, i32 1
  %85 = ptrtoint ptr %pos.4 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 50, ptr %pos.4, align 1
  %86 = trunc i32 %rates_n.0.lcssa to i8
  %conv127 = add i8 %86, -8
  %incdec.ptr128 = getelementptr i8, ptr %pos.4, i32 2
  %87 = ptrtoint ptr %incdec.ptr125 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv127, ptr %incdec.ptr125, align 1
  %88 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %n_bitrates, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %ri.2, i32 %89)
  %cmp131426 = icmp slt i32 %ri.2, %89
  br i1 %cmp131426, label %for.body133.lr.ph, label %if.then124.if.end170_crit_edge

if.then124.if.end170_crit_edge:                   ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end170

for.body133.lr.ph:                                ; preds = %if.then124
  %mul140 = shl i32 5, %switch.select3.i399
  %bitrates135 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %27, i32 0, i32 1
  %add141 = add nsw i32 %mul140, -1
  br label %for.body133

for.body133:                                      ; preds = %cleanup163.for.body133_crit_edge, %for.body133.lr.ph
  %pos.5429 = phi ptr [ %incdec.ptr128, %for.body133.lr.ph ], [ %pos.6, %cleanup163.for.body133_crit_edge ]
  %ri.3427 = phi i32 [ %ri.2, %for.body133.lr.ph ], [ %inc168, %cleanup163.for.body133_crit_edge ]
  %shl147 = shl nuw i32 1, %ri.3427
  %and148 = and i32 %shl147, %rates.0.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %tobool149.not = icmp eq i32 %and148, 0
  br i1 %tobool149.not, label %for.body133.cleanup163_crit_edge, label %if.end151

for.body133.cleanup163_crit_edge:                 ; preds = %for.body133
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup163

if.end151:                                        ; preds = %for.body133
  call void @__sanitizer_cov_trace_pc() #11
  %90 = ptrtoint ptr %bitrates135 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %bitrates135, align 4
  %bitrate137 = getelementptr %struct.ieee80211_rate, ptr %91, i32 %ri.3427, i32 1
  %92 = ptrtoint ptr %bitrate137 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %bitrate137, align 4
  %conv138 = zext i16 %93 to i32
  %sub142 = add nsw i32 %add141, %conv138
  %div145 = sdiv i32 %sub142, %mul140
  %and153 = and i32 %shl147, %basic_rates
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153)
  %tobool154.not = icmp eq i32 %and153, 0
  %spec.select393 = select i1 %tobool154.not, i32 0, i32 128
  %or160 = or i32 %div145, %spec.select393
  %conv161 = trunc i32 %or160 to i8
  %incdec.ptr162 = getelementptr i8, ptr %pos.5429, i32 1
  %94 = ptrtoint ptr %pos.5429 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv161, ptr %pos.5429, align 1
  br label %cleanup163

cleanup163:                                       ; preds = %if.end151, %for.body133.cleanup163_crit_edge
  %pos.6 = phi ptr [ %incdec.ptr162, %if.end151 ], [ %pos.5429, %for.body133.cleanup163_crit_edge ]
  %inc168 = add nuw nsw i32 %ri.3427, 1
  %95 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %n_bitrates, align 4
  %cmp131 = icmp slt i32 %inc168, %96
  br i1 %cmp131, label %cleanup163.for.body133_crit_edge, label %cleanup163.if.end170_crit_edge

cleanup163.if.end170_crit_edge:                   ; preds = %cleanup163
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end170

cleanup163.for.body133_crit_edge:                 ; preds = %cleanup163
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body133

if.end170:                                        ; preds = %cleanup163.if.end170_crit_edge, %if.then124.if.end170_crit_edge, %if.end121.if.end170_crit_edge
  %pos.7 = phi ptr [ %pos.4, %if.end121.if.end170_crit_edge ], [ %incdec.ptr128, %if.then124.if.end170_crit_edge ], [ %pos.6, %cleanup163.if.end170_crit_edge ]
  %97 = ptrtoint ptr %ie_len to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %ie_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool172.not = icmp eq i8 %98, 0
  br i1 %tobool172.not, label %if.end170.if.end179_crit_edge, label %if.then173

if.end170.if.end179_crit_edge:                    ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end179

if.then173:                                       ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #11
  %ie = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 4
  %99 = ptrtoint ptr %ie to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ie, align 4
  %conv175 = zext i8 %98 to i32
  %101 = call ptr @memcpy(ptr %pos.7, ptr %100, i32 %conv175)
  %102 = ptrtoint ptr %ie_len to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %ie_len, align 1
  %conv177 = zext i8 %103 to i32
  %add.ptr178 = getelementptr i8, ptr %pos.7, i32 %conv177
  br label %if.end179

if.end179:                                        ; preds = %if.then173, %if.end170.if.end179_crit_edge
  %pos.8 = phi ptr [ %add.ptr178, %if.then173 ], [ %pos.7, %if.end170.if.end179_crit_edge ]
  %104 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %width.i, align 4
  %106 = zext i32 %105 to i64
  call void @__sanitizer_cov_trace_switch(i64 %106, ptr @__sancov_gen_cov_switch_values)
  switch i32 %105, label %land.lhs.true190 [
    i32 0, label %if.end179.if.end217_crit_edge
    i32 6, label %if.end179.if.end217_crit_edge436
    i32 7, label %if.end179.if.end217_crit_edge437
  ]

if.end179.if.end217_crit_edge437:                 ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end217

if.end179.if.end217_crit_edge436:                 ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end217

if.end179.if.end217_crit_edge:                    ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end217

land.lhs.true190:                                 ; preds = %if.end179
  %ht_supported = getelementptr inbounds %struct.ieee80211_supported_band, ptr %27, i32 0, i32 5, i32 1
  %107 = ptrtoint ptr %ht_supported to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %ht_supported, align 2, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool191.not = icmp eq i8 %108, 0
  br i1 %tobool191.not, label %land.lhs.true190.if.end217_crit_edge, label %if.then193

land.lhs.true190.if.end217_crit_edge:             ; preds = %land.lhs.true190
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end217

if.then193:                                       ; preds = %land.lhs.true190
  %ht_cap = getelementptr inbounds %struct.ieee80211_supported_band, ptr %27, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %ht_cap194) #9
  %109 = call ptr @memset(ptr %ht_cap194, i32 255, i32 22)
  %110 = call ptr @memcpy(ptr %ht_cap194, ptr %ht_cap, i32 22)
  call void @ieee80211_apply_htcap_overrides(ptr noundef %sdata, ptr noundef nonnull %ht_cap194) #9
  %111 = ptrtoint ptr %ht_cap194 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %ht_cap194, align 2
  %call196 = call ptr @ieee80211_ie_build_ht_cap(ptr noundef %pos.8, ptr noundef nonnull %ht_cap194, i16 noundef zeroext %112) #9
  %call198 = call ptr @ieee80211_ie_build_ht_oper(ptr noundef %call196, ptr noundef %ht_cap, ptr noundef %chandef, i16 noundef zeroext 0, i1 noundef zeroext false) #9
  %113 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %width.i, align 4
  %.off = add i32 %114, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch394 = icmp ult i32 %.off, 2
  br i1 %switch394, label %if.then193.if.end216_crit_edge, label %land.lhs.true206

if.then193.if.end216_crit_edge:                   ; preds = %if.then193
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end216

land.lhs.true206:                                 ; preds = %if.then193
  %vht_cap = getelementptr inbounds %struct.ieee80211_supported_band, ptr %27, i32 0, i32 6
  %115 = ptrtoint ptr %vht_cap to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %vht_cap, align 4, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool207.not = icmp eq i8 %116, 0
  br i1 %tobool207.not, label %land.lhs.true206.if.end216_crit_edge, label %if.then209

land.lhs.true206.if.end216_crit_edge:             ; preds = %land.lhs.true206
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end216

if.then209:                                       ; preds = %land.lhs.true206
  call void @__sanitizer_cov_trace_pc() #11
  %cap212 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %27, i32 0, i32 6, i32 1
  %117 = ptrtoint ptr %cap212 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %cap212, align 4
  %call213 = call ptr @ieee80211_ie_build_vht_cap(ptr noundef %call198, ptr noundef %vht_cap, i32 noundef %118) #9
  %call215 = call ptr @ieee80211_ie_build_vht_oper(ptr noundef %call213, ptr noundef %vht_cap, ptr noundef %chandef) #9
  br label %if.end216

if.end216:                                        ; preds = %if.then209, %land.lhs.true206.if.end216_crit_edge, %if.then193.if.end216_crit_edge
  %pos.9 = phi ptr [ %call215, %if.then209 ], [ %call198, %land.lhs.true206.if.end216_crit_edge ], [ %call198, %if.then193.if.end216_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %ht_cap194) #9
  br label %if.end217

if.end217:                                        ; preds = %if.end216, %land.lhs.true190.if.end217_crit_edge, %if.end179.if.end217_crit_edge, %if.end179.if.end217_crit_edge436, %if.end179.if.end217_crit_edge437
  %pos.10 = phi ptr [ %pos.9, %if.end216 ], [ %pos.8, %land.lhs.true190.if.end217_crit_edge ], [ %pos.8, %if.end179.if.end217_crit_edge ], [ %pos.8, %if.end179.if.end217_crit_edge436 ], [ %pos.8, %if.end179.if.end217_crit_edge437 ]
  %queues = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 11
  %119 = ptrtoint ptr %queues to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %queues, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %120)
  %cmp220 = icmp ugt i16 %120, 3
  br i1 %cmp220, label %if.then222, label %if.end217.if.end224_crit_edge

if.end217.if.end224_crit_edge:                    ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end224

if.then222:                                       ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #11
  %call223 = call ptr @ieee80211_add_wmm_info_ie(ptr noundef %pos.10, i8 noundef zeroext 0) #9
  br label %if.end224

if.end224:                                        ; preds = %if.then222, %if.end217.if.end224_crit_edge
  %pos.11 = phi ptr [ %call223, %if.then222 ], [ %pos.10, %if.end217.if.end224_crit_edge ]
  %121 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %call9.i.i, align 128
  %sub.ptr.lhs.cast226 = ptrtoint ptr %pos.11 to i32
  %sub.ptr.rhs.cast227 = ptrtoint ptr %122 to i32
  %sub.ptr.sub228 = sub i32 %sub.ptr.lhs.cast226, %sub.ptr.rhs.cast227
  %head_len = getelementptr inbounds %struct.beacon_data, ptr %call9.i.i, i32 0, i32 2
  %123 = ptrtoint ptr %head_len to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %sub.ptr.sub228, ptr %head_len, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub228, i32 %add)
  %cmp230 = icmp sgt i32 %sub.ptr.sub228, %add
  br i1 %cmp230, label %do.end, label %if.end224.cleanup257_crit_edge, !prof !171

if.end224.cleanup257_crit_edge:                   ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup257

do.end:                                           ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 209, i32 noundef 9, ptr noundef null) #9
  call void @kfree(ptr noundef nonnull %call9.i.i) #9
  br label %cleanup257

cleanup257:                                       ; preds = %do.end, %if.end224.cleanup257_crit_edge, %entry.cleanup257_crit_edge
  %retval.0 = phi ptr [ null, %do.end ], [ null, %entry.cleanup257_crit_edge ], [ %call9.i.i, %if.end224.cleanup257_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_ibss_finish_csa(ptr noundef %sdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.sdata_assert_lock.exit_crit_edge, label %land.rhs.i

entry.sdata_assert_lock.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdata_assert_lock.exit

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 1, i32 7, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.sdata_assert_lock.exit_crit_edge, !prof !171

land.rhs.i.sdata_assert_lock.exit_crit_edge:      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdata_assert_lock.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1050, i32 noundef 9, ptr noundef null) #9
  br label %sdata_assert_lock.exit

sdata_assert_lock.exit:                           ; preds = %do.end.i, %land.rhs.i.sdata_assert_lock.exit_crit_edge, %entry.sdata_assert_lock.exit_crit_edge
  %bssid = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %u, i32 0, i32 10
  %1 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %bssid, align 4
  %add.ptr.i = getelementptr %struct.ieee80211_if_ibss, ptr %u, i32 0, i32 10, i32 4
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr.i, align 2
  %conv.i = zext i16 %4 to i32
  %or.i = or i32 %2, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %sdata_assert_lock.exit.if.end12_crit_edge, label %if.then

sdata_assert_lock.exit.if.end12_crit_edge:        ; preds = %sdata_assert_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then:                                          ; preds = %sdata_assert_lock.exit
  %local = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %5 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %local, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wiphy, align 8
  %chandef = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 5
  %9 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chandef, align 4
  %ssid = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 2, i32 3
  %ssid_len = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 3
  %11 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ssid_len, align 4
  %conv = zext i8 %12 to i32
  %privacy = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %u, i32 0, i32 6
  %13 = ptrtoint ptr %privacy to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %privacy, align 2, !range !172
  %15 = xor i8 %14, 1
  %16 = zext i8 %15 to i32
  %call5 = tail call ptr @cfg80211_get_bss(ptr noundef %8, ptr noundef %10, ptr noundef %bssid, ptr noundef %ssid, i32 noundef %conv, i32 noundef 2, i32 noundef %16) #9
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.then.if.end12_crit_edge, label %if.then7

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %csa_chandef = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 31
  %17 = ptrtoint ptr %csa_chandef to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %csa_chandef, align 8
  %19 = ptrtoint ptr %call5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %call5, align 4
  %20 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %local, align 4
  %wiphy11 = getelementptr inbounds %struct.ieee80211_hw, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %wiphy11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wiphy11, align 8
  tail call void @cfg80211_put_bss(ptr noundef %23, ptr noundef nonnull %call5) #9
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %if.then.if.end12_crit_edge, %sdata_assert_lock.exit.if.end12_crit_edge
  %chandef13 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 5
  %csa_chandef14 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 31
  %24 = call ptr @memcpy(ptr %chandef13, ptr %csa_chandef14, i32 28)
  %call15 = tail call i32 @ieee80211_ibss_csa_beacon(ptr noundef %sdata, ptr noundef null)
  ret i32 %call15
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_ibss_stop(ptr noundef %sdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %csa_connection_drop_work = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 1
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %csa_connection_drop_work) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_ibss_rx_no_sta(ptr noundef %sdata, ptr nocapture noundef readonly %bssid, ptr noundef %addr, i32 noundef %supp_rates) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57
  %local1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %num_sta = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %num_sta to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_sta, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %3)
  %cmp = icmp ugt i32 %3, 127
  br i1 %cmp, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  %call = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name, ptr noundef %addr) #13
  br label %cleanup

if.end7:                                          ; preds = %entry
  %state = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 23
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp8 = icmp eq i32 %5, 0
  br i1 %cmp8, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %bssid12 = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %u, i32 0, i32 10
  %6 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bssid, align 4
  %8 = ptrtoint ptr %bssid12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bssid12, align 4
  %xor.i = xor i32 %9, %7
  %add.ptr.i = getelementptr i8, ptr %bssid, i32 4
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.ieee80211_if_ibss, ptr %u, i32 0, i32 10, i32 4
  %12 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %13, %11
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.end16, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  %14 = tail call i32 @llvm.read_register.i32(metadata !161) #9
  %and.i.i.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %17, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !173
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %if.end16.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end16.rcu_read_lock.exit_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end16
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end16.rcu_read_lock.exit_crit_edge
  %chanctx_conf21 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 9
  %18 = ptrtoint ptr %chanctx_conf21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %chanctx_conf21, align 4
  %call23 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end32_crit_edge

rcu_read_lock.exit.do.end32_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end32

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call25 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %land.lhs.true.do.end32_crit_edge, label %land.lhs.true27

land.lhs.true.do.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end32

land.lhs.true27:                                  ; preds = %land.lhs.true
  %.b120 = load i1, ptr @ieee80211_ibss_rx_no_sta.__warned, align 1
  br i1 %.b120, label %land.lhs.true27.do.end32_crit_edge, label %if.then29

land.lhs.true27.do.end32_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end32

if.then29:                                        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ieee80211_ibss_rx_no_sta.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1223, ptr noundef nonnull @.str.1) #9
  br label %do.end32

do.end32:                                         ; preds = %if.then29, %land.lhs.true27.do.end32_crit_edge, %land.lhs.true.do.end32_crit_edge, %rcu_read_lock.exit.do.end32_crit_edge
  %tobool34.not = icmp eq ptr %19, null
  br i1 %tobool34.not, label %land.rhs, label %if.end79

land.rhs:                                         ; preds = %do.end32
  %.b118119 = load i1, ptr @ieee80211_ibss_rx_no_sta.__already_done, align 1
  br i1 %.b118119, label %land.rhs.if.then78_crit_edge, label %if.then43, !prof !176

land.rhs.if.then78_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then78

if.then43:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ieee80211_ibss_rx_no_sta.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1224, i32 noundef 9, ptr noundef null) #9
  br label %if.then78

if.then78:                                        ; preds = %if.then43, %land.rhs.if.then78_crit_edge
  %call.i122 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i122, label %if.then78.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i125

if.then78.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i125:                               ; preds = %if.then78
  %call1.i123 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i123)
  %tobool.not.i124 = icmp eq i32 %call1.i123, 0
  br i1 %tobool.not.i124, label %land.lhs.true.i125.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i127

land.lhs.true.i125.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i125
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i127:                              ; preds = %land.lhs.true.i125
  %.b4.i126 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i126, label %land.lhs.true2.i127.rcu_read_unlock.exit_crit_edge, label %if.then.i128

land.lhs.true2.i127.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i127
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i128:                                     ; preds = %land.lhs.true2.i127
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i128, %land.lhs.true2.i127.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i125.rcu_read_unlock.exit_crit_edge, %if.then78.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !174
  %20 = tail call i32 @llvm.read_register.i32(metadata !161) #9
  %and.i.i.i.i.i129 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i129 to ptr
  %preempt_count.i.i.i.i130 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i130 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i130, align 4
  %sub.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i130, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %cleanup

if.end79:                                         ; preds = %do.end32
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %19, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %width.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %19, i32 0, i32 1
  %28 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %29)
  %switch.selectcmp.i = icmp eq i32 %29, 7
  %switch.select.i = zext i1 %switch.selectcmp.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %29)
  %switch.selectcmp2.i = icmp eq i32 %29, 6
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 2, i32 %switch.select.i
  %call.i131 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i131, label %if.end79.rcu_read_unlock.exit141_crit_edge, label %land.lhs.true.i134

if.end79.rcu_read_unlock.exit141_crit_edge:       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit141

land.lhs.true.i134:                               ; preds = %if.end79
  %call1.i132 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i132)
  %tobool.not.i133 = icmp eq i32 %call1.i132, 0
  br i1 %tobool.not.i133, label %land.lhs.true.i134.rcu_read_unlock.exit141_crit_edge, label %land.lhs.true2.i136

land.lhs.true.i134.rcu_read_unlock.exit141_crit_edge: ; preds = %land.lhs.true.i134
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit141

land.lhs.true2.i136:                              ; preds = %land.lhs.true.i134
  %.b4.i135 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i135, label %land.lhs.true2.i136.rcu_read_unlock.exit141_crit_edge, label %if.then.i137

land.lhs.true2.i136.rcu_read_unlock.exit141_crit_edge: ; preds = %land.lhs.true2.i136
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit141

if.then.i137:                                     ; preds = %land.lhs.true2.i136
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #9
  br label %rcu_read_unlock.exit141

rcu_read_unlock.exit141:                          ; preds = %if.then.i137, %land.lhs.true2.i136.rcu_read_unlock.exit141_crit_edge, %land.lhs.true.i134.rcu_read_unlock.exit141_crit_edge, %if.end79.rcu_read_unlock.exit141_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !174
  %30 = tail call i32 @llvm.read_register.i32(metadata !161) #9
  %and.i.i.i.i.i138 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i138 to ptr
  %preempt_count.i.i.i.i139 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i.i.i139 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i.i.i139, align 4
  %sub.i.i.i140 = add i32 %33, -1
  store volatile i32 %sub.i.i.i140, ptr %preempt_count.i.i.i.i139, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %call83 = tail call ptr @sta_info_alloc(ptr noundef %sdata, ptr noundef %addr, i32 noundef 2592) #9
  %tobool84.not = icmp eq ptr %call83, null
  br i1 %tobool84.not, label %rcu_read_unlock.exit141.cleanup_crit_edge, label %if.end86

rcu_read_unlock.exit141.cleanup_crit_edge:        ; preds = %rcu_read_unlock.exit141
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end86:                                         ; preds = %rcu_read_unlock.exit141
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %34 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wiphy, align 8
  %arrayidx = getelementptr %struct.wiphy, ptr %35, i32 0, i32 53, i32 %27
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx, align 4
  %call87 = tail call i32 @ieee80211_mandatory_rates(ptr noundef %37, i32 noundef %switch.select3.i) #9
  %or = or i32 %call87, %supp_rates
  %sta88 = getelementptr inbounds %struct.sta_info, ptr %call83, i32 0, i32 48
  %arrayidx90 = getelementptr [6 x i32], ptr %sta88, i32 0, i32 %27
  %38 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or, ptr %arrayidx90, align 4
  %incomplete_lock = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 20, i32 0, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %incomplete_lock) #9
  %incomplete_stations = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 21, i32 1, i32 4
  %39 = ptrtoint ptr %incomplete_stations to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %incomplete_stations, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call83, ptr noundef %incomplete_stations, ptr noundef %40) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end86.list_add.exit_crit_edge

if.end86.list_add.exit_crit_edge:                 ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call83, ptr %prev1.i.i, align 4
  %42 = ptrtoint ptr %call83 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %40, ptr %call83, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call83, i32 0, i32 1
  %43 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %incomplete_stations, ptr %prev3.i.i, align 4
  %44 = ptrtoint ptr %incomplete_stations to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %call83, ptr %incomplete_stations, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end86.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %incomplete_lock) #9
  %work = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 40
  tail call void @ieee80211_queue_work(ptr noundef %1, ptr noundef %work) #9
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %rcu_read_unlock.exit141.cleanup_crit_edge, %rcu_read_unlock.exit, %if.end10.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sta_info_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_mandatory_rates(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_ibss_rx_queued_mgmt(ptr noundef %sdata, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %htcap_ie.i.i.i = alloca %struct.ieee80211_ht_cap, align 2
  %chandef121.i.i.i = alloca %struct.cfg80211_chan_def, align 4
  %cap_ie.i.i.i = alloca %struct.ieee80211_vht_cap, align 4
  %cap.i.i.i = alloca %struct.ieee80211_sta_vht_cap, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  %mtx.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 1, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mtx.i, i32 noundef 0) #9
  %ssid_len = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 3
  %4 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ssid_len, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.mgmt_out_crit_edge, label %if.end

entry.mgmt_out_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mgmt_out

if.end:                                           ; preds = %entry
  %6 = lshr i16 %3, 8
  %7 = and i16 %6, 240
  %and = zext i16 %7 to i32
  %8 = add nsw i32 %and, -64
  %9 = lshr exact i32 %8, 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %9, label %if.end.mgmt_out_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %if.end.sw.bb1_crit_edge
    i32 4, label %if.end.sw.bb1_crit_edge88
    i32 7, label %sw.bb2
    i32 8, label %sw.bb4
    i32 9, label %sw.bb6
  ]

if.end.sw.bb1_crit_edge88:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

if.end.sw.bb1_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

if.end.mgmt_out_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %mgmt_out

sw.bb:                                            ; preds = %if.end
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %u.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57
  %local1.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %13 = ptrtoint ptr %local1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %local1.i, align 4
  %len2.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %15 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len2.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %17 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i, label %sw.bb.sdata_assert_lock.exit.i_crit_edge, label %land.rhs.i.i

sw.bb.sdata_assert_lock.exit.i_crit_edge:         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdata_assert_lock.exit.i

land.rhs.i.i:                                     ; preds = %sw.bb
  %dep_map.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 1, i32 7, i32 5
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.sdata_assert_lock.exit.i_crit_edge, !prof !171

land.rhs.i.i.sdata_assert_lock.exit.i_crit_edge:  ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdata_assert_lock.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1050, i32 noundef 9, ptr noundef null) #9
  br label %sdata_assert_lock.exit.i

sdata_assert_lock.exit.i:                         ; preds = %do.end.i.i, %land.rhs.i.i.sdata_assert_lock.exit.i_crit_edge, %sw.bb.sdata_assert_lock.exit.i_crit_edge
  %dep_map.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 1, i32 7, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %sdata_assert_lock.exit.i.do.end.i_crit_edge

sdata_assert_lock.exit.i.do.end.i_crit_edge:      ; preds = %sdata_assert_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %sdata_assert_lock.exit.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b151.i = load i1, ptr @ieee80211_rx_mgmt_probe_req.__warned, align 1
  br i1 %.b151.i, label %land.lhs.true5.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true5.i.do.end.i_crit_edge:              ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ieee80211_rx_mgmt_probe_req.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1533, ptr noundef nonnull @.str.3) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true5.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %sdata_assert_lock.exit.i.do.end.i_crit_edge
  %presp7.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 6, i32 31
  %18 = ptrtoint ptr %presp7.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %presp7.i, align 4
  %state.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 23
  %20 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp.not.i = icmp ne i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %16)
  %cmp8.i = icmp slt i32 %16, 26
  %or.cond.i = select i1 %cmp.not.i, i1 true, i1 %cmp8.i
  %tobool10.not.i = icmp eq ptr %19, null
  %or.cond152.i = select i1 %or.cond.i, i1 true, i1 %tobool10.not.i
  br i1 %or.cond152.i, label %do.end.i.mgmt_out_crit_edge, label %if.end12.i

do.end.i.mgmt_out_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mgmt_out

if.end12.i:                                       ; preds = %do.end.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.19, i32 noundef 589) #9
  tail call fastcc void @trace_drv_tx_last_beacon(ptr noundef %14) #9
  %ops.i.i = getelementptr inbounds %struct.ieee80211_local, ptr %14, i32 0, i32 8
  %22 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i.i, align 4
  %tx_last_beacon.i.i = getelementptr inbounds %struct.ieee80211_ops, ptr %23, i32 0, i32 46
  %24 = ptrtoint ptr %tx_last_beacon.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tx_last_beacon.i.i, align 4
  %tobool.not.i153.i = icmp eq ptr %25, null
  br i1 %tobool.not.i153.i, label %if.end12.i.drv_tx_last_beacon.exit.i_crit_edge, label %if.then.i.i

if.end12.i.drv_tx_last_beacon.exit.i_crit_edge:   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drv_tx_last_beacon.exit.i

if.then.i.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i154.i = tail call i32 %25(ptr noundef %14) #9
  br label %drv_tx_last_beacon.exit.i

drv_tx_last_beacon.exit.i:                        ; preds = %if.then.i.i, %if.end12.i.drv_tx_last_beacon.exit.i_crit_edge
  %ret.0.i.i = phi i32 [ %call.i154.i, %if.then.i.i ], [ 0, %if.end12.i.drv_tx_last_beacon.exit.i_crit_edge ]
  tail call fastcc void @trace_drv_return_int(ptr noundef %14, i32 noundef %ret.0.i.i) #9
  %name.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  %sa.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %12, i32 0, i32 3
  %da.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %12, i32 0, i32 2
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.15, ptr noundef %name.i, ptr noundef %sa.i, ptr noundef %da.i) #9
  %bssid.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %12, i32 0, i32 4
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.16, ptr noundef %name.i, ptr noundef %bssid.i, i32 noundef %ret.0.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i)
  %tobool19.not.i = icmp eq i32 %ret.0.i.i, 0
  br i1 %tobool19.not.i, label %land.lhs.true20.i, label %drv_tx_last_beacon.exit.i.if.end25.i_crit_edge

drv_tx_last_beacon.exit.i.if.end25.i_crit_edge:   ; preds = %drv_tx_last_beacon.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.i

land.lhs.true20.i:                                ; preds = %drv_tx_last_beacon.exit.i
  %26 = ptrtoint ptr %da.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %da.i, align 4
  %28 = and i32 %27, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.i.not.i = icmp eq i32 %28, 0
  br i1 %tobool.i.not.i, label %land.lhs.true20.i.if.end25.i_crit_edge, label %land.lhs.true20.i.mgmt_out_crit_edge

land.lhs.true20.i.mgmt_out_crit_edge:             ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mgmt_out

land.lhs.true20.i.if.end25.i_crit_edge:           ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.i

if.end25.i:                                       ; preds = %land.lhs.true20.i.if.end25.i_crit_edge, %drv_tx_last_beacon.exit.i.if.end25.i_crit_edge
  %bssid28.i = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %u.i, i32 0, i32 10
  %29 = ptrtoint ptr %bssid.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bssid.i, align 4
  %31 = ptrtoint ptr %bssid28.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bssid28.i, align 4
  %xor.i.i = xor i32 %32, %30
  %add.ptr.i.i = getelementptr %struct.ieee80211_mgmt, ptr %12, i32 0, i32 4, i32 4
  %33 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.ieee80211_if_ibss, ptr %u.i, i32 0, i32 10, i32 4
  %35 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %36, %34
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.end25.i.if.end36.i_crit_edge, label %land.lhs.true31.i

if.end25.i.if.end36.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.i

land.lhs.true31.i:                                ; preds = %if.end25.i
  %37 = ptrtoint ptr %bssid.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %bssid.i, align 2
  %add.ptr1.i155.i = getelementptr %struct.ieee80211_mgmt, ptr %12, i32 0, i32 4, i32 2
  %39 = ptrtoint ptr %add.ptr1.i155.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %add.ptr1.i155.i, align 2
  %and9.i.i = and i16 %38, %34
  %and510.i.i = and i16 %and9.i.i, %40
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i.i)
  %cmp.i156.i = icmp eq i16 %and510.i.i, -1
  br i1 %cmp.i156.i, label %land.lhs.true31.i.if.end36.i_crit_edge, label %land.lhs.true31.i.mgmt_out_crit_edge

land.lhs.true31.i.mgmt_out_crit_edge:             ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mgmt_out

land.lhs.true31.i.if.end36.i_crit_edge:           ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.i

if.end36.i:                                       ; preds = %land.lhs.true31.i.if.end36.i_crit_edge, %if.end25.i.if.end36.i_crit_edge
  %variable.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %12, i32 0, i32 6
  %41 = ptrtoint ptr %variable.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %variable.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp39.not.i = icmp eq i8 %42, 0
  br i1 %cmp39.not.i, label %lor.lhs.false41.i, label %if.end36.i.if.then48.i_crit_edge

if.end36.i.if.then48.i_crit_edge:                 ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then48.i

lor.lhs.false41.i:                                ; preds = %if.end36.i
  %add.ptr.i = getelementptr i8, ptr %12, i32 %16
  %add.ptr42.i = getelementptr %struct.ieee80211_mgmt, ptr %12, i32 0, i32 6, i32 0, i32 1
  %arrayidx43.i = getelementptr i8, ptr %variable.i, i32 1
  %43 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx43.i, align 1
  %conv44.i = zext i8 %44 to i32
  %add.ptr45.i = getelementptr i8, ptr %add.ptr42.i, i32 %conv44.i
  %cmp46.i = icmp ugt ptr %add.ptr45.i, %add.ptr.i
  br i1 %cmp46.i, label %lor.lhs.false41.i.if.then48.i_crit_edge, label %if.end53.i

lor.lhs.false41.i.if.then48.i_crit_edge:          ; preds = %lor.lhs.false41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then48.i

if.then48.i:                                      ; preds = %lor.lhs.false41.i.if.then48.i_crit_edge, %if.end36.i.if.then48.i_crit_edge
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.17, ptr noundef %name.i, ptr noundef %sa.i) #9
  br label %mgmt_out

if.end53.i:                                       ; preds = %lor.lhs.false41.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp56.not.i = icmp eq i8 %44, 0
  br i1 %cmp56.not.i, label %if.end53.i.if.end72.i_crit_edge, label %land.lhs.true58.i

if.end53.i.if.end72.i_crit_edge:                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72.i

land.lhs.true58.i:                                ; preds = %if.end53.i
  %45 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %ssid_len, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %44, i8 %46)
  %cmp62.not.i = icmp eq i8 %44, %46
  br i1 %cmp62.not.i, label %lor.lhs.false64.i, label %land.lhs.true58.i.mgmt_out_crit_edge

land.lhs.true58.i.mgmt_out_crit_edge:             ; preds = %land.lhs.true58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mgmt_out

lor.lhs.false64.i:                                ; preds = %land.lhs.true58.i
  %ssid.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 2, i32 3
  %bcmp.i = tail call i32 @bcmp(ptr %add.ptr42.i, ptr %ssid.i, i32 %conv44.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool70.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool70.not.i, label %lor.lhs.false64.i.if.end72.i_crit_edge, label %lor.lhs.false64.i.mgmt_out_crit_edge

lor.lhs.false64.i.mgmt_out_crit_edge:             ; preds = %lor.lhs.false64.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mgmt_out

lor.lhs.false64.i.if.end72.i_crit_edge:           ; preds = %lor.lhs.false64.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72.i

if.end72.i:                                       ; preds = %lor.lhs.false64.i.if.end72.i_crit_edge, %if.end53.i.if.end72.i_crit_edge
  %tx_headroom.i = getelementptr inbounds %struct.ieee80211_local, ptr %14, i32 0, i32 41
  %47 = ptrtoint ptr %tx_headroom.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tx_headroom.i, align 8
  %head_len.i = getelementptr inbounds %struct.beacon_data, ptr %19, i32 0, i32 2
  %49 = ptrtoint ptr %head_len.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %head_len.i, align 4
  %add.i = add i32 %50, %48
  %call.i.i157.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add.i, i32 noundef 2592) #9
  %tobool74.not.i = icmp eq ptr %call.i.i157.i, null
  br i1 %tobool74.not.i, label %if.end72.i.mgmt_out_crit_edge, label %if.end76.i

if.end72.i.mgmt_out_crit_edge:                    ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mgmt_out

if.end76.i:                                       ; preds = %if.end72.i
  %51 = ptrtoint ptr %tx_headroom.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tx_headroom.i, align 8
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i157.i, i32 0, i32 19
  %53 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i158.i = getelementptr i8, ptr %54, i32 %52
  store ptr %add.ptr.i158.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i157.i, i32 0, i32 16
  %55 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i159.i = getelementptr i8, ptr %56, i32 %52
  store ptr %add.ptr1.i159.i, ptr %tail.i.i, align 8
  %57 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %19, align 4
  %59 = ptrtoint ptr %head_len.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %head_len.i, align 4
  %call.i160.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i157.i, i32 noundef %60) #9
  %61 = call ptr @memcpy(ptr %call.i160.i, ptr %58, i32 %60)
  %62 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data.i.i, align 4
  %da81.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %63, i32 0, i32 2
  %64 = call ptr @memcpy(ptr %da81.i, ptr %sa.i, i32 6)
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.18, ptr noundef %name.i, ptr noundef %sa.i) #9
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i157.i, i32 0, i32 3
  %65 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cb.i.i, align 8
  %or.i = or i32 %66, 65536
  store i32 %or.i, ptr %cb.i.i, align 8
  %67 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx43.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %cmp92.i = icmp eq i8 %68, 0
  br i1 %cmp92.i, label %if.then94.i, label %if.end76.i.if.end98.i_crit_edge

if.end76.i.if.end98.i_crit_edge:                  ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98.i

if.then94.i:                                      ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #11
  %or97.i = or i32 %66, 65540
  %69 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %or97.i, ptr %cb.i.i, align 8
  br label %if.end98.i

if.end98.i:                                       ; preds = %if.then94.i, %if.end76.i.if.end98.i_crit_edge
  tail call fastcc void @ieee80211_tx_skb(ptr noundef %sdata, ptr noundef nonnull %call.i.i157.i) #9
  br label %mgmt_out

sw.bb1:                                           ; preds = %if.end.sw.bb1_crit_edge, %if.end.sw.bb1_crit_edge88
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %70 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %71)
  %cmp.i = icmp ult i32 %71, 36
  br i1 %cmp.i, label %sw.bb1.mgmt_out_crit_edge, label %if.end.i

sw.bb1.mgmt_out_crit_edge:                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %mgmt_out

if.end.i:                                         ; preds = %sw.bb1
  %variable.i50 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %1, i32 0, i32 6, i32 1, i32 2
  %sub.i = add i32 %71, -36
  %bssid.i51 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %1, i32 0, i32 4
  %call.i.i52 = tail call ptr @ieee802_11_parse_elems_crc(ptr noundef %variable.i50, i32 noundef %sub.i, i1 noundef zeroext false, i64 noundef 0, i32 noundef 0, ptr noundef %bssid.i51, ptr noundef null) #9
  %tobool.not.i53 = icmp eq ptr %call.i.i52, null
  br i1 %tobool.not.i53, label %if.end.i.mgmt_out_crit_edge, label %if.then5.i

if.end.i.mgmt_out_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mgmt_out

if.then5.i:                                       ; preds = %if.end.i
  %local1.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %72 = ptrtoint ptr %local1.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %local1.i.i, align 4
  %band2.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 36
  %74 = ptrtoint ptr %band2.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %band2.i.i, align 4
  %conv.i.i = zext i8 %75 to i32
  %wiphy.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %73, i32 0, i32 1
  %76 = ptrtoint ptr %wiphy.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %wiphy.i.i, align 8
  %freq.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %78 = ptrtoint ptr %freq.i.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %bf.load.i.i = load i16, ptr %freq.i.i, align 4
  %bf.lshr.i.i = lshr i16 %bf.load.i.i, 3
  %conv3.i.i = zext i16 %bf.lshr.i.i to i32
  %mul.i.i.i = mul nuw nsw i32 %conv3.i.i, 1000
  %call.i.i.i54 = tail call ptr @ieee80211_get_channel_khz(ptr noundef %77, i32 noundef %mul.i.i.i) #9
  %tobool.not.i.i55 = icmp eq ptr %call.i.i.i54, null
  br i1 %tobool.not.i.i55, label %if.then5.i.ieee80211_rx_bss_info.exit.i_crit_edge, label %if.end.i.i

if.then5.i.ieee80211_rx_bss_info.exit.i_crit_edge: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ieee80211_rx_bss_info.exit.i

if.end.i.i:                                       ; preds = %if.then5.i
  %79 = ptrtoint ptr %band2.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %band2.i.i, align 4
  %conv.i.i.i = zext i8 %80 to i32
  %81 = ptrtoint ptr %local1.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %local1.i.i, align 4
  %vif.i.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59
  %83 = ptrtoint ptr %vif.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %vif.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %84)
  %cmp.not.i.i.i = icmp eq i32 %84, 1
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %if.end.i.i.ieee80211_update_sta_info.exit.i.i_crit_edge

if.end.i.i.ieee80211_update_sta_info.exit.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ieee80211_update_sta_info.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end.i.i
  %u.i.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57
  %bssid4.i.i.i = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %u.i.i.i, i32 0, i32 10
  %85 = ptrtoint ptr %bssid.i51 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %bssid.i51, align 4
  %87 = ptrtoint ptr %bssid4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %bssid4.i.i.i, align 4
  %xor.i.i.i.i = xor i32 %88, %86
  %add.ptr.i.i.i.i = getelementptr %struct.ieee80211_mgmt, ptr %1, i32 0, i32 4, i32 4
  %89 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %add.ptr.i.i.i.i, align 2
  %add.ptr1.i.i.i.i = getelementptr %struct.ieee80211_if_ibss, ptr %u.i.i.i, i32 0, i32 10, i32 4
  %91 = ptrtoint ptr %add.ptr1.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %add.ptr1.i.i.i.i, align 2
  %xor37.i.i.i.i = xor i16 %92, %90
  %xor3.i.i.i.i = zext i16 %xor37.i.i.i.i to i32
  %or.i.i.i.i = or i32 %xor.i.i.i.i, %xor3.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %or.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.end7.i.i.i, label %if.end.i.i.i.ieee80211_update_sta_info.exit.i.i_crit_edge

if.end.i.i.i.ieee80211_update_sta_info.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ieee80211_update_sta_info.exit.i.i

if.end7.i.i.i:                                    ; preds = %if.end.i.i.i
  %wiphy.i.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %82, i32 0, i32 1
  %93 = ptrtoint ptr %wiphy.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %wiphy.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.wiphy, ptr %94, i32 0, i32 53, i32 %conv.i.i.i
  %95 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %96, null
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i, label %if.end32.i.i.i, !prof !171

do.end.i.i.i:                                     ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 996, i32 noundef 9, ptr noundef null) #9
  br label %ieee80211_update_sta_info.exit.i.i

if.end32.i.i.i:                                   ; preds = %if.end7.i.i.i
  %97 = tail call i32 @llvm.read_register.i32(metadata !161) #9
  %and.i.i.i.i.i.i.i.i = and i32 %97, -16384
  %98 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %100, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !173
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i.i.i, label %if.end32.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end32.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %if.end32.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end32.i.i.i
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true2.i.i.i.i

land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true2.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b4.i.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i.i, label %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #9
  br label %rcu_read_lock.exit.i.i.i

rcu_read_lock.exit.i.i.i:                         ; preds = %if.then.i.i.i.i, %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %if.end32.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge
  %sa.i.i.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %1, i32 0, i32 3
  %call34.i.i.i = tail call ptr @sta_info_get(ptr noundef %sdata, ptr noundef %sa.i.i.i) #9
  %supp_rates35.i.i.i = getelementptr inbounds %struct.ieee802_11_elems, ptr %call.i.i52, i32 0, i32 7
  %101 = ptrtoint ptr %supp_rates35.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %supp_rates35.i.i.i, align 4
  %tobool36.not.i.i.i = icmp eq ptr %102, null
  br i1 %tobool36.not.i.i.i, label %rcu_read_lock.exit.i.i.i.if.end83.i.i.i_crit_edge, label %if.then37.i.i.i

rcu_read_lock.exit.i.i.i.if.end83.i.i.i_crit_edge: ; preds = %rcu_read_lock.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83.i.i.i

if.then37.i.i.i:                                  ; preds = %rcu_read_lock.exit.i.i.i
  %call38.i.i.i = tail call i32 @ieee80211_sta_get_rates(ptr noundef %sdata, ptr noundef nonnull %call.i.i52, i32 noundef %conv.i.i.i, ptr noundef null) #9
  %tobool39.not.i.i.i = icmp eq ptr %call34.i.i.i, null
  br i1 %tobool39.not.i.i.i, label %if.else76.i.i.i, label %if.then40.i.i.i

if.then40.i.i.i:                                  ; preds = %if.then37.i.i.i
  %sta41.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call34.i.i.i, i32 0, i32 48
  %arrayidx43.i.i.i = getelementptr [6 x i32], ptr %sta41.i.i.i, i32 0, i32 %conv.i.i.i
  %103 = ptrtoint ptr %arrayidx43.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx43.i.i.i, align 4
  %bw.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 31
  %105 = ptrtoint ptr %bw.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %105, i32 2)
  %bf.load.i.i.i = load i16, ptr %bw.i.i.i, align 1
  %bf.lshr.i.i.i = lshr i16 %bf.load.i.i.i, 11
  %106 = and i16 %bf.lshr.i.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %106)
  %switch.selectcmp.i.i.i = icmp eq i16 %106, 2
  %switch.select.i.i.i = zext i1 %switch.selectcmp.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %106)
  %switch.selectcmp15.i.i.i = icmp eq i16 %106, 1
  %switch.select16.i.i.i = select i1 %switch.selectcmp15.i.i.i, i32 2, i32 %switch.select.i.i.i
  %call59.i.i.i = tail call i32 @ieee80211_mandatory_rates(ptr noundef nonnull %96, i32 noundef %switch.select16.i.i.i) #9
  %or.i.i.i = or i32 %call59.i.i.i, %call38.i.i.i
  %107 = ptrtoint ptr %arrayidx43.i.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %or.i.i.i, ptr %arrayidx43.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i.i, i32 %104)
  %cmp66.not.i.i.i = icmp eq i32 %or.i.i.i, %104
  br i1 %cmp66.not.i.i.i, label %if.then40.i.i.i.land.lhs.true.i.i.i_crit_edge, label %if.then68.i.i.i

if.then40.i.i.i.land.lhs.true.i.i.i_crit_edge:    ; preds = %if.then40.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i.i.i

if.then68.i.i.i:                                  ; preds = %if.then40.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %name.i.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  %addr.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call34.i.i.i, i32 0, i32 48, i32 1
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.25, ptr noundef %name.i.i.i, ptr noundef %addr.i.i.i, i32 noundef %104, i32 noundef %or.i.i.i) #9
  br label %land.lhs.true.i.i.i

if.else76.i.i.i:                                  ; preds = %if.then37.i.i.i
  %call.i17.i.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i17.i.i.i, label %if.else76.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, label %land.lhs.true.i20.i.i.i

if.else76.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge: ; preds = %if.else76.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i.i.i

land.lhs.true.i20.i.i.i:                          ; preds = %if.else76.i.i.i
  %call1.i18.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18.i.i.i)
  %tobool.not.i19.i.i.i = icmp eq i32 %call1.i18.i.i.i, 0
  br i1 %tobool.not.i19.i.i.i, label %land.lhs.true.i20.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, label %land.lhs.true2.i22.i.i.i

land.lhs.true.i20.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i20.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i.i.i

land.lhs.true2.i22.i.i.i:                         ; preds = %land.lhs.true.i20.i.i.i
  %.b4.i21.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i21.i.i.i, label %land.lhs.true2.i22.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, label %if.then.i23.i.i.i

land.lhs.true2.i22.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i22.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i.i.i

if.then.i23.i.i.i:                                ; preds = %land.lhs.true2.i22.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #9
  br label %rcu_read_unlock.exit.i.i.i

rcu_read_unlock.exit.i.i.i:                       ; preds = %if.then.i23.i.i.i, %land.lhs.true2.i22.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, %land.lhs.true.i20.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, %if.else76.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !174
  %108 = tail call i32 @llvm.read_register.i32(metadata !161) #9
  %and.i.i.i.i.i24.i.i.i = and i32 %108, -16384
  %109 = inttoptr i32 %and.i.i.i.i.i24.i.i.i to ptr
  %preempt_count.i.i.i.i25.i.i.i = getelementptr inbounds %struct.thread_info, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %preempt_count.i.i.i.i25.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile i32, ptr %preempt_count.i.i.i.i25.i.i.i, align 4
  %sub.i.i.i.i.i.i = add i32 %111, -1
  store volatile i32 %sub.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i25.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %call81.i.i.i = tail call fastcc ptr @ieee80211_ibss_add_sta(ptr noundef %sdata, ptr noundef %bssid.i51, ptr noundef %sa.i.i.i, i32 noundef %call38.i.i.i) #9
  br label %if.end83.i.i.i

if.end83.i.i.i:                                   ; preds = %rcu_read_unlock.exit.i.i.i, %rcu_read_lock.exit.i.i.i.if.end83.i.i.i_crit_edge
  %sta.0.i.i.i = phi ptr [ %call81.i.i.i, %rcu_read_unlock.exit.i.i.i ], [ %call34.i.i.i, %rcu_read_lock.exit.i.i.i.if.end83.i.i.i_crit_edge ]
  %tobool84.not.i.i.i = icmp eq ptr %sta.0.i.i.i, null
  br i1 %tobool84.not.i.i.i, label %if.end83.i.i.i.if.end252.i.i.i_crit_edge, label %if.end83.i.i.i.land.lhs.true.i.i.i_crit_edge

if.end83.i.i.i.land.lhs.true.i.i.i_crit_edge:     ; preds = %if.end83.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i.i.i

if.end83.i.i.i.if.end252.i.i.i_crit_edge:         ; preds = %if.end83.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end252.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end83.i.i.i.land.lhs.true.i.i.i_crit_edge, %if.then68.i.i.i, %if.then40.i.i.i.land.lhs.true.i.i.i_crit_edge
  %sta.041.i.i.i = phi ptr [ %sta.0.i.i.i, %if.end83.i.i.i.land.lhs.true.i.i.i_crit_edge ], [ %call34.i.i.i, %if.then68.i.i.i ], [ %call34.i.i.i, %if.then40.i.i.i.land.lhs.true.i.i.i_crit_edge ]
  %rates_updated.1.off040.i.i.i = phi i1 [ false, %if.end83.i.i.i.land.lhs.true.i.i.i_crit_edge ], [ true, %if.then68.i.i.i ], [ false, %if.then40.i.i.i.land.lhs.true.i.i.i_crit_edge ]
  %wme.i.i.i = getelementptr inbounds %struct.sta_info, ptr %sta.041.i.i.i, i32 0, i32 48, i32 10
  %112 = ptrtoint ptr %wme.i.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %wme.i.i.i, align 4, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool86.not.i.i.i = icmp eq i8 %113, 0
  br i1 %tobool86.not.i.i.i, label %land.lhs.true87.i.i.i, label %land.lhs.true.i.i.i.land.lhs.true100.i.i.i_crit_edge

land.lhs.true.i.i.i.land.lhs.true100.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true100.i.i.i

land.lhs.true87.i.i.i:                            ; preds = %land.lhs.true.i.i.i
  %wmm_info.i.i.i = getelementptr inbounds %struct.ieee802_11_elems, ptr %call.i.i52, i32 0, i32 14
  %114 = ptrtoint ptr %wmm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %wmm_info.i.i.i, align 4
  %tobool88.not.i.i.i = icmp eq ptr %115, null
  br i1 %tobool88.not.i.i.i, label %lor.lhs.false.i.i.i, label %land.lhs.true87.i.i.i.land.lhs.true90.i.i.i_crit_edge

land.lhs.true87.i.i.i.land.lhs.true90.i.i.i_crit_edge: ; preds = %land.lhs.true87.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true90.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %land.lhs.true87.i.i.i
  %s1g_capab.i.i.i = getelementptr inbounds %struct.ieee802_11_elems, ptr %call.i.i52, i32 0, i32 53
  %116 = ptrtoint ptr %s1g_capab.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %s1g_capab.i.i.i, align 4
  %tobool89.not.i.i.i = icmp eq ptr %117, null
  br i1 %tobool89.not.i.i.i, label %lor.lhs.false.i.i.i.land.lhs.true100.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.land.lhs.true90.i.i.i_crit_edge

lor.lhs.false.i.i.i.land.lhs.true90.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true90.i.i.i

lor.lhs.false.i.i.i.land.lhs.true100.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true100.i.i.i

land.lhs.true90.i.i.i:                            ; preds = %lor.lhs.false.i.i.i.land.lhs.true90.i.i.i_crit_edge, %land.lhs.true87.i.i.i.land.lhs.true90.i.i.i_crit_edge
  %queues.i.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %82, i32 0, i32 11
  %118 = ptrtoint ptr %queues.i.i.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %queues.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %119)
  %cmp93.i.i.i = icmp ugt i16 %119, 3
  br i1 %cmp93.i.i.i, label %if.then95.i.i.i, label %land.lhs.true90.i.i.i.land.lhs.true100.i.i.i_crit_edge

land.lhs.true90.i.i.i.land.lhs.true100.i.i.i_crit_edge: ; preds = %land.lhs.true90.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true100.i.i.i

if.then95.i.i.i:                                  ; preds = %land.lhs.true90.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %120 = ptrtoint ptr %wme.i.i.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 1, ptr %wme.i.i.i, align 4
  tail call void @ieee80211_check_fast_xmit(ptr noundef nonnull %sta.041.i.i.i) #9
  br label %land.lhs.true100.i.i.i

land.lhs.true100.i.i.i:                           ; preds = %if.then95.i.i.i, %land.lhs.true90.i.i.i.land.lhs.true100.i.i.i_crit_edge, %lor.lhs.false.i.i.i.land.lhs.true100.i.i.i_crit_edge, %land.lhs.true.i.i.i.land.lhs.true100.i.i.i_crit_edge
  %ht_operation.i.i.i = getelementptr inbounds %struct.ieee802_11_elems, ptr %call.i.i52, i32 0, i32 17
  %121 = ptrtoint ptr %ht_operation.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ht_operation.i.i.i, align 4
  %tobool101.not.i.i.i = icmp eq ptr %122, null
  br i1 %tobool101.not.i.i.i, label %land.lhs.true100.i.i.i.if.end232.i.i.i_crit_edge, label %land.lhs.true102.i.i.i

land.lhs.true100.i.i.i.if.end232.i.i.i_crit_edge: ; preds = %land.lhs.true100.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end232.i.i.i

land.lhs.true102.i.i.i:                           ; preds = %land.lhs.true100.i.i.i
  %ht_cap_elem.i.i.i = getelementptr inbounds %struct.ieee802_11_elems, ptr %call.i.i52, i32 0, i32 16
  %123 = ptrtoint ptr %ht_cap_elem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %ht_cap_elem.i.i.i, align 4
  %tobool103.not.i.i.i = icmp eq ptr %124, null
  br i1 %tobool103.not.i.i.i, label %land.lhs.true102.i.i.i.if.end232.i.i.i_crit_edge, label %land.lhs.true104.i.i.i

land.lhs.true102.i.i.i.if.end232.i.i.i_crit_edge: ; preds = %land.lhs.true102.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end232.i.i.i

land.lhs.true104.i.i.i:                           ; preds = %land.lhs.true102.i.i.i
  %chandef.i.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 5
  %width.i.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 6, i32 3
  %125 = ptrtoint ptr %width.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %width.i.i.i, align 4
  %127 = zext i32 %126 to i64
  call void @__sanitizer_cov_trace_switch(i64 %127, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %126, label %if.then120.i.i.i [
    i32 0, label %land.lhs.true104.i.i.i.if.end232.i.i.i_crit_edge
    i32 6, label %land.lhs.true104.i.i.i.if.end232.i.i.i_crit_edge89
    i32 7, label %land.lhs.true104.i.i.i.if.end232.i.i.i_crit_edge90
  ]

land.lhs.true104.i.i.i.if.end232.i.i.i_crit_edge90: ; preds = %land.lhs.true104.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end232.i.i.i

land.lhs.true104.i.i.i.if.end232.i.i.i_crit_edge89: ; preds = %land.lhs.true104.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end232.i.i.i

land.lhs.true104.i.i.i.if.end232.i.i.i_crit_edge: ; preds = %land.lhs.true104.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end232.i.i.i

if.then120.i.i.i:                                 ; preds = %land.lhs.true104.i.i.i
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %htcap_ie.i.i.i) #9
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %chandef121.i.i.i) #9
  %128 = call ptr @memset(ptr %chandef121.i.i.i, i32 255, i32 28)
  %bandwidth.i.i.i = getelementptr inbounds %struct.sta_info, ptr %sta.041.i.i.i, i32 0, i32 48, i32 14
  %129 = ptrtoint ptr %bandwidth.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %bandwidth.i.i.i, align 8
  call void @cfg80211_chandef_create(ptr noundef nonnull %chandef121.i.i.i, ptr noundef nonnull %call.i.i.i54, i32 noundef 0) #9
  %131 = ptrtoint ptr %ht_operation.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %ht_operation.i.i.i, align 4
  %call125.i.i.i = call zeroext i1 @ieee80211_chandef_ht_oper(ptr noundef %132, ptr noundef nonnull %chandef121.i.i.i) #9
  %133 = ptrtoint ptr %ht_cap_elem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ht_cap_elem.i.i.i, align 4
  %135 = call ptr @memcpy(ptr %htcap_ie.i.i.i, ptr %134, i32 26)
  %call127.i.i.i = call zeroext i1 @ieee80211_ht_cap_ie_to_sta_ht_cap(ptr noundef %sdata, ptr noundef nonnull %96, ptr noundef nonnull %htcap_ie.i.i.i, ptr noundef nonnull %sta.041.i.i.i) #9
  %or1318.i.i.i = or i1 %rates_updated.1.off040.i.i.i, %call127.i.i.i
  %frombool.i.i.i = zext i1 %or1318.i.i.i to i8
  %vht_operation.i.i.i = getelementptr inbounds %struct.ieee802_11_elems, ptr %call.i.i52, i32 0, i32 19
  %136 = ptrtoint ptr %vht_operation.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %vht_operation.i.i.i, align 4
  %tobool133.not.i.i.i = icmp eq ptr %137, null
  br i1 %tobool133.not.i.i.i, label %if.then120.i.i.i.if.end168.i.i.i_crit_edge, label %land.lhs.true134.i.i.i

if.then120.i.i.i.if.end168.i.i.i_crit_edge:       ; preds = %if.then120.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end168.i.i.i

land.lhs.true134.i.i.i:                           ; preds = %if.then120.i.i.i
  %vht_cap_elem.i.i.i = getelementptr inbounds %struct.ieee802_11_elems, ptr %call.i.i52, i32 0, i32 18
  %138 = ptrtoint ptr %vht_cap_elem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %vht_cap_elem.i.i.i, align 4
  %tobool135.not.i.i.i = icmp eq ptr %139, null
  br i1 %tobool135.not.i.i.i, label %land.lhs.true134.i.i.i.if.end168.i.i.i_crit_edge, label %land.lhs.true136.i.i.i

land.lhs.true134.i.i.i.if.end168.i.i.i_crit_edge: ; preds = %land.lhs.true134.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end168.i.i.i

land.lhs.true136.i.i.i:                           ; preds = %land.lhs.true134.i.i.i
  %140 = ptrtoint ptr %width.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %width.i.i.i, align 4
  %.off.i.i.i = add i32 %141, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i.i.i)
  %switch.i.i.i = icmp ult i32 %.off.i.i.i, 2
  br i1 %switch.i.i.i, label %land.lhs.true136.i.i.i.if.end168.i.i.i_crit_edge, label %if.then148.i.i.i

land.lhs.true136.i.i.i.if.end168.i.i.i_crit_edge: ; preds = %land.lhs.true136.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end168.i.i.i

if.then148.i.i.i:                                 ; preds = %land.lhs.true136.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cap_ie.i.i.i) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cap.i.i.i) #9
  %vht_cap.i.i.i = getelementptr inbounds %struct.sta_info, ptr %sta.041.i.i.i, i32 0, i32 48, i32 5
  %142 = call ptr @memcpy(ptr %cap.i.i.i, ptr %vht_cap.i.i.i, i32 16)
  %143 = ptrtoint ptr %139 to i32
  call void @__asan_loadN_noabort(i32 %143, i32 4)
  %144 = load i32, ptr %139, align 1
  %145 = call i32 @llvm.bswap.i32(i32 %144) #9
  %146 = ptrtoint ptr %ht_operation.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %ht_operation.i.i.i, align 4
  %call155.i.i.i = call zeroext i1 @ieee80211_chandef_vht_oper(ptr noundef %82, i32 noundef %145, ptr noundef nonnull %137, ptr noundef %147, ptr noundef nonnull %chandef121.i.i.i) #9
  %148 = ptrtoint ptr %vht_cap_elem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %vht_cap_elem.i.i.i, align 4
  %150 = call ptr @memcpy(ptr %cap_ie.i.i.i, ptr %149, i32 12)
  call void @ieee80211_vht_cap_ie_to_sta_vht_cap(ptr noundef %sdata, ptr noundef nonnull %96, ptr noundef nonnull %cap_ie.i.i.i, ptr noundef nonnull %sta.041.i.i.i) #9
  %bcmp.i.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %cap.i.i.i, ptr noundef dereferenceable(16) %vht_cap.i.i.i, i32 16) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i)
  %tobool160.not.i.i.i = icmp eq i32 %bcmp.i.i.i, 0
  %spec.select.i.i.i = select i1 %tobool160.not.i.i.i, i8 %frombool.i.i.i, i8 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cap.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cap_ie.i.i.i) #9
  br label %if.end168.i.i.i

if.end168.i.i.i:                                  ; preds = %if.then148.i.i.i, %land.lhs.true136.i.i.i.if.end168.i.i.i_crit_edge, %land.lhs.true134.i.i.i.if.end168.i.i.i_crit_edge, %if.then120.i.i.i.if.end168.i.i.i_crit_edge
  %rates_updated.3.i.i.i = phi i8 [ %spec.select.i.i.i, %if.then148.i.i.i ], [ %frombool.i.i.i, %land.lhs.true134.i.i.i.if.end168.i.i.i_crit_edge ], [ %frombool.i.i.i, %if.then120.i.i.i.if.end168.i.i.i_crit_edge ], [ %frombool.i.i.i, %land.lhs.true136.i.i.i.if.end168.i.i.i_crit_edge ]
  %151 = ptrtoint ptr %bandwidth.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %bandwidth.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %130, i32 %152)
  %cmp171.not.i.i.i = icmp ne i32 %130, %152
  %call182.i.i.i = call ptr @cfg80211_chandef_compatible(ptr noundef %chandef.i.i.i, ptr noundef nonnull %chandef121.i.i.i) #9
  %tobool183.not.i.i.i = icmp eq ptr %call182.i.i.i, null
  br i1 %tobool183.not.i.i.i, label %land.end.i.i.i, label %if.end168.i.i.i.if.end231.i.i.i_crit_edge

if.end168.i.i.i.if.end231.i.i.i_crit_edge:        ; preds = %if.end168.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end231.i.i.i

land.end.i.i.i:                                   ; preds = %if.end168.i.i.i
  %.b9.i.i.i = load i1, ptr @ieee80211_update_sta_info.__already_done, align 1
  br i1 %.b9.i.i.i, label %land.end.i.i.i.if.end231.i.i.i_crit_edge, label %if.then196.i.i.i, !prof !176

land.end.i.i.i.if.end231.i.i.i_crit_edge:         ; preds = %land.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end231.i.i.i

if.then196.i.i.i:                                 ; preds = %land.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ieee80211_update_sta_info.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1081, i32 noundef 9, ptr noundef null) #9
  br label %if.end231.i.i.i

if.end231.i.i.i:                                  ; preds = %if.then196.i.i.i, %land.end.i.i.i.if.end231.i.i.i_crit_edge, %if.end168.i.i.i.if.end231.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %chandef121.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %htcap_ie.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rates_updated.3.i.i.i)
  %extract.t152.i.i.i = icmp ne i8 %rates_updated.3.i.i.i, 0
  %extract.t1.i.i.i = select i1 %cmp171.not.i.i.i, i1 true, i1 %extract.t152.i.i.i
  br i1 %extract.t1.i.i.i, label %if.end231.i.i.i.if.then237.i.i.i_crit_edge, label %if.end231.i.i.i.if.end252.i.i.i_crit_edge

if.end231.i.i.i.if.end252.i.i.i_crit_edge:        ; preds = %if.end231.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end252.i.i.i

if.end231.i.i.i.if.then237.i.i.i_crit_edge:       ; preds = %if.end231.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then237.i.i.i

if.end232.i.i.i:                                  ; preds = %land.lhs.true104.i.i.i.if.end232.i.i.i_crit_edge, %land.lhs.true104.i.i.i.if.end232.i.i.i_crit_edge89, %land.lhs.true104.i.i.i.if.end232.i.i.i_crit_edge90, %land.lhs.true102.i.i.i.if.end232.i.i.i_crit_edge, %land.lhs.true100.i.i.i.if.end232.i.i.i_crit_edge
  br i1 %rates_updated.1.off040.i.i.i, label %if.end232.i.i.i.if.then237.i.i.i_crit_edge, label %if.end232.i.i.i.if.end252.i.i.i_crit_edge

if.end232.i.i.i.if.end252.i.i.i_crit_edge:        ; preds = %if.end232.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end252.i.i.i

if.end232.i.i.i.if.then237.i.i.i_crit_edge:       ; preds = %if.end232.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then237.i.i.i

if.then237.i.i.i:                                 ; preds = %if.end232.i.i.i.if.then237.i.i.i_crit_edge, %if.end231.i.i.i.if.then237.i.i.i_crit_edge
  %sta238.i.i.i = getelementptr inbounds %struct.sta_info, ptr %sta.041.i.i.i, i32 0, i32 48
  %rx_nss239.i.i.i = getelementptr inbounds %struct.sta_info, ptr %sta.041.i.i.i, i32 0, i32 48, i32 13
  %153 = ptrtoint ptr %rx_nss239.i.i.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %rx_nss239.i.i.i, align 1
  store i8 0, ptr %rx_nss239.i.i.i, align 1
  call void @rate_control_rate_init(ptr noundef nonnull %sta.041.i.i.i) #9
  %155 = ptrtoint ptr %rx_nss239.i.i.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %rx_nss239.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %156, i8 %154)
  %cmp246.not.i.i.i = icmp eq i8 %156, %154
  %spec.select14.i.i.i = select i1 %cmp246.not.i.i.i, i32 4, i32 12
  call void @drv_sta_rc_update(ptr noundef %82, ptr noundef %sdata, ptr noundef %sta238.i.i.i, i32 noundef %spec.select14.i.i.i) #9
  br label %if.end252.i.i.i

if.end252.i.i.i:                                  ; preds = %if.then237.i.i.i, %if.end232.i.i.i.if.end252.i.i.i_crit_edge, %if.end231.i.i.i.if.end252.i.i.i_crit_edge, %if.end83.i.i.i.if.end252.i.i.i_crit_edge
  %call.i26.i.i.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i26.i.i.i, label %if.end252.i.i.i.rcu_read_unlock.exit36.i.i.i_crit_edge, label %land.lhs.true.i29.i.i.i

if.end252.i.i.i.rcu_read_unlock.exit36.i.i.i_crit_edge: ; preds = %if.end252.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit36.i.i.i

land.lhs.true.i29.i.i.i:                          ; preds = %if.end252.i.i.i
  %call1.i27.i.i.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i27.i.i.i)
  %tobool.not.i28.i.i.i = icmp eq i32 %call1.i27.i.i.i, 0
  br i1 %tobool.not.i28.i.i.i, label %land.lhs.true.i29.i.i.i.rcu_read_unlock.exit36.i.i.i_crit_edge, label %land.lhs.true2.i31.i.i.i

land.lhs.true.i29.i.i.i.rcu_read_unlock.exit36.i.i.i_crit_edge: ; preds = %land.lhs.true.i29.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit36.i.i.i

land.lhs.true2.i31.i.i.i:                         ; preds = %land.lhs.true.i29.i.i.i
  %.b4.i30.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i30.i.i.i, label %land.lhs.true2.i31.i.i.i.rcu_read_unlock.exit36.i.i.i_crit_edge, label %if.then.i32.i.i.i

land.lhs.true2.i31.i.i.i.rcu_read_unlock.exit36.i.i.i_crit_edge: ; preds = %land.lhs.true2.i31.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit36.i.i.i

if.then.i32.i.i.i:                                ; preds = %land.lhs.true2.i31.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #9
  br label %rcu_read_unlock.exit36.i.i.i

rcu_read_unlock.exit36.i.i.i:                     ; preds = %if.then.i32.i.i.i, %land.lhs.true2.i31.i.i.i.rcu_read_unlock.exit36.i.i.i_crit_edge, %land.lhs.true.i29.i.i.i.rcu_read_unlock.exit36.i.i.i_crit_edge, %if.end252.i.i.i.rcu_read_unlock.exit36.i.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !174
  %157 = call i32 @llvm.read_register.i32(metadata !161) #9
  %and.i.i.i.i.i33.i.i.i = and i32 %157, -16384
  %158 = inttoptr i32 %and.i.i.i.i.i33.i.i.i to ptr
  %preempt_count.i.i.i.i34.i.i.i = getelementptr inbounds %struct.thread_info, ptr %158, i32 0, i32 1
  %159 = ptrtoint ptr %preempt_count.i.i.i.i34.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load volatile i32, ptr %preempt_count.i.i.i.i34.i.i.i, align 4
  %sub.i.i.i35.i.i.i = add i32 %160, -1
  store volatile i32 %sub.i.i.i35.i.i.i, ptr %preempt_count.i.i.i.i34.i.i.i, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %ieee80211_update_sta_info.exit.i.i

ieee80211_update_sta_info.exit.i.i:               ; preds = %rcu_read_unlock.exit36.i.i.i, %do.end.i.i.i, %if.end.i.i.i.ieee80211_update_sta_info.exit.i.i_crit_edge, %if.end.i.i.ieee80211_update_sta_info.exit.i.i_crit_edge
  %call4.i.i = call ptr @ieee80211_bss_info_update(ptr noundef %73, ptr noundef %cb.i, ptr noundef %1, i32 noundef %71, ptr noundef nonnull %call.i.i.i54) #9
  %tobool5.not.i.i = icmp eq ptr %call4.i.i, null
  br i1 %tobool5.not.i.i, label %ieee80211_update_sta_info.exit.i.i.ieee80211_rx_bss_info.exit.i_crit_edge, label %if.end7.i.i

ieee80211_update_sta_info.exit.i.i.ieee80211_rx_bss_info.exit.i_crit_edge: ; preds = %ieee80211_update_sta_info.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ieee80211_rx_bss_info.exit.i

if.end7.i.i:                                      ; preds = %ieee80211_update_sta_info.exit.i.i
  %add.ptr.i.i56 = getelementptr i8, ptr %call4.i.i, i32 -60
  %u.i.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %1, i32 0, i32 6
  %161 = ptrtoint ptr %u.i.i to i32
  call void @__asan_loadN_noabort(i32 %161, i32 8)
  %162 = load i64, ptr %u.i.i, align 2
  %163 = call i64 @llvm.bswap.i64(i64 %162) #9
  %capability.i.i = getelementptr i8, ptr %call4.i.i, i32 -18
  %164 = ptrtoint ptr %capability.i.i to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %capability.i.i, align 2
  %166 = and i16 %165, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %166)
  %tobool9.not.i.i = icmp eq i16 %166, 0
  br i1 %tobool9.not.i.i, label %if.end7.i.i.put_bss.i.i_crit_edge, label %if.end11.i.i

if.end7.i.i.put_bss.i.i_crit_edge:                ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_bss.i.i

if.end11.i.i:                                     ; preds = %if.end7.i.i
  %u12.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57
  %fixed_channel.i.i = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %u12.i.i, i32 0, i32 5
  %167 = ptrtoint ptr %fixed_channel.i.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %fixed_channel.i.i, align 1, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %tobool13.not.i.i = icmp eq i8 %168, 0
  br i1 %tobool13.not.i.i, label %if.end11.i.i.if.end19.i.i_crit_edge, label %land.lhs.true.i.i

if.end11.i.i.if.end19.i.i_crit_edge:              ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i.i

land.lhs.true.i.i:                                ; preds = %if.end11.i.i
  %chandef.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 5
  %169 = ptrtoint ptr %chandef.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %chandef.i.i, align 8
  %171 = ptrtoint ptr %add.ptr.i.i56 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %add.ptr.i.i56, align 4
  %cmp.not.i.i57 = icmp eq ptr %170, %172
  br i1 %cmp.not.i.i57, label %land.lhs.true.i.i.if.end19.i.i_crit_edge, label %land.lhs.true.i.i.put_bss.i.i_crit_edge

land.lhs.true.i.i.put_bss.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_bss.i.i

land.lhs.true.i.i.if.end19.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i.i

if.end19.i.i:                                     ; preds = %land.lhs.true.i.i.if.end19.i.i_crit_edge, %if.end11.i.i.if.end19.i.i_crit_edge
  %ssid_len.i.i = getelementptr inbounds %struct.ieee802_11_elems, ptr %call.i.i52, i32 0, i32 58
  %173 = ptrtoint ptr %ssid_len.i.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %ssid_len.i.i, align 1
  %175 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %ssid_len, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %174, i8 %176)
  %cmp24.not.i.i = icmp eq i8 %174, %176
  br i1 %cmp24.not.i.i, label %lor.lhs.false.i.i, label %if.end19.i.i.put_bss.i.i_crit_edge

if.end19.i.i.put_bss.i.i_crit_edge:               ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_bss.i.i

lor.lhs.false.i.i:                                ; preds = %if.end19.i.i
  %conv23.i.i = zext i8 %174 to i32
  %ssid.i.i = getelementptr inbounds %struct.ieee802_11_elems, ptr %call.i.i52, i32 0, i32 6
  %177 = ptrtoint ptr %ssid.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %ssid.i.i, align 4
  %ssid27.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 2, i32 3
  %bcmp.i.i = call i32 @bcmp(ptr %178, ptr %ssid27.i.i, i32 %conv23.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool32.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool32.not.i.i, label %if.end34.i.i, label %lor.lhs.false.i.i.put_bss.i.i_crit_edge

lor.lhs.false.i.i.put_bss.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_bss.i.i

if.end34.i.i:                                     ; preds = %lor.lhs.false.i.i
  %csa_active.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 4
  %179 = ptrtoint ptr %csa_active.i.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %csa_active.i.i, align 1, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %180)
  %tobool35.not.i.i = icmp eq i8 %180, 0
  br i1 %tobool35.not.i.i, label %lor.lhs.false37.i.i, label %if.end34.i.i.put_bss.i.i_crit_edge

if.end34.i.i.put_bss.i.i_crit_edge:               ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_bss.i.i

lor.lhs.false37.i.i:                              ; preds = %if.end34.i.i
  %call38.i.i = call fastcc zeroext i1 @ieee80211_ibss_process_chanswitch(ptr noundef %sdata, ptr noundef nonnull %call.i.i52) #9
  br i1 %call38.i.i, label %lor.lhs.false37.i.i.put_bss.i.i_crit_edge, label %if.end41.i.i

lor.lhs.false37.i.i.put_bss.i.i_crit_edge:        ; preds = %lor.lhs.false37.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_bss.i.i

if.end41.i.i:                                     ; preds = %lor.lhs.false37.i.i
  %bssid.i.i = getelementptr i8, ptr %call4.i.i, i32 -16
  %bssid44.i.i = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %u12.i.i, i32 0, i32 10
  %181 = ptrtoint ptr %bssid.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %bssid.i.i, align 4
  %183 = ptrtoint ptr %bssid44.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %bssid44.i.i, align 4
  %xor.i.i.i = xor i32 %184, %182
  %add.ptr.i.i.i = getelementptr i8, ptr %call4.i.i, i32 -12
  %185 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %add.ptr.i.i.i, align 2
  %add.ptr1.i.i.i = getelementptr %struct.ieee80211_if_ibss, ptr %u12.i.i, i32 0, i32 10, i32 4
  %187 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %add.ptr1.i.i.i, align 2
  %xor37.i.i.i = xor i16 %188, %186
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i135.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i135.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i135.i.i, 0
  br i1 %cmp.i.i.i, label %if.end41.i.i.put_bss.i.i_crit_edge, label %if.end48.i.i

if.end41.i.i.put_bss.i.i_crit_edge:               ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_bss.i.i

if.end48.i.i:                                     ; preds = %if.end41.i.i
  %fixed_bssid.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 2, i32 0, i32 1
  %189 = ptrtoint ptr %fixed_bssid.i.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %fixed_bssid.i.i, align 4, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %190)
  %tobool50.not.i.i = icmp eq i8 %190, 0
  br i1 %tobool50.not.i.i, label %if.end52.i.i, label %if.end48.i.i.put_bss.i.i_crit_edge

if.end48.i.i.put_bss.i.i_crit_edge:               ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_bss.i.i

if.end52.i.i:                                     ; preds = %if.end48.i.i
  %flag.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %191 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %flag.i.i, align 8
  %193 = and i32 %192, 65664
  call void @__sanitizer_cov_trace_const_cmp4(i32 65664, i32 %193)
  %194 = icmp eq i32 %193, 65664
  br i1 %194, label %land.rhs6.i.i, label %if.end52.i.i.ieee80211_have_rx_timestamp.exit.i_crit_edge

if.end52.i.i.ieee80211_have_rx_timestamp.exit.i_crit_edge: ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ieee80211_have_rx_timestamp.exit.i

land.rhs6.i.i:                                    ; preds = %if.end52.i.i
  %.b52.i.i = load i1, ptr @ieee80211_have_rx_timestamp.__already_done, align 1
  br i1 %.b52.i.i, label %land.rhs6.i.i.ieee80211_have_rx_timestamp.exit.i_crit_edge, label %if.then.i20.i, !prof !176

land.rhs6.i.i.ieee80211_have_rx_timestamp.exit.i_crit_edge: ; preds = %land.rhs6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ieee80211_have_rx_timestamp.exit.i

if.then.i20.i:                                    ; preds = %land.rhs6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ieee80211_have_rx_timestamp.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1763, i32 noundef 9, ptr noundef null) #9
  br label %ieee80211_have_rx_timestamp.exit.i

ieee80211_have_rx_timestamp.exit.i:               ; preds = %if.then.i20.i, %land.rhs6.i.i.ieee80211_have_rx_timestamp.exit.i_crit_edge, %if.end52.i.i.ieee80211_have_rx_timestamp.exit.i_crit_edge
  %195 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %flag.i.i, align 8
  %and42.i.i = and i32 %196, 65668
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i.i)
  %tobool43.i.not.i = icmp eq i32 %and42.i.i, 0
  br i1 %tobool43.i.not.i, label %if.else.i.i, label %if.then54.i.i

if.then54.i.i:                                    ; preds = %ieee80211_have_rx_timestamp.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.i.i = add i32 %71, 4
  %call55.i.i = call i64 @ieee80211_calculate_rx_timestamp(ptr noundef %73, ptr noundef %cb.i, i32 noundef %add.i.i, i32 noundef 24) #9
  br label %if.end57.i.i

if.else.i.i:                                      ; preds = %ieee80211_have_rx_timestamp.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %call56.i.i = call i64 @drv_get_tsf(ptr noundef %73, ptr noundef %sdata) #9
  br label %if.end57.i.i

if.end57.i.i:                                     ; preds = %if.else.i.i, %if.then54.i.i
  %rx_timestamp.0.i.i = phi i64 [ %call55.i.i, %if.then54.i.i ], [ %call56.i.i, %if.else.i.i ]
  %name.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  %sa.i.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %1, i32 0, i32 3
  call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.22, ptr noundef %name.i.i, ptr noundef %sa.i.i, ptr noundef %bssid.i51, i64 noundef %rx_timestamp.0.i.i) #9
  %sub.i.i = sub i64 %rx_timestamp.0.i.i, %163
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %197 = load volatile i32, ptr @jiffies, align 128
  call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.23, ptr noundef %name.i.i, i64 noundef %163, i64 noundef %sub.i.i, i32 noundef %197) #9
  call void @__sanitizer_cov_trace_cmp8(i64 %rx_timestamp.0.i.i, i64 %163)
  %cmp64.i.i = icmp ult i64 %rx_timestamp.0.i.i, %163
  br i1 %cmp64.i.i, label %if.then66.i.i, label %if.end57.i.i.put_bss.i.i_crit_edge

if.end57.i.i.put_bss.i.i_crit_edge:               ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_bss.i.i

if.then66.i.i:                                    ; preds = %if.end57.i.i
  call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.24, ptr noundef %name.i.i, ptr noundef %bssid.i51) #9
  call fastcc void @ieee80211_sta_join_ibss(ptr noundef %sdata, ptr noundef nonnull %call4.i.i) #9
  %call71.i.i = call i32 @ieee80211_sta_get_rates(ptr noundef %sdata, ptr noundef nonnull %call.i.i52, i32 noundef %conv.i.i, ptr noundef null) #9
  %call76.i.i = call fastcc ptr @ieee80211_ibss_add_sta(ptr noundef %sdata, ptr noundef %bssid.i51, ptr noundef %sa.i.i, i32 noundef %call71.i.i) #9
  %call.i17.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i17.i, label %if.then66.i.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i19.i

if.then66.i.i.rcu_read_unlock.exit.i_crit_edge:   ; preds = %if.then66.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

land.lhs.true.i19.i:                              ; preds = %if.then66.i.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i18.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i18.i, label %land.lhs.true.i19.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i19.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i19.i
  %.b4.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i.i58

land.lhs.true2.i.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

if.then.i.i58:                                    ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #9
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i.i58, %land.lhs.true2.i.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i19.i.rcu_read_unlock.exit.i_crit_edge, %if.then66.i.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !174
  %198 = call i32 @llvm.read_register.i32(metadata !161) #9
  %and.i.i.i.i.i.i = and i32 %198, -16384
  %199 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %199, i32 0, i32 1
  %200 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %201, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %put_bss.i.i

put_bss.i.i:                                      ; preds = %rcu_read_unlock.exit.i, %if.end57.i.i.put_bss.i.i_crit_edge, %if.end48.i.i.put_bss.i.i_crit_edge, %if.end41.i.i.put_bss.i.i_crit_edge, %lor.lhs.false37.i.i.put_bss.i.i_crit_edge, %if.end34.i.i.put_bss.i.i_crit_edge, %lor.lhs.false.i.i.put_bss.i.i_crit_edge, %if.end19.i.i.put_bss.i.i_crit_edge, %land.lhs.true.i.i.put_bss.i.i_crit_edge, %if.end7.i.i.put_bss.i.i_crit_edge
  call void @ieee80211_rx_bss_put(ptr noundef %73, ptr noundef nonnull %call4.i.i) #9
  br label %ieee80211_rx_bss_info.exit.i

ieee80211_rx_bss_info.exit.i:                     ; preds = %put_bss.i.i, %ieee80211_update_sta_info.exit.i.i.ieee80211_rx_bss_info.exit.i_crit_edge, %if.then5.i.ieee80211_rx_bss_info.exit.i_crit_edge
  call void @kfree(ptr noundef nonnull %call.i.i52) #9
  br label %mgmt_out

sw.bb2:                                           ; preds = %if.end
  %len3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %202 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %len3, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %204 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %204)
  %tobool.not.i.i59 = icmp eq i32 %204, 0
  br i1 %tobool.not.i.i59, label %sw.bb2.sdata_assert_lock.exit.i66_crit_edge, label %land.rhs.i.i63

sw.bb2.sdata_assert_lock.exit.i66_crit_edge:      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdata_assert_lock.exit.i66

land.rhs.i.i63:                                   ; preds = %sw.bb2
  %dep_map.i.i60 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 1, i32 7, i32 5
  %call.i.i.i61 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i60, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i61)
  %cmp.not.i.i62 = icmp eq i32 %call.i.i.i61, 0
  br i1 %cmp.not.i.i62, label %do.end.i.i64, label %land.rhs.i.i63.sdata_assert_lock.exit.i66_crit_edge, !prof !171

land.rhs.i.i63.sdata_assert_lock.exit.i66_crit_edge: ; preds = %land.rhs.i.i63
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdata_assert_lock.exit.i66

do.end.i.i64:                                     ; preds = %land.rhs.i.i63
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1050, i32 noundef 9, ptr noundef null) #9
  br label %sdata_assert_lock.exit.i66

sdata_assert_lock.exit.i66:                       ; preds = %do.end.i.i64, %land.rhs.i.i63.sdata_assert_lock.exit.i66_crit_edge, %sw.bb2.sdata_assert_lock.exit.i66_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %203)
  %cmp.i65 = icmp ult i32 %203, 30
  br i1 %cmp.i65, label %sdata_assert_lock.exit.i66.mgmt_out_crit_edge, label %if.end.i73

sdata_assert_lock.exit.i66.mgmt_out_crit_edge:    ; preds = %sdata_assert_lock.exit.i66
  call void @__sanitizer_cov_trace_pc() #11
  br label %mgmt_out

if.end.i73:                                       ; preds = %sdata_assert_lock.exit.i66
  %u.i67 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %1, i32 0, i32 6
  %205 = ptrtoint ptr %u.i67 to i32
  call void @__asan_load2_noabort(i32 %205)
  %206 = load i16, ptr %u.i67, align 2
  %auth_transaction3.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %1, i32 0, i32 6, i32 0, i32 1
  %207 = ptrtoint ptr %auth_transaction3.i to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %auth_transaction3.i, align 2
  %209 = tail call i16 @llvm.bswap.i16(i16 %208) #9
  %name.i68 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  %sa.i69 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %1, i32 0, i32 3
  %da.i70 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %1, i32 0, i32 2
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.39, ptr noundef %name.i68, ptr noundef %sa.i69, ptr noundef %da.i70) #9
  %bssid.i71 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %1, i32 0, i32 4
  %conv.i = zext i16 %209 to i32
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.40, ptr noundef %name.i68, ptr noundef %bssid.i71, i32 noundef %conv.i) #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %206)
  %cmp10.not.i = icmp eq i16 %206, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %208)
  %cmp13.not.i = icmp eq i16 %208, 256
  %or.cond.i72 = select i1 %cmp10.not.i, i1 %cmp13.not.i, i1 false
  br i1 %or.cond.i72, label %if.end16.i, label %if.end.i73.mgmt_out_crit_edge

if.end.i73.mgmt_out_crit_edge:                    ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #11
  br label %mgmt_out

if.end16.i:                                       ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #11
  %u19.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57
  %bssid20.i = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %u19.i, i32 0, i32 10
  tail call void @ieee80211_send_auth(ptr noundef %sdata, i16 noundef zeroext 2, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0, ptr noundef %sa.i69, ptr noundef %bssid20.i, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 0) #9
  br label %mgmt_out

sw.bb4:                                           ; preds = %if.end
  %len5 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %210 = ptrtoint ptr %len5 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %len5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %211)
  %cmp.i74 = icmp ult i32 %211, 26
  br i1 %cmp.i74, label %sw.bb4.mgmt_out_crit_edge, label %if.end.i81

sw.bb4.mgmt_out_crit_edge:                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  br label %mgmt_out

if.end.i81:                                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  %u.i75 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %1, i32 0, i32 6
  %212 = ptrtoint ptr %u.i75 to i32
  call void @__asan_load2_noabort(i32 %212)
  %213 = load i16, ptr %u.i75, align 2
  %214 = tail call i16 @llvm.bswap.i16(i16 %213) #9
  %name.i76 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  %sa.i77 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %1, i32 0, i32 3
  %da.i78 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %1, i32 0, i32 2
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.41, ptr noundef %name.i76, ptr noundef %sa.i77, ptr noundef %da.i78) #9
  %bssid.i79 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %1, i32 0, i32 4
  %conv.i80 = zext i16 %214 to i32
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.42, ptr noundef %name.i76, ptr noundef %bssid.i79, i32 noundef %conv.i80) #9
  %call.i = tail call i32 @sta_info_destroy_addr(ptr noundef %sdata, ptr noundef %sa.i77) #9
  br label %mgmt_out

sw.bb6:                                           ; preds = %if.end
  %u7 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %1, i32 0, i32 6
  %215 = ptrtoint ptr %u7 to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %u7, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %216)
  %cond = icmp eq i8 %216, 0
  br i1 %cond, label %sw.bb9, label %sw.bb6.mgmt_out_crit_edge

sw.bb6.mgmt_out_crit_edge:                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #11
  br label %mgmt_out

sw.bb9:                                           ; preds = %sw.bb6
  %len10 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %217 = ptrtoint ptr %len10 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %len10, align 4
  %sub = add i32 %218, -26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %sw.bb9.mgmt_out_crit_edge, label %if.end13

sw.bb9.mgmt_out_crit_edge:                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #11
  br label %mgmt_out

if.end13:                                         ; preds = %sw.bb9
  %variable = getelementptr inbounds %struct.ieee80211_mgmt, ptr %1, i32 0, i32 6, i32 0, i32 1
  %bssid = getelementptr inbounds %struct.ieee80211_mgmt, ptr %1, i32 0, i32 4
  %call.i82 = tail call ptr @ieee802_11_parse_elems_crc(ptr noundef %variable, i32 noundef %sub, i1 noundef zeroext true, i64 noundef 0, i32 noundef 0, ptr noundef %bssid, ptr noundef null) #9
  %tobool18.not = icmp eq ptr %call.i82, null
  br i1 %tobool18.not, label %if.end13.if.end22_crit_edge, label %land.lhs.true

if.end13.if.end22_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

land.lhs.true:                                    ; preds = %if.end13
  %parse_error = getelementptr inbounds %struct.ieee802_11_elems, ptr %call.i82, i32 0, i32 76
  %219 = ptrtoint ptr %parse_error to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %parse_error, align 2, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %220)
  %tobool19.not = icmp eq i8 %220, 0
  br i1 %tobool19.not, label %if.then20, label %land.lhs.true.if.end22_crit_edge

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then20:                                        ; preds = %land.lhs.true
  %221 = ptrtoint ptr %len10 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %len10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %222)
  %cmp.i83 = icmp ult i32 %222, 26
  br i1 %cmp.i83, label %if.then20.if.end22_crit_edge, label %if.end.i85

if.then20.if.end22_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.end.i85:                                       ; preds = %if.then20
  %u1.i = getelementptr inbounds %struct.anon.174, ptr %u7, i32 0, i32 1
  %223 = ptrtoint ptr %u1.i to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %u1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %224)
  %cmp2.not.i = icmp eq i8 %224, 4
  br i1 %cmp2.not.i, label %if.end9.i, label %if.end.i85.if.end22_crit_edge

if.end.i85.if.end22_crit_edge:                    ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.end9.i:                                        ; preds = %if.end.i85
  %csa_active.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 4
  %225 = ptrtoint ptr %csa_active.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %csa_active.i, align 1, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %226)
  %tobool.not.i86 = icmp eq i8 %226, 0
  br i1 %tobool.not.i86, label %if.then10.i, label %if.end9.i.if.end22_crit_edge

if.end9.i.if.end22_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then10.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %227 = tail call fastcc zeroext i1 @ieee80211_ibss_process_chanswitch(ptr noundef %sdata, ptr noundef nonnull %call.i82) #9
  br label %if.end22

if.end22:                                         ; preds = %if.then10.i, %if.end9.i.if.end22_crit_edge, %if.end.i85.if.end22_crit_edge, %if.then20.if.end22_crit_edge, %land.lhs.true.if.end22_crit_edge, %if.end13.if.end22_crit_edge
  tail call void @kfree(ptr noundef %call.i82) #9
  br label %mgmt_out

mgmt_out:                                         ; preds = %if.end22, %sw.bb9.mgmt_out_crit_edge, %sw.bb6.mgmt_out_crit_edge, %if.end.i81, %sw.bb4.mgmt_out_crit_edge, %if.end16.i, %if.end.i73.mgmt_out_crit_edge, %sdata_assert_lock.exit.i66.mgmt_out_crit_edge, %ieee80211_rx_bss_info.exit.i, %if.end.i.mgmt_out_crit_edge, %sw.bb1.mgmt_out_crit_edge, %if.end98.i, %if.end72.i.mgmt_out_crit_edge, %lor.lhs.false64.i.mgmt_out_crit_edge, %land.lhs.true58.i.mgmt_out_crit_edge, %if.then48.i, %land.lhs.true31.i.mgmt_out_crit_edge, %land.lhs.true20.i.mgmt_out_crit_edge, %do.end.i.mgmt_out_crit_edge, %if.end.mgmt_out_crit_edge, %entry.mgmt_out_crit_edge
  call void @mutex_unlock(ptr noundef %mtx.i) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_ibss_work(ptr noundef %sdata) local_unnamed_addr #0 align 64 {
entry:
  %frame_buf.i.i = alloca [26 x i8], align 1
  %channels.i = alloca [8 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mtx.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 1, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mtx.i, i32 noundef 0) #9
  %ssid_len = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 3
  %0 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ssid_len, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %incomplete_lock = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 20, i32 0, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %incomplete_lock) #9
  %incomplete_stations = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 21, i32 1, i32 4
  %2 = ptrtoint ptr %incomplete_stations to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %incomplete_stations, align 4
  %cmp.i.not80 = icmp eq ptr %3, %incomplete_stations
  br i1 %cmp.i.not80, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %rcu_read_unlock.exit.while.body_crit_edge, %if.end.while.body_crit_edge
  %4 = phi ptr [ %18, %rcu_read_unlock.exit.while.body_crit_edge ], [ %3, %if.end.while.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #9
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %incomplete_lock) #9
  %call4 = tail call fastcc ptr @ieee80211_ibss_finish_sta(ptr noundef %4)
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %list_del.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i

list_del.exit.rcu_read_unlock.exit_crit_edge:     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i:                                  ; preds = %list_del.exit
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_unlock.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, %list_del.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !174
  %13 = tail call i32 @llvm.read_register.i32(metadata !161) #9
  %and.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  tail call void @_raw_spin_lock_bh(ptr noundef %incomplete_lock) #9
  %17 = ptrtoint ptr %incomplete_stations to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %incomplete_stations, align 4
  %cmp.i.not = icmp eq ptr %18, %incomplete_stations
  br i1 %cmp.i.not, label %rcu_read_unlock.exit.while.end_crit_edge, label %rcu_read_unlock.exit.while.body_crit_edge

rcu_read_unlock.exit.while.body_crit_edge:        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

rcu_read_unlock.exit.while.end_crit_edge:         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %rcu_read_unlock.exit.while.end_crit_edge, %if.end.while.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %incomplete_lock) #9
  %state = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 23
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %20, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
  ]

sw.bb:                                            ; preds = %while.end
  %u.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57
  %local1.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %22 = ptrtoint ptr %local1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %local1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %24 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i.i, label %sw.bb.sdata_assert_lock.exit.i_crit_edge, label %land.rhs.i.i

sw.bb.sdata_assert_lock.exit.i_crit_edge:         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdata_assert_lock.exit.i

land.rhs.i.i:                                     ; preds = %sw.bb
  %dep_map.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 1, i32 7, i32 5
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.sdata_assert_lock.exit.i_crit_edge, !prof !171

land.rhs.i.i.sdata_assert_lock.exit.i_crit_edge:  ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdata_assert_lock.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1050, i32 noundef 9, ptr noundef null) #9
  br label %sdata_assert_lock.exit.i

sdata_assert_lock.exit.i:                         ; preds = %do.end.i.i, %land.rhs.i.i.sdata_assert_lock.exit.i_crit_edge, %sw.bb.sdata_assert_lock.exit.i_crit_edge
  %call.i40 = tail call fastcc i32 @ieee80211_sta_active_ibss(ptr noundef %sdata) #9
  %name.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.46, ptr noundef %name.i, i32 noundef %call.i40) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %tobool.not.i41 = icmp eq i32 %call.i40, 0
  br i1 %tobool.not.i41, label %if.end.i, label %sdata_assert_lock.exit.i.out_crit_edge

sdata_assert_lock.exit.i.out_crit_edge:           ; preds = %sdata_assert_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.i:                                         ; preds = %sdata_assert_lock.exit.i
  %fixed_bssid.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 2, i32 0, i32 1
  %25 = ptrtoint ptr %fixed_bssid.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %fixed_bssid.i, align 4, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool2.not.i = icmp eq i8 %26, 0
  %bssid4.i = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %u.i, i32 0, i32 10
  %fixed_channel.i = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %u.i, i32 0, i32 5
  %27 = ptrtoint ptr %fixed_channel.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %fixed_channel.i, align 1, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool7.not.i = icmp eq i8 %28, 0
  br i1 %tobool7.not.i, label %if.end.i.if.end10.i_crit_edge, label %if.then8.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %chandef.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 5
  %29 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chandef.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then8.i, %if.end.i.if.end10.i_crit_edge
  %chan.0.i = phi ptr [ %30, %if.then8.i ], [ null, %if.end.i.if.end10.i_crit_edge ]
  %31 = ptrtoint ptr %bssid4.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bssid4.i, align 4
  %add.ptr.i.i = getelementptr %struct.ieee80211_if_ibss, ptr %u.i, i32 0, i32 10, i32 4
  %33 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %34 to i32
  %or.i.i = or i32 %32, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  %35 = select i1 %cmp.i.i, i1 %tobool2.not.i, i1 false
  %spec.select133.i = select i1 %35, ptr null, ptr %bssid4.i
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %23, i32 0, i32 1
  %36 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %wiphy.i, align 8
  %ssid.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 2, i32 3
  %38 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ssid_len, align 4
  %conv.i42 = zext i8 %39 to i32
  %privacy.i = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %u.i, i32 0, i32 6
  %40 = ptrtoint ptr %privacy.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %privacy.i, align 2, !range !172
  %42 = xor i8 %41, 1
  %43 = zext i8 %42 to i32
  %call21.i = tail call ptr @cfg80211_get_bss(ptr noundef %37, ptr noundef %chan.0.i, ptr noundef %spec.select133.i, ptr noundef %ssid.i, i32 noundef %conv.i42, i32 noundef 2, i32 noundef %43) #9
  %tobool22.not.i = icmp eq ptr %call21.i, null
  br i1 %tobool22.not.i, label %if.end35.i, label %if.then23.i

if.then23.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %priv.i = getelementptr inbounds %struct.cfg80211_bss, ptr %call21.i, i32 0, i32 17
  %bssid27.i = getelementptr inbounds %struct.cfg80211_bss, ptr %call21.i, i32 0, i32 11
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.47, ptr noundef %name.i, ptr noundef %bssid27.i, ptr noundef %bssid4.i) #9
  tail call void (ptr, ...) @__sdata_info(ptr noundef nonnull @.str.48, ptr noundef %name.i, ptr noundef %bssid27.i) #9
  tail call fastcc void @ieee80211_sta_join_ibss(ptr noundef %sdata, ptr noundef %priv.i) #9
  tail call void @ieee80211_rx_bss_put(ptr noundef %23, ptr noundef %priv.i) #9
  br label %out

if.end35.i:                                       ; preds = %if.end10.i
  %44 = ptrtoint ptr %fixed_bssid.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %fixed_bssid.i, align 4, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool37.not.i = icmp eq i8 %45, 0
  br i1 %tobool37.not.i, label %if.end35.i.if.end45.i_crit_edge, label %land.lhs.true.i43

if.end35.i.if.end45.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45.i

land.lhs.true.i43:                                ; preds = %if.end35.i
  %46 = ptrtoint ptr %fixed_channel.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %fixed_channel.i, align 1, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool40.not.i = icmp eq i8 %47, 0
  br i1 %tobool40.not.i, label %land.lhs.true.i43.if.end45.i_crit_edge, label %if.then42.i

land.lhs.true.i43.if.end45.i_crit_edge:           ; preds = %land.lhs.true.i43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45.i

if.then42.i:                                      ; preds = %land.lhs.true.i43
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__sdata_info(ptr noundef nonnull @.str.49, ptr noundef %name.i, ptr noundef %spec.select133.i) #9
  tail call fastcc void @ieee80211_sta_create_ibss(ptr noundef %sdata) #9
  br label %out

if.end45.i:                                       ; preds = %land.lhs.true.i43.if.end45.i_crit_edge, %if.end35.i.if.end45.i_crit_edge
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.50, ptr noundef %name.i) #9
  %last_scan_completed.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 1, i32 4, i32 7
  %48 = ptrtoint ptr %last_scan_completed.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %last_scan_completed.i, align 4
  %add.i = add i32 %49, 200
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %50 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i44 = icmp slt i32 %sub.i, 0
  br i1 %cmp.i44, label %if.then49.i, label %if.else72.i

if.then49.i:                                      ; preds = %if.end45.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %channels.i) #9
  %51 = call ptr @memset(ptr %channels.i, i32 255, i32 32)
  tail call void (ptr, ...) @__sdata_info(ptr noundef nonnull @.str.51, ptr noundef %name.i) #9
  %width.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 6, i32 3
  %52 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %width.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %53)
  %switch.selectcmp.i.i = icmp eq i32 %53, 7
  %switch.select.i.i = zext i1 %switch.selectcmp.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %53)
  %switch.selectcmp2.i.i = icmp eq i32 %53, 6
  %switch.select3.i.i = select i1 %switch.selectcmp2.i.i, i32 2, i32 %switch.select.i.i
  %54 = ptrtoint ptr %fixed_channel.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %fixed_channel.i, align 1, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool55.not.i = icmp eq i8 %55, 0
  br i1 %tobool55.not.i, label %if.else.i, label %if.then56.i

if.then56.i:                                      ; preds = %if.then49.i
  %56 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %wiphy.i, align 8
  %58 = zext i32 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %53, label %sw.epilog.i.i [
    i32 2, label %if.then56.i.if.end.i.i.i_crit_edge
    i32 4, label %sw.bb2.i.i
    i32 3, label %if.then56.i.sw.bb3.i.i_crit_edge
    i32 5, label %sw.bb4.i.i
  ]

if.then56.i.sw.bb3.i.i_crit_edge:                 ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3.i.i

if.then56.i.if.end.i.i.i_crit_edge:               ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

sw.bb2.i.i:                                       ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #11
  %center_freq2.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 6, i32 11
  %59 = ptrtoint ptr %center_freq2.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %center_freq2.i.i, align 4
  br label %sw.bb3.i.i

sw.bb3.i.i:                                       ; preds = %sw.bb2.i.i, %if.then56.i.sw.bb3.i.i_crit_edge
  %cf2.0.i.i = phi i32 [ 0, %if.then56.i.sw.bb3.i.i_crit_edge ], [ %60, %sw.bb2.i.i ]
  br label %if.end.i.i.i

sw.bb4.i.i:                                       ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

sw.epilog.i.i:                                    ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #11
  %center_freq1.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 6, i32 7
  %61 = ptrtoint ptr %center_freq1.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %center_freq1.i.i, align 4
  br label %for.body.preheader.i.i.i

if.end.i.i.i:                                     ; preds = %sw.bb4.i.i, %sw.bb3.i.i, %if.then56.i.if.end.i.i.i_crit_edge
  %width.0.ph.i.i = phi i32 [ 40, %if.then56.i.if.end.i.i.i_crit_edge ], [ 80, %sw.bb3.i.i ], [ 160, %sw.bb4.i.i ]
  %cf2.1.ph.i.i = phi i32 [ 0, %if.then56.i.if.end.i.i.i_crit_edge ], [ %cf2.0.i.i, %sw.bb3.i.i ], [ 0, %sw.bb4.i.i ]
  %center_freq131.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 6, i32 7
  %63 = ptrtoint ptr %center_freq131.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %center_freq131.i.i, align 4
  %div27.i.i.i = lshr exact i32 %width.0.ph.i.i, 1
  %sub.i.i.i45 = sub nsw i32 10, %div27.i.i.i
  %add.i.i.i = add i32 %sub.i.i.i45, %64
  %add2.i.i.i = add nsw i32 %div27.i.i.i, -10
  %sub3.i.i.i = add i32 %add2.i.i.i, %64
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %sub3.i.i.i)
  %cmp4.not28.i.i.i = icmp ugt i32 %add.i.i.i, %sub3.i.i.i
  br i1 %cmp4.not28.i.i.i, label %ibss_setup_channels.exit.thread.i.i, label %if.end.i.i.i.for.body.preheader.i.i.i_crit_edge

if.end.i.i.i.for.body.preheader.i.i.i_crit_edge:  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader.i.i.i

for.body.preheader.i.i.i:                         ; preds = %if.end.i.i.i.for.body.preheader.i.i.i_crit_edge, %sw.epilog.i.i
  %cmp.i41.i.i = phi i1 [ false, %if.end.i.i.i.for.body.preheader.i.i.i_crit_edge ], [ true, %sw.epilog.i.i ]
  %cf2.138.i.i = phi i32 [ %cf2.1.ph.i.i, %if.end.i.i.i.for.body.preheader.i.i.i_crit_edge ], [ 0, %sw.epilog.i.i ]
  %width.034.i.i = phi i32 [ %width.0.ph.i.i, %if.end.i.i.i.for.body.preheader.i.i.i_crit_edge ], [ 20, %sw.epilog.i.i ]
  %end_freq.036.i.i.i = phi i32 [ %sub3.i.i.i, %if.end.i.i.i.for.body.preheader.i.i.i_crit_edge ], [ %62, %sw.epilog.i.i ]
  %start_freq.035.i.i.i = phi i32 [ %add.i.i.i, %if.end.i.i.i.for.body.preheader.i.i.i_crit_edge ], [ %62, %sw.epilog.i.i ]
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.preheader.i.i.i
  %freq.030.i.i.i = phi i32 [ %add10.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %start_freq.035.i.i.i, %for.body.preheader.i.i.i ]
  %n_chan.029.i.i.i = phi i32 [ %n_chan.1.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.body.preheader.i.i.i ]
  %mul.i.i.i.i = mul i32 %freq.030.i.i.i, 1000
  %call.i.i.i.i = tail call ptr @ieee80211_get_channel_khz(ptr noundef %57, i32 noundef %mul.i.i.i.i) #9
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %if.end6.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i

if.end6.i.i.i:                                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %n_chan.029.i.i.i)
  %cmp7.not.i.i.i = icmp ult i32 %n_chan.029.i.i.i, 8
  br i1 %cmp7.not.i.i.i, label %if.end9.i.i.i, label %if.end6.i.i.i.ibss_setup_channels.exit.i.i_crit_edge

if.end6.i.i.i.ibss_setup_channels.exit.i.i_crit_edge: ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ibss_setup_channels.exit.i.i

if.end9.i.i.i:                                    ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i.i = getelementptr ptr, ptr %channels.i, i32 %n_chan.029.i.i.i
  %65 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call.i.i.i.i, ptr %arrayidx.i.i.i, align 4
  %inc.i.i.i = add nuw nsw i32 %n_chan.029.i.i.i, 1
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.end9.i.i.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %n_chan.1.i.i.i = phi i32 [ %inc.i.i.i, %if.end9.i.i.i ], [ %n_chan.029.i.i.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge ]
  %add10.i.i.i = add i32 %freq.030.i.i.i, 20
  %cmp4.not.i.i.i = icmp ugt i32 %add10.i.i.i, %end_freq.036.i.i.i
  br i1 %cmp4.not.i.i.i, label %for.inc.i.i.i.ibss_setup_channels.exit.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i

for.inc.i.i.i.ibss_setup_channels.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ibss_setup_channels.exit.i.i

ibss_setup_channels.exit.i.i:                     ; preds = %for.inc.i.i.i.ibss_setup_channels.exit.i.i_crit_edge, %if.end6.i.i.i.ibss_setup_channels.exit.i.i_crit_edge
  %n_chan.0.lcssa.i.i.i = phi i32 [ %n_chan.1.i.i.i, %for.inc.i.i.i.ibss_setup_channels.exit.i.i_crit_edge ], [ %n_chan.029.i.i.i, %if.end6.i.i.i.ibss_setup_channels.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cf2.138.i.i)
  %tobool.not.i134.i = icmp eq i32 %cf2.138.i.i, 0
  br i1 %tobool.not.i134.i, label %ibss_setup_channels.exit.i.i.ieee80211_ibss_setup_scan_channels.exit.i_crit_edge, label %if.then.i.i

ibss_setup_channels.exit.i.i.ieee80211_ibss_setup_scan_channels.exit.i_crit_edge: ; preds = %ibss_setup_channels.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ieee80211_ibss_setup_scan_channels.exit.i

ibss_setup_channels.exit.thread.i.i:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cf2.1.ph.i.i)
  %tobool.not46.i.i = icmp eq i32 %cf2.1.ph.i.i, 0
  br i1 %tobool.not46.i.i, label %ibss_setup_channels.exit.thread.i.i.ieee80211_ibss_setup_scan_channels.exit.i_crit_edge, label %ibss_setup_channels.exit.thread.i.i.if.end.i8.i.i_crit_edge

ibss_setup_channels.exit.thread.i.i.if.end.i8.i.i_crit_edge: ; preds = %ibss_setup_channels.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i8.i.i

ibss_setup_channels.exit.thread.i.i.ieee80211_ibss_setup_scan_channels.exit.i_crit_edge: ; preds = %ibss_setup_channels.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ieee80211_ibss_setup_scan_channels.exit.i

if.then.i.i:                                      ; preds = %ibss_setup_channels.exit.i.i
  %arrayidx.i.i = getelementptr ptr, ptr %channels.i, i32 %n_chan.0.lcssa.i.i.i
  %sub.i.i = sub i32 8, %n_chan.0.lcssa.i.i.i
  br i1 %cmp.i41.i.i, label %if.then.i.i.for.body.preheader.i11.i.i_crit_edge, label %if.then.if.end.i8_crit_edge.i.i

if.then.i.i.for.body.preheader.i11.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader.i11.i.i

if.then.if.end.i8_crit_edge.i.i:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %.pre.i.i = lshr i32 %width.034.i.i, 1
  %.pre.i = sub nsw i32 10, %.pre.i.i
  %.pre136.i = add nsw i32 %.pre.i.i, -10
  br label %if.end.i8.i.i

if.end.i8.i.i:                                    ; preds = %if.then.if.end.i8_crit_edge.i.i, %ibss_setup_channels.exit.thread.i.i.if.end.i8.i.i_crit_edge
  %add2.i5.i.pre-phi.i = phi i32 [ %.pre136.i, %if.then.if.end.i8_crit_edge.i.i ], [ %add2.i.i.i, %ibss_setup_channels.exit.thread.i.i.if.end.i8.i.i_crit_edge ]
  %sub.i3.i.pre-phi.i = phi i32 [ %.pre.i, %if.then.if.end.i8_crit_edge.i.i ], [ %sub.i.i.i45, %ibss_setup_channels.exit.thread.i.i.if.end.i8.i.i_crit_edge ]
  %sub64.i.i = phi i32 [ %sub.i.i, %if.then.if.end.i8_crit_edge.i.i ], [ 8, %ibss_setup_channels.exit.thread.i.i.if.end.i8.i.i_crit_edge ]
  %arrayidx62.i.i = phi ptr [ %arrayidx.i.i, %if.then.if.end.i8_crit_edge.i.i ], [ %channels.i, %ibss_setup_channels.exit.thread.i.i.if.end.i8.i.i_crit_edge ]
  %cf2.1364861.i.i = phi i32 [ %cf2.138.i.i, %if.then.if.end.i8_crit_edge.i.i ], [ %cf2.1.ph.i.i, %ibss_setup_channels.exit.thread.i.i.if.end.i8.i.i_crit_edge ]
  %n_chan.0.lcssa.i5058.i.i = phi i32 [ %n_chan.0.lcssa.i.i.i, %if.then.if.end.i8_crit_edge.i.i ], [ 0, %ibss_setup_channels.exit.thread.i.i.if.end.i8.i.i_crit_edge ]
  %add.i4.i.i = add i32 %cf2.1364861.i.i, %sub.i3.i.pre-phi.i
  %sub3.i6.i.i = add i32 %cf2.1364861.i.i, %add2.i5.i.pre-phi.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i4.i.i, i32 %sub3.i6.i.i)
  %cmp4.not28.i7.i.i = icmp ugt i32 %add.i4.i.i, %sub3.i6.i.i
  br i1 %cmp4.not28.i7.i.i, label %if.end.i8.i.i.ibss_setup_channels.exit28.i.i_crit_edge, label %if.end.i8.i.i.for.body.preheader.i11.i.i_crit_edge

if.end.i8.i.i.for.body.preheader.i11.i.i_crit_edge: ; preds = %if.end.i8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader.i11.i.i

if.end.i8.i.i.ibss_setup_channels.exit28.i.i_crit_edge: ; preds = %if.end.i8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ibss_setup_channels.exit28.i.i

for.body.preheader.i11.i.i:                       ; preds = %if.end.i8.i.i.for.body.preheader.i11.i.i_crit_edge, %if.then.i.i.for.body.preheader.i11.i.i_crit_edge
  %sub65.i.i = phi i32 [ %sub64.i.i, %if.end.i8.i.i.for.body.preheader.i11.i.i_crit_edge ], [ %sub.i.i, %if.then.i.i.for.body.preheader.i11.i.i_crit_edge ]
  %arrayidx63.i.i = phi ptr [ %arrayidx62.i.i, %if.end.i8.i.i.for.body.preheader.i11.i.i_crit_edge ], [ %arrayidx.i.i, %if.then.i.i.for.body.preheader.i11.i.i_crit_edge ]
  %n_chan.0.lcssa.i5059.i.i = phi i32 [ %n_chan.0.lcssa.i5058.i.i, %if.end.i8.i.i.for.body.preheader.i11.i.i_crit_edge ], [ %n_chan.0.lcssa.i.i.i, %if.then.i.i.for.body.preheader.i11.i.i_crit_edge ]
  %end_freq.036.i9.i.i = phi i32 [ %sub3.i6.i.i, %if.end.i8.i.i.for.body.preheader.i11.i.i_crit_edge ], [ %cf2.138.i.i, %if.then.i.i.for.body.preheader.i11.i.i_crit_edge ]
  %start_freq.035.i10.i.i = phi i32 [ %add.i4.i.i, %if.end.i8.i.i.for.body.preheader.i11.i.i_crit_edge ], [ %cf2.138.i.i, %if.then.i.i.for.body.preheader.i11.i.i_crit_edge ]
  br label %for.body.i17.i.i

for.body.i17.i.i:                                 ; preds = %for.inc.i26.i.i.for.body.i17.i.i_crit_edge, %for.body.preheader.i11.i.i
  %freq.030.i12.i.i = phi i32 [ %add10.i24.i.i, %for.inc.i26.i.i.for.body.i17.i.i_crit_edge ], [ %start_freq.035.i10.i.i, %for.body.preheader.i11.i.i ]
  %n_chan.029.i13.i.i = phi i32 [ %n_chan.1.i23.i.i, %for.inc.i26.i.i.for.body.i17.i.i_crit_edge ], [ 0, %for.body.preheader.i11.i.i ]
  %mul.i.i14.i.i = mul i32 %freq.030.i12.i.i, 1000
  %call.i.i15.i.i = tail call ptr @ieee80211_get_channel_khz(ptr noundef %57, i32 noundef %mul.i.i14.i.i) #9
  %tobool.not.i16.i.i = icmp eq ptr %call.i.i15.i.i, null
  br i1 %tobool.not.i16.i.i, label %for.body.i17.i.i.for.inc.i26.i.i_crit_edge, label %if.end6.i19.i.i

for.body.i17.i.i.for.inc.i26.i.i_crit_edge:       ; preds = %for.body.i17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i26.i.i

if.end6.i19.i.i:                                  ; preds = %for.body.i17.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %n_chan.029.i13.i.i, i32 %sub65.i.i)
  %cmp7.not.i18.i.i = icmp ult i32 %n_chan.029.i13.i.i, %sub65.i.i
  br i1 %cmp7.not.i18.i.i, label %if.end9.i22.i.i, label %if.end6.i19.i.i.ibss_setup_channels.exit28.i.i_crit_edge

if.end6.i19.i.i.ibss_setup_channels.exit28.i.i_crit_edge: ; preds = %if.end6.i19.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ibss_setup_channels.exit28.i.i

if.end9.i22.i.i:                                  ; preds = %if.end6.i19.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i20.i.i = getelementptr ptr, ptr %arrayidx63.i.i, i32 %n_chan.029.i13.i.i
  %66 = ptrtoint ptr %arrayidx.i20.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call.i.i15.i.i, ptr %arrayidx.i20.i.i, align 4
  %inc.i21.i.i = add nuw i32 %n_chan.029.i13.i.i, 1
  br label %for.inc.i26.i.i

for.inc.i26.i.i:                                  ; preds = %if.end9.i22.i.i, %for.body.i17.i.i.for.inc.i26.i.i_crit_edge
  %n_chan.1.i23.i.i = phi i32 [ %inc.i21.i.i, %if.end9.i22.i.i ], [ %n_chan.029.i13.i.i, %for.body.i17.i.i.for.inc.i26.i.i_crit_edge ]
  %add10.i24.i.i = add i32 %freq.030.i12.i.i, 20
  %cmp4.not.i25.i.i = icmp ugt i32 %add10.i24.i.i, %end_freq.036.i9.i.i
  br i1 %cmp4.not.i25.i.i, label %for.inc.i26.i.i.ibss_setup_channels.exit28.i.i_crit_edge, label %for.inc.i26.i.i.for.body.i17.i.i_crit_edge

for.inc.i26.i.i.for.body.i17.i.i_crit_edge:       ; preds = %for.inc.i26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i17.i.i

for.inc.i26.i.i.ibss_setup_channels.exit28.i.i_crit_edge: ; preds = %for.inc.i26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ibss_setup_channels.exit28.i.i

ibss_setup_channels.exit28.i.i:                   ; preds = %for.inc.i26.i.i.ibss_setup_channels.exit28.i.i_crit_edge, %if.end6.i19.i.i.ibss_setup_channels.exit28.i.i_crit_edge, %if.end.i8.i.i.ibss_setup_channels.exit28.i.i_crit_edge
  %n_chan.0.lcssa.i5057.i.i = phi i32 [ %n_chan.0.lcssa.i5058.i.i, %if.end.i8.i.i.ibss_setup_channels.exit28.i.i_crit_edge ], [ %n_chan.0.lcssa.i5059.i.i, %if.end6.i19.i.i.ibss_setup_channels.exit28.i.i_crit_edge ], [ %n_chan.0.lcssa.i5059.i.i, %for.inc.i26.i.i.ibss_setup_channels.exit28.i.i_crit_edge ]
  %n_chan.0.lcssa.i27.i.i = phi i32 [ 0, %if.end.i8.i.i.ibss_setup_channels.exit28.i.i_crit_edge ], [ %n_chan.1.i23.i.i, %for.inc.i26.i.i.ibss_setup_channels.exit28.i.i_crit_edge ], [ %n_chan.029.i13.i.i, %if.end6.i19.i.i.ibss_setup_channels.exit28.i.i_crit_edge ]
  %add.i.i = add i32 %n_chan.0.lcssa.i27.i.i, %n_chan.0.lcssa.i5057.i.i
  br label %ieee80211_ibss_setup_scan_channels.exit.i

ieee80211_ibss_setup_scan_channels.exit.i:        ; preds = %ibss_setup_channels.exit28.i.i, %ibss_setup_channels.exit.thread.i.i.ieee80211_ibss_setup_scan_channels.exit.i_crit_edge, %ibss_setup_channels.exit.i.i.ieee80211_ibss_setup_scan_channels.exit.i_crit_edge
  %n_chan.0.i.i = phi i32 [ %add.i.i, %ibss_setup_channels.exit28.i.i ], [ %n_chan.0.lcssa.i.i.i, %ibss_setup_channels.exit.i.i.ieee80211_ibss_setup_scan_channels.exit.i_crit_edge ], [ 0, %ibss_setup_channels.exit.thread.i.i.ieee80211_ibss_setup_scan_channels.exit.i_crit_edge ]
  %67 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %ssid_len, align 4
  %call66.i = call i32 @ieee80211_request_ibss_scan(ptr noundef %sdata, ptr noundef %ssid.i, i8 noundef zeroext %68, ptr noundef nonnull %channels.i, i32 noundef %n_chan.0.i.i, i32 noundef %switch.select3.i.i) #9
  br label %if.end71.i

if.else.i:                                        ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #11
  %69 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %ssid_len, align 4
  %call70.i = tail call i32 @ieee80211_request_ibss_scan(ptr noundef %sdata, ptr noundef %ssid.i, i8 noundef zeroext %70, ptr noundef null, i32 noundef 0, i32 noundef %switch.select3.i.i) #9
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.else.i, %ieee80211_ibss_setup_scan_channels.exit.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %channels.i) #9
  br label %out

if.else72.i:                                      ; preds = %if.end45.i
  %ibss_join_req.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 6, i32 27
  %71 = ptrtoint ptr %ibss_join_req.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ibss_join_req.i, align 4
  %add73.i = add i32 %72, 700
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %73 = load volatile i32, ptr @jiffies, align 128
  %sub74.i = sub i32 %add73.i, %73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub74.i)
  %cmp75.i = icmp slt i32 %sub74.i, 0
  br i1 %cmp75.i, label %if.then77.i, label %if.else72.i.if.end78.i_crit_edge

if.else72.i.if.end78.i_crit_edge:                 ; preds = %if.else72.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78.i

if.then77.i:                                      ; preds = %if.else72.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ieee80211_sta_create_ibss(ptr noundef %sdata) #9
  br label %if.end78.i

if.end78.i:                                       ; preds = %if.then77.i, %if.else72.i.if.end78.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %74 = load volatile i32, ptr @jiffies, align 128
  %add79.i = add i32 %74, 200
  %call80.i = tail call i32 @round_jiffies(i32 noundef %add79.i) #9
  %call81.i = tail call i32 @mod_timer(ptr noundef %u.i, i32 noundef %call80.i) #9
  br label %out

sw.bb7:                                           ; preds = %while.end
  %u.i46 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %75 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not.i.i47 = icmp eq i32 %75, 0
  br i1 %tobool.not.i.i47, label %sw.bb7.sdata_assert_lock.exit.i56_crit_edge, label %land.rhs.i.i51

sw.bb7.sdata_assert_lock.exit.i56_crit_edge:      ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdata_assert_lock.exit.i56

land.rhs.i.i51:                                   ; preds = %sw.bb7
  %dep_map.i.i48 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 1, i32 7, i32 5
  %call.i.i.i49 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i48, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i49)
  %cmp.not.i.i50 = icmp eq i32 %call.i.i.i49, 0
  br i1 %cmp.not.i.i50, label %do.end.i.i52, label %land.rhs.i.i51.sdata_assert_lock.exit.i56_crit_edge, !prof !171

land.rhs.i.i51.sdata_assert_lock.exit.i56_crit_edge: ; preds = %land.rhs.i.i51
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdata_assert_lock.exit.i56

do.end.i.i52:                                     ; preds = %land.rhs.i.i51
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1050, i32 noundef 9, ptr noundef null) #9
  br label %sdata_assert_lock.exit.i56

sdata_assert_lock.exit.i56:                       ; preds = %do.end.i.i52, %land.rhs.i.i51.sdata_assert_lock.exit.i56_crit_edge, %sw.bb7.sdata_assert_lock.exit.i56_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %76 = load volatile i32, ptr @jiffies, align 128
  %add.i53 = add i32 %76, 3000
  %call.i54 = tail call i32 @round_jiffies(i32 noundef %add.i53) #9
  %call1.i55 = tail call i32 @mod_timer(ptr noundef %u.i46, i32 noundef %call.i54) #9
  %local1.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %77 = ptrtoint ptr %local1.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %local1.i.i, align 4
  %sta_mtx.i.i = getelementptr inbounds %struct.ieee80211_local, ptr %78, i32 0, i32 46
  tail call void @mutex_lock_nested(ptr noundef %sta_mtx.i.i, i32 noundef 0) #9
  %sta_list.i.i = getelementptr inbounds %struct.ieee80211_local, ptr %78, i32 0, i32 49
  %79 = ptrtoint ptr %sta_list.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %sta_list.i.i, align 4
  %cmp.not78.i.i = icmp eq ptr %80, %sta_list.i.i
  br i1 %cmp.not78.i.i, label %sdata_assert_lock.exit.i56.ieee80211_ibss_sta_expire.exit.i_crit_edge, label %for.body.lr.ph.i.i

sdata_assert_lock.exit.i56.ieee80211_ibss_sta_expire.exit.i_crit_edge: ; preds = %sdata_assert_lock.exit.i56
  call void @__sanitizer_cov_trace_pc() #11
  br label %ieee80211_ibss_sta_expire.exit.i

for.body.lr.ph.i.i:                               ; preds = %sdata_assert_lock.exit.i56
  %bssid.i.i = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %u.i46, i32 0, i32 10
  %name.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %cleanup.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %sta.079.i.i = phi ptr [ %80, %for.body.lr.ph.i.i ], [ %tmp.080.i.i, %cleanup.i.i.for.body.i.i_crit_edge ]
  %81 = ptrtoint ptr %sta.079.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %tmp.080.i.i = load ptr, ptr %sta.079.i.i, align 8
  %call.i.i57 = call i32 @ieee80211_sta_last_active(ptr noundef %sta.079.i.i) #9
  %sdata9.i.i = getelementptr inbounds %struct.sta_info, ptr %sta.079.i.i, i32 0, i32 6
  %82 = ptrtoint ptr %sdata9.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %sdata9.i.i, align 4
  %cmp10.not.i.i = icmp eq ptr %83, %sdata
  br i1 %cmp10.not.i.i, label %if.end.i.i60, label %for.body.i.i.cleanup.i.i_crit_edge

for.body.i.i.cleanup.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i

if.end.i.i60:                                     ; preds = %for.body.i.i
  %add.i.i58 = add i32 %call.i.i57, 6000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %84 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i59 = sub i32 %add.i.i58, %84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i59)
  %cmp11.i.i = icmp slt i32 %sub.i.i59, 0
  br i1 %cmp11.i.i, label %if.end.i.i60.if.then16.i.i_crit_edge, label %lor.lhs.false.i.i

if.end.i.i60.if.then16.i.i_crit_edge:             ; preds = %if.end.i.i60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16.i.i

lor.lhs.false.i.i:                                ; preds = %if.end.i.i60
  %add12.i.i = add i32 %call.i.i57, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %85 = load volatile i32, ptr @jiffies, align 128
  %sub13.i.i = sub i32 %add12.i.i, %85
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub13.i.i)
  %cmp14.i.i = icmp slt i32 %sub13.i.i, 0
  br i1 %cmp14.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.cleanup.i.i_crit_edge

lor.lhs.false.i.i.cleanup.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %sta_state.i.i = getelementptr inbounds %struct.sta_info, ptr %sta.079.i.i, i32 0, i32 23
  %86 = ptrtoint ptr %sta_state.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %sta_state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %87)
  %cmp15.not.i.i = icmp eq i32 %87, 4
  br i1 %cmp15.not.i.i, label %land.lhs.true.i.i.cleanup.i.i_crit_edge, label %land.lhs.true.i.i.if.then16.i.i_crit_edge

land.lhs.true.i.i.if.then16.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16.i.i

land.lhs.true.i.i.cleanup.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i

if.then16.i.i:                                    ; preds = %land.lhs.true.i.i.if.then16.i.i_crit_edge, %if.end.i.i60.if.then16.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %frame_buf.i.i) #9
  %sta_state18.i.i = getelementptr inbounds %struct.sta_info, ptr %sta.079.i.i, i32 0, i32 23
  %88 = call ptr @memset(ptr %frame_buf.i.i, i32 255, i32 26)
  %89 = ptrtoint ptr %sta_state18.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %sta_state18.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %90)
  %cmp19.not.i.i = icmp eq i32 %90, 4
  %cond.i.i = select i1 %cmp19.not.i.i, ptr @.str.57, ptr @.str.56
  %addr.i.i = getelementptr inbounds %struct.sta_info, ptr %sta.079.i.i, i32 0, i32 48, i32 1
  call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.55, ptr noundef %name.i.i, ptr noundef nonnull %cond.i.i, ptr noundef %addr.i.i) #9
  call void @ieee80211_send_deauth_disassoc(ptr noundef %sdata, ptr noundef %addr.i.i, ptr noundef %bssid.i.i, i16 noundef zeroext 192, i16 noundef zeroext 3, i1 noundef zeroext true, ptr noundef nonnull %frame_buf.i.i) #9
  %call27.i.i = call i32 @__sta_info_destroy(ptr noundef %sta.079.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i)
  %tobool.not.i23.i = icmp eq i32 %call27.i.i, 0
  br i1 %tobool.not.i23.i, label %if.then16.i.i.if.end43.i.i_crit_edge, label %do.end.i24.i, !prof !176

if.then16.i.i.if.end43.i.i_crit_edge:             ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.i.i

do.end.i24.i:                                     ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1277, i32 noundef 9, ptr noundef null) #9
  br label %if.end43.i.i

if.end43.i.i:                                     ; preds = %do.end.i24.i, %if.then16.i.i.if.end43.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %frame_buf.i.i) #9
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end43.i.i, %land.lhs.true.i.i.cleanup.i.i_crit_edge, %lor.lhs.false.i.i.cleanup.i.i_crit_edge, %for.body.i.i.cleanup.i.i_crit_edge
  %cmp.not.i25.i = icmp eq ptr %tmp.080.i.i, %sta_list.i.i
  br i1 %cmp.not.i25.i, label %cleanup.i.i.ieee80211_ibss_sta_expire.exit.i_crit_edge, label %cleanup.i.i.for.body.i.i_crit_edge

cleanup.i.i.for.body.i.i_crit_edge:               ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

cleanup.i.i.ieee80211_ibss_sta_expire.exit.i_crit_edge: ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ieee80211_ibss_sta_expire.exit.i

ieee80211_ibss_sta_expire.exit.i:                 ; preds = %cleanup.i.i.ieee80211_ibss_sta_expire.exit.i_crit_edge, %sdata_assert_lock.exit.i56.ieee80211_ibss_sta_expire.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef %sta_mtx.i.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %91 = load volatile i32, ptr @jiffies, align 128
  %last_scan_completed.i61 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 1, i32 4, i32 7
  %92 = ptrtoint ptr %last_scan_completed.i61 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %last_scan_completed.i61, align 4
  %add2.neg.i = add i32 %91, -3000
  %sub.i62 = sub i32 %add2.neg.i, %93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i62)
  %cmp.i63 = icmp slt i32 %sub.i62, 0
  br i1 %cmp.i63, label %ieee80211_ibss_sta_expire.exit.i.out_crit_edge, label %if.end.i65

ieee80211_ibss_sta_expire.exit.i.out_crit_edge:   ; preds = %ieee80211_ibss_sta_expire.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.i65:                                       ; preds = %ieee80211_ibss_sta_expire.exit.i
  %call3.i = call fastcc i32 @ieee80211_sta_active_ibss(ptr noundef %sdata) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i64 = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i64, label %if.end5.i, label %if.end.i65.out_crit_edge

if.end.i65.out_crit_edge:                         ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end5.i:                                        ; preds = %if.end.i65
  %fixed_channel.i66 = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %u.i46, i32 0, i32 5
  %94 = ptrtoint ptr %fixed_channel.i66 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %fixed_channel.i66, align 1, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool6.not.i = icmp eq i8 %95, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end5.i.out_crit_edge

if.end5.i.out_crit_edge:                          ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end8.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %name.i67 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  call void (ptr, ...) @__sdata_info(ptr noundef nonnull @.str.54, ptr noundef %name.i67) #9
  %width.i.i68 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 6, i32 3
  %96 = ptrtoint ptr %width.i.i68 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %width.i.i68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %97)
  %switch.selectcmp.i.i69 = icmp eq i32 %97, 7
  %switch.select.i.i70 = zext i1 %switch.selectcmp.i.i69 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %97)
  %switch.selectcmp2.i.i71 = icmp eq i32 %97, 6
  %switch.select3.i.i72 = select i1 %switch.selectcmp2.i.i71, i32 2, i32 %switch.select.i.i70
  %ssid.i73 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 2, i32 3
  %98 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %ssid_len, align 4
  %call11.i = call i32 @ieee80211_request_ibss_scan(ptr noundef %sdata, ptr noundef %ssid.i73, i8 noundef zeroext %99, ptr noundef null, i32 noundef 0, i32 noundef %switch.select3.i.i72) #9
  br label %out

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1712, i32 noundef 9, ptr noundef null) #9
  br label %out

out:                                              ; preds = %do.end, %if.end8.i, %if.end5.i.out_crit_edge, %if.end.i65.out_crit_edge, %ieee80211_ibss_sta_expire.exit.i.out_crit_edge, %if.end78.i, %if.end71.i, %if.then42.i, %if.then23.i, %sdata_assert_lock.exit.i.out_crit_edge, %entry.out_crit_edge
  call void @mutex_unlock(ptr noundef %mtx.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ieee80211_ibss_finish_sta(ptr noundef %sta) unnamed_addr #0 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sdata1 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 6
  %0 = ptrtoint ptr %sdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdata1, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #9
  %addr3 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 1
  %2 = call ptr @memcpy(ptr %addr, ptr %addr3, i32 6)
  %name = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 10
  call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.43, ptr noundef %name, ptr noundef nonnull %addr) #9
  %_flags.i.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 24
  %3 = ptrtoint ptr %_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %_flags.i.i, align 4
  %5 = and i32 %4, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %entry.if.end28.i_crit_edge, label %land.rhs.i

entry.if.end28.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i

land.rhs.i:                                       ; preds = %entry
  %.b98.i = load i1, ptr @sta_info_pre_move_state.__already_done, align 1
  br i1 %.b98.i, label %land.rhs.i.if.end28.i_crit_edge, label %if.then.i, !prof !176

land.rhs.i.if.end28.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @sta_info_pre_move_state.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 742, i32 noundef 9, ptr noundef null) #9
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end28.i_crit_edge, %entry.if.end28.i_crit_edge
  %call36.i = call i32 @sta_info_move_state(ptr noundef %sta, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool38.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool38.not.i, label %if.end28.i.sta_info_pre_move_state.exit_crit_edge, label %land.rhs45.i

if.end28.i.sta_info_pre_move_state.exit_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sta_info_pre_move_state.exit

land.rhs45.i:                                     ; preds = %if.end28.i
  %.b9697.i = load i1, ptr @sta_info_pre_move_state.__already_done.45, align 1
  br i1 %.b9697.i, label %land.rhs45.i.sta_info_pre_move_state.exit_crit_edge, label %if.then56.i, !prof !176

land.rhs45.i.sta_info_pre_move_state.exit_crit_edge: ; preds = %land.rhs45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sta_info_pre_move_state.exit

if.then56.i:                                      ; preds = %land.rhs45.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @sta_info_pre_move_state.__already_done.45, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 745, i32 noundef 9, ptr noundef null) #9
  br label %sta_info_pre_move_state.exit

sta_info_pre_move_state.exit:                     ; preds = %if.then56.i, %land.rhs45.i.sta_info_pre_move_state.exit_crit_edge, %if.end28.i.sta_info_pre_move_state.exit_crit_edge
  %6 = ptrtoint ptr %_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %_flags.i.i, align 4
  %8 = and i32 %7, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i24 = icmp eq i32 %8, 0
  br i1 %tobool.not.i24, label %sta_info_pre_move_state.exit.if.end28.i30_crit_edge, label %land.rhs.i26

sta_info_pre_move_state.exit.if.end28.i30_crit_edge: ; preds = %sta_info_pre_move_state.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i30

land.rhs.i26:                                     ; preds = %sta_info_pre_move_state.exit
  %.b98.i25 = load i1, ptr @sta_info_pre_move_state.__already_done, align 1
  br i1 %.b98.i25, label %land.rhs.i26.if.end28.i30_crit_edge, label %if.then.i27, !prof !176

land.rhs.i26.if.end28.i30_crit_edge:              ; preds = %land.rhs.i26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i30

if.then.i27:                                      ; preds = %land.rhs.i26
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @sta_info_pre_move_state.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 742, i32 noundef 9, ptr noundef null) #9
  br label %if.end28.i30

if.end28.i30:                                     ; preds = %if.then.i27, %land.rhs.i26.if.end28.i30_crit_edge, %sta_info_pre_move_state.exit.if.end28.i30_crit_edge
  %call36.i28 = call i32 @sta_info_move_state(ptr noundef %sta, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i28)
  %tobool38.not.i29 = icmp eq i32 %call36.i28, 0
  br i1 %tobool38.not.i29, label %if.end28.i30.sta_info_pre_move_state.exit34_crit_edge, label %land.rhs45.i32

if.end28.i30.sta_info_pre_move_state.exit34_crit_edge: ; preds = %if.end28.i30
  call void @__sanitizer_cov_trace_pc() #11
  br label %sta_info_pre_move_state.exit34

land.rhs45.i32:                                   ; preds = %if.end28.i30
  %.b9697.i31 = load i1, ptr @sta_info_pre_move_state.__already_done.45, align 1
  br i1 %.b9697.i31, label %land.rhs45.i32.sta_info_pre_move_state.exit34_crit_edge, label %if.then56.i33, !prof !176

land.rhs45.i32.sta_info_pre_move_state.exit34_crit_edge: ; preds = %land.rhs45.i32
  call void @__sanitizer_cov_trace_pc() #11
  br label %sta_info_pre_move_state.exit34

if.then56.i33:                                    ; preds = %land.rhs45.i32
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @sta_info_pre_move_state.__already_done.45, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 745, i32 noundef 9, ptr noundef null) #9
  br label %sta_info_pre_move_state.exit34

sta_info_pre_move_state.exit34:                   ; preds = %if.then56.i33, %land.rhs45.i32.sta_info_pre_move_state.exit34_crit_edge, %if.end28.i30.sta_info_pre_move_state.exit34_crit_edge
  %9 = ptrtoint ptr %sdata1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sdata1, align 4
  %u = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %10, i32 0, i32 57
  %control_port = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %u, i32 0, i32 7
  %11 = ptrtoint ptr %control_port to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %control_port, align 1, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %if.then, label %sta_info_pre_move_state.exit34.if.end_crit_edge

sta_info_pre_move_state.exit34.if.end_crit_edge:  ; preds = %sta_info_pre_move_state.exit34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %sta_info_pre_move_state.exit34
  %13 = ptrtoint ptr %_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %_flags.i.i, align 4
  %15 = and i32 %14, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i36 = icmp eq i32 %15, 0
  br i1 %tobool.not.i36, label %if.then.if.end28.i42_crit_edge, label %land.rhs.i38

if.then.if.end28.i42_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i42

land.rhs.i38:                                     ; preds = %if.then
  %.b98.i37 = load i1, ptr @sta_info_pre_move_state.__already_done, align 1
  br i1 %.b98.i37, label %land.rhs.i38.if.end28.i42_crit_edge, label %if.then.i39, !prof !176

land.rhs.i38.if.end28.i42_crit_edge:              ; preds = %land.rhs.i38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i42

if.then.i39:                                      ; preds = %land.rhs.i38
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @sta_info_pre_move_state.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 742, i32 noundef 9, ptr noundef null) #9
  br label %if.end28.i42

if.end28.i42:                                     ; preds = %if.then.i39, %land.rhs.i38.if.end28.i42_crit_edge, %if.then.if.end28.i42_crit_edge
  %call36.i40 = call i32 @sta_info_move_state(ptr noundef %sta, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i40)
  %tobool38.not.i41 = icmp eq i32 %call36.i40, 0
  br i1 %tobool38.not.i41, label %if.end28.i42.if.end_crit_edge, label %land.rhs45.i44

if.end28.i42.if.end_crit_edge:                    ; preds = %if.end28.i42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs45.i44:                                   ; preds = %if.end28.i42
  %.b9697.i43 = load i1, ptr @sta_info_pre_move_state.__already_done.45, align 1
  br i1 %.b9697.i43, label %land.rhs45.i44.if.end_crit_edge, label %if.then56.i45, !prof !176

land.rhs45.i44.if.end_crit_edge:                  ; preds = %land.rhs45.i44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then56.i45:                                    ; preds = %land.rhs45.i44
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @sta_info_pre_move_state.__already_done.45, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 745, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %if.then56.i45, %land.rhs45.i44.if.end_crit_edge, %if.end28.i42.if.end_crit_edge, %sta_info_pre_move_state.exit34.if.end_crit_edge
  call void @rate_control_rate_init(ptr noundef %sta) #9
  %call = call i32 @sta_info_insert_rcu(ptr noundef %sta) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %if.then9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call11 = call ptr @sta_info_get(ptr noundef %1, ptr noundef nonnull %addr) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %call11, %if.then9 ], [ %sta, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #9
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_ibss_setup_sdata(ptr noundef %sdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57
  tail call void @init_timer_key(ptr noundef %u, ptr noundef nonnull @ieee80211_ibss_timer, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull @ieee80211_ibss_setup_sdata.__key) #9
  %incomplete_stations = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 21, i32 1, i32 4
  %0 = ptrtoint ptr %incomplete_stations to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %incomplete_stations, ptr %incomplete_stations, align 4
  %prev.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 22
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %incomplete_stations, ptr %prev.i, align 4
  %incomplete_lock = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 20, i32 0, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %incomplete_lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @ieee80211_ibss_setup_sdata.__key.7, i16 noundef signext 3) #9
  %csa_connection_drop_work = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 1
  tail call void @__init_work(ptr noundef %csa_connection_drop_work, i32 noundef 0) #9
  %2 = ptrtoint ptr %csa_connection_drop_work to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %csa_connection_drop_work, align 4
  %lockdep_map = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.10, ptr noundef nonnull @ieee80211_ibss_setup_sdata.__key.9, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry8 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %entry8 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry8, ptr %entry8, align 4
  %prev.i19 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i19 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry8, ptr %prev.i19, align 4
  %func = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @ieee80211_csa_connection_drop_work, ptr %func, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ieee80211_ibss_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %local = getelementptr i8, ptr %t, i32 -1460
  %0 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local, align 4
  %work = getelementptr i8, ptr %t, i32 -504
  tail call void @ieee80211_queue_work(ptr noundef %1, ptr noundef %work) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ieee80211_csa_connection_drop_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2600
  %mtx.i = getelementptr i8, ptr %work, i32 -2556
  tail call void @mutex_lock_nested(ptr noundef %mtx.i, i32 noundef 0) #9
  tail call fastcc void @ieee80211_ibss_disconnect(ptr noundef %add.ptr)
  tail call void @synchronize_rcu() #9
  %skb_queue = getelementptr i8, ptr %work, i32 -508
  tail call void @skb_queue_purge(ptr noundef %skb_queue) #9
  %local = getelementptr i8, ptr %work, i32 -1508
  %0 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local, align 4
  %work1 = getelementptr i8, ptr %work, i32 -552
  tail call void @ieee80211_queue_work(ptr noundef %1, ptr noundef %work1) #9
  tail call void @mutex_unlock(ptr noundef %mtx.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_ibss_notify_scan_completed(ptr noundef %local) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %iflist_mtx = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 64
  tail call void @mutex_lock_nested(ptr noundef %iflist_mtx, i32 noundef 0) #9
  %interfaces = getelementptr inbounds %struct.ieee80211_local, ptr %local, i32 0, i32 62
  %0 = ptrtoint ptr %interfaces to i32
  call void @__asan_load4_noabort(i32 %0)
  %sdata.018 = load ptr, ptr %interfaces, align 8
  %cmp.not19 = icmp eq ptr %sdata.018, %interfaces
  br i1 %cmp.not19, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %sdata.020 = phi ptr [ %sdata.0, %for.inc.for.body_crit_edge ], [ %sdata.018, %entry.for.body_crit_edge ]
  %state.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.020, i32 0, i32 9
  %1 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  %vif = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.020, i32 0, i32 59
  %3 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp2.not = icmp eq i32 %4, 1
  br i1 %cmp2.not, label %if.end4, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %last_scan_completed = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata.020, i32 0, i32 57, i32 0, i32 1, i32 4, i32 7
  %6 = ptrtoint ptr %last_scan_completed to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %last_scan_completed, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end4, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %7 = ptrtoint ptr %sdata.020 to i32
  call void @__asan_load4_noabort(i32 %7)
  %sdata.0 = load ptr, ptr %sdata.020, align 8
  %cmp.not = icmp eq ptr %sdata.0, %interfaces
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %iflist_mtx) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_ibss_join(ptr noundef %sdata, ptr noundef %params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %chandef = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %params, i32 0, i32 2
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wiphy, align 8
  %iftype = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iftype, align 4
  %call = tail call i32 @cfg80211_chandef_dfs_required(ptr noundef %7, ptr noundef %chandef, i32 noundef %9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5.not = icmp eq i32 %call, 0
  br i1 %cmp5.not, label %if.end4.if.end11_crit_edge, label %if.then6

if.end4.if.end11_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then6:                                         ; preds = %if.end4
  %userspace_handles_dfs = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %params, i32 0, i32 12
  %10 = ptrtoint ptr %userspace_handles_dfs to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %userspace_handles_dfs, align 4, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool7.not = icmp eq i8 %11, 0
  br i1 %tobool7.not, label %if.then6.cleanup_crit_edge, label %if.end9

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %width = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %params, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %width, align 4
  %shl = shl nuw i32 1, %13
  %phi.cast192 = trunc i32 %shl to i8
  br label %if.end11

if.end11:                                         ; preds = %if.end9, %if.end4.if.end11_crit_edge
  %radar_detect_width.0 = phi i8 [ %phi.cast192, %if.end9 ], [ 0, %if.end4.if.end11_crit_edge ]
  %channel_fixed = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %params, i32 0, i32 8
  %14 = ptrtoint ptr %channel_fixed to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %channel_fixed, align 4, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool12.not = icmp eq i8 %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool13 = icmp ne i32 %call, 0
  %narrow = select i1 %tobool12.not, i1 true, i1 %tobool13
  %16 = zext i1 %narrow to i32
  %chanctx_mtx = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 89
  tail call void @mutex_lock_nested(ptr noundef %chanctx_mtx, i32 noundef 0) #9
  %call15 = tail call i32 @ieee80211_check_combinations(ptr noundef %sdata, ptr noundef %chandef, i32 noundef %16, i8 noundef zeroext %radar_detect_width.0) #9
  tail call void @mutex_unlock(ptr noundef %chanctx_mtx) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp17 = icmp slt i32 %call15, 0
  br i1 %cmp17, label %if.end11.cleanup_crit_edge, label %if.end20

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end20:                                         ; preds = %if.end11
  %bssid = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %params, i32 0, i32 1
  %17 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bssid, align 4
  %tobool21.not = icmp eq ptr %18, null
  br i1 %tobool21.not, label %if.end20.if.end28_crit_edge, label %if.then22

if.end20.if.end28_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %u = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57
  %bssid23 = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %u, i32 0, i32 10
  %19 = call ptr @memcpy(ptr %bssid23, ptr %18, i32 6)
  br label %if.end28

if.end28:                                         ; preds = %if.then22, %if.end20.if.end28_crit_edge
  %.sink = phi i8 [ 1, %if.then22 ], [ 0, %if.end20.if.end28_crit_edge ]
  %20 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 2, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %.sink, ptr %20, align 4
  %privacy = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %params, i32 0, i32 9
  %22 = ptrtoint ptr %privacy to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %privacy, align 1, !range !172
  %u30 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57
  %privacy31 = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %u30, i32 0, i32 6
  %24 = ptrtoint ptr %privacy31 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %privacy31, align 2
  %control_port = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %params, i32 0, i32 10
  %25 = ptrtoint ptr %control_port to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %control_port, align 2, !range !172
  %control_port34 = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %u30, i32 0, i32 7
  %27 = ptrtoint ptr %control_port34 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %control_port34, align 1
  %userspace_handles_dfs36 = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %params, i32 0, i32 12
  %28 = ptrtoint ptr %userspace_handles_dfs36 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %userspace_handles_dfs36, align 4, !range !172
  %userspace_handles_dfs39 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 2, i32 1
  %30 = ptrtoint ptr %userspace_handles_dfs39 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %userspace_handles_dfs39, align 8
  %basic_rates = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %params, i32 0, i32 7
  %31 = ptrtoint ptr %basic_rates to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %basic_rates, align 4
  %basic_rates42 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 2
  %33 = ptrtoint ptr %basic_rates42 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %basic_rates42, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %34 = load volatile i32, ptr @jiffies, align 128
  %last_scan_completed = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 1, i32 4, i32 7
  %35 = ptrtoint ptr %last_scan_completed to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %last_scan_completed, align 4
  %width.i = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %params, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %37)
  %switch.selectcmp.i = icmp eq i32 %37, 7
  %switch.select.i = select i1 %switch.selectcmp.i, i32 64, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %37)
  %switch.selectcmp2.i = icmp eq i32 %37, 6
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 32, i32 %switch.select.i
  %38 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wiphy, align 8
  %40 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %chandef, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %arrayidx = getelementptr %struct.wiphy, ptr %39, i32 0, i32 53, i32 %43
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx, align 4
  %n_bitrates = getelementptr inbounds %struct.ieee80211_supported_band, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %n_bitrates, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp50193 = icmp sgt i32 %47, 0
  br i1 %cmp50193, label %for.body.lr.ph, label %if.end28.for.end_crit_edge

if.end28.for.end_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end28
  %bitrates = getelementptr inbounds %struct.ieee80211_supported_band, ptr %45, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0194 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %48 = ptrtoint ptr %bitrates to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bitrates, align 4
  %arrayidx52 = getelementptr %struct.ieee80211_rate, ptr %49, i32 %i.0194
  %50 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx52, align 4
  %and = and i32 %51, %switch.select3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %switch.select3.i)
  %cmp53.not = icmp eq i32 %and, %switch.select3.i
  br i1 %cmp53.not, label %for.body.for.inc_crit_edge, label %if.then55

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then55:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %shl56 = shl nuw i32 1, %i.0194
  %neg = xor i32 %shl56, -1
  %52 = ptrtoint ptr %basic_rates42 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %basic_rates42, align 8
  %and59 = and i32 %53, %neg
  store i32 %and59, ptr %basic_rates42, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then55, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0194, 1
  %54 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %n_bitrates, align 4
  %cmp50 = icmp slt i32 %inc, %55
  br i1 %cmp50, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end28.for.end_crit_edge
  %mcast_rate = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 26
  %mcast_rate62 = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %params, i32 0, i32 13
  %56 = call ptr @memcpy(ptr %mcast_rate, ptr %mcast_rate62, i32 24)
  %beacon_interval = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %params, i32 0, i32 6
  %57 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %beacon_interval, align 2
  %beacon_int = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 19
  %59 = ptrtoint ptr %beacon_int to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %beacon_int, align 2
  %chandef67 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 5
  %60 = call ptr @memcpy(ptr %chandef67, ptr %chandef, i32 28)
  %61 = ptrtoint ptr %channel_fixed to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %channel_fixed, align 4, !range !172
  %fixed_channel = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %u30, i32 0, i32 5
  %63 = ptrtoint ptr %fixed_channel to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %fixed_channel, align 1
  %ie = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %params, i32 0, i32 3
  %64 = ptrtoint ptr %ie to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ie, align 4
  %tobool73.not = icmp eq ptr %65, null
  br i1 %tobool73.not, label %for.end.if.end88_crit_edge, label %if.then74

for.end.if.end88_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

if.then74:                                        ; preds = %for.end
  %ie_len = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %params, i32 0, i32 5
  %66 = ptrtoint ptr %ie_len to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %ie_len, align 1
  %conv76 = zext i8 %67 to i32
  %call77 = tail call ptr @kmemdup(ptr noundef nonnull %65, i32 noundef %conv76, i32 noundef 3264) #9
  %ie79 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 4
  %68 = ptrtoint ptr %ie79 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call77, ptr %ie79, align 4
  %tobool82.not = icmp eq ptr %call77, null
  br i1 %tobool82.not, label %if.then74.if.end88_crit_edge, label %if.then83

if.then74.if.end88_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

if.then83:                                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #11
  %69 = ptrtoint ptr %ie_len to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %ie_len, align 1
  %ie_len86 = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %u30, i32 0, i32 13
  %71 = ptrtoint ptr %ie_len86 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %ie_len86, align 1
  br label %if.end88

if.end88:                                         ; preds = %if.then83, %if.then74.if.end88_crit_edge, %for.end.if.end88_crit_edge
  %state = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 23
  %72 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %state, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %73 = load volatile i32, ptr @jiffies, align 128
  %ibss_join_req = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 6, i32 27
  %74 = ptrtoint ptr %ibss_join_req to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %ibss_join_req, align 4
  %ssid = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 2, i32 3
  %75 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %params, align 4
  %ssid_len = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %params, i32 0, i32 4
  %77 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %ssid_len, align 4
  %conv94 = zext i8 %78 to i32
  %79 = call ptr @memcpy(ptr %ssid, ptr %76, i32 %conv94)
  %80 = load i8, ptr %ssid_len, align 4
  %ssid_len97 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 3
  %81 = ptrtoint ptr %ssid_len97 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %ssid_len97, align 8
  %ht_capa = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 7
  %ht_capa99 = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %params, i32 0, i32 14
  %82 = call ptr @memcpy(ptr %ht_capa, ptr %ht_capa99, i32 26)
  %ht_capa_mask = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %u30, i32 0, i32 19
  %ht_capa_mask101 = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %params, i32 0, i32 15
  %83 = call ptr @memcpy(ptr %ht_capa_mask, ptr %ht_capa_mask101, i32 26)
  %ht_operation_mode = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 27
  %84 = ptrtoint ptr %ht_operation_mode to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %ht_operation_mode, align 8
  %86 = or i16 %85, 11
  store i16 %86, ptr %ht_operation_mode, align 8
  tail call void @ieee80211_bss_info_change_notify(ptr noundef %sdata, i32 noundef 33554448) #9
  %smps_mode = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 44
  %87 = ptrtoint ptr %smps_mode to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 1, ptr %smps_mode, align 8
  %rx_chains = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 39
  %88 = ptrtoint ptr %rx_chains to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %rx_chains, align 4
  %needed_rx_chains = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 43
  %90 = ptrtoint ptr %needed_rx_chains to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %needed_rx_chains, align 4
  %control_port_over_nl80211 = getelementptr inbounds %struct.cfg80211_ibss_params, ptr %params, i32 0, i32 11
  %91 = ptrtoint ptr %control_port_over_nl80211 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %control_port_over_nl80211, align 1, !range !172
  %control_port_over_nl80211108 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 23
  %93 = ptrtoint ptr %control_port_over_nl80211108 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %control_port_over_nl80211108, align 2
  %work = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 40
  tail call void @ieee80211_queue_work(ptr noundef %1, ptr noundef %work) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end88, %if.end11.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end88 ], [ -95, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ -22, %if.then6.cleanup_crit_edge ], [ %call15, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_chandef_dfs_required(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_check_combinations(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_bss_info_change_notify(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_ibss_leave(ptr noundef %sdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57
  tail call fastcc void @ieee80211_ibss_disconnect(ptr noundef %sdata)
  %ssid_len = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 3
  %0 = ptrtoint ptr %ssid_len to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %ssid_len, align 4
  %bssid = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %u, i32 0, i32 10
  %1 = call ptr @memset(ptr %bssid, i32 0, i32 6)
  %ie = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 4
  %2 = ptrtoint ptr %ie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ie, align 4
  tail call void @kfree(ptr noundef %3) #9
  %4 = ptrtoint ptr %ie to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %ie, align 4
  %ie_len = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %u, i32 0, i32 13
  %5 = ptrtoint ptr %ie_len to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %ie_len, align 1
  %ht_capa = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 7
  %6 = call ptr @memset(ptr %ht_capa, i32 0, i32 52)
  tail call void @synchronize_rcu() #9
  %skb_queue = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 41
  tail call void @skb_queue_purge(ptr noundef %skb_queue) #9
  %call = tail call i32 @del_timer_sync(ptr noundef %u) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ieee80211_ibss_disconnect(ptr noundef %sdata) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57
  %local1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %bssid = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %u, i32 0, i32 10
  %2 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bssid, align 4
  %add.ptr.i = getelementptr %struct.ieee80211_if_ibss, ptr %u, i32 0, i32 10, i32 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr.i, align 2
  %conv.i = zext i16 %5 to i32
  %or.i = or i32 %3, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %entry.if.end14_crit_edge, label %if.then

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then:                                          ; preds = %entry
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wiphy, align 8
  %chandef = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 5
  %8 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chandef, align 4
  %ssid = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 2, i32 3
  %ssid_len = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 3
  %10 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ssid_len, align 4
  %conv = zext i8 %11 to i32
  %privacy = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %u, i32 0, i32 6
  %12 = ptrtoint ptr %privacy to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %privacy, align 2, !range !172
  %14 = xor i8 %13, 1
  %15 = zext i8 %14 to i32
  %call6 = tail call ptr @cfg80211_get_bss(ptr noundef %7, ptr noundef %9, ptr noundef %bssid, ptr noundef %ssid, i32 noundef %conv, i32 noundef 2, i32 noundef %15) #9
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.then.if.end14_crit_edge, label %if.then8

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wiphy, align 8
  tail call void @cfg80211_unlink_bss(ptr noundef %17, ptr noundef nonnull %call6) #9
  %18 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %local1, align 4
  %wiphy13 = getelementptr inbounds %struct.ieee80211_hw, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %wiphy13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wiphy13, align 8
  tail call void @cfg80211_put_bss(ptr noundef %21, ptr noundef nonnull %call6) #9
  br label %if.end14

if.end14:                                         ; preds = %if.then8, %if.then.if.end14_crit_edge, %entry.if.end14_crit_edge
  %state = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 23
  %22 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %state, align 4
  %call.i = tail call i32 @__sta_info_flush(ptr noundef %sdata, i1 noundef zeroext false) #9
  %incomplete_lock = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 20, i32 0, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %incomplete_lock) #9
  %incomplete_stations = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 21, i32 1, i32 4
  %23 = ptrtoint ptr %incomplete_stations to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %incomplete_stations, align 4
  %cmp.i106.not109 = icmp eq ptr %24, %incomplete_stations
  br i1 %cmp.i106.not109, label %if.end14.while.end_crit_edge, label %if.end14.while.body_crit_edge

if.end14.while.body_crit_edge:                    ; preds = %if.end14
  br label %while.body

if.end14.while.end_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %if.end14.while.body_crit_edge
  %25 = phi ptr [ %35, %list_del.exit.while.body_crit_edge ], [ %24, %if.end14.while.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %25) #9
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i, align 4
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %25, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %32 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 256 to ptr), ptr %25, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %incomplete_lock) #9
  tail call void @sta_info_free(ptr noundef %1, ptr noundef %25) #9
  tail call void @_raw_spin_lock_bh(ptr noundef %incomplete_lock) #9
  %34 = ptrtoint ptr %incomplete_stations to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %incomplete_stations, align 4
  %cmp.i106.not = icmp eq ptr %35, %incomplete_stations
  br i1 %cmp.i106.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %if.end14.while.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %incomplete_lock) #9
  %dev = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 6
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 8
  tail call void @netif_carrier_off(ptr noundef %37) #9
  %ibss_joined = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 11
  %38 = ptrtoint ptr %ibss_joined to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %ibss_joined, align 8
  %ibss_creator = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 12
  %39 = ptrtoint ptr %ibss_creator to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %ibss_creator, align 1
  %enable_beacon = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 17
  %40 = ptrtoint ptr %enable_beacon to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %enable_beacon, align 1
  %ssid_len28 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 40
  %41 = ptrtoint ptr %ssid_len28 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %ssid_len28, align 8
  %dep_map = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 1, i32 7, i32 5
  %call.i108 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108)
  %tobool30.not = icmp eq i32 %call.i108, 0
  br i1 %tobool30.not, label %land.lhs.true, label %while.end.do.end_crit_edge

while.end.do.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %while.end
  %call31 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true33

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true33:                                  ; preds = %land.lhs.true
  %.b105 = load i1, ptr @ieee80211_ibss_disconnect.__warned, align 1
  br i1 %.b105, label %land.lhs.true33.do.end_crit_edge, label %if.then35

land.lhs.true33.do.end_crit_edge:                 ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then35:                                        ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ieee80211_ibss_disconnect.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 718, ptr noundef nonnull @.str.3) #9
  br label %do.end

do.end:                                           ; preds = %if.then35, %land.lhs.true33.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %while.end.do.end_crit_edge
  %presp38 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 6, i32 31
  %42 = ptrtoint ptr %presp38 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %presp38, align 4
  store volatile ptr null, ptr %presp38, align 8
  %tobool53.not = icmp eq ptr %43, null
  br i1 %tobool53.not, label %do.end.if.end64_crit_edge, label %do.end60

do.end.if.end64_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

do.end60:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %callback_head = getelementptr inbounds %struct.beacon_data, ptr %43, i32 0, i32 7
  tail call void @kvfree_call_rcu(ptr noundef %callback_head, ptr noundef nonnull inttoptr (i32 28 to ptr)) #9
  br label %if.end64

if.end64:                                         ; preds = %do.end60, %do.end.if.end64_crit_edge
  %state65 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 9
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %state65) #9
  tail call void @ieee80211_bss_info_change_notify(ptr noundef %sdata, i32 noundef 2560) #9
  tail call void @__might_sleep(ptr noundef nonnull @.str.19, i32 noundef 1127) #9
  %flags.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 8
  %44 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %45, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end52.i

land.rhs.i:                                       ; preds = %if.end64
  %.b71.i = load i1, ptr @drv_leave_ibss.__already_done, align 1
  br i1 %.b71.i, label %land.rhs.i.drv_leave_ibss.exit_crit_edge, label %return.critedge.i, !prof !176

land.rhs.i.drv_leave_ibss.exit_crit_edge:         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drv_leave_ibss.exit

if.end52.i:                                       ; preds = %if.end64
  tail call fastcc void @trace_drv_leave_ibss(ptr noundef %1, ptr noundef %sdata) #9
  %ops.i = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 8
  %46 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ops.i, align 4
  %leave_ibss.i = getelementptr inbounds %struct.ieee80211_ops, ptr %47, i32 0, i32 86
  %48 = ptrtoint ptr %leave_ibss.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %leave_ibss.i, align 4
  %tobool53.not.i = icmp eq ptr %49, null
  br i1 %tobool53.not.i, label %if.end52.i.if.end57.i_crit_edge, label %if.then54.i

if.end52.i.if.end57.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.i

if.then54.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #11
  %vif.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59
  tail call void %49(ptr noundef %1, ptr noundef %vif.i) #9
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.then54.i, %if.end52.i.if.end57.i_crit_edge
  tail call fastcc void @trace_drv_return_void(ptr noundef %1) #9
  br label %drv_leave_ibss.exit

return.critedge.i:                                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @drv_leave_ibss.__already_done, align 1
  %50 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev, align 8
  %tobool22.not.c.i = icmp eq ptr %51, null
  %name24.c.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  %cond.c.i = select i1 %tobool22.not.c.i, ptr %name24.c.i, ptr %51
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 1128, i32 noundef 9, ptr noundef nonnull @.str.37, ptr noundef %cond.c.i, i32 noundef %45) #9
  br label %drv_leave_ibss.exit

drv_leave_ibss.exit:                              ; preds = %return.critedge.i, %if.end57.i, %land.rhs.i.drv_leave_ibss.exit_crit_edge
  %mtx66 = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 66
  tail call void @mutex_lock_nested(ptr noundef %mtx66, i32 noundef 0) #9
  tail call void @ieee80211_vif_release_channel(ptr noundef %sdata) #9
  tail call void @mutex_unlock(ptr noundef %mtx66) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_apply_htcap_overrides(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_ie_build_ht_cap(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_ie_build_ht_oper(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_ie_build_vht_cap(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_ie_build_vht_oper(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_add_wmm_info_ie(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_freq_khz_to_channel(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sdata_dbg(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ieee80211_tx_skb(ptr noundef %sdata, ptr noundef %skb) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = tail call i32 @llvm.read_register.i32(metadata !161) #9
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !173
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #9
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %chanctx_conf1.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 9
  %4 = ptrtoint ptr %chanctx_conf1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %chanctx_conf1.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end8.i_crit_edge

rcu_read_lock.exit.i.do.end8.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end8.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.do.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b1.i = load i1, ptr @ieee80211_tx_skb_tid.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true5.i.do.end8.i_crit_edge, label %if.then.i

land.lhs.true5.i.do.end8.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8.i

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ieee80211_tx_skb_tid.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 2199, ptr noundef nonnull @.str.1) #9
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then.i, %land.lhs.true5.i.do.end8.i_crit_edge, %land.lhs.true.i.do.end8.i_crit_edge, %rcu_read_lock.exit.i.do.end8.i_crit_edge
  %tobool10.not.i = icmp eq ptr %5, null
  br i1 %tobool10.not.i, label %do.end23.i, label %if.end39.i, !prof !171

do.end23.i:                                       ; preds = %do.end8.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 2200, i32 noundef 9, ptr noundef null) #9
  %call.i1 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i1, label %do.end23.i.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i3

do.end23.i.rcu_read_unlock.exit_crit_edge:        ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i3:                                 ; preds = %do.end23.i
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i2 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i2, label %land.lhs.true.i3.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i3.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i3
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i3
  %.b4.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, label %if.then.i4

land.lhs.true2.i.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i4:                                       ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i4, %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i3.rcu_read_unlock.exit_crit_edge, %do.end23.i.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !174
  %6 = tail call i32 @llvm.read_register.i32(metadata !161) #9
  %and.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #9
  br label %ieee80211_tx_skb_tid.exit

if.end39.i:                                       ; preds = %do.end8.i
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  tail call void @__ieee80211_tx_skb_tid_band(ptr noundef %sdata, ptr noundef %skb, i32 noundef 7, i32 noundef %13) #9
  %call.i2.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i2.i, label %if.end39.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i5.i

if.end39.i.rcu_read_unlock.exit.i_crit_edge:      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

land.lhs.true.i5.i:                               ; preds = %if.end39.i
  %call1.i3.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3.i)
  %tobool.not.i4.i = icmp eq i32 %call1.i3.i, 0
  br i1 %tobool.not.i4.i, label %land.lhs.true.i5.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i7.i

land.lhs.true.i5.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i7.i:                              ; preds = %land.lhs.true.i5.i
  %.b4.i6.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6.i, label %land.lhs.true2.i7.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i8.i

land.lhs.true2.i7.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

if.then.i8.i:                                     ; preds = %land.lhs.true2.i7.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #9
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i8.i, %land.lhs.true2.i7.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i5.i.rcu_read_unlock.exit.i_crit_edge, %if.end39.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !174
  %14 = tail call i32 @llvm.read_register.i32(metadata !161) #9
  %and.i.i.i.i.i9.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i9.i to ptr
  %preempt_count.i.i.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i10.i, align 4
  %sub.i.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i10.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %ieee80211_tx_skb_tid.exit

ieee80211_tx_skb_tid.exit:                        ; preds = %rcu_read_unlock.exit.i, %rcu_read_unlock.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_drv_tx_last_beacon(ptr noundef %local) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_tx_last_beacon, i32 0, i32 1), ptr blockaddress(@trace_drv_tx_last_beacon, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !177

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !161) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !176

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !161) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !178
  %call42 = tail call i32 @__traceiter_drv_tx_last_beacon(ptr noundef null, ptr noundef %local) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !179
  %13 = tail call i32 @llvm.read_register.i32(metadata !161) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !161) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !176

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !161) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !180
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_tx_last_beacon, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_tx_last_beacon, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_drv_tx_last_beacon.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_drv_tx_last_beacon.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 1070, ptr noundef nonnull @.str.1) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !181
  %31 = tail call i32 @llvm.read_register.i32(metadata !161) #9
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
define internal fastcc void @trace_drv_return_int(ptr noundef %local, i32 noundef %ret) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 1), ptr blockaddress(@trace_drv_return_int, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !177

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !161) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !176

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !161) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !182
  %call42 = tail call i32 @__traceiter_drv_return_int(ptr noundef null, ptr noundef %local, i32 noundef %ret) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !183
  %13 = tail call i32 @llvm.read_register.i32(metadata !161) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !161) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !176

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !161) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !180
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_int, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_drv_return_int.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_drv_return_int.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 219, ptr noundef nonnull @.str.1) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !181
  %31 = tail call i32 @llvm.read_register.i32(metadata !161) #9
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
declare dso_local i32 @__traceiter_drv_tx_last_beacon(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_return_int(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ieee80211_tx_skb_tid_band(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_bss_info_update(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ieee80211_ibss_process_chanswitch(ptr noundef %sdata, ptr noundef %elems) unnamed_addr #0 align 64 {
entry:
  %params = alloca %struct.cfg80211_csa_settings, align 4
  %csa_ie = alloca %struct.ieee80211_csa_ie, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %params) #9
  %0 = call ptr @memset(ptr %params, i32 255, i32 192)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %csa_ie) #9
  %1 = call ptr @memset(ptr %csa_ie, i32 255, i32 40)
  %u = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %entry.sdata_assert_lock.exit_crit_edge, label %land.rhs.i

entry.sdata_assert_lock.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdata_assert_lock.exit

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 1, i32 7, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.sdata_assert_lock.exit_crit_edge, !prof !171

land.rhs.i.sdata_assert_lock.exit_crit_edge:      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdata_assert_lock.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1050, i32 noundef 9, ptr noundef null) #9
  br label %sdata_assert_lock.exit

sdata_assert_lock.exit:                           ; preds = %do.end.i, %land.rhs.i.sdata_assert_lock.exit_crit_edge, %entry.sdata_assert_lock.exit_crit_edge
  %chandef = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 5
  %width = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 6, i32 3
  %3 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %4)
  %5 = icmp ult i32 %4, 8
  br i1 %5, label %switch.hole_check, label %sdata_assert_lock.exit.sw.epilog_crit_edge

sdata_assert_lock.exit.sw.epilog_crit_edge:       ; preds = %sdata_assert_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

switch.hole_check:                                ; preds = %sdata_assert_lock.exit
  %switch.maskindex = trunc i32 %4 to i8
  %switch.shifted = lshr i8 -61, %switch.maskindex
  %6 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %switch.lobit.not = icmp eq i8 %6, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog_crit_edge, label %switch.lookup

switch.hole_check.sw.epilog_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.ieee80211_ibss_process_chanswitch, i32 0, i32 %4
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %switch.hole_check.sw.epilog_crit_edge, %sdata_assert_lock.exit.sw.epilog_crit_edge
  %sta_flags.1 = phi i32 [ 2048, %sdata_assert_lock.exit.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ], [ 2048, %switch.hole_check.sw.epilog_crit_edge ]
  %vht_cap_elem = getelementptr inbounds %struct.ieee802_11_elems, ptr %elems, i32 0, i32 18
  %8 = ptrtoint ptr %vht_cap_elem to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vht_cap_elem, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %sw.epilog.if.end_crit_edge, label %if.then

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %9, align 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.if.end_crit_edge
  %vht_cap_info.0 = phi i32 [ %12, %if.then ], [ 0, %sw.epilog.if.end_crit_edge ]
  %13 = call ptr @memset(ptr %params, i32 0, i32 192)
  %14 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chandef, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %bssid = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %u, i32 0, i32 10
  %call = call i32 @ieee80211_parse_ch_switch_ie(ptr noundef %sdata, ptr noundef %elems, i32 noundef %17, i32 noundef %vht_cap_info.0, i32 noundef %sta_flags.1, ptr noundef %bssid, ptr noundef nonnull %csa_ie) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.disconnect_crit_edge, label %if.end7

if.end.disconnect_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %disconnect

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.end10, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %local = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %18 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %local, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wiphy, align 8
  %flags = getelementptr inbounds %struct.wiphy, ptr %21, i32 0, i32 11
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 32
  %and = and i32 %23, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end10.disconnect_crit_edge, label %if.end13

if.end10.disconnect_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %disconnect

if.end13:                                         ; preds = %if.end10
  %count = getelementptr inbounds %struct.ieee80211_csa_ie, ptr %csa_ie, i32 0, i32 2
  %24 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %count, align 1
  %count14 = getelementptr inbounds %struct.cfg80211_csa_settings, ptr %params, i32 0, i32 9
  %26 = ptrtoint ptr %count14 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %count14, align 2
  %27 = call ptr @memcpy(ptr %params, ptr %csa_ie, i32 28)
  %28 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %width, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %29, label %do.end [
    i32 7, label %if.end13.sw.bb25_crit_edge
    i32 6, label %if.end13.sw.bb25_crit_edge7
    i32 0, label %if.end13.cfg80211_get_chandef_type.exit_crit_edge
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
  ]

if.end13.cfg80211_get_chandef_type.exit_crit_edge: ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cfg80211_get_chandef_type.exit

if.end13.sw.bb25_crit_edge7:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb25

if.end13.sw.bb25_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb25

sw.bb1.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cfg80211_get_chandef_type.exit

sw.bb2.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %center_freq1.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 6, i32 7
  %31 = ptrtoint ptr %center_freq1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %center_freq1.i, align 4
  %33 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chandef, align 4
  %center_freq.i = getelementptr inbounds %struct.ieee80211_channel, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %center_freq.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %36)
  %cmp.i = icmp ugt i32 %32, %36
  %..i = select i1 %cmp.i, i32 3, i32 2
  br label %cfg80211_get_chandef_type.exit

cfg80211_get_chandef_type.exit:                   ; preds = %sw.bb2.i, %sw.bb1.i, %if.end13.cfg80211_get_chandef_type.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %sw.bb1.i ], [ %..i, %sw.bb2.i ], [ %29, %if.end13.cfg80211_get_chandef_type.exit_crit_edge ]
  %37 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %params, align 4
  call void @cfg80211_chandef_create(ptr noundef nonnull %params, ptr noundef %38, i32 noundef %retval.0.i) #9
  br label %sw.epilog60

sw.bb25:                                          ; preds = %if.end13.sw.bb25_crit_edge, %if.end13.sw.bb25_crit_edge7
  %width27 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %params, i32 0, i32 1
  %39 = ptrtoint ptr %width27 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %width27, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %29)
  %cmp30.not = icmp eq i32 %40, %29
  br i1 %cmp30.not, label %sw.bb25.sw.epilog60_crit_edge, label %if.then31

sw.bb25.sw.epilog60_crit_edge:                    ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog60

if.then31:                                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  %41 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %params, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %center_freq, align 4
  %center_freq1 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %params, i32 0, i32 2
  %45 = ptrtoint ptr %center_freq1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %center_freq1, align 4
  %center_freq2 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %params, i32 0, i32 3
  %47 = ptrtoint ptr %center_freq2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %center_freq2, align 4
  call void (ptr, ...) @__sdata_info(ptr noundef nonnull @.str.26, ptr noundef %name, ptr noundef %bssid, i32 noundef %44, i32 noundef %40, i32 noundef %46, i32 noundef %48) #9
  br label %disconnect

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 846, i32 noundef 9, ptr noundef null) #9
  br label %disconnect

sw.epilog60:                                      ; preds = %sw.bb25.sw.epilog60_crit_edge, %cfg80211_get_chandef_type.exit
  %49 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %local, align 4
  %wiphy63 = getelementptr inbounds %struct.ieee80211_hw, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %wiphy63 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %wiphy63, align 8
  %call65 = call zeroext i1 @cfg80211_reg_can_beacon(ptr noundef %52, ptr noundef nonnull %params, i32 noundef 1) #9
  br i1 %call65, label %if.end80, label %if.then66

if.then66:                                        ; preds = %sw.epilog60
  call void @__sanitizer_cov_trace_pc() #11
  %name67 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  %53 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %params, align 4
  %center_freq73 = getelementptr inbounds %struct.ieee80211_channel, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %center_freq73 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %center_freq73, align 4
  %width75 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %params, i32 0, i32 1
  %57 = ptrtoint ptr %width75 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %width75, align 4
  %center_freq177 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %params, i32 0, i32 2
  %59 = ptrtoint ptr %center_freq177 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %center_freq177, align 4
  %center_freq279 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %params, i32 0, i32 3
  %61 = ptrtoint ptr %center_freq279 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %center_freq279, align 4
  call void (ptr, ...) @__sdata_info(ptr noundef nonnull @.str.27, ptr noundef %name67, ptr noundef %bssid, i32 noundef %56, i32 noundef %58, i32 noundef %60, i32 noundef %62) #9
  br label %disconnect

if.end80:                                         ; preds = %sw.epilog60
  %63 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %local, align 4
  %wiphy83 = getelementptr inbounds %struct.ieee80211_hw, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %wiphy83 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %wiphy83, align 8
  %call85 = call i32 @cfg80211_chandef_dfs_required(ptr noundef %66, ptr noundef nonnull %params, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %cmp86 = icmp slt i32 %call85, 0
  br i1 %cmp86, label %if.end80.disconnect_crit_edge, label %if.end88

if.end80.disconnect_crit_edge:                    ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %disconnect

if.end88:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %cmp89.not = icmp eq i32 %call85, 0
  br i1 %cmp89.not, label %if.end88.if.end92_crit_edge, label %land.lhs.true

if.end88.if.end92_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

land.lhs.true:                                    ; preds = %if.end88
  %userspace_handles_dfs = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 2, i32 1
  %67 = ptrtoint ptr %userspace_handles_dfs to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %userspace_handles_dfs, align 4, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool90.not = icmp eq i8 %68, 0
  br i1 %tobool90.not, label %land.lhs.true.disconnect_crit_edge, label %land.lhs.true.if.end92_crit_edge

land.lhs.true.if.end92_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

land.lhs.true.disconnect_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %disconnect

if.end92:                                         ; preds = %land.lhs.true.if.end92_crit_edge, %if.end88.if.end92_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool93 = icmp ne i32 %call85, 0
  %radar_required = getelementptr inbounds %struct.cfg80211_csa_settings, ptr %params, i32 0, i32 7
  %frombool94 = zext i1 %tobool93 to i8
  %69 = ptrtoint ptr %radar_required to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %frombool94, ptr %radar_required, align 4
  %chandef96 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 32
  %70 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %params, align 4
  %72 = ptrtoint ptr %chandef96 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %chandef96, align 4
  %cmp.i2 = icmp eq ptr %71, %73
  br i1 %cmp.i2, label %land.lhs.true.i, label %if.end92.if.end101_crit_edge

if.end92.if.end101_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101

land.lhs.true.i:                                  ; preds = %if.end92
  %width.i3 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %params, i32 0, i32 1
  %74 = ptrtoint ptr %width.i3 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %width.i3, align 4
  %width2.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 32, i32 1
  %76 = ptrtoint ptr %width2.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %width2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %77)
  %cmp3.i = icmp eq i32 %75, %77
  br i1 %cmp3.i, label %land.lhs.true4.i, label %land.lhs.true.i.if.end101_crit_edge

land.lhs.true.i.if.end101_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %center_freq1.i4 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %params, i32 0, i32 2
  %78 = ptrtoint ptr %center_freq1.i4 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %center_freq1.i4, align 4
  %center_freq15.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 32, i32 2
  %80 = ptrtoint ptr %center_freq15.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %center_freq15.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %81)
  %cmp6.i = icmp eq i32 %79, %81
  br i1 %cmp6.i, label %land.lhs.true7.i, label %land.lhs.true4.i.if.end101_crit_edge

land.lhs.true4.i.if.end101_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101

land.lhs.true7.i:                                 ; preds = %land.lhs.true4.i
  %freq1_offset.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %params, i32 0, i32 5
  %82 = ptrtoint ptr %freq1_offset.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %freq1_offset.i, align 4
  %freq1_offset8.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 32, i32 5
  %84 = ptrtoint ptr %freq1_offset8.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %freq1_offset8.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %83, i16 %85)
  %cmp10.i = icmp eq i16 %83, %85
  br i1 %cmp10.i, label %cfg80211_chandef_identical.exit, label %land.lhs.true7.i.if.end101_crit_edge

land.lhs.true7.i.if.end101_crit_edge:             ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101

cfg80211_chandef_identical.exit:                  ; preds = %land.lhs.true7.i
  %center_freq2.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %params, i32 0, i32 3
  %86 = ptrtoint ptr %center_freq2.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %center_freq2.i, align 4
  %center_freq212.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 32, i32 3
  %88 = ptrtoint ptr %center_freq212.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %center_freq212.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %89)
  %cmp13.i = icmp eq i32 %87, %89
  br i1 %cmp13.i, label %if.then98, label %cfg80211_chandef_identical.exit.if.end101_crit_edge

cfg80211_chandef_identical.exit.if.end101_crit_edge: ; preds = %cfg80211_chandef_identical.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101

if.then98:                                        ; preds = %cfg80211_chandef_identical.exit
  call void @__sanitizer_cov_trace_pc() #11
  %name99 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.28, ptr noundef %name99) #9
  br label %cleanup

if.end101:                                        ; preds = %cfg80211_chandef_identical.exit.if.end101_crit_edge, %land.lhs.true7.i.if.end101_crit_edge, %land.lhs.true4.i.if.end101_crit_edge, %land.lhs.true.i.if.end101_crit_edge, %if.end92.if.end101_crit_edge
  %name102 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  %center_freq106 = getelementptr inbounds %struct.ieee80211_channel, ptr %71, i32 0, i32 1
  %90 = ptrtoint ptr %center_freq106 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %center_freq106, align 4
  call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.29, ptr noundef %name102, i32 noundef %91) #9
  %mode = getelementptr inbounds %struct.ieee80211_csa_ie, ptr %csa_ie, i32 0, i32 1
  %92 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool107 = icmp ne i8 %93, 0
  %block_tx = getelementptr inbounds %struct.cfg80211_csa_settings, ptr %params, i32 0, i32 8
  %frombool112 = zext i1 %tobool107 to i8
  %94 = ptrtoint ptr %block_tx to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %frombool112, ptr %block_tx, align 1
  %95 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %local, align 4
  %wiphy115 = getelementptr inbounds %struct.ieee80211_hw, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %wiphy115 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %wiphy115, align 8
  %dev = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 6
  %99 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev, align 8
  %call116 = call i32 @ieee80211_channel_switch(ptr noundef %98, ptr noundef %100, ptr noundef nonnull %params) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.end119, label %if.end101.disconnect_crit_edge

if.end101.disconnect_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  br label %disconnect

if.end119:                                        ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @ieee80211_ibss_csa_mark_radar(ptr noundef %sdata)
  br label %cleanup

disconnect:                                       ; preds = %if.end101.disconnect_crit_edge, %land.lhs.true.disconnect_crit_edge, %if.end80.disconnect_crit_edge, %if.then66, %do.end, %if.then31, %if.end10.disconnect_crit_edge, %if.end.disconnect_crit_edge
  %name120 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.30, ptr noundef %name120) #9
  %local122 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %101 = ptrtoint ptr %local122 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %local122, align 4
  %csa_connection_drop_work = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 1
  call void @ieee80211_queue_work(ptr noundef %102, ptr noundef %csa_connection_drop_work) #9
  %103 = ptrtoint ptr %local122 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %local122, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %wiphy.i, align 8
  %call.i = call i32 @cfg80211_chandef_dfs_required(ptr noundef %106, ptr noundef %chandef, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i6 = icmp sgt i32 %call.i, 0
  br i1 %cmp.i6, label %if.then.i, label %disconnect.cleanup_crit_edge

disconnect.cleanup_crit_edge:                     ; preds = %disconnect
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %disconnect
  call void @__sanitizer_cov_trace_pc() #11
  %107 = ptrtoint ptr %local122 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %local122, align 4
  %wiphy3.i = getelementptr inbounds %struct.ieee80211_hw, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %wiphy3.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %wiphy3.i, align 8
  call void @__cfg80211_radar_event(ptr noundef %110, ptr noundef %chandef, i1 noundef zeroext false, i32 noundef 2592) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %disconnect.cleanup_crit_edge, %if.end119, %if.then98, %if.end7.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.then98 ], [ true, %if.end119 ], [ false, %if.end7.cleanup_crit_edge ], [ true, %disconnect.cleanup_crit_edge ], [ true, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %csa_ie) #9
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %params) #9
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ieee80211_calculate_rx_timestamp(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @drv_get_tsf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ieee80211_sta_join_ibss(ptr noundef %sdata, ptr noundef %bss) unnamed_addr #0 align 64 {
entry:
  %chandef = alloca %struct.cfg80211_chan_def, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %bss, i32 -60
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %chandef) #9
  %0 = call ptr @memset(ptr %chandef, i32 255, i32 28)
  %beacon_interval = getelementptr i8, ptr %bss, i32 -20
  %1 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %beacon_interval, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %3 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i105 = icmp eq i32 %3, 0
  br i1 %tobool.not.i105, label %entry.sdata_assert_lock.exit_crit_edge, label %land.rhs.i

entry.sdata_assert_lock.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdata_assert_lock.exit

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 1, i32 7, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.sdata_assert_lock.exit_crit_edge, !prof !171

land.rhs.i.sdata_assert_lock.exit_crit_edge:      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdata_assert_lock.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1050, i32 noundef 9, ptr noundef null) #9
  br label %sdata_assert_lock.exit

sdata_assert_lock.exit:                           ; preds = %do.end.i, %land.rhs.i.sdata_assert_lock.exit_crit_edge, %entry.sdata_assert_lock.exit_crit_edge
  %chandef2 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 5
  %width = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 6, i32 3
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %5, label %sw.default [
    i32 5, label %sdata_assert_lock.exit.sw.bb11_crit_edge
    i32 4, label %sdata_assert_lock.exit.sw.bb11_crit_edge141
    i32 3, label %sdata_assert_lock.exit.sw.bb11_crit_edge142
    i32 6, label %sdata_assert_lock.exit.sw.bb5_crit_edge
    i32 7, label %sdata_assert_lock.exit.sw.bb5_crit_edge143
    i32 0, label %sdata_assert_lock.exit.cfg80211_get_chandef_type.exit_crit_edge
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
  ]

sdata_assert_lock.exit.cfg80211_get_chandef_type.exit_crit_edge: ; preds = %sdata_assert_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cfg80211_get_chandef_type.exit

sdata_assert_lock.exit.sw.bb5_crit_edge143:       ; preds = %sdata_assert_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5

sdata_assert_lock.exit.sw.bb5_crit_edge:          ; preds = %sdata_assert_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5

sdata_assert_lock.exit.sw.bb11_crit_edge142:      ; preds = %sdata_assert_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb11

sdata_assert_lock.exit.sw.bb11_crit_edge141:      ; preds = %sdata_assert_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb11

sdata_assert_lock.exit.sw.bb11_crit_edge:         ; preds = %sdata_assert_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb11

sw.bb1.i:                                         ; preds = %sdata_assert_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cfg80211_get_chandef_type.exit

sw.bb2.i:                                         ; preds = %sdata_assert_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  %center_freq1.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 6, i32 7
  %7 = ptrtoint ptr %center_freq1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %center_freq1.i, align 4
  %9 = ptrtoint ptr %chandef2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chandef2, align 4
  %center_freq.i = getelementptr inbounds %struct.ieee80211_channel, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %center_freq.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %12)
  %cmp.i = icmp ugt i32 %8, %12
  %..i = select i1 %cmp.i, i32 3, i32 2
  br label %cfg80211_get_chandef_type.exit

cfg80211_get_chandef_type.exit:                   ; preds = %sw.bb2.i, %sw.bb1.i, %sdata_assert_lock.exit.cfg80211_get_chandef_type.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %sw.bb1.i ], [ %..i, %sw.bb2.i ], [ %5, %sdata_assert_lock.exit.cfg80211_get_chandef_type.exit_crit_edge ]
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 4
  call void @cfg80211_chandef_create(ptr noundef nonnull %chandef, ptr noundef %14, i32 noundef %retval.0.i) #9
  br label %sw.epilog

sw.bb5:                                           ; preds = %sdata_assert_lock.exit.sw.bb5_crit_edge, %sdata_assert_lock.exit.sw.bb5_crit_edge143
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr, align 4
  call void @cfg80211_chandef_create(ptr noundef nonnull %chandef, ptr noundef %16, i32 noundef 0) #9
  %17 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %width, align 4
  %width10 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 1
  %19 = ptrtoint ptr %width10 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %width10, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %sdata_assert_lock.exit.sw.bb11_crit_edge, %sdata_assert_lock.exit.sw.bb11_crit_edge141, %sdata_assert_lock.exit.sw.bb11_crit_edge142
  %20 = call ptr @memcpy(ptr %chandef, ptr %chandef2, i32 28)
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr, align 4
  %23 = ptrtoint ptr %chandef to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %chandef, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %sdata_assert_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr, align 4
  call void @cfg80211_chandef_create(ptr noundef nonnull %chandef, ptr noundef %25, i32 noundef 0) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb11, %sw.bb5, %cfg80211_get_chandef_type.exit
  %local = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %26 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %local, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wiphy, align 8
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %arrayidx = getelementptr %struct.wiphy, ptr %29, i32 0, i32 53, i32 %33
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx, align 4
  %36 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %37)
  %switch.selectcmp.i = icmp eq i32 %37, 7
  %switch.select.i = select i1 %switch.selectcmp.i, i32 64, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %37)
  %switch.selectcmp2.i = icmp eq i32 %37, 6
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 32, i32 %switch.select.i
  %38 = call i32 @llvm.read_register.i32(metadata !161) #9
  %and.i.i.i.i.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %41, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !173
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i108 = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i108, label %sw.epilog.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

sw.epilog.rcu_read_lock.exit.i_crit_edge:         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %sw.epilog
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #9
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %sw.epilog.rcu_read_lock.exit.i_crit_edge
  %chanctx_conf1.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 9
  %42 = ptrtoint ptr %chanctx_conf1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %chanctx_conf1.i, align 4
  %call.i109 = call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i109)
  %tobool.not.i110 = icmp eq i32 %call.i109, 0
  br i1 %tobool.not.i110, label %land.lhs.true.i111, label %rcu_read_lock.exit.i.do.end8.i_crit_edge

rcu_read_lock.exit.i.do.end8.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8.i

land.lhs.true.i111:                               ; preds = %rcu_read_lock.exit.i
  %call3.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i111.do.end8.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i111.do.end8.i_crit_edge:           ; preds = %land.lhs.true.i111
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i111
  %.b15.i = load i1, ptr @ieee80211_vif_get_shift.__warned, align 1
  br i1 %.b15.i, label %land.lhs.true5.i.do.end8.i_crit_edge, label %if.then.i112

land.lhs.true5.i.do.end8.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8.i

if.then.i112:                                     ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ieee80211_vif_get_shift.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 1073, ptr noundef nonnull @.str.1) #9
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then.i112, %land.lhs.true5.i.do.end8.i_crit_edge, %land.lhs.true.i111.do.end8.i_crit_edge, %rcu_read_lock.exit.i.do.end8.i_crit_edge
  %tobool10.not.i = icmp eq ptr %43, null
  br i1 %tobool10.not.i, label %do.end8.i.if.end13.i_crit_edge, label %if.then11.i

do.end8.i.if.end13.i_crit_edge:                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

if.then11.i:                                      ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %width.i.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %width.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %45)
  %switch.selectcmp.i.i = icmp eq i32 %45, 7
  %switch.select.i.i = zext i1 %switch.selectcmp.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %45)
  %switch.selectcmp2.i.i = icmp eq i32 %45, 6
  %switch.select3.i.i = select i1 %switch.selectcmp2.i.i, i32 2, i32 %switch.select.i.i
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then11.i, %do.end8.i.if.end13.i_crit_edge
  %shift.0.i = phi i32 [ %switch.select3.i.i, %if.then11.i ], [ 0, %do.end8.i.if.end13.i_crit_edge ]
  %call.i16.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i16.i, label %if.end13.i.ieee80211_vif_get_shift.exit_crit_edge, label %land.lhs.true.i19.i

if.end13.i.ieee80211_vif_get_shift.exit_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ieee80211_vif_get_shift.exit

land.lhs.true.i19.i:                              ; preds = %if.end13.i
  %call1.i17.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17.i)
  %tobool.not.i18.i = icmp eq i32 %call1.i17.i, 0
  br i1 %tobool.not.i18.i, label %land.lhs.true.i19.i.ieee80211_vif_get_shift.exit_crit_edge, label %land.lhs.true2.i21.i

land.lhs.true.i19.i.ieee80211_vif_get_shift.exit_crit_edge: ; preds = %land.lhs.true.i19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ieee80211_vif_get_shift.exit

land.lhs.true2.i21.i:                             ; preds = %land.lhs.true.i19.i
  %.b4.i20.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i20.i, label %land.lhs.true2.i21.i.ieee80211_vif_get_shift.exit_crit_edge, label %if.then.i22.i

land.lhs.true2.i21.i.ieee80211_vif_get_shift.exit_crit_edge: ; preds = %land.lhs.true2.i21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ieee80211_vif_get_shift.exit

if.then.i22.i:                                    ; preds = %land.lhs.true2.i21.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #9
  br label %ieee80211_vif_get_shift.exit

ieee80211_vif_get_shift.exit:                     ; preds = %if.then.i22.i, %land.lhs.true2.i21.i.ieee80211_vif_get_shift.exit_crit_edge, %land.lhs.true.i19.i.ieee80211_vif_get_shift.exit_crit_edge, %if.end13.i.ieee80211_vif_get_shift.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !174
  %46 = call i32 @llvm.read_register.i32(metadata !161) #9
  %and.i.i.i.i.i23.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i.i23.i to ptr
  %preempt_count.i.i.i.i24.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i.i.i24.i, align 4
  %sub.i.i.i.i = add i32 %49, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i24.i, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %supp_rates_len = getelementptr inbounds %struct.ieee80211_bss, ptr %bss, i32 0, i32 5
  %50 = ptrtoint ptr %supp_rates_len to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %supp_rates_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp21132.not = icmp eq i32 %51, 0
  br i1 %cmp21132.not, label %ieee80211_vif_get_shift.exit.for.end55_crit_edge, label %for.body.lr.ph

ieee80211_vif_get_shift.exit.for.end55_crit_edge: ; preds = %ieee80211_vif_get_shift.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end55

for.body.lr.ph:                                   ; preds = %ieee80211_vif_get_shift.exit
  %n_bitrates = getelementptr inbounds %struct.ieee80211_supported_band, ptr %35, i32 0, i32 4
  %52 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %n_bitrates, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp31129 = icmp sgt i32 %53, 0
  %bitrates = getelementptr inbounds %struct.ieee80211_supported_band, ptr %35, i32 0, i32 1
  %mul = shl nuw nsw i32 5, %shift.0.i
  %add = add nsw i32 %mul, -1
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %i.0134 = phi i32 [ 0, %for.body.lr.ph ], [ %inc54, %for.end.for.body_crit_edge ]
  %basic_rates.0133 = phi i32 [ 0, %for.body.lr.ph ], [ %basic_rates.4, %for.end.for.body_crit_edge ]
  %arrayidx23 = getelementptr %struct.ieee80211_bss, ptr %bss, i32 0, i32 4, i32 %i.0134
  %54 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %55 to i32
  %and = and i32 %conv24, 127
  %and28 = and i32 %conv24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool.not = icmp eq i32 %and28, 0
  br i1 %cmp31129, label %for.body33.lr.ph, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body33.lr.ph:                                 ; preds = %for.body
  %56 = ptrtoint ptr %bitrates to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bitrates, align 4
  br label %for.body33

for.body33:                                       ; preds = %for.inc.for.body33_crit_edge, %for.body33.lr.ph
  %j.0130 = phi i32 [ 0, %for.body33.lr.ph ], [ %inc, %for.inc.for.body33_crit_edge ]
  %arrayidx34 = getelementptr %struct.ieee80211_rate, ptr %57, i32 %j.0130
  %58 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx34, align 4
  %and35 = and i32 %59, %switch.select3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and35, i32 %switch.select3.i)
  %cmp36.not = icmp eq i32 %and35, %switch.select3.i
  br i1 %cmp36.not, label %if.end39, label %for.body33.for.inc_crit_edge

for.body33.for.inc_crit_edge:                     ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end39:                                         ; preds = %for.body33
  %bitrate = getelementptr %struct.ieee80211_rate, ptr %57, i32 %j.0130, i32 1
  %60 = ptrtoint ptr %bitrate to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %bitrate, align 4
  %conv42 = zext i16 %61 to i32
  %sub = add i32 %add, %conv42
  %div = sdiv i32 %sub, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %and)
  %cmp45 = icmp eq i32 %div, %and
  br i1 %cmp45, label %cleanup, label %if.end39.for.inc_crit_edge

if.end39.for.inc_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

cleanup:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %shl50 = shl nuw i32 1, %j.0130
  %or = select i1 %tobool.not, i32 0, i32 %shl50
  %basic_rates.2 = or i32 %or, %basic_rates.0133
  br label %for.end

for.inc:                                          ; preds = %if.end39.for.inc_crit_edge, %for.body33.for.inc_crit_edge
  %inc = add nuw nsw i32 %j.0130, 1
  %exitcond.not = icmp eq i32 %inc, %53
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body33_crit_edge

for.inc.for.body33_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body33

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup, %for.body.for.end_crit_edge
  %basic_rates.4 = phi i32 [ %basic_rates.2, %cleanup ], [ %basic_rates.0133, %for.body.for.end_crit_edge ], [ %basic_rates.0133, %for.inc.for.end_crit_edge ]
  %inc54 = add nuw i32 %i.0134, 1
  %exitcond136.not = icmp eq i32 %inc54, %51
  br i1 %exitcond136.not, label %for.end.for.end55_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end.for.end55_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end55

for.end55:                                        ; preds = %for.end.for.end55_crit_edge, %ieee80211_vif_get_shift.exit.for.end55_crit_edge
  %basic_rates.0.lcssa = phi i32 [ 0, %ieee80211_vif_get_shift.exit.for.end55_crit_edge ], [ %basic_rates.4, %for.end.for.end55_crit_edge ]
  %62 = call i32 @llvm.read_register.i32(metadata !161) #9
  %and.i.i.i.i.i = and i32 %62, -16384
  %63 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %65, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !173
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %for.end55.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

for.end55.rcu_read_lock.exit_crit_edge:           ; preds = %for.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %for.end55
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %for.end55.rcu_read_lock.exit_crit_edge
  %ies57 = getelementptr i8, ptr %bss, i32 -52
  %66 = ptrtoint ptr %ies57 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile ptr, ptr %ies57, align 4
  %call59 = call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end68_crit_edge

rcu_read_lock.exit.do.end68_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call61 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b104 = load i1, ptr @ieee80211_sta_join_ibss.__warned, align 1
  br i1 %.b104, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ieee80211_sta_join_ibss.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 471, ptr noundef nonnull @.str.1) #9
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %rcu_read_lock.exit.do.end68_crit_edge
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %67, align 8
  %call.i113 = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i113, label %do.end68.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i116

do.end68.rcu_read_unlock.exit_crit_edge:          ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i116:                               ; preds = %do.end68
  %call1.i114 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i114)
  %tobool.not.i115 = icmp eq i32 %call1.i114, 0
  br i1 %tobool.not.i115, label %land.lhs.true.i116.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i118

land.lhs.true.i116.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i116
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i118:                              ; preds = %land.lhs.true.i116
  %.b4.i117 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i117, label %land.lhs.true2.i118.rcu_read_unlock.exit_crit_edge, label %if.then.i119

land.lhs.true2.i118.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i118
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i119:                                     ; preds = %land.lhs.true2.i118
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i119, %land.lhs.true2.i118.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i116.rcu_read_unlock.exit_crit_edge, %do.end68.rcu_read_unlock.exit_crit_edge
  %70 = call i16 @llvm.umax.i16(i16 %2, i16 10)
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !174
  %71 = call i32 @llvm.read_register.i32(metadata !161) #9
  %and.i.i.i.i.i120 = and i32 %71, -16384
  %72 = inttoptr i32 %and.i.i.i.i.i120 to ptr
  %preempt_count.i.i.i.i121 = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %preempt_count.i.i.i.i121 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %preempt_count.i.i.i.i121, align 4
  %sub.i.i.i = add i32 %74, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i121, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %bssid = getelementptr i8, ptr %bss, i32 -16
  %conv71 = zext i16 %70 to i32
  %capability = getelementptr i8, ptr %bss, i32 -18
  %75 = ptrtoint ptr %capability to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %capability, align 2
  call fastcc void @__ieee80211_sta_join_ibss(ptr noundef %sdata, ptr noundef %bssid, i32 noundef %conv71, ptr noundef nonnull %chandef, i32 noundef %basic_rates.0.lcssa, i16 noundef zeroext %76, i64 noundef %69, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %chandef) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_sta_get_rates(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ieee80211_ibss_add_sta(ptr noundef %sdata, ptr nocapture noundef readonly %bssid, ptr noundef %addr, i32 noundef %supp_rates) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57
  %local1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %num_sta = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %num_sta to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_sta, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %3)
  %cmp = icmp ugt i32 %3, 127
  br i1 %cmp, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  %call = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body.do.end6_crit_edge, label %do.end

do.body.do.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name, ptr noundef %addr) #13
  br label %do.end6

do.end6:                                          ; preds = %do.end, %do.body.do.end6_crit_edge
  %4 = tail call i32 @llvm.read_register.i32(metadata !161) #9
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !173
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %do.end6.cleanup_crit_edge, label %land.lhs.true.i

do.end6.cleanup_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.i:                                  ; preds = %do.end6
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.cleanup_crit_edge, label %if.then.i

land.lhs.true2.i.cleanup_crit_edge:               ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #9
  br label %cleanup

if.end7:                                          ; preds = %entry
  %state = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 23
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp8 = icmp eq i32 %9, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end7
  %10 = tail call i32 @llvm.read_register.i32(metadata !161) #9
  %and.i.i.i.i.i116 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i116 to ptr
  %preempt_count.i.i.i.i117 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i117, align 4
  %add.i.i.i118 = add i32 %13, 1
  store volatile i32 %add.i.i.i118, ptr %preempt_count.i.i.i.i117, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !173
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i119 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i119, label %if.then9.cleanup_crit_edge, label %land.lhs.true.i122

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.i122:                               ; preds = %if.then9
  %call1.i120 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i120)
  %tobool.not.i121 = icmp eq i32 %call1.i120, 0
  br i1 %tobool.not.i121, label %land.lhs.true.i122.cleanup_crit_edge, label %land.lhs.true2.i124

land.lhs.true.i122.cleanup_crit_edge:             ; preds = %land.lhs.true.i122
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true2.i124:                              ; preds = %land.lhs.true.i122
  %.b4.i123 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i123, label %land.lhs.true2.i124.cleanup_crit_edge, label %if.then.i125

land.lhs.true2.i124.cleanup_crit_edge:            ; preds = %land.lhs.true2.i124
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i125:                                     ; preds = %land.lhs.true2.i124
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #9
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %bssid12 = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %u, i32 0, i32 10
  %14 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bssid, align 4
  %16 = ptrtoint ptr %bssid12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bssid12, align 4
  %xor.i = xor i32 %17, %15
  %add.ptr.i = getelementptr i8, ptr %bssid, i32 4
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.ieee80211_if_ibss, ptr %u, i32 0, i32 10, i32 4
  %20 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %21, %19
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  %22 = tail call i32 @llvm.read_register.i32(metadata !161) #9
  %and.i.i.i.i.i138 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i138 to ptr
  %preempt_count.i.i.i.i139 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i139 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i139, align 4
  %add.i.i.i140 = add i32 %25, 1
  store volatile i32 %add.i.i.i140, ptr %preempt_count.i.i.i.i139, align 4
  tail call void asm sideeffect "", "~{memory}"() #9
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i141 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %cmp.i, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end10
  br i1 %call.i141, label %if.then15.cleanup_crit_edge, label %land.lhs.true.i133

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.i133:                               ; preds = %if.then15
  %call1.i131 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i131)
  %tobool.not.i132 = icmp eq i32 %call1.i131, 0
  br i1 %tobool.not.i132, label %land.lhs.true.i133.cleanup_crit_edge, label %land.lhs.true2.i135

land.lhs.true.i133.cleanup_crit_edge:             ; preds = %land.lhs.true.i133
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true2.i135:                              ; preds = %land.lhs.true.i133
  %.b4.i134 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i134, label %land.lhs.true2.i135.cleanup_crit_edge, label %if.then.i136

land.lhs.true2.i135.cleanup_crit_edge:            ; preds = %land.lhs.true2.i135
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i136:                                     ; preds = %land.lhs.true2.i135
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #9
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  br i1 %call.i141, label %if.end16.rcu_read_lock.exit148_crit_edge, label %land.lhs.true.i144

if.end16.rcu_read_lock.exit148_crit_edge:         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit148

land.lhs.true.i144:                               ; preds = %if.end16
  %call1.i142 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i142)
  %tobool.not.i143 = icmp eq i32 %call1.i142, 0
  br i1 %tobool.not.i143, label %land.lhs.true.i144.rcu_read_lock.exit148_crit_edge, label %land.lhs.true2.i146

land.lhs.true.i144.rcu_read_lock.exit148_crit_edge: ; preds = %land.lhs.true.i144
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit148

land.lhs.true2.i146:                              ; preds = %land.lhs.true.i144
  %.b4.i145 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i145, label %land.lhs.true2.i146.rcu_read_lock.exit148_crit_edge, label %if.then.i147

land.lhs.true2.i146.rcu_read_lock.exit148_crit_edge: ; preds = %land.lhs.true2.i146
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit148

if.then.i147:                                     ; preds = %land.lhs.true2.i146
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #9
  br label %rcu_read_lock.exit148

rcu_read_lock.exit148:                            ; preds = %if.then.i147, %land.lhs.true2.i146.rcu_read_lock.exit148_crit_edge, %land.lhs.true.i144.rcu_read_lock.exit148_crit_edge, %if.end16.rcu_read_lock.exit148_crit_edge
  %chanctx_conf21 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 9
  %26 = ptrtoint ptr %chanctx_conf21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %chanctx_conf21, align 4
  %call23 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %land.lhs.true, label %rcu_read_lock.exit148.do.end32_crit_edge

rcu_read_lock.exit148.do.end32_crit_edge:         ; preds = %rcu_read_lock.exit148
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end32

land.lhs.true:                                    ; preds = %rcu_read_lock.exit148
  %call25 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %land.lhs.true.do.end32_crit_edge, label %land.lhs.true27

land.lhs.true.do.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end32

land.lhs.true27:                                  ; preds = %land.lhs.true
  %.b114 = load i1, ptr @ieee80211_ibss_add_sta.__warned, align 1
  br i1 %.b114, label %land.lhs.true27.do.end32_crit_edge, label %if.then29

land.lhs.true27.do.end32_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end32

if.then29:                                        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ieee80211_ibss_add_sta.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 625, ptr noundef nonnull @.str.1) #9
  br label %do.end32

do.end32:                                         ; preds = %if.then29, %land.lhs.true27.do.end32_crit_edge, %land.lhs.true.do.end32_crit_edge, %rcu_read_lock.exit148.do.end32_crit_edge
  %tobool34.not = icmp eq ptr %27, null
  br i1 %tobool34.not, label %land.rhs, label %if.end79

land.rhs:                                         ; preds = %do.end32
  %.b112113 = load i1, ptr @ieee80211_ibss_add_sta.__already_done, align 1
  br i1 %.b112113, label %land.rhs.cleanup_crit_edge, label %if.then43, !prof !176

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then43:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ieee80211_ibss_add_sta.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 626, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end79:                                         ; preds = %do.end32
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %width.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %27, i32 0, i32 1
  %32 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %33)
  %switch.selectcmp.i = icmp eq i32 %33, 7
  %switch.select.i = zext i1 %switch.selectcmp.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %33)
  %switch.selectcmp2.i = icmp eq i32 %33, 6
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 2, i32 %switch.select.i
  %call.i160 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i160, label %if.end79.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i163

if.end79.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i163:                               ; preds = %if.end79
  %call1.i161 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i161)
  %tobool.not.i162 = icmp eq i32 %call1.i161, 0
  br i1 %tobool.not.i162, label %land.lhs.true.i163.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i165

land.lhs.true.i163.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i163
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i165:                              ; preds = %land.lhs.true.i163
  %.b4.i164 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i164, label %land.lhs.true2.i165.rcu_read_unlock.exit_crit_edge, label %if.then.i166

land.lhs.true2.i165.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i165
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i166:                                     ; preds = %land.lhs.true2.i165
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i166, %land.lhs.true2.i165.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i163.rcu_read_unlock.exit_crit_edge, %if.end79.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !174
  %34 = tail call i32 @llvm.read_register.i32(metadata !161) #9
  %and.i.i.i.i.i167 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i.i167 to ptr
  %preempt_count.i.i.i.i168 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i.i.i168 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i.i.i168, align 4
  %sub.i.i.i = add i32 %37, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i168, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %call83 = tail call ptr @sta_info_alloc(ptr noundef %sdata, ptr noundef %addr, i32 noundef 3264) #9
  %tobool84.not = icmp eq ptr %call83, null
  br i1 %tobool84.not, label %if.then85, label %if.end86

if.then85:                                        ; preds = %rcu_read_unlock.exit
  %38 = tail call i32 @llvm.read_register.i32(metadata !161) #9
  %and.i.i.i.i.i149 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i.i149 to ptr
  %preempt_count.i.i.i.i150 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i.i150 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i.i150, align 4
  %add.i.i.i151 = add i32 %41, 1
  store volatile i32 %add.i.i.i151, ptr %preempt_count.i.i.i.i150, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !173
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i152 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i152, label %if.then85.cleanup_crit_edge, label %land.lhs.true.i155

if.then85.cleanup_crit_edge:                      ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.i155:                               ; preds = %if.then85
  %call1.i153 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i153)
  %tobool.not.i154 = icmp eq i32 %call1.i153, 0
  br i1 %tobool.not.i154, label %land.lhs.true.i155.cleanup_crit_edge, label %land.lhs.true2.i157

land.lhs.true.i155.cleanup_crit_edge:             ; preds = %land.lhs.true.i155
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true2.i157:                              ; preds = %land.lhs.true.i155
  %.b4.i156 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i156, label %land.lhs.true2.i157.cleanup_crit_edge, label %if.then.i158

land.lhs.true2.i157.cleanup_crit_edge:            ; preds = %land.lhs.true2.i157
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i158:                                     ; preds = %land.lhs.true2.i157
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #9
  br label %cleanup

if.end86:                                         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %42 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %wiphy, align 8
  %arrayidx = getelementptr %struct.wiphy, ptr %43, i32 0, i32 53, i32 %31
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx, align 4
  %call87 = tail call i32 @ieee80211_mandatory_rates(ptr noundef %45, i32 noundef %switch.select3.i) #9
  %or = or i32 %call87, %supp_rates
  %sta88 = getelementptr inbounds %struct.sta_info, ptr %call83, i32 0, i32 48
  %arrayidx90 = getelementptr [6 x i32], ptr %sta88, i32 0, i32 %31
  %46 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %or, ptr %arrayidx90, align 4
  %call91 = tail call fastcc ptr @ieee80211_ibss_finish_sta(ptr noundef nonnull %call83)
  br label %cleanup

cleanup:                                          ; preds = %if.end86, %if.then.i158, %land.lhs.true2.i157.cleanup_crit_edge, %land.lhs.true.i155.cleanup_crit_edge, %if.then85.cleanup_crit_edge, %if.then43, %land.rhs.cleanup_crit_edge, %if.then.i136, %land.lhs.true2.i135.cleanup_crit_edge, %land.lhs.true.i133.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %if.then.i125, %land.lhs.true2.i124.cleanup_crit_edge, %land.lhs.true.i122.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %if.then.i, %land.lhs.true2.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %do.end6.cleanup_crit_edge
  %retval.0 = phi ptr [ %call91, %if.end86 ], [ null, %if.then43 ], [ null, %land.rhs.cleanup_crit_edge ], [ null, %do.end6.cleanup_crit_edge ], [ null, %land.lhs.true.i.cleanup_crit_edge ], [ null, %land.lhs.true2.i.cleanup_crit_edge ], [ null, %if.then.i ], [ null, %if.then9.cleanup_crit_edge ], [ null, %land.lhs.true.i122.cleanup_crit_edge ], [ null, %land.lhs.true2.i124.cleanup_crit_edge ], [ null, %if.then.i125 ], [ null, %if.then15.cleanup_crit_edge ], [ null, %land.lhs.true.i133.cleanup_crit_edge ], [ null, %land.lhs.true2.i135.cleanup_crit_edge ], [ null, %if.then.i136 ], [ null, %if.then85.cleanup_crit_edge ], [ null, %land.lhs.true.i155.cleanup_crit_edge ], [ null, %land.lhs.true2.i157.cleanup_crit_edge ], [ null, %if.then.i158 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_rx_bss_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_get_channel_khz(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sta_info_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_check_fast_xmit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_chandef_create(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ieee80211_chandef_ht_oper(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ieee80211_ht_cap_ie_to_sta_ht_cap(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ieee80211_chandef_vht_oper(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_vht_cap_ie_to_sta_vht_cap(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_chandef_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rate_control_rate_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drv_sta_rc_update(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_parse_ch_switch_ie(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sdata_info(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfg80211_reg_can_beacon(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_channel_switch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ieee80211_ibss_csa_mark_radar(ptr noundef %sdata) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %local = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wiphy, align 8
  %chandef = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 5
  %call = tail call i32 @cfg80211_chandef_dfs_required(ptr noundef %3, ptr noundef %chandef, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %local, align 4
  %wiphy3 = getelementptr inbounds %struct.ieee80211_hw, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %wiphy3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wiphy3, align 8
  tail call void @__cfg80211_radar_event(ptr noundef %7, ptr noundef %chandef, i1 noundef zeroext false, i32 noundef 2592) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cfg80211_radar_event(ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__ieee80211_sta_join_ibss(ptr noundef %sdata, ptr nocapture noundef readonly %bssid, i32 noundef %beacon_int, ptr nocapture noundef readonly %req_chandef, i32 noundef %basic_rates, i16 noundef zeroext %capability, i64 noundef %tsf, i1 noundef zeroext %creator) unnamed_addr #0 align 64 {
entry:
  %chandef = alloca %struct.cfg80211_chan_def, align 4
  %bss_meta = alloca %struct.cfg80211_inform_bss, align 8
  %have_higher_than_11mbit = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %creator to i8
  %u = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57
  %local1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %chandef) #9
  %2 = call ptr @memset(ptr %chandef, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %bss_meta) #9
  %3 = call ptr @memset(ptr %bss_meta, i32 0, i32 48)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %have_higher_than_11mbit) #9
  %4 = ptrtoint ptr %have_higher_than_11mbit to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %have_higher_than_11mbit, align 1, !annotation !184
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %5 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %entry.sdata_assert_lock.exit_crit_edge, label %land.rhs.i

entry.sdata_assert_lock.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdata_assert_lock.exit

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 1, i32 7, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.sdata_assert_lock.exit_crit_edge, !prof !171

land.rhs.i.sdata_assert_lock.exit_crit_edge:      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdata_assert_lock.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1050, i32 noundef 9, ptr noundef null) #9
  br label %sdata_assert_lock.exit

sdata_assert_lock.exit:                           ; preds = %do.end.i, %land.rhs.i.sdata_assert_lock.exit_crit_edge, %entry.sdata_assert_lock.exit_crit_edge
  tail call void @drv_reset_tsf(ptr noundef %1, ptr noundef %sdata) #9
  %bssid2 = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %u, i32 0, i32 10
  %6 = ptrtoint ptr %bssid2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bssid2, align 4
  %8 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bssid, align 4
  %xor.i = xor i32 %9, %7
  %add.ptr.i = getelementptr %struct.ieee80211_if_ibss, ptr %u, i32 0, i32 10, i32 4
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %bssid, i32 4
  %12 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %13, %11
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %sdata_assert_lock.exit.if.end_crit_edge, label %if.then

sdata_assert_lock.exit.if.end_crit_edge:          ; preds = %sdata_assert_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %sdata_assert_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @__sta_info_flush(ptr noundef %sdata, i1 noundef zeroext false) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %sdata_assert_lock.exit.if.end_crit_edge
  %ibss_joined = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 11
  %14 = ptrtoint ptr %ibss_joined to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ibss_joined, align 8, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %if.end.do.body_crit_edge, label %if.then4

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then4:                                         ; preds = %if.end
  %16 = ptrtoint ptr %ibss_joined to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %ibss_joined, align 8
  %ibss_creator = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 12
  %17 = ptrtoint ptr %ibss_creator to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %ibss_creator, align 1
  %enable_beacon = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 17
  %18 = ptrtoint ptr %enable_beacon to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %enable_beacon, align 1
  %dev = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 6
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 8
  tail call void @netif_carrier_off(ptr noundef %20) #9
  tail call void @ieee80211_bss_info_change_notify(ptr noundef %sdata, i32 noundef 2560) #9
  tail call void @__might_sleep(ptr noundef nonnull @.str.19, i32 noundef 1127) #9
  %flags.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 8
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %22, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i364 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i364, label %land.rhs.i365, label %if.end52.i

land.rhs.i365:                                    ; preds = %if.then4
  %.b71.i = load i1, ptr @drv_leave_ibss.__already_done, align 1
  br i1 %.b71.i, label %land.rhs.i365.do.body_crit_edge, label %return.critedge.i, !prof !176

land.rhs.i365.do.body_crit_edge:                  ; preds = %land.rhs.i365
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end52.i:                                       ; preds = %if.then4
  tail call fastcc void @trace_drv_leave_ibss(ptr noundef %1, ptr noundef %sdata) #9
  %ops.i = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 8
  %23 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i, align 4
  %leave_ibss.i = getelementptr inbounds %struct.ieee80211_ops, ptr %24, i32 0, i32 86
  %25 = ptrtoint ptr %leave_ibss.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %leave_ibss.i, align 4
  %tobool53.not.i = icmp eq ptr %26, null
  br i1 %tobool53.not.i, label %if.end52.i.if.end57.i_crit_edge, label %if.then54.i

if.end52.i.if.end57.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.i

if.then54.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #11
  %vif.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59
  tail call void %26(ptr noundef %1, ptr noundef %vif.i) #9
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.then54.i, %if.end52.i.if.end57.i_crit_edge
  tail call fastcc void @trace_drv_return_void(ptr noundef %1) #9
  br label %do.body

return.critedge.i:                                ; preds = %land.rhs.i365
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @drv_leave_ibss.__already_done, align 1
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 8
  %tobool22.not.c.i = icmp eq ptr %28, null
  %name24.c.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  %cond.c.i = select i1 %tobool22.not.c.i, ptr %name24.c.i, ptr %28
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 1128, i32 noundef 9, ptr noundef nonnull @.str.37, ptr noundef %cond.c.i, i32 noundef %22) #9
  br label %do.body

do.body:                                          ; preds = %return.critedge.i, %if.end57.i, %land.rhs.i365.do.body_crit_edge, %if.end.do.body_crit_edge
  %dep_map = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 1, i32 7, i32 5
  %call.i366 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i366)
  %tobool14.not = icmp eq i32 %call.i366, 0
  br i1 %tobool14.not, label %land.lhs.true, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call15 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true17

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true17:                                  ; preds = %land.lhs.true
  %.b363 = load i1, ptr @__ieee80211_sta_join_ibss.__warned, align 1
  br i1 %.b363, label %land.lhs.true17.do.end_crit_edge, label %if.then19

land.lhs.true17.do.end_crit_edge:                 ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then19:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__ieee80211_sta_join_ibss.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 259, ptr noundef nonnull @.str.3) #9
  br label %do.end

do.end:                                           ; preds = %if.then19, %land.lhs.true17.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %presp21 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 6, i32 31
  %29 = ptrtoint ptr %presp21 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %presp21, align 4
  store volatile ptr null, ptr %presp21, align 4
  %tobool35.not = icmp eq ptr %30, null
  br i1 %tobool35.not, label %do.end.if.end46_crit_edge, label %do.end42

do.end.if.end46_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

do.end42:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %callback_head = getelementptr inbounds %struct.beacon_data, ptr %30, i32 0, i32 7
  tail call void @kvfree_call_rcu(ptr noundef %callback_head, ptr noundef nonnull inttoptr (i32 28 to ptr)) #9
  br label %if.end46

if.end46:                                         ; preds = %do.end42, %do.end.if.end46_crit_edge
  %31 = call ptr @memcpy(ptr %chandef, ptr %req_chandef, i32 28)
  %32 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chandef, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %34 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wiphy, align 8
  %call48 = call zeroext i1 @cfg80211_reg_can_beacon(ptr noundef %35, ptr noundef nonnull %chandef, i32 noundef 1) #9
  br i1 %call48, label %if.end46.if.end69_crit_edge, label %if.then49

if.end46.if.end69_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then49:                                        ; preds = %if.end46
  %width = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 1
  %36 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %width, align 4
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %37, label %if.end60 [
    i32 6, label %if.then49.if.then58_crit_edge
    i32 7, label %if.then49.if.then58_crit_edge382
    i32 0, label %if.then49.if.then58_crit_edge383
    i32 1, label %if.then49.if.then58_crit_edge384
  ]

if.then49.if.then58_crit_edge384:                 ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then58

if.then49.if.then58_crit_edge383:                 ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then58

if.then49.if.then58_crit_edge382:                 ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then58

if.then49.if.then58_crit_edge:                    ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then58

if.then58:                                        ; preds = %if.then49.if.then58_crit_edge, %if.then49.if.then58_crit_edge382, %if.then49.if.then58_crit_edge383, %if.then49.if.then58_crit_edge384
  %name = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  call void (ptr, ...) @__sdata_info(ptr noundef nonnull @.str.32, ptr noundef %name) #9
  br label %cleanup

if.end60:                                         ; preds = %if.then49
  %39 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %width, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %33, i32 0, i32 1
  %40 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %center_freq, align 4
  %center_freq1 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 2
  %42 = ptrtoint ptr %center_freq1 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %center_freq1, align 4
  %43 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %wiphy, align 8
  %call64 = call zeroext i1 @cfg80211_reg_can_beacon(ptr noundef %44, ptr noundef nonnull %chandef, i32 noundef 1) #9
  br i1 %call64, label %if.end60.if.end69_crit_edge, label %if.then65

if.end60.if.end69_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then65:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  %name66 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  call void (ptr, ...) @__sdata_info(ptr noundef nonnull @.str.32, ptr noundef %name66) #9
  br label %cleanup

if.end69:                                         ; preds = %if.end60.if.end69_crit_edge, %if.end46.if.end69_crit_edge
  %45 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %local1, align 4
  %wiphy72 = getelementptr inbounds %struct.ieee80211_hw, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %wiphy72 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %wiphy72, align 8
  %call73 = call i32 @cfg80211_chandef_dfs_required(ptr noundef %48, ptr noundef nonnull %chandef, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %if.then75, label %if.end78

if.then75:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  %name76 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  call void (ptr, ...) @__sdata_info(ptr noundef nonnull @.str.33, ptr noundef %name76) #9
  br label %cleanup

if.end78:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp79.not = icmp eq i32 %call73, 0
  br i1 %cmp79.not, label %if.end78.if.end85_crit_edge, label %land.lhs.true80

if.end78.if.end85_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

land.lhs.true80:                                  ; preds = %if.end78
  %userspace_handles_dfs = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 2, i32 1
  %49 = ptrtoint ptr %userspace_handles_dfs to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %userspace_handles_dfs, align 4, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool81.not = icmp eq i8 %50, 0
  br i1 %tobool81.not, label %if.then82, label %land.lhs.true80.if.end85_crit_edge

land.lhs.true80.if.end85_crit_edge:               ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

if.then82:                                        ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #11
  %name83 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  call void (ptr, ...) @__sdata_info(ptr noundef nonnull @.str.34, ptr noundef %name83) #9
  br label %cleanup

if.end85:                                         ; preds = %land.lhs.true80.if.end85_crit_edge, %if.end78.if.end85_crit_edge
  %mtx88 = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 66
  call void @mutex_lock_nested(ptr noundef %mtx88, i32 noundef 0) #9
  %fixed_channel = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %u, i32 0, i32 5
  %51 = ptrtoint ptr %fixed_channel to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %fixed_channel, align 1, !range !172
  %53 = xor i8 %52, 1
  %54 = zext i8 %53 to i32
  %call90 = call i32 @ieee80211_vif_use_channel(ptr noundef %sdata, ptr noundef nonnull %chandef, i32 noundef %54) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end96, label %if.then92

if.then92:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  %name93 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  call void (ptr, ...) @__sdata_info(ptr noundef nonnull @.str.35, ptr noundef %name93) #9
  call void @mutex_unlock(ptr noundef %mtx88) #9
  br label %cleanup

if.end96:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool86 = icmp ne i32 %call73, 0
  %frombool87 = zext i1 %tobool86 to i8
  %radar_required98 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 47
  %55 = ptrtoint ptr %radar_required98 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %frombool87, ptr %radar_required98, align 4
  call void @mutex_unlock(ptr noundef %mtx88) #9
  %56 = call ptr @memcpy(ptr %bssid2, ptr %bssid, i32 6)
  %call103 = call fastcc ptr @ieee80211_ibss_build_presp(ptr noundef %sdata, i32 noundef %beacon_int, i32 noundef %basic_rates, i16 noundef zeroext %capability, i64 noundef %tsf, ptr noundef nonnull %chandef, ptr noundef nonnull %have_higher_than_11mbit, ptr noundef null)
  %tobool104.not = icmp eq ptr %call103, null
  br i1 %tobool104.not, label %if.end96.cleanup_crit_edge, label %do.body107

if.end96.cleanup_crit_edge:                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body107:                                       ; preds = %if.end96
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !185
  %57 = ptrtoint ptr %presp21 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %call103, ptr %presp21, align 4
  %58 = ptrtoint ptr %call103 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call103, align 4
  %enable_beacon148 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 17
  %60 = ptrtoint ptr %enable_beacon148 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %enable_beacon148, align 1
  %conv = trunc i32 %beacon_int to i16
  %beacon_int151 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 19
  %61 = ptrtoint ptr %beacon_int151 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv, ptr %beacon_int151, align 2
  %basic_rates154 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 24
  %62 = ptrtoint ptr %basic_rates154 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %basic_rates, ptr %basic_rates154, align 8
  %ssid_len = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 3
  %63 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %ssid_len, align 4
  %conv155 = zext i8 %64 to i32
  %ssid_len158 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 40
  %65 = ptrtoint ptr %ssid_len158 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv155, ptr %ssid_len158, align 8
  %ssid = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 39
  %ssid162 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 2, i32 3
  %66 = call ptr @memcpy(ptr %ssid, ptr %ssid162, i32 %conv155)
  %call166 = call i32 @ieee80211_reset_erp_info(ptr noundef %sdata) #9
  %67 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %68)
  %cmp174 = icmp eq i32 %68, 1
  %use_short_slot = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 16
  %frombool178 = zext i1 %cmp174 to i8
  %69 = ptrtoint ptr %use_short_slot to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %frombool178, ptr %use_short_slot, align 2
  %or179 = or i32 %call166, 35832
  %70 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp181 = icmp eq i32 %71, 0
  br i1 %cmp181, label %land.lhs.true183, label %do.body107.if.else188_crit_edge

do.body107.if.else188_crit_edge:                  ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else188

land.lhs.true183:                                 ; preds = %do.body107
  %72 = ptrtoint ptr %have_higher_than_11mbit to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %have_higher_than_11mbit, align 1, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool184.not = icmp eq i8 %73, 0
  br i1 %tobool184.not, label %land.lhs.true183.if.else188_crit_edge, label %if.then186

land.lhs.true183.if.else188_crit_edge:            ; preds = %land.lhs.true183
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else188

if.then186:                                       ; preds = %land.lhs.true183
  call void @__sanitizer_cov_trace_pc() #11
  %flags = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 8
  %74 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %flags, align 8
  %or187 = or i32 %75, 4
  store i32 %or187, ptr %flags, align 8
  br label %if.end190

if.else188:                                       ; preds = %land.lhs.true183.if.else188_crit_edge, %do.body107.if.else188_crit_edge
  %flags189 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 8
  %76 = ptrtoint ptr %flags189 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %flags189, align 8
  %and = and i32 %77, -5
  store i32 %and, ptr %flags189, align 8
  br label %if.end190

if.end190:                                        ; preds = %if.else188, %if.then186
  call void @ieee80211_set_wmm_default(ptr noundef %sdata, i1 noundef zeroext true, i1 noundef zeroext false) #9
  %78 = ptrtoint ptr %ibss_joined to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %ibss_joined, align 8
  %ibss_creator197 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 12
  %79 = ptrtoint ptr %ibss_creator197 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %frombool, ptr %ibss_creator197, align 1
  call void @__might_sleep(ptr noundef nonnull @.str.19, i32 noundef 1113) #9
  %flags.i367 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 8
  %80 = ptrtoint ptr %flags.i367 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %flags.i367, align 8
  %and.i368 = and i32 %81, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i368)
  %tobool.not.i369 = icmp eq i32 %and.i368, 0
  br i1 %tobool.not.i369, label %land.rhs.i370, label %if.end54.i

land.rhs.i370:                                    ; preds = %if.end190
  %.b76.i = load i1, ptr @drv_join_ibss.__already_done, align 1
  br i1 %.b76.i, label %land.rhs.i370.if.then201_crit_edge, label %cleanup.critedge.i, !prof !176

land.rhs.i370.if.then201_crit_edge:               ; preds = %land.rhs.i370
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then201

if.end54.i:                                       ; preds = %if.end190
  %bss_conf.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1
  call fastcc void @trace_drv_join_ibss(ptr noundef %1, ptr noundef %sdata, ptr noundef %bss_conf.i) #9
  %ops.i371 = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 8
  %82 = ptrtoint ptr %ops.i371 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ops.i371, align 4
  %join_ibss.i = getelementptr inbounds %struct.ieee80211_ops, ptr %83, i32 0, i32 85
  %84 = ptrtoint ptr %join_ibss.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %join_ibss.i, align 4
  %tobool55.not.i = icmp eq ptr %85, null
  br i1 %tobool55.not.i, label %drv_join_ibss.exit.thread379, label %drv_join_ibss.exit

drv_join_ibss.exit.thread379:                     ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @trace_drv_return_int(ptr noundef %1, i32 noundef 0) #9
  br label %if.end242

cleanup.critedge.i:                               ; preds = %land.rhs.i370
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @drv_join_ibss.__already_done, align 1
  %dev.c.i374 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 6
  %86 = ptrtoint ptr %dev.c.i374 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev.c.i374, align 8
  %tobool24.not.c.i = icmp eq ptr %87, null
  %name26.c.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  %cond.c.i375 = select i1 %tobool24.not.c.i, ptr %name26.c.i, ptr %87
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 1114, i32 noundef 9, ptr noundef nonnull @.str.37, ptr noundef %cond.c.i375, i32 noundef %81) #9
  br label %if.then201

drv_join_ibss.exit:                               ; preds = %if.end54.i
  %vif.i372 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59
  %call.i373 = call i32 %85(ptr noundef %1, ptr noundef %vif.i372) #9
  call fastcc void @trace_drv_return_int(ptr noundef %1, i32 noundef %call.i373) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i373)
  %tobool200.not = icmp eq i32 %call.i373, 0
  br i1 %tobool200.not, label %drv_join_ibss.exit.if.end242_crit_edge, label %drv_join_ibss.exit.if.then201_crit_edge

drv_join_ibss.exit.if.then201_crit_edge:          ; preds = %drv_join_ibss.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then201

drv_join_ibss.exit.if.end242_crit_edge:           ; preds = %drv_join_ibss.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end242

if.then201:                                       ; preds = %drv_join_ibss.exit.if.then201_crit_edge, %cleanup.critedge.i, %land.rhs.i370.if.then201_crit_edge
  %retval.0.i378 = phi i32 [ %call.i373, %drv_join_ibss.exit.if.then201_crit_edge ], [ -5, %land.rhs.i370.if.then201_crit_edge ], [ -5, %cleanup.critedge.i ]
  %88 = ptrtoint ptr %ibss_joined to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %ibss_joined, align 8
  %89 = ptrtoint ptr %ibss_creator197 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %ibss_creator197, align 1
  %90 = ptrtoint ptr %enable_beacon148 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 0, ptr %enable_beacon148, align 1
  %91 = ptrtoint ptr %ssid_len158 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %ssid_len158, align 8
  %92 = ptrtoint ptr %presp21 to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile ptr null, ptr %presp21, align 4
  %callback_head234 = getelementptr inbounds %struct.beacon_data, ptr %call103, i32 0, i32 7
  call void @kvfree_call_rcu(ptr noundef %callback_head234, ptr noundef nonnull inttoptr (i32 28 to ptr)) #9
  call void @mutex_lock_nested(ptr noundef %mtx88, i32 noundef 0) #9
  call void @ieee80211_vif_release_channel(ptr noundef %sdata) #9
  call void @mutex_unlock(ptr noundef %mtx88) #9
  %name240 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  call void (ptr, ...) @__sdata_info(ptr noundef nonnull @.str.36, ptr noundef %name240, i32 noundef %retval.0.i378) #9
  br label %cleanup

if.end242:                                        ; preds = %drv_join_ibss.exit.if.end242_crit_edge, %drv_join_ibss.exit.thread379
  call void @ieee80211_bss_info_change_notify(ptr noundef %sdata, i32 noundef %or179) #9
  %state = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 23
  %93 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 1, ptr %state, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %94 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %94, 3000
  %call243 = call i32 @round_jiffies(i32 noundef %add) #9
  %call244 = call i32 @mod_timer(ptr noundef %u, i32 noundef %call243) #9
  %95 = ptrtoint ptr %bss_meta to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %33, ptr %bss_meta, align 8
  %width.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 1
  %96 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %97)
  %switch.selectcmp.i = icmp eq i32 %97, 7
  %switch.select.i = zext i1 %switch.selectcmp.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %97)
  %switch.selectcmp2.i = icmp eq i32 %97, 6
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 2, i32 %switch.select.i
  %scan_width = getelementptr inbounds %struct.cfg80211_inform_bss, ptr %bss_meta, i32 0, i32 1
  %98 = ptrtoint ptr %scan_width to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %switch.select3.i, ptr %scan_width, align 4
  %99 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %wiphy, align 8
  %head_len = getelementptr inbounds %struct.beacon_data, ptr %call103, i32 0, i32 2
  %101 = ptrtoint ptr %head_len to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %head_len, align 4
  %call249 = call ptr @cfg80211_inform_bss_frame_data(ptr noundef %100, ptr noundef nonnull %bss_meta, ptr noundef %59, i32 noundef %102, i32 noundef 3264) #9
  %103 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %wiphy, align 8
  call void @cfg80211_put_bss(ptr noundef %104, ptr noundef %call249) #9
  %dev252 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 6
  %105 = ptrtoint ptr %dev252 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev252, align 8
  call void @netif_carrier_on(ptr noundef %106) #9
  %107 = ptrtoint ptr %dev252 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev252, align 8
  call void @cfg80211_ibss_joined(ptr noundef %108, ptr noundef %bssid2, ptr noundef %33, i32 noundef 3264) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end242, %if.then201, %if.end96.cleanup_crit_edge, %if.then92, %if.then82, %if.then75, %if.then65, %if.then58
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %have_higher_than_11mbit) #9
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %bss_meta) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %chandef) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drv_reset_tsf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_vif_use_channel(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_reset_erp_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_set_wmm_default(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_vif_release_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_inform_bss_frame_data(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_ibss_joined(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sta_info_flush(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_drv_leave_ibss(ptr noundef %local, ptr noundef %sdata) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_leave_ibss, i32 0, i32 1), ptr blockaddress(@trace_drv_leave_ibss, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !177

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !161) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !176

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !161) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !186
  %call42 = tail call i32 @__traceiter_drv_leave_ibss(ptr noundef null, ptr noundef %local, ptr noundef %sdata) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !187
  %13 = tail call i32 @llvm.read_register.i32(metadata !161) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !161) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !176

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !161) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !180
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_leave_ibss, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_leave_ibss, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_drv_leave_ibss.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_drv_leave_ibss.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 1810, ptr noundef nonnull @.str.1) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !181
  %31 = tail call i32 @llvm.read_register.i32(metadata !161) #9
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
define internal fastcc void @trace_drv_return_void(ptr noundef %local) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 1), ptr blockaddress(@trace_drv_return_void, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !177

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !161) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !176

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !161) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !188
  %call42 = tail call i32 @__traceiter_drv_return_void(ptr noundef null, ptr noundef %local) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !189
  %13 = tail call i32 @llvm.read_register.i32(metadata !161) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !161) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !176

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !161) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !180
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_return_void, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_drv_return_void.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_drv_return_void.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 205, ptr noundef nonnull @.str.1) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !181
  %31 = tail call i32 @llvm.read_register.i32(metadata !161) #9
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
declare dso_local i32 @__traceiter_drv_leave_ibss(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_drv_return_void(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_drv_join_ibss(ptr noundef %local, ptr noundef %sdata, ptr noundef %info) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_join_ibss, i32 0, i32 1), ptr blockaddress(@trace_drv_join_ibss, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !177

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !161) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !176

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !161) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !190
  %call42 = tail call i32 @__traceiter_drv_join_ibss(ptr noundef null, ptr noundef %local, ptr noundef %sdata, ptr noundef %info) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !191
  %13 = tail call i32 @llvm.read_register.i32(metadata !161) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !161) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !176

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !161) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !180
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_join_ibss, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_drv_join_ibss, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_drv_join_ibss.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_drv_join_ibss.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 1804, ptr noundef nonnull @.str.1) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !181
  %31 = tail call i32 @llvm.read_register.i32(metadata !161) #9
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
declare dso_local i32 @__traceiter_drv_join_ibss(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_send_auth(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sta_info_destroy_addr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee802_11_parse_elems_crc(ptr noundef, i32 noundef, i1 noundef zeroext, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sta_info_insert_rcu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sta_info_move_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_sta_active_ibss(ptr noundef %sdata) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i39 = icmp eq i32 %2, 0
  br i1 %tobool.not.i39, label %entry.sdata_assert_lock.exit_crit_edge, label %land.rhs.i

entry.sdata_assert_lock.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdata_assert_lock.exit

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 1, i32 7, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.sdata_assert_lock.exit_crit_edge, !prof !171

land.rhs.i.sdata_assert_lock.exit_crit_edge:      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdata_assert_lock.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1050, i32 noundef 9, ptr noundef null) #9
  br label %sdata_assert_lock.exit

sdata_assert_lock.exit:                           ; preds = %do.end.i, %land.rhs.i.sdata_assert_lock.exit_crit_edge, %entry.sdata_assert_lock.exit_crit_edge
  %3 = tail call i32 @llvm.read_register.i32(metadata !161) #9
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !173
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %sdata_assert_lock.exit.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

sdata_assert_lock.exit.rcu_read_lock.exit_crit_edge: ; preds = %sdata_assert_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %sdata_assert_lock.exit
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %sdata_assert_lock.exit.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b37 = load i1, ptr @ieee80211_sta_active_ibss.__warned, align 1
  br i1 %.b37, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ieee80211_sta_active_ibss.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 656, ptr noundef nonnull @.str.52) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %sta_list = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 49
  %7 = ptrtoint ptr %sta_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %sta.053 = load volatile ptr, ptr %sta_list, align 4
  %cmp.not54 = icmp eq ptr %sta.053, %sta_list
  br i1 %cmp.not54, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %do.end.for.body_crit_edge
  %sta.055 = phi ptr [ %sta.0, %cleanup.for.body_crit_edge ], [ %sta.053, %do.end.for.body_crit_edge ]
  %call11 = tail call i32 @ieee80211_sta_last_active(ptr noundef %sta.055) #9
  %sdata12 = getelementptr inbounds %struct.sta_info, ptr %sta.055, i32 0, i32 6
  %8 = ptrtoint ptr %sdata12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sdata12, align 4
  %cmp13 = icmp eq ptr %9, %sdata
  br i1 %cmp13, label %land.lhs.true14, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true14:                                  ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -3000, %call11
  %sub = add i32 %add.neg, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp15 = icmp slt i32 %sub, 0
  br i1 %cmp15, label %land.lhs.true14.for.end_crit_edge, label %land.lhs.true14.cleanup_crit_edge

land.lhs.true14.cleanup_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true14.for.end_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

cleanup:                                          ; preds = %land.lhs.true14.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %11 = ptrtoint ptr %sta.055 to i32
  call void @__asan_load4_noabort(i32 %11)
  %sta.0 = load volatile ptr, ptr %sta.055, align 4
  %cmp.not = icmp eq ptr %sta.0, %sta_list
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %land.lhs.true14.for.end_crit_edge, %do.end.for.end_crit_edge
  %active.2 = phi i32 [ 0, %do.end.for.end_crit_edge ], [ 1, %land.lhs.true14.for.end_crit_edge ], [ 0, %cleanup.for.end_crit_edge ]
  %call.i40 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i40, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i43

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i43:                                ; preds = %for.end
  %call1.i41 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i41)
  %tobool.not.i42 = icmp eq i32 %call1.i41, 0
  br i1 %tobool.not.i42, label %land.lhs.true.i43.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i45

land.lhs.true.i43.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i43
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i45:                               ; preds = %land.lhs.true.i43
  %.b4.i44 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i44, label %land.lhs.true2.i45.rcu_read_unlock.exit_crit_edge, label %if.then.i46

land.lhs.true2.i45.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i45
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i46:                                      ; preds = %land.lhs.true2.i45
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i46, %land.lhs.true2.i45.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i43.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !174
  %12 = tail call i32 @llvm.read_register.i32(metadata !161) #9
  %and.i.i.i.i.i47 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i47 to ptr
  %preempt_count.i.i.i.i48 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i48, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i48, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret i32 %active.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ieee80211_sta_create_ibss(ptr noundef %sdata) unnamed_addr #0 align 64 {
entry:
  %bssid = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %bssid) #9
  %0 = getelementptr inbounds [6 x i8], ptr %bssid, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i8], ptr %bssid, i32 0, i32 2
  %2 = getelementptr inbounds [6 x i8], ptr %bssid, i32 0, i32 3
  %3 = getelementptr inbounds [6 x i8], ptr %bssid, i32 0, i32 4
  %4 = getelementptr inbounds [6 x i8], ptr %bssid, i32 0, i32 5
  %5 = call ptr @memset(ptr %bssid, i32 255, i32 6)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %6 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %entry.sdata_assert_lock.exit_crit_edge, label %land.rhs.i

entry.sdata_assert_lock.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdata_assert_lock.exit

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 1, i32 7, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.sdata_assert_lock.exit_crit_edge, !prof !171

land.rhs.i.sdata_assert_lock.exit_crit_edge:      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdata_assert_lock.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1050, i32 noundef 9, ptr noundef null) #9
  br label %sdata_assert_lock.exit

sdata_assert_lock.exit:                           ; preds = %do.end.i, %land.rhs.i.sdata_assert_lock.exit_crit_edge, %entry.sdata_assert_lock.exit_crit_edge
  %fixed_bssid = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 2, i32 0, i32 1
  %7 = ptrtoint ptr %fixed_bssid to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %fixed_bssid, align 4, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sdata_assert_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  %bssid1 = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %u, i32 0, i32 10
  %9 = call ptr @memcpy(ptr %bssid, ptr %bssid1, i32 6)
  br label %if.end

if.else:                                          ; preds = %sdata_assert_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @get_random_bytes(ptr noundef nonnull %bssid, i32 noundef 6) #9
  %arrayidx = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 2, i32 0
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %12 = ptrtoint ptr %bssid to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bssid, align 1
  %xor37 = xor i8 %13, %11
  %arrayidx.1 = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 2, i32 1
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.1, align 1
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %0, align 1
  %xor37.1 = xor i8 %17, %15
  store i8 %xor37.1, ptr %0, align 1
  %arrayidx.2 = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 2, i32 2
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.2, align 1
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %1, align 1
  %xor37.2 = xor i8 %21, %19
  store i8 %xor37.2, ptr %1, align 1
  %arrayidx.3 = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 2, i32 3
  %22 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.3, align 1
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %2, align 1
  %xor37.3 = xor i8 %25, %23
  store i8 %xor37.3, ptr %2, align 1
  %arrayidx.4 = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 2, i32 4
  %26 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.4, align 1
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %3, align 1
  %xor37.4 = xor i8 %29, %27
  store i8 %xor37.4, ptr %3, align 1
  %arrayidx.5 = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 2, i32 5
  %30 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.5, align 1
  %32 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %4, align 1
  %xor37.5 = xor i8 %33, %31
  store i8 %xor37.5, ptr %4, align 1
  %34 = and i8 %xor37, -4
  %35 = or i8 %34, 2
  store i8 %35, ptr %bssid, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %name = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  call void (ptr, ...) @__sdata_info(ptr noundef nonnull @.str.53, ptr noundef %name, ptr noundef nonnull %bssid) #9
  %privacy = getelementptr inbounds %struct.ieee80211_if_ibss, ptr %u, i32 0, i32 6
  %36 = ptrtoint ptr %privacy to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %privacy, align 2, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool15.not = icmp eq i8 %37, 0
  %spec.select = select i1 %tobool15.not, i16 2, i16 18
  %beacon_int = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 19
  %38 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %beacon_int, align 2
  %conv23 = zext i16 %39 to i32
  %chandef = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 5
  %basic_rates = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 2
  %40 = ptrtoint ptr %basic_rates to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %basic_rates, align 4
  call fastcc void @__ieee80211_sta_join_ibss(ptr noundef %sdata, ptr noundef nonnull %bssid, i32 noundef %conv23, ptr noundef %chandef, i32 noundef %41, i16 noundef zeroext %spec.select, i64 noundef 0, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bssid) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_request_ibss_scan(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_sta_last_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_send_deauth_disassoc(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sta_info_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_unlink_bss(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sta_info_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !11, !12, !13, !15, !17, !19, !20, !22, !23, !25, !26, !28, !30, !31, !32, !34, !35, !37, !39, !41, !43, !45, !47, !49, !50, !51, !53, !54, !56, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !102, !104, !105, !107, !108, !110, !112, !113, !115, !116, !117, !119, !121, !123, !125, !127, !129, !131, !133, !134, !136, !138, !140, !142, !144, !146, !148, !150, !151, !153, !155, !157, !158, !159}
!llvm.named.register.sp = !{!161}
!llvm.module.flags = !{!162, !163, !164, !165, !166, !167, !168, !169}
!llvm.ident = !{!170}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/mac80211/ibss.c", i32 503, i32 6}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../net/mac80211/ibss.c", i32 507, i32 8}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !6, !"__warned", i1 false, i1 false}
!6 = !{!"../net/mac80211/ibss.c", i32 512, i32 14}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/mac80211/ibss.c", i32 1211, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @ieee80211_ibss_rx_no_sta._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @ieee80211_ibss_rx_no_sta._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../net/mac80211/ibss.c", i32 1223, i32 17}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../net/mac80211/ibss.c", i32 1224, i32 6}
!17 = !{ptr @ieee80211_ibss_setup_sdata.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../net/mac80211/ibss.c", i32 1732, i32 2}
!19 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ieee80211_ibss_setup_sdata.__key.7, !21, !"__key", i1 false, i1 false}
!21 = !{!"../net/mac80211/ibss.c", i32 1734, i32 2}
!22 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ieee80211_ibss_setup_sdata.__key.9, !24, !"__key", i1 false, i1 false}
!24 = !{!"../net/mac80211/ibss.c", i32 1735, i32 2}
!25 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/mac80211/ieee80211_i.h", i32 1050, i32 2}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!30 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!34 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../net/mac80211/ibss.c", i32 1532, i32 10}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/mac80211/ibss.c", i32 1541, i32 2}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/mac80211/ibss.c", i32 1542, i32 2}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/mac80211/ibss.c", i32 1556, i32 3}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/mac80211/ibss.c", i32 1576, i32 2}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/mac80211/driver-ops.h", i32 589, i32 2}
!47 = distinct !{null, !48, !"__already_done", i1 false, i1 false}
!48 = !{!"../net/mac80211/trace.h", i32 1067, i32 1}
!49 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!50 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!53 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../net/mac80211/trace.h", i32 207, i32 1}
!56 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!57 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!58 = !{!"../net/mac80211/ieee80211_i.h", i32 2199, i32 17}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../net/mac80211/ibss.c", i32 1171, i32 2}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../net/mac80211/ibss.c", i32 1174, i32 2}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../net/mac80211/ibss.c", i32 1180, i32 3}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../net/mac80211/ibss.c", i32 1019, i32 5}
!67 = distinct !{null, !68, !"__already_done", i1 false, i1 false}
!68 = !{!"../net/mac80211/ibss.c", i32 1081, i32 4}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../net/mac80211/ibss.c", i32 834, i32 4}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../net/mac80211/ibss.c", i32 852, i32 3}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../net/mac80211/ibss.c", i32 876, i32 3}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../net/mac80211/ibss.c", i32 882, i32 2}
!77 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../net/mac80211/ibss.c", i32 896, i32 2}
!79 = distinct !{null, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../include/net/cfg80211.h", i32 778, i32 3}
!81 = distinct !{null, !82, !"__already_done", i1 false, i1 false}
!82 = !{!"../net/mac80211/ieee80211_i.h", i32 1762, i32 2}
!83 = distinct !{null, !84, !"__warned", i1 false, i1 false}
!84 = !{!"../net/mac80211/ibss.c", i32 471, i32 8}
!85 = distinct !{null, !86, !"__warned", i1 false, i1 false}
!86 = !{!"../net/mac80211/ieee80211_i.h", i32 1073, i32 17}
!87 = distinct !{null, !88, !"__warned", i1 false, i1 false}
!88 = !{!"../net/mac80211/ibss.c", i32 258, i32 10}
!89 = !{ptr @.str.32, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../net/mac80211/ibss.c", i32 273, i32 4}
!91 = !{ptr @.str.33, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../net/mac80211/ibss.c", i32 291, i32 3}
!93 = !{ptr @.str.34, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../net/mac80211/ibss.c", i32 296, i32 3}
!95 = !{ptr @.str.35, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../net/mac80211/ibss.c", i32 308, i32 3}
!97 = !{ptr @.str.36, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../net/mac80211/ibss.c", i32 376, i32 3}
!99 = distinct !{null, !100, !"__already_done", i1 false, i1 false}
!100 = !{!"../net/mac80211/driver-ops.h", i32 1128, i32 7}
!101 = !{ptr @.str.37, !100, !"<string literal>", i1 false, i1 false}
!102 = distinct !{null, !103, !"__already_done", i1 false, i1 false}
!103 = !{!"../net/mac80211/trace.h", i32 1806, i32 1}
!104 = distinct !{null, !103, !"__warned", i1 false, i1 false}
!105 = distinct !{null, !106, !"__already_done", i1 false, i1 false}
!106 = !{!"../net/mac80211/trace.h", i32 202, i32 1}
!107 = distinct !{null, !106, !"__warned", i1 false, i1 false}
!108 = distinct !{null, !109, !"__already_done", i1 false, i1 false}
!109 = !{!"../net/mac80211/driver-ops.h", i32 1114, i32 7}
!110 = distinct !{null, !111, !"__already_done", i1 false, i1 false}
!111 = !{!"../net/mac80211/trace.h", i32 1777, i32 1}
!112 = distinct !{null, !111, !"__warned", i1 false, i1 false}
!113 = !{ptr @.str.38, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../net/mac80211/ibss.c", i32 608, i32 3}
!115 = !{ptr @ieee80211_ibss_add_sta._entry, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @ieee80211_ibss_add_sta._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!117 = distinct !{null, !118, !"__warned", i1 false, i1 false}
!118 = !{!"../net/mac80211/ibss.c", i32 625, i32 17}
!119 = distinct !{null, !120, !"__already_done", i1 false, i1 false}
!120 = !{!"../net/mac80211/ibss.c", i32 626, i32 6}
!121 = !{ptr @.str.39, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../net/mac80211/ibss.c", i32 958, i32 2}
!123 = !{ptr @.str.40, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../net/mac80211/ibss.c", i32 959, i32 2}
!125 = !{ptr @.str.41, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../net/mac80211/ibss.c", i32 939, i32 2}
!127 = !{ptr @.str.42, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../net/mac80211/ibss.c", i32 940, i32 2}
!129 = !{ptr @.str.43, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../net/mac80211/ibss.c", i32 573, i32 2}
!131 = distinct !{null, !132, !"__already_done", i1 false, i1 false}
!132 = !{!"../net/mac80211/sta_info.h", i32 742, i32 2}
!133 = !{ptr @.str.44, !132, !"<string literal>", i1 false, i1 false}
!134 = distinct !{null, !135, !"__already_done", i1 false, i1 false}
!135 = !{!"../net/mac80211/sta_info.h", i32 745, i32 2}
!136 = !{ptr @.str.46, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../net/mac80211/ibss.c", i32 1439, i32 2}
!138 = !{ptr @.str.47, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../net/mac80211/ibss.c", i32 1459, i32 3}
!140 = !{ptr @.str.48, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../net/mac80211/ibss.c", i32 1462, i32 3}
!142 = !{ptr @.str.49, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../net/mac80211/ibss.c", i32 1475, i32 3}
!144 = !{ptr @.str.50, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../net/mac80211/ibss.c", i32 1482, i32 2}
!146 = !{ptr @.str.51, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../net/mac80211/ibss.c", i32 1490, i32 3}
!148 = distinct !{null, !149, !"__warned", i1 false, i1 false}
!149 = !{!"../net/mac80211/ibss.c", i32 656, i32 2}
!150 = !{ptr @.str.52, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.53, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../net/mac80211/ibss.c", i32 1340, i32 2}
!153 = !{ptr @.str.54, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../net/mac80211/ibss.c", i32 1310, i32 2}
!155 = !{ptr @.str.55, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../net/mac80211/ibss.c", i32 1268, i32 4}
!157 = !{ptr @.str.56, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.57, !156, !"<string literal>", i1 false, i1 false}
!159 = distinct !{null, !160, !"__warned", i1 false, i1 false}
!160 = !{!"../net/mac80211/ibss.c", i32 717, i32 10}
!161 = !{!"sp"}
!162 = !{i32 1, !"wchar_size", i32 2}
!163 = !{i32 1, !"min_enum_size", i32 4}
!164 = !{i32 8, !"branch-target-enforcement", i32 0}
!165 = !{i32 8, !"sign-return-address", i32 0}
!166 = !{i32 8, !"sign-return-address-all", i32 0}
!167 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!168 = !{i32 7, !"uwtable", i32 1}
!169 = !{i32 7, !"frame-pointer", i32 2}
!170 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!171 = !{!"branch_weights", i32 1, i32 2000}
!172 = !{i8 0, i8 2}
!173 = !{i64 2149300068}
!174 = !{i64 2149300334}
!175 = !{i64 2161437916}
!176 = !{!"branch_weights", i32 2000, i32 1}
!177 = !{i64 2148807471, i64 2148807476, i64 2148807489, i64 2148807533, i64 2148807567, i64 2148807588}
!178 = !{i64 2159701610}
!179 = !{i64 2159701819}
!180 = !{i64 2149308627}
!181 = !{i64 2149309663}
!182 = !{i64 2158810629}
!183 = !{i64 2158810840}
!184 = !{!"auto-init"}
!185 = !{i64 2161413907}
!186 = !{i64 2160306777}
!187 = !{i64 2160306992}
!188 = !{i64 2158794339}
!189 = !{i64 2158794542}
!190 = !{i64 2160289884}
!191 = !{i64 2160290109}
