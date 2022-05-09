; ModuleID = '/llk/IR_all_yes/net/mac80211/mesh.c_pt.bc'
source_filename = "../net/mac80211/mesh.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.32 }
%union.anon.32 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon }
%union.anon = type { %struct.anon.4, [16 x i8] }
%struct.anon.4 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.anon.11 = type { i8, %union.anon.12 }
%union.anon.12 = type <{ %struct.anon.17, [17 x i8] }>
%struct.anon.17 = type { i8, i8, i16, i16, i16, [0 x i8] }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_sub_if_data = type { %struct.list_head, %struct.wireless_dev, %struct.list_head, i32, i32, %struct.delayed_work, ptr, ptr, i32, i32, [16 x i8], %struct.ieee80211_fragment_cache, i16, i8, [8 x ptr], ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8, i32, %struct.atomic_t, [4 x %struct.ieee80211_tx_queue_params], ptr, [4 x %struct.airtime_info], %struct.work_struct, i8, %struct.cfg80211_chan_def, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.cfg80211_chan_def, i8, i8, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, i8, i32, i32, i32, i8, %struct.delayed_work, ptr, [6 x i32], [6 x i8], [6 x [10 x i8]], [6 x i8], [6 x [8 x i16]], [6 x i32], i8, %union.anon.186, %struct.anon.187, %struct.ieee80211_vif }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.159, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.31 }
%union.anon.31 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.159 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.cfg80211_bss_selection = type { i32, %union.anon.160 }
%union.anon.160 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.spinlock = type { %union.anon.34 }
%union.anon.34 = type { %struct.raw_spinlock }
%struct.ieee80211_fragment_cache = type { [4 x %struct.ieee80211_fragment_entry], i32 }
%struct.ieee80211_fragment_entry = type { %struct.sk_buff_head, i32, i16, i16, i16, i8, i8, [6 x i8], i32 }
%struct.atomic_t = type { i32 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.airtime_info = type { i64, i64, i64, i64, %struct.list_head, %struct.atomic_t, i32, i32, i32, i16 }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.94, i32, %struct.spinlock }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%union.anon.186 = type { %struct.ieee80211_if_mesh }
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
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.163, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.163 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.164] }
%struct.anon.164 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.ieee802_11_elems = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [8 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i8, i8 }
%struct.ieee80211_meshconf_ie = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.161, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.161 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.158, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
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
%struct.anon.158 = type { i64, i64, i8 }
%struct.ieee80211_local = type { %struct.ieee80211_hw, %struct.fq, ptr, %struct.codel_params, [4 x %struct.airtime_sched_info], i16, i32, %struct.atomic_t, ptr, ptr, [16 x i32], [16 x [11 x i32]], %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i8, i8, %struct.spinlock, %struct.work_struct, %struct.netdev_hw_addr_list, i8, i8, i8, i8, i8, i8, i8, i8, %struct.work_struct, i8, i8, i32, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.mutex, %struct.spinlock, i32, %struct.list_head, %struct.rhltable, %struct.timer_list, i32, [16 x %struct.sk_buff_head], %struct.tasklet_struct, %struct.tasklet_struct, [16 x %struct.atomic_t], %struct.atomic_t, ptr, %struct.arc4_ctx, %struct.arc4_ctx, i32, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.mutex, i32, %struct.cfg80211_ssid, ptr, ptr, ptr, %struct.cfg80211_chan_def, i32, i32, i32, i32, %struct.cfg80211_scan_info, %struct.work_struct, ptr, ptr, [6 x i8], i32, i32, %struct.delayed_work, ptr, %struct.cfg80211_chan_def, ptr, %struct.list_head, %struct.mutex, %struct.led_trigger, %struct.led_trigger, %struct.led_trigger, %struct.led_trigger, %struct.led_trigger, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, %struct.work_struct, %struct.work_struct, %struct.timer_list, %struct.notifier_block, %struct.notifier_block, i32, i32, i32, %struct.work_struct, %struct.local_debugfsdentries, i8, %struct.delayed_work, %struct.list_head, %struct.work_struct, %struct.work_struct, i32, i64, %struct.idr, %struct.spinlock, ptr, ptr, %struct.cfg80211_chan_def, [8 x i8] }
%struct.fq = type { ptr, ptr, %struct.list_head, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.codel_params = type { i32, i32, i32, i32, i8, i8, i8 }
%struct.airtime_sched_info = type { %struct.spinlock, %struct.rb_root_cached, ptr, %struct.list_head, i64, i64, i64, i64, i64, i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rhltable = type { %struct.rhashtable }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.173, i32 }
%union.anon.173 = type { ptr }
%struct.arc4_ctx = type { [256 x i32], i32, i32 }
%struct.cfg80211_ssid = type { [32 x i8], i8 }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.led_trigger = type { ptr, ptr, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.local_debugfsdentries = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.sta_info = type { %struct.list_head, %struct.list_head, %struct.callback_head, %struct.rhlist_head, [6 x i8], ptr, ptr, [8 x ptr], [4 x ptr], i8, ptr, ptr, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.work_struct, i16, i8, i8, i8, i32, i32, %struct.spinlock, [4 x %struct.sk_buff_head], [4 x %struct.sk_buff_head], i32, i32, i64, i32, %struct.ieee80211_sta_rx_stats, %struct.anon.174, [17 x i16], %struct.anon.175, %struct.anon.176, [16 x i16], [4 x %struct.airtime_info], %struct.sta_ampdu_mlme, ptr, i32, i32, ptr, %struct.codel_params, i8, %struct.cfg80211_chan_def, %struct.ieee80211_fragment_cache, %struct.ieee80211_sta }
%struct.callback_head = type { ptr, ptr }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.ieee80211_sta_rx_stats = type { i32, i32, i32, i32, i32, i32, i8, [4 x i8], i32, %struct.u64_stats_sync, i64, [17 x i64] }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.anon.174 = type { %struct.ewma_signal, [4 x %struct.ewma_signal] }
%struct.ewma_signal = type { i32 }
%struct.anon.175 = type { i32, i32, i32, i32, i32, [17 x i64], [17 x i64], i32, i8, i8, %struct.ewma_avg_signal }
%struct.ewma_avg_signal = type { i32 }
%struct.anon.176 = type { [4 x i64], [4 x i64], %struct.ieee80211_tx_rate, %struct.rate_info, [17 x i64] }
%struct.ieee80211_tx_rate = type <{ i8, i16 }>
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.sta_ampdu_mlme = type { %struct.mutex, [16 x ptr], [16 x i8], [1 x i32], [1 x i32], [1 x i32], [1 x i32], [1 x i32], %struct.work_struct, [16 x ptr], [16 x ptr], [16 x i32], [16 x i8], i8 }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.mesh_rmc = type { [256 x %struct.hlist_head], i32 }
%struct.ieee80211s_hdr = type <{ i8, i8, i32, [6 x i8], [6 x i8] }>
%struct.rmc_entry = type { %struct.hlist_node, i32, i32, [6 x i8] }
%struct.sk_buff = type { %union.anon.73, %union.anon.76, %union.anon.77, [48 x i8], %union.anon.78, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.80, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.73 = type { %struct.anon.74 }
%struct.anon.74 = type { ptr, ptr, %union.anon.75 }
%union.anon.75 = type { ptr }
%union.anon.76 = type { ptr }
%union.anon.77 = type { i64 }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { i32, ptr }
%union.anon.80 = type { %struct.anon.81 }
%struct.anon.81 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.82, i32, i32, i32, i16, i16, %union.anon.84, i32, %union.anon.85, %union.anon.86, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.82 = type { i32 }
%union.anon.84 = type { i32 }
%union.anon.85 = type { i32 }
%union.anon.86 = type { i16 }
%struct.ieee80211_sband_iftype_data = type <{ i16, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon.156 }>
%struct.anon.156 = type { ptr, i32 }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.mesh_csa_settings = type { %struct.callback_head, %struct.cfg80211_csa_settings }
%struct.cfg80211_csa_settings = type { %struct.cfg80211_chan_def, %struct.cfg80211_beacon_data, ptr, ptr, i32, i32, %struct.cfg80211_beacon_data, i8, i8, i8 }
%struct.cfg80211_beacon_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.beacon_data = type { ptr, ptr, i32, i32, ptr, [2 x i16], i8, %struct.callback_head }
%struct.ieee80211_mesh_chansw_params_ie = type { i8, i8, i16, i16 }
%struct.element = type { i8, i8, [0 x i8] }
%struct.ieee80211_csa_ie = type { %struct.cfg80211_chan_def, i8, i8, i8, i16, i16, i32 }

@mesh_allocated = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mesh_rmc\00", [23 x i8] zeroinitializer }, align 32
@rm_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@mesh_add_ht_oper_ie.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/mac80211/mesh.c\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@mesh_add_vht_oper_ie.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ieee80211_stop_mesh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@ieee80211_mesh_finish_csa.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: complete switching to center freq %d MHz\00", [51 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@ieee80211_mesh_csa_beacon.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ieee80211_mesh_init_sdata.zero_addr = internal global { [6 x i8], [26 x i8] } zeroinitializer, align 32
@ieee80211_mesh_init_sdata.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(&ifmsh->housekeeping_timer)\00", [35 x i8] zeroinitializer }, align 32
@ieee80211_mesh_init_sdata.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"(&ifmsh->mesh_path_timer)\00", [38 x i8] zeroinitializer }, align 32
@ieee80211_mesh_init_sdata.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(&ifmsh->mesh_path_root_timer)\00", [33 x i8] zeroinitializer }, align 32
@ieee80211_mesh_init_sdata.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&ifmsh->mesh_preq_queue_lock\00", [35 x i8] zeroinitializer }, align 32
@ieee80211_mesh_init_sdata.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&ifmsh->sync_offset_lock\00", [39 x i8] zeroinitializer }, align 32
@ieee80211_get_sband.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"net/mac80211/ieee80211_i.h\00", [37 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/cfg80211.h\00", [41 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@ieee80211_mesh_build_beacon.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ieee80211_mesh_build_beacon.__warned.19 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mesh_add_ds_params_ie.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ieee80211_mesh_rebuild_beacon.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: rssi_threshold=%d,rx_status->signal=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"%s: mesh STA %pM switches to unsupported channel (%d MHz, width:%d, CF1/2: %d/%d MHz), aborting\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"%s: mesh STA %pM switches to channel requiring DFS (%d MHz, width:%d, CF1/2: %d/%d MHz), aborting\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: received csa with an identical chandef, ignoring\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%s: received channel switch announcement to go to channel %d MHz\0A\00", [62 x i8] zeroinitializer }, align 32
@ieee80211_mesh_rx_probe_req.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ieee80211_tx_skb_tid.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Failed to process CSA action frame\00", [57 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Failed to forward the CSA frame\00", [60 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 6, i64 7]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 6, i64 7]
@__sancov_gen_cov_switch_values.29 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 6, i64 7]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 6, i64 7]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 6, i64 7]
@__sancov_gen_cov_switch_values.32 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 6, i64 7]
@__sancov_gen_cov_switch_values.33 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.34 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.35 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 4, i64 9]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 13, i64 15]
@__sancov_gen_cov_switch_values.37 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 6, i64 7]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.39 = private unnamed_addr constant [15 x i8] c"mesh_allocated\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 27, i32 31 }
@___asan_gen_.43 = private unnamed_addr constant [9 x i8] c"rm_cache\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 16, i32 27 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 457, i32 17 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 1086, i32 8 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 1393, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [10 x i8] c"zero_addr\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 1620, i32 12 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 1622, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 1637, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 1638, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 1642, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 1643, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [30 x i8] c"../net/mac80211/ieee80211_i.h\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 1505, i32 17 }
@___asan_gen_.95 = private unnamed_addr constant [26 x i8] c"../include/net/cfg80211.h\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 5969, i32 6 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 695, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 723, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 1350, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 1182, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 1198, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 1212, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 1217, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 1492, i32 3 }
@___asan_gen_.125 = private constant [23 x i8] c"../net/mac80211/mesh.c\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 1499, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 1984, i32 2 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @mesh_allocated, ptr @.str, ptr @rm_cache, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @ieee80211_mesh_init_sdata.zero_addr, ptr @ieee80211_mesh_init_sdata.__key, ptr @.str.5, ptr @ieee80211_mesh_init_sdata.__key.6, ptr @.str.7, ptr @ieee80211_mesh_init_sdata.__key.8, ptr @.str.9, ptr @ieee80211_mesh_init_sdata.__key.10, ptr @.str.11, ptr @ieee80211_mesh_init_sdata.__key.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @skb_queue_head_init.__key, ptr @.str.27], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mesh_allocated to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_mesh_init_sdata.zero_addr to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_mesh_init_sdata.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_mesh_init_sdata.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_mesh_init_sdata.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_mesh_init_sdata.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee80211_mesh_init_sdata.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mesh_action_is_path_sel(ptr nocapture noundef readonly %mgmt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.ieee80211_mgmt, ptr %mgmt, i32 0, i32 6
  %u1 = getelementptr inbounds %struct.anon.11, ptr %u, i32 0, i32 1
  %0 = ptrtoint ptr %u1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %u1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211s_init() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @mesh_allocated, align 4
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null) #13
  store ptr %call, ptr @rm_cache, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211s_stop() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @mesh_allocated, align 4
  br i1 %.b, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = load ptr, ptr @rm_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #13
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mesh_matches_local(ptr noundef %sdata, ptr noundef %ie) local_unnamed_addr #1 align 64 {
entry:
  %basic_rates = alloca i32, align 4
  %sta_chan_def = alloca %struct.cfg80211_chan_def, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %basic_rates) #13
  %0 = ptrtoint ptr %basic_rates to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %basic_rates, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %sta_chan_def) #13
  %1 = call ptr @memset(ptr %sta_chan_def, i32 255, i32 28)
  %mesh_id_len = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 7
  %2 = ptrtoint ptr %mesh_id_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mesh_id_len, align 4
  %mesh_id_len1 = getelementptr inbounds %struct.ieee802_11_elems, ptr %ie, i32 0, i32 67
  %4 = ptrtoint ptr %mesh_id_len1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mesh_id_len1, align 2
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp = icmp eq i32 %3, %conv
  br i1 %cmp, label %land.lhs.true, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %mesh_id = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 6
  %mesh_id3 = getelementptr inbounds %struct.ieee802_11_elems, ptr %ie, i32 0, i32 28
  %6 = ptrtoint ptr %mesh_id3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mesh_id3, align 4
  %bcmp = tail call i32 @bcmp(ptr %mesh_id, ptr %7, i32 %3) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp6 = icmp eq i32 %bcmp, 0
  br i1 %cmp6, label %land.lhs.true8, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true8:                                   ; preds = %land.lhs.true
  %mesh_pp_id = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 8
  %8 = ptrtoint ptr %mesh_pp_id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mesh_pp_id, align 8
  %mesh_config = getelementptr inbounds %struct.ieee802_11_elems, ptr %ie, i32 0, i32 20
  %10 = ptrtoint ptr %mesh_config to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mesh_config, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %13)
  %cmp11 = icmp eq i8 %9, %13
  br i1 %cmp11, label %land.lhs.true13, label %land.lhs.true8.cleanup_crit_edge

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true13:                                  ; preds = %land.lhs.true8
  %mesh_pm_id = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 9
  %14 = ptrtoint ptr %mesh_pm_id to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %mesh_pm_id, align 1
  %meshconf_pmetric = getelementptr inbounds %struct.ieee80211_meshconf_ie, ptr %11, i32 0, i32 1
  %16 = ptrtoint ptr %meshconf_pmetric to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %meshconf_pmetric, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %17)
  %cmp17 = icmp eq i8 %15, %17
  br i1 %cmp17, label %land.lhs.true19, label %land.lhs.true13.cleanup_crit_edge

land.lhs.true13.cleanup_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true19:                                  ; preds = %land.lhs.true13
  %mesh_cc_id = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 10
  %18 = ptrtoint ptr %mesh_cc_id to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %mesh_cc_id, align 2
  %meshconf_congest = getelementptr inbounds %struct.ieee80211_meshconf_ie, ptr %11, i32 0, i32 2
  %20 = ptrtoint ptr %meshconf_congest to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %meshconf_congest, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %21)
  %cmp23 = icmp eq i8 %19, %21
  br i1 %cmp23, label %land.lhs.true25, label %land.lhs.true19.cleanup_crit_edge

land.lhs.true19.cleanup_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true25:                                  ; preds = %land.lhs.true19
  %mesh_sp_id = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 11
  %22 = ptrtoint ptr %mesh_sp_id to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %mesh_sp_id, align 1
  %meshconf_synch = getelementptr inbounds %struct.ieee80211_meshconf_ie, ptr %11, i32 0, i32 3
  %24 = ptrtoint ptr %meshconf_synch to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %meshconf_synch, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %25)
  %cmp29 = icmp eq i8 %23, %25
  br i1 %cmp29, label %land.lhs.true31, label %land.lhs.true25.cleanup_crit_edge

land.lhs.true25.cleanup_crit_edge:                ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true31:                                  ; preds = %land.lhs.true25
  %mesh_auth_id = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 12
  %26 = ptrtoint ptr %mesh_auth_id to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %mesh_auth_id, align 4
  %meshconf_auth = getelementptr inbounds %struct.ieee80211_meshconf_ie, ptr %11, i32 0, i32 4
  %28 = ptrtoint ptr %meshconf_auth to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %meshconf_auth, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %29)
  %cmp35 = icmp eq i8 %27, %29
  br i1 %cmp35, label %if.end, label %land.lhs.true31.cleanup_crit_edge

land.lhs.true31.cleanup_crit_edge:                ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true31
  %call37 = tail call fastcc ptr @ieee80211_get_sband(ptr noundef %sdata)
  %tobool.not = icmp eq ptr %call37, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end39

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end39:                                         ; preds = %if.end
  %band = getelementptr inbounds %struct.ieee80211_supported_band, ptr %call37, i32 0, i32 2
  %30 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %band, align 4
  %call40 = call i32 @ieee80211_sta_get_rates(ptr noundef %sdata, ptr noundef %ie, i32 noundef %31, ptr noundef nonnull %basic_rates) #13
  %basic_rates41 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 24
  %32 = ptrtoint ptr %basic_rates41 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %basic_rates41, align 8
  %34 = ptrtoint ptr %basic_rates to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %basic_rates, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp42.not = icmp eq i32 %33, %35
  br i1 %cmp42.not, label %if.end45, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end45:                                         ; preds = %if.end39
  %chandef = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 32
  %36 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chandef, align 4
  call void @cfg80211_chandef_create(ptr noundef nonnull %sta_chan_def, ptr noundef %37, i32 noundef 0) #13
  %ht_operation = getelementptr inbounds %struct.ieee802_11_elems, ptr %ie, i32 0, i32 17
  %38 = ptrtoint ptr %ht_operation to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ht_operation, align 4
  %call48 = call zeroext i1 @ieee80211_chandef_ht_oper(ptr noundef %39, ptr noundef nonnull %sta_chan_def) #13
  %vht_cap_elem = getelementptr inbounds %struct.ieee802_11_elems, ptr %ie, i32 0, i32 18
  %40 = ptrtoint ptr %vht_cap_elem to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vht_cap_elem, align 4
  %tobool49.not = icmp eq ptr %41, null
  br i1 %tobool49.not, label %if.end45.if.end53_crit_edge, label %if.then50

if.end45.if.end53_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

if.then50:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %41, align 1
  %44 = call i32 @llvm.bswap.i32(i32 %43)
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.end45.if.end53_crit_edge
  %vht_cap_info.0 = phi i32 [ %44, %if.then50 ], [ 0, %if.end45.if.end53_crit_edge ]
  %local = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %45 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %local, align 4
  %vht_operation = getelementptr inbounds %struct.ieee802_11_elems, ptr %ie, i32 0, i32 19
  %47 = ptrtoint ptr %vht_operation to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %vht_operation, align 4
  %49 = ptrtoint ptr %ht_operation to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ht_operation, align 4
  %call55 = call zeroext i1 @ieee80211_chandef_vht_oper(ptr noundef %46, i32 noundef %vht_cap_info.0, ptr noundef %48, ptr noundef %50, ptr noundef nonnull %sta_chan_def) #13
  %he_operation = getelementptr inbounds %struct.ieee802_11_elems, ptr %ie, i32 0, i32 22
  %51 = ptrtoint ptr %he_operation to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %he_operation, align 4
  %call56 = call zeroext i1 @ieee80211_chandef_he_6ghz_oper(ptr noundef %sdata, ptr noundef %52, ptr noundef nonnull %sta_chan_def) #13
  %call60 = call ptr @cfg80211_chandef_compatible(ptr noundef %chandef, ptr noundef nonnull %sta_chan_def) #13
  %tobool61.not = icmp ne ptr %call60, null
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.end39.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true31.cleanup_crit_edge, %land.lhs.true25.cleanup_crit_edge, %land.lhs.true19.cleanup_crit_edge, %land.lhs.true13.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %land.lhs.true31.cleanup_crit_edge ], [ false, %land.lhs.true25.cleanup_crit_edge ], [ false, %land.lhs.true19.cleanup_crit_edge ], [ false, %land.lhs.true13.cleanup_crit_edge ], [ false, %land.lhs.true8.cleanup_crit_edge ], [ false, %land.lhs.true.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %if.end39.cleanup_crit_edge ], [ %tobool61.not, %if.end53 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %sta_chan_def) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %basic_rates) #13
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ieee80211_get_sband(ptr noundef %sdata) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %local1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !79) #13
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !89
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %chanctx_conf2 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 9
  %6 = ptrtoint ptr %chanctx_conf2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %chanctx_conf2, align 4
  %call = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end9_crit_edge

rcu_read_lock.exit.do.end9_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b19 = load i1, ptr @ieee80211_get_sband.__warned, align 1
  br i1 %.b19, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ieee80211_get_sband.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 1505, ptr noundef nonnull @.str.2) #13
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %rcu_read_lock.exit.do.end9_crit_edge
  %tobool11.not = icmp eq ptr %7, null
  br i1 %tobool11.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %do.end9
  %call.i20 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i20, label %if.then12.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i23

if.then12.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i23:                                ; preds = %if.then12
  %call1.i21 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i21)
  %tobool.not.i22 = icmp eq i32 %call1.i21, 0
  br i1 %tobool.not.i22, label %land.lhs.true.i23.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i25

land.lhs.true.i23.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i23
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i25:                               ; preds = %land.lhs.true.i23
  %.b4.i24 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i24, label %land.lhs.true2.i25.rcu_read_unlock.exit_crit_edge, label %if.then.i26

land.lhs.true2.i25.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i25
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i26:                                      ; preds = %land.lhs.true2.i25
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.18) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i26, %land.lhs.true2.i25.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i23.rcu_read_unlock.exit_crit_edge, %if.then12.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !90
  %8 = tail call i32 @llvm.read_register.i32(metadata !79) #13
  %and.i.i.i.i.i27 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i27 to ptr
  %preempt_count.i.i.i.i28 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i28, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i28, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %cleanup

if.end13:                                         ; preds = %do.end9
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %7, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %call.i29 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i29, label %if.end13.rcu_read_unlock.exit39_crit_edge, label %land.lhs.true.i32

if.end13.rcu_read_unlock.exit39_crit_edge:        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit39

land.lhs.true.i32:                                ; preds = %if.end13
  %call1.i30 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i30)
  %tobool.not.i31 = icmp eq i32 %call1.i30, 0
  br i1 %tobool.not.i31, label %land.lhs.true.i32.rcu_read_unlock.exit39_crit_edge, label %land.lhs.true2.i34

land.lhs.true.i32.rcu_read_unlock.exit39_crit_edge: ; preds = %land.lhs.true.i32
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit39

land.lhs.true2.i34:                               ; preds = %land.lhs.true.i32
  %.b4.i33 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i33, label %land.lhs.true2.i34.rcu_read_unlock.exit39_crit_edge, label %if.then.i35

land.lhs.true2.i34.rcu_read_unlock.exit39_crit_edge: ; preds = %land.lhs.true2.i34
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit39

if.then.i35:                                      ; preds = %land.lhs.true2.i34
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.18) #13
  br label %rcu_read_unlock.exit39

rcu_read_unlock.exit39:                           ; preds = %if.then.i35, %land.lhs.true2.i34.rcu_read_unlock.exit39_crit_edge, %land.lhs.true.i32.rcu_read_unlock.exit39_crit_edge, %if.end13.rcu_read_unlock.exit39_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !90
  %16 = tail call i32 @llvm.read_register.i32(metadata !79) #13
  %and.i.i.i.i.i36 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i36 to ptr
  %preempt_count.i.i.i.i37 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i37, align 4
  %sub.i.i.i38 = add i32 %19, -1
  store volatile i32 %sub.i.i.i38, ptr %preempt_count.i.i.i.i37, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
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
declare dso_local i32 @ieee80211_sta_get_rates(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_chandef_create(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ieee80211_chandef_ht_oper(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ieee80211_chandef_vht_oper(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ieee80211_chandef_he_6ghz_oper(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_chandef_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mesh_peer_accepts_plinks(ptr nocapture noundef readonly %ie) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mesh_config = getelementptr inbounds %struct.ieee802_11_elems, ptr %ie, i32 0, i32 20
  %0 = ptrtoint ptr %mesh_config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mesh_config, align 4
  %meshconf_cap = getelementptr inbounds %struct.ieee80211_meshconf_ie, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %meshconf_cap to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %meshconf_cap, align 1
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp = icmp ne i8 %4, 0
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mesh_accept_plinks_update(ptr noundef %sdata) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dot11MeshMaxPeerLinks.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24, i32 3
  %0 = ptrtoint ptr %dot11MeshMaxPeerLinks.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %dot11MeshMaxPeerLinks.i.i, align 2
  %conv.i.i = zext i16 %1 to i32
  %estab_plinks.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 25
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %estab_plinks.i.i, i32 noundef 4) #13
  %2 = ptrtoint ptr %estab_plinks.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %estab_plinks.i.i, align 4
  %sub.i.i = sub i32 %conv.i.i, %3
  %local.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %4 = ptrtoint ptr %local.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %local.i, align 4
  %num_sta.i = getelementptr inbounds %struct.ieee80211_local, ptr %5, i32 0, i32 48
  %6 = ptrtoint ptr %num_sta.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_sta.i, align 8
  %sub.i = sub i32 256, %7
  %8 = tail call i32 @llvm.smin.i32(i32 %sub.i.i, i32 %sub.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp1.i = icmp sgt i32 %8, 0
  %accepting_plinks = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 27
  %9 = ptrtoint ptr %accepting_plinks to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %accepting_plinks, align 4, !range !91
  %11 = zext i1 %cmp1.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %11)
  %cmp.not = icmp eq i8 %10, %11
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %accepting_plinks to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %accepting_plinks, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %changed.0 = phi i32 [ 256, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %changed.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mesh_sta_cleanup(ptr noundef %sta) local_unnamed_addr #1 align 64 {
entry:
  %bits.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sdata1 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 6
  %0 = ptrtoint ptr %sdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdata1, align 4
  %call = tail call i32 @mesh_plink_deactivate(ptr noundef %sta) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bits.i) #13
  %2 = ptrtoint ptr %bits.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %bits.i, align 4
  %call.i = call i32 @_find_next_bit_be(ptr noundef nonnull %bits.i, i32 noundef 32, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call.i)
  %cmp9.i = icmp ult i32 %call.i, 32
  br i1 %cmp9.i, label %for.body.lr.ph.i, label %if.end.i.ieee80211_mbss_info_change_notify.exit_crit_edge

if.end.i.ieee80211_mbss_info_change_notify.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ieee80211_mbss_info_change_notify.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %mbss_changed.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %bit.010.i = phi i32 [ %call.i, %for.body.lr.ph.i ], [ %call1.i, %for.body.i.for.body.i_crit_edge ]
  call void @_set_bit(i32 noundef %bit.010.i, ptr noundef %mbss_changed.i) #13
  %add.i = add nuw nsw i32 %bit.010.i, 1
  %call1.i = call i32 @_find_next_bit_be(ptr noundef nonnull %bits.i, i32 noundef 32, i32 noundef %add.i) #13
  %cmp.i = icmp ult i32 %call1.i, 32
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.ieee80211_mbss_info_change_notify.exit_crit_edge

for.body.i.ieee80211_mbss_info_change_notify.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ieee80211_mbss_info_change_notify.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

ieee80211_mbss_info_change_notify.exit:           ; preds = %for.body.i.ieee80211_mbss_info_change_notify.exit_crit_edge, %if.end.i.ieee80211_mbss_info_change_notify.exit_crit_edge
  %wrkq_flags.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 3
  call void @_set_bit(i32 noundef 3, ptr noundef %wrkq_flags.i) #13
  %local.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %local.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %local.i, align 4
  %work.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 40
  call void @ieee80211_queue_work(ptr noundef %4, ptr noundef %work.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits.i) #13
  br label %if.end

if.end:                                           ; preds = %ieee80211_mbss_info_change_notify.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mesh_plink_deactivate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_mbss_info_change_notify(ptr noundef %sdata, i32 noundef %changed) local_unnamed_addr #1 align 64 {
entry:
  %bits = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bits) #13
  %0 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %changed, ptr %bits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %changed)
  %tobool.not = icmp eq i32 %changed, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @_find_next_bit_be(ptr noundef nonnull %bits, i32 noundef 32, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call)
  %cmp9 = icmp ult i32 %call, 32
  br i1 %cmp9, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %mbss_changed = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %bit.010 = phi i32 [ %call, %for.body.lr.ph ], [ %call1, %for.body.for.body_crit_edge ]
  call void @_set_bit(i32 noundef %bit.010, ptr noundef %mbss_changed) #13
  %add = add nuw nsw i32 %bit.010, 1
  %call1 = call i32 @_find_next_bit_be(ptr noundef nonnull %bits, i32 noundef 32, i32 noundef %add) #13
  %cmp = icmp ult i32 %call1, 32
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %wrkq_flags = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 3
  call void @_set_bit(i32 noundef 3, ptr noundef %wrkq_flags) #13
  %local = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %1 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %local, align 4
  %work = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 40
  call void @ieee80211_queue_work(ptr noundef %2, ptr noundef %work) #13
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mesh_rmc_init(ptr nocapture noundef %sdata) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 1028) #17
  %rmc = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 19
  %1 = ptrtoint ptr %rmc to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i, ptr %rmc, align 8
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %idx_mask = getelementptr inbounds %struct.mesh_rmc, ptr %call7.i, i32 0, i32 1
  %2 = ptrtoint ptr %idx_mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 255, ptr %idx_mask, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %i.012 = phi i32 [ 0, %if.end ], [ %inc, %for.body.for.body_crit_edge ]
  %3 = ptrtoint ptr %rmc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rmc, align 8
  %arrayidx = getelementptr [256 x %struct.hlist_head], ptr %4, i32 0, i32 %i.012
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mesh_rmc_free(ptr nocapture noundef %sdata) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rmc1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 19
  %0 = ptrtoint ptr %rmc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmc1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.inc22.for.body_crit_edge, %entry.for.body_crit_edge
  %i.043 = phi i32 [ %inc, %for.inc22.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [256 x %struct.hlist_head], ptr %1, i32 0, i32 %i.043
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool7.not41 = icmp eq ptr %3, null
  br i1 %tobool7.not41, label %for.body.for.inc22_crit_edge, label %land.rhs.preheader

for.body.for.inc22_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc22

land.rhs.preheader:                               ; preds = %for.body
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %pprev2.i.i44 = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %pprev2.i.i44 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pprev2.i.i44, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %5, ptr %7, align 4
  %tobool.not.i.i45 = icmp eq ptr %5, null
  br i1 %tobool.not.i.i45, label %land.rhs.preheader.for.inc22.loopexit.critedge_crit_edge, label %land.rhs.preheader.do.body13.i.i_crit_edge

land.rhs.preheader.do.body13.i.i_crit_edge:       ; preds = %land.rhs.preheader
  br label %do.body13.i.i

land.rhs.preheader.for.inc22.loopexit.critedge_crit_edge: ; preds = %land.rhs.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc22.loopexit.critedge

do.body13.i.i:                                    ; preds = %do.body13.i.i.do.body13.i.i_crit_edge, %land.rhs.preheader.do.body13.i.i_crit_edge
  %9 = phi ptr [ %18, %do.body13.i.i.do.body13.i.i_crit_edge ], [ %7, %land.rhs.preheader.do.body13.i.i_crit_edge ]
  %pprev2.i.i47 = phi ptr [ %pprev2.i.i, %do.body13.i.i.do.body13.i.i_crit_edge ], [ %pprev2.i.i44, %land.rhs.preheader.do.body13.i.i_crit_edge ]
  %10 = phi ptr [ %16, %do.body13.i.i.do.body13.i.i_crit_edge ], [ %5, %land.rhs.preheader.do.body13.i.i_crit_edge ]
  %p.04246 = phi ptr [ %10, %do.body13.i.i.do.body13.i.i_crit_edge ], [ %3, %land.rhs.preheader.do.body13.i.i_crit_edge ]
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %pprev14.i.i, align 4
  %12 = ptrtoint ptr %p.04246 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %p.04246, align 4
  %13 = ptrtoint ptr %pprev2.i.i47 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i47, align 4
  %14 = load ptr, ptr @rm_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %14, ptr noundef nonnull %p.04246) #13
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %10, align 4
  %pprev2.i.i = getelementptr inbounds %struct.hlist_node, ptr %10, i32 0, i32 1
  %17 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pprev2.i.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %16, ptr %18, align 4
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %do.body13.i.i.for.inc22.loopexit.critedge_crit_edge, label %do.body13.i.i.do.body13.i.i_crit_edge

do.body13.i.i.do.body13.i.i_crit_edge:            ; preds = %do.body13.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body13.i.i

do.body13.i.i.for.inc22.loopexit.critedge_crit_edge: ; preds = %do.body13.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc22.loopexit.critedge

for.inc22.loopexit.critedge:                      ; preds = %do.body13.i.i.for.inc22.loopexit.critedge_crit_edge, %land.rhs.preheader.for.inc22.loopexit.critedge_crit_edge
  %p.042.lcssa = phi ptr [ %3, %land.rhs.preheader.for.inc22.loopexit.critedge_crit_edge ], [ %10, %do.body13.i.i.for.inc22.loopexit.critedge_crit_edge ]
  %pprev2.i.i.lcssa = phi ptr [ %pprev2.i.i44, %land.rhs.preheader.for.inc22.loopexit.critedge_crit_edge ], [ %pprev2.i.i, %do.body13.i.i.for.inc22.loopexit.critedge_crit_edge ]
  %20 = ptrtoint ptr %p.042.lcssa to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %p.042.lcssa, align 4
  %21 = ptrtoint ptr %pprev2.i.i.lcssa to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.lcssa, align 4
  %22 = load ptr, ptr @rm_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %22, ptr noundef nonnull %p.042.lcssa) #13
  br label %for.inc22

for.inc22:                                        ; preds = %for.inc22.loopexit.critedge, %for.body.for.inc22_crit_edge
  %inc = add nuw nsw i32 %i.043, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end23, label %for.inc22.for.body_crit_edge

for.inc22.for.body_crit_edge:                     ; preds = %for.inc22
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end23:                                        ; preds = %for.inc22
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %1) #13
  %23 = ptrtoint ptr %rmc1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %rmc1, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end23, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mesh_rmc_check(ptr nocapture noundef readonly %sdata, ptr nocapture noundef readonly %sa, ptr nocapture noundef readonly %mesh_hdr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rmc1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 19
  %0 = ptrtoint ptr %rmc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmc1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %seqnum2 = getelementptr inbounds %struct.ieee80211s_hdr, ptr %mesh_hdr, i32 0, i32 2
  %2 = ptrtoint ptr %seqnum2 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %seqnum.0.copyload = load i32, ptr %seqnum2, align 2
  %3 = lshr i32 %seqnum.0.copyload, 24
  %idx_mask = getelementptr inbounds %struct.mesh_rmc, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %idx_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idx_mask, align 4
  %and = and i32 %3, %5
  %arrayidx = getelementptr [256 x %struct.hlist_head], ptr %1, i32 0, i32 %and
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool6.not74 = icmp eq ptr %7, null
  br i1 %tobool6.not74, label %if.end.for.end_crit_edge, label %land.rhs.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

land.rhs.lr.ph:                                   ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %sa, i32 4
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.lr.ph
  %entries.076 = phi i32 [ 0, %land.rhs.lr.ph ], [ %entries.1, %for.inc.land.rhs_crit_edge ]
  %p.075 = phi ptr [ %7, %land.rhs.lr.ph ], [ %9, %for.inc.land.rhs_crit_edge ]
  %8 = ptrtoint ptr %p.075 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %p.075, align 4
  %inc = add i32 %entries.076, 1
  %exp_time = getelementptr inbounds %struct.rmc_entry, ptr %p.075, i32 0, i32 1
  %10 = ptrtoint ptr %exp_time to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %exp_time, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %11, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc)
  %cmp10 = icmp eq i32 %inc, 4
  %or.cond = select i1 %cmp, i1 true, i1 %cmp10
  br i1 %or.cond, label %if.then12, label %if.else

if.then12:                                        ; preds = %land.rhs
  %pprev2.i.i = getelementptr inbounds %struct.hlist_node, ptr %p.075, i32 0, i32 1
  %13 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pprev2.i.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %9, ptr %14, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.then12.hlist_del.exit_crit_edge, label %do.body13.i.i

if.then12.hlist_del.exit_crit_edge:               ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %9, i32 0, i32 1
  %16 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %if.then12.hlist_del.exit_crit_edge
  %17 = ptrtoint ptr %p.075 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %p.075, align 4
  %18 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %19 = load ptr, ptr @rm_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %19, ptr noundef nonnull %p.075) #13
  br label %for.inc

if.else:                                          ; preds = %land.rhs
  %seqnum14 = getelementptr inbounds %struct.rmc_entry, ptr %p.075, i32 0, i32 2
  %20 = ptrtoint ptr %seqnum14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %seqnum14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %seqnum.0.copyload, i32 %21)
  %cmp15 = icmp eq i32 %seqnum.0.copyload, %21
  br i1 %cmp15, label %land.lhs.true, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true:                                    ; preds = %if.else
  %sa17 = getelementptr inbounds %struct.rmc_entry, ptr %p.075, i32 0, i32 3
  %22 = ptrtoint ptr %sa to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sa, align 4
  %24 = ptrtoint ptr %sa17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sa17, align 4
  %xor.i = xor i32 %25, %23
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.rmc_entry, ptr %p.075, i32 0, i32 3, i32 4
  %28 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %29, %27
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %if.else.for.inc_crit_edge, %hlist_del.exit
  %entries.1 = phi i32 [ %entries.076, %hlist_del.exit ], [ %inc, %land.lhs.true.for.inc_crit_edge ], [ %inc, %if.else.for.inc_crit_edge ]
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %30 = load ptr, ptr @rm_cache, align 4
  %call32 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %30, i32 noundef 2592) #13
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %for.end.cleanup_crit_edge, label %if.end35

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end35:                                         ; preds = %for.end
  %seqnum36 = getelementptr inbounds %struct.rmc_entry, ptr %call32, i32 0, i32 2
  %31 = ptrtoint ptr %seqnum36 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %seqnum.0.copyload, ptr %seqnum36, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %32, 300
  %exp_time37 = getelementptr inbounds %struct.rmc_entry, ptr %call32, i32 0, i32 1
  %33 = ptrtoint ptr %exp_time37 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add, ptr %exp_time37, align 8
  %sa38 = getelementptr inbounds %struct.rmc_entry, ptr %call32, i32 0, i32 3
  %34 = call ptr @memcpy(ptr %sa38, ptr %sa, i32 6)
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx, align 4
  %37 = ptrtoint ptr %call32 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %36, ptr %call32, align 8
  %tobool.not.i = icmp eq ptr %36, null
  br i1 %tobool.not.i, label %if.end35.hlist_add_head.exit_crit_edge, label %do.body12.i

if.end35.hlist_add_head.exit_crit_edge:           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %36, i32 0, i32 1
  %38 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %call32, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %if.end35.hlist_add_head.exit_crit_edge
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %call32, ptr %arrayidx, align 4
  %pprev34.i = getelementptr inbounds %struct.hlist_node, ptr %call32, i32 0, i32 1
  %40 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %arrayidx, ptr %pprev34.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %hlist_add_head.exit, %for.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %hlist_add_head.exit ], [ -1, %entry.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mesh_add_meshconf_ie(ptr noundef %sdata, ptr noundef %skb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %num_gates = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 28
  %0 = ptrtoint ptr %num_gates to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_gates, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %entry.lor.end_crit_edge, label %lor.lhs.false

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end

lor.lhs.false:                                    ; preds = %entry
  %dot11MeshGateAnnouncementProtocol = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24, i32 20
  %2 = ptrtoint ptr %dot11MeshGateAnnouncementProtocol to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dot11MeshGateAnnouncementProtocol, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.rhs, label %lor.lhs.false.lor.end_crit_edge

lor.lhs.false.lor.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end

lor.rhs:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  %dot11MeshConnectedToMeshGate = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24, i32 17
  %4 = ptrtoint ptr %dot11MeshConnectedToMeshGate to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dot11MeshConnectedToMeshGate, align 1, !range !91
  %6 = zext i8 %5 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.lor.end_crit_edge, %entry.lor.end_crit_edge
  %7 = phi i32 [ 1, %lor.lhs.false.lor.end_crit_edge ], [ 1, %entry.lor.end_crit_edge ], [ %6, %lor.rhs ]
  %dot11MeshConnectedToAuthServer = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24, i32 18
  %8 = ptrtoint ptr %dot11MeshConnectedToAuthServer to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dot11MeshConnectedToAuthServer, align 4, !range !91
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %10 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not.i = icmp eq i32 %11, 0
  br i1 %tobool.i.not.i, label %skb_tailroom.exit, label %lor.end.cleanup_crit_edge

lor.end.cleanup_crit_edge:                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

skb_tailroom.exit:                                ; preds = %lor.end
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %12 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %14 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %13 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %sub.ptr.sub.i)
  %cmp6 = icmp slt i32 %sub.ptr.sub.i, 9
  br i1 %cmp6, label %skb_tailroom.exit.cleanup_crit_edge, label %if.end

skb_tailroom.exit.cleanup_crit_edge:              ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call10 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 9) #13
  %incdec.ptr = getelementptr i8, ptr %call10, i32 1
  %16 = ptrtoint ptr %call10 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 113, ptr %call10, align 1
  %incdec.ptr11 = getelementptr i8, ptr %call10, i32 2
  %17 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 7, ptr %incdec.ptr, align 1
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %incdec.ptr11 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %19 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %meshconf_offset = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 45
  %20 = ptrtoint ptr %meshconf_offset to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub.ptr.sub, ptr %meshconf_offset, align 4
  %mesh_pp_id = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 8
  %21 = ptrtoint ptr %mesh_pp_id to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %mesh_pp_id, align 8
  %incdec.ptr12 = getelementptr i8, ptr %call10, i32 3
  %23 = ptrtoint ptr %incdec.ptr11 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %incdec.ptr11, align 1
  %mesh_pm_id = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 9
  %24 = ptrtoint ptr %mesh_pm_id to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %mesh_pm_id, align 1
  %incdec.ptr13 = getelementptr i8, ptr %call10, i32 4
  %26 = ptrtoint ptr %incdec.ptr12 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %incdec.ptr12, align 1
  %mesh_cc_id = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 10
  %27 = ptrtoint ptr %mesh_cc_id to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %mesh_cc_id, align 2
  %incdec.ptr14 = getelementptr i8, ptr %call10, i32 5
  %29 = ptrtoint ptr %incdec.ptr13 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %incdec.ptr13, align 1
  %mesh_sp_id = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 11
  %30 = ptrtoint ptr %mesh_sp_id to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %mesh_sp_id, align 1
  %incdec.ptr15 = getelementptr i8, ptr %call10, i32 6
  %32 = ptrtoint ptr %incdec.ptr14 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %incdec.ptr14, align 1
  %mesh_auth_id = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 12
  %33 = ptrtoint ptr %mesh_auth_id to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %mesh_auth_id, align 4
  %incdec.ptr16 = getelementptr i8, ptr %call10, i32 7
  %35 = ptrtoint ptr %incdec.ptr15 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %incdec.ptr15, align 1
  %estab_plinks = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 25
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %estab_plinks, i32 noundef 4) #13
  %36 = ptrtoint ptr %estab_plinks to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %estab_plinks, align 4
  %conv19 = and i32 %37, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %conv19)
  %cmp20 = icmp ult i32 %conv19, 63
  %phi.cast87 = shl i32 %37, 1
  %cond = select i1 %cmp20, i32 %phi.cast87, i32 126
  %38 = shl nuw i8 %9, 7
  %shl = zext i8 %38 to i32
  %or = or i32 %7, %shl
  %or29 = or i32 %or, %cond
  %conv30 = trunc i32 %or29 to i8
  %incdec.ptr31 = getelementptr i8, ptr %call10, i32 8
  %39 = ptrtoint ptr %incdec.ptr16 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv30, ptr %incdec.ptr16, align 1
  %40 = ptrtoint ptr %incdec.ptr31 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %incdec.ptr31, align 1
  %dot11MeshForwarding = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24, i32 21
  %41 = ptrtoint ptr %dot11MeshForwarding to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %dot11MeshForwarding, align 1, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool33.not = icmp eq i8 %42, 0
  %conv38 = select i1 %tobool33.not, i8 0, i8 8
  %43 = ptrtoint ptr %incdec.ptr31 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv38, ptr %incdec.ptr31, align 1
  %accepting_plinks = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 27
  %44 = ptrtoint ptr %accepting_plinks to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %accepting_plinks, align 4, !range !91
  %or4388 = or i8 %conv38, %45
  store i8 %or4388, ptr %incdec.ptr31, align 1
  %ps_peers_deep_sleep = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 39
  %46 = ptrtoint ptr %ps_peers_deep_sleep to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ps_peers_deep_sleep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool45.not = icmp eq i32 %47, 0
  %cond46 = select i1 %tobool45.not, i8 0, i8 64
  %or48 = or i8 %cond46, %or4388
  %48 = ptrtoint ptr %incdec.ptr31 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %or48, ptr %incdec.ptr31, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %skb_tailroom.exit.cleanup_crit_edge, %lor.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %skb_tailroom.exit.cleanup_crit_edge ], [ -12, %lor.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mesh_add_meshid_ie(ptr nocapture noundef readonly %sdata, ptr noundef %skb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %0 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not.i = icmp eq i32 %1, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %entry.skb_tailroom.exit_crit_edge

entry.skb_tailroom.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %entry.skb_tailroom.exit_crit_edge
  %cond.i = phi i32 [ %sub.ptr.sub.i, %cond.false.i ], [ 0, %entry.skb_tailroom.exit_crit_edge ]
  %mesh_id_len = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 7
  %6 = ptrtoint ptr %mesh_id_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mesh_id_len, align 4
  %add = add i32 %7, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %add)
  %cmp = icmp ult i32 %cond.i, %add
  br i1 %cmp, label %skb_tailroom.exit.cleanup_crit_edge, label %if.end

skb_tailroom.exit.cleanup_crit_edge:              ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %skb_tailroom.exit
  %call3 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef %add) #13
  %incdec.ptr = getelementptr i8, ptr %call3, i32 1
  %8 = ptrtoint ptr %call3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 114, ptr %call3, align 1
  %9 = ptrtoint ptr %mesh_id_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mesh_id_len, align 4
  %conv = trunc i32 %10 to i8
  %11 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %incdec.ptr, align 1
  %12 = load i32, ptr %mesh_id_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %incdec.ptr5 = getelementptr i8, ptr %call3, i32 2
  %mesh_id = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 6
  %13 = call ptr @memcpy(ptr %incdec.ptr5, ptr %mesh_id, i32 %12)
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end.cleanup_crit_edge, %skb_tailroom.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %skb_tailroom.exit.cleanup_crit_edge ], [ 0, %if.then7 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mesh_add_vendor_ies(ptr nocapture noundef readonly %sdata, ptr noundef %skb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ie = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 30
  %0 = ptrtoint ptr %ie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ie, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ie_len = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 31
  %2 = ptrtoint ptr %ie_len to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ie_len, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %conv = zext i8 %3 to i32
  %call = tail call i32 @ieee80211_ie_split_vendor(ptr noundef nonnull %1, i32 noundef %conv, i32 noundef 0) #13
  %conv5 = and i32 %call, 255
  %4 = ptrtoint ptr %ie_len to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ie_len, align 4
  %conv7 = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5, i32 %conv7)
  %cmp = icmp ult i32 %conv5, %conv7
  br i1 %cmp, label %if.then9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then9:                                         ; preds = %if.end
  %6 = trunc i32 %call to i8
  %conv13 = sub i8 %5, %6
  %7 = ptrtoint ptr %ie to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ie, align 8
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %9 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not.i = icmp eq i32 %10, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %if.then9.skb_tailroom.exit_crit_edge

if.then9.skb_tailroom.exit_crit_edge:             ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %11 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %13 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %12 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %14 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %if.then9.skb_tailroom.exit_crit_edge
  %cond.i = phi i32 [ %sub.ptr.sub.i, %cond.false.i ], [ 0, %if.then9.skb_tailroom.exit_crit_edge ]
  %conv17 = zext i8 %conv13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %conv17)
  %cmp18 = icmp slt i32 %cond.i, %conv17
  br i1 %cmp18, label %skb_tailroom.exit.cleanup_crit_edge, label %if.end21

skb_tailroom.exit.cleanup_crit_edge:              ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end21:                                         ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %8, i32 %conv5
  %call.i = tail call ptr @skb_put(ptr noundef %skb, i32 noundef %conv17) #13
  %15 = call ptr @memcpy(ptr %call.i, ptr %add.ptr, i32 %conv17)
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %skb_tailroom.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -12, %skb_tailroom.exit.cleanup_crit_edge ], [ 0, %if.end21 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_ie_split_vendor(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mesh_add_rsn_ie(ptr nocapture noundef readonly %sdata, ptr noundef %skb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ie = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 30
  %0 = ptrtoint ptr %ie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ie, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ie_len = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 31
  %2 = ptrtoint ptr %ie_len to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ie_len, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %conv = zext i8 %3 to i32
  %call.i.i = tail call ptr @cfg80211_find_elem_match(i8 noundef zeroext 48, ptr noundef nonnull %1, i32 noundef %conv, ptr noundef null, i32 noundef 0, i32 noundef 0) #13
  %tobool4.not = icmp eq ptr %call.i.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %arrayidx = getelementptr i8, ptr %call.i.i, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %add = add i8 %5, 2
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not.i = icmp eq i32 %7, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %if.end6.skb_tailroom.exit_crit_edge

if.end6.skb_tailroom.exit_crit_edge:              ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %8 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %if.end6.skb_tailroom.exit_crit_edge
  %cond.i = phi i32 [ %sub.ptr.sub.i, %cond.false.i ], [ 0, %if.end6.skb_tailroom.exit_crit_edge ]
  %conv10 = zext i8 %add to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %conv10)
  %cmp = icmp slt i32 %cond.i, %conv10
  br i1 %cmp, label %skb_tailroom.exit.cleanup_crit_edge, label %if.end13

skb_tailroom.exit.cleanup_crit_edge:              ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end13:                                         ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call ptr @skb_put(ptr noundef %skb, i32 noundef %conv10) #13
  %12 = call ptr @memcpy(ptr %call.i, ptr %call.i.i, i32 %conv10)
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %skb_tailroom.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -12, %skb_tailroom.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mesh_add_ht_cap_ie(ptr noundef %sdata, ptr noundef %skb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @ieee80211_get_sband(ptr noundef %sdata)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %band = getelementptr inbounds %struct.ieee80211_supported_band, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %band, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %ht_cap = getelementptr inbounds %struct.ieee80211_supported_band, ptr %call, i32 0, i32 5
  %ht_supported = getelementptr inbounds %struct.ieee80211_supported_band, ptr %call, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %ht_supported to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ht_supported, align 2, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %if.end2.cleanup_crit_edge, label %lor.lhs.false

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end2
  %width = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 32, i32 1
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %if.end18 [
    i32 0, label %lor.lhs.false.cleanup_crit_edge
    i32 6, label %lor.lhs.false.cleanup_crit_edge38
    i32 7, label %lor.lhs.false.cleanup_crit_edge39
  ]

lor.lhs.false.cleanup_crit_edge39:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false.cleanup_crit_edge38:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %7 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not.i = icmp eq i32 %8, 0
  br i1 %tobool.i.not.i, label %skb_tailroom.exit, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

skb_tailroom.exit:                                ; preds = %if.end18
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %9 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %11 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %10 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %sub.ptr.sub.i)
  %cmp20 = icmp ult i32 %sub.ptr.sub.i, 28
  br i1 %cmp20, label %skb_tailroom.exit.cleanup_crit_edge, label %if.end22

skb_tailroom.exit.cleanup_crit_edge:              ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end22:                                         ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call23 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 28) #13
  %13 = ptrtoint ptr %ht_cap to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %ht_cap, align 4
  %call26 = tail call ptr @ieee80211_ie_build_ht_cap(ptr noundef %call23, ptr noundef %ht_cap, i16 noundef zeroext %14) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %skb_tailroom.exit.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge38, %lor.lhs.false.cleanup_crit_edge39, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge38 ], [ 0, %lor.lhs.false.cleanup_crit_edge39 ], [ 0, %if.end2.cleanup_crit_edge ], [ -12, %skb_tailroom.exit.cleanup_crit_edge ], [ -12, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_ie_build_ht_cap(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mesh_add_ht_oper_ie(ptr noundef %sdata, ptr noundef %skb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !79) #13
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !89
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %chanctx_conf2 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 9
  %6 = ptrtoint ptr %chanctx_conf2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %chanctx_conf2, align 4
  %call = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end9_crit_edge

rcu_read_lock.exit.do.end9_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b89 = load i1, ptr @mesh_add_ht_oper_ie.__warned, align 1
  br i1 %.b89, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @mesh_add_ht_oper_ie.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 457, ptr noundef nonnull @.str.2) #13
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %rcu_read_lock.exit.do.end9_crit_edge
  %tobool11.not = icmp eq ptr %7, null
  br i1 %tobool11.not, label %do.end24, label %if.end40, !prof !92

do.end24:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 458, i32 noundef 9, ptr noundef null) #13
  tail call fastcc void @rcu_read_unlock()
  br label %cleanup

if.end40:                                         ; preds = %do.end9
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call.i90 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i90, label %if.end40.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i93

if.end40.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i93:                                ; preds = %if.end40
  %call1.i91 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i91)
  %tobool.not.i92 = icmp eq i32 %call1.i91, 0
  br i1 %tobool.not.i92, label %land.lhs.true.i93.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i95

land.lhs.true.i93.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i93
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i95:                               ; preds = %land.lhs.true.i93
  %.b4.i94 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i94, label %land.lhs.true2.i95.rcu_read_unlock.exit_crit_edge, label %if.then.i96

land.lhs.true2.i95.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i95
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i96:                                      ; preds = %land.lhs.true2.i95
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.18) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i96, %land.lhs.true2.i95.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i93.rcu_read_unlock.exit_crit_edge, %if.end40.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !90
  %10 = tail call i32 @llvm.read_register.i32(metadata !79) #13
  %and.i.i.i.i.i97 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i97 to ptr
  %preempt_count.i.i.i.i98 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i98 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i98, align 4
  %sub.i.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i98, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wiphy, align 8
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %9, align 4
  %arrayidx = getelementptr %struct.wiphy, ptr %15, i32 0, i32 53, i32 %17
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %ht_cap41 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %19, i32 0, i32 5
  %band42 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %band42 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %band42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %21)
  %cmp = icmp eq i32 %21, 3
  br i1 %cmp, label %rcu_read_unlock.exit.cleanup_crit_edge, label %if.end44

rcu_read_unlock.exit.cleanup_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end44:                                         ; preds = %rcu_read_unlock.exit
  %ht_supported = getelementptr inbounds %struct.ieee80211_supported_band, ptr %19, i32 0, i32 5, i32 1
  %22 = ptrtoint ptr %ht_supported to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ht_supported, align 2, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool45.not = icmp eq i8 %23, 0
  br i1 %tobool45.not, label %if.end44.cleanup_crit_edge, label %lor.lhs.false

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end44
  %chandef = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 32
  %width = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 32, i32 1
  %24 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %width, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %25, label %if.end61 [
    i32 0, label %lor.lhs.false.cleanup_crit_edge
    i32 6, label %lor.lhs.false.cleanup_crit_edge101
    i32 7, label %lor.lhs.false.cleanup_crit_edge102
  ]

lor.lhs.false.cleanup_crit_edge102:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false.cleanup_crit_edge101:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end61:                                         ; preds = %lor.lhs.false
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %27 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.i.not.i = icmp eq i32 %28, 0
  br i1 %tobool.i.not.i, label %skb_tailroom.exit, label %if.end61.cleanup_crit_edge

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

skb_tailroom.exit:                                ; preds = %if.end61
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %29 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %31 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %30 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %32 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %sub.ptr.sub.i)
  %cmp63 = icmp ult i32 %sub.ptr.sub.i, 24
  br i1 %cmp63, label %skb_tailroom.exit.cleanup_crit_edge, label %if.end65

skb_tailroom.exit.cleanup_crit_edge:              ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end65:                                         ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call66 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 24) #13
  %ht_operation_mode = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 27
  %33 = ptrtoint ptr %ht_operation_mode to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %ht_operation_mode, align 8
  %call72 = tail call ptr @ieee80211_ie_build_ht_oper(ptr noundef %call66, ptr noundef %ht_cap41, ptr noundef %chandef, i16 noundef zeroext %34, i1 noundef zeroext false) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %skb_tailroom.exit.cleanup_crit_edge, %if.end61.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge101, %lor.lhs.false.cleanup_crit_edge102, %if.end44.cleanup_crit_edge, %rcu_read_unlock.exit.cleanup_crit_edge, %do.end24
  %retval.0 = phi i32 [ -22, %do.end24 ], [ 0, %if.end65 ], [ 0, %rcu_read_unlock.exit.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge101 ], [ 0, %lor.lhs.false.cleanup_crit_edge102 ], [ 0, %if.end44.cleanup_crit_edge ], [ -12, %skb_tailroom.exit.cleanup_crit_edge ], [ -12, %if.end61.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.18) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !90
  %0 = tail call i32 @llvm.read_register.i32(metadata !79) #13
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_ie_build_ht_oper(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mesh_add_vht_cap_ie(ptr noundef %sdata, ptr noundef %skb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @ieee80211_get_sband(ptr noundef %sdata)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %band = getelementptr inbounds %struct.ieee80211_supported_band, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %band, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %vht_cap = getelementptr inbounds %struct.ieee80211_supported_band, ptr %call, i32 0, i32 6
  %2 = ptrtoint ptr %vht_cap to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vht_cap, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %if.end2.cleanup_crit_edge, label %lor.lhs.false

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end2
  %width = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 32, i32 1
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %5, label %if.end18 [
    i32 0, label %lor.lhs.false.cleanup_crit_edge
    i32 6, label %lor.lhs.false.cleanup_crit_edge38
    i32 7, label %lor.lhs.false.cleanup_crit_edge39
  ]

lor.lhs.false.cleanup_crit_edge39:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false.cleanup_crit_edge38:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %7 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not.i = icmp eq i32 %8, 0
  br i1 %tobool.i.not.i, label %skb_tailroom.exit, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

skb_tailroom.exit:                                ; preds = %if.end18
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %9 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %11 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %10 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub.ptr.sub.i)
  %cmp20 = icmp ult i32 %sub.ptr.sub.i, 14
  br i1 %cmp20, label %skb_tailroom.exit.cleanup_crit_edge, label %if.end22

skb_tailroom.exit.cleanup_crit_edge:              ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end22:                                         ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call23 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 14) #13
  %cap = getelementptr inbounds %struct.ieee80211_supported_band, ptr %call, i32 0, i32 6, i32 1
  %13 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cap, align 4
  %call26 = tail call ptr @ieee80211_ie_build_vht_cap(ptr noundef %call23, ptr noundef %vht_cap, i32 noundef %14) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %skb_tailroom.exit.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge38, %lor.lhs.false.cleanup_crit_edge39, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge38 ], [ 0, %lor.lhs.false.cleanup_crit_edge39 ], [ 0, %if.end2.cleanup_crit_edge ], [ -12, %skb_tailroom.exit.cleanup_crit_edge ], [ -12, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_ie_build_vht_cap(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mesh_add_vht_oper_ie(ptr noundef %sdata, ptr noundef %skb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !79) #13
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !89
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %chanctx_conf2 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 9
  %6 = ptrtoint ptr %chanctx_conf2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %chanctx_conf2, align 4
  %call = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end9_crit_edge

rcu_read_lock.exit.do.end9_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b86 = load i1, ptr @mesh_add_vht_oper_ie.__warned, align 1
  br i1 %.b86, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @mesh_add_vht_oper_ie.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 529, ptr noundef nonnull @.str.2) #13
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %rcu_read_lock.exit.do.end9_crit_edge
  %tobool11.not = icmp eq ptr %7, null
  br i1 %tobool11.not, label %do.end24, label %if.end40, !prof !92

do.end24:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 530, i32 noundef 9, ptr noundef null) #13
  tail call fastcc void @rcu_read_unlock()
  br label %cleanup

if.end40:                                         ; preds = %do.end9
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call.i87 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i87, label %if.end40.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i90

if.end40.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i90:                                ; preds = %if.end40
  %call1.i88 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i88)
  %tobool.not.i89 = icmp eq i32 %call1.i88, 0
  br i1 %tobool.not.i89, label %land.lhs.true.i90.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i92

land.lhs.true.i90.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i90
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i92:                               ; preds = %land.lhs.true.i90
  %.b4.i91 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i91, label %land.lhs.true2.i92.rcu_read_unlock.exit_crit_edge, label %if.then.i93

land.lhs.true2.i92.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i92
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i93:                                      ; preds = %land.lhs.true2.i92
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.18) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i93, %land.lhs.true2.i92.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i90.rcu_read_unlock.exit_crit_edge, %if.end40.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !90
  %10 = tail call i32 @llvm.read_register.i32(metadata !79) #13
  %and.i.i.i.i.i94 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i94 to ptr
  %preempt_count.i.i.i.i95 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i95 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i95, align 4
  %sub.i.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i95, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wiphy, align 8
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %9, align 4
  %arrayidx = getelementptr %struct.wiphy, ptr %15, i32 0, i32 53, i32 %17
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %vht_cap41 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %19, i32 0, i32 6
  %band42 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %band42 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %band42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %21)
  %cmp = icmp eq i32 %21, 3
  br i1 %cmp, label %rcu_read_unlock.exit.cleanup_crit_edge, label %if.end44

rcu_read_unlock.exit.cleanup_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end44:                                         ; preds = %rcu_read_unlock.exit
  %22 = ptrtoint ptr %vht_cap41 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %vht_cap41, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool45.not = icmp eq i8 %23, 0
  br i1 %tobool45.not, label %if.end44.cleanup_crit_edge, label %lor.lhs.false

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end44
  %chandef = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 32
  %width = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 32, i32 1
  %24 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %width, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %25, label %if.end61 [
    i32 0, label %lor.lhs.false.cleanup_crit_edge
    i32 6, label %lor.lhs.false.cleanup_crit_edge98
    i32 7, label %lor.lhs.false.cleanup_crit_edge99
  ]

lor.lhs.false.cleanup_crit_edge99:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false.cleanup_crit_edge98:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end61:                                         ; preds = %lor.lhs.false
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %27 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.i.not.i = icmp eq i32 %28, 0
  br i1 %tobool.i.not.i, label %skb_tailroom.exit, label %if.end61.cleanup_crit_edge

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

skb_tailroom.exit:                                ; preds = %if.end61
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %29 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %31 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %30 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %32 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub.ptr.sub.i)
  %cmp63 = icmp ult i32 %sub.ptr.sub.i, 7
  br i1 %cmp63, label %skb_tailroom.exit.cleanup_crit_edge, label %if.end65

skb_tailroom.exit.cleanup_crit_edge:              ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end65:                                         ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call66 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 7) #13
  %call70 = tail call ptr @ieee80211_ie_build_vht_oper(ptr noundef %call66, ptr noundef %vht_cap41, ptr noundef %chandef) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %skb_tailroom.exit.cleanup_crit_edge, %if.end61.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge98, %lor.lhs.false.cleanup_crit_edge99, %if.end44.cleanup_crit_edge, %rcu_read_unlock.exit.cleanup_crit_edge, %do.end24
  %retval.0 = phi i32 [ -22, %do.end24 ], [ 0, %if.end65 ], [ 0, %rcu_read_unlock.exit.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge98 ], [ 0, %lor.lhs.false.cleanup_crit_edge99 ], [ 0, %if.end44.cleanup_crit_edge ], [ -12, %skb_tailroom.exit.cleanup_crit_edge ], [ -12, %if.end61.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_ie_build_vht_oper(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mesh_add_he_cap_ie(ptr noundef %sdata, ptr noundef %skb, i8 noundef zeroext %ie_len) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @ieee80211_get_sband(ptr noundef %sdata)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %n_iftype_data.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %call, i32 0, i32 9
  %0 = ptrtoint ptr %n_iftype_data.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %n_iftype_data.i.i, align 4
  %conv23.i.i = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp241.not.i.i = icmp eq i16 %1, 0
  br i1 %cmp241.not.i.i, label %if.end.cleanup_crit_edge, label %for.body.lr.ph.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph.i.i:                               ; preds = %if.end
  %iftype_data.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %call, i32 0, i32 10
  %2 = ptrtoint ptr %iftype_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iftype_data.i.i, align 4
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.02.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv23.i.i
  br i1 %exitcond.not.i.i, label %for.cond.i.i.cleanup_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.cond.i.i.cleanup_crit_edge:                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.02.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.ieee80211_sband_iftype_data, ptr %3, i32 %i.02.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i.i, align 4
  %6 = and i16 %5, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool28.not.i.i = icmp eq i16 %6, 0
  br i1 %tobool28.not.i.i, label %for.cond.i.i, label %ieee80211_get_sband_iftype_data.exit.i

ieee80211_get_sband_iftype_data.exit.i:           ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool.not.i, label %ieee80211_get_sband_iftype_data.exit.i.cleanup_crit_edge, label %land.lhs.true.i

ieee80211_get_sband_iftype_data.exit.i.cleanup_crit_edge: ; preds = %ieee80211_get_sband_iftype_data.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.i:                                  ; preds = %ieee80211_get_sband_iftype_data.exit.i
  %he_cap.i = getelementptr %struct.ieee80211_sband_iftype_data, ptr %3, i32 %i.02.i.i, i32 1
  %7 = ptrtoint ptr %he_cap.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %he_cap.i, align 2, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not.i = icmp eq i8 %8, 0
  %tobool2.not = icmp eq ptr %he_cap.i, null
  %or.cond = or i1 %tobool2.not, %tobool1.not.i
  br i1 %or.cond, label %land.lhs.true.i.cleanup_crit_edge, label %lor.lhs.false

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true.i
  %width = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 32, i32 1
  %9 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %width, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %10, label %if.end16 [
    i32 0, label %lor.lhs.false.cleanup_crit_edge
    i32 6, label %lor.lhs.false.cleanup_crit_edge51
    i32 7, label %lor.lhs.false.cleanup_crit_edge52
  ]

lor.lhs.false.cleanup_crit_edge52:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false.cleanup_crit_edge51:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %12 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not.i = icmp eq i32 %13, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %if.end16.skb_tailroom.exit_crit_edge

if.end16.skb_tailroom.exit_crit_edge:             ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %14 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %16 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %15 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %if.end16.skb_tailroom.exit_crit_edge
  %cond.i = phi i32 [ %sub.ptr.sub.i, %cond.false.i ], [ 0, %if.end16.skb_tailroom.exit_crit_edge ]
  %conv = zext i8 %ie_len to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %conv)
  %cmp18 = icmp slt i32 %cond.i, %conv
  br i1 %cmp18, label %skb_tailroom.exit.cleanup_crit_edge, label %if.end21

skb_tailroom.exit.cleanup_crit_edge:              ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end21:                                         ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call23 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef %conv) #13
  %add.ptr = getelementptr i8, ptr %call23, i32 %conv
  %call25 = tail call ptr @ieee80211_ie_build_he_cap(ptr noundef %call23, ptr noundef nonnull %he_cap.i, ptr noundef %add.ptr) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %skb_tailroom.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge51, %lor.lhs.false.cleanup_crit_edge52, %land.lhs.true.i.cleanup_crit_edge, %ieee80211_get_sband_iftype_data.exit.i.cleanup_crit_edge, %for.cond.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end21 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge51 ], [ 0, %lor.lhs.false.cleanup_crit_edge52 ], [ -12, %skb_tailroom.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %ieee80211_get_sband_iftype_data.exit.i.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %for.cond.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_ie_build_he_cap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mesh_add_he_oper_ie(ptr noundef %sdata, ptr noundef %skb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @ieee80211_get_sband(ptr noundef %sdata)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %n_iftype_data.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %call, i32 0, i32 9
  %0 = ptrtoint ptr %n_iftype_data.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %n_iftype_data.i.i, align 4
  %conv23.i.i = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp241.not.i.i = icmp eq i16 %1, 0
  br i1 %cmp241.not.i.i, label %if.end.cleanup_crit_edge, label %for.body.lr.ph.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph.i.i:                               ; preds = %if.end
  %iftype_data.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %call, i32 0, i32 10
  %2 = ptrtoint ptr %iftype_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iftype_data.i.i, align 4
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.02.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv23.i.i
  br i1 %exitcond.not.i.i, label %for.cond.i.i.cleanup_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.cond.i.i.cleanup_crit_edge:                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.02.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.ieee80211_sband_iftype_data, ptr %3, i32 %i.02.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i.i, align 4
  %6 = and i16 %5, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool28.not.i.i = icmp eq i16 %6, 0
  br i1 %tobool28.not.i.i, label %for.cond.i.i, label %ieee80211_get_sband_iftype_data.exit.i

ieee80211_get_sband_iftype_data.exit.i:           ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool.not.i, label %ieee80211_get_sband_iftype_data.exit.i.cleanup_crit_edge, label %land.lhs.true.i

ieee80211_get_sband_iftype_data.exit.i.cleanup_crit_edge: ; preds = %ieee80211_get_sband_iftype_data.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.i:                                  ; preds = %ieee80211_get_sband_iftype_data.exit.i
  %he_cap.i = getelementptr %struct.ieee80211_sband_iftype_data, ptr %3, i32 %i.02.i.i, i32 1
  %7 = ptrtoint ptr %he_cap.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %he_cap.i, align 2, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not.i = icmp eq i8 %8, 0
  %tobool2.not = icmp eq ptr %he_cap.i, null
  %or.cond = or i1 %tobool2.not, %tobool1.not.i
  br i1 %or.cond, label %land.lhs.true.i.cleanup_crit_edge, label %lor.lhs.false

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true.i
  %chandef = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 32
  %width = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 32, i32 1
  %9 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %width, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %10, label %if.end16 [
    i32 0, label %lor.lhs.false.cleanup_crit_edge
    i32 6, label %lor.lhs.false.cleanup_crit_edge60
    i32 7, label %lor.lhs.false.cleanup_crit_edge61
  ]

lor.lhs.false.cleanup_crit_edge61:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false.cleanup_crit_edge60:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false
  %12 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chandef, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cmp20 = icmp eq i32 %15, 3
  %spec.select = select i1 %cmp20, i32 14, i32 9
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %16 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.i.not.i = icmp eq i32 %17, 0
  br i1 %tobool.i.not.i, label %skb_tailroom.exit, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

skb_tailroom.exit:                                ; preds = %if.end16
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %18 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %20 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %19 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %21 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %spec.select)
  %cmp24 = icmp ult i32 %sub.ptr.sub.i, %spec.select
  br i1 %cmp24, label %skb_tailroom.exit.cleanup_crit_edge, label %if.end26

skb_tailroom.exit.cleanup_crit_edge:              ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end26:                                         ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call27 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef %spec.select) #13
  %call31 = tail call ptr @ieee80211_ie_build_he_oper(ptr noundef %call27, ptr noundef %chandef) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %skb_tailroom.exit.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge60, %lor.lhs.false.cleanup_crit_edge61, %land.lhs.true.i.cleanup_crit_edge, %ieee80211_get_sband_iftype_data.exit.i.cleanup_crit_edge, %for.cond.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end26 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge60 ], [ 0, %lor.lhs.false.cleanup_crit_edge61 ], [ -12, %skb_tailroom.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %ieee80211_get_sband_iftype_data.exit.i.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ -12, %if.end16.cleanup_crit_edge ], [ 0, %for.cond.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_ie_build_he_oper(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mesh_add_he_6ghz_cap_ie(ptr noundef %sdata, ptr noundef %skb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @ieee80211_get_sband(ptr noundef %sdata)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %n_iftype_data.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %call, i32 0, i32 9
  %0 = ptrtoint ptr %n_iftype_data.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %n_iftype_data.i, align 4
  %conv23.i = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp241.not.i = icmp eq i16 %1, 0
  br i1 %cmp241.not.i, label %if.end.cleanup_crit_edge, label %for.body.lr.ph.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end
  %iftype_data.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %call, i32 0, i32 10
  %2 = ptrtoint ptr %iftype_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iftype_data.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv23.i
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.02.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ieee80211_sband_iftype_data, ptr %3, i32 %i.02.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i, align 4
  %6 = and i16 %5, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool28.not.i = icmp eq i16 %6, 0
  br i1 %tobool28.not.i, label %for.cond.i, label %ieee80211_get_sband_iftype_data.exit

ieee80211_get_sband_iftype_data.exit:             ; preds = %for.body.i
  %tobool2.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool2.not, label %ieee80211_get_sband_iftype_data.exit.cleanup_crit_edge, label %if.end4

ieee80211_get_sband_iftype_data.exit.cleanup_crit_edge: ; preds = %ieee80211_get_sband_iftype_data.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %ieee80211_get_sband_iftype_data.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ieee80211_ie_build_he_6ghz_cap(ptr noundef %sdata, ptr noundef %skb) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %ieee80211_get_sband_iftype_data.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %ieee80211_get_sband_iftype_data.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_ie_build_he_6ghz_cap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_mesh_root_setup(ptr noundef %ifmsh) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dot11MeshHWMPRootMode = getelementptr inbounds %struct.ieee80211_if_mesh, ptr %ifmsh, i32 0, i32 24, i32 16
  %0 = ptrtoint ptr %dot11MeshHWMPRootMode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dot11MeshHWMPRootMode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp ugt i8 %1, 1
  %wrkq_flags = getelementptr inbounds %struct.ieee80211_if_mesh, ptr %ifmsh, i32 0, i32 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_set_bit(i32 noundef 1, ptr noundef %wrkq_flags) #13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %wrkq_flags) #13
  %mesh_path_root_timer = getelementptr inbounds %struct.ieee80211_if_mesh, ptr %ifmsh, i32 0, i32 2
  %call = tail call i32 @del_timer_sync(ptr noundef %mesh_path_root_timer) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ieee80211_fill_mesh_addresses(ptr nocapture noundef writeonly %hdr, ptr nocapture noundef %fc, ptr nocapture noundef readonly %meshda, ptr nocapture noundef readonly %meshsa) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %meshda to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %meshda, align 4
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not = icmp eq i32 %2, 0
  %3 = ptrtoint ptr %fc to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %fc, align 2
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %5 = or i16 %4, 2
  %6 = ptrtoint ptr %fc to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %fc, align 2
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 2
  %7 = call ptr @memcpy(ptr %addr1, ptr %meshda, i32 6)
  %addr2 = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 3
  %8 = call ptr @memcpy(ptr %addr2, ptr %meshsa, i32 6)
  %addr3 = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 4
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %9 = or i16 %4, 3
  %10 = ptrtoint ptr %fc to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %fc, align 2
  %addr17 = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 2
  %11 = call ptr @memset(ptr %addr17, i32 0, i32 6)
  %addr29 = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 3
  %12 = call ptr @memcpy(ptr %addr29, ptr %meshsa, i32 6)
  %addr311 = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 4
  %13 = call ptr @memcpy(ptr %addr311, ptr %meshda, i32 6)
  %addr4 = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 6
  br label %return

return:                                           ; preds = %if.else, %if.then
  %addr4.sink = phi ptr [ %addr4, %if.else ], [ %addr3, %if.then ]
  %retval.0 = phi i32 [ 30, %if.else ], [ 24, %if.then ]
  %14 = call ptr @memcpy(ptr %addr4.sink, ptr %meshsa, i32 6)
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_new_mesh_header(ptr nocapture noundef %sdata, ptr nocapture noundef %meshhdr, ptr noundef readonly %addr4or5, ptr noundef readonly %addr6) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %addr4or5, null
  %tobool1 = icmp ne ptr %addr6, null
  %spec.select = and i1 %tobool.not, %tobool1
  br i1 %spec.select, label %do.end, label %if.end23, !prof !92

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 747, i32 noundef 9, ptr noundef null) #13
  br label %return

if.end23:                                         ; preds = %entry
  %0 = call ptr @memset(ptr %meshhdr, i32 0, i32 18)
  %dot11MeshTTL = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24, i32 5
  %1 = ptrtoint ptr %dot11MeshTTL to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %dot11MeshTTL, align 1
  %ttl = getelementptr inbounds %struct.ieee80211s_hdr, ptr %meshhdr, i32 0, i32 1
  %3 = ptrtoint ptr %ttl to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %ttl, align 1
  %seqnum = getelementptr inbounds %struct.ieee80211s_hdr, ptr %meshhdr, i32 0, i32 2
  %mesh_seqnum = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 26
  %4 = ptrtoint ptr %mesh_seqnum to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mesh_seqnum, align 8
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %seqnum to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %6, ptr %seqnum, align 1
  %8 = ptrtoint ptr %mesh_seqnum to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mesh_seqnum, align 8
  %inc = add i32 %9, 1
  store i32 %inc, ptr %mesh_seqnum, align 8
  %tobool.not.not = xor i1 %tobool.not, true
  %tobool31.not = icmp eq ptr %addr6, null
  %or.cond = and i1 %tobool31.not, %tobool.not.not
  br i1 %or.cond, label %if.then32, label %if.else

if.then32:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %meshhdr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %meshhdr, align 2
  %12 = or i8 %11, 1
  store i8 %12, ptr %meshhdr, align 2
  %eaddr1 = getelementptr inbounds %struct.ieee80211s_hdr, ptr %meshhdr, i32 0, i32 3
  %13 = call ptr @memcpy(ptr %eaddr1, ptr %addr4or5, i32 6)
  br label %return

if.else:                                          ; preds = %if.end23
  %or.cond64 = or i1 %tobool.not, %tobool31.not
  br i1 %or.cond64, label %if.else.return_crit_edge, label %if.then37

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then37:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %meshhdr to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %meshhdr, align 2
  %16 = or i8 %15, 2
  store i8 %16, ptr %meshhdr, align 2
  %eaddr142 = getelementptr inbounds %struct.ieee80211s_hdr, ptr %meshhdr, i32 0, i32 3
  %17 = call ptr @memcpy(ptr %eaddr142, ptr %addr4or5, i32 6)
  %eaddr2 = getelementptr inbounds %struct.ieee80211s_hdr, ptr %meshhdr, i32 0, i32 4
  %18 = call ptr @memcpy(ptr %eaddr2, ptr %addr6, i32 6)
  br label %return

return:                                           ; preds = %if.then37, %if.else.return_crit_edge, %if.then32, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 18, %if.then37 ], [ 12, %if.then32 ], [ 6, %if.else.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_start_mesh(ptr noundef %sdata) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57
  %local1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %fif_other_bss = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %fif_other_bss to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fif_other_bss, align 8
  %inc = add i32 %3, 1
  store i32 %inc, ptr %fif_other_bss, align 8
  %iff_allmultis = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 57
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %iff_allmultis, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %iff_allmultis, i32 1, i32 3, i32 1) #13
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %iff_allmultis, ptr %iff_allmultis, i32 1, ptr elementtype(i32) %iff_allmultis) #13, !srcloc !93
  tail call void @ieee80211_configure_filter(ptr noundef %1) #13
  %mesh_cc_id = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 10
  %5 = ptrtoint ptr %mesh_cc_id to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %mesh_cc_id, align 2
  %mesh_sp_id = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 11
  %6 = ptrtoint ptr %mesh_sp_id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mesh_sp_id, align 1
  %call = tail call ptr @ieee80211_mesh_sync_ops_get(i8 noundef zeroext %7) #13
  %sync_ops = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 34
  %8 = ptrtoint ptr %sync_ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %sync_ops, align 8
  %sync_offset_clockdrift_max = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 35
  %9 = ptrtoint ptr %sync_offset_clockdrift_max to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %sync_offset_clockdrift_max, align 8
  %wrkq_flags = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 0, ptr noundef %wrkq_flags) #13
  %dot11MeshHWMPRootMode.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24, i32 16
  %10 = ptrtoint ptr %dot11MeshHWMPRootMode.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dot11MeshHWMPRootMode.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp.i = icmp ugt i8 %11, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_set_bit(i32 noundef 1, ptr noundef %wrkq_flags) #13
  br label %ieee80211_mesh_root_setup.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %wrkq_flags) #13
  %mesh_path_root_timer.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 2
  %call.i = tail call i32 @del_timer_sync(ptr noundef %mesh_path_root_timer.i) #13
  br label %ieee80211_mesh_root_setup.exit

ieee80211_mesh_root_setup.exit:                   ; preds = %if.else.i, %if.then.i
  %work = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 40
  tail call void @ieee80211_queue_work(ptr noundef %1, ptr noundef %work) #13
  %ht_opmode = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24, i32 23
  %12 = ptrtoint ptr %ht_opmode to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %ht_opmode, align 4
  %ht_operation_mode = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 27
  %14 = ptrtoint ptr %ht_operation_mode to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %ht_operation_mode, align 8
  %enable_beacon = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 17
  %15 = ptrtoint ptr %enable_beacon to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %enable_beacon, align 1
  %call4 = tail call i32 @ieee80211_mps_local_status_update(ptr noundef %sdata) #13
  %call5 = tail call fastcc i32 @ieee80211_mesh_build_beacon(ptr noundef %u)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %ieee80211_mesh_root_setup.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ieee80211_stop_mesh(ptr noundef %sdata)
  br label %cleanup

if.end:                                           ; preds = %ieee80211_mesh_root_setup.exit
  call void @__sanitizer_cov_trace_pc() #15
  %or = or i32 %call4, 33555312
  tail call void @ieee80211_recalc_dtim(ptr noundef %1, ptr noundef %sdata) #13
  tail call void @ieee80211_bss_info_change_notify(ptr noundef %sdata, i32 noundef %or) #13
  %dev = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 6
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 8
  tail call void @netif_carrier_on(ptr noundef %17) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -12, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_configure_filter(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_mesh_sync_ops_get(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_mps_local_status_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ieee80211_mesh_build_beacon(ptr noundef %ifmsh) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ifmsh, i32 -2552
  %0 = tail call i32 @llvm.read_register.i32(metadata !79) #13
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !89
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %chanctx_conf2 = getelementptr i8, ptr %ifmsh, i32 2348
  %4 = ptrtoint ptr %chanctx_conf2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %chanctx_conf2, align 4
  %call = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end9_crit_edge

rcu_read_lock.exit.do.end9_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b395 = load i1, ptr @ieee80211_mesh_build_beacon.__warned, align 1
  br i1 %.b395, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ieee80211_mesh_build_beacon.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 822, ptr noundef nonnull @.str.2) #13
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %rcu_read_lock.exit.do.end9_crit_edge
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %call.i407 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i407, label %do.end9.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i410

do.end9.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i410:                               ; preds = %do.end9
  %call1.i408 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i408)
  %tobool.not.i409 = icmp eq i32 %call1.i408, 0
  br i1 %tobool.not.i409, label %land.lhs.true.i410.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i412

land.lhs.true.i410.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i410
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i412:                              ; preds = %land.lhs.true.i410
  %.b4.i411 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i411, label %land.lhs.true2.i412.rcu_read_unlock.exit_crit_edge, label %if.then.i413

land.lhs.true2.i412.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i412
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i413:                                     ; preds = %land.lhs.true2.i412
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.18) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i413, %land.lhs.true2.i412.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i410.rcu_read_unlock.exit_crit_edge, %do.end9.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !90
  %10 = tail call i32 @llvm.read_register.i32(metadata !79) #13
  %and.i.i.i.i.i414 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i414 to ptr
  %preempt_count.i.i.i.i415 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i415 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i415, align 4
  %sub.i.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i415, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %call12 = tail call zeroext i8 @ieee80211_ie_len_he_cap(ptr noundef %add.ptr, i8 noundef zeroext 7) #13
  %mesh_id_len = getelementptr inbounds %struct.ieee80211_if_mesh, ptr %ifmsh, i32 0, i32 7
  %14 = ptrtoint ptr %mesh_id_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mesh_id_len, align 4
  %conv = zext i8 %call12 to i32
  %ie_len = getelementptr %struct.ieee80211_if_mesh, ptr %ifmsh, i32 0, i32 31
  %16 = ptrtoint ptr %ie_len to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ie_len, align 4
  %conv43 = zext i8 %17 to i32
  %add35 = add i32 %15, 133
  %add42 = add i32 %add35, %conv
  %add44 = add i32 %add42, %conv43
  %add46 = add i32 %add44, 112
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add46, i32 noundef 3520) #18
  %18 = tail call i32 @llvm.smax.i32(i32 %add44, i32 76)
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %18, i32 noundef 2592) #13
  %tobool51.not = icmp eq ptr %call9.i.i, null
  %tobool52.not = icmp eq ptr %call.i.i, null
  %or.cond = select i1 %tobool51.not, i1 true, i1 %tobool52.not
  br i1 %or.cond, label %rcu_read_unlock.exit.out_free_crit_edge, label %if.end54

rcu_read_unlock.exit.out_free_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.end54:                                         ; preds = %rcu_read_unlock.exit
  %add.ptr55 = getelementptr i8, ptr %call9.i.i, i32 36
  %19 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr55, ptr %call9.i.i, align 128
  %call.i416 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 36) #13
  %20 = getelementptr inbounds i8, ptr %call.i416, i32 2
  %21 = call ptr @memset(ptr %20, i32 0, i32 34)
  %22 = ptrtoint ptr %call.i416 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 -32768, ptr %call.i416, align 2
  %da = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i416, i32 0, i32 2
  %23 = call ptr @memset(ptr %da, i32 255, i32 6)
  %sa = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i416, i32 0, i32 3
  %addr = getelementptr i8, ptr %ifmsh, i32 2328
  %24 = call ptr @memcpy(ptr %sa, ptr %addr, i32 6)
  %bssid = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i416, i32 0, i32 4
  %25 = call ptr @memcpy(ptr %bssid, ptr %addr, i32 6)
  tail call void @ieee80211_mps_set_frame_flags(ptr noundef %add.ptr, ptr noundef null, ptr noundef %call.i416) #13
  %beacon_int = getelementptr i8, ptr %ifmsh, i32 1562
  %26 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %beacon_int, align 2
  %28 = tail call i16 @llvm.bswap.i16(i16 %27)
  %beacon_int65 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i416, i32 0, i32 6, i32 0, i32 2, i32 4
  %29 = ptrtoint ptr %beacon_int65 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %beacon_int65, align 2
  %security = getelementptr inbounds %struct.ieee80211_if_mesh, ptr %ifmsh, i32 0, i32 32
  %30 = ptrtoint ptr %security to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %security, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool67.not = icmp eq i32 %31, 0
  %conv70 = select i1 %tobool67.not, i16 0, i16 4096
  %capab_info = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i416, i32 0, i32 6, i32 1
  %32 = ptrtoint ptr %capab_info to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %capab_info, align 2
  %or = or i16 %conv70, %33
  store i16 %or, ptr %capab_info, align 2
  %call74 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 2) #13
  %incdec.ptr = getelementptr i8, ptr %call74, i32 1
  %34 = ptrtoint ptr %call74 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %call74, align 1
  %35 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %incdec.ptr, align 1
  %36 = tail call i32 @llvm.read_register.i32(metadata !79) #13
  %and.i.i.i.i.i396 = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i.i396 to ptr
  %preempt_count.i.i.i.i397 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i.i.i397 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i.i.i397, align 4
  %add.i.i.i398 = add i32 %39, 1
  store volatile i32 %add.i.i.i398, ptr %preempt_count.i.i.i.i397, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !89
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i399 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i399, label %if.end54.rcu_read_lock.exit406_crit_edge, label %land.lhs.true.i402

if.end54.rcu_read_lock.exit406_crit_edge:         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit406

land.lhs.true.i402:                               ; preds = %if.end54
  %call1.i400 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i400)
  %tobool.not.i401 = icmp eq i32 %call1.i400, 0
  br i1 %tobool.not.i401, label %land.lhs.true.i402.rcu_read_lock.exit406_crit_edge, label %land.lhs.true2.i404

land.lhs.true.i402.rcu_read_lock.exit406_crit_edge: ; preds = %land.lhs.true.i402
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit406

land.lhs.true2.i404:                              ; preds = %land.lhs.true.i402
  %.b4.i403 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i403, label %land.lhs.true2.i404.rcu_read_lock.exit406_crit_edge, label %if.then.i405

land.lhs.true2.i404.rcu_read_lock.exit406_crit_edge: ; preds = %land.lhs.true2.i404
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit406

if.then.i405:                                     ; preds = %land.lhs.true2.i404
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #13
  br label %rcu_read_lock.exit406

rcu_read_lock.exit406:                            ; preds = %if.then.i405, %land.lhs.true2.i404.rcu_read_lock.exit406_crit_edge, %land.lhs.true.i402.rcu_read_lock.exit406_crit_edge, %if.end54.rcu_read_lock.exit406_crit_edge
  %csa80 = getelementptr inbounds %struct.ieee80211_if_mesh, ptr %ifmsh, i32 0, i32 41
  %40 = ptrtoint ptr %csa80 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %csa80, align 8
  %call82 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %land.lhs.true84, label %rcu_read_lock.exit406.do.end92_crit_edge

rcu_read_lock.exit406.do.end92_crit_edge:         ; preds = %rcu_read_lock.exit406
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end92

land.lhs.true84:                                  ; preds = %rcu_read_lock.exit406
  %call85 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %land.lhs.true84.do.end92_crit_edge, label %land.lhs.true87

land.lhs.true84.do.end92_crit_edge:               ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end92

land.lhs.true87:                                  ; preds = %land.lhs.true84
  %.b392394 = load i1, ptr @ieee80211_mesh_build_beacon.__warned.19, align 1
  br i1 %.b392394, label %land.lhs.true87.do.end92_crit_edge, label %if.then89

land.lhs.true87.do.end92_crit_edge:               ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end92

if.then89:                                        ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ieee80211_mesh_build_beacon.__warned.19, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 884, ptr noundef nonnull @.str.2) #13
  br label %do.end92

do.end92:                                         ; preds = %if.then89, %land.lhs.true87.do.end92_crit_edge, %land.lhs.true84.do.end92_crit_edge, %rcu_read_lock.exit406.do.end92_crit_edge
  %tobool94.not = icmp eq ptr %41, null
  br i1 %tobool94.not, label %do.end92.if.end154_crit_edge, label %if.then95

do.end92.if.end154_crit_edge:                     ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end154

if.then95:                                        ; preds = %do.end92
  %call.i417 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 13) #13
  %42 = getelementptr inbounds i8, ptr %call.i417, i32 3
  %43 = call ptr @memset(ptr %42, i32 0, i32 10)
  %incdec.ptr98 = getelementptr i8, ptr %call.i417, i32 1
  %44 = ptrtoint ptr %call.i417 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 37, ptr %call.i417, align 1
  %incdec.ptr99 = getelementptr i8, ptr %call.i417, i32 2
  %45 = ptrtoint ptr %incdec.ptr98 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 3, ptr %incdec.ptr98, align 1
  %incdec.ptr100 = getelementptr i8, ptr %call.i417, i32 3
  %46 = ptrtoint ptr %incdec.ptr99 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %incdec.ptr99, align 1
  %settings = getelementptr inbounds %struct.mesh_csa_settings, ptr %41, i32 0, i32 1
  %47 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %settings, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %center_freq, align 4
  %mul.i = mul i32 %50, 1000
  %call.i418 = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i) #13
  %conv104 = trunc i32 %call.i418 to i8
  %incdec.ptr105 = getelementptr i8, ptr %call.i417, i32 4
  %51 = ptrtoint ptr %incdec.ptr100 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv104, ptr %incdec.ptr100, align 1
  %count = getelementptr inbounds %struct.mesh_csa_settings, ptr %41, i32 0, i32 1, i32 9
  %52 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %count, align 2
  %cntdwn_current_counter = getelementptr inbounds %struct.beacon_data, ptr %call9.i.i, i32 0, i32 6
  %54 = ptrtoint ptr %cntdwn_current_counter to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %cntdwn_current_counter, align 8
  %cntdwn_counter_offsets = getelementptr inbounds %struct.beacon_data, ptr %call9.i.i, i32 0, i32 5
  %55 = ptrtoint ptr %cntdwn_counter_offsets to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 42, ptr %cntdwn_counter_offsets, align 4
  %56 = load i8, ptr %count, align 2
  %incdec.ptr111 = getelementptr i8, ptr %call.i417, i32 5
  %57 = ptrtoint ptr %incdec.ptr105 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %incdec.ptr105, align 1
  %incdec.ptr112 = getelementptr i8, ptr %call.i417, i32 6
  %58 = ptrtoint ptr %incdec.ptr111 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 118, ptr %incdec.ptr111, align 1
  %incdec.ptr113 = getelementptr i8, ptr %call.i417, i32 7
  %59 = ptrtoint ptr %incdec.ptr112 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 6, ptr %incdec.ptr112, align 1
  %csa_role = getelementptr inbounds %struct.ieee80211_if_mesh, ptr %ifmsh, i32 0, i32 42
  %60 = ptrtoint ptr %csa_role to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %csa_role, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %cmp114 = icmp eq i32 %61, 1
  br i1 %cmp114, label %if.then116, label %if.else

if.then116:                                       ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #15
  %dot11MeshTTL = getelementptr inbounds %struct.ieee80211_if_mesh, ptr %ifmsh, i32 0, i32 24, i32 5
  %62 = ptrtoint ptr %dot11MeshTTL to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %dot11MeshTTL, align 1
  %incdec.ptr117 = getelementptr i8, ptr %call.i417, i32 8
  %64 = ptrtoint ptr %incdec.ptr113 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %incdec.ptr113, align 1
  %65 = ptrtoint ptr %incdec.ptr117 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %incdec.ptr117, align 1
  %67 = or i8 %66, 2
  store i8 %67, ptr %incdec.ptr117, align 1
  br label %if.end122

if.else:                                          ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #15
  %chsw_ttl = getelementptr inbounds %struct.ieee80211_if_mesh, ptr %ifmsh, i32 0, i32 43
  %68 = ptrtoint ptr %chsw_ttl to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %chsw_ttl, align 8
  %incdec.ptr121 = getelementptr i8, ptr %call.i417, i32 8
  %70 = ptrtoint ptr %incdec.ptr113 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %incdec.ptr113, align 1
  br label %if.end122

if.end122:                                        ; preds = %if.else, %if.then116
  %pos.0 = phi ptr [ %incdec.ptr117, %if.then116 ], [ %incdec.ptr121, %if.else ]
  %block_tx = getelementptr inbounds %struct.mesh_csa_settings, ptr %41, i32 0, i32 1, i32 8
  %71 = ptrtoint ptr %block_tx to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %block_tx, align 1, !range !91
  %incdec.ptr127 = getelementptr i8, ptr %call.i417, i32 9
  %73 = ptrtoint ptr %pos.0 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %pos.0, align 1
  %or129393 = or i8 %74, %72
  store i8 %or129393, ptr %pos.0, align 1
  %75 = ptrtoint ptr %incdec.ptr127 to i32
  call void @__asan_storeN_noabort(i32 %75, i32 2)
  store i16 16896, ptr %incdec.ptr127, align 1
  %add.ptr131 = getelementptr i8, ptr %call.i417, i32 11
  %pre_value = getelementptr inbounds %struct.ieee80211_if_mesh, ptr %ifmsh, i32 0, i32 44
  %76 = ptrtoint ptr %pre_value to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %pre_value, align 2
  %78 = tail call i16 @llvm.bswap.i16(i16 %77) #13
  %79 = ptrtoint ptr %add.ptr131 to i32
  call void @__asan_storeN_noabort(i32 %79, i32 2)
  store i16 %78, ptr %add.ptr131, align 1
  %width = getelementptr inbounds %struct.mesh_csa_settings, ptr %41, i32 0, i32 1, i32 0, i32 1
  %80 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %width, align 4
  %82 = zext i32 %81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %81, label %if.end122.if.end154_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %if.end122.sw.bb148_crit_edge
    i32 4, label %if.end122.sw.bb148_crit_edge461
    i32 5, label %if.end122.sw.bb148_crit_edge462
  ]

if.end122.sw.bb148_crit_edge462:                  ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb148

if.end122.sw.bb148_crit_edge461:                  ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb148

if.end122.sw.bb148_crit_edge:                     ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb148

if.end122.if.end154_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end154

sw.bb:                                            ; preds = %if.end122
  %call.i419 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 3) #13
  %83 = getelementptr inbounds i8, ptr %call.i419, i32 2
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %83, align 1
  %incdec.ptr136 = getelementptr i8, ptr %call.i419, i32 1
  %85 = ptrtoint ptr %call.i419 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 62, ptr %call.i419, align 1
  %incdec.ptr137 = getelementptr i8, ptr %call.i419, i32 2
  %86 = ptrtoint ptr %incdec.ptr136 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 1, ptr %incdec.ptr136, align 1
  %87 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %width, align 4
  %89 = zext i32 %88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %88, label %do.end.i [
    i32 0, label %sw.bb.if.else145_crit_edge
    i32 1, label %sw.bb.if.else145_crit_edge463
    i32 2, label %sw.bb2.i
  ]

sw.bb.if.else145_crit_edge463:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else145

sw.bb.if.else145_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else145

sw.bb2.i:                                         ; preds = %sw.bb
  %center_freq1.i = getelementptr inbounds %struct.mesh_csa_settings, ptr %41, i32 0, i32 1, i32 0, i32 2
  %90 = ptrtoint ptr %center_freq1.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %center_freq1.i, align 4
  %92 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %settings, align 4
  %center_freq.i = getelementptr inbounds %struct.ieee80211_channel, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %center_freq.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %95)
  %cmp.i = icmp ugt i32 %91, %95
  br i1 %cmp.i, label %if.then143, label %sw.bb2.i.if.else145_crit_edge

sw.bb2.i.if.else145_crit_edge:                    ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else145

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 778, i32 noundef 9, ptr noundef null) #13
  br label %if.else145

if.then143:                                       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #15
  %96 = ptrtoint ptr %incdec.ptr137 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 1, ptr %incdec.ptr137, align 1
  br label %if.end154

if.else145:                                       ; preds = %do.end.i, %sw.bb2.i.if.else145_crit_edge, %sw.bb.if.else145_crit_edge, %sw.bb.if.else145_crit_edge463
  %97 = ptrtoint ptr %incdec.ptr137 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 3, ptr %incdec.ptr137, align 1
  br label %if.end154

sw.bb148:                                         ; preds = %if.end122.sw.bb148_crit_edge, %if.end122.sw.bb148_crit_edge461, %if.end122.sw.bb148_crit_edge462
  %call.i420 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 7) #13
  %98 = getelementptr inbounds i8, ptr %call.i420, i32 2
  %99 = call ptr @memset(ptr %98, i32 0, i32 5)
  %incdec.ptr150 = getelementptr i8, ptr %call.i420, i32 1
  %100 = ptrtoint ptr %call.i420 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 -60, ptr %call.i420, align 1
  %incdec.ptr151 = getelementptr i8, ptr %call.i420, i32 2
  %101 = ptrtoint ptr %incdec.ptr150 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 5, ptr %incdec.ptr150, align 1
  tail call void @ieee80211_ie_build_wide_bw_cs(ptr noundef %incdec.ptr151, ptr noundef %settings) #13
  br label %if.end154

if.end154:                                        ; preds = %sw.bb148, %if.else145, %if.then143, %if.end122.if.end154_crit_edge, %do.end92.if.end154_crit_edge
  %call.i421 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i421, label %if.end154.rcu_read_unlock.exit432_crit_edge, label %land.lhs.true.i424

if.end154.rcu_read_unlock.exit432_crit_edge:      ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit432

land.lhs.true.i424:                               ; preds = %if.end154
  %call1.i422 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i422)
  %tobool.not.i423 = icmp eq i32 %call1.i422, 0
  br i1 %tobool.not.i423, label %land.lhs.true.i424.rcu_read_unlock.exit432_crit_edge, label %land.lhs.true2.i426

land.lhs.true.i424.rcu_read_unlock.exit432_crit_edge: ; preds = %land.lhs.true.i424
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit432

land.lhs.true2.i426:                              ; preds = %land.lhs.true.i424
  %.b4.i425 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i425, label %land.lhs.true2.i426.rcu_read_unlock.exit432_crit_edge, label %if.then.i427

land.lhs.true2.i426.rcu_read_unlock.exit432_crit_edge: ; preds = %land.lhs.true2.i426
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit432

if.then.i427:                                     ; preds = %land.lhs.true2.i426
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.18) #13
  br label %rcu_read_unlock.exit432

rcu_read_unlock.exit432:                          ; preds = %if.then.i427, %land.lhs.true2.i426.rcu_read_unlock.exit432_crit_edge, %land.lhs.true.i424.rcu_read_unlock.exit432_crit_edge, %if.end154.rcu_read_unlock.exit432_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !90
  %102 = tail call i32 @llvm.read_register.i32(metadata !79) #13
  %and.i.i.i.i.i428 = and i32 %102, -16384
  %103 = inttoptr i32 %and.i.i.i.i.i428 to ptr
  %preempt_count.i.i.i.i429 = getelementptr inbounds %struct.thread_info, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %preempt_count.i.i.i.i429 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %preempt_count.i.i.i.i429, align 4
  %sub.i.i.i430 = add i32 %105, -1
  store volatile i32 %sub.i.i.i430, ptr %preempt_count.i.i.i.i429, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %call155 = tail call i32 @ieee80211_add_srates_ie(ptr noundef %add.ptr, ptr noundef nonnull %call.i.i, i1 noundef zeroext true, i32 noundef %9) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %lor.lhs.false157, label %rcu_read_unlock.exit432.out_free_crit_edge

rcu_read_unlock.exit432.out_free_crit_edge:       ; preds = %rcu_read_unlock.exit432
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

lor.lhs.false157:                                 ; preds = %rcu_read_unlock.exit432
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %106 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool.i.not.i.i = icmp eq i32 %107, 0
  br i1 %tobool.i.not.i.i, label %skb_tailroom.exit.i, label %lor.lhs.false157.out_free_crit_edge

lor.lhs.false157.out_free_crit_edge:              ; preds = %lor.lhs.false157
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

skb_tailroom.exit.i:                              ; preds = %lor.lhs.false157
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 17
  %108 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %110 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %109 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %111 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.ptr.sub.i.i)
  %cmp.i433 = icmp slt i32 %sub.ptr.sub.i.i, 3
  br i1 %cmp.i433, label %skb_tailroom.exit.i.out_free_crit_edge, label %if.end.i

skb_tailroom.exit.i.out_free_crit_edge:           ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.end.i:                                         ; preds = %skb_tailroom.exit.i
  %112 = tail call i32 @llvm.read_register.i32(metadata !79) #13
  %and.i.i.i.i.i.i = and i32 %112, -16384
  %113 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %115, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !89
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i434 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i434, label %if.end.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i435

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

if.then.i.i435:                                   ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #13
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i435, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.i.rcu_read_lock.exit.i_crit_edge
  %116 = ptrtoint ptr %chanctx_conf2 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile ptr, ptr %chanctx_conf2, align 4
  %call3.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i436 = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i436, label %land.lhs.true.i437, label %rcu_read_lock.exit.i.do.end11.i_crit_edge

rcu_read_lock.exit.i.do.end11.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end11.i

land.lhs.true.i437:                               ; preds = %rcu_read_lock.exit.i
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i437.do.end11.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i437.do.end11.i_crit_edge:          ; preds = %land.lhs.true.i437
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end11.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i437
  %.b55.i = load i1, ptr @mesh_add_ds_params_ie.__warned, align 1
  br i1 %.b55.i, label %land.lhs.true6.i.do.end11.i_crit_edge, label %if.then8.i

land.lhs.true6.i.do.end11.i_crit_edge:            ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end11.i

if.then8.i:                                       ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @mesh_add_ds_params_ie.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 401, ptr noundef nonnull @.str.2) #13
  br label %do.end11.i

do.end11.i:                                       ; preds = %if.then8.i, %land.lhs.true6.i.do.end11.i_crit_edge, %land.lhs.true.i437.do.end11.i_crit_edge, %rcu_read_lock.exit.i.do.end11.i_crit_edge
  %tobool13.not.i = icmp eq ptr %117, null
  br i1 %tobool13.not.i, label %do.end26.i, label %if.end42.i, !prof !92

do.end26.i:                                       ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 402, i32 noundef 9, ptr noundef null) #13
  tail call fastcc void @rcu_read_unlock() #13
  br label %out_free

if.end42.i:                                       ; preds = %do.end11.i
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %117, align 4
  %call.i56.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i56.i, label %if.end42.i.if.end161_crit_edge, label %land.lhs.true.i59.i

if.end42.i.if.end161_crit_edge:                   ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end161

land.lhs.true.i59.i:                              ; preds = %if.end42.i
  %call1.i57.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i57.i)
  %tobool.not.i58.i = icmp eq i32 %call1.i57.i, 0
  br i1 %tobool.not.i58.i, label %land.lhs.true.i59.i.if.end161_crit_edge, label %land.lhs.true2.i61.i

land.lhs.true.i59.i.if.end161_crit_edge:          ; preds = %land.lhs.true.i59.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end161

land.lhs.true2.i61.i:                             ; preds = %land.lhs.true.i59.i
  %.b4.i60.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i60.i, label %land.lhs.true2.i61.i.if.end161_crit_edge, label %if.then.i62.i

land.lhs.true2.i61.i.if.end161_crit_edge:         ; preds = %land.lhs.true2.i61.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end161

if.then.i62.i:                                    ; preds = %land.lhs.true2.i61.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.18) #13
  br label %if.end161

if.end161:                                        ; preds = %if.then.i62.i, %land.lhs.true2.i61.i.if.end161_crit_edge, %land.lhs.true.i59.i.if.end161_crit_edge, %if.end42.i.if.end161_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !90
  %120 = tail call i32 @llvm.read_register.i32(metadata !79) #13
  %and.i.i.i.i.i63.i = and i32 %120, -16384
  %121 = inttoptr i32 %and.i.i.i.i.i63.i to ptr
  %preempt_count.i.i.i.i64.i = getelementptr inbounds %struct.thread_info, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %preempt_count.i.i.i.i64.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile i32, ptr %preempt_count.i.i.i.i64.i, align 4
  %sub.i.i.i.i438 = add i32 %123, -1
  store volatile i32 %sub.i.i.i.i438, ptr %preempt_count.i.i.i.i64.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %call44.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 3) #13
  %incdec.ptr.i = getelementptr i8, ptr %call44.i, i32 1
  %124 = ptrtoint ptr %call44.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 3, ptr %call44.i, align 1
  %incdec.ptr45.i = getelementptr i8, ptr %call44.i, i32 2
  %125 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 1, ptr %incdec.ptr.i, align 1
  %center_freq.i439 = getelementptr inbounds %struct.ieee80211_channel, ptr %119, i32 0, i32 1
  %126 = ptrtoint ptr %center_freq.i439 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %center_freq.i439, align 4
  %mul.i.i = mul i32 %127, 1000
  %call.i65.i = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i.i) #13
  %conv.i = trunc i32 %call.i65.i to i8
  %128 = ptrtoint ptr %incdec.ptr45.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %conv.i, ptr %incdec.ptr45.i, align 1
  %len = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %129 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %len, align 4
  %head_len162 = getelementptr inbounds %struct.beacon_data, ptr %call9.i.i, i32 0, i32 2
  %131 = ptrtoint ptr %head_len162 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %head_len162, align 8
  %132 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %call9.i.i, align 128
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %134 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %data, align 4
  %136 = call ptr @memcpy(ptr %133, ptr %135, i32 %130)
  tail call void @skb_trim(ptr noundef nonnull %call.i.i, i32 noundef 0) #13
  %137 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %call9.i.i, align 128
  %139 = ptrtoint ptr %head_len162 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %head_len162, align 8
  %add.ptr167 = getelementptr i8, ptr %138, i32 %140
  %tail = getelementptr inbounds %struct.beacon_data, ptr %call9.i.i, i32 0, i32 1
  %141 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %add.ptr167, ptr %tail, align 4
  %call168 = tail call i32 @ieee80211_add_ext_srates_ie(ptr noundef %add.ptr, ptr noundef nonnull %call.i.i, i1 noundef zeroext true, i32 noundef %9) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168)
  %tobool169.not = icmp eq i32 %call168, 0
  br i1 %tobool169.not, label %lor.lhs.false170, label %if.end161.out_free_crit_edge

if.end161.out_free_crit_edge:                     ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

lor.lhs.false170:                                 ; preds = %if.end161
  %ie.i = getelementptr i8, ptr %ifmsh, i32 416
  %142 = ptrtoint ptr %ie.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %ie.i, align 8
  %tobool.not.i441 = icmp eq ptr %143, null
  br i1 %tobool.not.i441, label %lor.lhs.false170.lor.lhs.false173_crit_edge, label %lor.lhs.false.i

lor.lhs.false170.lor.lhs.false173_crit_edge:      ; preds = %lor.lhs.false170
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false173

lor.lhs.false.i:                                  ; preds = %lor.lhs.false170
  %144 = ptrtoint ptr %ie_len to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %ie_len, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool1.not.i = icmp eq i8 %145, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.lor.lhs.false173_crit_edge, label %if.end.i443

lor.lhs.false.i.lor.lhs.false173_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false173

if.end.i443:                                      ; preds = %lor.lhs.false.i
  %conv.i442 = zext i8 %145 to i32
  %call.i.i.i = tail call ptr @cfg80211_find_elem_match(i8 noundef zeroext 48, ptr noundef nonnull %143, i32 noundef %conv.i442, ptr noundef null, i32 noundef 0, i32 noundef 0) #13
  %tobool4.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool4.not.i, label %if.end.i443.lor.lhs.false173_crit_edge, label %if.end6.i

if.end.i443.lor.lhs.false173_crit_edge:           ; preds = %if.end.i443
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false173

if.end6.i:                                        ; preds = %if.end.i443
  %arrayidx.i = getelementptr i8, ptr %call.i.i.i, i32 1
  %146 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx.i, align 1
  %add.i = add i8 %147, 2
  %148 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %tobool.i.not.i.i445 = icmp eq i32 %149, 0
  br i1 %tobool.i.not.i.i445, label %cond.false.i.i, label %if.end6.i.skb_tailroom.exit.i452_crit_edge

if.end6.i.skb_tailroom.exit.i452_crit_edge:       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_tailroom.exit.i452

cond.false.i.i:                                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  %150 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %end.i.i, align 4
  %152 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i448 = ptrtoint ptr %151 to i32
  %sub.ptr.rhs.cast.i.i449 = ptrtoint ptr %153 to i32
  %sub.ptr.sub.i.i450 = sub i32 %sub.ptr.lhs.cast.i.i448, %sub.ptr.rhs.cast.i.i449
  br label %skb_tailroom.exit.i452

skb_tailroom.exit.i452:                           ; preds = %cond.false.i.i, %if.end6.i.skb_tailroom.exit.i452_crit_edge
  %cond.i.i = phi i32 [ %sub.ptr.sub.i.i450, %cond.false.i.i ], [ 0, %if.end6.i.skb_tailroom.exit.i452_crit_edge ]
  %conv10.i = zext i8 %add.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i, i32 %conv10.i)
  %cmp.i451 = icmp slt i32 %cond.i.i, %conv10.i
  br i1 %cmp.i451, label %skb_tailroom.exit.i452.out_free_crit_edge, label %if.end13.i

skb_tailroom.exit.i452.out_free_crit_edge:        ; preds = %skb_tailroom.exit.i452
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.end13.i:                                       ; preds = %skb_tailroom.exit.i452
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i453 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %conv10.i) #13
  %154 = call ptr @memcpy(ptr %call.i.i453, ptr %call.i.i.i, i32 %conv10.i)
  br label %lor.lhs.false173

lor.lhs.false173:                                 ; preds = %if.end13.i, %if.end.i443.lor.lhs.false173_crit_edge, %lor.lhs.false.i.lor.lhs.false173_crit_edge, %lor.lhs.false170.lor.lhs.false173_crit_edge
  %call174 = tail call i32 @mesh_add_ht_cap_ie(ptr noundef %add.ptr, ptr noundef nonnull %call.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call174)
  %tobool175.not = icmp eq i32 %call174, 0
  br i1 %tobool175.not, label %lor.lhs.false176, label %lor.lhs.false173.out_free_crit_edge

lor.lhs.false173.out_free_crit_edge:              ; preds = %lor.lhs.false173
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

lor.lhs.false176:                                 ; preds = %lor.lhs.false173
  %call177 = tail call i32 @mesh_add_ht_oper_ie(ptr noundef %add.ptr, ptr noundef nonnull %call.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %lor.lhs.false179, label %lor.lhs.false176.out_free_crit_edge

lor.lhs.false176.out_free_crit_edge:              ; preds = %lor.lhs.false176
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

lor.lhs.false179:                                 ; preds = %lor.lhs.false176
  %call180 = tail call i32 @mesh_add_meshid_ie(ptr noundef %add.ptr, ptr noundef nonnull %call.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180)
  %tobool181.not = icmp eq i32 %call180, 0
  br i1 %tobool181.not, label %lor.lhs.false182, label %lor.lhs.false179.out_free_crit_edge

lor.lhs.false179.out_free_crit_edge:              ; preds = %lor.lhs.false179
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

lor.lhs.false182:                                 ; preds = %lor.lhs.false179
  %call183 = tail call i32 @mesh_add_meshconf_ie(ptr noundef %add.ptr, ptr noundef nonnull %call.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call183)
  %tobool184.not = icmp eq i32 %call183, 0
  br i1 %tobool184.not, label %lor.lhs.false185, label %lor.lhs.false182.out_free_crit_edge

lor.lhs.false182.out_free_crit_edge:              ; preds = %lor.lhs.false182
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

lor.lhs.false185:                                 ; preds = %lor.lhs.false182
  %call186 = tail call fastcc i32 @mesh_add_awake_window_ie(ptr noundef %add.ptr, ptr noundef nonnull %call.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call186)
  %tobool187.not = icmp eq i32 %call186, 0
  br i1 %tobool187.not, label %lor.lhs.false188, label %lor.lhs.false185.out_free_crit_edge

lor.lhs.false185.out_free_crit_edge:              ; preds = %lor.lhs.false185
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

lor.lhs.false188:                                 ; preds = %lor.lhs.false185
  %call189 = tail call i32 @mesh_add_vht_cap_ie(ptr noundef %add.ptr, ptr noundef nonnull %call.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189)
  %tobool190.not = icmp eq i32 %call189, 0
  br i1 %tobool190.not, label %lor.lhs.false191, label %lor.lhs.false188.out_free_crit_edge

lor.lhs.false188.out_free_crit_edge:              ; preds = %lor.lhs.false188
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

lor.lhs.false191:                                 ; preds = %lor.lhs.false188
  %call192 = tail call i32 @mesh_add_vht_oper_ie(ptr noundef %add.ptr, ptr noundef nonnull %call.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call192)
  %tobool193.not = icmp eq i32 %call192, 0
  br i1 %tobool193.not, label %lor.lhs.false194, label %lor.lhs.false191.out_free_crit_edge

lor.lhs.false191.out_free_crit_edge:              ; preds = %lor.lhs.false191
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

lor.lhs.false194:                                 ; preds = %lor.lhs.false191
  %call195 = tail call i32 @mesh_add_he_cap_ie(ptr noundef %add.ptr, ptr noundef nonnull %call.i.i, i8 noundef zeroext %call12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call195)
  %tobool196.not = icmp eq i32 %call195, 0
  br i1 %tobool196.not, label %lor.lhs.false197, label %lor.lhs.false194.out_free_crit_edge

lor.lhs.false194.out_free_crit_edge:              ; preds = %lor.lhs.false194
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

lor.lhs.false197:                                 ; preds = %lor.lhs.false194
  %call198 = tail call i32 @mesh_add_he_oper_ie(ptr noundef %add.ptr, ptr noundef nonnull %call.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call198)
  %tobool199.not = icmp eq i32 %call198, 0
  br i1 %tobool199.not, label %lor.lhs.false200, label %lor.lhs.false197.out_free_crit_edge

lor.lhs.false197.out_free_crit_edge:              ; preds = %lor.lhs.false197
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

lor.lhs.false200:                                 ; preds = %lor.lhs.false197
  %call201 = tail call i32 @mesh_add_he_6ghz_cap_ie(ptr noundef %add.ptr, ptr noundef nonnull %call.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call201)
  %tobool202.not = icmp eq i32 %call201, 0
  br i1 %tobool202.not, label %lor.lhs.false203, label %lor.lhs.false200.out_free_crit_edge

lor.lhs.false200.out_free_crit_edge:              ; preds = %lor.lhs.false200
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

lor.lhs.false203:                                 ; preds = %lor.lhs.false200
  %call204 = tail call i32 @mesh_add_vendor_ies(ptr noundef %add.ptr, ptr noundef nonnull %call.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call204)
  %tobool205.not = icmp eq i32 %call204, 0
  br i1 %tobool205.not, label %if.end207, label %lor.lhs.false203.out_free_crit_edge

lor.lhs.false203.out_free_crit_edge:              ; preds = %lor.lhs.false203
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.end207:                                        ; preds = %lor.lhs.false203
  call void @__sanitizer_cov_trace_pc() #15
  %155 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %len, align 4
  %tail_len209 = getelementptr inbounds %struct.beacon_data, ptr %call9.i.i, i32 0, i32 3
  %157 = ptrtoint ptr %tail_len209 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %tail_len209, align 4
  %158 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %tail, align 4
  %160 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %data, align 4
  %162 = call ptr @memcpy(ptr %159, ptr %161, i32 %156)
  %163 = load ptr, ptr %tail, align 4
  %164 = load i32, ptr %tail_len209, align 4
  %conv215 = trunc i32 %164 to i8
  tail call fastcc void @ieee80211_mesh_update_bss_params(ptr noundef %add.ptr, ptr noundef %163, i8 noundef zeroext %conv215)
  %165 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %tail, align 4
  %meshconf_offset = getelementptr inbounds %struct.ieee80211_if_mesh, ptr %ifmsh, i32 0, i32 45
  %167 = ptrtoint ptr %meshconf_offset to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %meshconf_offset, align 4
  %add.ptr217 = getelementptr i8, ptr %166, i32 %168
  %meshconf = getelementptr inbounds %struct.beacon_data, ptr %call9.i.i, i32 0, i32 4
  %169 = ptrtoint ptr %meshconf to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %add.ptr217, ptr %meshconf, align 16
  tail call void @consume_skb(ptr noundef nonnull %call.i.i) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !94
  %beacon246 = getelementptr inbounds %struct.ieee80211_if_mesh, ptr %ifmsh, i32 0, i32 29
  %170 = ptrtoint ptr %beacon246 to i32
  call void @__asan_store4_noabort(i32 %170)
  store volatile ptr %call9.i.i, ptr %beacon246, align 4
  br label %cleanup

out_free:                                         ; preds = %lor.lhs.false203.out_free_crit_edge, %lor.lhs.false200.out_free_crit_edge, %lor.lhs.false197.out_free_crit_edge, %lor.lhs.false194.out_free_crit_edge, %lor.lhs.false191.out_free_crit_edge, %lor.lhs.false188.out_free_crit_edge, %lor.lhs.false185.out_free_crit_edge, %lor.lhs.false182.out_free_crit_edge, %lor.lhs.false179.out_free_crit_edge, %lor.lhs.false176.out_free_crit_edge, %lor.lhs.false173.out_free_crit_edge, %skb_tailroom.exit.i452.out_free_crit_edge, %if.end161.out_free_crit_edge, %do.end26.i, %skb_tailroom.exit.i.out_free_crit_edge, %lor.lhs.false157.out_free_crit_edge, %rcu_read_unlock.exit432.out_free_crit_edge, %rcu_read_unlock.exit.out_free_crit_edge
  tail call void @kfree(ptr noundef %call9.i.i) #13
  tail call void @consume_skb(ptr noundef %call.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end207
  %retval.0 = phi i32 [ -12, %out_free ], [ 0, %if.end207 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_stop_mesh(ptr noundef %sdata) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %dev = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 6
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void @netif_carrier_off(ptr noundef %3) #13
  %call.i = tail call i32 @__sta_info_flush(ptr noundef %sdata, i1 noundef zeroext false) #13
  tail call void @ieee80211_free_keys(ptr noundef %sdata, i1 noundef zeroext true) #13
  tail call void @mesh_path_flush_by_iface(ptr noundef %sdata) #13
  %mesh_id_len = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 7
  %4 = ptrtoint ptr %mesh_id_len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %mesh_id_len, align 4
  %enable_beacon = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 17
  %5 = ptrtoint ptr %enable_beacon to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %enable_beacon, align 1
  %beacon_rate_set = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 56
  %6 = ptrtoint ptr %beacon_rate_set to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %beacon_rate_set, align 8
  %state = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 9
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %state) #13
  tail call void @ieee80211_bss_info_change_notify(ptr noundef %sdata, i32 noundef 512) #13
  %dep_map = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 1, i32 7, i32 5
  %call.i62 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %tobool.not = icmp eq i32 %call.i62, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true5

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b61 = load i1, ptr @ieee80211_stop_mesh.__warned, align 1
  br i1 %.b61, label %land.lhs.true5.do.end_crit_edge, label %if.then

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ieee80211_stop_mesh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 1087, ptr noundef nonnull @.str.3) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %beacon = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 29
  %7 = ptrtoint ptr %beacon to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %beacon, align 4
  store volatile ptr null, ptr %beacon, align 4
  %tobool21.not = icmp eq ptr %8, null
  br i1 %tobool21.not, label %do.end.if.end26_crit_edge, label %do.end25

do.end.if.end26_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

do.end25:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %callback_head = getelementptr inbounds %struct.beacon_data, ptr %8, i32 0, i32 7
  tail call void @kvfree_call_rcu(ptr noundef %callback_head, ptr noundef nonnull inttoptr (i32 28 to ptr)) #13
  br label %if.end26

if.end26:                                         ; preds = %do.end25, %do.end.if.end26_crit_edge
  %u = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57
  %bc_buf = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 40, i32 1
  %qlen.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 40, i32 1, i32 1
  %9 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %qlen.i, align 4
  %total_ps_buffered = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 124
  %11 = ptrtoint ptr %total_ps_buffered to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %total_ps_buffered, align 4
  %sub = sub i32 %12, %10
  store i32 %sub, ptr %total_ps_buffered, align 4
  tail call void @skb_queue_purge(ptr noundef %bc_buf) #13
  %call33 = tail call i32 @del_timer_sync(ptr noundef %u) #13
  %mesh_path_root_timer = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 2
  %call35 = tail call i32 @del_timer_sync(ptr noundef %mesh_path_root_timer) #13
  %mesh_path_timer = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 1
  %call37 = tail call i32 @del_timer_sync(ptr noundef %mesh_path_timer) #13
  %wrkq_flags = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 3
  %13 = ptrtoint ptr %wrkq_flags to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %wrkq_flags, align 8
  %mbss_changed = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 4
  %14 = ptrtoint ptr %mbss_changed to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %mbss_changed, align 4
  %fif_other_bss = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 19
  %15 = ptrtoint ptr %fif_other_bss to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fif_other_bss, align 8
  %dec = add i32 %16, -1
  store i32 %dec, ptr %fif_other_bss, align 8
  %iff_allmultis = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 57
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %iff_allmultis, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %iff_allmultis, i32 1, i32 3, i32 1) #13
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %iff_allmultis, ptr %iff_allmultis, i32 1, ptr elementtype(i32) %iff_allmultis) #13, !srcloc !95
  tail call void @ieee80211_configure_filter(ptr noundef %1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_recalc_dtim(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_bss_info_change_notify(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_keys(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mesh_path_flush_by_iface(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_mesh_finish_csa(ptr noundef %sdata) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %csa_role = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 42
  %0 = ptrtoint ptr %csa_role to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %csa_role, align 4
  %chsw_ttl = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 43
  %1 = ptrtoint ptr %chsw_ttl to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %chsw_ttl, align 8
  %dep_map = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 1, i32 7, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b47 = load i1, ptr @ieee80211_mesh_finish_csa.__warned, align 1
  br i1 %.b47, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ieee80211_mesh_finish_csa.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 1383, ptr noundef nonnull @.str.3) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %csa = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 41
  %2 = ptrtoint ptr %csa to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csa, align 8
  store volatile ptr null, ptr %csa, align 8
  %tobool18.not = icmp eq ptr %3, null
  br i1 %tobool18.not, label %do.end.if.end29_crit_edge, label %do.end25

do.end.if.end29_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

do.end25:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kvfree_call_rcu(ptr noundef nonnull %3, ptr noundef null) #13
  br label %if.end29

if.end29:                                         ; preds = %do.end25, %do.end.if.end29_crit_edge
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end29.do.end.i_crit_edge

if.end29.do.end.i_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.end29
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b28.i = load i1, ptr @ieee80211_mesh_rebuild_beacon.__warned, align 1
  br i1 %.b28.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ieee80211_mesh_rebuild_beacon.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 996, ptr noundef nonnull @.str.3) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.end29.do.end.i_crit_edge
  %u.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57
  %beacon.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 29
  %4 = ptrtoint ptr %beacon.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %beacon.i, align 4
  %call6.i = tail call fastcc i32 @ieee80211_mesh_build_beacon(ptr noundef %u.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp ne i32 %call6.i, 0
  %tobool10.not.i = icmp eq ptr %5, null
  %or.cond.i = select i1 %tobool7.not.i, i1 true, i1 %tobool10.not.i
  br i1 %or.cond.i, label %ieee80211_mesh_rebuild_beacon.exit, label %ieee80211_mesh_rebuild_beacon.exit.thread

ieee80211_mesh_rebuild_beacon.exit.thread:        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %callback_head.i = getelementptr inbounds %struct.beacon_data, ptr %5, i32 0, i32 7
  tail call void @kvfree_call_rcu(ptr noundef %callback_head.i, ptr noundef nonnull inttoptr (i32 28 to ptr)) #13
  br label %if.end33

ieee80211_mesh_rebuild_beacon.exit:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool31.not = icmp eq i32 %call6.i, 0
  br i1 %tobool31.not, label %ieee80211_mesh_rebuild_beacon.exit.if.end33_crit_edge, label %ieee80211_mesh_rebuild_beacon.exit.cleanup_crit_edge

ieee80211_mesh_rebuild_beacon.exit.cleanup_crit_edge: ; preds = %ieee80211_mesh_rebuild_beacon.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

ieee80211_mesh_rebuild_beacon.exit.if.end33_crit_edge: ; preds = %ieee80211_mesh_rebuild_beacon.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

if.end33:                                         ; preds = %ieee80211_mesh_rebuild_beacon.exit.if.end33_crit_edge, %ieee80211_mesh_rebuild_beacon.exit.thread
  %name = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  %chandef = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 32
  %6 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chandef, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %center_freq, align 4
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.4, ptr noundef %name, i32 noundef %9) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %ieee80211_mesh_rebuild_beacon.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 256, %if.end33 ], [ -22, %ieee80211_mesh_rebuild_beacon.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sdata_dbg(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_mesh_csa_beacon(ptr noundef %sdata, ptr nocapture noundef readonly %csa_settings) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 1, i32 7, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !92

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1405, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 2592, i32 noundef 200) #17
  %tobool25.not = icmp eq ptr %call7.i, null
  br i1 %tobool25.not, label %if.end.cleanup_crit_edge, label %if.end27

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end27:                                         ; preds = %if.end
  %settings = getelementptr inbounds %struct.mesh_csa_settings, ptr %call7.i, i32 0, i32 1
  %2 = call ptr @memcpy(ptr %settings, ptr %csa_settings, i32 192)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !96
  %csa53 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 41
  %3 = ptrtoint ptr %csa53 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %call7.i, ptr %csa53, align 8
  %dep_map.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 1, i32 7, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end27.do.end.i_crit_edge

if.end27.do.end.i_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.end27
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b28.i = load i1, ptr @ieee80211_mesh_rebuild_beacon.__warned, align 1
  br i1 %.b28.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ieee80211_mesh_rebuild_beacon.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 996, ptr noundef nonnull @.str.3) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.end27.do.end.i_crit_edge
  %u.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57
  %beacon.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 29
  %4 = ptrtoint ptr %beacon.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %beacon.i, align 4
  %call6.i = tail call fastcc i32 @ieee80211_mesh_build_beacon(ptr noundef %u.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp ne i32 %call6.i, 0
  %tobool10.not.i = icmp eq ptr %5, null
  %or.cond.i = select i1 %tobool7.not.i, i1 true, i1 %tobool10.not.i
  br i1 %or.cond.i, label %ieee80211_mesh_rebuild_beacon.exit, label %ieee80211_mesh_rebuild_beacon.exit.thread

ieee80211_mesh_rebuild_beacon.exit.thread:        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %callback_head.i = getelementptr inbounds %struct.beacon_data, ptr %5, i32 0, i32 7
  tail call void @kvfree_call_rcu(ptr noundef %callback_head.i, ptr noundef nonnull inttoptr (i32 28 to ptr)) #13
  br label %cleanup

ieee80211_mesh_rebuild_beacon.exit:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool66.not = icmp eq i32 %call6.i, 0
  br i1 %tobool66.not, label %ieee80211_mesh_rebuild_beacon.exit.cleanup_crit_edge, label %if.then67

ieee80211_mesh_rebuild_beacon.exit.cleanup_crit_edge: ; preds = %ieee80211_mesh_rebuild_beacon.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then67:                                        ; preds = %ieee80211_mesh_rebuild_beacon.exit
  %6 = ptrtoint ptr %csa53 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %csa53, align 8
  %call74 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %land.lhs.true76, label %if.then67.do.end84_crit_edge

if.then67.do.end84_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end84

land.lhs.true76:                                  ; preds = %if.then67
  %call77 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %land.lhs.true76.do.end84_crit_edge, label %land.lhs.true79

land.lhs.true76.do.end84_crit_edge:               ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end84

land.lhs.true79:                                  ; preds = %land.lhs.true76
  %.b121 = load i1, ptr @ieee80211_mesh_csa_beacon.__warned, align 1
  br i1 %.b121, label %land.lhs.true79.do.end84_crit_edge, label %if.then81

land.lhs.true79.do.end84_crit_edge:               ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end84

if.then81:                                        ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ieee80211_mesh_csa_beacon.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 1419, ptr noundef nonnull @.str.2) #13
  br label %do.end84

do.end84:                                         ; preds = %if.then81, %land.lhs.true79.do.end84_crit_edge, %land.lhs.true76.do.end84_crit_edge, %if.then67.do.end84_crit_edge
  %8 = ptrtoint ptr %csa53 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr null, ptr %csa53, align 8
  %tobool100.not = icmp eq ptr %7, null
  br i1 %tobool100.not, label %do.end84.cleanup_crit_edge, label %do.end104

do.end84.cleanup_crit_edge:                       ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end104:                                        ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kvfree_call_rcu(ptr noundef nonnull %7, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end104, %do.end84.cleanup_crit_edge, %ieee80211_mesh_rebuild_beacon.exit.cleanup_crit_edge, %ieee80211_mesh_rebuild_beacon.exit.thread, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end.cleanup_crit_edge ], [ %call6.i, %do.end104 ], [ %call6.i, %do.end84.cleanup_crit_edge ], [ 256, %ieee80211_mesh_rebuild_beacon.exit.cleanup_crit_edge ], [ 256, %ieee80211_mesh_rebuild_beacon.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_mesh_rx_queued_mgmt(ptr noundef %sdata, ptr noundef %skb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mtx.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 1, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mtx.i, i32 noundef 0) #13
  %mesh_id_len = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 7
  %0 = ptrtoint ptr %mesh_id_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mesh_id_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end:                                           ; preds = %entry
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 2
  %6 = lshr i16 %5, 8
  %7 = and i16 %6, 240
  %conv2 = zext i16 %7 to i32
  %8 = add nsw i32 %conv2, -64
  %9 = lshr exact i32 %8, 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %9, label %if.end.out_crit_edge [
    i32 1, label %if.end.sw.bb_crit_edge
    i32 4, label %if.end.sw.bb_crit_edge50
    i32 0, label %sw.bb3
    i32 9, label %sw.bb5
  ]

if.end.sw.bb_crit_edge50:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge50
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  %local1.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %13 = ptrtoint ptr %local1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %local1.i, align 4
  %band2.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 36
  %15 = ptrtoint ptr %band2.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %band2.i, align 4
  %conv.i = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 80, i16 %7)
  %cmp.i = icmp eq i16 %7, 80
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i

land.lhs.true.i:                                  ; preds = %sw.bb
  %da.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %3, i32 0, i32 2
  %addr.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 2
  %17 = ptrtoint ptr %da.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %da.i, align 4
  %19 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %addr.i, align 4
  %xor.i.i = xor i32 %20, %18
  %add.ptr.i.i = getelementptr %struct.ieee80211_mgmt, ptr %3, i32 0, i32 2, i32 4
  %21 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 2, i32 4
  %23 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %24, %22
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp ne i32 %or.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %12)
  %cmp8.i = icmp ult i32 %12, 36
  %or.cond.i = or i1 %cmp8.i, %cmp.i.i
  br i1 %or.cond.i, label %land.lhs.true.i.out_crit_edge, label %land.lhs.true.i.if.end11.i_crit_edge

land.lhs.true.i.if.end11.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11.i

land.lhs.true.i.out_crit_edge:                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %12)
  %cmp8.old.i = icmp ult i32 %12, 36
  br i1 %cmp8.old.i, label %if.end.i.out_crit_edge, label %if.end.i.if.end11.i_crit_edge

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11.i

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end11.i:                                       ; preds = %if.end.i.if.end11.i_crit_edge, %land.lhs.true.i.if.end11.i_crit_edge
  %variable.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %3, i32 0, i32 6, i32 1, i32 2
  %sub.i = add i32 %12, -36
  %bssid.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %3, i32 0, i32 4
  %call.i.i = tail call ptr @ieee802_11_parse_elems_crc(ptr noundef %variable.i, i32 noundef %sub.i, i1 noundef zeroext false, i64 noundef 0, i32 noundef 0, ptr noundef %bssid.i, ptr noundef null) #13
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end11.i.out_crit_edge, label %if.end18.i

if.end11.i.out_crit_edge:                         ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end18.i:                                       ; preds = %if.end11.i
  %mesh_id.i = getelementptr inbounds %struct.ieee802_11_elems, ptr %call.i.i, i32 0, i32 28
  %25 = ptrtoint ptr %mesh_id.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mesh_id.i, align 4
  %tobool19.not.i = icmp eq ptr %26, null
  br i1 %tobool19.not.i, label %if.end18.i.free.i_crit_edge, label %lor.lhs.false.i

if.end18.i.free.i_crit_edge:                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %free.i

lor.lhs.false.i:                                  ; preds = %if.end18.i
  %mesh_config.i = getelementptr inbounds %struct.ieee802_11_elems, ptr %call.i.i, i32 0, i32 20
  %27 = ptrtoint ptr %mesh_config.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mesh_config.i, align 4
  %tobool20.not.i = icmp eq ptr %28, null
  br i1 %tobool20.not.i, label %lor.lhs.false.i.free.i_crit_edge, label %lor.lhs.false21.i

lor.lhs.false.i.free.i_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %free.i

lor.lhs.false21.i:                                ; preds = %lor.lhs.false.i
  %rsn.i = getelementptr inbounds %struct.ieee802_11_elems, ptr %call.i.i, i32 0, i32 10
  %29 = ptrtoint ptr %rsn.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rsn.i, align 4
  %tobool22.not.i = icmp eq ptr %30, null
  %security32.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 32
  %31 = ptrtoint ptr %security32.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %security32.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp33.not.i = icmp eq i32 %32, 0
  br i1 %tobool22.not.i, label %land.lhs.true30.i, label %land.lhs.true23.i

land.lhs.true23.i:                                ; preds = %lor.lhs.false21.i
  br i1 %cmp33.not.i, label %land.lhs.true23.i.free.i_crit_edge, label %land.lhs.true23.i.if.end36.i_crit_edge

land.lhs.true23.i.if.end36.i_crit_edge:           ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36.i

land.lhs.true23.i.free.i_crit_edge:               ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %free.i

land.lhs.true30.i:                                ; preds = %lor.lhs.false21.i
  br i1 %cmp33.not.i, label %land.lhs.true30.i.if.end36.i_crit_edge, label %land.lhs.true30.i.free.i_crit_edge

land.lhs.true30.i.free.i_crit_edge:               ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %free.i

land.lhs.true30.i.if.end36.i_crit_edge:           ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36.i

if.end36.i:                                       ; preds = %land.lhs.true30.i.if.end36.i_crit_edge, %land.lhs.true23.i.if.end36.i_crit_edge
  %ds_params.i = getelementptr inbounds %struct.ieee802_11_elems, ptr %call.i.i, i32 0, i32 8
  %33 = ptrtoint ptr %ds_params.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ds_params.i, align 4
  %tobool37.not.i = icmp eq ptr %34, null
  br i1 %tobool37.not.i, label %if.else.i, label %if.then38.i

if.then38.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #15
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %34, align 1
  %conv40.i = zext i8 %36 to i32
  %call.i140.i = tail call i32 @ieee80211_channel_to_freq_khz(i32 noundef %conv40.i, i32 noundef %conv.i) #13
  %div.i.i = udiv i32 %call.i140.i, 1000
  br label %if.end44.i

if.else.i:                                        ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #15
  %freq42.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %37 = ptrtoint ptr %freq42.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %bf.load.i = load i16, ptr %freq42.i, align 4
  %bf.lshr.i = lshr i16 %bf.load.i, 3
  %conv43.i = zext i16 %bf.lshr.i to i32
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.else.i, %if.then38.i
  %freq.0.i = phi i32 [ %div.i.i, %if.then38.i ], [ %conv43.i, %if.else.i ]
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %14, i32 0, i32 1
  %38 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wiphy.i, align 8
  %mul.i.i = mul nuw i32 %freq.0.i, 1000
  %call.i141.i = tail call ptr @ieee80211_get_channel_khz(ptr noundef %39, i32 noundef %mul.i.i) #13
  %tobool46.not.i = icmp eq ptr %call.i141.i, null
  br i1 %tobool46.not.i, label %if.end44.i.free.i_crit_edge, label %lor.lhs.false47.i

if.end44.i.free.i_crit_edge:                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %free.i

lor.lhs.false47.i:                                ; preds = %if.end44.i
  %flags.i = getelementptr inbounds %struct.ieee80211_channel, ptr %call.i141.i, i32 0, i32 4
  %40 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool48.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool48.not.i, label %if.end50.i, label %lor.lhs.false47.i.free.i_crit_edge

lor.lhs.false47.i.free.i_crit_edge:               ; preds = %lor.lhs.false47.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %free.i

if.end50.i:                                       ; preds = %lor.lhs.false47.i
  %call51.i = tail call zeroext i1 @mesh_matches_local(ptr noundef %sdata, ptr noundef nonnull %call.i.i) #13
  br i1 %call51.i, label %if.then52.i, label %if.end50.i.if.end83.i_crit_edge

if.end50.i.if.end83.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end83.i

if.then52.i:                                      ; preds = %if.end50.i
  %name.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  %rssi_threshold.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24, i32 22
  %42 = ptrtoint ptr %rssi_threshold.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rssi_threshold.i, align 4
  %signal.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 38
  %44 = ptrtoint ptr %signal.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %signal.i, align 2
  %conv55.i = sext i8 %45 to i32
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.20, ptr noundef %name.i, i32 noundef %43, i32 noundef %conv55.i) #13
  %user_mpm.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 33
  %46 = ptrtoint ptr %user_mpm.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %user_mpm.i, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool57.not.i = icmp eq i8 %47, 0
  br i1 %tobool57.not.i, label %if.then52.i.if.then72.i_crit_edge, label %lor.lhs.false58.i

if.then52.i.if.then72.i_crit_edge:                ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then72.i

lor.lhs.false58.i:                                ; preds = %if.then52.i
  %48 = ptrtoint ptr %rssi_threshold.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rssi_threshold.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp62.i = icmp eq i32 %49, 0
  br i1 %cmp62.i, label %lor.lhs.false58.i.if.then72.i_crit_edge, label %lor.lhs.false64.i

lor.lhs.false58.i.if.then72.i_crit_edge:          ; preds = %lor.lhs.false58.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then72.i

lor.lhs.false64.i:                                ; preds = %lor.lhs.false58.i
  %50 = ptrtoint ptr %signal.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %signal.i, align 2
  %conv69.i = sext i8 %51 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %conv69.i)
  %cmp70.i = icmp slt i32 %49, %conv69.i
  br i1 %cmp70.i, label %lor.lhs.false64.i.if.then72.i_crit_edge, label %lor.lhs.false64.i.if.end74.i_crit_edge

lor.lhs.false64.i.if.end74.i_crit_edge:           ; preds = %lor.lhs.false64.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74.i

lor.lhs.false64.i.if.then72.i_crit_edge:          ; preds = %lor.lhs.false64.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then72.i

if.then72.i:                                      ; preds = %lor.lhs.false64.i.if.then72.i_crit_edge, %lor.lhs.false58.i.if.then72.i_crit_edge, %if.then52.i.if.then72.i_crit_edge
  %sa.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %3, i32 0, i32 3
  tail call void @mesh_neighbour_update(ptr noundef %sdata, ptr noundef %sa.i, ptr noundef nonnull %call.i.i, ptr noundef %cb.i) #13
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.then72.i, %lor.lhs.false64.i.if.end74.i_crit_edge
  %csa_role.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 42
  %52 = ptrtoint ptr %csa_role.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %csa_role.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp75.not.i = icmp eq i32 %53, 1
  br i1 %cmp75.not.i, label %if.end74.i.if.end83.i_crit_edge, label %land.lhs.true77.i

if.end74.i.if.end83.i_crit_edge:                  ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end83.i

land.lhs.true77.i:                                ; preds = %if.end74.i
  %csa_active.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 4
  %54 = ptrtoint ptr %csa_active.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %csa_active.i, align 1, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool79.not.i = icmp eq i8 %55, 0
  br i1 %tobool79.not.i, label %if.then80.i, label %land.lhs.true77.i.if.end83.i_crit_edge

land.lhs.true77.i.if.end83.i_crit_edge:           ; preds = %land.lhs.true77.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end83.i

if.then80.i:                                      ; preds = %land.lhs.true77.i
  call void @__sanitizer_cov_trace_pc() #15
  %call81.i = tail call fastcc zeroext i1 @ieee80211_mesh_process_chnswitch(ptr noundef %sdata, ptr noundef nonnull %call.i.i, i1 noundef zeroext true) #13
  br label %if.end83.i

if.end83.i:                                       ; preds = %if.then80.i, %land.lhs.true77.i.if.end83.i_crit_edge, %if.end74.i.if.end83.i_crit_edge, %if.end50.i.if.end83.i_crit_edge
  %sync_ops.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 34
  %56 = ptrtoint ptr %sync_ops.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sync_ops.i, align 8
  %tobool84.not.i = icmp eq ptr %57, null
  br i1 %tobool84.not.i, label %if.end83.i.free.i_crit_edge, label %if.then85.i

if.end83.i.free.i_crit_edge:                      ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %free.i

if.then85.i:                                      ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #15
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %60 = ptrtoint ptr %mesh_config.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mesh_config.i, align 4
  tail call void %59(ptr noundef %sdata, i16 noundef zeroext %7, ptr noundef %3, i32 noundef %12, ptr noundef %61, ptr noundef %cb.i) #13
  br label %free.i

free.i:                                           ; preds = %if.then85.i, %if.end83.i.free.i_crit_edge, %lor.lhs.false47.i.free.i_crit_edge, %if.end44.i.free.i_crit_edge, %land.lhs.true30.i.free.i_crit_edge, %land.lhs.true23.i.free.i_crit_edge, %lor.lhs.false.i.free.i_crit_edge, %if.end18.i.free.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call.i.i) #13
  br label %out

sw.bb3:                                           ; preds = %if.end
  %len4 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %62 = ptrtoint ptr %len4 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %len4, align 4
  %local1.i21 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %64 = ptrtoint ptr %local1.i21 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %local1.i21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %63)
  %cmp.i22 = icmp ult i32 %63, 24
  br i1 %cmp.i22, label %sw.bb3.out_crit_edge, label %if.end.i27

sw.bb3.out_crit_edge:                             ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end.i27:                                       ; preds = %sw.bb3
  %variable.i23 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %3, i32 0, i32 6
  %sub.i24 = add i32 %63, -24
  %bssid.i25 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %3, i32 0, i32 4
  %call.i110.i = tail call ptr @ieee802_11_parse_elems_crc(ptr noundef %variable.i23, i32 noundef %sub.i24, i1 noundef zeroext false, i64 noundef 0, i32 noundef 0, ptr noundef %bssid.i25, ptr noundef null) #13
  %tobool.not.i26 = icmp eq ptr %call.i110.i, null
  br i1 %tobool.not.i26, label %if.end.i27.out_crit_edge, label %if.end5.i

if.end.i27.out_crit_edge:                         ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end5.i:                                        ; preds = %if.end.i27
  %mesh_id.i28 = getelementptr inbounds %struct.ieee802_11_elems, ptr %call.i110.i, i32 0, i32 28
  %66 = ptrtoint ptr %mesh_id.i28 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mesh_id.i28, align 4
  %tobool6.not.i = icmp eq ptr %67, null
  br i1 %tobool6.not.i, label %if.end5.i.free.i44_crit_edge, label %if.end8.i

if.end5.i.free.i44_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %free.i44

if.end8.i:                                        ; preds = %if.end5.i
  %da.i29 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %3, i32 0, i32 2
  %addr.i30 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 2
  %68 = ptrtoint ptr %da.i29 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %da.i29, align 4
  %70 = ptrtoint ptr %addr.i30 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %addr.i30, align 4
  %xor.i.i31 = xor i32 %71, %69
  %add.ptr.i.i32 = getelementptr %struct.ieee80211_mgmt, ptr %3, i32 0, i32 2, i32 4
  %72 = ptrtoint ptr %add.ptr.i.i32 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %add.ptr.i.i32, align 2
  %add.ptr1.i.i33 = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 2, i32 4
  %74 = ptrtoint ptr %add.ptr1.i.i33 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %add.ptr1.i.i33, align 2
  %xor37.i.i34 = xor i16 %75, %73
  %xor3.i.i35 = zext i16 %xor37.i.i34 to i32
  %or.i.i36 = or i32 %xor.i.i31, %xor3.i.i35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i36)
  %cmp.i.i37 = icmp eq i32 %or.i.i36, 0
  br i1 %cmp.i.i37, label %if.end8.i.lor.lhs.false.i39_crit_edge, label %land.lhs.true.i38

if.end8.i.lor.lhs.false.i39_crit_edge:            ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false.i39

land.lhs.true.i38:                                ; preds = %if.end8.i
  %76 = ptrtoint ptr %da.i29 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %da.i29, align 2
  %add.ptr1.i111.i = getelementptr %struct.ieee80211_mgmt, ptr %3, i32 0, i32 2, i32 2
  %78 = ptrtoint ptr %add.ptr1.i111.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %add.ptr1.i111.i, align 2
  %and9.i.i = and i16 %77, %73
  %and510.i.i = and i16 %and9.i.i, %79
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i.i)
  %cmp.i112.i = icmp eq i16 %and510.i.i, -1
  br i1 %cmp.i112.i, label %land.lhs.true.i38.lor.lhs.false.i39_crit_edge, label %land.lhs.true.i38.free.i44_crit_edge

land.lhs.true.i38.free.i44_crit_edge:             ; preds = %land.lhs.true.i38
  call void @__sanitizer_cov_trace_pc() #15
  br label %free.i44

land.lhs.true.i38.lor.lhs.false.i39_crit_edge:    ; preds = %land.lhs.true.i38
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false.i39

lor.lhs.false.i39:                                ; preds = %land.lhs.true.i38.lor.lhs.false.i39_crit_edge, %if.end8.i.lor.lhs.false.i39_crit_edge
  %ssid_len.i = getelementptr inbounds %struct.ieee802_11_elems, ptr %call.i110.i, i32 0, i32 58
  %80 = ptrtoint ptr %ssid_len.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %ssid_len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %cmp15.not.i = icmp eq i8 %81, 0
  br i1 %cmp15.not.i, label %if.end18.i40, label %lor.lhs.false.i39.free.i44_crit_edge

lor.lhs.false.i39.free.i44_crit_edge:             ; preds = %lor.lhs.false.i39
  call void @__sanitizer_cov_trace_pc() #15
  br label %free.i44

if.end18.i40:                                     ; preds = %lor.lhs.false.i39
  %mesh_id_len.i = getelementptr inbounds %struct.ieee802_11_elems, ptr %call.i110.i, i32 0, i32 67
  %82 = ptrtoint ptr %mesh_id_len.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %mesh_id_len.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %cmp20.not.i = icmp eq i8 %83, 0
  br i1 %cmp20.not.i, label %if.end18.i40.if.end36.i42_crit_edge, label %land.lhs.true22.i

if.end18.i40.if.end36.i42_crit_edge:              ; preds = %if.end18.i40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36.i42

land.lhs.true22.i:                                ; preds = %if.end18.i40
  %conv19.i = zext i8 %83 to i32
  %84 = ptrtoint ptr %mesh_id_len to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %mesh_id_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %conv19.i)
  %cmp26.not.i = icmp eq i32 %85, %conv19.i
  br i1 %cmp26.not.i, label %lor.lhs.false28.i, label %land.lhs.true22.i.free.i44_crit_edge

land.lhs.true22.i.free.i44_crit_edge:             ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %free.i44

lor.lhs.false28.i:                                ; preds = %land.lhs.true22.i
  %mesh_id30.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 6
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %67, ptr %mesh_id30.i, i32 %conv19.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool34.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool34.not.i, label %lor.lhs.false28.i.if.end36.i42_crit_edge, label %lor.lhs.false28.i.free.i44_crit_edge

lor.lhs.false28.i.free.i44_crit_edge:             ; preds = %lor.lhs.false28.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %free.i44

lor.lhs.false28.i.if.end36.i42_crit_edge:         ; preds = %lor.lhs.false28.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36.i42

if.end36.i42:                                     ; preds = %lor.lhs.false28.i.if.end36.i42_crit_edge, %if.end18.i40.if.end36.i42_crit_edge
  %86 = tail call i32 @llvm.read_register.i32(metadata !79) #13
  %and.i.i.i.i.i.i = and i32 %86, -16384
  %87 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %89, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !89
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i41 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i41, label %if.end36.i42.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end36.i42.rcu_read_lock.exit.i_crit_edge:      ; preds = %if.end36.i42
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end36.i42
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #13
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end36.i42.rcu_read_lock.exit.i_crit_edge
  %beacon.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 29
  %90 = ptrtoint ptr %beacon.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile ptr, ptr %beacon.i, align 4
  %call38.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %land.lhs.true40.i, label %rcu_read_lock.exit.i.do.end48.i_crit_edge

rcu_read_lock.exit.i.do.end48.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end48.i

land.lhs.true40.i:                                ; preds = %rcu_read_lock.exit.i
  %call41.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %land.lhs.true40.i.do.end48.i_crit_edge, label %land.lhs.true43.i

land.lhs.true40.i.do.end48.i_crit_edge:           ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end48.i

land.lhs.true43.i:                                ; preds = %land.lhs.true40.i
  %.b109.i = load i1, ptr @ieee80211_mesh_rx_probe_req.__warned, align 1
  br i1 %.b109.i, label %land.lhs.true43.i.do.end48.i_crit_edge, label %if.then45.i

land.lhs.true43.i.do.end48.i_crit_edge:           ; preds = %land.lhs.true43.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end48.i

if.then45.i:                                      ; preds = %land.lhs.true43.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ieee80211_mesh_rx_probe_req.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 1279, ptr noundef nonnull @.str.2) #13
  br label %do.end48.i

do.end48.i:                                       ; preds = %if.then45.i, %land.lhs.true43.i.do.end48.i_crit_edge, %land.lhs.true40.i.do.end48.i_crit_edge, %rcu_read_lock.exit.i.do.end48.i_crit_edge
  %tobool50.not.i = icmp eq ptr %91, null
  br i1 %tobool50.not.i, label %do.end48.i.out.i_crit_edge, label %if.end52.i

do.end48.i.out.i_crit_edge:                       ; preds = %do.end48.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i

if.end52.i:                                       ; preds = %do.end48.i
  %tx_headroom.i = getelementptr inbounds %struct.ieee80211_local, ptr %65, i32 0, i32 41
  %92 = ptrtoint ptr %tx_headroom.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %tx_headroom.i, align 8
  %head_len.i = getelementptr inbounds %struct.beacon_data, ptr %91, i32 0, i32 2
  %94 = ptrtoint ptr %head_len.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %head_len.i, align 4
  %add.i = add i32 %95, %93
  %tail_len.i = getelementptr inbounds %struct.beacon_data, ptr %91, i32 0, i32 3
  %96 = ptrtoint ptr %tail_len.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %tail_len.i, align 4
  %add53.i = add i32 %add.i, %97
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add53.i, i32 noundef 2592) #13
  %tobool55.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool55.not.i, label %if.end52.i.out.i_crit_edge, label %if.end57.i

if.end52.i.out.i_crit_edge:                       ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i

if.end57.i:                                       ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #15
  %98 = ptrtoint ptr %tx_headroom.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %tx_headroom.i, align 8
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %100 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i113.i = getelementptr i8, ptr %101, i32 %99
  store ptr %add.ptr.i113.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %102 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i114.i = getelementptr i8, ptr %103, i32 %99
  store ptr %add.ptr1.i114.i, ptr %tail.i.i, align 8
  %104 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %91, align 4
  %106 = ptrtoint ptr %head_len.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %head_len.i, align 4
  %call.i115.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef %107) #13
  %108 = call ptr @memcpy(ptr %call.i115.i, ptr %105, i32 %107)
  %tail.i = getelementptr inbounds %struct.beacon_data, ptr %91, i32 0, i32 1
  %109 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %tail.i, align 4
  %111 = ptrtoint ptr %tail_len.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %tail_len.i, align 4
  %call.i116.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef %112) #13
  %113 = call ptr @memcpy(ptr %call.i116.i, ptr %110, i32 %112)
  %114 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %data.i.i, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 20480, ptr %115, align 2
  %da63.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %115, i32 0, i32 2
  %sa.i43 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %3, i32 0, i32 3
  %117 = call ptr @memcpy(ptr %da63.i, ptr %sa.i43, i32 6)
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %118 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %cb.i.i, align 8
  %or.i = or i32 %119, 65536
  store i32 %or.i, ptr %cb.i.i, align 8
  tail call fastcc void @ieee80211_tx_skb(ptr noundef %sdata, ptr noundef nonnull %call.i.i.i) #13
  br label %out.i

out.i:                                            ; preds = %if.end57.i, %if.end52.i.out.i_crit_edge, %do.end48.i.out.i_crit_edge
  %call.i117.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i117.i, label %out.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i120.i

out.i.rcu_read_unlock.exit.i_crit_edge:           ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i

land.lhs.true.i120.i:                             ; preds = %out.i
  %call1.i118.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i118.i)
  %tobool.not.i119.i = icmp eq i32 %call1.i118.i, 0
  br i1 %tobool.not.i119.i, label %land.lhs.true.i120.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i122.i

land.lhs.true.i120.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i120.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i122.i:                            ; preds = %land.lhs.true.i120.i
  %.b4.i121.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i121.i, label %land.lhs.true2.i122.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i123.i

land.lhs.true2.i122.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i122.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i

if.then.i123.i:                                   ; preds = %land.lhs.true2.i122.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.18) #13
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i123.i, %land.lhs.true2.i122.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i120.i.rcu_read_unlock.exit.i_crit_edge, %out.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !90
  %120 = tail call i32 @llvm.read_register.i32(metadata !79) #13
  %and.i.i.i.i.i124.i = and i32 %120, -16384
  %121 = inttoptr i32 %and.i.i.i.i.i124.i to ptr
  %preempt_count.i.i.i.i125.i = getelementptr inbounds %struct.thread_info, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %preempt_count.i.i.i.i125.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile i32, ptr %preempt_count.i.i.i.i125.i, align 4
  %sub.i.i.i.i = add i32 %123, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i125.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %free.i44

free.i44:                                         ; preds = %rcu_read_unlock.exit.i, %lor.lhs.false28.i.free.i44_crit_edge, %land.lhs.true22.i.free.i44_crit_edge, %lor.lhs.false.i39.free.i44_crit_edge, %land.lhs.true.i38.free.i44_crit_edge, %if.end5.i.free.i44_crit_edge
  tail call void @kfree(ptr noundef nonnull %call.i110.i) #13
  br label %out

sw.bb5:                                           ; preds = %if.end
  %len6 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %124 = ptrtoint ptr %len6 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %len6, align 4
  %u.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %3, i32 0, i32 6
  %126 = ptrtoint ptr %u.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %u.i, align 2
  %128 = zext i8 %127 to i64
  call void @__sanitizer_cov_trace_switch(i64 %128, ptr @__sancov_gen_cov_switch_values.36)
  switch i8 %127, label %sw.bb5.out_crit_edge [
    i8 15, label %sw.bb.i
    i8 13, label %sw.bb5.i
    i8 0, label %sw.bb6.i
  ]

sw.bb5.out_crit_edge:                             ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

sw.bb.i:                                          ; preds = %sw.bb5
  %u2.i = getelementptr inbounds %struct.anon.11, ptr %u.i, i32 0, i32 1
  %129 = ptrtoint ptr %u2.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %u2.i, align 1
  %.off.i = add i8 %130, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 3
  br i1 %switch.i, label %sw.bb4.i, label %sw.bb.i.out_crit_edge

sw.bb.i.out_crit_edge:                            ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

sw.bb4.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mesh_rx_plink_frame(ptr noundef %sdata, ptr noundef %3, i32 noundef %125, ptr noundef %cb.i) #13
  br label %out

sw.bb5.i:                                         ; preds = %sw.bb5
  %u1.i.i = getelementptr inbounds %struct.anon.11, ptr %u.i, i32 0, i32 1
  %131 = ptrtoint ptr %u1.i.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %u1.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %132)
  %cmp.i.i45 = icmp eq i8 %132, 1
  br i1 %cmp.i.i45, label %if.then.i, label %sw.bb5.i.out_crit_edge

sw.bb5.i.out_crit_edge:                           ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then.i:                                        ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mesh_rx_path_sel_frame(ptr noundef %sdata, ptr noundef %3, i32 noundef %125) #13
  br label %out

sw.bb6.i:                                         ; preds = %sw.bb5
  %u2.i.i = getelementptr inbounds %struct.anon.11, ptr %u.i, i32 0, i32 1
  %133 = ptrtoint ptr %u2.i.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %u2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %134)
  %cmp.not.i.i = icmp eq i8 %134, 4
  br i1 %cmp.not.i.i, label %if.end.i.i, label %sw.bb6.i.out_crit_edge

sw.bb6.i.out_crit_edge:                           ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end.i.i:                                       ; preds = %sw.bb6.i
  %variable.i.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %3, i32 0, i32 6, i32 0, i32 1
  %sub.i.i = add i32 %125, -26
  %bssid.i.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %3, i32 0, i32 4
  %call.i.i.i46 = tail call ptr @ieee802_11_parse_elems_crc(ptr noundef %variable.i.i, i32 noundef %sub.i.i, i1 noundef zeroext true, i64 noundef 0, i32 noundef 0, ptr noundef %bssid.i.i, ptr noundef null) #13
  %tobool.not.i.i47 = icmp eq ptr %call.i.i.i46, null
  br i1 %tobool.not.i.i47, label %if.end.i.i.out_crit_edge, label %if.end8.i.i

if.end.i.i.out_crit_edge:                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end8.i.i:                                      ; preds = %if.end.i.i
  %call9.i.i = tail call zeroext i1 @mesh_matches_local(ptr noundef %sdata, ptr noundef nonnull %call.i.i.i46) #13
  br i1 %call9.i.i, label %if.end11.i.i, label %if.end8.i.i.free.i.i_crit_edge

if.end8.i.i.free.i.i_crit_edge:                   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %free.i.i

if.end11.i.i:                                     ; preds = %if.end8.i.i
  %mesh_chansw_params_ie.i.i = getelementptr inbounds %struct.ieee802_11_elems, ptr %call.i.i.i46, i32 0, i32 45
  %135 = ptrtoint ptr %mesh_chansw_params_ie.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %mesh_chansw_params_ie.i.i, align 4
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %136, align 1
  %chsw_ttl.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 43
  %dec.i.i = add i8 %138, -1
  %139 = ptrtoint ptr %chsw_ttl.i.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %dec.i.i, ptr %chsw_ttl.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec.i.i)
  %tobool13.not.i.i = icmp eq i8 %dec.i.i, 0
  %140 = ptrtoint ptr %mesh_chansw_params_ie.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %mesh_chansw_params_ie.i.i, align 4
  %mesh_pre_value.i.i = getelementptr inbounds %struct.ieee80211_mesh_chansw_params_ie, ptr %141, i32 0, i32 3
  %142 = ptrtoint ptr %mesh_pre_value.i.i to i32
  call void @__asan_loadN_noabort(i32 %142, i32 2)
  %143 = load i16, ptr %mesh_pre_value.i.i, align 1
  %144 = tail call i16 @llvm.bswap.i16(i16 %143) #13
  %pre_value17.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 44
  %145 = ptrtoint ptr %pre_value17.i.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %pre_value17.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %146, i16 %144)
  %cmp20.not.i.i = icmp ult i16 %146, %144
  br i1 %cmp20.not.i.i, label %if.end23.i.i, label %if.end11.i.i.free.i.i_crit_edge

if.end11.i.i.free.i.i_crit_edge:                  ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %free.i.i

if.end23.i.i:                                     ; preds = %if.end11.i.i
  %147 = ptrtoint ptr %pre_value17.i.i to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 %144, ptr %pre_value17.i.i, align 2
  %csa_active.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 4
  %148 = ptrtoint ptr %csa_active.i.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %csa_active.i.i, align 1, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool25.not.i.i = icmp eq i8 %149, 0
  br i1 %tobool25.not.i.i, label %land.lhs.true.i.i48, label %if.end23.i.i.if.end29.i.i_crit_edge

if.end23.i.i.if.end29.i.i_crit_edge:              ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.i.i

land.lhs.true.i.i48:                              ; preds = %if.end23.i.i
  %call26.i.i = tail call fastcc zeroext i1 @ieee80211_mesh_process_chnswitch(ptr noundef %sdata, ptr noundef nonnull %call.i.i.i46, i1 noundef zeroext false) #13
  br i1 %call26.i.i, label %land.lhs.true.i.i48.if.end29.i.i_crit_edge, label %if.then27.i.i

land.lhs.true.i.i48.if.end29.i.i_crit_edge:       ; preds = %land.lhs.true.i.i48
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.i.i

if.then27.i.i:                                    ; preds = %land.lhs.true.i.i48
  call void @__sanitizer_cov_trace_pc() #15
  %name.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.25, ptr noundef %name.i.i) #13
  br label %free.i.i

if.end29.i.i:                                     ; preds = %land.lhs.true.i.i48.if.end29.i.i_crit_edge, %if.end23.i.i.if.end29.i.i_crit_edge
  br i1 %tobool13.not.i.i, label %if.end29.i.i.free.i.i_crit_edge, label %if.then31.i.i

if.end29.i.i.free.i.i_crit_edge:                  ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %free.i.i

if.then31.i.i:                                    ; preds = %if.end29.i.i
  %local1.i.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %150 = ptrtoint ptr %local1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %local1.i.i.i, align 4
  %tx_headroom.i.i.i = getelementptr inbounds %struct.ieee80211_local, ptr %151, i32 0, i32 41
  %152 = ptrtoint ptr %tx_headroom.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %tx_headroom.i.i.i, align 8
  %add.i.i.i = add i32 %153, %125
  %call.i.i.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add.i.i.i, i32 noundef 2592) #13
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then35.i.i, label %mesh_fwd_csa_frame.exit.i.i

mesh_fwd_csa_frame.exit.i.i:                      ; preds = %if.then31.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %154 = ptrtoint ptr %tx_headroom.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %tx_headroom.i.i.i, align 8
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 19
  %156 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %157, i32 %155
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 16
  %158 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %159, i32 %155
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %call3.i.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i.i.i, i32 noundef %125) #13
  %160 = ptrtoint ptr %mesh_chansw_params_ie.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %mesh_chansw_params_ie.i.i, align 4
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %161, align 1
  %dec.i.i.i = add i8 %163, -1
  store i8 %dec.i.i.i, ptr %161, align 1
  %164 = load ptr, ptr %mesh_chansw_params_ie.i.i, align 4
  %mesh_flags.i.i.i = getelementptr inbounds %struct.ieee80211_mesh_chansw_params_ie, ptr %164, i32 0, i32 1
  %165 = ptrtoint ptr %mesh_flags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %mesh_flags.i.i.i, align 1
  %167 = and i8 %166, -3
  store i8 %167, ptr %mesh_flags.i.i.i, align 1
  %168 = call ptr @memcpy(ptr %call3.i.i.i, ptr %3, i32 %125)
  %da.i.i.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call3.i.i.i, i32 0, i32 2
  %169 = call ptr @memset(ptr %da.i.i.i, i32 255, i32 6)
  %sa.i.i.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call3.i.i.i, i32 0, i32 3
  %addr.i.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 2
  %170 = call ptr @memcpy(ptr %sa.i.i.i, ptr %addr.i.i.i, i32 6)
  %bssid.i.i.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call3.i.i.i, i32 0, i32 4
  %171 = call ptr @memcpy(ptr %bssid.i.i.i, ptr %addr.i.i.i, i32 6)
  tail call fastcc void @ieee80211_tx_skb(ptr noundef %sdata, ptr noundef nonnull %call.i.i.i.i.i) #13
  br label %free.i.i

if.then35.i.i:                                    ; preds = %if.then31.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %name36.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.26, ptr noundef %name36.i.i) #13
  br label %free.i.i

free.i.i:                                         ; preds = %if.then35.i.i, %mesh_fwd_csa_frame.exit.i.i, %if.end29.i.i.free.i.i_crit_edge, %if.then27.i.i, %if.end11.i.i.free.i.i_crit_edge, %if.end8.i.i.free.i.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call.i.i.i46) #13
  br label %out

out:                                              ; preds = %free.i.i, %if.end.i.i.out_crit_edge, %sw.bb6.i.out_crit_edge, %if.then.i, %sw.bb5.i.out_crit_edge, %sw.bb4.i, %sw.bb.i.out_crit_edge, %sw.bb5.out_crit_edge, %free.i44, %if.end.i27.out_crit_edge, %sw.bb3.out_crit_edge, %free.i, %if.end11.i.out_crit_edge, %if.end.i.out_crit_edge, %land.lhs.true.i.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %mtx.i) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_mesh_work(ptr noundef %sdata) local_unnamed_addr #1 align 64 {
entry:
  %bits.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mtx.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 1, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mtx.i, i32 noundef 0) #13
  %mesh_id_len = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 7
  %0 = ptrtoint ptr %mesh_id_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mesh_id_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end:                                           ; preds = %entry
  %preq_queue_len = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 22
  %2 = ptrtoint ptr %preq_queue_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %preq_queue_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %land.lhs.true

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %last_preq = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 18
  %4 = ptrtoint ptr %last_preq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_preq, align 4
  %dot11MeshHWMPpreqMinInterval = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24, i32 13
  %6 = ptrtoint ptr %dot11MeshHWMPpreqMinInterval to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %dot11MeshHWMPpreqMinInterval, align 4
  %conv = zext i16 %7 to i32
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv) #13
  %add = add i32 %call2.i, %5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then4, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mesh_path_start_discovery(ptr noundef %sdata) #13
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %wrkq_flags = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 3
  %call6 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %wrkq_flags) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end5.if.end9_crit_edge, label %if.then8

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then8:                                         ; preds = %if.end5
  %plink_timeout.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24, i32 29
  %9 = ptrtoint ptr %plink_timeout.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %plink_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not.i = icmp eq i32 %10, 0
  br i1 %cmp.not.i, label %if.then8.if.end.i39_crit_edge, label %if.then.i

if.then8.if.end.i39_crit_edge:                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i39

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  %mul.i = mul i32 %10, 100
  tail call void @ieee80211_sta_expire(ptr noundef %sdata, i32 noundef %mul.i) #13
  br label %if.end.i39

if.end.i39:                                       ; preds = %if.then.i, %if.then8.if.end.i39_crit_edge
  tail call void @mesh_path_expire(ptr noundef %sdata) #13
  %dot11MeshMaxPeerLinks.i.i.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24, i32 3
  %11 = ptrtoint ptr %dot11MeshMaxPeerLinks.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %dot11MeshMaxPeerLinks.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %12 to i32
  %estab_plinks.i.i.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 25
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %estab_plinks.i.i.i.i, i32 noundef 4) #13
  %13 = ptrtoint ptr %estab_plinks.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %estab_plinks.i.i.i.i, align 4
  %sub.i.i.i.i = sub i32 %conv.i.i.i.i, %14
  %local.i.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %15 = ptrtoint ptr %local.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %local.i.i.i, align 4
  %num_sta.i.i.i = getelementptr inbounds %struct.ieee80211_local, ptr %16, i32 0, i32 48
  %17 = ptrtoint ptr %num_sta.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_sta.i.i.i, align 8
  %sub.i.i.i = sub i32 256, %18
  %19 = tail call i32 @llvm.smin.i32(i32 %sub.i.i.i.i, i32 %sub.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp1.i.i.i = icmp sgt i32 %19, 0
  %accepting_plinks.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 27
  %20 = ptrtoint ptr %accepting_plinks.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %accepting_plinks.i.i, align 4, !range !91
  %22 = zext i1 %cmp1.i.i.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %22)
  %cmp.not.i.i = icmp eq i8 %21, %22
  br i1 %cmp.not.i.i, label %mesh_accept_plinks_update.exit.thread.i, label %if.end.i.i

mesh_accept_plinks_update.exit.thread.i:          ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bits.i.i) #13
  br label %ieee80211_mesh_housekeeping.exit

if.end.i.i:                                       ; preds = %if.end.i39
  %23 = ptrtoint ptr %accepting_plinks.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %accepting_plinks.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bits.i.i) #13
  %24 = ptrtoint ptr %bits.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 256, ptr %bits.i.i, align 4
  %call.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull %bits.i.i, i32 noundef 32, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call.i.i)
  %cmp9.i.i = icmp ult i32 %call.i.i, 32
  br i1 %cmp9.i.i, label %for.body.lr.ph.i.i, label %if.end.i.i.for.end.i.i_crit_edge

if.end.i.i.for.end.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i.i
  %mbss_changed.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %bit.010.i.i = phi i32 [ %call.i.i, %for.body.lr.ph.i.i ], [ %call1.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  call void @_set_bit(i32 noundef %bit.010.i.i, ptr noundef %mbss_changed.i.i) #13
  %add.i.i = add nuw nsw i32 %bit.010.i.i, 1
  %call1.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull %bits.i.i, i32 noundef 32, i32 noundef %add.i.i) #13
  %cmp.i.i = icmp ult i32 %call1.i.i, 32
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.for.end.i.i_crit_edge

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %if.end.i.i.for.end.i.i_crit_edge
  call void @_set_bit(i32 noundef 3, ptr noundef %wrkq_flags) #13
  %25 = ptrtoint ptr %local.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %local.i.i.i, align 4
  %work.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 40
  call void @ieee80211_queue_work(ptr noundef %26, ptr noundef %work.i.i) #13
  br label %ieee80211_mesh_housekeeping.exit

ieee80211_mesh_housekeeping.exit:                 ; preds = %for.end.i.i, %mesh_accept_plinks_update.exit.thread.i
  %u.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits.i.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %27, 6000
  %call3.i = call i32 @round_jiffies(i32 noundef %add.i) #13
  %call4.i = call i32 @mod_timer(ptr noundef %u.i, i32 noundef %call3.i) #13
  br label %if.end9

if.end9:                                          ; preds = %ieee80211_mesh_housekeeping.exit, %if.end5.if.end9_crit_edge
  %call11 = call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %wrkq_flags) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end9.if.end14_crit_edge, label %if.then13

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  call void @mesh_path_tx_root_frame(ptr noundef %sdata) #13
  %dot11MeshHWMPRootMode.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24, i32 16
  %28 = ptrtoint ptr %dot11MeshHWMPRootMode.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %dot11MeshHWMPRootMode.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %29)
  %cmp.i = icmp eq i8 %29, 4
  %dot11MeshHWMPRannInterval.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24, i32 19
  %dot11MeshHWMProotInterval.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24, i32 25
  %interval.0.in.in.i = select i1 %cmp.i, ptr %dot11MeshHWMPRannInterval.i, ptr %dot11MeshHWMProotInterval.i
  %30 = ptrtoint ptr %interval.0.in.in.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %interval.0.in.i = load i16, ptr %interval.0.in.in.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %interval.0.i = zext i16 %interval.0.in.i to i32
  %mul.i40 = shl nuw nsw i32 %interval.0.i, 10
  %call3.i.i = call i32 @__usecs_to_jiffies(i32 noundef %mul.i40) #13
  %mesh_path_root_timer.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 2
  %add.i45 = add i32 %call3.i.i, %31
  %call6.i = call i32 @round_jiffies(i32 noundef %add.i45) #13
  %call7.i = call i32 @mod_timer(ptr noundef %mesh_path_root_timer.i, i32 noundef %call6.i) #13
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end9.if.end14_crit_edge
  %call16 = call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %wrkq_flags) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end14.if.end19_crit_edge, label %if.then18

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  call void @mesh_sync_adjust_tsf(ptr noundef %sdata) #13
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end14.if.end19_crit_edge
  %call21 = call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %wrkq_flags) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end19.out_crit_edge, label %if.then23

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then23:                                        ; preds = %if.end19
  %mbss_changed.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 4
  %call.i = call i32 @_find_next_bit_be(ptr noundef %mbss_changed.i, i32 noundef 32, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call.i)
  %cmp22.i = icmp ult i32 %call.i, 32
  br i1 %cmp22.i, label %if.then23.for.body.i_crit_edge, label %if.then23.if.end8.i_crit_edge

if.then23.if.end8.i_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i

if.then23.for.body.i_crit_edge:                   ; preds = %if.then23
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then23.for.body.i_crit_edge
  %changed.024.i = phi i32 [ %or.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then23.for.body.i_crit_edge ]
  %bit.023.i = phi i32 [ %call3.i47, %for.body.i.for.body.i_crit_edge ], [ %call.i, %if.then23.for.body.i_crit_edge ]
  call void @_clear_bit(i32 noundef %bit.023.i, ptr noundef %mbss_changed.i) #13
  %shl.i = shl nuw i32 1, %bit.023.i
  %or.i = or i32 %shl.i, %changed.024.i
  %add.i46 = add nuw nsw i32 %bit.023.i, 1
  %call3.i47 = call i32 @_find_next_bit_be(ptr noundef %mbss_changed.i, i32 noundef 32, i32 noundef %add.i46) #13
  %cmp.i48 = icmp ult i32 %call3.i47, 32
  br i1 %cmp.i48, label %for.body.i.for.body.i_crit_edge, label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %enable_beacon.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 17
  %32 = ptrtoint ptr %enable_beacon.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %enable_beacon.i, align 1, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i = icmp eq i8 %33, 0
  %and.i = and i32 %or.i, 368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool4.not.i
  br i1 %or.cond.i, label %for.end.i.if.end8.i_crit_edge, label %if.then.i49

for.end.i.if.end8.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i

if.then.i49:                                      ; preds = %for.end.i
  %dep_map.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 1, i32 7, i32 5
  %call.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.then.i49.do.end.i.i_crit_edge

if.then.i49.do.end.i.i_crit_edge:                 ; preds = %if.then.i49
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i49
  %call1.i.i50 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i50)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i50, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.do.end.i.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.do.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b28.i.i = load i1, ptr @ieee80211_mesh_rebuild_beacon.__warned, align 1
  br i1 %.b28.i.i, label %land.lhs.true3.i.i.do.end.i.i_crit_edge, label %if.then.i.i51

land.lhs.true3.i.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

if.then.i.i51:                                    ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ieee80211_mesh_rebuild_beacon.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 996, ptr noundef nonnull @.str.3) #13
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i51, %land.lhs.true3.i.i.do.end.i.i_crit_edge, %land.lhs.true.i.i.do.end.i.i_crit_edge, %if.then.i49.do.end.i.i_crit_edge
  %u.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57
  %beacon.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 29
  %34 = ptrtoint ptr %beacon.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %beacon.i.i, align 4
  %call6.i.i = call fastcc i32 @ieee80211_mesh_build_beacon(ptr noundef %u.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp ne i32 %call6.i.i, 0
  %tobool10.not.i.i = icmp eq ptr %35, null
  %or.cond.i.i = select i1 %tobool7.not.i.i, i1 true, i1 %tobool10.not.i.i
  br i1 %or.cond.i.i, label %ieee80211_mesh_rebuild_beacon.exit.i, label %ieee80211_mesh_rebuild_beacon.exit.thread.i

ieee80211_mesh_rebuild_beacon.exit.thread.i:      ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %callback_head.i.i = getelementptr inbounds %struct.beacon_data, ptr %35, i32 0, i32 7
  call void @kvfree_call_rcu(ptr noundef %callback_head.i.i, ptr noundef nonnull inttoptr (i32 28 to ptr)) #13
  br label %if.end8.i

ieee80211_mesh_rebuild_beacon.exit.i:             ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool6.not.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool6.not.i, label %ieee80211_mesh_rebuild_beacon.exit.i.if.end8.i_crit_edge, label %ieee80211_mesh_rebuild_beacon.exit.i.out_crit_edge

ieee80211_mesh_rebuild_beacon.exit.i.out_crit_edge: ; preds = %ieee80211_mesh_rebuild_beacon.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

ieee80211_mesh_rebuild_beacon.exit.i.if.end8.i_crit_edge: ; preds = %ieee80211_mesh_rebuild_beacon.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i

if.end8.i:                                        ; preds = %ieee80211_mesh_rebuild_beacon.exit.i.if.end8.i_crit_edge, %ieee80211_mesh_rebuild_beacon.exit.thread.i, %for.end.i.if.end8.i_crit_edge, %if.then23.if.end8.i_crit_edge
  %changed.0.lcssa31.i = phi i32 [ %or.i, %ieee80211_mesh_rebuild_beacon.exit.thread.i ], [ %or.i, %ieee80211_mesh_rebuild_beacon.exit.i.if.end8.i_crit_edge ], [ %or.i, %for.end.i.if.end8.i_crit_edge ], [ 0, %if.then23.if.end8.i_crit_edge ]
  call void @ieee80211_bss_info_change_notify(ptr noundef %sdata, i32 noundef %changed.0.lcssa31.i) #13
  br label %out

out:                                              ; preds = %if.end8.i, %ieee80211_mesh_rebuild_beacon.exit.i.out_crit_edge, %if.end19.out_crit_edge, %entry.out_crit_edge
  call void @mutex_unlock(ptr noundef %mtx.i) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mesh_path_start_discovery(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mesh_sync_adjust_tsf(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_mesh_init_sdata(ptr noundef %sdata) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57
  tail call void @init_timer_key(ptr noundef %u, ptr noundef nonnull @ieee80211_mesh_housekeeping_timer, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull @ieee80211_mesh_init_sdata.__key) #13
  %accepting_plinks = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 27
  %0 = ptrtoint ptr %accepting_plinks to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %accepting_plinks, align 4
  %mpaths = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mpaths, i32 noundef 4) #13
  %1 = ptrtoint ptr %mpaths to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 0, ptr %mpaths, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 1028) #17
  %rmc.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 19
  %3 = ptrtoint ptr %rmc.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %rmc.i, align 8
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.mesh_rmc_init.exit_crit_edge, label %if.end.i

entry.mesh_rmc_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %mesh_rmc_init.exit

if.end.i:                                         ; preds = %entry
  %idx_mask.i = getelementptr inbounds %struct.mesh_rmc, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %idx_mask.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 255, ptr %idx_mask.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i
  %i.012.i = phi i32 [ 0, %if.end.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %5 = ptrtoint ptr %rmc.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rmc.i, align 8
  %arrayidx.i = getelementptr [256 x %struct.hlist_head], ptr %6, i32 0, i32 %i.012.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %for.body.i.mesh_rmc_init.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i.mesh_rmc_init.exit_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mesh_rmc_init.exit

mesh_rmc_init.exit:                               ; preds = %for.body.i.mesh_rmc_init.exit_crit_edge, %entry.mesh_rmc_init.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %last_preq = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 18
  %9 = ptrtoint ptr %last_preq to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %last_preq, align 4
  %10 = load volatile i32, ptr @jiffies, align 128
  %next_perr = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 17
  %11 = ptrtoint ptr %next_perr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %next_perr, align 8
  %csa_role = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 42
  %12 = ptrtoint ptr %csa_role to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %csa_role, align 4
  %.b = load i1, ptr @mesh_allocated, align 4
  br i1 %.b, label %mesh_rmc_init.exit.if.end_crit_edge, label %if.then

mesh_rmc_init.exit.if.end_crit_edge:              ; preds = %mesh_rmc_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %mesh_rmc_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @mesh_allocated, align 4
  %call.i = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null) #13
  store ptr %call.i, ptr @rm_cache, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %mesh_rmc_init.exit.if.end_crit_edge
  tail call void @mesh_pathtbl_init(ptr noundef %sdata) #13
  %mesh_path_timer = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %mesh_path_timer, ptr noundef nonnull @ieee80211_mesh_path_timer, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @ieee80211_mesh_init_sdata.__key.6) #13
  %mesh_path_root_timer = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 2
  tail call void @init_timer_key(ptr noundef %mesh_path_root_timer, ptr noundef nonnull @ieee80211_mesh_path_root_timer, i32 noundef 0, ptr noundef nonnull @.str.9, ptr noundef nonnull @ieee80211_mesh_init_sdata.__key.8) #13
  %preq_queue = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 21
  %13 = ptrtoint ptr %preq_queue to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %preq_queue, ptr %preq_queue, align 4
  %prev.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 21, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %preq_queue, ptr %prev.i, align 4
  %bc_buf = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 40, i32 1
  %lock.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 40, i32 1, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #13
  %15 = ptrtoint ptr %bc_buf to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %bc_buf, ptr %bc_buf, align 4
  %prev.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 40, i32 1, i32 0, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %bc_buf, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 40, i32 1, i32 1
  %17 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %qlen.i.i, align 4
  %mesh_preq_queue_lock = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 20
  tail call void @__raw_spin_lock_init(ptr noundef %mesh_preq_queue_lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @ieee80211_mesh_init_sdata.__key.10, i16 noundef signext 3) #13
  %sync_offset_lock = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 36
  tail call void @__raw_spin_lock_init(ptr noundef %sync_offset_lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @ieee80211_mesh_init_sdata.__key.12, i16 noundef signext 3) #13
  %beacon = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 29
  %18 = ptrtoint ptr %beacon to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr null, ptr %beacon, align 4
  %bss_conf = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1
  %19 = ptrtoint ptr %bss_conf to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @ieee80211_mesh_init_sdata.zero_addr, ptr %bss_conf, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ieee80211_mesh_housekeeping_timer(ptr noundef %t) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr i8, ptr %t, i32 -1460
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %wrkq_flags = getelementptr inbounds %struct.ieee80211_if_mesh, ptr %t, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 0, ptr noundef %wrkq_flags) #13
  %work = getelementptr i8, ptr %t, i32 -504
  tail call void @ieee80211_queue_work(ptr noundef %1, ptr noundef %work) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mesh_pathtbl_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ieee80211_mesh_path_timer(ptr noundef %t) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %local = getelementptr i8, ptr %t, i32 -1508
  %0 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local, align 4
  %work = getelementptr i8, ptr %t, i32 -552
  tail call void @ieee80211_queue_work(ptr noundef %1, ptr noundef %work) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ieee80211_mesh_path_root_timer(ptr noundef %t) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %wrkq_flags = getelementptr i8, ptr %t, i32 48
  tail call void @_set_bit(i32 noundef 1, ptr noundef %wrkq_flags) #13
  %local = getelementptr i8, ptr %t, i32 -1556
  %0 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local, align 4
  %work = getelementptr i8, ptr %t, i32 -600
  tail call void @ieee80211_queue_work(ptr noundef %1, ptr noundef %work) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_mesh_teardown_sdata(ptr noundef %sdata) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rmc1.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 19
  %0 = ptrtoint ptr %rmc1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmc1.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.mesh_rmc_free.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.mesh_rmc_free.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %mesh_rmc_free.exit

for.body.i:                                       ; preds = %for.inc22.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.043.i = phi i32 [ %inc.i, %for.inc22.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [256 x %struct.hlist_head], ptr %1, i32 0, i32 %i.043.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %tobool7.not41.i = icmp eq ptr %3, null
  br i1 %tobool7.not41.i, label %for.body.i.for.inc22.i_crit_edge, label %land.rhs.i.preheader

for.body.i.for.inc22.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc22.i

land.rhs.i.preheader:                             ; preds = %for.body.i
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %pprev2.i.i.i2 = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %pprev2.i.i.i2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pprev2.i.i.i2, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %5, ptr %7, align 4
  %tobool.not.i.i.i3 = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.i3, label %land.rhs.i.preheader.for.inc22.loopexit.critedge.i_crit_edge, label %land.rhs.i.preheader.do.body13.i.i.i_crit_edge

land.rhs.i.preheader.do.body13.i.i.i_crit_edge:   ; preds = %land.rhs.i.preheader
  br label %do.body13.i.i.i

land.rhs.i.preheader.for.inc22.loopexit.critedge.i_crit_edge: ; preds = %land.rhs.i.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc22.loopexit.critedge.i

do.body13.i.i.i:                                  ; preds = %do.body13.i.i.i.do.body13.i.i.i_crit_edge, %land.rhs.i.preheader.do.body13.i.i.i_crit_edge
  %9 = phi ptr [ %18, %do.body13.i.i.i.do.body13.i.i.i_crit_edge ], [ %7, %land.rhs.i.preheader.do.body13.i.i.i_crit_edge ]
  %pprev2.i.i.i5 = phi ptr [ %pprev14.i.i.i, %do.body13.i.i.i.do.body13.i.i.i_crit_edge ], [ %pprev2.i.i.i2, %land.rhs.i.preheader.do.body13.i.i.i_crit_edge ]
  %10 = phi ptr [ %16, %do.body13.i.i.i.do.body13.i.i.i_crit_edge ], [ %5, %land.rhs.i.preheader.do.body13.i.i.i_crit_edge ]
  %p.042.i4 = phi ptr [ %10, %do.body13.i.i.i.do.body13.i.i.i_crit_edge ], [ %3, %land.rhs.i.preheader.do.body13.i.i.i_crit_edge ]
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %pprev14.i.i.i, align 4
  %12 = ptrtoint ptr %p.042.i4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %p.042.i4, align 4
  %13 = ptrtoint ptr %pprev2.i.i.i5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i5, align 4
  %14 = load ptr, ptr @rm_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %14, ptr noundef nonnull %p.042.i4) #13
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %10, align 4
  %17 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pprev14.i.i.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %16, ptr %18, align 4
  %tobool.not.i.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i.i, label %do.body13.i.i.i.for.inc22.loopexit.critedge.i_crit_edge, label %do.body13.i.i.i.do.body13.i.i.i_crit_edge

do.body13.i.i.i.do.body13.i.i.i_crit_edge:        ; preds = %do.body13.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body13.i.i.i

do.body13.i.i.i.for.inc22.loopexit.critedge.i_crit_edge: ; preds = %do.body13.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc22.loopexit.critedge.i

for.inc22.loopexit.critedge.i:                    ; preds = %do.body13.i.i.i.for.inc22.loopexit.critedge.i_crit_edge, %land.rhs.i.preheader.for.inc22.loopexit.critedge.i_crit_edge
  %p.042.i.lcssa = phi ptr [ %3, %land.rhs.i.preheader.for.inc22.loopexit.critedge.i_crit_edge ], [ %10, %do.body13.i.i.i.for.inc22.loopexit.critedge.i_crit_edge ]
  %pprev2.i.i.i.lcssa = phi ptr [ %pprev2.i.i.i2, %land.rhs.i.preheader.for.inc22.loopexit.critedge.i_crit_edge ], [ %pprev14.i.i.i, %do.body13.i.i.i.for.inc22.loopexit.critedge.i_crit_edge ]
  %20 = ptrtoint ptr %p.042.i.lcssa to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %p.042.i.lcssa, align 4
  %21 = ptrtoint ptr %pprev2.i.i.i.lcssa to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i.lcssa, align 4
  %22 = load ptr, ptr @rm_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %22, ptr noundef nonnull %p.042.i.lcssa) #13
  br label %for.inc22.i

for.inc22.i:                                      ; preds = %for.inc22.loopexit.critedge.i, %for.body.i.for.inc22.i_crit_edge
  %inc.i = add nuw nsw i32 %i.043.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %for.end23.i, label %for.inc22.i.for.body.i_crit_edge

for.inc22.i.for.body.i_crit_edge:                 ; preds = %for.inc22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.end23.i:                                      ; preds = %for.inc22.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %1) #13
  %23 = ptrtoint ptr %rmc1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %rmc1.i, align 8
  br label %mesh_rmc_free.exit

mesh_rmc_free.exit:                               ; preds = %for.end23.i, %entry.mesh_rmc_free.exit_crit_edge
  tail call void @mesh_pathtbl_unregister(ptr noundef %sdata) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mesh_pathtbl_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_find_elem_match(i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @ieee80211_ie_len_he_cap(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_mps_set_frame_flags(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_ie_build_wide_bw_cs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_add_srates_ie(ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_add_ext_srates_ie(ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mesh_add_awake_window_ie(ptr nocapture noundef readonly %sdata, ptr noundef %skb) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ps_peers_light_sleep = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 38
  %0 = ptrtoint ptr %ps_peers_light_sleep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ps_peers_light_sleep, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ps_peers_deep_sleep = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 39
  %2 = ptrtoint ptr %ps_peers_deep_sleep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ps_peers_deep_sleep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %land.lhs.true2, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %nonpeer_pm = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 37
  %4 = ptrtoint ptr %nonpeer_pm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nonpeer_pm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp3 = icmp eq i32 %5, 1
  br i1 %cmp3, label %land.lhs.true2.cleanup_crit_edge, label %land.lhs.true2.if.end_crit_edge

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true2.cleanup_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not.i = icmp eq i32 %7, 0
  br i1 %tobool.i.not.i, label %skb_tailroom.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

skb_tailroom.exit:                                ; preds = %if.end
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %8 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.ptr.sub.i)
  %cmp4 = icmp slt i32 %sub.ptr.sub.i, 4
  br i1 %cmp4, label %skb_tailroom.exit.cleanup_crit_edge, label %if.end6

skb_tailroom.exit.cleanup_crit_edge:              ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call7 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 4) #13
  %incdec.ptr = getelementptr i8, ptr %call7, i32 1
  %12 = ptrtoint ptr %call7 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 119, ptr %call7, align 1
  %incdec.ptr8 = getelementptr i8, ptr %call7, i32 2
  %13 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 2, ptr %incdec.ptr, align 1
  %dot11MeshAwakeWindowDuration = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24, i32 28
  %14 = ptrtoint ptr %dot11MeshAwakeWindowDuration to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %dot11MeshAwakeWindowDuration, align 4
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #13
  %17 = ptrtoint ptr %incdec.ptr8 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 %16, ptr %incdec.ptr8, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %skb_tailroom.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true2.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ 0, %land.lhs.true2.cleanup_crit_edge ], [ -12, %skb_tailroom.exit.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ieee80211_mesh_update_bss_params(ptr noundef %sdata, ptr noundef %ie, i8 noundef zeroext %ie_len) unnamed_addr #1 align 64 {
entry:
  %ext_eid.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @ieee80211_get_sband(ptr noundef %sdata)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %n_iftype_data.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %call, i32 0, i32 9
  %0 = ptrtoint ptr %n_iftype_data.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %n_iftype_data.i.i, align 4
  %conv23.i.i = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp241.not.i.i = icmp eq i16 %1, 0
  br i1 %cmp241.not.i.i, label %if.end.cleanup_crit_edge, label %for.body.lr.ph.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph.i.i:                               ; preds = %if.end
  %iftype_data.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %call, i32 0, i32 10
  %2 = ptrtoint ptr %iftype_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iftype_data.i.i, align 4
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.02.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv23.i.i
  br i1 %exitcond.not.i.i, label %for.cond.i.i.cleanup_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.cond.i.i.cleanup_crit_edge:                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.02.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.ieee80211_sband_iftype_data, ptr %3, i32 %i.02.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i.i, align 4
  %6 = and i16 %5, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool28.not.i.i = icmp eq i16 %6, 0
  br i1 %tobool28.not.i.i, label %for.cond.i.i, label %ieee80211_get_sband_iftype_data.exit.i

ieee80211_get_sband_iftype_data.exit.i:           ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool.not.i, label %ieee80211_get_sband_iftype_data.exit.i.cleanup_crit_edge, label %land.lhs.true.i

ieee80211_get_sband_iftype_data.exit.i.cleanup_crit_edge: ; preds = %ieee80211_get_sband_iftype_data.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.i:                                  ; preds = %ieee80211_get_sband_iftype_data.exit.i
  %he_cap.i = getelementptr %struct.ieee80211_sband_iftype_data, ptr %3, i32 %i.02.i.i, i32 1
  %7 = ptrtoint ptr %he_cap.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %he_cap.i, align 2, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not.i = icmp eq i8 %8, 0
  %tobool2.not = icmp eq ptr %he_cap.i, null
  %or.cond = or i1 %tobool2.not, %tobool1.not.i
  br i1 %or.cond, label %land.lhs.true.i.cleanup_crit_edge, label %lor.lhs.false

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true.i
  %width = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 32, i32 1
  %9 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %width, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %10, label %if.end16 [
    i32 0, label %lor.lhs.false.cleanup_crit_edge
    i32 6, label %lor.lhs.false.cleanup_crit_edge78
    i32 7, label %lor.lhs.false.cleanup_crit_edge79
  ]

lor.lhs.false.cleanup_crit_edge79:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false.cleanup_crit_edge78:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false
  %he_support = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 5
  %12 = ptrtoint ptr %he_support to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %he_support, align 2
  %conv = zext i8 %ie_len to i32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ext_eid.addr.i)
  %13 = ptrtoint ptr %ext_eid.addr.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 36, ptr %ext_eid.addr.i, align 1
  %call.i = call ptr @cfg80211_find_elem_match(i8 noundef zeroext -1, ptr noundef %ie, i32 noundef %conv, ptr noundef nonnull %ext_eid.addr.i, i32 noundef 1, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ext_eid.addr.i)
  %tobool20.not = icmp eq ptr %call.i, null
  br i1 %tobool20.not, label %if.end16.cleanup_crit_edge, label %land.lhs.true

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end16
  %datalen = getelementptr inbounds %struct.element, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %datalen to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %datalen, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %15)
  %cmp22 = icmp ugt i8 %15, 6
  br i1 %cmp22, label %land.lhs.true24, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true24:                                  ; preds = %land.lhs.true
  %add.ptr = getelementptr %struct.element, ptr %call.i, i32 1, i32 1
  %tobool.not.i55 = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i55, label %land.lhs.true24.cleanup_crit_edge, label %ieee80211_he_oper_size.exit

land.lhs.true24.cleanup_crit_edge:                ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

ieee80211_he_oper_size.exit:                      ; preds = %land.lhs.true24
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %add.ptr, align 1
  %18 = call i32 @llvm.bswap.i32(i32 %17) #13
  %and.i = and i32 %18, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool2.not.i, i8 6, i8 9
  %and6.i = lshr i32 %18, 15
  %19 = trunc i32 %and6.i to i8
  %20 = and i8 %19, 1
  %oper_len.1.i = add nuw nsw i8 %spec.select.i, %20
  %and10.i = and i32 %18, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  %add14.i = add nuw nsw i8 %oper_len.1.i, 5
  %oper_len.2.i = select i1 %tobool11.not.i, i8 %oper_len.1.i, i8 %add14.i
  %inc17.i = add nuw nsw i8 %oper_len.2.i, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %inc17.i, i8 %15)
  %cmp29.not.not = icmp ult i8 %inc17.i, %15
  br i1 %cmp29.not.not, label %if.then37, label %ieee80211_he_oper_size.exit.cleanup_crit_edge

ieee80211_he_oper_size.exit.cleanup_crit_edge:    ; preds = %ieee80211_he_oper_size.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then37:                                        ; preds = %ieee80211_he_oper_size.exit
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %add.ptr, align 1
  %23 = call i32 @llvm.bswap.i32(i32 %22)
  %he_oper40 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 56
  %24 = ptrtoint ptr %he_oper40 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %he_oper40, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %ieee80211_he_oper_size.exit.cleanup_crit_edge, %land.lhs.true24.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge78, %lor.lhs.false.cleanup_crit_edge79, %land.lhs.true.i.cleanup_crit_edge, %ieee80211_get_sband_iftype_data.exit.i.cleanup_crit_edge, %for.cond.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_freq_khz_to_channel(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sta_info_flush(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mesh_neighbour_update(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ieee80211_mesh_process_chnswitch(ptr noundef %sdata, ptr noundef %elems, i1 noundef zeroext %beacon) unnamed_addr #1 align 64 {
entry:
  %params = alloca %struct.cfg80211_csa_settings, align 4
  %csa_ie = alloca %struct.ieee80211_csa_ie, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %params) #13
  %0 = call ptr @memset(ptr %params, i32 255, i32 192)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %csa_ie) #13
  %1 = call ptr @memset(ptr %csa_ie, i32 255, i32 40)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %entry.sdata_assert_lock.exit_crit_edge, label %land.rhs.i

entry.sdata_assert_lock.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sdata_assert_lock.exit

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 1, i32 7, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.sdata_assert_lock.exit_crit_edge, !prof !92

land.rhs.i.sdata_assert_lock.exit_crit_edge:      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sdata_assert_lock.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 1050, i32 noundef 9, ptr noundef null) #13
  br label %sdata_assert_lock.exit

sdata_assert_lock.exit:                           ; preds = %do.end.i, %land.rhs.i.sdata_assert_lock.exit_crit_edge, %entry.sdata_assert_lock.exit_crit_edge
  %call = tail call fastcc ptr @ieee80211_get_sband(ptr noundef %sdata)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %sdata_assert_lock.exit.cleanup_crit_edge, label %if.end

sdata_assert_lock.exit.cleanup_crit_edge:         ; preds = %sdata_assert_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %sdata_assert_lock.exit
  %chandef = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 32
  %width = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 32, i32 1
  %3 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %width, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %4, label %if.end.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %if.end.sw.bb1_crit_edge
    i32 2, label %if.end.sw.bb3_crit_edge
  ]

if.end.sw.bb3_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb3

if.end.sw.bb1_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb1

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb1

sw.bb1:                                           ; preds = %sw.bb, %if.end.sw.bb1_crit_edge
  %sta_flags.0 = phi i32 [ 3072, %if.end.sw.bb1_crit_edge ], [ 3088, %sw.bb ]
  br label %sw.bb3

sw.bb3:                                           ; preds = %sw.bb1, %if.end.sw.bb3_crit_edge
  %sta_flags.1 = phi i32 [ 2048, %if.end.sw.bb3_crit_edge ], [ %sta_flags.0, %sw.bb1 ]
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %if.end.sw.epilog_crit_edge
  %sta_flags.2 = phi i32 [ 0, %if.end.sw.epilog_crit_edge ], [ %sta_flags.1, %sw.bb3 ]
  %vht_cap_elem = getelementptr inbounds %struct.ieee802_11_elems, ptr %elems, i32 0, i32 18
  %6 = ptrtoint ptr %vht_cap_elem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vht_cap_elem, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %sw.epilog.if.end9_crit_edge, label %if.then6

sw.epilog.if.end9_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then6:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %7, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %sw.epilog.if.end9_crit_edge
  %vht_cap_info.0 = phi i32 [ %10, %if.then6 ], [ 0, %sw.epilog.if.end9_crit_edge ]
  %11 = call ptr @memset(ptr %params, i32 0, i32 192)
  %band = getelementptr inbounds %struct.ieee80211_supported_band, ptr %call, i32 0, i32 2
  %12 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %band, align 4
  %addr = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 2
  %call11 = call i32 @ieee80211_parse_ch_switch_ie(ptr noundef %sdata, ptr noundef %elems, i32 noundef %13, i32 noundef %vht_cap_info.0, i32 noundef %sta_flags.2, ptr noundef %addr, ptr noundef nonnull %csa_ie) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool14.not = icmp eq i32 %call11, 0
  br i1 %tobool14.not, label %if.end16, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %reason_code = getelementptr inbounds %struct.ieee80211_csa_ie, ptr %csa_ie, i32 0, i32 5
  %14 = ptrtoint ptr %reason_code to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %reason_code, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 65, i16 %15)
  %cmp17 = icmp eq i16 %15, 65
  br i1 %cmp17, label %if.then19, label %if.end16.if.end20_crit_edge

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.then19:                                        ; preds = %if.end16
  %local.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %16 = ptrtoint ptr %local.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %local.i, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wiphy.i, align 8
  %call.i = call i32 @cfg80211_chandef_dfs_required(ptr noundef %19, ptr noundef %chandef, i32 noundef 7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.then19.if.end20_crit_edge

if.then19.if.end20_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.then.i:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %local.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %local.i, align 4
  %wiphy3.i = getelementptr inbounds %struct.ieee80211_hw, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %wiphy3.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wiphy3.i, align 8
  call void @__cfg80211_radar_event(ptr noundef %23, ptr noundef %chandef, i1 noundef zeroext false, i32 noundef 2592) #13
  br label %if.end20

if.end20:                                         ; preds = %if.then.i, %if.then19.if.end20_crit_edge, %if.end16.if.end20_crit_edge
  %24 = call ptr @memcpy(ptr %params, ptr %csa_ie, i32 28)
  %count = getelementptr inbounds %struct.ieee80211_csa_ie, ptr %csa_ie, i32 0, i32 2
  %25 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %count, align 1
  %count23 = getelementptr inbounds %struct.cfg80211_csa_settings, ptr %params, i32 0, i32 9
  %27 = ptrtoint ptr %count23 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %count23, align 2
  %local = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %28 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %local, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wiphy, align 8
  %call25 = call zeroext i1 @cfg80211_chandef_usable(ptr noundef %31, ptr noundef nonnull %params, i32 noundef 1) #13
  br i1 %call25, label %lor.lhs.false, label %if.end20.if.then31_crit_edge

if.end20.if.then31_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then31

lor.lhs.false:                                    ; preds = %if.end20
  %32 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %local, align 4
  %wiphy28 = getelementptr inbounds %struct.ieee80211_hw, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %wiphy28 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wiphy28, align 8
  %call30 = call zeroext i1 @cfg80211_reg_can_beacon(ptr noundef %35, ptr noundef nonnull %params, i32 noundef 7) #13
  br i1 %call30, label %if.end41, label %lor.lhs.false.if.then31_crit_edge

lor.lhs.false.if.then31_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then31

if.then31:                                        ; preds = %lor.lhs.false.if.then31_crit_edge, %if.end20.if.then31_crit_edge
  %name = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  %36 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %params, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %center_freq, align 4
  %width38 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %params, i32 0, i32 1
  %40 = ptrtoint ptr %width38 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %width38, align 4
  %center_freq1 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %params, i32 0, i32 2
  %42 = ptrtoint ptr %center_freq1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %center_freq1, align 4
  %center_freq2 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %params, i32 0, i32 3
  %44 = ptrtoint ptr %center_freq2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %center_freq2, align 4
  call void (ptr, ...) @__sdata_info(ptr noundef nonnull @.str.21, ptr noundef %name, ptr noundef %addr, i32 noundef %39, i32 noundef %41, i32 noundef %43, i32 noundef %45) #13
  br label %cleanup

if.end41:                                         ; preds = %lor.lhs.false
  %46 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %local, align 4
  %wiphy44 = getelementptr inbounds %struct.ieee80211_hw, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %wiphy44 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %wiphy44, align 8
  %call46 = call i32 @cfg80211_chandef_dfs_required(ptr noundef %49, ptr noundef nonnull %params, i32 noundef 7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.end41.cleanup_crit_edge, label %if.end50

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end50:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp51.not = icmp eq i32 %call46, 0
  br i1 %cmp51.not, label %if.end50.if.end69_crit_edge, label %land.lhs.true

if.end50.if.end69_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

land.lhs.true:                                    ; preds = %if.end50
  %userspace_handles_dfs = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 5
  %50 = ptrtoint ptr %userspace_handles_dfs to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %userspace_handles_dfs, align 8, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool53.not = icmp eq i8 %51, 0
  br i1 %tobool53.not, label %if.then54, label %land.lhs.true.if.end69_crit_edge

land.lhs.true.if.end69_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then54:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %name55 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  %52 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %params, align 4
  %center_freq62 = getelementptr inbounds %struct.ieee80211_channel, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %center_freq62 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %center_freq62, align 4
  %width64 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %params, i32 0, i32 1
  %56 = ptrtoint ptr %width64 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %width64, align 4
  %center_freq166 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %params, i32 0, i32 2
  %58 = ptrtoint ptr %center_freq166 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %center_freq166, align 4
  %center_freq268 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %params, i32 0, i32 3
  %60 = ptrtoint ptr %center_freq268 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %center_freq268, align 4
  call void (ptr, ...) @__sdata_info(ptr noundef nonnull @.str.22, ptr noundef %name55, ptr noundef %addr, i32 noundef %55, i32 noundef %57, i32 noundef %59, i32 noundef %61) #13
  br label %cleanup

if.end69:                                         ; preds = %land.lhs.true.if.end69_crit_edge, %if.end50.if.end69_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool70 = icmp ne i32 %call46, 0
  %radar_required = getelementptr inbounds %struct.cfg80211_csa_settings, ptr %params, i32 0, i32 7
  %frombool71 = zext i1 %tobool70 to i8
  %62 = ptrtoint ptr %radar_required to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %frombool71, ptr %radar_required, align 4
  %63 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %params, align 4
  %65 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %chandef, align 4
  %cmp.i158 = icmp eq ptr %64, %66
  br i1 %cmp.i158, label %land.lhs.true.i, label %if.end69.if.end80_crit_edge

if.end69.if.end80_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80

land.lhs.true.i:                                  ; preds = %if.end69
  %width.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %params, i32 0, i32 1
  %67 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %width.i, align 4
  %69 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %70)
  %cmp3.i = icmp eq i32 %68, %70
  br i1 %cmp3.i, label %land.lhs.true4.i, label %land.lhs.true.i.if.end80_crit_edge

land.lhs.true.i.if.end80_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %center_freq1.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %params, i32 0, i32 2
  %71 = ptrtoint ptr %center_freq1.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %center_freq1.i, align 4
  %center_freq15.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 32, i32 2
  %73 = ptrtoint ptr %center_freq15.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %center_freq15.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %74)
  %cmp6.i = icmp eq i32 %72, %74
  br i1 %cmp6.i, label %land.lhs.true7.i, label %land.lhs.true4.i.if.end80_crit_edge

land.lhs.true4.i.if.end80_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80

land.lhs.true7.i:                                 ; preds = %land.lhs.true4.i
  %freq1_offset.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %params, i32 0, i32 5
  %75 = ptrtoint ptr %freq1_offset.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %freq1_offset.i, align 4
  %freq1_offset8.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 32, i32 5
  %77 = ptrtoint ptr %freq1_offset8.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %freq1_offset8.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %76, i16 %78)
  %cmp10.i = icmp eq i16 %76, %78
  br i1 %cmp10.i, label %cfg80211_chandef_identical.exit, label %land.lhs.true7.i.if.end80_crit_edge

land.lhs.true7.i.if.end80_crit_edge:              ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80

cfg80211_chandef_identical.exit:                  ; preds = %land.lhs.true7.i
  %center_freq2.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %params, i32 0, i32 3
  %79 = ptrtoint ptr %center_freq2.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %center_freq2.i, align 4
  %center_freq212.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 32, i32 3
  %81 = ptrtoint ptr %center_freq212.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %center_freq212.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %82)
  %cmp13.i = icmp eq i32 %80, %82
  br i1 %cmp13.i, label %if.then77, label %cfg80211_chandef_identical.exit.if.end80_crit_edge

cfg80211_chandef_identical.exit.if.end80_crit_edge: ; preds = %cfg80211_chandef_identical.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80

if.then77:                                        ; preds = %cfg80211_chandef_identical.exit
  call void @__sanitizer_cov_trace_pc() #15
  %name78 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.23, ptr noundef %name78) #13
  br label %cleanup

if.end80:                                         ; preds = %cfg80211_chandef_identical.exit.if.end80_crit_edge, %land.lhs.true7.i.if.end80_crit_edge, %land.lhs.true4.i.if.end80_crit_edge, %land.lhs.true.i.if.end80_crit_edge, %if.end69.if.end80_crit_edge
  %name81 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  %center_freq85 = getelementptr inbounds %struct.ieee80211_channel, ptr %64, i32 0, i32 1
  %83 = ptrtoint ptr %center_freq85 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %center_freq85, align 4
  call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.24, ptr noundef %name81, i32 noundef %84) #13
  %mode = getelementptr inbounds %struct.ieee80211_csa_ie, ptr %csa_ie, i32 0, i32 1
  %85 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %mode, align 4
  %87 = and i8 %86, 1
  %block_tx = getelementptr inbounds %struct.cfg80211_csa_settings, ptr %params, i32 0, i32 8
  %88 = ptrtoint ptr %block_tx to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %block_tx, align 1
  br i1 %beacon, label %if.then90, label %if.end80.if.end102_crit_edge

if.end80.if.end102_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end102

if.then90:                                        ; preds = %if.end80
  %ttl = getelementptr inbounds %struct.ieee80211_csa_ie, ptr %csa_ie, i32 0, i32 3
  %89 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %ttl, align 2
  %sub = add i8 %90, -1
  %chsw_ttl = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 43
  %91 = ptrtoint ptr %chsw_ttl to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %sub, ptr %chsw_ttl, align 8
  %pre_value = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 44
  %92 = ptrtoint ptr %pre_value to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %pre_value, align 2
  %pre_value94 = getelementptr inbounds %struct.ieee80211_csa_ie, ptr %csa_ie, i32 0, i32 4
  %94 = ptrtoint ptr %pre_value94 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %pre_value94, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %93, i16 %95)
  %cmp96.not = icmp ult i16 %93, %95
  br i1 %cmp96.not, label %if.end99, label %if.then90.cleanup_crit_edge

if.then90.cleanup_crit_edge:                      ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end99:                                         ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #15
  %96 = ptrtoint ptr %pre_value to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %95, ptr %pre_value, align 2
  br label %if.end102

if.end102:                                        ; preds = %if.end99, %if.end80.if.end102_crit_edge
  %chsw_ttl103 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 43
  %97 = ptrtoint ptr %chsw_ttl103 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %chsw_ttl103, align 8
  %dot11MeshTTL = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24, i32 5
  %99 = ptrtoint ptr %dot11MeshTTL to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %dot11MeshTTL, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %98, i8 %100)
  %cmp106.not = icmp ult i8 %98, %100
  br i1 %cmp106.not, label %if.end109, label %if.end102.cleanup_crit_edge

if.end102.cleanup_crit_edge:                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end109:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #15
  %csa_role = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 42
  %101 = ptrtoint ptr %csa_role to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 2, ptr %csa_role, align 4
  %102 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %local, align 4
  %wiphy112 = getelementptr inbounds %struct.ieee80211_hw, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %wiphy112 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %wiphy112, align 8
  %dev = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 6
  %106 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev, align 8
  %call113 = call i32 @ieee80211_channel_switch(ptr noundef %105, ptr noundef %107, ptr noundef nonnull %params) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call113)
  %cmp114 = icmp sgt i32 %call113, -1
  br label %cleanup

cleanup:                                          ; preds = %if.end109, %if.end102.cleanup_crit_edge, %if.then90.cleanup_crit_edge, %if.then77, %if.then54, %if.end41.cleanup_crit_edge, %if.then31, %if.end9.cleanup_crit_edge, %sdata_assert_lock.exit.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.then77 ], [ false, %if.then54 ], [ false, %if.then31 ], [ false, %sdata_assert_lock.exit.cleanup_crit_edge ], [ false, %if.end9.cleanup_crit_edge ], [ false, %if.end41.cleanup_crit_edge ], [ false, %if.then90.cleanup_crit_edge ], [ false, %if.end102.cleanup_crit_edge ], [ %cmp114, %if.end109 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %csa_ie) #13
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %params) #13
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee802_11_parse_elems_crc(ptr noundef, i32 noundef, i1 noundef zeroext, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_channel_to_freq_khz(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_get_channel_khz(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_parse_ch_switch_ie(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfg80211_chandef_usable(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfg80211_reg_can_beacon(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sdata_info(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_chandef_dfs_required(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_channel_switch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cfg80211_radar_event(ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ieee80211_tx_skb(ptr noundef %sdata, ptr noundef %skb) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = tail call i32 @llvm.read_register.i32(metadata !79) #13
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !89
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #13
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %chanctx_conf1.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 9
  %4 = ptrtoint ptr %chanctx_conf1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %chanctx_conf1.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end8.i_crit_edge

rcu_read_lock.exit.i.do.end8.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end8.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.do.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b1.i = load i1, ptr @ieee80211_tx_skb_tid.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true5.i.do.end8.i_crit_edge, label %if.then.i

land.lhs.true5.i.do.end8.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8.i

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ieee80211_tx_skb_tid.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 2199, ptr noundef nonnull @.str.2) #13
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then.i, %land.lhs.true5.i.do.end8.i_crit_edge, %land.lhs.true.i.do.end8.i_crit_edge, %rcu_read_lock.exit.i.do.end8.i_crit_edge
  %tobool10.not.i = icmp eq ptr %5, null
  br i1 %tobool10.not.i, label %do.end23.i, label %if.end39.i, !prof !92

do.end23.i:                                       ; preds = %do.end8.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 2200, i32 noundef 9, ptr noundef null) #13
  %call.i1 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i1, label %do.end23.i.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i3

do.end23.i.rcu_read_unlock.exit_crit_edge:        ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i3:                                 ; preds = %do.end23.i
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i2 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i2, label %land.lhs.true.i3.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i3.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i3
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i3
  %.b4.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, label %if.then.i4

land.lhs.true2.i.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i4:                                       ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.18) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i4, %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i3.rcu_read_unlock.exit_crit_edge, %do.end23.i.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !90
  %6 = tail call i32 @llvm.read_register.i32(metadata !79) #13
  %and.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #13
  br label %ieee80211_tx_skb_tid.exit

if.end39.i:                                       ; preds = %do.end8.i
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  tail call void @__ieee80211_tx_skb_tid_band(ptr noundef %sdata, ptr noundef %skb, i32 noundef 7, i32 noundef %13) #13
  %call.i2.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i2.i, label %if.end39.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i5.i

if.end39.i.rcu_read_unlock.exit.i_crit_edge:      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i

land.lhs.true.i5.i:                               ; preds = %if.end39.i
  %call1.i3.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3.i)
  %tobool.not.i4.i = icmp eq i32 %call1.i3.i, 0
  br i1 %tobool.not.i4.i, label %land.lhs.true.i5.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i7.i

land.lhs.true.i5.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i7.i:                              ; preds = %land.lhs.true.i5.i
  %.b4.i6.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6.i, label %land.lhs.true2.i7.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i8.i

land.lhs.true2.i7.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i

if.then.i8.i:                                     ; preds = %land.lhs.true2.i7.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.18) #13
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i8.i, %land.lhs.true2.i7.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i5.i.rcu_read_unlock.exit.i_crit_edge, %if.end39.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !90
  %14 = tail call i32 @llvm.read_register.i32(metadata !79) #13
  %and.i.i.i.i.i9.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i9.i to ptr
  %preempt_count.i.i.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i10.i, align 4
  %sub.i.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i10.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %ieee80211_tx_skb_tid.exit

ieee80211_tx_skb_tid.exit:                        ; preds = %rcu_read_unlock.exit.i, %rcu_read_unlock.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ieee80211_tx_skb_tid_band(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mesh_rx_plink_frame(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mesh_rx_path_sel_frame(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sta_expire(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mesh_path_expire(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mesh_path_tx_root_frame(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nobuiltin }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !11, !13, !15, !17, !19, !21, !22, !24, !25, !27, !28, !30, !31, !33, !34, !36, !38, !40, !41, !43, !45, !46, !47, !49, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78}
!llvm.named.register.sp = !{!79}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/mac80211/mesh.c", i32 27, i32 31}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../net/mac80211/mesh.c", i32 457, i32 17}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../net/mac80211/mesh.c", i32 529, i32 17}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../net/mac80211/mesh.c", i32 1086, i32 8}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = distinct !{null, !12, !"__warned", i1 false, i1 false}
!12 = !{!"../net/mac80211/mesh.c", i32 1382, i32 21}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/mac80211/mesh.c", i32 1393, i32 2}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../net/mac80211/mesh.c", i32 1419, i32 22}
!17 = !{ptr @ieee80211_mesh_init_sdata.zero_addr, !18, !"zero_addr", i1 false, i1 false}
!18 = !{!"../net/mac80211/mesh.c", i32 1620, i32 12}
!19 = !{ptr @ieee80211_mesh_init_sdata.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../net/mac80211/mesh.c", i32 1622, i32 2}
!21 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ieee80211_mesh_init_sdata.__key.6, !23, !"__key", i1 false, i1 false}
!23 = !{!"../net/mac80211/mesh.c", i32 1637, i32 2}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @ieee80211_mesh_init_sdata.__key.8, !26, !"__key", i1 false, i1 false}
!26 = !{!"../net/mac80211/mesh.c", i32 1638, i32 2}
!27 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ieee80211_mesh_init_sdata.__key.10, !29, !"__key", i1 false, i1 false}
!29 = !{!"../net/mac80211/mesh.c", i32 1642, i32 2}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @ieee80211_mesh_init_sdata.__key.12, !32, !"__key", i1 false, i1 false}
!32 = !{!"../net/mac80211/mesh.c", i32 1643, i32 2}
!33 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !35, !"mesh_allocated", i1 false, i1 false}
!35 = !{!"../net/mac80211/mesh.c", i32 15, i32 12}
!36 = !{ptr @rm_cache, !37, !"rm_cache", i1 false, i1 false}
!37 = !{!"../net/mac80211/mesh.c", i32 16, i32 27}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../net/mac80211/ieee80211_i.h", i32 1505, i32 17}
!40 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../include/net/cfg80211.h", i32 5969, i32 6}
!43 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!44 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!45 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!47 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!48 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!49 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!50 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!51 = !{!"../net/mac80211/mesh.c", i32 822, i32 17}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../net/mac80211/mesh.c", i32 884, i32 8}
!54 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!55 = !{!"../net/mac80211/mesh.c", i32 401, i32 17}
!56 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!57 = !{!"../net/mac80211/mesh.c", i32 995, i32 12}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/mac80211/mesh.c", i32 1350, i32 3}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../net/mac80211/mesh.c", i32 1182, i32 3}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../net/mac80211/mesh.c", i32 1198, i32 3}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../net/mac80211/mesh.c", i32 1212, i32 3}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../net/mac80211/mesh.c", i32 1217, i32 2}
!68 = distinct !{null, !69, !"__warned", i1 false, i1 false}
!69 = !{!"../net/mac80211/mesh.c", i32 1279, i32 8}
!70 = distinct !{null, !71, !"__warned", i1 false, i1 false}
!71 = !{!"../net/mac80211/ieee80211_i.h", i32 2199, i32 17}
!72 = !{ptr @.str.25, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../net/mac80211/mesh.c", i32 1492, i32 3}
!74 = !{ptr @.str.26, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../net/mac80211/mesh.c", i32 1499, i32 4}
!76 = !{ptr @skb_queue_head_init.__key, !77, !"__key", i1 false, i1 false}
!77 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!78 = !{ptr @.str.27, !77, !"<string literal>", i1 false, i1 false}
!79 = !{!"sp"}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{i64 2149961910}
!90 = !{i64 2149962176}
!91 = !{i8 0, i8 2}
!92 = !{!"branch_weights", i32 1, i32 2000}
!93 = !{i64 2148625039, i64 2148625065, i64 2148625094, i64 2148625128, i64 2148625159, i64 2148625182}
!94 = !{i64 2161414063}
!95 = !{i64 2148627504, i64 2148627530, i64 2148627559, i64 2148627593, i64 2148627624, i64 2148627647}
!96 = !{i64 2161445924}
