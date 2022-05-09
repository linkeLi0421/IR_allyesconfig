; ModuleID = '/llk/IR_all_yes/net/mac80211/mesh_plink.c_pt.bc'
source_filename = "../net/mac80211/mesh_plink.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sta_info = type { %struct.list_head, %struct.list_head, %struct.callback_head, %struct.rhlist_head, [6 x i8], ptr, ptr, [8 x ptr], [4 x ptr], i8, ptr, ptr, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.work_struct, i16, i8, i8, i8, i32, i32, %struct.spinlock, [4 x %struct.sk_buff_head], [4 x %struct.sk_buff_head], i32, i32, i64, i32, %struct.ieee80211_sta_rx_stats, %struct.anon.192, [17 x i16], %struct.anon.193, %struct.anon.194, [16 x i16], [4 x %struct.airtime_info], %struct.sta_ampdu_mlme, ptr, i32, i32, ptr, %struct.codel_params, i8, %struct.cfg80211_chan_def, %struct.ieee80211_fragment_cache, %struct.ieee80211_sta }
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
%struct.anon.192 = type { %struct.ewma_signal, [4 x %struct.ewma_signal] }
%struct.ewma_signal = type { i32 }
%struct.anon.193 = type { i32, i32, i32, i32, i32, [17 x i64], [17 x i64], i32, i8, i8, %struct.ewma_avg_signal }
%struct.ewma_avg_signal = type { i32 }
%struct.anon.194 = type { [4 x i64], [4 x i64], %struct.ieee80211_tx_rate, %struct.rate_info, [17 x i64] }
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
%struct.mesh_sta = type { %struct.timer_list, ptr, i64, i64, %struct.spinlock, i16, i16, i16, i16, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.ewma_mesh_fail_avg, %struct.ewma_mesh_tx_rate_avg }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.ewma_mesh_fail_avg = type { i32 }
%struct.ewma_mesh_tx_rate_avg = type { i32 }
%struct.ieee80211_sub_if_data = type { %struct.list_head, %struct.wireless_dev, %struct.list_head, i32, i32, %struct.delayed_work, ptr, ptr, i32, i32, [16 x i8], %struct.ieee80211_fragment_cache, i16, i8, [8 x ptr], ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8, i32, %struct.atomic_t, [4 x %struct.ieee80211_tx_queue_params], ptr, [4 x %struct.airtime_info], %struct.work_struct, i8, %struct.cfg80211_chan_def, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.cfg80211_chan_def, i8, i8, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, i8, i32, i32, i32, i8, %struct.delayed_work, ptr, [6 x i32], [6 x i8], [6 x [10 x i8]], [6 x i8], [6 x [8 x i16]], [6 x i32], i8, %union.anon.157, %struct.anon.191, %struct.ieee80211_vif }
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
%struct.ieee80211_local = type { %struct.ieee80211_hw, %struct.fq, ptr, %struct.codel_params, [4 x %struct.airtime_sched_info], i16, i32, %struct.atomic_t, ptr, ptr, [16 x i32], [16 x [11 x i32]], %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i8, i8, %struct.spinlock, %struct.work_struct, %struct.netdev_hw_addr_list, i8, i8, i8, i8, i8, i8, i8, i8, %struct.work_struct, i8, i8, i32, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.mutex, %struct.spinlock, i32, %struct.list_head, %struct.rhltable, %struct.timer_list, i32, [16 x %struct.sk_buff_head], %struct.tasklet_struct, %struct.tasklet_struct, [16 x %struct.atomic_t], %struct.atomic_t, ptr, %struct.arc4_ctx, %struct.arc4_ctx, i32, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.mutex, i32, %struct.cfg80211_ssid, ptr, ptr, ptr, %struct.cfg80211_chan_def, i32, i32, i32, i32, %struct.cfg80211_scan_info, %struct.work_struct, ptr, ptr, [6 x i8], i32, i32, %struct.delayed_work, ptr, %struct.cfg80211_chan_def, ptr, %struct.list_head, %struct.mutex, %struct.led_trigger, %struct.led_trigger, %struct.led_trigger, %struct.led_trigger, %struct.led_trigger, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, %struct.work_struct, %struct.work_struct, %struct.timer_list, %struct.notifier_block, %struct.notifier_block, i32, i32, i32, %struct.work_struct, %struct.local_debugfsdentries, i8, %struct.delayed_work, %struct.list_head, %struct.work_struct, %struct.work_struct, i32, i64, %struct.idr, %struct.spinlock, ptr, ptr, %struct.cfg80211_chan_def, [8 x i8] }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.128 = type { i32, i16 }
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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.158 }
%union.anon.158 = type { %struct.anon.164, [16 x i8] }
%struct.anon.164 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.anon.171 = type { i8, %union.anon.172 }
%union.anon.172 = type <{ %struct.anon.177, [17 x i8] }>
%struct.anon.177 = type { i8, i8, i16, i16, i16, [0 x i8] }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ieee802_11_elems = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [8 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i8, i8 }
%struct.ieee80211_meshconf_ie = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.ieee80211_rx_status = type <{ i64, i64, i32, i32, i32, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, [2 x i8] }>
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
%struct.ieee80211_ht_operation = type { i8, i8, i16, i16, [16 x i8] }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s: Ignoring timer for %pM in state %s (timer adjusted)\00", [40 x i8] zeroinitializer }, align 32
@mplstates = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: Ignoring timer for %pM in state %s (timer deleted)\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: Mesh plink timer for %pM fired on state %s\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: Mesh plink for %pM (retry, timeout): %d %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: Mesh plink: starting establishment with %pM\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: Mesh plink: ignore frame from multicast address\0A\00", [43 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"net/mac80211/mesh_plink.c\00", [38 x i8] zeroinitializer }, align 32
@ieee80211_get_sband.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"net/mac80211/ieee80211_i.h\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@ieee80211_tx_skb_tid.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mesh_allocate_aid.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sta_info_pre_move_state.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/mac80211/sta_info.h\00", [40 x i8] zeroinitializer }, align 32
@sta_info_pre_move_state.__already_done.13 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LISTEN\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"OPN-SNT\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OPN-RCVD\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CNF_RCVD\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ESTAB\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HOLDING\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"BLOCKED\00", [24 x i8] zeroinitializer }, align 32
@llid_in_use.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: Mesh plink: missing necessary peer link ie\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: Mesh plink: can't establish link with secure peer\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: Mesh plink: incorrect plink ie length %d %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: Mesh plink: missing necessary ie\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: Mesh plink: %pM does not meet rssi threshold\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: Mesh plink: failed to init peer!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: Mesh plink: cls or cnf from unknown peer\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: Mesh plink error: no more free plinks\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: Mesh plink: Action frame from non-authed peer\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Mesh plink: unknown frame subtype\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: peer %pM in state %s got event %s\0A\00", [57 x i8] zeroinitializer }, align 32
@mplevents = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], [60 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NONE\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OPN_ACPT\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OPN_RJCT\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OPN_IGNR\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CNF_ACPT\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CNF_RJCT\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CNF_IGNR\00", [23 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CLS_ACPT\00", [23 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CLS_IGNR\00", [23 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Mesh plink with %pM ESTABLISHED\0A\00", [59 x i8] zeroinitializer }, align 32
@mesh_set_ht_prot_mode.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.43 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: nonHT sta (%pM) is present\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: HT20 sta (%pM) is present\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: selected new HT protection mode %d\0A\00", [56 x i8] zeroinitializer }, align 32
@mesh_set_short_slot_time.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.46 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: mesh_plink %pM: ERP short slot time %d\0A\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 6]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.49 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 8]
@__sancov_gen_cov_switch_values.51 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.52 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 7]
@__sancov_gen_cov_switch_values.54 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 5, i64 7]
@__sancov_gen_cov_switch_values.55 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 5, i64 7]
@__sancov_gen_cov_switch_values.56 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 5, i64 7]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 7]
@__sancov_gen_cov_switch_values.58 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 5, i64 7]
@__sancov_gen_cov_switch_values.59 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 6, i64 7]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 661, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [10 x i8] c"mplstates\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 35, i32 27 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 671, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 678, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 690, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 783, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 1216, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 366, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant [30 x i8] c"../net/mac80211/ieee80211_i.h\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 1505, i32 17 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 695, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 487, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [27 x i8] c"../net/mac80211/sta_info.h\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 742, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 723, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 36, i32 27 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 37, i32 28 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 38, i32 29 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 39, i32 29 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 40, i32 26 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 41, i32 28 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 42, i32 28 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 1112, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 1119, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 1129, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 1137, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 1155, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 1168, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 1028, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 1033, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 1042, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 1089, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 855, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant [10 x i8] c"mplevents\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 45, i32 27 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 46, i32 22 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 47, i32 15 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 48, i32 15 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 49, i32 15 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 50, i32 15 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 51, i32 15 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 52, i32 15 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 53, i32 15 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 54, i32 15 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 832, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 182, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 188, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 206, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.203 = private constant [29 x i8] c"../net/mac80211/mesh_plink.c\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 139, i32 3 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @.str, ptr @mplstates, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @mplevents, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mplstates to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mplevents to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mesh_plink_deactivate(ptr noundef %sta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sdata1 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 6
  %0 = ptrtoint ptr %sdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdata1, align 4
  %mesh = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 17
  %2 = ptrtoint ptr %mesh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mesh, align 8
  %plink_lock = getelementptr inbounds %struct.mesh_sta, ptr %3, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %plink_lock) #9
  %call = tail call fastcc i32 @__mesh_plink_deactivate(ptr noundef %sta)
  %user_mpm = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 33
  %4 = ptrtoint ptr %user_mpm to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %user_mpm, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %mesh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mesh, align 8
  %reason = getelementptr inbounds %struct.mesh_sta, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %reason to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 52, ptr %reason, align 2
  %addr = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 1
  %9 = load ptr, ptr %mesh, align 8
  %llid = getelementptr inbounds %struct.mesh_sta, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %llid to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %llid, align 4
  %plid = getelementptr inbounds %struct.mesh_sta, ptr %9, i32 0, i32 6
  %12 = ptrtoint ptr %plid to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %plid, align 2
  %reason7 = getelementptr inbounds %struct.mesh_sta, ptr %9, i32 0, i32 8
  %14 = ptrtoint ptr %reason7 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %reason7, align 2
  tail call fastcc void @mesh_plink_frame_tx(ptr noundef %1, ptr noundef %sta, i32 noundef 3, ptr noundef %addr, i16 noundef zeroext %11, i16 noundef zeroext %13, i16 noundef zeroext %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %16 = ptrtoint ptr %mesh to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mesh, align 8
  %plink_lock10 = getelementptr inbounds %struct.mesh_sta, ptr %17, i32 0, i32 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %plink_lock10) #9
  %18 = ptrtoint ptr %user_mpm to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %user_mpm, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool13.not = icmp eq i8 %19, 0
  br i1 %tobool13.not, label %if.then14, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %mesh to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mesh, align 8
  %call16 = tail call i32 @del_timer_sync(ptr noundef %21) #9
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end.if.end17_crit_edge
  tail call void @mesh_path_flush_by_nexthop(ptr noundef %sta) #9
  tail call void @synchronize_net() #9
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__mesh_plink_deactivate(ptr noundef %sta) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sdata1 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 6
  %0 = ptrtoint ptr %sdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdata1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %mesh = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 17
  %3 = ptrtoint ptr %mesh to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mesh, align 8
  %dep_map = getelementptr inbounds %struct.mesh_sta, ptr %4, i32 0, i32 4, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !120

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 366, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %mesh25 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 17
  %5 = ptrtoint ptr %mesh25 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mesh25, align 8
  %plink_state = getelementptr inbounds %struct.mesh_sta, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %plink_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %plink_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp26 = icmp eq i32 %8, 4
  br i1 %cmp26, label %if.then27, label %if.end.if.end29_crit_edge

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %estab_plinks.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 25
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %estab_plinks.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %estab_plinks.i, i32 1, i32 3, i32 1) #9
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %estab_plinks.i, ptr %estab_plinks.i, i32 1, ptr elementtype(i32) %estab_plinks.i) #9, !srcloc !121
  %call.i40 = tail call i32 @mesh_accept_plinks_update(ptr noundef %1) #9
  %or.i = or i32 %call.i40, 256
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end.if.end29_crit_edge
  %changed.0 = phi i32 [ %or.i, %if.then27 ], [ 0, %if.end.if.end29_crit_edge ]
  %10 = ptrtoint ptr %mesh25 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mesh25, align 8
  %plink_state31 = getelementptr inbounds %struct.mesh_sta, ptr %11, i32 0, i32 13
  %12 = ptrtoint ptr %plink_state31 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 6, ptr %plink_state31, align 8
  tail call void @ieee80211_mps_sta_status_update(ptr noundef %sta) #9
  %call32 = tail call i32 @ieee80211_mps_set_sta_local_pm(ptr noundef %sta, i32 noundef 0) #9
  %or = or i32 %call32, %changed.0
  ret i32 %or
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mesh_plink_frame_tx(ptr noundef %sdata, ptr nocapture noundef readonly %sta, i32 noundef %action, ptr nocapture noundef readonly %da, i16 noundef zeroext %llid, i16 noundef zeroext %plid, i16 noundef zeroext %reason) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %call = tail call zeroext i8 @ieee80211_ie_len_he_cap(ptr noundef %sdata, i8 noundef zeroext 7) #9
  %tx_headroom = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 41
  %2 = ptrtoint ptr %tx_headroom to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_headroom, align 8
  %mesh_id_len = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 7
  %4 = ptrtoint ptr %mesh_id_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mesh_id_len, align 4
  %conv = zext i8 %call to i32
  %ie_len31 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 31
  %6 = ptrtoint ptr %ie_len31 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ie_len31, align 4
  %conv32 = zext i8 %7 to i32
  %add19 = add i32 %3, 179
  %add20 = add i32 %add19, %conv
  %add29 = add i32 %add20, %5
  %add33 = add i32 %add29, %conv32
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add33, i32 noundef 2592) #9
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup170_crit_edge, label %if.end

entry.cleanup170_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup170

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %tx_headroom to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_headroom, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %9
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %12 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %13, i32 %9
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 26) #9
  %14 = getelementptr inbounds i8, ptr %call.i, i32 2
  %15 = call ptr @memset(ptr %14, i32 0, i32 24)
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -12288, ptr %call.i, align 2
  %da38 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i, i32 0, i32 2
  %17 = call ptr @memcpy(ptr %da38, ptr %da, i32 6)
  %sa = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i, i32 0, i32 3
  %addr = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 2
  %18 = call ptr @memcpy(ptr %sa, ptr %addr, i32 6)
  %bssid = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i, i32 0, i32 4
  %19 = call ptr @memcpy(ptr %bssid, ptr %addr, i32 6)
  %u45 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i, i32 0, i32 6
  %20 = ptrtoint ptr %u45 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 15, ptr %u45, align 2
  %conv46 = trunc i32 %action to i8
  %u48 = getelementptr inbounds %struct.anon.171, ptr %u45, i32 0, i32 1
  %21 = ptrtoint ptr %u48 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv46, ptr %u48, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %action)
  %cmp.not = icmp eq i32 %action, 3
  br i1 %cmp.not, label %if.else, label %if.then50

if.then50:                                        ; preds = %if.end
  %call51 = tail call fastcc ptr @ieee80211_get_sband(ptr noundef %sdata)
  %tobool52.not = icmp eq ptr %call51, null
  br i1 %tobool52.not, label %if.then50.free_crit_edge, label %if.end54

if.then50.free_crit_edge:                         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #11
  br label %free

if.end54:                                         ; preds = %if.then50
  %band55 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %call51, i32 0, i32 2
  %22 = ptrtoint ptr %band55 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %band55, align 4
  %call.i3 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 2) #9
  %24 = ptrtoint ptr %call.i3 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 0, ptr %call.i3, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %action)
  %cmp57 = icmp eq i32 %action, 2
  br i1 %cmp57, label %if.then59, label %if.end54.if.end62_crit_edge

if.end54.if.end62_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.then59:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %call60 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 2) #9
  %aid = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 2
  %25 = ptrtoint ptr %aid to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %aid, align 2
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #9
  %28 = ptrtoint ptr %call60 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 %27, ptr %call60, align 1
  br label %if.end62

if.end62:                                         ; preds = %if.then59, %if.end54.if.end62_crit_edge
  %call63 = tail call i32 @ieee80211_add_srates_ie(ptr noundef %sdata, ptr noundef nonnull %call.i.i, i1 noundef zeroext true, i32 noundef %23) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %lor.lhs.false, label %if.end62.free_crit_edge

if.end62.free_crit_edge:                          ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %free

lor.lhs.false:                                    ; preds = %if.end62
  %call65 = tail call i32 @ieee80211_add_ext_srates_ie(ptr noundef %sdata, ptr noundef nonnull %call.i.i, i1 noundef zeroext true, i32 noundef %23) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %lor.lhs.false67, label %lor.lhs.false.free_crit_edge

lor.lhs.false.free_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %free

lor.lhs.false67:                                  ; preds = %lor.lhs.false
  %call68 = tail call i32 @mesh_add_rsn_ie(ptr noundef %sdata, ptr noundef nonnull %call.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %lor.lhs.false70, label %lor.lhs.false67.free_crit_edge

lor.lhs.false67.free_crit_edge:                   ; preds = %lor.lhs.false67
  call void @__sanitizer_cov_trace_pc() #11
  br label %free

lor.lhs.false70:                                  ; preds = %lor.lhs.false67
  %call71 = tail call i32 @mesh_add_meshid_ie(ptr noundef %sdata, ptr noundef nonnull %call.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %lor.lhs.false73, label %lor.lhs.false70.free_crit_edge

lor.lhs.false70.free_crit_edge:                   ; preds = %lor.lhs.false70
  call void @__sanitizer_cov_trace_pc() #11
  br label %free

lor.lhs.false73:                                  ; preds = %lor.lhs.false70
  %call74 = tail call i32 @mesh_add_meshconf_ie(ptr noundef %sdata, ptr noundef nonnull %call.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end83, label %lor.lhs.false73.free_crit_edge

lor.lhs.false73.free_crit_edge:                   ; preds = %lor.lhs.false73
  call void @__sanitizer_cov_trace_pc() #11
  br label %free

if.else:                                          ; preds = %if.end
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %29 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cb.i, align 8
  %or = or i32 %30, 4
  store i32 %or, ptr %cb.i, align 8
  %call79 = tail call i32 @mesh_add_meshid_ie(ptr noundef %sdata, ptr noundef nonnull %call.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %sw.bb87, label %if.else.free_crit_edge

if.else.free_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %free

if.end83:                                         ; preds = %lor.lhs.false73
  %31 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values)
  switch i32 %action, label %if.end83.free_crit_edge [
    i32 1, label %if.end83.sw.epilog_crit_edge
    i32 2, label %sw.bb
  ]

if.end83.sw.epilog_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end83.free_crit_edge:                          ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  br label %free

sw.bb:                                            ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb87:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %plid)
  %tobool88.not = icmp eq i16 %plid, 0
  %spec.select = select i1 %tobool88.not, i8 6, i8 8
  %32 = xor i1 %tobool88.not, true
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb87, %sw.bb, %if.end83.sw.epilog_crit_edge
  %include_plid.1.off0 = phi i1 [ %32, %sw.bb87 ], [ true, %sw.bb ], [ false, %if.end83.sw.epilog_crit_edge ]
  %ie_len.1 = phi i8 [ %spec.select, %sw.bb87 ], [ 6, %sw.bb ], [ 4, %if.end83.sw.epilog_crit_edge ]
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %33 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.i.not.i = icmp eq i32 %34, 0
  br i1 %tobool.i.not.i, label %skb_tailroom.exit, label %sw.epilog.do.end_crit_edge

sw.epilog.do.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

skb_tailroom.exit:                                ; preds = %sw.epilog
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 17
  %35 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %end.i, align 4
  %37 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %36 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %38 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %narrow = add nuw nsw i8 %ie_len.1, 2
  %add99 = zext i8 %narrow to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %add99)
  %cmp100 = icmp slt i32 %sub.ptr.sub.i, %add99
  br i1 %cmp100, label %skb_tailroom.exit.do.end_crit_edge, label %if.end125.critedge, !prof !120

skb_tailroom.exit.do.end_crit_edge:               ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %skb_tailroom.exit.do.end_crit_edge, %sw.epilog.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 309, i32 noundef 9, ptr noundef null) #9
  br label %free

if.end125.critedge:                               ; preds = %skb_tailroom.exit
  %call128 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %add99) #9
  %incdec.ptr = getelementptr i8, ptr %call128, i32 1
  %39 = ptrtoint ptr %call128 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 117, ptr %call128, align 1
  %incdec.ptr129 = getelementptr i8, ptr %call128, i32 2
  %40 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %ie_len.1, ptr %incdec.ptr, align 1
  %41 = ptrtoint ptr %incdec.ptr129 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 0, ptr %incdec.ptr129, align 1
  %add.ptr = getelementptr i8, ptr %call128, i32 4
  %42 = tail call i16 @llvm.bswap.i16(i16 %llid) #9
  %43 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %43, i32 2)
  store i16 %42, ptr %add.ptr, align 1
  %add.ptr130 = getelementptr i8, ptr %call128, i32 6
  br i1 %include_plid.1.off0, label %if.then132, label %if.end125.critedge.if.end134_crit_edge

if.end125.critedge.if.end134_crit_edge:           ; preds = %if.end125.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end134

if.then132:                                       ; preds = %if.end125.critedge
  call void @__sanitizer_cov_trace_pc() #11
  %44 = tail call i16 @llvm.bswap.i16(i16 %plid) #9
  %45 = ptrtoint ptr %add.ptr130 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 2)
  store i16 %44, ptr %add.ptr130, align 1
  %add.ptr133 = getelementptr i8, ptr %call128, i32 8
  br label %if.end134

if.end134:                                        ; preds = %if.then132, %if.end125.critedge.if.end134_crit_edge
  %pos.0 = phi ptr [ %add.ptr133, %if.then132 ], [ %add.ptr130, %if.end125.critedge.if.end134_crit_edge ]
  br i1 %cmp.not, label %if.end139.thread, label %if.then142

if.end139.thread:                                 ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #11
  %46 = tail call i16 @llvm.bswap.i16(i16 %reason) #9
  %47 = ptrtoint ptr %pos.0 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 2)
  store i16 %46, ptr %pos.0, align 1
  br label %if.end165

if.then142:                                       ; preds = %if.end134
  %call143 = tail call i32 @mesh_add_ht_cap_ie(ptr noundef %sdata, ptr noundef nonnull %call.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %lor.lhs.false145, label %if.then142.free_crit_edge

if.then142.free_crit_edge:                        ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #11
  br label %free

lor.lhs.false145:                                 ; preds = %if.then142
  %call146 = tail call i32 @mesh_add_ht_oper_ie(ptr noundef %sdata, ptr noundef nonnull %call.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %lor.lhs.false148, label %lor.lhs.false145.free_crit_edge

lor.lhs.false145.free_crit_edge:                  ; preds = %lor.lhs.false145
  call void @__sanitizer_cov_trace_pc() #11
  br label %free

lor.lhs.false148:                                 ; preds = %lor.lhs.false145
  %call149 = tail call i32 @mesh_add_vht_cap_ie(ptr noundef %sdata, ptr noundef nonnull %call.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %lor.lhs.false151, label %lor.lhs.false148.free_crit_edge

lor.lhs.false148.free_crit_edge:                  ; preds = %lor.lhs.false148
  call void @__sanitizer_cov_trace_pc() #11
  br label %free

lor.lhs.false151:                                 ; preds = %lor.lhs.false148
  %call152 = tail call i32 @mesh_add_vht_oper_ie(ptr noundef %sdata, ptr noundef nonnull %call.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152)
  %tobool153.not = icmp eq i32 %call152, 0
  br i1 %tobool153.not, label %lor.lhs.false154, label %lor.lhs.false151.free_crit_edge

lor.lhs.false151.free_crit_edge:                  ; preds = %lor.lhs.false151
  call void @__sanitizer_cov_trace_pc() #11
  br label %free

lor.lhs.false154:                                 ; preds = %lor.lhs.false151
  %call155 = tail call i32 @mesh_add_he_cap_ie(ptr noundef %sdata, ptr noundef nonnull %call.i.i, i8 noundef zeroext %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %lor.lhs.false157, label %lor.lhs.false154.free_crit_edge

lor.lhs.false154.free_crit_edge:                  ; preds = %lor.lhs.false154
  call void @__sanitizer_cov_trace_pc() #11
  br label %free

lor.lhs.false157:                                 ; preds = %lor.lhs.false154
  %call158 = tail call i32 @mesh_add_he_oper_ie(ptr noundef %sdata, ptr noundef nonnull %call.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %lor.lhs.false160, label %lor.lhs.false157.free_crit_edge

lor.lhs.false157.free_crit_edge:                  ; preds = %lor.lhs.false157
  call void @__sanitizer_cov_trace_pc() #11
  br label %free

lor.lhs.false160:                                 ; preds = %lor.lhs.false157
  %call161 = tail call i32 @mesh_add_he_6ghz_cap_ie(ptr noundef %sdata, ptr noundef nonnull %call.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161)
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %lor.lhs.false160.if.end165_crit_edge, label %lor.lhs.false160.free_crit_edge

lor.lhs.false160.free_crit_edge:                  ; preds = %lor.lhs.false160
  call void @__sanitizer_cov_trace_pc() #11
  br label %free

lor.lhs.false160.if.end165_crit_edge:             ; preds = %lor.lhs.false160
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end165

if.end165:                                        ; preds = %lor.lhs.false160.if.end165_crit_edge, %if.end139.thread
  %call166 = tail call i32 @mesh_add_vendor_ies(ptr noundef %sdata, ptr noundef nonnull %call.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call166)
  %tobool167.not = icmp eq i32 %call166, 0
  br i1 %tobool167.not, label %if.end169, label %if.end165.free_crit_edge

if.end165.free_crit_edge:                         ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #11
  br label %free

if.end169:                                        ; preds = %if.end165
  %48 = tail call i32 @llvm.read_register.i32(metadata !109) #9
  %and.i.i.i.i.i.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %51, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !122
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i.i, label %if.end169.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end169.rcu_read_lock.exit.i.i_crit_edge:       ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end169
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.end169.rcu_read_lock.exit.i.i_crit_edge
  %chanctx_conf1.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 9
  %52 = ptrtoint ptr %chanctx_conf1.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %chanctx_conf1.i.i, align 4
  %call.i.i5 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i5)
  %tobool.not.i.i = icmp eq i32 %call.i.i5, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %rcu_read_lock.exit.i.i.do.end8.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end8.i.i_crit_edge:     ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8.i.i

land.lhs.true.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call3.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.do.end8.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.do.end8.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %.b1.i.i = load i1, ptr @ieee80211_tx_skb_tid.__warned, align 1
  br i1 %.b1.i.i, label %land.lhs.true5.i.i.do.end8.i.i_crit_edge, label %if.then.i.i

land.lhs.true5.i.i.do.end8.i.i_crit_edge:         ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8.i.i

if.then.i.i:                                      ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ieee80211_tx_skb_tid.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 2199, ptr noundef nonnull @.str.8) #9
  br label %do.end8.i.i

do.end8.i.i:                                      ; preds = %if.then.i.i, %land.lhs.true5.i.i.do.end8.i.i_crit_edge, %land.lhs.true.i.i.do.end8.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end8.i.i_crit_edge
  %tobool10.not.i.i = icmp eq ptr %53, null
  br i1 %tobool10.not.i.i, label %do.end23.i.i, label %if.end39.i.i, !prof !120

do.end23.i.i:                                     ; preds = %do.end8.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 2200, i32 noundef 9, ptr noundef null) #9
  %call.i1.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i1.i, label %do.end23.i.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i3.i

do.end23.i.i.rcu_read_unlock.exit.i_crit_edge:    ; preds = %do.end23.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

land.lhs.true.i3.i:                               ; preds = %do.end23.i.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i2.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i2.i, label %land.lhs.true.i3.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i3.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i3.i
  %.b4.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i4.i

land.lhs.true2.i.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

if.then.i4.i:                                     ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.14) #9
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i4.i, %land.lhs.true2.i.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i3.i.rcu_read_unlock.exit.i_crit_edge, %do.end23.i.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !123
  %54 = tail call i32 @llvm.read_register.i32(metadata !109) #9
  %and.i.i.i.i.i.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %57, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #9
  br label %cleanup170

if.end39.i.i:                                     ; preds = %do.end8.i.i
  %58 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %53, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  tail call void @__ieee80211_tx_skb_tid_band(ptr noundef %sdata, ptr noundef nonnull %call.i.i, i32 noundef 7, i32 noundef %61) #9
  %call.i2.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i2.i.i, label %if.end39.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true.i5.i.i

if.end39.i.i.rcu_read_unlock.exit.i.i_crit_edge:  ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i.i

land.lhs.true.i5.i.i:                             ; preds = %if.end39.i.i
  %call1.i3.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3.i.i)
  %tobool.not.i4.i.i = icmp eq i32 %call1.i3.i.i, 0
  br i1 %tobool.not.i4.i.i, label %land.lhs.true.i5.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true2.i7.i.i

land.lhs.true.i5.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i.i

land.lhs.true2.i7.i.i:                            ; preds = %land.lhs.true.i5.i.i
  %.b4.i6.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6.i.i, label %land.lhs.true2.i7.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %if.then.i8.i.i

land.lhs.true2.i7.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i.i

if.then.i8.i.i:                                   ; preds = %land.lhs.true2.i7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.14) #9
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i8.i.i, %land.lhs.true2.i7.i.i.rcu_read_unlock.exit.i.i_crit_edge, %land.lhs.true.i5.i.i.rcu_read_unlock.exit.i.i_crit_edge, %if.end39.i.i.rcu_read_unlock.exit.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !123
  %62 = tail call i32 @llvm.read_register.i32(metadata !109) #9
  %and.i.i.i.i.i9.i.i = and i32 %62, -16384
  %63 = inttoptr i32 %and.i.i.i.i.i9.i.i to ptr
  %preempt_count.i.i.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %preempt_count.i.i.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %preempt_count.i.i.i.i10.i.i, align 4
  %sub.i.i.i.i.i = add i32 %65, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i10.i.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %cleanup170

free:                                             ; preds = %if.end165.free_crit_edge, %lor.lhs.false160.free_crit_edge, %lor.lhs.false157.free_crit_edge, %lor.lhs.false154.free_crit_edge, %lor.lhs.false151.free_crit_edge, %lor.lhs.false148.free_crit_edge, %lor.lhs.false145.free_crit_edge, %if.then142.free_crit_edge, %do.end, %if.end83.free_crit_edge, %if.else.free_crit_edge, %lor.lhs.false73.free_crit_edge, %lor.lhs.false70.free_crit_edge, %lor.lhs.false67.free_crit_edge, %lor.lhs.false.free_crit_edge, %if.end62.free_crit_edge, %if.then50.free_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #9
  br label %cleanup170

cleanup170:                                       ; preds = %free, %rcu_read_unlock.exit.i.i, %rcu_read_unlock.exit.i, %entry.cleanup170_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mesh_path_flush_by_nexthop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mesh_neighbour_update(ptr noundef %sdata, ptr noundef %hw_addr, ptr noundef %elems, ptr nocapture noundef readonly %rx_status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @mesh_sta_info_get(ptr noundef %sdata, ptr noundef %hw_addr, ptr noundef %elems, ptr noundef %rx_status)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %mesh_config = getelementptr inbounds %struct.ieee802_11_elems, ptr %elems, i32 0, i32 20
  %0 = ptrtoint ptr %mesh_config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mesh_config, align 4
  %meshconf_form = getelementptr inbounds %struct.ieee80211_meshconf_ie, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %meshconf_form to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %meshconf_form, align 1
  %4 = and i8 %3, 1
  %mesh = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 17
  %5 = ptrtoint ptr %mesh to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mesh, align 8
  %connected_to_gate = getelementptr inbounds %struct.mesh_sta, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %connected_to_gate to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %4, ptr %connected_to_gate, align 2
  %call2 = tail call zeroext i1 @mesh_peer_accepts_plinks(ptr noundef %elems) #9
  br i1 %call2, label %land.lhs.true, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end
  %8 = ptrtoint ptr %mesh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mesh, align 8
  %plink_state = getelementptr inbounds %struct.mesh_sta, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %plink_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %plink_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %land.lhs.true6, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

land.lhs.true6:                                   ; preds = %land.lhs.true
  %accepting_plinks = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 27
  %12 = ptrtoint ptr %accepting_plinks to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %accepting_plinks, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool7.not = icmp eq i8 %13, 0
  br i1 %tobool7.not, label %land.lhs.true6.if.end18_crit_edge, label %land.lhs.true9

land.lhs.true6.if.end18_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %auto_open_plinks = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24, i32 7
  %14 = ptrtoint ptr %auto_open_plinks to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %auto_open_plinks, align 1, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool11.not = icmp eq i8 %15, 0
  br i1 %tobool11.not, label %land.lhs.true9.if.end18_crit_edge, label %land.lhs.true13

land.lhs.true9.if.end18_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

land.lhs.true13:                                  ; preds = %land.lhs.true9
  %rssi_threshold1.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24, i32 22
  %16 = ptrtoint ptr %rssi_threshold1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rssi_threshold1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i = icmp eq i32 %17, 0
  br i1 %cmp.i, label %land.lhs.true13.if.then16_crit_edge, label %rssi_threshold_check.exit

land.lhs.true13.if.then16_crit_edge:              ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

rssi_threshold_check.exit:                        ; preds = %land.lhs.true13
  %rx_stats_avg.i = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 33
  %18 = ptrtoint ptr %rx_stats_avg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_stats_avg.i, align 4
  %shr.i.i = lshr i32 %19, 10
  %.neg.i = mul i32 %shr.i.i, -16777216
  %conv2.i = ashr exact i32 %.neg.i, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2.i, i32 %17)
  %cmp3.i = icmp sgt i32 %conv2.i, %17
  br i1 %cmp3.i, label %rssi_threshold_check.exit.if.then16_crit_edge, label %rssi_threshold_check.exit.if.end18_crit_edge

rssi_threshold_check.exit.if.end18_crit_edge:     ; preds = %rssi_threshold_check.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

rssi_threshold_check.exit.if.then16_crit_edge:    ; preds = %rssi_threshold_check.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

if.then16:                                        ; preds = %rssi_threshold_check.exit.if.then16_crit_edge, %land.lhs.true13.if.then16_crit_edge
  %call17 = tail call i32 @mesh_plink_open(ptr noundef nonnull %call)
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %rssi_threshold_check.exit.if.end18_crit_edge, %land.lhs.true9.if.end18_crit_edge, %land.lhs.true6.if.end18_crit_edge, %land.lhs.true.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %changed.0 = phi i32 [ %call17, %if.then16 ], [ 0, %rssi_threshold_check.exit.if.end18_crit_edge ], [ 0, %land.lhs.true9.if.end18_crit_edge ], [ 0, %land.lhs.true6.if.end18_crit_edge ], [ 0, %land.lhs.true.if.end18_crit_edge ], [ 0, %if.end.if.end18_crit_edge ]
  tail call void @ieee80211_mps_frame_release(ptr noundef nonnull %call, ptr noundef %elems) #9
  br label %out

out:                                              ; preds = %if.end18, %entry.out_crit_edge
  %changed.1 = phi i32 [ %changed.0, %if.end18 ], [ 0, %entry.out_crit_edge ]
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i:                                  ; preds = %out
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i31 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i31, label %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i

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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.14) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !123
  %20 = tail call i32 @llvm.read_register.i32(metadata !109) #9
  %and.i.i.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  tail call void @ieee80211_mbss_info_change_notify(ptr noundef %sdata, i32 noundef %changed.1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mesh_sta_info_get(ptr noundef %sdata, ptr noundef %addr, ptr noundef %elems, ptr nocapture noundef readonly %rx_status) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !109) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !122
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call ptr @sta_info_get(ptr noundef %sdata, ptr noundef %addr) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @mesh_sta_info_init(ptr noundef %sdata, ptr noundef nonnull %call, ptr noundef %elems)
  br label %if.end8

if.else:                                          ; preds = %rcu_read_lock.exit
  %call.i31 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i31, label %if.else.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i34

if.else.rcu_read_unlock.exit_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i34:                                ; preds = %if.else
  %call1.i32 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i32)
  %tobool.not.i33 = icmp eq i32 %call1.i32, 0
  br i1 %tobool.not.i33, label %land.lhs.true.i34.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i36

land.lhs.true.i34.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i34
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i36:                               ; preds = %land.lhs.true.i34
  %.b4.i35 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i35, label %land.lhs.true2.i36.rcu_read_unlock.exit_crit_edge, label %if.then.i37

land.lhs.true2.i36.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i36
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i37:                                      ; preds = %land.lhs.true2.i36
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.14) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i37, %land.lhs.true2.i36.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i34.rcu_read_unlock.exit_crit_edge, %if.else.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !123
  %4 = tail call i32 @llvm.read_register.i32(metadata !109) #9
  %and.i.i.i.i.i38 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i38 to ptr
  %preempt_count.i.i.i.i39 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i39 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i39, align 4
  %sub.i.i.i = add i32 %7, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i39, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %user_mpm.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 33
  %8 = ptrtoint ptr %user_mpm.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %user_mpm.i, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i40 = icmp eq i8 %9, 0
  br i1 %tobool.not.i40, label %lor.lhs.false.i, label %rcu_read_unlock.exit.if.then.i42_crit_edge

rcu_read_unlock.exit.if.then.i42_crit_edge:       ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i42

lor.lhs.false.i:                                  ; preds = %rcu_read_unlock.exit
  %security.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 32
  %10 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %security.i, align 8
  %and.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.else.i, label %lor.lhs.false.i.if.then.i42_crit_edge

lor.lhs.false.i.if.then.i42_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i42

if.then.i42:                                      ; preds = %lor.lhs.false.i.if.then.i42_crit_edge, %rcu_read_unlock.exit.if.then.i42_crit_edge
  %call.i41 = tail call zeroext i1 @mesh_peer_accepts_plinks(ptr noundef %elems) #9
  br i1 %call.i41, label %land.lhs.true.i44, label %if.then.i42.if.then3_crit_edge

if.then.i42.if.then3_crit_edge:                   ; preds = %if.then.i42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

land.lhs.true.i44:                                ; preds = %if.then.i42
  %dot11MeshMaxPeerLinks.i.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24, i32 3
  %12 = ptrtoint ptr %dot11MeshMaxPeerLinks.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %dot11MeshMaxPeerLinks.i.i.i, align 2
  %conv.i.i.i = zext i16 %13 to i32
  %estab_plinks.i.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 25
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %estab_plinks.i.i.i, i32 noundef 4) #9
  %14 = ptrtoint ptr %estab_plinks.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %estab_plinks.i.i.i, align 4
  %sub.i.i.i43 = sub i32 %conv.i.i.i, %15
  %local.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %16 = ptrtoint ptr %local.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %local.i.i, align 4
  %num_sta.i.i = getelementptr inbounds %struct.ieee80211_local, ptr %17, i32 0, i32 48
  %18 = ptrtoint ptr %num_sta.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_sta.i.i, align 8
  %sub.i.i = sub i32 256, %19
  %20 = tail call i32 @llvm.smin.i32(i32 %sub.i.i.i43, i32 %sub.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp1.i.i = icmp sgt i32 %20, 0
  br i1 %cmp1.i.i, label %if.then4.i, label %land.lhs.true.i44.if.then3_crit_edge

land.lhs.true.i44.if.then3_crit_edge:             ; preds = %land.lhs.true.i44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.then4.i:                                       ; preds = %land.lhs.true.i44
  %flags.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %17, i32 0, i32 4
  %21 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flags.i.i, align 4
  %23 = and i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.i.not.i = icmp eq i32 %23, 0
  br i1 %tobool.i.not.i, label %if.then4.i.if.end.i_crit_edge, label %if.then6.i

if.then4.i.if.end.i_crit_edge:                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then6.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  %signal.i = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 13
  %24 = ptrtoint ptr %signal.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %signal.i, align 2
  %conv.i = sext i8 %25 to i32
  br label %if.end.i

if.end.i:                                         ; preds = %if.then6.i, %if.then4.i.if.end.i_crit_edge
  %sig.0.i = phi i32 [ %conv.i, %if.then6.i ], [ 0, %if.then4.i.if.end.i_crit_edge ]
  %dev.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 6
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 8
  %28 = ptrtoint ptr %elems to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %elems, align 4
  %total_len.i = getelementptr inbounds %struct.ieee802_11_elems, ptr %elems, i32 0, i32 1
  %30 = ptrtoint ptr %total_len.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %total_len.i, align 4
  %conv7.i = trunc i32 %31 to i8
  tail call void @cfg80211_notify_new_peer_candidate(ptr noundef %27, ptr noundef %addr, ptr noundef %29, i8 noundef zeroext %conv7.i, i32 noundef %sig.0.i, i32 noundef 3264) #9
  br label %if.then3

if.else.i:                                        ; preds = %lor.lhs.false.i
  %local.i19.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %32 = ptrtoint ptr %local.i19.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %local.i19.i, align 4
  %num_sta.i20.i = getelementptr inbounds %struct.ieee80211_local, ptr %33, i32 0, i32 48
  %34 = ptrtoint ptr %num_sta.i20.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_sta.i20.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %35)
  %cmp.i.i = icmp ugt i32 %35, 255
  br i1 %cmp.i.i, label %if.else.i.if.then3_crit_edge, label %if.end.i.i

if.else.i.if.then3_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.end.i.i:                                       ; preds = %if.else.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %36 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %36, i32 noundef 3520, i32 noundef 252) #12
  %tobool.not.i.i.i = icmp eq ptr %call7.i.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.if.then3_crit_edge, label %if.end.i.i.i

if.end.i.i.if.then3_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.end.i.i.i:                                     ; preds = %if.end.i.i
  %37 = ptrtoint ptr %call7.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %call7.i.i.i.i.i.i, align 8
  %or.i.i.i.i = or i32 %38, 1
  store i32 %or.i.i.i.i, ptr %call7.i.i.i.i.i.i, align 8
  %39 = tail call i32 @llvm.read_register.i32(metadata !109) #9
  %and.i.i.i.i.i.i.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %42, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !122
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge:  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end.i.i.i
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_lock.exit.i.i.i

rcu_read_lock.exit.i.i.i:                         ; preds = %if.then.i.i.i.i, %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %if.end.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge
  %call1.i.i.i = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i, label %rcu_read_lock.exit.i.i.i.do.end.i.i.i_crit_edge

rcu_read_lock.exit.i.i.i.do.end.i.i.i_crit_edge:  ; preds = %rcu_read_lock.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %rcu_read_lock.exit.i.i.i
  %call3.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call3.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %land.lhs.true.i.i.i.do.end.i.i.i_crit_edge, label %land.lhs.true5.i.i.i

land.lhs.true.i.i.i.do.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i.i

land.lhs.true5.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b41.i.i.i = load i1, ptr @mesh_allocate_aid.__warned, align 1
  br i1 %.b41.i.i.i, label %land.lhs.true5.i.i.i.do.end.i.i.i_crit_edge, label %if.then7.i.i.i

land.lhs.true5.i.i.i.do.end.i.i.i_crit_edge:      ; preds = %land.lhs.true5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i.i

if.then7.i.i.i:                                   ; preds = %land.lhs.true5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @mesh_allocate_aid.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 487, ptr noundef nonnull @.str.11) #9
  br label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then7.i.i.i, %land.lhs.true5.i.i.i.do.end.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.end.i.i.i_crit_edge, %rcu_read_lock.exit.i.i.i.do.end.i.i.i_crit_edge
  %43 = ptrtoint ptr %local.i19.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %local.i19.i, align 4
  %sta_list.i.i.i = getelementptr inbounds %struct.ieee80211_local, ptr %44, i32 0, i32 49
  %45 = ptrtoint ptr %sta_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %sta.052.i.i.i = load volatile ptr, ptr %sta_list.i.i.i, align 4
  %cmp.not53.i.i.i = icmp eq ptr %sta.052.i.i.i, %sta_list.i.i.i
  br i1 %cmp.not53.i.i.i, label %do.end.i.i.i.for.end.i.i.i_crit_edge, label %do.end.i.i.i.for.body.i.i.i_crit_edge

do.end.i.i.i.for.body.i.i.i_crit_edge:            ; preds = %do.end.i.i.i
  br label %for.body.i.i.i

do.end.i.i.i.for.end.i.i.i_crit_edge:             ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %do.end.i.i.i.for.body.i.i.i_crit_edge
  %sta.054.i.i.i = phi ptr [ %sta.0.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %sta.052.i.i.i, %do.end.i.i.i.for.body.i.i.i_crit_edge ]
  %aid16.i.i.i = getelementptr inbounds %struct.sta_info, ptr %sta.054.i.i.i, i32 0, i32 48, i32 2
  %46 = ptrtoint ptr %aid16.i.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %aid16.i.i.i, align 2
  %conv.i.i21.i = zext i16 %47 to i32
  %rem.i.i.i.i = and i32 %conv.i.i21.i, 31
  %shl.i.i.i.i = shl nuw i32 1, %rem.i.i.i.i
  %div2.i.i.i.i = lshr i32 %conv.i.i21.i, 5
  %add.ptr.i.i.i.i = getelementptr i32, ptr %call7.i.i.i.i.i.i, i32 %div2.i.i.i.i
  %48 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %or.i42.i.i.i = or i32 %shl.i.i.i.i, %49
  store i32 %or.i42.i.i.i, ptr %add.ptr.i.i.i.i, align 4
  %50 = ptrtoint ptr %sta.054.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %sta.0.i.i.i = load volatile ptr, ptr %sta.054.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %sta.0.i.i.i, %sta_list.i.i.i
  br i1 %cmp.not.i.i.i, label %for.body.i.i.i.for.end.i.i.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i

for.body.i.i.i.for.end.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %for.body.i.i.i.for.end.i.i.i_crit_edge, %do.end.i.i.i.for.end.i.i.i_crit_edge
  %call.i43.i.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i43.i.i.i, label %for.end.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, label %land.lhs.true.i46.i.i.i

for.end.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge: ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i.i.i

land.lhs.true.i46.i.i.i:                          ; preds = %for.end.i.i.i
  %call1.i44.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i44.i.i.i)
  %tobool.not.i45.i.i.i = icmp eq i32 %call1.i44.i.i.i, 0
  br i1 %tobool.not.i45.i.i.i, label %land.lhs.true.i46.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, label %land.lhs.true2.i48.i.i.i

land.lhs.true.i46.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i46.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i.i.i

land.lhs.true2.i48.i.i.i:                         ; preds = %land.lhs.true.i46.i.i.i
  %.b4.i47.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i47.i.i.i, label %land.lhs.true2.i48.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, label %if.then.i49.i.i.i

land.lhs.true2.i48.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i48.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i.i.i

if.then.i49.i.i.i:                                ; preds = %land.lhs.true2.i48.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.14) #9
  br label %rcu_read_unlock.exit.i.i.i

rcu_read_unlock.exit.i.i.i:                       ; preds = %if.then.i49.i.i.i, %land.lhs.true2.i48.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, %land.lhs.true.i46.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, %for.end.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !123
  %51 = tail call i32 @llvm.read_register.i32(metadata !109) #9
  %and.i.i.i.i.i50.i.i.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i.i.i50.i.i.i to ptr
  %preempt_count.i.i.i.i51.i.i.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %preempt_count.i.i.i.i51.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %preempt_count.i.i.i.i51.i.i.i, align 4
  %sub.i.i.i.i.i.i = add i32 %54, -1
  store volatile i32 %sub.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i51.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %call26.i.i.i = tail call i32 @_find_first_zero_bit_be(ptr noundef nonnull %call7.i.i.i.i.i.i, i32 noundef 2008) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2007, i32 %call26.i.i.i)
  %55 = icmp ugt i32 %call26.i.i.i, 2007
  br i1 %55, label %rcu_read_unlock.exit.i.i.i.if.then3_crit_edge, label %if.end3.i.i

rcu_read_unlock.exit.i.i.i.if.then3_crit_edge:    ; preds = %rcu_read_unlock.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.end3.i.i:                                      ; preds = %rcu_read_unlock.exit.i.i.i
  %call4.i.i = tail call ptr @sta_info_alloc(ptr noundef %sdata, ptr noundef %addr, i32 noundef 3264) #9
  %tobool.not.i.i = icmp eq ptr %call4.i.i, null
  br i1 %tobool.not.i.i, label %if.end3.i.i.if.then3_crit_edge, label %if.end6.i.i

if.end3.i.i.if.then3_crit_edge:                   ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.end6.i.i:                                      ; preds = %if.end3.i.i
  %mesh.i.i = getelementptr inbounds %struct.sta_info, ptr %call4.i.i, i32 0, i32 17
  %56 = ptrtoint ptr %mesh.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mesh.i.i, align 8
  %plink_state.i.i = getelementptr inbounds %struct.mesh_sta, ptr %57, i32 0, i32 13
  %58 = ptrtoint ptr %plink_state.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %plink_state.i.i, align 8
  %wme.i.i = getelementptr inbounds %struct.sta_info, ptr %call4.i.i, i32 0, i32 48, i32 10
  %59 = ptrtoint ptr %wme.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %wme.i.i, align 4
  %conv.i.i = trunc i32 %call26.i.i.i to i16
  %aid9.i.i = getelementptr inbounds %struct.sta_info, ptr %call4.i.i, i32 0, i32 48, i32 2
  %60 = ptrtoint ptr %aid9.i.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv.i.i, ptr %aid9.i.i, align 2
  %_flags.i.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call4.i.i, i32 0, i32 24
  %61 = ptrtoint ptr %_flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %_flags.i.i.i.i, align 4
  %63 = and i32 %62, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.not.i21.i.i = icmp eq i32 %63, 0
  br i1 %tobool.not.i21.i.i, label %if.end6.i.i.if.end28.i.i.i_crit_edge, label %land.rhs.i.i.i

if.end6.i.i.if.end28.i.i.i_crit_edge:             ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.end6.i.i
  %.b98.i.i.i = load i1, ptr @sta_info_pre_move_state.__already_done, align 1
  br i1 %.b98.i.i.i, label %land.rhs.i.i.i.if.end28.i.i.i_crit_edge, label %if.then.i.i.i, !prof !124

land.rhs.i.i.i.if.end28.i.i.i_crit_edge:          ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @sta_info_pre_move_state.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 742, i32 noundef 9, ptr noundef null) #9
  br label %if.end28.i.i.i

if.end28.i.i.i:                                   ; preds = %if.then.i.i.i, %land.rhs.i.i.i.if.end28.i.i.i_crit_edge, %if.end6.i.i.if.end28.i.i.i_crit_edge
  %call36.i.i.i = tail call i32 @sta_info_move_state(ptr noundef nonnull %call4.i.i, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i.i.i)
  %tobool38.not.i.i.i = icmp eq i32 %call36.i.i.i, 0
  br i1 %tobool38.not.i.i.i, label %if.end28.i.i.i.sta_info_pre_move_state.exit.i.i_crit_edge, label %land.rhs45.i.i.i

if.end28.i.i.i.sta_info_pre_move_state.exit.i.i_crit_edge: ; preds = %if.end28.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sta_info_pre_move_state.exit.i.i

land.rhs45.i.i.i:                                 ; preds = %if.end28.i.i.i
  %.b9697.i.i.i = load i1, ptr @sta_info_pre_move_state.__already_done.13, align 1
  br i1 %.b9697.i.i.i, label %land.rhs45.i.i.i.sta_info_pre_move_state.exit.i.i_crit_edge, label %if.then56.i.i.i, !prof !124

land.rhs45.i.i.i.sta_info_pre_move_state.exit.i.i_crit_edge: ; preds = %land.rhs45.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sta_info_pre_move_state.exit.i.i

if.then56.i.i.i:                                  ; preds = %land.rhs45.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @sta_info_pre_move_state.__already_done.13, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 745, i32 noundef 9, ptr noundef null) #9
  br label %sta_info_pre_move_state.exit.i.i

sta_info_pre_move_state.exit.i.i:                 ; preds = %if.then56.i.i.i, %land.rhs45.i.i.i.sta_info_pre_move_state.exit.i.i_crit_edge, %if.end28.i.i.i.sta_info_pre_move_state.exit.i.i_crit_edge
  %64 = ptrtoint ptr %_flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %_flags.i.i.i.i, align 4
  %66 = and i32 %65, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.not.i23.i.i = icmp eq i32 %66, 0
  br i1 %tobool.not.i23.i.i, label %sta_info_pre_move_state.exit.i.i.if.end28.i29.i.i_crit_edge, label %land.rhs.i25.i.i

sta_info_pre_move_state.exit.i.i.if.end28.i29.i.i_crit_edge: ; preds = %sta_info_pre_move_state.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i29.i.i

land.rhs.i25.i.i:                                 ; preds = %sta_info_pre_move_state.exit.i.i
  %.b98.i24.i.i = load i1, ptr @sta_info_pre_move_state.__already_done, align 1
  br i1 %.b98.i24.i.i, label %land.rhs.i25.i.i.if.end28.i29.i.i_crit_edge, label %if.then.i26.i.i, !prof !124

land.rhs.i25.i.i.if.end28.i29.i.i_crit_edge:      ; preds = %land.rhs.i25.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i29.i.i

if.then.i26.i.i:                                  ; preds = %land.rhs.i25.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @sta_info_pre_move_state.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 742, i32 noundef 9, ptr noundef null) #9
  br label %if.end28.i29.i.i

if.end28.i29.i.i:                                 ; preds = %if.then.i26.i.i, %land.rhs.i25.i.i.if.end28.i29.i.i_crit_edge, %sta_info_pre_move_state.exit.i.i.if.end28.i29.i.i_crit_edge
  %call36.i27.i.i = tail call i32 @sta_info_move_state(ptr noundef nonnull %call4.i.i, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i27.i.i)
  %tobool38.not.i28.i.i = icmp eq i32 %call36.i27.i.i, 0
  br i1 %tobool38.not.i28.i.i, label %if.end28.i29.i.i.sta_info_pre_move_state.exit33.i.i_crit_edge, label %land.rhs45.i31.i.i

if.end28.i29.i.i.sta_info_pre_move_state.exit33.i.i_crit_edge: ; preds = %if.end28.i29.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sta_info_pre_move_state.exit33.i.i

land.rhs45.i31.i.i:                               ; preds = %if.end28.i29.i.i
  %.b9697.i30.i.i = load i1, ptr @sta_info_pre_move_state.__already_done.13, align 1
  br i1 %.b9697.i30.i.i, label %land.rhs45.i31.i.i.sta_info_pre_move_state.exit33.i.i_crit_edge, label %if.then56.i32.i.i, !prof !124

land.rhs45.i31.i.i.sta_info_pre_move_state.exit33.i.i_crit_edge: ; preds = %land.rhs45.i31.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sta_info_pre_move_state.exit33.i.i

if.then56.i32.i.i:                                ; preds = %land.rhs45.i31.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @sta_info_pre_move_state.__already_done.13, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 745, i32 noundef 9, ptr noundef null) #9
  br label %sta_info_pre_move_state.exit33.i.i

sta_info_pre_move_state.exit33.i.i:               ; preds = %if.then56.i32.i.i, %land.rhs45.i31.i.i.sta_info_pre_move_state.exit33.i.i_crit_edge, %if.end28.i29.i.i.sta_info_pre_move_state.exit33.i.i_crit_edge
  %67 = ptrtoint ptr %_flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %_flags.i.i.i.i, align 4
  %69 = and i32 %68, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not.i35.i.i = icmp eq i32 %69, 0
  br i1 %tobool.not.i35.i.i, label %sta_info_pre_move_state.exit33.i.i.if.end28.i41.i.i_crit_edge, label %land.rhs.i37.i.i

sta_info_pre_move_state.exit33.i.i.if.end28.i41.i.i_crit_edge: ; preds = %sta_info_pre_move_state.exit33.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i41.i.i

land.rhs.i37.i.i:                                 ; preds = %sta_info_pre_move_state.exit33.i.i
  %.b98.i36.i.i = load i1, ptr @sta_info_pre_move_state.__already_done, align 1
  br i1 %.b98.i36.i.i, label %land.rhs.i37.i.i.if.end28.i41.i.i_crit_edge, label %if.then.i38.i.i, !prof !124

land.rhs.i37.i.i.if.end28.i41.i.i_crit_edge:      ; preds = %land.rhs.i37.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i41.i.i

if.then.i38.i.i:                                  ; preds = %land.rhs.i37.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @sta_info_pre_move_state.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 742, i32 noundef 9, ptr noundef null) #9
  br label %if.end28.i41.i.i

if.end28.i41.i.i:                                 ; preds = %if.then.i38.i.i, %land.rhs.i37.i.i.if.end28.i41.i.i_crit_edge, %sta_info_pre_move_state.exit33.i.i.if.end28.i41.i.i_crit_edge
  %call36.i39.i.i = tail call i32 @sta_info_move_state(ptr noundef nonnull %call4.i.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i39.i.i)
  %tobool38.not.i40.i.i = icmp eq i32 %call36.i39.i.i, 0
  br i1 %tobool38.not.i40.i.i, label %if.end28.i41.i.i.if.end_crit_edge, label %land.rhs45.i43.i.i

if.end28.i41.i.i.if.end_crit_edge:                ; preds = %if.end28.i41.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs45.i43.i.i:                               ; preds = %if.end28.i41.i.i
  %.b9697.i42.i.i = load i1, ptr @sta_info_pre_move_state.__already_done.13, align 1
  br i1 %.b9697.i42.i.i, label %land.rhs45.i43.i.i.if.end_crit_edge, label %if.then56.i44.i.i, !prof !124

land.rhs45.i43.i.i.if.end_crit_edge:              ; preds = %land.rhs45.i43.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then56.i44.i.i:                                ; preds = %land.rhs45.i43.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @sta_info_pre_move_state.__already_done.13, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 745, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.then3:                                         ; preds = %if.end3.i.i.if.then3_crit_edge, %rcu_read_unlock.exit.i.i.i.if.then3_crit_edge, %if.end.i.i.if.then3_crit_edge, %if.else.i.if.then3_crit_edge, %if.end.i, %land.lhs.true.i44.if.then3_crit_edge, %if.then.i42.if.then3_crit_edge
  %70 = tail call i32 @llvm.read_register.i32(metadata !109) #9
  %and.i.i.i.i.i20 = and i32 %70, -16384
  %71 = inttoptr i32 %and.i.i.i.i.i20 to ptr
  %preempt_count.i.i.i.i21 = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %preempt_count.i.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %preempt_count.i.i.i.i21, align 4
  %add.i.i.i22 = add i32 %73, 1
  store volatile i32 %add.i.i.i22, ptr %preempt_count.i.i.i.i21, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !122
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i23 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i23, label %if.then3.cleanup_crit_edge, label %land.lhs.true.i26

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.i26:                                ; preds = %if.then3
  %call1.i24 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i24)
  %tobool.not.i25 = icmp eq i32 %call1.i24, 0
  br i1 %tobool.not.i25, label %land.lhs.true.i26.cleanup_crit_edge, label %land.lhs.true2.i28

land.lhs.true.i26.cleanup_crit_edge:              ; preds = %land.lhs.true.i26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true2.i28:                               ; preds = %land.lhs.true.i26
  %.b4.i27 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i27, label %land.lhs.true2.i28.cleanup_crit_edge, label %if.then.i29

land.lhs.true2.i28.cleanup_crit_edge:             ; preds = %land.lhs.true2.i28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i29:                                      ; preds = %land.lhs.true2.i28
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end:                                           ; preds = %if.then56.i44.i.i, %land.rhs45.i43.i.i.if.end_crit_edge, %if.end28.i41.i.i.if.end_crit_edge
  tail call fastcc void @mesh_sta_info_init(ptr noundef %sdata, ptr noundef nonnull %call4.i.i, ptr noundef %elems)
  %call4 = tail call i32 @sta_info_insert_rcu(ptr noundef nonnull %call4.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end8:                                          ; preds = %if.end.if.end8_crit_edge, %if.then
  %sta.0 = phi ptr [ %call, %if.then ], [ %call4.i.i, %if.end.if.end8_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %if.then.i29, %land.lhs.true2.i28.cleanup_crit_edge, %land.lhs.true.i26.cleanup_crit_edge, %if.then3.cleanup_crit_edge
  %retval.0 = phi ptr [ %sta.0, %if.end8 ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.then3.cleanup_crit_edge ], [ null, %land.lhs.true.i26.cleanup_crit_edge ], [ null, %land.lhs.true2.i28.cleanup_crit_edge ], [ null, %if.then.i29 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mesh_peer_accepts_plinks(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mesh_plink_open(ptr noundef %sta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sdata1 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 6
  %0 = ptrtoint ptr %sdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdata1, align 4
  %_flags.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 24
  %2 = ptrtoint ptr %_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %_flags.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mesh = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 17
  %4 = ptrtoint ptr %mesh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mesh, align 8
  %plink_lock = getelementptr inbounds %struct.mesh_sta, ptr %5, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %plink_lock) #9
  %call2 = tail call fastcc zeroext i16 @mesh_get_new_llid(ptr noundef %1)
  %6 = ptrtoint ptr %mesh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mesh, align 8
  %llid = getelementptr inbounds %struct.mesh_sta, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %llid to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %call2, ptr %llid, align 4
  %9 = load ptr, ptr %mesh, align 8
  %plink_state = getelementptr inbounds %struct.mesh_sta, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %plink_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %plink_state, align 8
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %11, label %if.then8 [
    i32 0, label %if.end.if.end11_crit_edge
    i32 6, label %if.end.if.end11_crit_edge43
  ]

if.end.if.end11_crit_edge43:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %plink_lock10 = getelementptr inbounds %struct.mesh_sta, ptr %9, i32 0, i32 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %plink_lock10) #9
  br label %cleanup

if.end11:                                         ; preds = %if.end.if.end11_crit_edge, %if.end.if.end11_crit_edge43
  %13 = ptrtoint ptr %plink_state to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %plink_state, align 8
  %mshcfg = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 24
  %14 = ptrtoint ptr %mshcfg to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %mshcfg, align 4
  %conv = zext i16 %15 to i32
  %16 = ptrtoint ptr %mesh to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mesh, align 8
  %plink_timeout.i = getelementptr inbounds %struct.mesh_sta, ptr %17, i32 0, i32 14
  %18 = ptrtoint ptr %plink_timeout.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv, ptr %plink_timeout.i, align 4
  %19 = load ptr, ptr %mesh, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv) #9
  %add.i = add i32 %call2.i.i, %20
  %call2.i = tail call i32 @mod_timer(ptr noundef %19, i32 noundef %add.i) #9
  %21 = ptrtoint ptr %mesh to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mesh, align 8
  %plink_lock15 = getelementptr inbounds %struct.mesh_sta, ptr %22, i32 0, i32 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %plink_lock15) #9
  %name = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 10
  %addr = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 1
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.4, ptr noundef %name, ptr noundef %addr) #9
  %call18 = tail call i32 @ieee80211_mps_local_status_update(ptr noundef %1) #9
  %23 = ptrtoint ptr %mesh to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mesh, align 8
  %llid23 = getelementptr inbounds %struct.mesh_sta, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %llid23 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %llid23, align 4
  tail call fastcc void @mesh_plink_frame_tx(ptr noundef %1, ptr noundef %sta, i32 noundef 1, ptr noundef %addr, i16 noundef zeroext %26, i16 noundef zeroext 0, i16 noundef zeroext 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then8 ], [ %call18, %if.end11 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_mps_frame_release(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.14) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !123
  %0 = tail call i32 @llvm.read_register.i32(metadata !109) #9
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_mbss_info_change_notify(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mesh_plink_timer(ptr nocapture noundef readonly %t) local_unnamed_addr #0 align 64 {
entry:
  %rand = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %plink_sta = getelementptr inbounds %struct.mesh_sta, ptr %t, i32 0, i32 1
  %0 = ptrtoint ptr %plink_sta to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plink_sta, align 8
  %sdata1 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %sdata1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sdata1, align 4
  %local = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %local, align 4
  %quiescing = getelementptr inbounds %struct.ieee80211_local, ptr %5, i32 0, i32 34
  %6 = ptrtoint ptr %quiescing to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %quiescing, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mesh2 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 17
  %8 = ptrtoint ptr %mesh2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mesh2, align 8
  %plink_lock = getelementptr inbounds %struct.mesh_sta, ptr %9, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %plink_lock) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %mesh2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mesh2, align 8
  %expires = getelementptr inbounds %struct.timer_list, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %expires to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %expires, align 8
  %sub = sub i32 %10, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then4, label %if.end11

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %sdata1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sdata1, align 4
  %name = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %16, i32 0, i32 10
  %addr = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 48, i32 1
  %plink_state = getelementptr inbounds %struct.mesh_sta, ptr %12, i32 0, i32 13
  %17 = ptrtoint ptr %plink_state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %plink_state, align 8
  %arrayidx = getelementptr [7 x ptr], ptr @mplstates, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str, ptr noundef %name, ptr noundef %addr, ptr noundef %20) #9
  %21 = ptrtoint ptr %mesh2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mesh2, align 8
  %plink_lock10 = getelementptr inbounds %struct.mesh_sta, ptr %22, i32 0, i32 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %plink_lock10) #9
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %plink_state13 = getelementptr inbounds %struct.mesh_sta, ptr %12, i32 0, i32 13
  %23 = ptrtoint ptr %plink_state13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %plink_state13, align 8
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %24, label %if.end30 [
    i32 0, label %if.end11.if.then18_crit_edge
    i32 4, label %if.end11.if.then18_crit_edge159
  ]

if.end11.if.then18_crit_edge159:                  ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18

if.end11.if.then18_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18

if.then18:                                        ; preds = %if.end11.if.then18_crit_edge, %if.end11.if.then18_crit_edge159
  %26 = ptrtoint ptr %sdata1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sdata1, align 4
  %name20 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %27, i32 0, i32 10
  %addr23 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 48, i32 1
  %arrayidx27 = getelementptr [7 x ptr], ptr @mplstates, i32 0, i32 %24
  %28 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx27, align 4
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.1, ptr noundef %name20, ptr noundef %addr23, ptr noundef %29) #9
  %30 = ptrtoint ptr %mesh2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mesh2, align 8
  %plink_lock29 = getelementptr inbounds %struct.mesh_sta, ptr %31, i32 0, i32 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %plink_lock29) #9
  br label %cleanup

if.end30:                                         ; preds = %if.end11
  %32 = ptrtoint ptr %sdata1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sdata1, align 4
  %name32 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %33, i32 0, i32 10
  %addr35 = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 48, i32 1
  %arrayidx39 = getelementptr [7 x ptr], ptr @mplstates, i32 0, i32 %24
  %34 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx39, align 4
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.2, ptr noundef %name32, ptr noundef %addr35, ptr noundef %35) #9
  %36 = ptrtoint ptr %sdata1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sdata1, align 4
  %38 = ptrtoint ptr %mesh2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mesh2, align 8
  %plink_state43 = getelementptr inbounds %struct.mesh_sta, ptr %39, i32 0, i32 13
  %40 = ptrtoint ptr %plink_state43 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %plink_state43, align 8
  %42 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %41, label %if.end30.sw.epilog.thread_crit_edge [
    i32 2, label %if.end30.sw.bb_crit_edge
    i32 1, label %if.end30.sw.bb_crit_edge160
    i32 3, label %if.end30.sw.bb74_crit_edge
    i32 5, label %sw.bb86
  ]

if.end30.sw.bb74_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb74

if.end30.sw.bb_crit_edge160:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end30.sw.bb_crit_edge:                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end30.sw.epilog.thread_crit_edge:              ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.thread

sw.bb:                                            ; preds = %if.end30.sw.bb_crit_edge, %if.end30.sw.bb_crit_edge160
  %plink_retries = getelementptr inbounds %struct.mesh_sta, ptr %39, i32 0, i32 9
  %43 = ptrtoint ptr %plink_retries to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %plink_retries, align 4
  %dot11MeshMaxRetries = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %37, i32 0, i32 57, i32 0, i32 24, i32 4
  %45 = ptrtoint ptr %dot11MeshMaxRetries to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %dot11MeshMaxRetries, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %44, i8 %46)
  %cmp46 = icmp ult i8 %44, %46
  br i1 %cmp46, label %if.then48, label %sw.bb.sw.bb74_crit_edge

sw.bb.sw.bb74_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb74

if.then48:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rand) #9
  %47 = ptrtoint ptr %rand to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %rand, align 4, !annotation !125
  %name50 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %37, i32 0, i32 10
  %conv57 = zext i8 %44 to i32
  %plink_timeout = getelementptr inbounds %struct.mesh_sta, ptr %39, i32 0, i32 14
  %48 = ptrtoint ptr %plink_timeout to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %plink_timeout, align 4
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.3, ptr noundef %name50, ptr noundef %addr35, i32 noundef %conv57, i32 noundef %49) #9
  call void @get_random_bytes(ptr noundef nonnull %rand, i32 noundef 4) #9
  %50 = ptrtoint ptr %mesh2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mesh2, align 8
  %plink_timeout60 = getelementptr inbounds %struct.mesh_sta, ptr %51, i32 0, i32 14
  %52 = ptrtoint ptr %plink_timeout60 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %plink_timeout60, align 4
  %54 = ptrtoint ptr %rand to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rand, align 4
  %rem = urem i32 %55, %53
  %add = add i32 %rem, %53
  store i32 %add, ptr %plink_timeout60, align 4
  %56 = load ptr, ptr %mesh2, align 8
  %plink_retries66 = getelementptr inbounds %struct.mesh_sta, ptr %56, i32 0, i32 9
  %57 = ptrtoint ptr %plink_retries66 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %plink_retries66, align 4
  %inc = add i8 %58, 1
  store i8 %inc, ptr %plink_retries66, align 4
  %59 = load ptr, ptr %mesh2, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %60 = load volatile i32, ptr @jiffies, align 128
  %plink_timeout70 = getelementptr inbounds %struct.mesh_sta, ptr %59, i32 0, i32 14
  %61 = ptrtoint ptr %plink_timeout70 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %plink_timeout70, align 4
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %62) #9
  %add71 = add i32 %call2.i, %60
  %call72 = call i32 @mod_timer(ptr noundef %59, i32 noundef %add71) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rand) #9
  br label %if.then93

sw.bb74:                                          ; preds = %sw.bb.sw.bb74_crit_edge, %if.end30.sw.bb74_crit_edge
  %tobool75.not = phi i16 [ 57, %if.end30.sw.bb74_crit_edge ], [ 56, %sw.bb.sw.bb74_crit_edge ]
  %63 = ptrtoint ptr %plink_state43 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 5, ptr %plink_state43, align 8
  %64 = ptrtoint ptr %mesh2 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mesh2, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %66 = load volatile i32, ptr @jiffies, align 128
  %dot11MeshHoldingTimeout = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %37, i32 0, i32 57, i32 0, i32 24, i32 2
  %67 = ptrtoint ptr %dot11MeshHoldingTimeout to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %dot11MeshHoldingTimeout, align 4
  %conv82 = zext i16 %68 to i32
  %call2.i151 = tail call i32 @__msecs_to_jiffies(i32 noundef %conv82) #9
  %add84 = add i32 %call2.i151, %66
  %call85 = tail call i32 @mod_timer(ptr noundef %65, i32 noundef %add84) #9
  br label %if.then93

sw.bb86:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %call89 = tail call i32 @del_timer(ptr noundef %39) #9
  tail call fastcc void @mesh_plink_fsm_restart(ptr noundef %1)
  br label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %sw.bb86, %if.end30.sw.epilog.thread_crit_edge
  %69 = ptrtoint ptr %mesh2 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mesh2, align 8
  %plink_lock91158 = getelementptr inbounds %struct.mesh_sta, ptr %70, i32 0, i32 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %plink_lock91158) #9
  br label %cleanup

if.then93:                                        ; preds = %sw.bb74, %if.then48
  %reason.1 = phi i16 [ %tobool75.not, %sw.bb74 ], [ 0, %if.then48 ]
  %action.0 = phi i32 [ 3, %sw.bb74 ], [ 1, %if.then48 ]
  %71 = ptrtoint ptr %mesh2 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mesh2, align 8
  %plink_lock91 = getelementptr inbounds %struct.mesh_sta, ptr %72, i32 0, i32 4
  call void @_raw_spin_unlock_bh(ptr noundef %plink_lock91) #9
  %73 = ptrtoint ptr %mesh2 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mesh2, align 8
  %llid = getelementptr inbounds %struct.mesh_sta, ptr %74, i32 0, i32 5
  %75 = ptrtoint ptr %llid to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %llid, align 4
  %plid = getelementptr inbounds %struct.mesh_sta, ptr %74, i32 0, i32 6
  %77 = ptrtoint ptr %plid to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %plid, align 2
  call fastcc void @mesh_plink_frame_tx(ptr noundef %37, ptr noundef %1, i32 noundef %action.0, ptr noundef %addr35, i16 noundef zeroext %76, i16 noundef zeroext %78, i16 noundef zeroext %reason.1)
  br label %cleanup

cleanup:                                          ; preds = %if.then93, %sw.epilog.thread, %if.then18, %if.then4, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sdata_dbg(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mesh_plink_fsm_restart(ptr nocapture noundef readonly %sta) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %mesh = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 17
  %1 = ptrtoint ptr %mesh to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mesh, align 8
  %dep_map = getelementptr inbounds %struct.mesh_sta, ptr %2, i32 0, i32 4, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !120

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 77, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %mesh24 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 17
  %3 = ptrtoint ptr %mesh24 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mesh24, align 8
  %plink_state = getelementptr inbounds %struct.mesh_sta, ptr %4, i32 0, i32 13
  %5 = ptrtoint ptr %plink_state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %plink_state, align 8
  %6 = load ptr, ptr %mesh24, align 8
  %reason = getelementptr inbounds %struct.mesh_sta, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %reason to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %reason, align 2
  %8 = load ptr, ptr %mesh24, align 8
  %plid = getelementptr inbounds %struct.mesh_sta, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %plid to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %plid, align 2
  %10 = load ptr, ptr %mesh24, align 8
  %llid = getelementptr inbounds %struct.mesh_sta, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %llid to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %llid, align 4
  %12 = load ptr, ptr %mesh24, align 8
  %plink_retries = getelementptr inbounds %struct.mesh_sta, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %plink_retries to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %plink_retries, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @mesh_get_new_llid(ptr noundef readonly %sdata) unnamed_addr #0 align 64 {
entry:
  %llid.addr.i = alloca i16, align 2
  %llid = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %llid) #9
  %0 = ptrtoint ptr %llid to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %llid, align 2, !annotation !125
  %local1.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  br label %do.body

do.body:                                          ; preds = %llid_in_use.exit.do.body_crit_edge, %entry
  call void @get_random_bytes(ptr noundef nonnull %llid, i32 noundef 2) #9
  %1 = ptrtoint ptr %llid to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %llid, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %llid.addr.i)
  %3 = ptrtoint ptr %llid.addr.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %llid.addr.i, align 2
  %4 = ptrtoint ptr %local1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %local1.i, align 4
  %6 = call i32 @llvm.read_register.i32(metadata !109) #9
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !122
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i, label %do.body.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

do.body.rcu_read_lock.exit.i_crit_edge:           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %do.body
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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %do.body.rcu_read_lock.exit.i_crit_edge
  %call.i = call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end.i_crit_edge

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b35.i = load i1, ptr @llid_in_use.__warned, align 1
  br i1 %.b35.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @llid_in_use.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 740, ptr noundef nonnull @.str.11) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  %sta_list.i = getelementptr inbounds %struct.ieee80211_local, ptr %5, i32 0, i32 49
  %10 = ptrtoint ptr %sta_list.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %sta.045.i = load volatile ptr, ptr %sta_list.i, align 4
  %cmp.not46.i = icmp eq ptr %sta.045.i, %sta_list.i
  br i1 %cmp.not46.i, label %do.end.i.for.end.i_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %sta.047.i = phi ptr [ %sta.0.i, %for.inc.i.for.body.i_crit_edge ], [ %sta.045.i, %do.end.i.for.body.i_crit_edge ]
  %sdata11.i = getelementptr inbounds %struct.sta_info, ptr %sta.047.i, i32 0, i32 6
  %11 = ptrtoint ptr %sdata11.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sdata11.i, align 4
  %cmp12.not.i = icmp eq ptr %12, %sdata
  br i1 %cmp12.not.i, label %if.end14.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end14.i:                                       ; preds = %for.body.i
  %mesh.i = getelementptr inbounds %struct.sta_info, ptr %sta.047.i, i32 0, i32 17
  %13 = ptrtoint ptr %mesh.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mesh.i, align 8
  %llid15.i = getelementptr inbounds %struct.mesh_sta, ptr %14, i32 0, i32 5
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(2) %llid15.i, ptr noundef nonnull dereferenceable(2) %llid.addr.i, i32 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool17.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool17.not.i, label %if.end14.i.for.end.i_crit_edge, label %if.end14.i.for.inc.i_crit_edge

if.end14.i.for.inc.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end14.i.for.end.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.inc.i:                                        ; preds = %if.end14.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %15 = ptrtoint ptr %sta.047.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %sta.0.i = load volatile ptr, ptr %sta.047.i, align 4
  %cmp.not.i = icmp eq ptr %sta.0.i, %sta_list.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end14.i.for.end.i_crit_edge, %do.end.i.for.end.i_crit_edge
  %cmp.not.lcssa.i = phi i1 [ false, %do.end.i.for.end.i_crit_edge ], [ false, %for.inc.i.for.end.i_crit_edge ], [ true, %if.end14.i.for.end.i_crit_edge ]
  %call.i36.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i36.i, label %for.end.i.llid_in_use.exit_crit_edge, label %land.lhs.true.i39.i

for.end.i.llid_in_use.exit_crit_edge:             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %llid_in_use.exit

land.lhs.true.i39.i:                              ; preds = %for.end.i
  %call1.i37.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i37.i)
  %tobool.not.i38.i = icmp eq i32 %call1.i37.i, 0
  br i1 %tobool.not.i38.i, label %land.lhs.true.i39.i.llid_in_use.exit_crit_edge, label %land.lhs.true2.i41.i

land.lhs.true.i39.i.llid_in_use.exit_crit_edge:   ; preds = %land.lhs.true.i39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %llid_in_use.exit

land.lhs.true2.i41.i:                             ; preds = %land.lhs.true.i39.i
  %.b4.i40.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i40.i, label %land.lhs.true2.i41.i.llid_in_use.exit_crit_edge, label %if.then.i42.i

land.lhs.true2.i41.i.llid_in_use.exit_crit_edge:  ; preds = %land.lhs.true2.i41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %llid_in_use.exit

if.then.i42.i:                                    ; preds = %land.lhs.true2.i41.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.14) #9
  br label %llid_in_use.exit

llid_in_use.exit:                                 ; preds = %if.then.i42.i, %land.lhs.true2.i41.i.llid_in_use.exit_crit_edge, %land.lhs.true.i39.i.llid_in_use.exit_crit_edge, %for.end.i.llid_in_use.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !123
  %16 = call i32 @llvm.read_register.i32(metadata !109) #9
  %and.i.i.i.i.i43.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i43.i to ptr
  %preempt_count.i.i.i.i44.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i44.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i44.i, align 4
  %sub.i.i.i.i = add i32 %19, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i44.i, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %llid.addr.i)
  br i1 %cmp.not.lcssa.i, label %llid_in_use.exit.do.body_crit_edge, label %do.end

llid_in_use.exit.do.body_crit_edge:               ; preds = %llid_in_use.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end:                                           ; preds = %llid_in_use.exit
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %llid to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %llid, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %llid) #9
  ret i16 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_mps_local_status_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mesh_plink_block(ptr noundef %sta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mesh = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 17
  %0 = ptrtoint ptr %mesh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mesh, align 8
  %plink_lock = getelementptr inbounds %struct.mesh_sta, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %plink_lock) #9
  %call = tail call fastcc i32 @__mesh_plink_deactivate(ptr noundef %sta)
  %2 = ptrtoint ptr %mesh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mesh, align 8
  %plink_state = getelementptr inbounds %struct.mesh_sta, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %plink_state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 6, ptr %plink_state, align 8
  %5 = load ptr, ptr %mesh, align 8
  %plink_lock3 = getelementptr inbounds %struct.mesh_sta, ptr %5, i32 0, i32 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %plink_lock3) #9
  tail call void @mesh_path_flush_by_nexthop(ptr noundef %sta) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mesh_rx_plink_frame(ptr noundef %sdata, ptr noundef %mgmt, i32 noundef %len, ptr nocapture noundef readonly %rx_status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %len)
  %cmp = icmp ult i32 %len, 28
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %user_mpm = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 33
  %0 = ptrtoint ptr %user_mpm to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %user_mpm, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %da = getelementptr inbounds %struct.ieee80211_mgmt, ptr %mgmt, i32 0, i32 2
  %2 = ptrtoint ptr %da to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %da, align 4
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.5, ptr noundef %name) #9
  br label %cleanup

if.end5:                                          ; preds = %if.end2
  %u6 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %mgmt, i32 0, i32 6
  %u7 = getelementptr inbounds %struct.anon.171, ptr %u6, i32 0, i32 1
  %variable = getelementptr inbounds %struct.ieee80211_mgmt, ptr %mgmt, i32 0, i32 6, i32 0, i32 1
  %5 = ptrtoint ptr %u7 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %u7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp15 = icmp eq i8 %6, 2
  br i1 %cmp15, label %if.then17, label %if.end5.if.end22_crit_edge

if.end5.if.end22_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then17:                                        ; preds = %if.end5
  %add.ptr = getelementptr %struct.ieee80211_mgmt, ptr %mgmt, i32 0, i32 6, i32 0, i32 2, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %len)
  %cmp18 = icmp ult i32 %len, 30
  br i1 %cmp18, label %if.then17.cleanup_crit_edge, label %if.then17.if.end22_crit_edge

if.then17.if.end22_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22:                                         ; preds = %if.then17.if.end22_crit_edge, %if.end5.if.end22_crit_edge
  %baselen.0.neg = phi i32 [ -30, %if.then17.if.end22_crit_edge ], [ -26, %if.end5.if.end22_crit_edge ]
  %baseaddr.0 = phi ptr [ %add.ptr, %if.then17.if.end22_crit_edge ], [ %variable, %if.end5.if.end22_crit_edge ]
  %sub = add i32 %baselen.0.neg, %len
  %bssid = getelementptr inbounds %struct.ieee80211_mgmt, ptr %mgmt, i32 0, i32 4
  %call.i = tail call ptr @ieee802_11_parse_elems_crc(ptr noundef %baseaddr.0, i32 noundef %sub, i1 noundef zeroext true, i64 noundef 0, i32 noundef 0, ptr noundef %bssid, ptr noundef null) #9
  %peering_len.i = getelementptr inbounds %struct.ieee802_11_elems, ptr %call.i, i32 0, i32 68
  %7 = ptrtoint ptr %peering_len.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %peering_len.i, align 1
  %peering.i = getelementptr inbounds %struct.ieee802_11_elems, ptr %call.i, i32 0, i32 29
  %9 = ptrtoint ptr %peering.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %peering.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %name.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.22, ptr noundef %name.i) #9
  br label %mesh_process_plink_frame.exit

if.end.i:                                         ; preds = %if.end22
  %rsn_len.i = getelementptr inbounds %struct.ieee802_11_elems, ptr %call.i, i32 0, i32 61
  %11 = ptrtoint ptr %rsn_len.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %rsn_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool1.not.i = icmp eq i8 %12, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end6.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %security.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 32
  %13 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %security.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i = icmp eq i32 %14, 0
  br i1 %cmp.i, label %if.then3.i, label %land.lhs.true.i.if.end6.i_crit_edge

land.lhs.true.i.if.end6.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.then3.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %name4.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.23, ptr noundef %name4.i) #9
  br label %mesh_process_plink_frame.exit

if.end6.i:                                        ; preds = %land.lhs.true.i.if.end6.i_crit_edge, %if.end.i.if.end6.i_crit_edge
  %15 = ptrtoint ptr %u7 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %u7, align 1
  %conv9.i = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp10.i = icmp eq i8 %16, 1
  %cmp10.not.i = xor i1 %cmp10.i, true
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %8)
  %cmp14.not.i = icmp eq i8 %8, 4
  %or.cond.i = select i1 %cmp10.not.i, i1 true, i1 %cmp14.not.i
  br i1 %or.cond.i, label %lor.lhs.false.i, label %if.end6.i.if.then33.i_crit_edge

if.end6.i.if.then33.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then33.i

lor.lhs.false.i:                                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %16)
  %cmp16.i = icmp eq i8 %16, 2
  %cmp16.not.i = xor i1 %cmp16.i, true
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %8)
  %cmp20.not.i = icmp eq i8 %8, 6
  %or.cond189.i = select i1 %cmp16.not.i, i1 true, i1 %cmp20.not.i
  br i1 %or.cond189.i, label %lor.lhs.false22.i, label %lor.lhs.false.i.if.then33.i_crit_edge

lor.lhs.false.i.if.then33.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then33.i

lor.lhs.false22.i:                                ; preds = %lor.lhs.false.i
  %.fr.i = freeze i8 %16
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.fr.i)
  %cmp23.i = icmp eq i8 %.fr.i, 3
  br i1 %cmp23.i, label %switch.early.test.i, label %land.lhs.true40.critedge.i

switch.early.test.i:                              ; preds = %lor.lhs.false22.i
  %17 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.50)
  switch i8 %8, label %switch.early.test.i.if.then33.i_crit_edge [
    i8 8, label %switch.early.test.i.if.end47.i_crit_edge
    i8 6, label %switch.early.test.i.if.end47.i_crit_edge43
  ]

switch.early.test.i.if.end47.i_crit_edge43:       ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47.i

switch.early.test.i.if.end47.i_crit_edge:         ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47.i

switch.early.test.i.if.then33.i_crit_edge:        ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then33.i

if.then33.i:                                      ; preds = %switch.early.test.i.if.then33.i_crit_edge, %lor.lhs.false.i.if.then33.i_crit_edge, %if.end6.i.if.then33.i_crit_edge
  %name34.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  %conv36.i = zext i8 %8 to i32
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.24, ptr noundef %name34.i, i32 noundef %conv9.i, i32 noundef %conv36.i) #9
  br label %mesh_process_plink_frame.exit

land.lhs.true40.critedge.i:                       ; preds = %lor.lhs.false22.i
  %mesh_id.i = getelementptr inbounds %struct.ieee802_11_elems, ptr %call.i, i32 0, i32 28
  %18 = ptrtoint ptr %mesh_id.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mesh_id.i, align 4
  %tobool41.not.i = icmp eq ptr %19, null
  br i1 %tobool41.not.i, label %land.lhs.true40.critedge.i.if.then44.i_crit_edge, label %lor.lhs.false42.i

land.lhs.true40.critedge.i.if.then44.i_crit_edge: ; preds = %land.lhs.true40.critedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then44.i

lor.lhs.false42.i:                                ; preds = %land.lhs.true40.critedge.i
  %mesh_config.i = getelementptr inbounds %struct.ieee802_11_elems, ptr %call.i, i32 0, i32 20
  %20 = ptrtoint ptr %mesh_config.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mesh_config.i, align 4
  %tobool43.not.i = icmp eq ptr %21, null
  br i1 %tobool43.not.i, label %lor.lhs.false42.i.if.then44.i_crit_edge, label %lor.lhs.false42.i.if.end47.i_crit_edge

lor.lhs.false42.i.if.end47.i_crit_edge:           ; preds = %lor.lhs.false42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47.i

lor.lhs.false42.i.if.then44.i_crit_edge:          ; preds = %lor.lhs.false42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then44.i

if.then44.i:                                      ; preds = %lor.lhs.false42.i.if.then44.i_crit_edge, %land.lhs.true40.critedge.i.if.then44.i_crit_edge
  %name45.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.25, ptr noundef %name45.i) #9
  br label %mesh_process_plink_frame.exit

if.end47.i:                                       ; preds = %lor.lhs.false42.i.if.end47.i_crit_edge, %switch.early.test.i.if.end47.i_crit_edge, %switch.early.test.i.if.end47.i_crit_edge43
  %add.ptr.i = getelementptr i8, ptr %10, i32 2
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %add.ptr.i, align 1
  %24 = tail call i16 @llvm.bswap.i16(i16 %23) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %8)
  %cmp56.i = icmp eq i8 %8, 8
  %or.cond192.i = select i1 %cmp23.i, i1 %cmp56.i, i1 false
  %or.cond195.i = select i1 %cmp16.i, i1 true, i1 %or.cond192.i
  br i1 %or.cond195.i, label %if.then58.i, label %if.end47.i.if.end62.i_crit_edge

if.end47.i.if.end62.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62.i

if.then58.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr60.i = getelementptr i8, ptr %10, i32 4
  %25 = ptrtoint ptr %add.ptr60.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %add.ptr60.i, align 1
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #9
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.then58.i, %if.end47.i.if.end62.i_crit_edge
  %llid.0.i = phi i16 [ %27, %if.then58.i ], [ 0, %if.end47.i.if.end62.i_crit_edge ]
  %28 = tail call i32 @llvm.read_register.i32(metadata !109) #9
  %and.i.i.i.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %31, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !122
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i, label %if.end62.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end62.i.rcu_read_lock.exit.i_crit_edge:        ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end62.i
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end62.i.rcu_read_lock.exit.i_crit_edge
  %sa.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %mgmt, i32 0, i32 3
  %call64.i = tail call ptr @sta_info_get(ptr noundef %sdata, ptr noundef %sa.i) #9
  br i1 %cmp10.i, label %land.lhs.true67.i, label %if.end74.i

land.lhs.true67.i:                                ; preds = %rcu_read_lock.exit.i
  %rssi_threshold1.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24, i32 22
  %32 = ptrtoint ptr %rssi_threshold1.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rssi_threshold1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i.i = icmp eq i32 %33, 0
  br i1 %cmp.i.i, label %land.lhs.true67.i.if.end74.thread.i_crit_edge, label %lor.rhs.i.i

land.lhs.true67.i.if.end74.thread.i_crit_edge:    ; preds = %land.lhs.true67.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74.thread.i

lor.rhs.i.i:                                      ; preds = %land.lhs.true67.i
  %tobool.not.i196.i = icmp eq ptr %call64.i, null
  br i1 %tobool.not.i196.i, label %lor.rhs.i.i.if.then69.i_crit_edge, label %rssi_threshold_check.exit.i

lor.rhs.i.i.if.then69.i_crit_edge:                ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then69.i

rssi_threshold_check.exit.i:                      ; preds = %lor.rhs.i.i
  %rx_stats_avg.i.i = getelementptr inbounds %struct.sta_info, ptr %call64.i, i32 0, i32 33
  %34 = ptrtoint ptr %rx_stats_avg.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rx_stats_avg.i.i, align 4
  %shr.i.i.i = lshr i32 %35, 10
  %.neg.i.i = mul i32 %shr.i.i.i, -16777216
  %conv2.i.i = ashr exact i32 %.neg.i.i, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2.i.i, i32 %33)
  %cmp3.i.i = icmp sgt i32 %conv2.i.i, %33
  br i1 %cmp3.i.i, label %rssi_threshold_check.exit.i.if.end74.thread.i_crit_edge, label %rssi_threshold_check.exit.i.if.then69.i_crit_edge

rssi_threshold_check.exit.i.if.then69.i_crit_edge: ; preds = %rssi_threshold_check.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then69.i

rssi_threshold_check.exit.i.if.end74.thread.i_crit_edge: ; preds = %rssi_threshold_check.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74.thread.i

if.then69.i:                                      ; preds = %rssi_threshold_check.exit.i.if.then69.i_crit_edge, %lor.rhs.i.i.if.then69.i_crit_edge
  %name70.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.26, ptr noundef %name70.i, ptr noundef %sa.i) #9
  br label %unlock_rcu.i

if.end74.thread.i:                                ; preds = %rssi_threshold_check.exit.i.if.end74.thread.i_crit_edge, %land.lhs.true67.i.if.end74.thread.i_crit_edge
  %36 = ptrtoint ptr %peering_len.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %peering_len.i, align 1
  br label %lor.end.i.i

if.end74.i:                                       ; preds = %rcu_read_lock.exit.i
  %38 = ptrtoint ptr %peering_len.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %peering_len.i, align 1
  br i1 %cmp23.i, label %lor.end.thread.i.i, label %if.end74.i.lor.end.i.i_crit_edge

if.end74.i.lor.end.i.i_crit_edge:                 ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end.i.i

lor.end.thread.i.i:                               ; preds = %if.end74.i
  %tobool1.not141.i.i = icmp eq ptr %call64.i, null
  br i1 %tobool1.not141.i.i, label %lor.end.thread.i.i.if.then5.i.i_crit_edge, label %lor.end.thread.i.i.if.else.i.i_crit_edge

lor.end.thread.i.i.if.else.i.i_crit_edge:         ; preds = %lor.end.thread.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.i

lor.end.thread.i.i.if.then5.i.i_crit_edge:        ; preds = %lor.end.thread.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5.i.i

lor.end.i.i:                                      ; preds = %if.end74.i.lor.end.i.i_crit_edge, %if.end74.thread.i
  %40 = phi i8 [ %37, %if.end74.thread.i ], [ %39, %if.end74.i.lor.end.i.i_crit_edge ]
  %call.i198.i = tail call zeroext i1 @mesh_matches_local(ptr noundef %sdata, ptr noundef %call.i) #9
  %.not.i.i = xor i1 %call.i198.i, true
  %tobool1.not.i.i = icmp eq ptr %call64.i, null
  %or.cond.i.i = and i1 %tobool1.not.i.i, %.not.i.i
  br i1 %or.cond.i.i, label %if.then92.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %lor.end.i.i
  br i1 %tobool1.not.i.i, label %if.then3.i.i, label %if.end.i.i.if.else.i.i_crit_edge

if.end.i.i.if.else.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %.fr.i)
  %cmp4.not.i.i = icmp eq i8 %.fr.i, 1
  br i1 %cmp4.not.i.i, label %if.end6.i.i, label %if.then3.i.i.if.then5.i.i_crit_edge

if.then3.i.i.if.then5.i.i_crit_edge:              ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.then3.i.i.if.then5.i.i_crit_edge, %lor.end.thread.i.i.if.then5.i.i_crit_edge
  %name.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.28, ptr noundef %name.i.i) #9
  br label %unlock_rcu.i

if.end6.i.i:                                      ; preds = %if.then3.i.i
  %dot11MeshMaxPeerLinks.i.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24, i32 3
  %41 = ptrtoint ptr %dot11MeshMaxPeerLinks.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %dot11MeshMaxPeerLinks.i.i.i, align 2
  %conv.i.i.i = zext i16 %42 to i32
  %estab_plinks.i.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 25
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %estab_plinks.i.i.i, i32 noundef 4) #9
  %43 = ptrtoint ptr %estab_plinks.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %estab_plinks.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %conv.i.i.i)
  %tobool8.not.i.i = icmp eq i32 %44, %conv.i.i.i
  br i1 %tobool8.not.i.i, label %if.then9.i.i, label %if.end6.i.i.if.then78.i_crit_edge

if.end6.i.i.if.then78.i_crit_edge:                ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then78.i

if.then9.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %name10.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.29, ptr noundef %name10.i.i) #9
  br label %unlock_rcu.i

if.else.i.i:                                      ; preds = %if.end.i.i.if.else.i.i_crit_edge, %lor.end.thread.i.i.if.else.i.i_crit_edge
  %45 = phi i8 [ %40, %if.end.i.i.if.else.i.i_crit_edge ], [ %39, %lor.end.thread.i.i.if.else.i.i_crit_edge ]
  %_flags.i.i.i = getelementptr inbounds %struct.sta_info, ptr %call64.i, i32 0, i32 24
  %46 = ptrtoint ptr %_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %_flags.i.i.i, align 4
  %and1.i.i.i.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool14.not.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool14.not.i.i, label %if.then15.i.i, label %if.end18.i.i

if.then15.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %name16.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.30, ptr noundef %name16.i.i) #9
  br label %unlock_rcu.i

if.end18.i.i:                                     ; preds = %if.else.i.i
  %mesh.i.i = getelementptr inbounds %struct.sta_info, ptr %call64.i, i32 0, i32 17
  %48 = ptrtoint ptr %mesh.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mesh.i.i, align 8
  %plink_state.i.i = getelementptr inbounds %struct.mesh_sta, ptr %49, i32 0, i32 13
  %50 = ptrtoint ptr %plink_state.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %plink_state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %51)
  %cmp19.i.i = icmp eq i32 %51, 6
  br i1 %cmp19.i.i, label %if.end18.i.i.unlock_rcu.i_crit_edge, label %if.end22.i.i

if.end18.i.i.unlock_rcu.i_crit_edge:              ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock_rcu.i

if.end22.i.i:                                     ; preds = %if.end18.i.i
  %52 = zext i8 %.fr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.51)
  switch i8 %.fr.i, label %sw.default.i.i [
    i8 1, label %sw.bb.i.i
    i8 2, label %sw.bb41.i.i
    i8 3, label %sw.bb69.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end22.i.i
  %dot11MeshMaxPeerLinks.i130.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24, i32 3
  %53 = ptrtoint ptr %dot11MeshMaxPeerLinks.i130.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %dot11MeshMaxPeerLinks.i130.i.i, align 2
  %conv.i131.i.i = zext i16 %54 to i32
  %estab_plinks.i132.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 25
  %call.i.i.i133.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %estab_plinks.i132.i.i, i32 noundef 4) #9
  %55 = ptrtoint ptr %estab_plinks.i132.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %estab_plinks.i132.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %conv.i131.i.i)
  %tobool27.not.i.i = icmp eq i32 %56, %conv.i131.i.i
  br i1 %tobool27.not.i.i, label %sw.bb.i.i.if.end121.i_crit_edge, label %lor.lhs.false.i.i

sw.bb.i.i.if.end121.i_crit_edge:                  ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end121.i

lor.lhs.false.i.i:                                ; preds = %sw.bb.i.i
  %57 = ptrtoint ptr %mesh.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mesh.i.i, align 8
  %plid29.i.i = getelementptr inbounds %struct.mesh_sta, ptr %58, i32 0, i32 6
  %59 = ptrtoint ptr %plid29.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %plid29.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %tobool30.not.i.i = icmp eq i16 %60, 0
  call void @__sanitizer_cov_trace_cmp2(i16 %60, i16 %24)
  %cmp36.not.i.i = icmp eq i16 %60, %24
  %or.cond127.i.i = or i1 %tobool30.not.i.i, %cmp36.not.i.i
  br i1 %or.cond127.i.i, label %lor.lhs.false.i.i.if.then78.i_crit_edge, label %lor.lhs.false.i.i.if.end121.i_crit_edge

lor.lhs.false.i.i.if.end121.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end121.i

lor.lhs.false.i.i.if.then78.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then78.i

sw.bb41.i.i:                                      ; preds = %if.end22.i.i
  %dot11MeshMaxPeerLinks.i135.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24, i32 3
  %61 = ptrtoint ptr %dot11MeshMaxPeerLinks.i135.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %dot11MeshMaxPeerLinks.i135.i.i, align 2
  %conv.i136.i.i = zext i16 %62 to i32
  %estab_plinks.i137.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 25
  %call.i.i.i138.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %estab_plinks.i137.i.i, i32 noundef 4) #9
  %63 = ptrtoint ptr %estab_plinks.i137.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %estab_plinks.i137.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %conv.i136.i.i)
  %tobool46.not.i.i = icmp eq i32 %64, %conv.i136.i.i
  br i1 %tobool46.not.i.i, label %sw.bb41.i.i.if.end121.i_crit_edge, label %lor.lhs.false47.i.i

sw.bb41.i.i.if.end121.i_crit_edge:                ; preds = %sw.bb41.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end121.i

lor.lhs.false47.i.i:                              ; preds = %sw.bb41.i.i
  %65 = ptrtoint ptr %mesh.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mesh.i.i, align 8
  %llid49.i.i = getelementptr inbounds %struct.mesh_sta, ptr %66, i32 0, i32 5
  %67 = ptrtoint ptr %llid49.i.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %llid49.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %68, i16 %llid.0.i)
  %cmp52.not.i.i = icmp eq i16 %68, %llid.0.i
  br i1 %cmp52.not.i.i, label %lor.lhs.false54.i.i, label %lor.lhs.false47.i.i.if.end121.i_crit_edge

lor.lhs.false47.i.i.if.end121.i_crit_edge:        ; preds = %lor.lhs.false47.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end121.i

lor.lhs.false54.i.i:                              ; preds = %lor.lhs.false47.i.i
  %plid56.i.i = getelementptr inbounds %struct.mesh_sta, ptr %66, i32 0, i32 6
  %69 = ptrtoint ptr %plid56.i.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %plid56.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %70)
  %tobool58.not.i.i = icmp eq i16 %70, 0
  call void @__sanitizer_cov_trace_cmp2(i16 %70, i16 %24)
  %cmp64.not.i.i = icmp eq i16 %70, %24
  %or.cond128.i.i = or i1 %tobool58.not.i.i, %cmp64.not.i.i
  br i1 %or.cond128.i.i, label %if.then107.i, label %lor.lhs.false54.i.i.if.end121.i_crit_edge

lor.lhs.false54.i.i.if.end121.i_crit_edge:        ; preds = %lor.lhs.false54.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end121.i

sw.bb69.i.i:                                      ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %51)
  %cmp72.i.i = icmp eq i32 %51, 4
  br i1 %cmp72.i.i, label %sw.bb69.i.i.if.end121.i_crit_edge, label %if.else75.i.i

sw.bb69.i.i.if.end121.i_crit_edge:                ; preds = %sw.bb69.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end121.i

if.else75.i.i:                                    ; preds = %sw.bb69.i.i
  %plid77.i.i = getelementptr inbounds %struct.mesh_sta, ptr %49, i32 0, i32 6
  %71 = ptrtoint ptr %plid77.i.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %plid77.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %72, i16 %24)
  %cmp80.not.i.i = icmp eq i16 %72, %24
  br i1 %cmp80.not.i.i, label %if.else83.i.i, label %if.else75.i.i.if.end121.i_crit_edge

if.else75.i.i.if.end121.i_crit_edge:              ; preds = %if.else75.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end121.i

if.else83.i.i:                                    ; preds = %if.else75.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %45)
  %cmp85.i.i = icmp eq i8 %45, 8
  br i1 %cmp85.i.i, label %land.lhs.true87.i.i, label %if.else83.i.i.if.else95.i.i_crit_edge

if.else83.i.i.if.else95.i.i_crit_edge:            ; preds = %if.else83.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else95.i.i

land.lhs.true87.i.i:                              ; preds = %if.else83.i.i
  %llid89.i.i = getelementptr inbounds %struct.mesh_sta, ptr %49, i32 0, i32 5
  %73 = ptrtoint ptr %llid89.i.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %llid89.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %74, i16 %llid.0.i)
  %cmp92.not.i.i = icmp eq i16 %74, %llid.0.i
  br i1 %cmp92.not.i.i, label %land.lhs.true87.i.i.if.else95.i.i_crit_edge, label %land.lhs.true87.i.i.if.end121.i_crit_edge

land.lhs.true87.i.i.if.end121.i_crit_edge:        ; preds = %land.lhs.true87.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end121.i

land.lhs.true87.i.i.if.else95.i.i_crit_edge:      ; preds = %land.lhs.true87.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else95.i.i

if.else95.i.i:                                    ; preds = %land.lhs.true87.i.i.if.else95.i.i_crit_edge, %if.else83.i.i.if.else95.i.i_crit_edge
  br label %if.end121.i

sw.default.i.i:                                   ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %name99.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.31, ptr noundef %name99.i.i) #9
  br label %unlock_rcu.i

if.then78.i:                                      ; preds = %lor.lhs.false.i.i.if.then78.i_crit_edge, %if.end6.i.i.if.then78.i_crit_edge
  %call.i199.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i199.i, label %if.then78.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i202.i

if.then78.i.rcu_read_unlock.exit.i_crit_edge:     ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

land.lhs.true.i202.i:                             ; preds = %if.then78.i
  %call1.i200.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i200.i)
  %tobool.not.i201.i = icmp eq i32 %call1.i200.i, 0
  br i1 %tobool.not.i201.i, label %land.lhs.true.i202.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i204.i

land.lhs.true.i202.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i202.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i204.i:                            ; preds = %land.lhs.true.i202.i
  %.b4.i203.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i203.i, label %land.lhs.true2.i204.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i205.i

land.lhs.true2.i204.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i204.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

if.then.i205.i:                                   ; preds = %land.lhs.true2.i204.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.14) #9
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i205.i, %land.lhs.true2.i204.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i202.i.rcu_read_unlock.exit.i_crit_edge, %if.then78.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !123
  %75 = tail call i32 @llvm.read_register.i32(metadata !109) #9
  %and.i.i.i.i.i206.i = and i32 %75, -16384
  %76 = inttoptr i32 %and.i.i.i.i.i206.i to ptr
  %preempt_count.i.i.i.i207.i = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %preempt_count.i.i.i.i207.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %preempt_count.i.i.i.i207.i, align 4
  %sub.i.i.i.i = add i32 %78, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i207.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %call81.i = tail call fastcc ptr @mesh_sta_info_get(ptr noundef %sdata, ptr noundef %sa.i, ptr noundef %call.i, ptr noundef %rx_status) #9
  %tobool82.not.i = icmp eq ptr %call81.i, null
  br i1 %tobool82.not.i, label %if.then83.i, label %if.end104.thread.i

if.then83.i:                                      ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %name84.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.27, ptr noundef %name84.i) #9
  br label %unlock_rcu.i

if.end104.thread.i:                               ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %mesh.i = getelementptr inbounds %struct.sta_info, ptr %call81.i, i32 0, i32 17
  %79 = ptrtoint ptr %mesh.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mesh.i, align 8
  %plid87.i = getelementptr inbounds %struct.mesh_sta, ptr %80, i32 0, i32 6
  %81 = ptrtoint ptr %plid87.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %24, ptr %plid87.i, align 2
  br label %if.end121.i

if.then92.i:                                      ; preds = %lor.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @mesh_plink_frame_tx(ptr noundef %sdata, ptr noundef null, i32 noundef 3, ptr noundef %sa.i, i16 noundef zeroext 0, i16 noundef zeroext %24, i16 noundef zeroext 54) #9
  br label %unlock_rcu.i

if.then107.i:                                     ; preds = %lor.lhs.false54.i.i
  %82 = ptrtoint ptr %mesh.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %mesh.i.i, align 8
  %plid109.i = getelementptr inbounds %struct.mesh_sta, ptr %83, i32 0, i32 6
  %84 = ptrtoint ptr %plid109.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %plid109.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %85)
  %tobool110.not.i = icmp eq i16 %85, 0
  br i1 %tobool110.not.i, label %if.then111.i, label %if.then107.i.if.end114.i_crit_edge

if.then107.i.if.end114.i_crit_edge:               ; preds = %if.then107.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end114.i

if.then111.i:                                     ; preds = %if.then107.i
  call void @__sanitizer_cov_trace_pc() #11
  %86 = ptrtoint ptr %plid109.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %24, ptr %plid109.i, align 2
  br label %if.end114.i

if.end114.i:                                      ; preds = %if.then111.i, %if.then107.i.if.end114.i_crit_edge
  %add.ptr118.i = getelementptr %struct.ieee80211_mgmt, ptr %mgmt, i32 0, i32 6, i32 0, i32 2
  %87 = ptrtoint ptr %add.ptr118.i to i32
  call void @__asan_loadN_noabort(i32 %87, i32 2)
  %88 = load i16, ptr %add.ptr118.i, align 1
  %89 = tail call i16 @llvm.bswap.i16(i16 %88) #9
  %90 = ptrtoint ptr %mesh.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mesh.i.i, align 8
  %aid.i = getelementptr inbounds %struct.mesh_sta, ptr %91, i32 0, i32 7
  %92 = ptrtoint ptr %aid.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %89, ptr %aid.i, align 8
  br label %if.end121.i

if.end121.i:                                      ; preds = %if.end114.i, %if.end104.thread.i, %if.else95.i.i, %land.lhs.true87.i.i.if.end121.i_crit_edge, %if.else75.i.i.if.end121.i_crit_edge, %sw.bb69.i.i.if.end121.i_crit_edge, %lor.lhs.false54.i.i.if.end121.i_crit_edge, %lor.lhs.false47.i.i.if.end121.i_crit_edge, %sw.bb41.i.i.if.end121.i_crit_edge, %lor.lhs.false.i.i.if.end121.i_crit_edge, %sw.bb.i.i.if.end121.i_crit_edge
  %sta.0243.i = phi ptr [ %call81.i, %if.end104.thread.i ], [ %call64.i, %if.end114.i ], [ %call64.i, %if.else95.i.i ], [ %call64.i, %sw.bb.i.i.if.end121.i_crit_edge ], [ %call64.i, %lor.lhs.false47.i.i.if.end121.i_crit_edge ], [ %call64.i, %sw.bb41.i.i.if.end121.i_crit_edge ], [ %call64.i, %sw.bb69.i.i.if.end121.i_crit_edge ], [ %call64.i, %if.else75.i.i.if.end121.i_crit_edge ], [ %call64.i, %land.lhs.true87.i.i.if.end121.i_crit_edge ], [ %call64.i, %lor.lhs.false.i.i.if.end121.i_crit_edge ], [ %call64.i, %lor.lhs.false54.i.i.if.end121.i_crit_edge ]
  %cmp.i181.i.i = phi i16 [ 54, %if.end104.thread.i ], [ 54, %if.end114.i ], [ 55, %if.else95.i.i ], [ 54, %sw.bb.i.i.if.end121.i_crit_edge ], [ 54, %lor.lhs.false47.i.i.if.end121.i_crit_edge ], [ 54, %sw.bb41.i.i.if.end121.i_crit_edge ], [ 55, %sw.bb69.i.i.if.end121.i_crit_edge ], [ 54, %if.else75.i.i.if.end121.i_crit_edge ], [ 54, %land.lhs.true87.i.i.if.end121.i_crit_edge ], [ 54, %lor.lhs.false.i.i.if.end121.i_crit_edge ], [ 54, %lor.lhs.false54.i.i.if.end121.i_crit_edge ]
  %event.0.i232242.i = phi i32 [ 1, %if.end104.thread.i ], [ 4, %if.end114.i ], [ 7, %if.else95.i.i ], [ 3, %sw.bb.i.i.if.end121.i_crit_edge ], [ 6, %lor.lhs.false47.i.i.if.end121.i_crit_edge ], [ 6, %sw.bb41.i.i.if.end121.i_crit_edge ], [ 7, %sw.bb69.i.i.if.end121.i_crit_edge ], [ 8, %if.else75.i.i.if.end121.i_crit_edge ], [ 8, %land.lhs.true87.i.i.if.end121.i_crit_edge ], [ 3, %lor.lhs.false.i.i.if.end121.i_crit_edge ], [ 6, %lor.lhs.false54.i.i.if.end121.i_crit_edge ]
  %mshcfg1.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24
  %name.i208.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  %addr.i.i = getelementptr inbounds %struct.sta_info, ptr %sta.0243.i, i32 0, i32 48, i32 1
  %mesh.i209.i = getelementptr inbounds %struct.sta_info, ptr %sta.0243.i, i32 0, i32 17
  %93 = ptrtoint ptr %mesh.i209.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mesh.i209.i, align 8
  %plink_state.i210.i = getelementptr inbounds %struct.mesh_sta, ptr %94, i32 0, i32 13
  %95 = ptrtoint ptr %plink_state.i210.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %plink_state.i210.i, align 8
  %arrayidx.i.i = getelementptr [7 x ptr], ptr @mplstates, i32 0, i32 %96
  %97 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx.i.i, align 4
  %arrayidx4.i.i = getelementptr [9 x ptr], ptr @mplevents, i32 0, i32 %event.0.i232242.i
  %99 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx4.i.i, align 4
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.32, ptr noundef %name.i208.i, ptr noundef %addr.i.i, ptr noundef %98, ptr noundef %100) #9
  %101 = ptrtoint ptr %mesh.i209.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %mesh.i209.i, align 8
  %plink_lock.i.i = getelementptr inbounds %struct.mesh_sta, ptr %102, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %plink_lock.i.i) #9
  %103 = ptrtoint ptr %mesh.i209.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %mesh.i209.i, align 8
  %plink_state7.i.i = getelementptr inbounds %struct.mesh_sta, ptr %104, i32 0, i32 13
  %105 = ptrtoint ptr %plink_state7.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %plink_state7.i.i, align 8
  %107 = zext i32 %106 to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %106, label %if.end121.i.if.end.thread259.i.i_crit_edge [
    i32 0, label %sw.bb.i211.i
    i32 1, label %sw.bb14.i.i
    i32 2, label %sw.bb28.i.i
    i32 3, label %sw.bb36.i.i
    i32 4, label %sw.bb43.i.i
    i32 5, label %sw.bb54.i.i
  ]

if.end121.i.if.end.thread259.i.i_crit_edge:       ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.thread259.i.i

sw.bb.i211.i:                                     ; preds = %if.end121.i
  %108 = zext i32 %event.0.i232242.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %event.0.i232242.i, label %sw.bb.i211.i.if.end.thread259.i.i_crit_edge [
    i32 7, label %sw.bb8.i.i
    i32 1, label %sw.bb9.i.i
  ]

sw.bb.i211.i.if.end.thread259.i.i_crit_edge:      ; preds = %sw.bb.i211.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.thread259.i.i

sw.bb8.i.i:                                       ; preds = %sw.bb.i211.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %109 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool.not.i.i.i = icmp eq i32 %109, 0
  br i1 %tobool.not.i.i.i, label %sw.bb8.i.i.mesh_plink_fsm_restart.exit.i.i_crit_edge, label %land.rhs.i.i.i

sw.bb8.i.i.mesh_plink_fsm_restart.exit.i.i_crit_edge: ; preds = %sw.bb8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mesh_plink_fsm_restart.exit.i.i

land.rhs.i.i.i:                                   ; preds = %sw.bb8.i.i
  %dep_map.i.i.i = getelementptr inbounds %struct.mesh_sta, ptr %104, i32 0, i32 4, i32 0, i32 0, i32 4
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.mesh_plink_fsm_restart.exit.i.i_crit_edge, !prof !120

land.rhs.i.i.i.mesh_plink_fsm_restart.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mesh_plink_fsm_restart.exit.i.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 77, i32 noundef 9, ptr noundef null) #9
  br label %mesh_plink_fsm_restart.exit.i.i

mesh_plink_fsm_restart.exit.i.i:                  ; preds = %do.end.i.i.i, %land.rhs.i.i.i.mesh_plink_fsm_restart.exit.i.i_crit_edge, %sw.bb8.i.i.mesh_plink_fsm_restart.exit.i.i_crit_edge
  %110 = ptrtoint ptr %mesh.i209.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %mesh.i209.i, align 8
  %plink_state.i.i.i = getelementptr inbounds %struct.mesh_sta, ptr %111, i32 0, i32 13
  %112 = ptrtoint ptr %plink_state.i.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %plink_state.i.i.i, align 8
  %113 = load ptr, ptr %mesh.i209.i, align 8
  %reason.i.i.i = getelementptr inbounds %struct.mesh_sta, ptr %113, i32 0, i32 8
  %114 = ptrtoint ptr %reason.i.i.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 0, ptr %reason.i.i.i, align 2
  %115 = load ptr, ptr %mesh.i209.i, align 8
  %plid.i.i.i = getelementptr inbounds %struct.mesh_sta, ptr %115, i32 0, i32 6
  %116 = ptrtoint ptr %plid.i.i.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 0, ptr %plid.i.i.i, align 2
  %117 = load ptr, ptr %mesh.i209.i, align 8
  %llid.i.i.i = getelementptr inbounds %struct.mesh_sta, ptr %117, i32 0, i32 5
  %118 = ptrtoint ptr %llid.i.i.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 0, ptr %llid.i.i.i, align 4
  %119 = load ptr, ptr %mesh.i209.i, align 8
  %plink_retries.i.i.i = getelementptr inbounds %struct.mesh_sta, ptr %119, i32 0, i32 9
  %120 = ptrtoint ptr %plink_retries.i.i.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 0, ptr %plink_retries.i.i.i, align 4
  br label %if.end.thread259.i.i

sw.bb9.i.i:                                       ; preds = %sw.bb.i211.i
  call void @__sanitizer_cov_trace_pc() #11
  %121 = ptrtoint ptr %plink_state7.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 2, ptr %plink_state7.i.i, align 8
  %call.i212.i = tail call fastcc zeroext i16 @mesh_get_new_llid(ptr noundef %sdata) #9
  %122 = ptrtoint ptr %mesh.i209.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %mesh.i209.i, align 8
  %llid.i.i = getelementptr inbounds %struct.mesh_sta, ptr %123, i32 0, i32 5
  %124 = ptrtoint ptr %llid.i.i to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %call.i212.i, ptr %llid.i.i, align 4
  %125 = ptrtoint ptr %mshcfg1.i.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %mshcfg1.i.i, align 4
  %conv.i.i = zext i16 %126 to i32
  %127 = load ptr, ptr %mesh.i209.i, align 8
  %plink_timeout.i.i.i = getelementptr inbounds %struct.mesh_sta, ptr %127, i32 0, i32 14
  %128 = ptrtoint ptr %plink_timeout.i.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %conv.i.i, ptr %plink_timeout.i.i.i, align 4
  %129 = load ptr, ptr %mesh.i209.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %130 = load volatile i32, ptr @jiffies, align 128
  %call2.i.i.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv.i.i) #9
  %add.i.i.i = add i32 %call2.i.i.i.i, %130
  %call2.i151.i.i = tail call i32 @mod_timer(ptr noundef %129, i32 noundef %add.i.i.i) #9
  %call13.i.i = tail call i32 @ieee80211_mps_local_status_update(ptr noundef %sdata) #9
  br label %if.end.i215.i

sw.bb14.i.i:                                      ; preds = %if.end121.i
  %131 = zext i32 %event.0.i232242.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %131, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %event.0.i232242.i, label %sw.bb14.i.i.if.end.thread259.i.i_crit_edge [
    i32 2, label %sw.bb14.i.i.sw.bb15.i.i_crit_edge
    i32 5, label %sw.bb14.i.i.sw.bb15.i.i_crit_edge44
    i32 7, label %sw.bb14.i.i.sw.bb15.i.i_crit_edge45
    i32 1, label %sw.bb16.i.i
    i32 4, label %sw.bb19.i.i
  ]

sw.bb14.i.i.sw.bb15.i.i_crit_edge45:              ; preds = %sw.bb14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb15.i.i

sw.bb14.i.i.sw.bb15.i.i_crit_edge44:              ; preds = %sw.bb14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb15.i.i

sw.bb14.i.i.sw.bb15.i.i_crit_edge:                ; preds = %sw.bb14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb15.i.i

sw.bb14.i.i.if.end.thread259.i.i_crit_edge:       ; preds = %sw.bb14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.thread259.i.i

sw.bb15.i.i:                                      ; preds = %sw.bb14.i.i.sw.bb15.i.i_crit_edge, %sw.bb14.i.i.sw.bb15.i.i_crit_edge44, %sw.bb14.i.i.sw.bb15.i.i_crit_edge45
  %reason2.i.i.i = getelementptr inbounds %struct.mesh_sta, ptr %104, i32 0, i32 8
  %132 = ptrtoint ptr %reason2.i.i.i to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 %cmp.i181.i.i, ptr %reason2.i.i.i, align 2
  %133 = ptrtoint ptr %mesh.i209.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %mesh.i209.i, align 8
  %plink_state.i153.i.i = getelementptr inbounds %struct.mesh_sta, ptr %134, i32 0, i32 13
  %135 = ptrtoint ptr %plink_state.i153.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 5, ptr %plink_state.i153.i.i, align 8
  %136 = load ptr, ptr %mesh.i209.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %137 = load volatile i32, ptr @jiffies, align 128
  %dot11MeshHoldingTimeout.i.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24, i32 2
  %138 = ptrtoint ptr %dot11MeshHoldingTimeout.i.i.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %dot11MeshHoldingTimeout.i.i.i, align 4
  %conv5.i.i.i = zext i16 %139 to i32
  %call2.i.i157.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv5.i.i.i) #9
  %add.i160.i.i = add i32 %call2.i.i157.i.i, %137
  %call6.i.i.i = tail call i32 @mod_timer(ptr noundef %136, i32 noundef %add.i160.i.i) #9
  br label %if.end.i215.i

sw.bb16.i.i:                                      ; preds = %sw.bb14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %140 = ptrtoint ptr %plink_state7.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 2, ptr %plink_state7.i.i, align 8
  br label %if.end.i215.i

sw.bb19.i.i:                                      ; preds = %sw.bb14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %141 = ptrtoint ptr %plink_state7.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 3, ptr %plink_state7.i.i, align 8
  %142 = ptrtoint ptr %mesh.i209.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %mesh.i209.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %144 = load volatile i32, ptr @jiffies, align 128
  %dot11MeshConfirmTimeout.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24, i32 1
  %145 = ptrtoint ptr %dot11MeshConfirmTimeout.i.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %dot11MeshConfirmTimeout.i.i, align 2
  %conv23.i.i = zext i16 %146 to i32
  %call2.i.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv23.i.i) #9
  %add.i.i = add i32 %call2.i.i.i, %144
  %call25.i.i = tail call i32 @mod_timer(ptr noundef %143, i32 noundef %add.i.i) #9
  br label %if.end.thread259.i.i

sw.bb28.i.i:                                      ; preds = %if.end121.i
  %147 = zext i32 %event.0.i232242.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %147, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %event.0.i232242.i, label %sw.bb28.i.i.if.end.thread259.i.i_crit_edge [
    i32 2, label %sw.bb28.i.i.sw.bb29.i.i_crit_edge
    i32 5, label %sw.bb28.i.i.sw.bb29.i.i_crit_edge46
    i32 7, label %sw.bb28.i.i.sw.bb29.i.i_crit_edge47
    i32 1, label %sw.bb28.i.i.if.end.i215.i_crit_edge
    i32 4, label %sw.bb31.i.i
  ]

sw.bb28.i.i.if.end.i215.i_crit_edge:              ; preds = %sw.bb28.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i215.i

sw.bb28.i.i.sw.bb29.i.i_crit_edge47:              ; preds = %sw.bb28.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb29.i.i

sw.bb28.i.i.sw.bb29.i.i_crit_edge46:              ; preds = %sw.bb28.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb29.i.i

sw.bb28.i.i.sw.bb29.i.i_crit_edge:                ; preds = %sw.bb28.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb29.i.i

sw.bb28.i.i.if.end.thread259.i.i_crit_edge:       ; preds = %sw.bb28.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.thread259.i.i

sw.bb29.i.i:                                      ; preds = %sw.bb28.i.i.sw.bb29.i.i_crit_edge, %sw.bb28.i.i.sw.bb29.i.i_crit_edge46, %sw.bb28.i.i.sw.bb29.i.i_crit_edge47
  %reason2.i164.i.i = getelementptr inbounds %struct.mesh_sta, ptr %104, i32 0, i32 8
  %148 = ptrtoint ptr %reason2.i164.i.i to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 %cmp.i181.i.i, ptr %reason2.i164.i.i, align 2
  %149 = ptrtoint ptr %mesh.i209.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %mesh.i209.i, align 8
  %plink_state.i165.i.i = getelementptr inbounds %struct.mesh_sta, ptr %150, i32 0, i32 13
  %151 = ptrtoint ptr %plink_state.i165.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 5, ptr %plink_state.i165.i.i, align 8
  %152 = load ptr, ptr %mesh.i209.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %153 = load volatile i32, ptr @jiffies, align 128
  %dot11MeshHoldingTimeout.i166.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24, i32 2
  %154 = ptrtoint ptr %dot11MeshHoldingTimeout.i166.i.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %dot11MeshHoldingTimeout.i166.i.i, align 4
  %conv5.i167.i.i = zext i16 %155 to i32
  %call2.i.i171.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv5.i167.i.i) #9
  %add.i174.i.i = add i32 %call2.i.i171.i.i, %153
  %call6.i175.i.i = tail call i32 @mod_timer(ptr noundef %152, i32 noundef %add.i174.i.i) #9
  br label %if.end.i215.i

sw.bb31.i.i:                                      ; preds = %sw.bb28.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call i32 @del_timer(ptr noundef %104) #9
  %156 = ptrtoint ptr %mesh.i209.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %mesh.i209.i, align 8
  %plink_state.i178.i.i = getelementptr inbounds %struct.mesh_sta, ptr %157, i32 0, i32 13
  %158 = ptrtoint ptr %plink_state.i178.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 4, ptr %plink_state.i178.i.i, align 8
  %estab_plinks.i.i.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 25
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %estab_plinks.i.i.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %estab_plinks.i.i.i.i, i32 1, i32 3, i32 1) #9
  %159 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %estab_plinks.i.i.i.i, ptr %estab_plinks.i.i.i.i, i32 1, ptr elementtype(i32) %estab_plinks.i.i.i.i) #9, !srcloc !126
  %call.i.i179.i.i = tail call i32 @mesh_accept_plinks_update(ptr noundef %sdata) #9
  %call4.i.i.i = tail call fastcc i32 @mesh_set_ht_prot_mode(ptr noundef %sdata) #9
  %call6.i180.i.i = tail call fastcc i32 @mesh_set_short_slot_time(ptr noundef %sdata) #9
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.42, ptr noundef %name.i208.i, ptr noundef %addr.i.i) #9
  tail call void @ieee80211_mps_sta_status_update(ptr noundef nonnull %sta.0243.i) #9
  %power_mode.i.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24, i32 27
  %160 = ptrtoint ptr %power_mode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %power_mode.i.i.i, align 4
  %call10.i.i.i = tail call i32 @ieee80211_mps_set_sta_local_pm(ptr noundef nonnull %sta.0243.i, i32 noundef %161) #9
  %or.i.i.i.i = or i32 %call.i.i179.i.i, %call4.i.i.i
  %or5.i.i.i = or i32 %or.i.i.i.i, %call6.i180.i.i
  %or7.i.i.i = or i32 %or5.i.i.i, %call10.i.i.i
  %or11.i.i.i = or i32 %or7.i.i.i, 256
  br label %if.end.thread259.i.i

sw.bb36.i.i:                                      ; preds = %if.end121.i
  %162 = zext i32 %event.0.i232242.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %162, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %event.0.i232242.i, label %sw.bb36.i.i.if.end.thread259.i.i_crit_edge [
    i32 2, label %sw.bb36.i.i.sw.bb37.i.i_crit_edge
    i32 5, label %sw.bb36.i.i.sw.bb37.i.i_crit_edge48
    i32 7, label %sw.bb36.i.i.sw.bb37.i.i_crit_edge49
    i32 1, label %sw.bb38.i.i
  ]

sw.bb36.i.i.sw.bb37.i.i_crit_edge49:              ; preds = %sw.bb36.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb37.i.i

sw.bb36.i.i.sw.bb37.i.i_crit_edge48:              ; preds = %sw.bb36.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb37.i.i

sw.bb36.i.i.sw.bb37.i.i_crit_edge:                ; preds = %sw.bb36.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb37.i.i

sw.bb36.i.i.if.end.thread259.i.i_crit_edge:       ; preds = %sw.bb36.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.thread259.i.i

sw.bb37.i.i:                                      ; preds = %sw.bb36.i.i.sw.bb37.i.i_crit_edge, %sw.bb36.i.i.sw.bb37.i.i_crit_edge48, %sw.bb36.i.i.sw.bb37.i.i_crit_edge49
  %reason2.i184.i.i = getelementptr inbounds %struct.mesh_sta, ptr %104, i32 0, i32 8
  %163 = ptrtoint ptr %reason2.i184.i.i to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 %cmp.i181.i.i, ptr %reason2.i184.i.i, align 2
  %164 = ptrtoint ptr %mesh.i209.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %mesh.i209.i, align 8
  %plink_state.i185.i.i = getelementptr inbounds %struct.mesh_sta, ptr %165, i32 0, i32 13
  %166 = ptrtoint ptr %plink_state.i185.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 5, ptr %plink_state.i185.i.i, align 8
  %167 = load ptr, ptr %mesh.i209.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %168 = load volatile i32, ptr @jiffies, align 128
  %dot11MeshHoldingTimeout.i186.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24, i32 2
  %169 = ptrtoint ptr %dot11MeshHoldingTimeout.i186.i.i to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %dot11MeshHoldingTimeout.i186.i.i, align 4
  %conv5.i187.i.i = zext i16 %170 to i32
  %call2.i.i191.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv5.i187.i.i) #9
  %add.i194.i.i = add i32 %call2.i.i191.i.i, %168
  %call6.i195.i.i = tail call i32 @mod_timer(ptr noundef %167, i32 noundef %add.i194.i.i) #9
  br label %if.end.i215.i

sw.bb38.i.i:                                      ; preds = %sw.bb36.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i198.i.i = tail call i32 @del_timer(ptr noundef %104) #9
  %171 = ptrtoint ptr %mesh.i209.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %mesh.i209.i, align 8
  %plink_state.i199.i.i = getelementptr inbounds %struct.mesh_sta, ptr %172, i32 0, i32 13
  %173 = ptrtoint ptr %plink_state.i199.i.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 4, ptr %plink_state.i199.i.i, align 8
  %estab_plinks.i.i200.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 25
  %call.i.i.i.i201.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %estab_plinks.i.i200.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %estab_plinks.i.i200.i.i, i32 1, i32 3, i32 1) #9
  %174 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %estab_plinks.i.i200.i.i, ptr %estab_plinks.i.i200.i.i, i32 1, ptr elementtype(i32) %estab_plinks.i.i200.i.i) #9, !srcloc !126
  %call.i.i202.i.i = tail call i32 @mesh_accept_plinks_update(ptr noundef %sdata) #9
  %call4.i203.i.i = tail call fastcc i32 @mesh_set_ht_prot_mode(ptr noundef %sdata) #9
  %call6.i204.i.i = tail call fastcc i32 @mesh_set_short_slot_time(ptr noundef %sdata) #9
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.42, ptr noundef %name.i208.i, ptr noundef %addr.i.i) #9
  tail call void @ieee80211_mps_sta_status_update(ptr noundef nonnull %sta.0243.i) #9
  %power_mode.i207.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24, i32 27
  %175 = ptrtoint ptr %power_mode.i207.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %power_mode.i207.i.i, align 4
  %call10.i208.i.i = tail call i32 @ieee80211_mps_set_sta_local_pm(ptr noundef nonnull %sta.0243.i, i32 noundef %176) #9
  %or.i.i209.i.i = or i32 %call.i.i202.i.i, %call4.i203.i.i
  %or5.i210.i.i = or i32 %or.i.i209.i.i, %call6.i204.i.i
  %or7.i211.i.i = or i32 %or5.i210.i.i, %call10.i208.i.i
  %or11.i212.i.i = or i32 %or7.i211.i.i, 256
  br label %if.end.i215.i

sw.bb43.i.i:                                      ; preds = %if.end121.i
  %177 = zext i32 %event.0.i232242.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %177, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %event.0.i232242.i, label %sw.bb43.i.i.if.end.thread259.i.i_crit_edge [
    i32 7, label %sw.bb44.i.i
    i32 1, label %sw.bb43.i.i.if.end.i215.i_crit_edge
  ]

sw.bb43.i.i.if.end.i215.i_crit_edge:              ; preds = %sw.bb43.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i215.i

sw.bb43.i.i.if.end.thread259.i.i_crit_edge:       ; preds = %sw.bb43.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.thread259.i.i

sw.bb44.i.i:                                      ; preds = %sw.bb43.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call45.i.i = tail call fastcc i32 @__mesh_plink_deactivate(ptr noundef nonnull %sta.0243.i) #9
  %call47.i.i = tail call fastcc i32 @mesh_set_ht_prot_mode(ptr noundef %sdata) #9
  %or48.i.i = or i32 %call47.i.i, %call45.i.i
  %call49.i.i = tail call fastcc i32 @mesh_set_short_slot_time(ptr noundef %sdata) #9
  %or50.i.i = or i32 %or48.i.i, %call49.i.i
  %178 = ptrtoint ptr %mesh.i209.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %mesh.i209.i, align 8
  %reason2.i214.i.i = getelementptr inbounds %struct.mesh_sta, ptr %179, i32 0, i32 8
  %180 = ptrtoint ptr %reason2.i214.i.i to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 55, ptr %reason2.i214.i.i, align 2
  %181 = load ptr, ptr %mesh.i209.i, align 8
  %plink_state.i215.i.i = getelementptr inbounds %struct.mesh_sta, ptr %181, i32 0, i32 13
  %182 = ptrtoint ptr %plink_state.i215.i.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 5, ptr %plink_state.i215.i.i, align 8
  %183 = load ptr, ptr %mesh.i209.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %184 = load volatile i32, ptr @jiffies, align 128
  %dot11MeshHoldingTimeout.i216.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24, i32 2
  %185 = ptrtoint ptr %dot11MeshHoldingTimeout.i216.i.i to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %dot11MeshHoldingTimeout.i216.i.i, align 4
  %conv5.i217.i.i = zext i16 %186 to i32
  %call2.i.i221.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv5.i217.i.i) #9
  %add.i224.i.i = add i32 %call2.i.i221.i.i, %184
  %call6.i225.i.i = tail call i32 @mod_timer(ptr noundef %183, i32 noundef %add.i224.i.i) #9
  %187 = ptrtoint ptr %mesh.i209.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %mesh.i209.i, align 8
  %plink_lock65.i.i = getelementptr inbounds %struct.mesh_sta, ptr %188, i32 0, i32 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %plink_lock65.i.i) #9
  tail call void @mesh_path_flush_by_nexthop(ptr noundef nonnull %sta.0243.i) #9
  br label %if.then67.i.i

sw.bb54.i.i:                                      ; preds = %if.end121.i
  %189 = zext i32 %event.0.i232242.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %189, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %event.0.i232242.i, label %sw.bb54.i.i.if.end.thread259.i.i_crit_edge [
    i32 7, label %sw.bb55.i.i
    i32 1, label %sw.bb54.i.i.if.end.i215.i_crit_edge
    i32 4, label %sw.bb54.i.i.if.end.i215.i_crit_edge50
    i32 2, label %sw.bb54.i.i.if.end.i215.i_crit_edge51
    i32 5, label %sw.bb54.i.i.if.end.i215.i_crit_edge52
  ]

sw.bb54.i.i.if.end.i215.i_crit_edge52:            ; preds = %sw.bb54.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i215.i

sw.bb54.i.i.if.end.i215.i_crit_edge51:            ; preds = %sw.bb54.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i215.i

sw.bb54.i.i.if.end.i215.i_crit_edge50:            ; preds = %sw.bb54.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i215.i

sw.bb54.i.i.if.end.i215.i_crit_edge:              ; preds = %sw.bb54.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i215.i

sw.bb54.i.i.if.end.thread259.i.i_crit_edge:       ; preds = %sw.bb54.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.thread259.i.i

sw.bb55.i.i:                                      ; preds = %sw.bb54.i.i
  %call58.i.i = tail call i32 @del_timer(ptr noundef %104) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %190 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %tobool.not.i227.i.i = icmp eq i32 %190, 0
  br i1 %tobool.not.i227.i.i, label %sw.bb55.i.i.mesh_plink_fsm_restart.exit240.i.i_crit_edge, label %land.rhs.i232.i.i

sw.bb55.i.i.mesh_plink_fsm_restart.exit240.i.i_crit_edge: ; preds = %sw.bb55.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mesh_plink_fsm_restart.exit240.i.i

land.rhs.i232.i.i:                                ; preds = %sw.bb55.i.i
  %191 = ptrtoint ptr %mesh.i209.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %mesh.i209.i, align 8
  %dep_map.i229.i.i = getelementptr inbounds %struct.mesh_sta, ptr %192, i32 0, i32 4, i32 0, i32 0, i32 4
  %call.i.i230.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i229.i.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i230.i.i)
  %cmp.not.i231.i.i = icmp eq i32 %call.i.i230.i.i, 0
  br i1 %cmp.not.i231.i.i, label %do.end.i233.i.i, label %land.rhs.i232.i.i.mesh_plink_fsm_restart.exit240.i.i_crit_edge, !prof !120

land.rhs.i232.i.i.mesh_plink_fsm_restart.exit240.i.i_crit_edge: ; preds = %land.rhs.i232.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mesh_plink_fsm_restart.exit240.i.i

do.end.i233.i.i:                                  ; preds = %land.rhs.i232.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 77, i32 noundef 9, ptr noundef null) #9
  br label %mesh_plink_fsm_restart.exit240.i.i

mesh_plink_fsm_restart.exit240.i.i:               ; preds = %do.end.i233.i.i, %land.rhs.i232.i.i.mesh_plink_fsm_restart.exit240.i.i_crit_edge, %sw.bb55.i.i.mesh_plink_fsm_restart.exit240.i.i_crit_edge
  %193 = ptrtoint ptr %mesh.i209.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %mesh.i209.i, align 8
  %plink_state.i235.i.i = getelementptr inbounds %struct.mesh_sta, ptr %194, i32 0, i32 13
  %195 = ptrtoint ptr %plink_state.i235.i.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 0, ptr %plink_state.i235.i.i, align 8
  %196 = load ptr, ptr %mesh.i209.i, align 8
  %reason.i236.i.i = getelementptr inbounds %struct.mesh_sta, ptr %196, i32 0, i32 8
  %197 = ptrtoint ptr %reason.i236.i.i to i32
  call void @__asan_store2_noabort(i32 %197)
  store i16 0, ptr %reason.i236.i.i, align 2
  %198 = load ptr, ptr %mesh.i209.i, align 8
  %plid.i237.i.i = getelementptr inbounds %struct.mesh_sta, ptr %198, i32 0, i32 6
  %199 = ptrtoint ptr %plid.i237.i.i to i32
  call void @__asan_store2_noabort(i32 %199)
  store i16 0, ptr %plid.i237.i.i, align 2
  %200 = load ptr, ptr %mesh.i209.i, align 8
  %llid.i238.i.i = getelementptr inbounds %struct.mesh_sta, ptr %200, i32 0, i32 5
  %201 = ptrtoint ptr %llid.i238.i.i to i32
  call void @__asan_store2_noabort(i32 %201)
  store i16 0, ptr %llid.i238.i.i, align 4
  %202 = load ptr, ptr %mesh.i209.i, align 8
  %plink_retries.i239.i.i = getelementptr inbounds %struct.mesh_sta, ptr %202, i32 0, i32 9
  %203 = ptrtoint ptr %plink_retries.i239.i.i to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 0, ptr %plink_retries.i239.i.i, align 4
  br label %if.end.thread259.i.i

if.end.thread259.i.i:                             ; preds = %mesh_plink_fsm_restart.exit240.i.i, %sw.bb54.i.i.if.end.thread259.i.i_crit_edge, %sw.bb43.i.i.if.end.thread259.i.i_crit_edge, %sw.bb36.i.i.if.end.thread259.i.i_crit_edge, %sw.bb31.i.i, %sw.bb28.i.i.if.end.thread259.i.i_crit_edge, %sw.bb19.i.i, %sw.bb14.i.i.if.end.thread259.i.i_crit_edge, %mesh_plink_fsm_restart.exit.i.i, %sw.bb.i211.i.if.end.thread259.i.i_crit_edge, %if.end121.i.if.end.thread259.i.i_crit_edge
  %changed.0.ph.ph.i.i = phi i32 [ 0, %if.end121.i.if.end.thread259.i.i_crit_edge ], [ 0, %mesh_plink_fsm_restart.exit240.i.i ], [ 0, %sw.bb54.i.i.if.end.thread259.i.i_crit_edge ], [ 0, %sw.bb43.i.i.if.end.thread259.i.i_crit_edge ], [ 0, %sw.bb36.i.i.if.end.thread259.i.i_crit_edge ], [ %or11.i.i.i, %sw.bb31.i.i ], [ 0, %sw.bb28.i.i.if.end.thread259.i.i_crit_edge ], [ 0, %sw.bb19.i.i ], [ 0, %sw.bb14.i.i.if.end.thread259.i.i_crit_edge ], [ 0, %mesh_plink_fsm_restart.exit.i.i ], [ 0, %sw.bb.i211.i.if.end.thread259.i.i_crit_edge ]
  %204 = ptrtoint ptr %mesh.i209.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %mesh.i209.i, align 8
  %plink_lock65246264.i.i = getelementptr inbounds %struct.mesh_sta, ptr %205, i32 0, i32 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %plink_lock65246264.i.i) #9
  br label %unlock_rcu.i

if.end.i215.i:                                    ; preds = %sw.bb54.i.i.if.end.i215.i_crit_edge, %sw.bb54.i.i.if.end.i215.i_crit_edge50, %sw.bb54.i.i.if.end.i215.i_crit_edge51, %sw.bb54.i.i.if.end.i215.i_crit_edge52, %sw.bb43.i.i.if.end.i215.i_crit_edge, %sw.bb38.i.i, %sw.bb37.i.i, %sw.bb29.i.i, %sw.bb28.i.i.if.end.i215.i_crit_edge, %sw.bb16.i.i, %sw.bb15.i.i, %sw.bb9.i.i
  %cmp.ph.i.i = phi i1 [ true, %sw.bb9.i.i ], [ false, %sw.bb16.i.i ], [ false, %sw.bb15.i.i ], [ false, %sw.bb29.i.i ], [ false, %sw.bb38.i.i ], [ false, %sw.bb37.i.i ], [ false, %sw.bb28.i.i.if.end.i215.i_crit_edge ], [ false, %sw.bb43.i.i.if.end.i215.i_crit_edge ], [ false, %sw.bb54.i.i.if.end.i215.i_crit_edge ], [ false, %sw.bb54.i.i.if.end.i215.i_crit_edge50 ], [ false, %sw.bb54.i.i.if.end.i215.i_crit_edge51 ], [ false, %sw.bb54.i.i.if.end.i215.i_crit_edge52 ]
  %action.0.ph.i.i = phi i32 [ 1, %sw.bb9.i.i ], [ 2, %sw.bb16.i.i ], [ 3, %sw.bb15.i.i ], [ 3, %sw.bb29.i.i ], [ 2, %sw.bb38.i.i ], [ 3, %sw.bb37.i.i ], [ 2, %sw.bb28.i.i.if.end.i215.i_crit_edge ], [ 2, %sw.bb43.i.i.if.end.i215.i_crit_edge ], [ 3, %sw.bb54.i.i.if.end.i215.i_crit_edge ], [ 3, %sw.bb54.i.i.if.end.i215.i_crit_edge50 ], [ 3, %sw.bb54.i.i.if.end.i215.i_crit_edge51 ], [ 3, %sw.bb54.i.i.if.end.i215.i_crit_edge52 ]
  %changed.0.ph.i.i = phi i32 [ %call13.i.i, %sw.bb9.i.i ], [ 0, %sw.bb16.i.i ], [ 0, %sw.bb15.i.i ], [ 0, %sw.bb29.i.i ], [ %or11.i212.i.i, %sw.bb38.i.i ], [ 0, %sw.bb37.i.i ], [ 0, %sw.bb28.i.i.if.end.i215.i_crit_edge ], [ 0, %sw.bb43.i.i.if.end.i215.i_crit_edge ], [ 0, %sw.bb54.i.i.if.end.i215.i_crit_edge ], [ 0, %sw.bb54.i.i.if.end.i215.i_crit_edge50 ], [ 0, %sw.bb54.i.i.if.end.i215.i_crit_edge51 ], [ 0, %sw.bb54.i.i.if.end.i215.i_crit_edge52 ]
  %206 = ptrtoint ptr %mesh.i209.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %mesh.i209.i, align 8
  %plink_lock65246.i.i = getelementptr inbounds %struct.mesh_sta, ptr %207, i32 0, i32 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %plink_lock65246.i.i) #9
  br label %if.then67.i.i

if.then67.i.i:                                    ; preds = %if.end.i215.i, %sw.bb44.i.i
  %cmp248258.i.i = phi i1 [ false, %sw.bb44.i.i ], [ %cmp.ph.i.i, %if.end.i215.i ]
  %action.0249257.i.i = phi i32 [ 3, %sw.bb44.i.i ], [ %action.0.ph.i.i, %if.end.i215.i ]
  %changed.0250255.i.i = phi i32 [ %or50.i.i, %sw.bb44.i.i ], [ %changed.0.ph.i.i, %if.end.i215.i ]
  %208 = ptrtoint ptr %mesh.i209.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %mesh.i209.i, align 8
  %llid72.i.i = getelementptr inbounds %struct.mesh_sta, ptr %209, i32 0, i32 5
  %210 = ptrtoint ptr %llid72.i.i to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %llid72.i.i, align 4
  %plid.i.i = getelementptr inbounds %struct.mesh_sta, ptr %209, i32 0, i32 6
  %212 = ptrtoint ptr %plid.i.i to i32
  call void @__asan_load2_noabort(i32 %212)
  %213 = load i16, ptr %plid.i.i, align 2
  %reason.i.i = getelementptr inbounds %struct.mesh_sta, ptr %209, i32 0, i32 8
  %214 = ptrtoint ptr %reason.i.i to i32
  call void @__asan_load2_noabort(i32 %214)
  %215 = load i16, ptr %reason.i.i, align 2
  tail call fastcc void @mesh_plink_frame_tx(ptr noundef %sdata, ptr noundef nonnull %sta.0243.i, i32 noundef %action.0249257.i.i, ptr noundef %addr.i.i, i16 noundef zeroext %211, i16 noundef zeroext %213, i16 noundef zeroext %215) #9
  br i1 %cmp248258.i.i, label %if.then77.i.i, label %if.then67.i.i.unlock_rcu.i_crit_edge

if.then67.i.i.unlock_rcu.i_crit_edge:             ; preds = %if.then67.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock_rcu.i

if.then77.i.i:                                    ; preds = %if.then67.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %216 = ptrtoint ptr %mesh.i209.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %mesh.i209.i, align 8
  %llid82.i.i = getelementptr inbounds %struct.mesh_sta, ptr %217, i32 0, i32 5
  %218 = ptrtoint ptr %llid82.i.i to i32
  call void @__asan_load2_noabort(i32 %218)
  %219 = load i16, ptr %llid82.i.i, align 4
  %plid84.i.i = getelementptr inbounds %struct.mesh_sta, ptr %217, i32 0, i32 6
  %220 = ptrtoint ptr %plid84.i.i to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %plid84.i.i, align 2
  tail call fastcc void @mesh_plink_frame_tx(ptr noundef %sdata, ptr noundef nonnull %sta.0243.i, i32 noundef 2, ptr noundef %addr.i.i, i16 noundef zeroext %219, i16 noundef zeroext %221, i16 noundef zeroext 0) #9
  br label %unlock_rcu.i

unlock_rcu.i:                                     ; preds = %if.then77.i.i, %if.then67.i.i.unlock_rcu.i_crit_edge, %if.end.thread259.i.i, %if.then92.i, %if.then83.i, %sw.default.i.i, %if.end18.i.i.unlock_rcu.i_crit_edge, %if.then15.i.i, %if.then9.i.i, %if.then5.i.i, %if.then69.i
  %changed.0.i = phi i32 [ 0, %if.then83.i ], [ 0, %if.then92.i ], [ 0, %if.then69.i ], [ %changed.0250255.i.i, %if.then67.i.i.unlock_rcu.i_crit_edge ], [ %changed.0250255.i.i, %if.then77.i.i ], [ %changed.0.ph.ph.i.i, %if.end.thread259.i.i ], [ 0, %if.then9.i.i ], [ 0, %if.then5.i.i ], [ 0, %if.end18.i.i.unlock_rcu.i_crit_edge ], [ 0, %sw.default.i.i ], [ 0, %if.then15.i.i ]
  %call.i216.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i216.i, label %unlock_rcu.i.rcu_read_unlock.exit226.i_crit_edge, label %land.lhs.true.i219.i

unlock_rcu.i.rcu_read_unlock.exit226.i_crit_edge: ; preds = %unlock_rcu.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit226.i

land.lhs.true.i219.i:                             ; preds = %unlock_rcu.i
  %call1.i217.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i217.i)
  %tobool.not.i218.i = icmp eq i32 %call1.i217.i, 0
  br i1 %tobool.not.i218.i, label %land.lhs.true.i219.i.rcu_read_unlock.exit226.i_crit_edge, label %land.lhs.true2.i221.i

land.lhs.true.i219.i.rcu_read_unlock.exit226.i_crit_edge: ; preds = %land.lhs.true.i219.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit226.i

land.lhs.true2.i221.i:                            ; preds = %land.lhs.true.i219.i
  %.b4.i220.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i220.i, label %land.lhs.true2.i221.i.rcu_read_unlock.exit226.i_crit_edge, label %if.then.i222.i

land.lhs.true2.i221.i.rcu_read_unlock.exit226.i_crit_edge: ; preds = %land.lhs.true2.i221.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit226.i

if.then.i222.i:                                   ; preds = %land.lhs.true2.i221.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.14) #9
  br label %rcu_read_unlock.exit226.i

rcu_read_unlock.exit226.i:                        ; preds = %if.then.i222.i, %land.lhs.true2.i221.i.rcu_read_unlock.exit226.i_crit_edge, %land.lhs.true.i219.i.rcu_read_unlock.exit226.i_crit_edge, %unlock_rcu.i.rcu_read_unlock.exit226.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !123
  %222 = tail call i32 @llvm.read_register.i32(metadata !109) #9
  %and.i.i.i.i.i223.i = and i32 %222, -16384
  %223 = inttoptr i32 %and.i.i.i.i.i223.i to ptr
  %preempt_count.i.i.i.i224.i = getelementptr inbounds %struct.thread_info, ptr %223, i32 0, i32 1
  %224 = ptrtoint ptr %preempt_count.i.i.i.i224.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load volatile i32, ptr %preempt_count.i.i.i.i224.i, align 4
  %sub.i.i.i225.i = add i32 %225, -1
  store volatile i32 %sub.i.i.i225.i, ptr %preempt_count.i.i.i.i224.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %changed.0.i)
  %tobool123.not.i = icmp eq i32 %changed.0.i, 0
  br i1 %tobool123.not.i, label %rcu_read_unlock.exit226.i.mesh_process_plink_frame.exit_crit_edge, label %if.then124.i

rcu_read_unlock.exit226.i.mesh_process_plink_frame.exit_crit_edge: ; preds = %rcu_read_unlock.exit226.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mesh_process_plink_frame.exit

if.then124.i:                                     ; preds = %rcu_read_unlock.exit226.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ieee80211_mbss_info_change_notify(ptr noundef %sdata, i32 noundef %changed.0.i) #9
  br label %mesh_process_plink_frame.exit

mesh_process_plink_frame.exit:                    ; preds = %if.then124.i, %rcu_read_unlock.exit226.i.mesh_process_plink_frame.exit_crit_edge, %if.then44.i, %if.then33.i, %if.then3.i, %if.then.i
  tail call void @kfree(ptr noundef %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %mesh_process_plink_frame.exit, %if.then17.cleanup_crit_edge, %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_mps_sta_status_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_mps_set_sta_local_pm(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mesh_accept_plinks_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @ieee80211_ie_len_he_cap(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ieee80211_get_sband(ptr noundef %sdata) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %local1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !109) #9
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !122
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %chanctx_conf2 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 9
  %6 = ptrtoint ptr %chanctx_conf2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %chanctx_conf2, align 4
  %call = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end9_crit_edge

rcu_read_lock.exit.do.end9_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b19 = load i1, ptr @ieee80211_get_sband.__warned, align 1
  br i1 %.b19, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ieee80211_get_sband.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 1505, ptr noundef nonnull @.str.8) #9
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %rcu_read_lock.exit.do.end9_crit_edge
  %tobool11.not = icmp eq ptr %7, null
  br i1 %tobool11.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %do.end9
  %call.i20 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i20, label %if.then12.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i23

if.then12.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i23:                                ; preds = %if.then12
  %call1.i21 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i21)
  %tobool.not.i22 = icmp eq i32 %call1.i21, 0
  br i1 %tobool.not.i22, label %land.lhs.true.i23.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i25

land.lhs.true.i23.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i23
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i25:                               ; preds = %land.lhs.true.i23
  %.b4.i24 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i24, label %land.lhs.true2.i25.rcu_read_unlock.exit_crit_edge, label %if.then.i26

land.lhs.true2.i25.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i25
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i26:                                      ; preds = %land.lhs.true2.i25
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.14) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i26, %land.lhs.true2.i25.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i23.rcu_read_unlock.exit_crit_edge, %if.then12.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !123
  %8 = tail call i32 @llvm.read_register.i32(metadata !109) #9
  %and.i.i.i.i.i27 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i27 to ptr
  %preempt_count.i.i.i.i28 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i28, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i28, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %cleanup

if.end13:                                         ; preds = %do.end9
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %7, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %call.i29 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i29, label %if.end13.rcu_read_unlock.exit39_crit_edge, label %land.lhs.true.i32

if.end13.rcu_read_unlock.exit39_crit_edge:        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit39

land.lhs.true.i32:                                ; preds = %if.end13
  %call1.i30 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i30)
  %tobool.not.i31 = icmp eq i32 %call1.i30, 0
  br i1 %tobool.not.i31, label %land.lhs.true.i32.rcu_read_unlock.exit39_crit_edge, label %land.lhs.true2.i34

land.lhs.true.i32.rcu_read_unlock.exit39_crit_edge: ; preds = %land.lhs.true.i32
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit39

land.lhs.true2.i34:                               ; preds = %land.lhs.true.i32
  %.b4.i33 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i33, label %land.lhs.true2.i34.rcu_read_unlock.exit39_crit_edge, label %if.then.i35

land.lhs.true2.i34.rcu_read_unlock.exit39_crit_edge: ; preds = %land.lhs.true2.i34
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit39

if.then.i35:                                      ; preds = %land.lhs.true2.i34
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.14) #9
  br label %rcu_read_unlock.exit39

rcu_read_unlock.exit39:                           ; preds = %if.then.i35, %land.lhs.true2.i34.rcu_read_unlock.exit39_crit_edge, %land.lhs.true.i32.rcu_read_unlock.exit39_crit_edge, %if.end13.rcu_read_unlock.exit39_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !123
  %16 = tail call i32 @llvm.read_register.i32(metadata !109) #9
  %and.i.i.i.i.i36 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i36 to ptr
  %preempt_count.i.i.i.i37 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i37, align 4
  %sub.i.i.i38 = add i32 %19, -1
  store volatile i32 %sub.i.i.i38, ptr %preempt_count.i.i.i.i37, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
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
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_add_srates_ie(ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_add_ext_srates_ie(ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mesh_add_rsn_ie(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mesh_add_meshid_ie(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mesh_add_meshconf_ie(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mesh_add_ht_cap_ie(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mesh_add_ht_oper_ie(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mesh_add_vht_cap_ie(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mesh_add_vht_oper_ie(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mesh_add_he_cap_ie(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mesh_add_he_oper_ie(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mesh_add_he_6ghz_cap_ie(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mesh_add_vendor_ies(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
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
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ieee80211_tx_skb_tid_band(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sta_info_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mesh_sta_info_init(ptr noundef %sdata, ptr noundef %sta, ptr noundef %elems) unnamed_addr #0 align 64 {
entry:
  %basic_rates = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %basic_rates) #9
  %2 = ptrtoint ptr %basic_rates to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %basic_rates, align 4
  %sta2 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48
  %bandwidth = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 14
  %3 = ptrtoint ptr %bandwidth to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bandwidth, align 8
  %call = tail call fastcc ptr @ieee80211_get_sband(ptr noundef %sdata)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %band = getelementptr inbounds %struct.ieee80211_supported_band, ptr %call, i32 0, i32 2
  %5 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %band, align 4
  %call3 = call i32 @ieee80211_sta_get_rates(ptr noundef %sdata, ptr noundef %elems, i32 noundef %6, ptr noundef nonnull %basic_rates) #9
  %mesh = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 17
  %7 = ptrtoint ptr %mesh to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mesh, align 8
  %plink_lock = getelementptr inbounds %struct.mesh_sta, ptr %8, i32 0, i32 4
  call void @_raw_spin_lock_bh(ptr noundef %plink_lock) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %last_rx = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 32, i32 1
  %10 = ptrtoint ptr %last_rx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %last_rx, align 4
  %11 = ptrtoint ptr %mesh to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mesh, align 8
  %plink_state = getelementptr inbounds %struct.mesh_sta, ptr %12, i32 0, i32 13
  %13 = ptrtoint ptr %plink_state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %plink_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %cmp = icmp eq i32 %14, 4
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %processed_beacon = getelementptr inbounds %struct.mesh_sta, ptr %12, i32 0, i32 10
  %15 = ptrtoint ptr %processed_beacon to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %processed_beacon, align 1, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool6.not = icmp eq i8 %16, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end8_crit_edge, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %processed_beacon10 = getelementptr inbounds %struct.mesh_sta, ptr %12, i32 0, i32 10
  %17 = ptrtoint ptr %processed_beacon10 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %processed_beacon10, align 1
  %18 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %band, align 4
  %arrayidx = getelementptr [6 x i32], ptr %sta2, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %call3)
  %cmp13.not = icmp eq i32 %21, %call3
  %spec.select = select i1 %cmp13.not, i32 0, i32 4
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call3, ptr %arrayidx, align 4
  %ht_cap_elem = getelementptr inbounds %struct.ieee802_11_elems, ptr %elems, i32 0, i32 16
  %23 = ptrtoint ptr %ht_cap_elem to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ht_cap_elem, align 4
  %call20 = call zeroext i1 @ieee80211_ht_cap_ie_to_sta_ht_cap(ptr noundef %sdata, ptr noundef nonnull %call, ptr noundef %24, ptr noundef %sta) #9
  %or22 = or i32 %spec.select, 1
  %changed.1 = select i1 %call20, i32 %or22, i32 %spec.select
  %vht_cap_elem = getelementptr inbounds %struct.ieee802_11_elems, ptr %elems, i32 0, i32 18
  %25 = ptrtoint ptr %vht_cap_elem to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vht_cap_elem, align 4
  call void @ieee80211_vht_cap_ie_to_sta_vht_cap(ptr noundef %sdata, ptr noundef nonnull %call, ptr noundef %26, ptr noundef %sta) #9
  %he_cap = getelementptr inbounds %struct.ieee802_11_elems, ptr %elems, i32 0, i32 21
  %27 = ptrtoint ptr %he_cap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %he_cap, align 4
  %he_cap_len = getelementptr inbounds %struct.ieee802_11_elems, ptr %elems, i32 0, i32 66
  %29 = ptrtoint ptr %he_cap_len to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %he_cap_len, align 1
  %he_6ghz_capa = getelementptr inbounds %struct.ieee802_11_elems, ptr %elems, i32 0, i32 25
  %31 = ptrtoint ptr %he_6ghz_capa to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %he_6ghz_capa, align 4
  call void @ieee80211_he_cap_ie_to_sta_he_cap(ptr noundef %sdata, ptr noundef nonnull %call, ptr noundef %28, i8 noundef zeroext %30, ptr noundef %32, ptr noundef %sta) #9
  %33 = ptrtoint ptr %bandwidth to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bandwidth, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %34)
  %cmp26.not = icmp eq i32 %4, %34
  %changed.2 = select i1 %cmp26.not, i32 %changed.1, i32 %or22
  %ht_operation = getelementptr inbounds %struct.ieee802_11_elems, ptr %elems, i32 0, i32 17
  %35 = ptrtoint ptr %ht_operation to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ht_operation, align 4
  %tobool30.not = icmp eq ptr %36, null
  br i1 %tobool30.not, label %if.end8.if.end44_crit_edge, label %land.lhs.true31

if.end8.if.end44_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

land.lhs.true31:                                  ; preds = %if.end8
  %ht_param = getelementptr inbounds %struct.ieee80211_ht_operation, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %ht_param to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ht_param, align 1
  %39 = and i8 %38, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool33.not = icmp eq i8 %39, 0
  br i1 %tobool33.not, label %if.then34, label %land.lhs.true31.if.end44_crit_edge

land.lhs.true31.if.end44_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then34:                                        ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp37.not = icmp eq i32 %34, 0
  %spec.select97 = select i1 %cmp37.not, i32 %changed.2, i32 %or22
  %40 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %bandwidth, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then34, %land.lhs.true31.if.end44_crit_edge, %if.end8.if.end44_crit_edge
  %changed.4 = phi i32 [ %changed.2, %land.lhs.true31.if.end44_crit_edge ], [ %spec.select97, %if.then34 ], [ %changed.2, %if.end8.if.end44_crit_edge ]
  %_flags.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 24
  %41 = ptrtoint ptr %_flags.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %_flags.i, align 4
  %43 = and i32 %42, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool46.not = icmp eq i32 %43, 0
  br i1 %tobool46.not, label %if.then47, label %if.else

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  call void @rate_control_rate_init(ptr noundef %sta) #9
  br label %out

if.else:                                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  call void @rate_control_rate_update(ptr noundef %1, ptr noundef nonnull %call, ptr noundef %sta, i32 noundef %changed.4) #9
  br label %out

out:                                              ; preds = %if.else, %if.then47, %land.lhs.true.out_crit_edge
  %44 = ptrtoint ptr %mesh to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mesh, align 8
  %plink_lock50 = getelementptr inbounds %struct.mesh_sta, ptr %45, i32 0, i32 4
  call void @_raw_spin_unlock_bh(ptr noundef %plink_lock50) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %basic_rates) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sta_info_insert_rcu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_sta_get_rates(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ieee80211_ht_cap_ie_to_sta_ht_cap(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_vht_cap_ie_to_sta_vht_cap(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_he_cap_ie_to_sta_he_cap(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rate_control_rate_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rate_control_rate_update(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_notify_new_peer_candidate(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sta_info_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sta_info_move_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
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
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee802_11_parse_elems_crc(ptr noundef, i32 noundef, i1 noundef zeroext, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mesh_matches_local(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mesh_set_ht_prot_mode(ptr noundef %sdata) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %width = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 32, i32 1
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %3, label %sw.epilog [
    i32 0, label %entry.cleanup_crit_edge
    i32 6, label %entry.cleanup_crit_edge113
    i32 7, label %entry.cleanup_crit_edge114
  ]

entry.cleanup_crit_edge114:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge113:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %5 = tail call i32 @llvm.read_register.i32(metadata !109) #9
  %and.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !122
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %sw.epilog.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

sw.epilog.rcu_read_lock.exit_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %sw.epilog
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %sw.epilog.rcu_read_lock.exit_crit_edge
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
  %.b94 = load i1, ptr @mesh_set_ht_prot_mode.__warned, align 1
  br i1 %.b94, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @mesh_set_ht_prot_mode.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 173, ptr noundef nonnull @.str.11) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %sta_list = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 49
  %9 = ptrtoint ptr %sta_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %sta.0106 = load volatile ptr, ptr %sta_list, align 4
  %cmp.not107 = icmp eq ptr %sta.0106, %sta_list
  br i1 %cmp.not107, label %do.end.if.else.critedge_crit_edge, label %for.body.lr.ph

do.end.if.else.critedge_crit_edge:                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.critedge

for.body.lr.ph:                                   ; preds = %do.end
  %name26 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %sta.0109 = phi ptr [ %sta.0106, %for.body.lr.ph ], [ %sta.0, %for.inc.for.body_crit_edge ]
  %ht20_sta.0.off0108 = phi i1 [ false, %for.body.lr.ph ], [ %ht20_sta.1.off0, %for.inc.for.body_crit_edge ]
  %sdata11 = getelementptr inbounds %struct.sta_info, ptr %sta.0109, i32 0, i32 6
  %10 = ptrtoint ptr %sdata11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdata11, align 4
  %cmp12.not = icmp eq ptr %11, %sdata
  br i1 %cmp12.not, label %lor.lhs.false, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %mesh = getelementptr inbounds %struct.sta_info, ptr %sta.0109, i32 0, i32 17
  %12 = ptrtoint ptr %mesh to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mesh, align 8
  %plink_state = getelementptr inbounds %struct.mesh_sta, ptr %13, i32 0, i32 13
  %14 = ptrtoint ptr %plink_state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %plink_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp13.not = icmp eq i32 %15, 4
  br i1 %cmp13.not, label %if.end15, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end15:                                         ; preds = %lor.lhs.false
  %bandwidth = getelementptr inbounds %struct.sta_info, ptr %sta.0109, i32 0, i32 48, i32 14
  %16 = ptrtoint ptr %bandwidth to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bandwidth, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp17.not = icmp eq i32 %17, 0
  br i1 %cmp17.not, label %if.end19, label %if.end15.for.inc_crit_edge

if.end15.for.inc_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end19:                                         ; preds = %if.end15
  %ht_supported = getelementptr inbounds %struct.sta_info, ptr %sta.0109, i32 0, i32 48, i32 3, i32 1
  %18 = ptrtoint ptr %ht_supported to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ht_supported, align 2, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool21.not = icmp eq i8 %19, 0
  %addr = getelementptr inbounds %struct.sta_info, ptr %sta.0109, i32 0, i32 48, i32 1
  br i1 %tobool21.not, label %if.then22, label %if.end25

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.43, ptr noundef %name26, ptr noundef %addr) #9
  tail call fastcc void @rcu_read_unlock()
  br label %if.end52

if.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.44, ptr noundef %name26, ptr noundef %addr) #9
  br label %for.inc

for.inc:                                          ; preds = %if.end25, %if.end15.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %ht20_sta.1.off0 = phi i1 [ %ht20_sta.0.off0108, %for.body.for.inc_crit_edge ], [ %ht20_sta.0.off0108, %lor.lhs.false.for.inc_crit_edge ], [ %ht20_sta.0.off0108, %if.end15.for.inc_crit_edge ], [ true, %if.end25 ]
  %20 = ptrtoint ptr %sta.0109 to i32
  call void @__asan_load4_noabort(i32 %20)
  %sta.0 = load volatile ptr, ptr %sta.0109, align 4
  %cmp.not = icmp eq ptr %sta.0, %sta_list
  br i1 %cmp.not, label %for.inc.if.else.critedge_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.if.else.critedge_crit_edge:               ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.critedge

if.else.critedge:                                 ; preds = %for.inc.if.else.critedge_crit_edge, %do.end.if.else.critedge_crit_edge
  %ht20_sta.0.off0.lcssa = phi i1 [ false, %do.end.if.else.critedge_crit_edge ], [ %ht20_sta.1.off0, %for.inc.if.else.critedge_crit_edge ]
  %call.i95 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i95, label %if.else.critedge.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i98

if.else.critedge.rcu_read_unlock.exit_crit_edge:  ; preds = %if.else.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i98:                                ; preds = %if.else.critedge
  %call1.i96 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i96)
  %tobool.not.i97 = icmp eq i32 %call1.i96, 0
  br i1 %tobool.not.i97, label %land.lhs.true.i98.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i100

land.lhs.true.i98.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i98
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i100:                              ; preds = %land.lhs.true.i98
  %.b4.i99 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i99, label %land.lhs.true2.i100.rcu_read_unlock.exit_crit_edge, label %if.then.i101

land.lhs.true2.i100.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i100
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i101:                                     ; preds = %land.lhs.true2.i100
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.14) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i101, %land.lhs.true2.i100.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i98.rcu_read_unlock.exit_crit_edge, %if.else.critedge.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !123
  %21 = tail call i32 @llvm.read_register.i32(metadata !109) #9
  %and.i.i.i.i.i102 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i102 to ptr
  %preempt_count.i.i.i.i103 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i103 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i103, align 4
  %sub.i.i.i = add i32 %24, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i103, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br i1 %ht20_sta.0.off0.lcssa, label %land.lhs.true43, label %rcu_read_unlock.exit.if.else50_crit_edge

rcu_read_unlock.exit.if.else50_crit_edge:         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else50

land.lhs.true43:                                  ; preds = %rcu_read_unlock.exit
  %25 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp48 = icmp ugt i32 %26, 1
  br i1 %cmp48, label %land.lhs.true43.if.end52_crit_edge, label %land.lhs.true43.if.else50_crit_edge

land.lhs.true43.if.else50_crit_edge:              ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else50

land.lhs.true43.if.end52_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.else50:                                        ; preds = %land.lhs.true43.if.else50_crit_edge, %rcu_read_unlock.exit.if.else50_crit_edge
  br label %if.end52

if.end52:                                         ; preds = %if.else50, %land.lhs.true43.if.end52_crit_edge, %if.then22
  %ht_opmode.0 = phi i16 [ 3, %if.then22 ], [ 0, %if.else50 ], [ 2, %land.lhs.true43.if.end52_crit_edge ]
  %ht_operation_mode = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 27
  %27 = ptrtoint ptr %ht_operation_mode to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %ht_operation_mode, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %28, i16 %ht_opmode.0)
  %cmp56 = icmp eq i16 %28, %ht_opmode.0
  br i1 %cmp56, label %if.end52.cleanup_crit_edge, label %if.end59

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end59:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  %conv55 = zext i16 %ht_opmode.0 to i32
  %29 = ptrtoint ptr %ht_operation_mode to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %ht_opmode.0, ptr %ht_operation_mode, align 8
  %ht_opmode63 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24, i32 23
  %30 = ptrtoint ptr %ht_opmode63 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %ht_opmode.0, ptr %ht_opmode63, align 4
  %name64 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.45, ptr noundef %name64, i32 noundef %conv55) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %if.end52.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge113, %entry.cleanup_crit_edge114
  %retval.0 = phi i32 [ 16, %if.end59 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge113 ], [ 0, %entry.cleanup_crit_edge114 ], [ 0, %if.end52.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mesh_set_short_slot_time(ptr noundef %sdata) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %call = tail call fastcc ptr @ieee80211_get_sband(ptr noundef %sdata)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %band = getelementptr inbounds %struct.ieee80211_supported_band, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %band, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %3, label %out.fold.split [
    i32 1, label %if.end.out_crit_edge
    i32 0, label %for.cond.preheader
  ]

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.cond.preheader:                               ; preds = %if.end
  %n_bitrates = getelementptr inbounds %struct.ieee80211_supported_band, ptr %call, i32 0, i32 4
  %5 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %n_bitrates, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp8110 = icmp sgt i32 %6, 0
  br i1 %cmp8110, label %for.body.lr.ph, label %for.cond.preheader.out_crit_edge

for.cond.preheader.out_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %bitrates = getelementptr inbounds %struct.ieee80211_supported_band, ptr %call, i32 0, i32 1
  %7 = ptrtoint ptr %bitrates to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bitrates, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %erp_rates.0112 = phi i32 [ 0, %for.body.lr.ph ], [ %erp_rates.1, %for.body.for.body_crit_edge ]
  %i.0111 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ieee80211_rate, ptr %8, i32 %i.0111
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %and = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  %shl = shl nuw i32 1, %i.0111
  %or = select i1 %tobool9.not, i32 0, i32 %shl
  %erp_rates.1 = or i32 %or, %erp_rates.0112
  %inc = add nuw nsw i32 %i.0111, 1
  %exitcond.not = icmp eq i32 %inc, %6
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %erp_rates.1)
  %tobool12.not = icmp eq i32 %erp_rates.1, 0
  br i1 %tobool12.not, label %for.end.out_crit_edge, label %if.end14

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end14:                                         ; preds = %for.end
  %11 = tail call i32 @llvm.read_register.i32(metadata !109) #9
  %and.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %14, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !122
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %if.end14.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end14.rcu_read_lock.exit_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end14
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end14.rcu_read_lock.exit_crit_edge
  %call15 = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call17 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true19

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true19:                                  ; preds = %land.lhs.true
  %.b100 = load i1, ptr @mesh_set_short_slot_time.__warned, align 1
  br i1 %.b100, label %land.lhs.true19.do.end_crit_edge, label %if.then21

land.lhs.true19.do.end_crit_edge:                 ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then21:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @mesh_set_short_slot_time.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 122, ptr noundef nonnull @.str.11) #9
  br label %do.end

do.end:                                           ; preds = %if.then21, %land.lhs.true19.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %sta_list = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 49
  %15 = ptrtoint ptr %sta_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %sta.0113 = load volatile ptr, ptr %sta_list, align 4
  %cmp29.not114 = icmp eq ptr %sta.0113, %sta_list
  br i1 %cmp29.not114, label %do.end.for.end54_crit_edge, label %do.end.for.body30_crit_edge

do.end.for.body30_crit_edge:                      ; preds = %do.end
  br label %for.body30

do.end.for.end54_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end54

for.body30:                                       ; preds = %for.inc44.for.body30_crit_edge, %do.end.for.body30_crit_edge
  %sta.0116 = phi ptr [ %sta.0, %for.inc44.for.body30_crit_edge ], [ %sta.0113, %do.end.for.body30_crit_edge ]
  %short_slot.0115 = phi i8 [ %short_slot.1, %for.inc44.for.body30_crit_edge ], [ 0, %do.end.for.body30_crit_edge ]
  %sdata31 = getelementptr inbounds %struct.sta_info, ptr %sta.0116, i32 0, i32 6
  %16 = ptrtoint ptr %sdata31 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sdata31, align 4
  %cmp32.not = icmp eq ptr %17, %sdata
  br i1 %cmp32.not, label %lor.lhs.false, label %for.body30.for.inc44_crit_edge

for.body30.for.inc44_crit_edge:                   ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc44

lor.lhs.false:                                    ; preds = %for.body30
  %mesh = getelementptr inbounds %struct.sta_info, ptr %sta.0116, i32 0, i32 17
  %18 = ptrtoint ptr %mesh to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mesh, align 8
  %plink_state = getelementptr inbounds %struct.mesh_sta, ptr %19, i32 0, i32 13
  %20 = ptrtoint ptr %plink_state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %plink_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %21)
  %cmp33.not = icmp eq i32 %21, 4
  br i1 %cmp33.not, label %if.end35, label %lor.lhs.false.for.inc44_crit_edge

lor.lhs.false.for.inc44_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc44

if.end35:                                         ; preds = %lor.lhs.false
  %sta36 = getelementptr inbounds %struct.sta_info, ptr %sta.0116, i32 0, i32 48
  %22 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %band, align 4
  %arrayidx38 = getelementptr [6 x i32], ptr %sta36, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx38, align 4
  %and39 = and i32 %25, %erp_rates.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end35.for.end54_crit_edge, label %if.end35.for.inc44_crit_edge

if.end35.for.inc44_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc44

if.end35.for.end54_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end54

for.inc44:                                        ; preds = %if.end35.for.inc44_crit_edge, %lor.lhs.false.for.inc44_crit_edge, %for.body30.for.inc44_crit_edge
  %short_slot.1 = phi i8 [ %short_slot.0115, %for.body30.for.inc44_crit_edge ], [ %short_slot.0115, %lor.lhs.false.for.inc44_crit_edge ], [ 1, %if.end35.for.inc44_crit_edge ]
  %26 = ptrtoint ptr %sta.0116 to i32
  call void @__asan_load4_noabort(i32 %26)
  %sta.0 = load volatile ptr, ptr %sta.0116, align 4
  %cmp29.not = icmp eq ptr %sta.0, %sta_list
  br i1 %cmp29.not, label %for.inc44.for.end54_crit_edge, label %for.inc44.for.body30_crit_edge

for.inc44.for.body30_crit_edge:                   ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body30

for.inc44.for.end54_crit_edge:                    ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end54

for.end54:                                        ; preds = %for.inc44.for.end54_crit_edge, %if.end35.for.end54_crit_edge, %do.end.for.end54_crit_edge
  %short_slot.2 = phi i8 [ 0, %do.end.for.end54_crit_edge ], [ 0, %if.end35.for.end54_crit_edge ], [ %short_slot.1, %for.inc44.for.end54_crit_edge ]
  %call.i101 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i101, label %for.end54.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i104

for.end54.rcu_read_unlock.exit_crit_edge:         ; preds = %for.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i104:                               ; preds = %for.end54
  %call1.i102 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i102)
  %tobool.not.i103 = icmp eq i32 %call1.i102, 0
  br i1 %tobool.not.i103, label %land.lhs.true.i104.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i106

land.lhs.true.i104.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i104
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i106:                              ; preds = %land.lhs.true.i104
  %.b4.i105 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i105, label %land.lhs.true2.i106.rcu_read_unlock.exit_crit_edge, label %if.then.i107

land.lhs.true2.i106.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i106
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i107:                                     ; preds = %land.lhs.true2.i106
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.14) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i107, %land.lhs.true2.i106.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i104.rcu_read_unlock.exit_crit_edge, %for.end54.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !123
  %27 = tail call i32 @llvm.read_register.i32(metadata !109) #9
  %and.i.i.i.i.i108 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i108 to ptr
  %preempt_count.i.i.i.i109 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i109 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i109, align 4
  %sub.i.i.i = add i32 %30, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i109, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %31 = and i8 %short_slot.2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %extract.t = icmp ne i8 %31, 0
  br label %out

out.fold.split:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

out:                                              ; preds = %out.fold.split, %rcu_read_unlock.exit, %for.end.out_crit_edge, %for.cond.preheader.out_crit_edge, %if.end.out_crit_edge
  %short_slot.3.off0 = phi i1 [ %extract.t, %rcu_read_unlock.exit ], [ false, %for.end.out_crit_edge ], [ true, %if.end.out_crit_edge ], [ false, %out.fold.split ], [ false, %for.cond.preheader.out_crit_edge ]
  %use_short_slot = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 1, i32 16
  %32 = ptrtoint ptr %use_short_slot to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %use_short_slot, align 2, !range !119
  %34 = zext i1 %short_slot.3.off0 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %34)
  %cmp58.not = icmp eq i8 %33, %34
  br i1 %cmp58.not, label %out.cleanup_crit_edge, label %if.then60

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then60:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  %conv57 = zext i1 %short_slot.3.off0 to i32
  %35 = ptrtoint ptr %use_short_slot to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %use_short_slot, align 2
  %name = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  %addr = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 2
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.46, ptr noundef %name, ptr noundef %addr, i32 noundef %conv57) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then60, %out.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 8, %if.then60 ], [ 0, %out.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !20, !21, !22, !24, !26, !27, !29, !30, !32, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107}
!llvm.named.register.sp = !{!109}
!llvm.module.flags = !{!110, !111, !112, !113, !114, !115, !116, !117}
!llvm.ident = !{!118}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/mac80211/mesh_plink.c", i32 661, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/mac80211/mesh_plink.c", i32 671, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/mac80211/mesh_plink.c", i32 678, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/mac80211/mesh_plink.c", i32 690, i32 4}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/mac80211/mesh_plink.c", i32 783, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/mac80211/mesh_plink.c", i32 1216, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/mac80211/mesh_plink.c", i32 366, i32 2}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../net/mac80211/ieee80211_i.h", i32 1505, i32 17}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../net/mac80211/ieee80211_i.h", i32 2199, i32 17}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../net/mac80211/mesh_plink.c", i32 487, i32 2}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../net/mac80211/sta_info.h", i32 742, i32 2}
!29 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../net/mac80211/sta_info.h", i32 745, i32 2}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!34 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/mac80211/mesh_plink.c", i32 36, i32 27}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/mac80211/mesh_plink.c", i32 37, i32 28}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/mac80211/mesh_plink.c", i32 38, i32 29}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/mac80211/mesh_plink.c", i32 39, i32 29}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/mac80211/mesh_plink.c", i32 40, i32 26}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/mac80211/mesh_plink.c", i32 41, i32 28}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../net/mac80211/mesh_plink.c", i32 42, i32 28}
!49 = !{ptr @mplstates, !50, !"mplstates", i1 false, i1 false}
!50 = !{!"../net/mac80211/mesh_plink.c", i32 35, i32 27}
!51 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!52 = !{!"../net/mac80211/mesh_plink.c", i32 740, i32 2}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/mac80211/mesh_plink.c", i32 1112, i32 3}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../net/mac80211/mesh_plink.c", i32 1119, i32 3}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../net/mac80211/mesh_plink.c", i32 1129, i32 3}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../net/mac80211/mesh_plink.c", i32 1137, i32 3}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../net/mac80211/mesh_plink.c", i32 1155, i32 3}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../net/mac80211/mesh_plink.c", i32 1168, i32 4}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../net/mac80211/mesh_plink.c", i32 1028, i32 4}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../net/mac80211/mesh_plink.c", i32 1033, i32 4}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../net/mac80211/mesh_plink.c", i32 1042, i32 4}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../net/mac80211/mesh_plink.c", i32 1089, i32 3}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../net/mac80211/mesh_plink.c", i32 855, i32 2}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../net/mac80211/mesh_plink.c", i32 46, i32 22}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../net/mac80211/mesh_plink.c", i32 47, i32 15}
!79 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../net/mac80211/mesh_plink.c", i32 48, i32 15}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../net/mac80211/mesh_plink.c", i32 49, i32 15}
!83 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../net/mac80211/mesh_plink.c", i32 50, i32 15}
!85 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../net/mac80211/mesh_plink.c", i32 51, i32 15}
!87 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../net/mac80211/mesh_plink.c", i32 52, i32 15}
!89 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../net/mac80211/mesh_plink.c", i32 53, i32 15}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../net/mac80211/mesh_plink.c", i32 54, i32 15}
!93 = !{ptr @mplevents, !94, !"mplevents", i1 false, i1 false}
!94 = !{!"../net/mac80211/mesh_plink.c", i32 45, i32 27}
!95 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../net/mac80211/mesh_plink.c", i32 832, i32 2}
!97 = distinct !{null, !98, !"__warned", i1 false, i1 false}
!98 = !{!"../net/mac80211/mesh_plink.c", i32 173, i32 2}
!99 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../net/mac80211/mesh_plink.c", i32 182, i32 4}
!101 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../net/mac80211/mesh_plink.c", i32 188, i32 3}
!103 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../net/mac80211/mesh_plink.c", i32 206, i32 2}
!105 = distinct !{null, !106, !"__warned", i1 false, i1 false}
!106 = !{!"../net/mac80211/mesh_plink.c", i32 122, i32 2}
!107 = !{ptr @.str.46, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../net/mac80211/mesh_plink.c", i32 139, i32 3}
!109 = !{!"sp"}
!110 = !{i32 1, !"wchar_size", i32 2}
!111 = !{i32 1, !"min_enum_size", i32 4}
!112 = !{i32 8, !"branch-target-enforcement", i32 0}
!113 = !{i32 8, !"sign-return-address", i32 0}
!114 = !{i32 8, !"sign-return-address-all", i32 0}
!115 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!116 = !{i32 7, !"uwtable", i32 1}
!117 = !{i32 7, !"frame-pointer", i32 2}
!118 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!119 = !{i8 0, i8 2}
!120 = !{!"branch_weights", i32 1, i32 2000}
!121 = !{i64 2148590009, i64 2148590035, i64 2148590064, i64 2148590098, i64 2148590129, i64 2148590152}
!122 = !{i64 2149924415}
!123 = !{i64 2149924681}
!124 = !{!"branch_weights", i32 2000, i32 1}
!125 = !{!"auto-init"}
!126 = !{i64 2148587544, i64 2148587570, i64 2148587599, i64 2148587633, i64 2148587664, i64 2148587687}
