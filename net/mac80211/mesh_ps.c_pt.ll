; ModuleID = '/llk/IR_all_yes/net/mac80211/mesh_ps.c_pt.bc'
source_filename = "../net/mac80211/mesh_ps.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ieee80211_sub_if_data = type { %struct.list_head, %struct.wireless_dev, %struct.list_head, i32, i32, %struct.delayed_work, ptr, ptr, i32, i32, [16 x i8], %struct.ieee80211_fragment_cache, i16, i8, [8 x ptr], ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8, i32, %struct.atomic_t, [4 x %struct.ieee80211_tx_queue_params], ptr, [4 x %struct.airtime_info], %struct.work_struct, i8, %struct.cfg80211_chan_def, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.cfg80211_chan_def, i8, i8, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, i8, i32, i32, i32, i8, %struct.delayed_work, ptr, [6 x i32], [6 x i8], [6 x [10 x i8]], [6 x i8], [6 x [8 x i16]], [6 x i32], i8, %union.anon.153, %struct.anon.187, %struct.ieee80211_vif }
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
%struct.atomic_t = type { i32 }
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
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.mesh_sta = type { %struct.timer_list, ptr, i64, i64, %struct.spinlock, i16, i16, i16, i16, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.ewma_mesh_fail_avg, %struct.ewma_mesh_tx_rate_avg }
%struct.ewma_mesh_fail_avg = type { i32 }
%struct.ewma_mesh_tx_rate_avg = type { i32 }
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
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.ieee802_11_elems = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [8 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i8, i8 }
%struct.ieee80211_tim_ie = type { i8, i8, i8, [1 x i8] }

@ieee80211_mps_local_status_update.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/mac80211/mesh_ps.c\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: setting non-peer PM to active for peering\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: setting non-peer PM to deep sleep\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: setting non-peer PM to user value\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: local STA operates in mode %d with %pM\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: start PS buffering frames towards %pM\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: %pM indicates buffered frames\0A\00", [61 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: announcing peer-specific power mode to %pM\0A\00", [48 x i8] zeroinitializer }, align 32
@ieee80211_tx_skb_tid.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"net/mac80211/ieee80211_i.h\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: STA %pM enters mode %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: STA %pM sets non-peer mode to %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: sending %d frames to PS STA %pM\0A\00", [59 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: appending QoS Null in MPSP towards %pM\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: sending MPSP trigger%s%s to %pM\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" RSPI\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" EOSP\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 91, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 121, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 124, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 127, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 159, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 267, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 587, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 695, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 723, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 59, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant [30 x i8] c"../net/mac80211/ieee80211_i.h\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 2199, i32 17 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 302, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 323, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 492, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 1984, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 428, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.96 = private constant [26 x i8] c"../net/mac80211/mesh_ps.c\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 398, i32 2 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @skb_queue_head_init.__key, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_mps_local_status_update(ptr noundef %sdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !47) #6
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !57
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #6
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b98 = load i1, ptr @ieee80211_mps_local_status_update.__warned, align 1
  br i1 %.b98, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @ieee80211_mps_local_status_update.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 91, ptr noundef nonnull @.str.1) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %local = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %4 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %local, align 4
  %sta_list = getelementptr inbounds %struct.ieee80211_local, ptr %5, i32 0, i32 49
  %6 = ptrtoint ptr %sta_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %sta.0108 = load volatile ptr, ptr %sta_list, align 4
  %cmp.not109 = icmp eq ptr %sta.0108, %sta_list
  br i1 %cmp.not109, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %sta.0113 = phi ptr [ %sta.0, %for.inc.for.body_crit_edge ], [ %sta.0108, %do.end.for.body_crit_edge ]
  %peering.0.off0112 = phi i1 [ %peering.1.off0, %for.inc.for.body_crit_edge ], [ false, %do.end.for.body_crit_edge ]
  %light_sleep_cnt.0111 = phi i32 [ %light_sleep_cnt.1, %for.inc.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %deep_sleep_cnt.0110 = phi i32 [ %deep_sleep_cnt.1, %for.inc.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %sdata11 = getelementptr inbounds %struct.sta_info, ptr %sta.0113, i32 0, i32 6
  %7 = ptrtoint ptr %sdata11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sdata11, align 4
  %cmp12.not = icmp eq ptr %8, %sdata
  br i1 %cmp12.not, label %if.end14, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end14:                                         ; preds = %for.body
  %mesh = getelementptr inbounds %struct.sta_info, ptr %sta.0113, i32 0, i32 17
  %9 = ptrtoint ptr %mesh to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mesh, align 8
  %plink_state = getelementptr inbounds %struct.mesh_sta, ptr %10, i32 0, i32 13
  %11 = ptrtoint ptr %plink_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %plink_state, align 8
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %12, label %if.end14.for.inc_crit_edge [
    i32 1, label %if.end14.sw.bb_crit_edge
    i32 2, label %if.end14.sw.bb_crit_edge116
    i32 3, label %if.end14.sw.bb_crit_edge117
    i32 4, label %sw.bb15
  ]

if.end14.sw.bb_crit_edge117:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end14.sw.bb_crit_edge116:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end14.sw.bb_crit_edge:                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb:                                            ; preds = %if.end14.sw.bb_crit_edge, %if.end14.sw.bb_crit_edge116, %if.end14.sw.bb_crit_edge117
  br label %for.inc

sw.bb15:                                          ; preds = %if.end14
  %local_pm = getelementptr inbounds %struct.mesh_sta, ptr %10, i32 0, i32 15
  %14 = ptrtoint ptr %local_pm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %local_pm, align 8
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %15, label %sw.bb15.for.inc_crit_edge [
    i32 2, label %if.then18
    i32 3, label %if.then22
  ]

sw.bb15.for.inc_crit_edge:                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then18:                                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #8
  %inc = add i32 %light_sleep_cnt.0111, 1
  br label %for.inc

if.then22:                                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #8
  %inc23 = add i32 %deep_sleep_cnt.0110, 1
  br label %for.inc

for.inc:                                          ; preds = %if.then22, %if.then18, %sw.bb15.for.inc_crit_edge, %sw.bb, %if.end14.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %deep_sleep_cnt.1 = phi i32 [ %deep_sleep_cnt.0110, %for.body.for.inc_crit_edge ], [ %deep_sleep_cnt.0110, %if.end14.for.inc_crit_edge ], [ %deep_sleep_cnt.0110, %if.then18 ], [ %inc23, %if.then22 ], [ %deep_sleep_cnt.0110, %sw.bb ], [ %deep_sleep_cnt.0110, %sw.bb15.for.inc_crit_edge ]
  %light_sleep_cnt.1 = phi i32 [ %light_sleep_cnt.0111, %for.body.for.inc_crit_edge ], [ %light_sleep_cnt.0111, %if.end14.for.inc_crit_edge ], [ %inc, %if.then18 ], [ %light_sleep_cnt.0111, %if.then22 ], [ %light_sleep_cnt.0111, %sw.bb ], [ %light_sleep_cnt.0111, %sw.bb15.for.inc_crit_edge ]
  %peering.1.off0 = phi i1 [ %peering.0.off0112, %for.body.for.inc_crit_edge ], [ %peering.0.off0112, %if.end14.for.inc_crit_edge ], [ %peering.0.off0112, %if.then18 ], [ %peering.0.off0112, %if.then22 ], [ true, %sw.bb ], [ %peering.0.off0112, %sw.bb15.for.inc_crit_edge ]
  %17 = ptrtoint ptr %sta.0113 to i32
  call void @__asan_load4_noabort(i32 %17)
  %sta.0 = load volatile ptr, ptr %sta.0113, align 4
  %cmp.not = icmp eq ptr %sta.0, %sta_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %deep_sleep_cnt.0.lcssa = phi i32 [ 0, %do.end.for.end_crit_edge ], [ %deep_sleep_cnt.1, %for.inc.for.end_crit_edge ]
  %light_sleep_cnt.0.lcssa = phi i32 [ 0, %do.end.for.end_crit_edge ], [ %light_sleep_cnt.1, %for.inc.for.end_crit_edge ]
  %peering.0.off0.lcssa = phi i1 [ false, %do.end.for.end_crit_edge ], [ %peering.1.off0, %for.inc.for.end_crit_edge ]
  %call.i99 = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i99, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i102

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true.i102:                               ; preds = %for.end
  %call1.i100 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i100)
  %tobool.not.i101 = icmp eq i32 %call1.i100, 0
  br i1 %tobool.not.i101, label %land.lhs.true.i102.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i104

land.lhs.true.i102.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i102
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true2.i104:                              ; preds = %land.lhs.true.i102
  %.b4.i103 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i103, label %land.lhs.true2.i104.rcu_read_unlock.exit_crit_edge, label %if.then.i105

land.lhs.true2.i104.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i104
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

if.then.i105:                                     ; preds = %land.lhs.true2.i104
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #6
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i105, %land.lhs.true2.i104.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i102.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !58
  %18 = tail call i32 @llvm.read_register.i32(metadata !47) #6
  %and.i.i.i.i.i106 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i106 to ptr
  %preempt_count.i.i.i.i107 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i107 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i107, align 4
  %sub.i.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i107, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  br i1 %peering.0.off0.lcssa, label %if.then36, label %if.else37

if.then36:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.2, ptr noundef %name) #6
  br label %if.end47

if.else37:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %light_sleep_cnt.0.lcssa)
  %tobool38.not = icmp eq i32 %light_sleep_cnt.0.lcssa, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %deep_sleep_cnt.0.lcssa)
  %tobool39.not = icmp eq i32 %deep_sleep_cnt.0.lcssa, 0
  %or.cond = select i1 %tobool38.not, i1 %tobool39.not, i1 false
  %name44 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  br i1 %or.cond, label %if.else43, label %if.then40

if.then40:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.3, ptr noundef %name44) #6
  br label %if.end47

if.else43:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.4, ptr noundef %name44) #6
  %power_mode = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24, i32 27
  %22 = ptrtoint ptr %power_mode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %power_mode, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.else43, %if.then40, %if.then36
  %nonpeer_pm.0 = phi i32 [ 1, %if.then36 ], [ 3, %if.then40 ], [ %23, %if.else43 ]
  %nonpeer_pm48 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 37
  %24 = ptrtoint ptr %nonpeer_pm48 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nonpeer_pm48, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %nonpeer_pm.0)
  %cmp49.not = icmp eq i32 %25, %nonpeer_pm.0
  br i1 %cmp49.not, label %lor.lhs.false50, label %if.end47.if.then64_crit_edge

if.end47.if.then64_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then64

lor.lhs.false50:                                  ; preds = %if.end47
  %ps_peers_light_sleep = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 38
  %26 = ptrtoint ptr %ps_peers_light_sleep to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ps_peers_light_sleep, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool51.not = icmp ne i32 %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %light_sleep_cnt.0.lcssa)
  %tobool52.not = icmp eq i32 %light_sleep_cnt.0.lcssa, 0
  %cmp55.not = xor i1 %tobool52.not, %tobool51.not
  br i1 %cmp55.not, label %lor.lhs.false56, label %lor.lhs.false50.if.then64_crit_edge

lor.lhs.false50.if.then64_crit_edge:              ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then64

lor.lhs.false56:                                  ; preds = %lor.lhs.false50
  %ps_peers_deep_sleep = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 39
  %28 = ptrtoint ptr %ps_peers_deep_sleep to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ps_peers_deep_sleep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool57.not = icmp ne i32 %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %deep_sleep_cnt.0.lcssa)
  %tobool60.not = icmp eq i32 %deep_sleep_cnt.0.lcssa, 0
  %cmp63.not = xor i1 %tobool60.not, %tobool57.not
  br i1 %cmp63.not, label %lor.lhs.false56.if.end65_crit_edge, label %lor.lhs.false56.if.then64_crit_edge

lor.lhs.false56.if.then64_crit_edge:              ; preds = %lor.lhs.false56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then64

lor.lhs.false56.if.end65_crit_edge:               ; preds = %lor.lhs.false56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

if.then64:                                        ; preds = %lor.lhs.false56.if.then64_crit_edge, %lor.lhs.false50.if.then64_crit_edge, %if.end47.if.then64_crit_edge
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %lor.lhs.false56.if.end65_crit_edge
  %changed.0 = phi i32 [ 256, %if.then64 ], [ 0, %lor.lhs.false56.if.end65_crit_edge ]
  %30 = ptrtoint ptr %nonpeer_pm48 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %nonpeer_pm.0, ptr %nonpeer_pm48, align 4
  %ps_peers_light_sleep67 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 38
  %31 = ptrtoint ptr %ps_peers_light_sleep67 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %light_sleep_cnt.0.lcssa, ptr %ps_peers_light_sleep67, align 8
  %ps_peers_deep_sleep68 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 39
  %32 = ptrtoint ptr %ps_peers_deep_sleep68 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %deep_sleep_cnt.0.lcssa, ptr %ps_peers_deep_sleep68, align 4
  ret i32 %changed.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sdata_dbg(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_mps_set_sta_local_pm(ptr noundef %sta, i32 noundef %pm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sdata1 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 6
  %0 = ptrtoint ptr %sdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdata1, align 4
  %mesh = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 17
  %2 = ptrtoint ptr %mesh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mesh, align 8
  %local_pm = getelementptr inbounds %struct.mesh_sta, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %local_pm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %local_pm, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %pm)
  %cmp = icmp eq i32 %5, %pm
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 10
  %addr = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 1
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.5, ptr noundef %name, i32 noundef %pm, ptr noundef %addr) #6
  %6 = ptrtoint ptr %mesh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mesh, align 8
  %local_pm5 = getelementptr inbounds %struct.mesh_sta, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %local_pm5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %pm, ptr %local_pm5, align 8
  %9 = load ptr, ptr %mesh, align 8
  %plink_state = getelementptr inbounds %struct.mesh_sta, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %plink_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %plink_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp7 = icmp eq i32 %11, 4
  br i1 %cmp7, label %if.then8, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then8:                                         ; preds = %if.end
  %call.i = tail call fastcc ptr @mps_qos_null_get(ptr noundef %sta) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then8.if.end9_crit_edge, label %if.end.i

if.then8.if.end9_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.end.i:                                         ; preds = %if.then8
  %12 = ptrtoint ptr %sdata1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sdata1, align 4
  %name.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %13, i32 0, i32 10
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.11, ptr noundef %name.i, ptr noundef %addr) #6
  %_flags.i.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 24
  %14 = ptrtoint ptr %_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %_flags.i.i, align 4
  %16 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool4.not.i = icmp eq i32 %16, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end.i.if.end8.i_crit_edge

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %18, align 2
  %21 = and i16 %20, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %21)
  %cmp.i.i.i = icmp eq i16 %21, 3
  %retval.0.v.i.i = select i1 %cmp.i.i.i, i32 30, i32 24
  %retval.0.i.i = getelementptr i8, ptr %18, i32 %retval.0.v.i.i
  %22 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %retval.0.i.i, align 1
  %24 = or i8 %23, 16
  store i8 %24, ptr %retval.0.i.i, align 1
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then5.i, %if.end.i.if.end8.i_crit_edge
  %25 = ptrtoint ptr %sdata1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sdata1, align 4
  tail call fastcc void @ieee80211_tx_skb(ptr noundef %26, ptr noundef nonnull %call.i) #6
  br label %if.end9

if.end9:                                          ; preds = %if.end8.i, %if.then8.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %call = tail call i32 @ieee80211_mps_local_status_update(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end9 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_mps_set_frame_flags(ptr nocapture noundef readonly %sdata, ptr noundef readonly %sta, ptr nocapture noundef %hdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 2
  %0 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr1, align 4
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %3 = ptrtoint ptr %hdr to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %hdr, align 2
  %5 = and i16 %4, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %5)
  %cmp.i = icmp eq i16 %5, -30720
  %tobool.not = icmp eq ptr %sta, null
  %spec.select = and i1 %tobool.not, %cmp.i
  br i1 %spec.select, label %do.end, label %land.lhs.true28, !prof !59

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 195, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

land.lhs.true28:                                  ; preds = %land.lhs.true
  %6 = ptrtoint ptr %hdr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %hdr, align 2
  %8 = and i16 %7, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %8)
  %cmp.i91 = icmp eq i16 %8, -30720
  br i1 %cmp.i91, label %land.lhs.true31, label %land.lhs.true28.if.else_crit_edge

land.lhs.true28.if.else_crit_edge:                ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true31:                                  ; preds = %land.lhs.true28
  %mesh = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 17
  %9 = ptrtoint ptr %mesh to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mesh, align 8
  %plink_state = getelementptr inbounds %struct.mesh_sta, ptr %10, i32 0, i32 13
  %11 = ptrtoint ptr %plink_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %plink_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %cmp = icmp eq i32 %12, 4
  br i1 %cmp, label %if.then32, label %land.lhs.true31.if.else_crit_edge

land.lhs.true31.if.else_crit_edge:                ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then32:                                        ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #8
  %local_pm = getelementptr inbounds %struct.mesh_sta, ptr %10, i32 0, i32 15
  br label %if.end34

if.else:                                          ; preds = %land.lhs.true31.if.else_crit_edge, %land.lhs.true28.if.else_crit_edge, %entry.if.else_crit_edge
  %nonpeer_pm = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 37
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then32
  %pm.0.in = phi ptr [ %local_pm, %if.then32 ], [ %nonpeer_pm, %if.else ]
  %13 = ptrtoint ptr %pm.0.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %pm.0 = load i32, ptr %pm.0.in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %pm.0)
  %cmp35 = icmp eq i32 %pm.0, 1
  %14 = ptrtoint ptr %hdr to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %hdr, align 2
  %16 = and i16 %15, -17
  %masksel = select i1 %cmp35, i16 0, i16 16
  %storemerge = or i16 %16, %masksel
  store i16 %storemerge, ptr %hdr, align 2
  %17 = and i16 %15, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %17)
  %cmp.i92 = icmp eq i16 %17, -30720
  br i1 %cmp.i92, label %if.end47, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end47:                                         ; preds = %if.end34
  %18 = and i16 %15, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %18)
  %cmp.i.i = icmp eq i16 %18, 3
  %retval.0.v.i = select i1 %cmp.i.i, i32 30, i32 24
  %retval.0.i = getelementptr i8, ptr %hdr, i32 %retval.0.v.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %pm.0)
  %cmp54 = icmp eq i32 %pm.0, 3
  %or.cond = select i1 %tobool.i.not.i, i1 %cmp54, i1 false
  br i1 %or.cond, label %if.end47.if.then64_crit_edge, label %lor.lhs.false

if.end47.if.then64_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then64

lor.lhs.false:                                    ; preds = %if.end47
  br i1 %tobool.i.not.i, label %lor.lhs.false.if.else68_crit_edge, label %land.lhs.true60

lor.lhs.false.if.else68_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else68

land.lhs.true60:                                  ; preds = %lor.lhs.false
  %ps_peers_deep_sleep = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 39
  %19 = ptrtoint ptr %ps_peers_deep_sleep to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ps_peers_deep_sleep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp62 = icmp sgt i32 %20, 0
  br i1 %cmp62, label %land.lhs.true60.if.then64_crit_edge, label %land.lhs.true60.if.else68_crit_edge

land.lhs.true60.if.else68_crit_edge:              ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else68

land.lhs.true60.if.then64_crit_edge:              ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then64

if.then64:                                        ; preds = %land.lhs.true60.if.then64_crit_edge, %if.end47.if.then64_crit_edge
  %arrayidx = getelementptr i8, ptr %retval.0.i, i32 1
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx, align 1
  %23 = or i8 %22, 2
  store i8 %23, ptr %arrayidx, align 1
  br label %cleanup

if.else68:                                        ; preds = %land.lhs.true60.if.else68_crit_edge, %lor.lhs.false.if.else68_crit_edge
  %arrayidx69 = getelementptr i8, ptr %retval.0.i, i32 1
  %24 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx69, align 1
  %26 = and i8 %25, -3
  store i8 %26, ptr %arrayidx69, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else68, %if.then64, %if.end34.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_mps_sta_status_update(ptr noundef %sta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sta_state = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 23
  %0 = ptrtoint ptr %sta_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sta_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ult i32 %1, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %mesh = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 17
  %2 = ptrtoint ptr %mesh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mesh, align 8
  %plink_state = getelementptr inbounds %struct.mesh_sta, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %plink_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %plink_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp1 = icmp eq i32 %5, 4
  br i1 %cmp1, label %land.lhs.true, label %if.end17

land.lhs.true:                                    ; preds = %if.end
  %peer_pm = getelementptr inbounds %struct.mesh_sta, ptr %3, i32 0, i32 16
  %6 = ptrtoint ptr %peer_pm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %peer_pm, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %7, label %land.lhs.true.if.end17.thr_comm_crit_edge [
    i32 0, label %if.else14
    i32 1, label %land.lhs.true.if.then15_crit_edge
  ]

land.lhs.true.if.then15_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15

land.lhs.true.if.end17.thr_comm_crit_edge:        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.thr_comm

if.else14:                                        ; preds = %land.lhs.true
  %nonpeer_pm56 = getelementptr inbounds %struct.mesh_sta, ptr %3, i32 0, i32 17
  %9 = ptrtoint ptr %nonpeer_pm56 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nonpeer_pm56, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp957.not = icmp eq i32 %10, 1
  br i1 %cmp957.not, label %if.else14.if.then15_crit_edge, label %if.else14.if.end17.thr_comm_crit_edge

if.else14.if.end17.thr_comm_crit_edge:            ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.thr_comm

if.else14.if.then15_crit_edge:                    ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15

if.then15:                                        ; preds = %if.else14.if.then15_crit_edge, %land.lhs.true.if.then15_crit_edge
  %_flags.i48 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 24
  tail call void @_clear_bit(i32 noundef 23, ptr noundef %_flags.i48) #6
  %_flags.i4963 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 24
  %11 = ptrtoint ptr %_flags.i4963 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %_flags.i4963, align 4
  %13 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %if.then15.cleanup_crit_edge, label %if.then15.if.else28_crit_edge

if.then15.if.else28_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else28

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17.thr_comm:                                ; preds = %if.else14.if.end17.thr_comm_crit_edge, %land.lhs.true.if.end17.thr_comm_crit_edge
  %_flags.i4959 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 24
  %15 = ptrtoint ptr %_flags.i4959 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %_flags.i4959, align 4
  %17 = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %.not = icmp eq i32 %17, 0
  br i1 %.not, label %if.end17.thr_comm.if.then24_crit_edge, label %if.end17.thr_comm.cleanup_crit_edge

if.end17.thr_comm.cleanup_crit_edge:              ; preds = %if.end17.thr_comm
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17.thr_comm.if.then24_crit_edge:            ; preds = %if.end17.thr_comm
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24

if.end17:                                         ; preds = %if.end
  %nonpeer_pm = getelementptr inbounds %struct.mesh_sta, ptr %3, i32 0, i32 17
  %18 = ptrtoint ptr %nonpeer_pm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nonpeer_pm, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp9 = icmp ne i32 %19, 1
  %_flags.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 24
  tail call void @_clear_bit(i32 noundef 23, ptr noundef %_flags.i) #6
  tail call void @_clear_bit(i32 noundef 24, ptr noundef %_flags.i) #6
  %_flags.i49 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 24
  %20 = ptrtoint ptr %_flags.i49 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %_flags.i49, align 4
  %22 = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %23 = icmp eq i32 %22, 0
  %cmp19 = xor i1 %cmp9, %23
  br i1 %cmp19, label %if.end17.cleanup_crit_edge, label %if.end22

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  br i1 %cmp9, label %if.end22.if.then24_crit_edge, label %if.end22.if.else28_crit_edge

if.end22.if.else28_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else28

if.end22.if.then24_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24

if.then24:                                        ; preds = %if.end22.if.then24_crit_edge, %if.end17.thr_comm.if.then24_crit_edge
  %_flags.i496266 = phi ptr [ %_flags.i49, %if.end22.if.then24_crit_edge ], [ %_flags.i4959, %if.end17.thr_comm.if.then24_crit_edge ]
  tail call void @_set_bit(i32 noundef 2, ptr noundef %_flags.i496266) #6
  %sdata = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 6
  %24 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sdata, align 4
  %num_sta_ps = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %25, i32 0, i32 57, i32 0, i32 40, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_sta_ps, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %num_sta_ps, i32 1, i32 3, i32 1) #6
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_sta_ps, ptr %num_sta_ps, i32 1, ptr elementtype(i32) %num_sta_ps) #6, !srcloc !60
  %27 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sdata, align 4
  %name = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %28, i32 0, i32 10
  %addr = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 1
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.6, ptr noundef %name, ptr noundef %addr) #6
  br label %cleanup

if.else28:                                        ; preds = %if.end22.if.else28_crit_edge, %if.then15.if.else28_crit_edge
  tail call void @ieee80211_sta_ps_deliver_wakeup(ptr noundef %sta) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else28, %if.then24, %if.end17.cleanup_crit_edge, %if.end17.thr_comm.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sta_ps_deliver_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_mps_rx_h_sta_process(ptr noundef %sta, ptr nocapture noundef readonly %hdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 2
  %0 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr1, align 4
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %3 = ptrtoint ptr %hdr to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %hdr, align 2
  %5 = and i16 %4, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %5)
  %cmp.i = icmp eq i16 %5, -30720
  br i1 %cmp.i, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %6 = and i16 %4, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp.i.not.i = icmp eq i16 %6, 0
  br i1 %cmp.i.not.i, label %if.then.if.end4.i_crit_edge, label %if.then.i

if.then.if.end4.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %7 = and i16 %4, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %7)
  %cmp.i.i.i = icmp eq i16 %7, 3
  %retval.0.v.i.i = select i1 %cmp.i.i.i, i32 30, i32 24
  %retval.0.i.i = getelementptr i8, ptr %hdr, i32 %retval.0.v.i.i
  %arrayidx.i = getelementptr i8, ptr %retval.0.i.i, i32 1
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %10 = and i8 %9, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  %..i = select i1 %tobool.not.i, i32 2, i32 3
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then.i, %if.then.if.end4.i_crit_edge
  %pm.0.i = phi i32 [ %..i, %if.then.i ], [ 1, %if.then.if.end4.i_crit_edge ]
  %mesh.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 17
  %11 = ptrtoint ptr %mesh.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mesh.i, align 8
  %peer_pm.i = getelementptr inbounds %struct.mesh_sta, ptr %12, i32 0, i32 16
  %13 = ptrtoint ptr %peer_pm.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %peer_pm.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %pm.0.i)
  %cmp.i9 = icmp eq i32 %14, %pm.0.i
  br i1 %cmp.i9, label %if.end4.i.mps_set_sta_peer_pm.exit_crit_edge, label %if.end7.i

if.end4.i.mps_set_sta_peer_pm.exit_crit_edge:     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mps_set_sta_peer_pm.exit

if.end7.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %sdata.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 6
  %15 = ptrtoint ptr %sdata.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sdata.i, align 4
  %name.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %16, i32 0, i32 10
  %addr.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 1
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.15, ptr noundef %name.i, ptr noundef %addr.i, i32 noundef %pm.0.i) #6
  %17 = ptrtoint ptr %mesh.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mesh.i, align 8
  %peer_pm11.i = getelementptr inbounds %struct.mesh_sta, ptr %18, i32 0, i32 16
  %19 = ptrtoint ptr %peer_pm11.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %pm.0.i, ptr %peer_pm11.i, align 4
  tail call void @ieee80211_mps_sta_status_update(ptr noundef %sta) #6
  br label %mps_set_sta_peer_pm.exit

mps_set_sta_peer_pm.exit:                         ; preds = %if.end7.i, %if.end4.i.mps_set_sta_peer_pm.exit_crit_edge
  %20 = ptrtoint ptr %hdr to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %hdr, align 2
  %22 = and i16 %21, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %22)
  %cmp.i.i = icmp eq i16 %22, 3
  %retval.0.v.i = select i1 %cmp.i.i, i32 30, i32 24
  %retval.0.i = getelementptr i8, ptr %hdr, i32 %retval.0.v.i
  %arrayidx.i10 = getelementptr i8, ptr %retval.0.i, i32 1
  %23 = ptrtoint ptr %arrayidx.i10 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i10, align 1
  %25 = and i8 %24, 4
  %26 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %retval.0.i, align 1
  %28 = and i8 %27, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool25.not.i = icmp eq i8 %28, 0
  br i1 %tobool25.not.i, label %if.else27.i, label %if.then26.i

if.then26.i:                                      ; preds = %mps_set_sta_peer_pm.exit
  call void @__sanitizer_cov_trace_pc() #8
  %_flags.i56.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 24
  tail call void @_clear_bit(i32 noundef 24, ptr noundef %_flags.i56.i) #6
  br label %if.end31.i

if.else27.i:                                      ; preds = %mps_set_sta_peer_pm.exit
  %29 = ptrtoint ptr %mesh.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mesh.i, align 8
  %local_pm.i = getelementptr inbounds %struct.mesh_sta, ptr %30, i32 0, i32 15
  %31 = ptrtoint ptr %local_pm.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %local_pm.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp.not.i = icmp eq i32 %32, 1
  br i1 %cmp.not.i, label %if.else27.i.if.end31.i_crit_edge, label %if.then29.i

if.else27.i.if.end31.i_crit_edge:                 ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31.i

if.then29.i:                                      ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #8
  %_flags.i57.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 24
  tail call void @_set_bit(i32 noundef 24, ptr noundef %_flags.i57.i) #6
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then29.i, %if.else27.i.if.end31.i_crit_edge, %if.then26.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool33.not.i = icmp eq i8 %25, 0
  br i1 %tobool33.not.i, label %if.end31.i.if.end_crit_edge, label %land.lhs.true34.i

if.end31.i.if.end_crit_edge:                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true34.i:                                ; preds = %if.end31.i
  %_flags.i58.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 24
  %call.i59.i = tail call i32 @_test_and_set_bit(i32 noundef 23, ptr noundef %_flags.i58.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59.i)
  %tobool36.not.i = icmp eq i32 %call.i59.i, 0
  br i1 %tobool36.not.i, label %if.then37.i, label %land.lhs.true34.i.if.end_crit_edge

land.lhs.true34.i.if.end_crit_edge:               ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then37.i:                                      ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @mps_frame_deliver(ptr noundef %sta, i32 noundef -1) #6
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %33 = ptrtoint ptr %hdr to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %hdr, align 2
  %35 = and i16 %34, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %cmp.i.not.i12 = icmp eq i16 %35, 0
  %..i13 = select i1 %cmp.i.not.i12, i32 1, i32 3
  %mesh.i14 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 17
  %36 = ptrtoint ptr %mesh.i14 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mesh.i14, align 8
  %nonpeer_pm.i = getelementptr inbounds %struct.mesh_sta, ptr %37, i32 0, i32 17
  %38 = ptrtoint ptr %nonpeer_pm.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nonpeer_pm.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %..i13)
  %cmp.i15 = icmp eq i32 %39, %..i13
  br i1 %cmp.i15, label %if.else.if.end_crit_edge, label %if.end2.i

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end2.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %sdata.i16 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 6
  %40 = ptrtoint ptr %sdata.i16 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sdata.i16, align 4
  %name.i17 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %41, i32 0, i32 10
  %addr.i18 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 1
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.16, ptr noundef %name.i17, ptr noundef %addr.i18, i32 noundef %..i13) #6
  %42 = ptrtoint ptr %mesh.i14 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mesh.i14, align 8
  %nonpeer_pm6.i = getelementptr inbounds %struct.mesh_sta, ptr %43, i32 0, i32 17
  %44 = ptrtoint ptr %nonpeer_pm6.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %..i13, ptr %nonpeer_pm6.i, align 8
  tail call void @ieee80211_mps_sta_status_update(ptr noundef %sta) #6
  br label %if.end

if.end:                                           ; preds = %if.end2.i, %if.else.if.end_crit_edge, %if.then37.i, %land.lhs.true34.i.if.end_crit_edge, %if.end31.i.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_mpsp_trigger_process(ptr nocapture noundef readonly %qc, ptr noundef %sta, i1 noundef zeroext %tx, i1 noundef zeroext %acked) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %qc, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %2 = and i8 %1, 4
  %3 = ptrtoint ptr %qc to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %qc, align 1
  %5 = and i8 %4, 16
  br i1 %tx, label %if.then, label %if.else24

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool8.not = icmp ne i8 %2, 0
  %6 = and i1 %tobool8.not, %acked
  br i1 %6, label %if.then11, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %_flags.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 24
  tail call void @_set_bit(i32 noundef 24, ptr noundef %_flags.i) #6
  br label %if.end

if.end:                                           ; preds = %if.then11, %if.then.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool12.not = icmp eq i8 %5, 0
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %_flags.i53 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 24
  tail call void @_clear_bit(i32 noundef 23, ptr noundef %_flags.i53) #6
  br label %if.end39

if.else:                                          ; preds = %if.end
  br i1 %acked, label %land.lhs.true16, label %if.else.if.end39_crit_edge

if.else.if.end39_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

land.lhs.true16:                                  ; preds = %if.else
  %_flags.i54 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 24
  %7 = ptrtoint ptr %_flags.i54 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %_flags.i54, align 4
  %9 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool17.not = icmp eq i32 %9, 0
  br i1 %tobool17.not, label %land.lhs.true16.if.end39_crit_edge, label %land.lhs.true18

land.lhs.true16.if.end39_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

land.lhs.true18:                                  ; preds = %land.lhs.true16
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 23, ptr noundef %_flags.i54) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool20.not = icmp eq i32 %call.i, 0
  br i1 %tobool20.not, label %if.then21, label %land.lhs.true18.if.end39_crit_edge

land.lhs.true18.if.end39_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then21:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @mps_frame_deliver(ptr noundef %sta, i32 noundef -1)
  br label %if.end39

if.else24:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool25.not = icmp eq i8 %5, 0
  br i1 %tobool25.not, label %if.else27, label %if.then26

if.then26:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #8
  %_flags.i56 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 24
  tail call void @_clear_bit(i32 noundef 24, ptr noundef %_flags.i56) #6
  br label %if.end31

if.else27:                                        ; preds = %if.else24
  %mesh = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 17
  %10 = ptrtoint ptr %mesh to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mesh, align 8
  %local_pm = getelementptr inbounds %struct.mesh_sta, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %local_pm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %local_pm, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.not = icmp eq i32 %13, 1
  br i1 %cmp.not, label %if.else27.if.end31_crit_edge, label %if.then29

if.else27.if.end31_crit_edge:                     ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then29:                                        ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #8
  %_flags.i57 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 24
  tail call void @_set_bit(i32 noundef 24, ptr noundef %_flags.i57) #6
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.else27.if.end31_crit_edge, %if.then26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool33.not = icmp eq i8 %2, 0
  br i1 %tobool33.not, label %if.end31.if.end39_crit_edge, label %land.lhs.true34

if.end31.if.end39_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

land.lhs.true34:                                  ; preds = %if.end31
  %_flags.i58 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 24
  %call.i59 = tail call i32 @_test_and_set_bit(i32 noundef 23, ptr noundef %_flags.i58) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59)
  %tobool36.not = icmp eq i32 %call.i59, 0
  br i1 %tobool36.not, label %if.then37, label %land.lhs.true34.if.end39_crit_edge

land.lhs.true34.if.end39_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then37:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @mps_frame_deliver(ptr noundef %sta, i32 noundef -1)
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %land.lhs.true34.if.end39_crit_edge, %if.end31.if.end39_crit_edge, %if.then21, %land.lhs.true18.if.end39_crit_edge, %land.lhs.true16.if.end39_crit_edge, %if.else.if.end39_crit_edge, %if.then13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mps_frame_deliver(ptr noundef %sta, i32 noundef %n_frames) unnamed_addr #0 align 64 {
entry:
  %frames = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sdata = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 6
  %0 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdata, align 4
  %local1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %local1, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %frames) #6
  %4 = call ptr @memset(ptr %frames, i32 255, i32 56)
  %lock.i = getelementptr inbounds %struct.sk_buff_head, ptr %frames, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #6
  %5 = ptrtoint ptr %frames to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %frames, ptr %frames, align 4
  %prev.i.i = getelementptr inbounds %struct.anon.62, ptr %frames, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %frames, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %frames, i32 0, i32 1
  %7 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %qlen.i.i, align 4
  %total_ps_buffered = getelementptr inbounds %struct.ieee80211_local, ptr %3, i32 0, i32 124
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.inc.while.cond.preheader_crit_edge, %entry
  %n_frames.addr.0126 = phi i32 [ %n_frames, %entry ], [ %n_frames.addr.1.lcssa, %for.inc.while.cond.preheader_crit_edge ]
  %more_data.0.off0125 = phi i1 [ false, %entry ], [ %more_data.1.off0, %for.inc.while.cond.preheader_crit_edge ]
  %ac.0121 = phi i32 [ 0, %entry ], [ %inc, %for.inc.while.cond.preheader_crit_edge ]
  %arrayidx3 = getelementptr %struct.sta_info, ptr %sta, i32 0, i32 26, i32 %ac.0121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_frames.addr.0126)
  %cmp2.not117 = icmp eq i32 %n_frames.addr.0126, 0
  br i1 %cmp2.not117, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %arrayidx = getelementptr %struct.sta_info, ptr %sta, i32 0, i32 27, i32 %ac.0121
  br label %while.body

while.body:                                       ; preds = %if.end10.while.body_crit_edge, %while.body.lr.ph
  %n_frames.addr.1118 = phi i32 [ %n_frames.addr.0126, %while.body.lr.ph ], [ %dec11, %if.end10.while.body_crit_edge ]
  %call = call ptr @skb_dequeue(ptr noundef %arrayidx) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %while.body.if.end10_crit_edge

while.body.if.end10_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then:                                          ; preds = %while.body
  %call4 = call ptr @skb_dequeue(ptr noundef %arrayidx3) #6
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.then.while.end_crit_edge, label %if.then6

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %total_ps_buffered to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %total_ps_buffered, align 4
  %dec = add i32 %9, -1
  store i32 %dec, ptr %total_ps_buffered, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %while.body.if.end10_crit_edge
  %skb.0.ph = phi ptr [ %call4, %if.then6 ], [ %call, %while.body.if.end10_crit_edge ]
  %dec11 = add i32 %n_frames.addr.1118, -1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %skb.0.ph to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %frames, ptr %skb.0.ph, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.41, ptr %skb.0.ph, i32 0, i32 1
  %13 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %prev10.i.i.i, align 4
  store volatile ptr %skb.0.ph, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %skb.0.ph, ptr %11, align 4
  %15 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %qlen.i.i, align 4
  %add.i.i.i = add i32 %16, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i, align 4
  %cmp2.not = icmp eq i32 %dec11, 0
  br i1 %cmp2.not, label %if.end10.while.end_crit_edge, label %if.end10.while.body_crit_edge

if.end10.while.body_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end10.while.end_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %if.end10.while.end_crit_edge, %if.then.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %n_frames.addr.1.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %n_frames.addr.1118, %if.then.while.end_crit_edge ], [ 0, %if.end10.while.end_crit_edge ]
  %arrayidx13 = getelementptr %struct.sta_info, ptr %sta, i32 0, i32 27, i32 %ac.0121
  %17 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx13, align 4
  %cmp.i.not = icmp eq ptr %18, %arrayidx13
  br i1 %cmp.i.not, label %lor.lhs.false, label %while.end.if.then20_crit_edge

while.end.if.then20_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

lor.lhs.false:                                    ; preds = %while.end
  %19 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx3, align 4
  %cmp.i100.not = icmp eq ptr %20, %arrayidx3
  br i1 %cmp.i100.not, label %lor.lhs.false.for.inc_crit_edge, label %lor.lhs.false.if.then20_crit_edge

lor.lhs.false.if.then20_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then20:                                        ; preds = %lor.lhs.false.if.then20_crit_edge, %while.end.if.then20_crit_edge
  br label %for.inc

for.inc:                                          ; preds = %if.then20, %lor.lhs.false.for.inc_crit_edge
  %more_data.1.off0 = phi i1 [ %more_data.0.off0125, %lor.lhs.false.for.inc_crit_edge ], [ true, %if.then20 ]
  %inc = add nuw nsw i32 %ac.0121, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %for.inc.while.cond.preheader_crit_edge

for.inc.while.cond.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.preheader

for.end:                                          ; preds = %for.inc
  %21 = ptrtoint ptr %frames to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %frames, align 4
  %cmp.i102.not = icmp eq ptr %22, %frames
  br i1 %cmp.i102.not, label %if.then24, label %if.end25

if.then24:                                        ; preds = %for.end
  %23 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sdata, align 4
  %call.i = call fastcc ptr @mps_qos_null_get(ptr noundef %sta) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then24.cleanup_crit_edge, label %if.end.i

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %25 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %26, align 2
  %29 = and i16 %28, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %29)
  %cmp.i.i.i = icmp eq i16 %29, 3
  %retval.0.v.i.i = select i1 %cmp.i.i.i, i32 30, i32 24
  %retval.0.i.i = getelementptr i8, ptr %26, i32 %retval.0.v.i.i
  %30 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %retval.0.i.i, align 1
  %32 = or i8 %31, 16
  store i8 %32, ptr %retval.0.i.i, align 1
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3
  %33 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cb.i.i, align 8
  %or22.i = or i32 %34, 131073
  store i32 %or22.i, ptr %cb.i.i, align 8
  %name.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %24, i32 0, i32 10
  %addr.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 1
  call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.20, ptr noundef %name.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, ptr noundef %addr.i) #6
  call fastcc void @ieee80211_tx_skb(ptr noundef %24, ptr noundef nonnull %call.i) #6
  br label %cleanup

if.end25:                                         ; preds = %for.end
  %_flags.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 24
  %35 = ptrtoint ptr %_flags.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %_flags.i, align 4
  %37 = and i32 %36, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool27.not = icmp eq i32 %37, 0
  br i1 %tobool27.not, label %if.end25.if.end29_crit_edge, label %if.then28

if.end25.if.end29_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then28:                                        ; preds = %if.end25
  %38 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sdata, align 4
  %40 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %prev.i.i, align 4
  %cmp.i.i = icmp eq ptr %41, %frames
  %spec.store.select.i.i = select i1 %cmp.i.i, ptr null, ptr %41
  %data.i105 = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 19
  %42 = ptrtoint ptr %data.i105 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data.i105, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %43, align 2
  %46 = and i16 %45, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %46)
  %cmp.i25.i = icmp eq i16 %46, -30720
  br i1 %cmp.i25.i, label %if.then28.if.end29_crit_edge, label %if.end.i107

if.then28.if.end29_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.end.i107:                                      ; preds = %if.then28
  %call3.i = call fastcc ptr @mps_qos_null_get(ptr noundef %sta) #6
  %tobool.not.i106 = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i106, label %if.end.i107.if.end29_crit_edge, label %if.end5.i

if.end.i107.if.end29_crit_edge:                   ; preds = %if.end.i107
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.end5.i:                                        ; preds = %if.end.i107
  call void @__sanitizer_cov_trace_pc() #8
  %name.i108 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %39, i32 0, i32 10
  %addr.i109 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 1
  call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.19, ptr noundef %name.i108, ptr noundef %addr.i109) #6
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %call3.i, i32 0, i32 15, i32 0, i32 6
  %47 = ptrtoint ptr %priority.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %priority.i, align 4
  %queue_mapping1.i.i = getelementptr inbounds %struct.sk_buff, ptr %call3.i, i32 0, i32 10
  %48 = ptrtoint ptr %queue_mapping1.i.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 3, ptr %queue_mapping1.i.i, align 8
  call void @ieee80211_set_qos_hdr(ptr noundef %39, ptr noundef nonnull %call3.i) #6
  %vif.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %39, i32 0, i32 59
  %vif9.i = getelementptr inbounds %struct.sk_buff, ptr %call3.i, i32 0, i32 3, i32 24
  %49 = ptrtoint ptr %vif9.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %vif.i, ptr %vif9.i, align 8
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %call3.i, i32 0, i32 3, i32 32
  %50 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags.i, align 8
  %or.i = or i32 %51, 64
  store i32 %or.i, ptr %flags.i, align 8
  %52 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev.i.i, align 4
  %54 = ptrtoint ptr %call3.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %frames, ptr %call3.i, align 8
  %prev10.i.i.i.i = getelementptr inbounds %struct.anon.41, ptr %call3.i, i32 0, i32 1
  %55 = ptrtoint ptr %prev10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %53, ptr %prev10.i.i.i.i, align 4
  store volatile ptr %call3.i, ptr %prev.i.i, align 4
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %call3.i, ptr %53, align 4
  %57 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %qlen.i.i, align 4
  %add.i.i.i.i = add i32 %58, 1
  store volatile i32 %add.i.i.i.i, ptr %qlen.i.i, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.end5.i, %if.end.i107.if.end29_crit_edge, %if.then28.if.end29_crit_edge, %if.end25.if.end29_crit_edge
  %59 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %sdata, align 4
  %name = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %60, i32 0, i32 10
  %61 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %qlen.i.i, align 4
  %addr = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 1
  call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.17, ptr noundef %name, i32 noundef %62, ptr noundef %addr) #6
  %63 = ptrtoint ptr %frames to i32
  call void @__asan_load4_noabort(i32 %63)
  %skb.1127 = load ptr, ptr %frames, align 4
  %cmp35.not128 = icmp eq ptr %skb.1127, %frames
  br i1 %cmp35.not128, label %if.end29.for.end63_crit_edge, label %if.end29.for.body36_crit_edge

if.end29.for.body36_crit_edge:                    ; preds = %if.end29
  br label %for.body36

if.end29.for.end63_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end63

for.body36:                                       ; preds = %if.end60.for.body36_crit_edge, %if.end29.for.body36_crit_edge
  %skb.1129 = phi ptr [ %skb.1, %if.end60.for.body36_crit_edge ], [ %skb.1127, %if.end29.for.body36_crit_edge ]
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1129, i32 0, i32 3
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb.1129, i32 0, i32 19
  %64 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %data, align 4
  %66 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cb.i, align 8
  %or = or i32 %67, 131072
  store i32 %or, ptr %cb.i, align 8
  br i1 %more_data.1.off0, label %for.body36.if.then41_crit_edge, label %lor.lhs.false39

for.body36.if.then41_crit_edge:                   ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then41

lor.lhs.false39:                                  ; preds = %for.body36
  %68 = ptrtoint ptr %skb.1129 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %skb.1129, align 8
  %cmp.i110 = icmp eq ptr %69, %frames
  br i1 %cmp.i110, label %if.else, label %lor.lhs.false39.if.then41_crit_edge

lor.lhs.false39.if.then41_crit_edge:              ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then41

if.then41:                                        ; preds = %lor.lhs.false39.if.then41_crit_edge, %for.body36.if.then41_crit_edge
  %70 = ptrtoint ptr %65 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %65, align 2
  %72 = or i16 %71, 32
  br label %if.end47

if.else:                                          ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #8
  %73 = ptrtoint ptr %65 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %65, align 2
  %75 = and i16 %74, -33
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.then41
  %storemerge = phi i16 [ %72, %if.then41 ], [ %75, %if.else ]
  %76 = ptrtoint ptr %65 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %storemerge, ptr %65, align 2
  %77 = ptrtoint ptr %skb.1129 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %skb.1129, align 8
  %cmp.i111 = icmp eq ptr %78, %frames
  %79 = and i16 %storemerge, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %79)
  %cmp.i112 = icmp eq i16 %79, -30720
  %or.cond = select i1 %cmp.i111, i1 %cmp.i112, i1 false
  br i1 %or.cond, label %if.then53, label %if.end47.if.end60_crit_edge

if.end47.if.end60_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

if.then53:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  %80 = and i16 %storemerge, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %80)
  %cmp.i.i113 = icmp eq i16 %80, 3
  %retval.0.v.i = select i1 %cmp.i.i113, i32 30, i32 24
  %retval.0.i = getelementptr i8, ptr %65, i32 %retval.0.v.i
  %81 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %retval.0.i, align 1
  %83 = or i8 %82, 16
  store i8 %83, ptr %retval.0.i, align 1
  %84 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %cb.i, align 8
  %or59 = or i32 %85, 1
  store i32 %or59, ptr %cb.i, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.then53, %if.end47.if.end60_crit_edge
  %86 = ptrtoint ptr %skb.1129 to i32
  call void @__asan_load4_noabort(i32 %86)
  %skb.1 = load ptr, ptr %skb.1129, align 4
  %cmp35.not = icmp eq ptr %skb.1, %frames
  br i1 %cmp35.not, label %if.end60.for.end63_crit_edge, label %if.end60.for.body36_crit_edge

if.end60.for.body36_crit_edge:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body36

if.end60.for.end63_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end63

for.end63:                                        ; preds = %if.end60.for.end63_crit_edge, %if.end29.for.end63_crit_edge
  call void @ieee80211_add_pending_skbs(ptr noundef %3, ptr noundef nonnull %frames) #6
  call void @sta_info_recalc_tim(ptr noundef %sta) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end63, %if.end.i, %if.then24.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %frames) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_mps_frame_release(ptr noundef %sta, ptr nocapture noundef readonly %elems) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mesh = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 17
  %0 = ptrtoint ptr %mesh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mesh, align 8
  %plink_state = getelementptr inbounds %struct.mesh_sta, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %plink_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %plink_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp eq i32 %3, 4
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then:                                          ; preds = %entry
  %tim = getelementptr inbounds %struct.ieee802_11_elems, ptr %elems, i32 0, i32 9
  %4 = ptrtoint ptr %tim to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tim, align 4
  %tim_len = getelementptr inbounds %struct.ieee802_11_elems, ptr %elems, i32 0, i32 60
  %6 = ptrtoint ptr %tim_len to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tim_len, align 1
  %tobool.not.i = icmp eq ptr %5, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %7)
  %cmp.i = icmp ult i8 %7, 4
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.then.if.end5_crit_edge, label %if.end.i, !prof !59

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end.i:                                         ; preds = %if.then
  %aid = getelementptr inbounds %struct.mesh_sta, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %aid to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %aid, align 8
  %div52.i = lshr i16 %9, 3
  %10 = trunc i16 %9 to i8
  %and9.i = and i8 %10, 7
  %shl.i = shl nuw i8 1, %and9.i
  %bitmap_ctrl.i = getelementptr inbounds %struct.ieee80211_tim_ie, ptr %5, i32 0, i32 2
  %11 = ptrtoint ptr %bitmap_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bitmap_ctrl.i, align 1
  %13 = and i8 %12, -2
  %14 = and i16 %div52.i, 255
  %15 = zext i8 %13 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %15)
  %cmp19.i = icmp ult i16 %14, %15
  br i1 %cmp19.i, label %if.end.i.if.end5_crit_edge, label %lor.lhs.false.i

if.end.i.if.end5_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

lor.lhs.false.i:                                  ; preds = %if.end.i
  %add.i = add i8 %7, -4
  %sub.i = add i8 %add.i, %13
  %16 = zext i8 %sub.i to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %16)
  %cmp23.i = icmp ugt i16 %14, %16
  br i1 %cmp23.i, label %lor.lhs.false.i.if.end5_crit_edge, label %if.end

lor.lhs.false.i.if.end5_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end:                                           ; preds = %lor.lhs.false.i
  %17 = trunc i16 %div52.i to i8
  %conv30.i = sub i8 %17, %13
  %idxprom.i = zext i8 %conv30.i to i32
  %arrayidx.i = getelementptr %struct.ieee80211_tim_ie, ptr %5, i32 0, i32 3, i32 %idxprom.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i, align 1
  %and3353.i = and i8 %19, %shl.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and3353.i)
  %tobool34.i.not = icmp eq i8 %and3353.i, 0
  br i1 %tobool34.i.not, label %if.end.if.end5_crit_edge, label %if.then2

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %sdata = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 6
  %20 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sdata, align 4
  %name = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %21, i32 0, i32 10
  %addr = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 1
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.7, ptr noundef %name, ptr noundef %addr) #6
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge, %lor.lhs.false.i.if.end5_crit_edge, %if.end.i.if.end5_crit_edge, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %has_buffered.0.off065 = phi i1 [ true, %if.then2 ], [ false, %if.end.if.end5_crit_edge ], [ false, %entry.if.end5_crit_edge ], [ false, %if.then.if.end5_crit_edge ], [ false, %lor.lhs.false.i.if.end5_crit_edge ], [ false, %if.end.i.if.end5_crit_edge ]
  %_flags.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 24
  %22 = ptrtoint ptr %_flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %_flags.i, align 4
  %24 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool7.not = icmp eq i32 %24, 0
  br i1 %tobool7.not, label %if.end5.if.end13_crit_edge, label %land.lhs.true

if.end5.if.end13_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end5
  %awake_window = getelementptr inbounds %struct.ieee802_11_elems, ptr %elems, i32 0, i32 30
  %25 = ptrtoint ptr %awake_window to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %awake_window, align 4
  %tobool8.not = icmp eq ptr %26, null
  br i1 %tobool8.not, label %land.lhs.true.cleanup_crit_edge, label %lor.lhs.false

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %26, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool11.not = icmp eq i16 %28, 0
  br i1 %tobool11.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.end13_crit_edge

lor.lhs.false.if.end13_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false.if.end13_crit_edge, %if.end5.if.end13_crit_edge
  %29 = ptrtoint ptr %_flags.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %_flags.i, align 4
  %31 = and i32 %30, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool15.not = icmp eq i32 %31, 0
  br i1 %tobool15.not, label %for.body.preheader, label %if.end13.if.end22_crit_edge

if.end13.if.end22_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

for.body.preheader:                               ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %qlen.i = getelementptr %struct.sta_info, ptr %sta, i32 0, i32 26, i32 0, i32 1
  %32 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %qlen.i, align 4
  %qlen.i60 = getelementptr %struct.sta_info, ptr %sta, i32 0, i32 27, i32 0, i32 1
  %34 = ptrtoint ptr %qlen.i60 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %qlen.i60, align 4
  %add21 = add i32 %33, %35
  %qlen.i.1 = getelementptr %struct.sta_info, ptr %sta, i32 0, i32 26, i32 1, i32 1
  %36 = ptrtoint ptr %qlen.i.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %qlen.i.1, align 4
  %qlen.i60.1 = getelementptr %struct.sta_info, ptr %sta, i32 0, i32 27, i32 1, i32 1
  %38 = ptrtoint ptr %qlen.i60.1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %qlen.i60.1, align 4
  %add.1 = add i32 %37, %add21
  %add21.1 = add i32 %add.1, %39
  %qlen.i.2 = getelementptr %struct.sta_info, ptr %sta, i32 0, i32 26, i32 2, i32 1
  %40 = ptrtoint ptr %qlen.i.2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %qlen.i.2, align 4
  %qlen.i60.2 = getelementptr %struct.sta_info, ptr %sta, i32 0, i32 27, i32 2, i32 1
  %42 = ptrtoint ptr %qlen.i60.2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %qlen.i60.2, align 4
  %add.2 = add i32 %41, %add21.1
  %add21.2 = add i32 %add.2, %43
  %qlen.i.3 = getelementptr %struct.sta_info, ptr %sta, i32 0, i32 26, i32 3, i32 1
  %44 = ptrtoint ptr %qlen.i.3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %qlen.i.3, align 4
  %qlen.i60.3 = getelementptr %struct.sta_info, ptr %sta, i32 0, i32 27, i32 3, i32 1
  %46 = ptrtoint ptr %qlen.i60.3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %qlen.i60.3, align 4
  %add.3 = add i32 %45, %add21.2
  %add21.3 = sub i32 0, %47
  call void @__sanitizer_cov_trace_cmp4(i32 %add.3, i32 %add21.3)
  %phi.cmp = icmp eq i32 %add.3, %add21.3
  br label %if.end22

if.end22:                                         ; preds = %for.body.preheader, %if.end13.if.end22_crit_edge
  %buffer_local.1 = phi i1 [ true, %if.end13.if.end22_crit_edge ], [ %phi.cmp, %for.body.preheader ]
  %has_buffered.0.off0.not = xor i1 %has_buffered.0.off065, true
  %or.cond = select i1 %has_buffered.0.off0.not, i1 %buffer_local.1, i1 false
  br i1 %or.cond, label %if.end22.cleanup_crit_edge, label %if.end27

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  %48 = ptrtoint ptr %mesh to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mesh, align 8
  %plink_state29 = getelementptr inbounds %struct.mesh_sta, ptr %49, i32 0, i32 13
  %50 = ptrtoint ptr %plink_state29 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %plink_state29, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %51)
  %cmp30 = icmp eq i32 %51, 4
  br i1 %cmp30, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.end27
  %sdata2.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 6
  %52 = ptrtoint ptr %sdata2.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sdata2.i, align 4
  %call.i = tail call fastcc ptr @mps_qos_null_get(ptr noundef %sta) #6
  %tobool.not.i61 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i61, label %if.then31.cleanup_crit_edge, label %if.end.i62

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i62:                                       ; preds = %if.then31
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %54 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.i, align 4
  br i1 %buffer_local.1, label %if.end.i62.if.end6.i_crit_edge, label %if.then4.i

if.end.i62.if.end6.i_crit_edge:                   ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %55, align 2
  %58 = or i16 %57, 32
  store i16 %58, ptr %55, align 2
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.end.i62.if.end6.i_crit_edge
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %55, align 2
  %61 = and i16 %60, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %61)
  %cmp.i.i.i = icmp eq i16 %61, 3
  %retval.0.v.i.i = select i1 %cmp.i.i.i, i32 30, i32 24
  %retval.0.i.i = getelementptr i8, ptr %55, i32 %retval.0.v.i.i
  br i1 %has_buffered.0.off065, label %if.then9.i, label %if.end6.i.if.end13.i_crit_edge

if.end6.i.if.end13.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i63 = getelementptr i8, ptr %retval.0.i.i, i32 1
  %62 = ptrtoint ptr %arrayidx.i63 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx.i63, align 1
  %64 = or i8 %63, 4
  store i8 %64, ptr %arrayidx.i63, align 1
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then9.i, %if.end6.i.if.end13.i_crit_edge
  br i1 %buffer_local.1, label %if.then15.i, label %if.end13.i.if.end20.i_crit_edge

if.end13.i.if.end20.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

if.then15.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %retval.0.i.i, align 1
  %67 = or i8 %66, 16
  store i8 %67, ptr %retval.0.i.i, align 1
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then15.i, %if.end13.i.if.end20.i_crit_edge
  %cond27.i = phi ptr [ @.str.23, %if.then15.i ], [ @.str.22, %if.end13.i.if.end20.i_crit_edge ]
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3
  %68 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cb.i.i, align 8
  %or22.i = or i32 %69, 131073
  store i32 %or22.i, ptr %cb.i.i, align 8
  %name.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %53, i32 0, i32 10
  %cond.i = select i1 %has_buffered.0.off065, ptr @.str.21, ptr @.str.22
  %addr.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 1
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.20, ptr noundef %name.i, ptr noundef nonnull %cond.i, ptr noundef nonnull %cond27.i, ptr noundef %addr.i) #6
  tail call fastcc void @ieee80211_tx_skb(ptr noundef %53, ptr noundef nonnull %call.i) #6
  br label %cleanup

if.else:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @mps_frame_deliver(ptr noundef %sta, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end20.i, %if.then31.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mps_qos_null_get(ptr noundef %sta) unnamed_addr #0 align 64 {
entry:
  %fc = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sdata1 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 6
  %0 = ptrtoint ptr %sdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdata1, align 4
  %local2 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %local2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %local2, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %fc) #6
  %extra_tx_headroom = getelementptr inbounds %struct.ieee80211_hw, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %extra_tx_headroom to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %extra_tx_headroom, align 4
  %add3 = add i32 %5, 32
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add3, i32 noundef 2592) #6
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %extra_tx_headroom to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %extra_tx_headroom, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %7
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %11, i32 %7
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call6 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 30) #6
  %12 = ptrtoint ptr %fc to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -14336, ptr %fc, align 2
  %addr = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 1
  %addr8 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 59, i32 2
  %call10 = call i32 @ieee80211_fill_mesh_addresses(ptr noundef %call6, ptr noundef nonnull %fc, ptr noundef %addr, ptr noundef %addr8) #6
  %13 = ptrtoint ptr %fc to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %fc, align 2
  %15 = ptrtoint ptr %call6 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %call6, align 2
  %duration_id = getelementptr inbounds %struct.ieee80211_hdr, ptr %call6, i32 0, i32 1
  %16 = ptrtoint ptr %duration_id to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %duration_id, align 2
  %seq_ctrl = getelementptr inbounds %struct.ieee80211_hdr, ptr %call6, i32 0, i32 5
  %17 = ptrtoint ptr %seq_ctrl to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %seq_ctrl, align 2
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %call6, i32 0, i32 2
  %18 = call ptr @memcpy(ptr %addr1, ptr %addr, i32 6)
  %call.i = call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 2) #6
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 0, ptr %call.i, align 1
  call void @ieee80211_mps_set_frame_flags(ptr noundef %1, ptr noundef %sta, ptr noundef %call6)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fc) #6
  ret ptr %call.i.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ieee80211_tx_skb(ptr noundef %sdata, ptr noundef %skb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = tail call i32 @llvm.read_register.i32(metadata !47) #6
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !57
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #6
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %chanctx_conf1.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 9
  %4 = ptrtoint ptr %chanctx_conf1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %chanctx_conf1.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end8.i_crit_edge

rcu_read_lock.exit.i.do.end8.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end8.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end8.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.do.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end8.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b1.i = load i1, ptr @ieee80211_tx_skb_tid.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true5.i.do.end8.i_crit_edge, label %if.then.i

land.lhs.true5.i.do.end8.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end8.i

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @ieee80211_tx_skb_tid.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 2199, ptr noundef nonnull @.str.13) #6
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then.i, %land.lhs.true5.i.do.end8.i_crit_edge, %land.lhs.true.i.do.end8.i_crit_edge, %rcu_read_lock.exit.i.do.end8.i_crit_edge
  %tobool10.not.i = icmp eq ptr %5, null
  br i1 %tobool10.not.i, label %do.end23.i, label %if.end39.i, !prof !59

do.end23.i:                                       ; preds = %do.end8.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 2200, i32 noundef 9, ptr noundef null) #6
  %call.i1 = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i1, label %do.end23.i.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i3

do.end23.i.rcu_read_unlock.exit_crit_edge:        ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true.i3:                                 ; preds = %do.end23.i
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i2 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i2, label %land.lhs.true.i3.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i3.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i3
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i3
  %.b4.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, label %if.then.i4

land.lhs.true2.i.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

if.then.i4:                                       ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #6
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i4, %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i3.rcu_read_unlock.exit_crit_edge, %do.end23.i.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !58
  %6 = tail call i32 @llvm.read_register.i32(metadata !47) #6
  %and.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #6
  br label %ieee80211_tx_skb_tid.exit

if.end39.i:                                       ; preds = %do.end8.i
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  tail call void @__ieee80211_tx_skb_tid_band(ptr noundef %sdata, ptr noundef %skb, i32 noundef 7, i32 noundef %13) #6
  %call.i2.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i2.i, label %if.end39.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i5.i

if.end39.i.rcu_read_unlock.exit.i_crit_edge:      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit.i

land.lhs.true.i5.i:                               ; preds = %if.end39.i
  %call1.i3.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3.i)
  %tobool.not.i4.i = icmp eq i32 %call1.i3.i, 0
  br i1 %tobool.not.i4.i, label %land.lhs.true.i5.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i7.i

land.lhs.true.i5.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i7.i:                              ; preds = %land.lhs.true.i5.i
  %.b4.i6.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6.i, label %land.lhs.true2.i7.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i8.i

land.lhs.true2.i7.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit.i

if.then.i8.i:                                     ; preds = %land.lhs.true2.i7.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #6
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i8.i, %land.lhs.true2.i7.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i5.i.rcu_read_unlock.exit.i_crit_edge, %if.end39.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !58
  %14 = tail call i32 @llvm.read_register.i32(metadata !47) #6
  %and.i.i.i.i.i9.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i9.i to ptr
  %preempt_count.i.i.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i10.i, align 4
  %sub.i.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i10.i, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  br label %ieee80211_tx_skb_tid.exit

ieee80211_tx_skb_tid.exit:                        ; preds = %rcu_read_unlock.exit.i, %rcu_read_unlock.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_fill_mesh_addresses(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ieee80211_tx_skb_tid_band(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_add_pending_skbs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sta_info_recalc_tim(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_set_qos_hdr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !16, !18, !19, !20, !22, !23, !25, !27, !28, !29, !31, !33, !35, !37, !39, !40, !42, !44, !45, !46}
!llvm.named.register.sp = !{!47}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../net/mac80211/mesh_ps.c", i32 91, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/mac80211/mesh_ps.c", i32 121, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/mac80211/mesh_ps.c", i32 124, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/mac80211/mesh_ps.c", i32 127, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/mac80211/mesh_ps.c", i32 159, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/mac80211/mesh_ps.c", i32 267, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/mac80211/mesh_ps.c", i32 587, i32 3}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!22 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/mac80211/mesh_ps.c", i32 59, i32 2}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../net/mac80211/ieee80211_i.h", i32 2199, i32 17}
!27 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/mac80211/sta_info.h", i32 704, i32 2}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/mac80211/mesh_ps.c", i32 302, i32 2}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/mac80211/mesh_ps.c", i32 323, i32 2}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/mac80211/mesh_ps.c", i32 492, i32 2}
!37 = !{ptr @skb_queue_head_init.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!39 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/mac80211/mesh_ps.c", i32 428, i32 2}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/mac80211/mesh_ps.c", i32 398, i32 2}
!44 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!47 = !{!"sp"}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{i64 2149412276}
!58 = !{i64 2149412542}
!59 = !{!"branch_weights", i32 1, i32 2000}
!60 = !{i64 2148194981, i64 2148195007, i64 2148195036, i64 2148195070, i64 2148195101, i64 2148195124}
