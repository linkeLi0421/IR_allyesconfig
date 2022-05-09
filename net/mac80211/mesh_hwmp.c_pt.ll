; ModuleID = '/llk/IR_all_yes/net/mac80211/mesh_hwmp.c_pt.bc'
source_filename = "../net/mac80211/mesh_hwmp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.154 }
%union.anon.154 = type { %struct.anon.160, [16 x i8] }
%struct.anon.160 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.anon.167 = type { i8, %union.anon.168 }
%union.anon.168 = type <{ %struct.anon.173, [17 x i8] }>
%struct.anon.173 = type { i8, i8, i16, i16, i16, [0 x i8] }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.ieee80211_tx_status = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ieee802_11_elems = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [8 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i8, i8 }
%struct.ieee80211_rann_ie = type <{ i8, i8, i8, [6 x i8], i32, i32, i32 }>
%struct.mesh_path = type { [6 x i8], [6 x i8], %struct.rhash_head, %struct.hlist_node, %struct.hlist_node, ptr, ptr, %struct.timer_list, %struct.sk_buff_head, %struct.callback_head, i32, i32, i8, i32, i32, i8, i32, %struct.spinlock, [6 x i8], i32, i32, i8, i8, i32 }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"net/mac80211/mesh_hwmp.c\00", [39 x i8] zeroinitializer }, align 32
@broadcast_addr = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\FF\FF\FF\FF\FF\FF", [26 x i8] zeroinitializer }, align 32
@mesh_nexthop_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: no gate was reachable\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Proactive mechanism not supported\0A\00", [57 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: received PREQ from %pM\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: PREQ is for us\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: replying to the PREQ\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: forwarding the PREQ from %pM\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: received PREP from %pM\0A\00", [36 x i8] zeroinitializer }, align 32
@next_hop_deref_protected.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s: received RANN from %pM via neighbour %pM (is_gate=%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: time to refresh root mpath %pM\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: sending PREQ to %pM\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: sending PREP to %pM\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: sending RANN from %pM\0A\00", [37 x i8] zeroinitializer }, align 32
@ieee80211_tx_skb_tid.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"net/mac80211/ieee80211_i.h\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: could not allocate PREQ node\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.mesh_queue_preq = private unnamed_addr constant [16 x i8] c"mesh_queue_preq\00", align 1
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: PREQ node queue full\0A\00", [38 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 5]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 3, i64 4]
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 348, i32 7 }
@___asan_gen_.27 = private unnamed_addr constant [15 x i8] c"broadcast_addr\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 98, i32 17 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 1248, i32 13 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 1288, i32 5 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 1324, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 695, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 723, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 583, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 586, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 641, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 662, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 706, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 690, i32 9 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 836, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 873, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 135, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 141, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 147, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant [30 x i8] c"../net/mac80211/ieee80211_i.h\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 2199, i32 17 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 983, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.88 = private constant [28 x i8] c"../net/mac80211/mesh_hwmp.c\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 992, i32 4 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @.str, ptr @broadcast_addr, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @broadcast_addr to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mesh_path_error_tx(ptr noundef %sdata, i8 noundef zeroext %ttl, ptr nocapture noundef readonly %target, i32 noundef %target_sn, i16 noundef zeroext %target_rcode, ptr nocapture noundef readonly %ra) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %next_perr = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 17
  %3 = ptrtoint ptr %next_perr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %next_perr, align 8
  %sub = sub i32 %2, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_headroom = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 41
  %5 = ptrtoint ptr %tx_headroom to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tx_headroom, align 8
  %encrypt_headroom = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 24
  %7 = ptrtoint ptr %encrypt_headroom to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %encrypt_headroom, align 8
  %add = add i32 %6, 61
  %add5 = add i32 %add, %8
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add5, i32 noundef 2592) #7
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %tx_headroom to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_headroom, align 8
  %11 = ptrtoint ptr %encrypt_headroom to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %encrypt_headroom, align 8
  %add10 = add i32 %12, %10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 %add10
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %15 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %16, i32 %add10
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call.i70 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 26) #7
  %17 = getelementptr inbounds i8, ptr %call.i70, i32 2
  %18 = call ptr @memset(ptr %17, i32 0, i32 24)
  %19 = ptrtoint ptr %call.i70 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 -12288, ptr %call.i70, align 2
  %da = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i70, i32 0, i32 2
  %20 = call ptr @memcpy(ptr %da, ptr %ra, i32 6)
  %sa = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i70, i32 0, i32 3
  %addr = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 2
  %21 = call ptr @memcpy(ptr %sa, ptr %addr, i32 6)
  %bssid = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i70, i32 0, i32 4
  %22 = call ptr @memcpy(ptr %bssid, ptr %addr, i32 6)
  %u18 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i70, i32 0, i32 6
  %23 = ptrtoint ptr %u18 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 13, ptr %u18, align 2
  %u20 = getelementptr inbounds %struct.anon.167, ptr %u18, i32 0, i32 1
  %24 = ptrtoint ptr %u20 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %u20, align 1
  %call22 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 17) #7
  %incdec.ptr = getelementptr i8, ptr %call22, i32 1
  %25 = ptrtoint ptr %call22 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -124, ptr %call22, align 1
  %incdec.ptr23 = getelementptr i8, ptr %call22, i32 2
  %26 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 15, ptr %incdec.ptr, align 1
  %incdec.ptr24 = getelementptr i8, ptr %call22, i32 3
  %27 = ptrtoint ptr %incdec.ptr23 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %ttl, ptr %incdec.ptr23, align 1
  %incdec.ptr25 = getelementptr i8, ptr %call22, i32 4
  %28 = ptrtoint ptr %incdec.ptr24 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %incdec.ptr24, align 1
  %29 = ptrtoint ptr %incdec.ptr25 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %incdec.ptr25, align 1
  %incdec.ptr26 = getelementptr i8, ptr %call22, i32 5
  %30 = call ptr @memcpy(ptr %incdec.ptr26, ptr %target, i32 6)
  %add.ptr = getelementptr i8, ptr %call22, i32 11
  %31 = tail call i32 @llvm.bswap.i32(i32 %target_sn) #7
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %31, ptr %add.ptr, align 1
  %add.ptr27 = getelementptr i8, ptr %call22, i32 15
  %33 = tail call i16 @llvm.bswap.i16(i16 %target_rcode) #7
  %34 = ptrtoint ptr %add.ptr27 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 %33, ptr %add.ptr27, align 1
  %35 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 18
  %37 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %36 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %38 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 21
  %39 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv.i.i, ptr %mac_header.i.i, align 2
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 20
  %40 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv.i.i, ptr %network_header.i.i, align 4
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 19
  %41 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv.i.i, ptr %transport_header.i.i, align 2
  %queue_mapping1.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 10
  %42 = ptrtoint ptr %queue_mapping1.i.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %queue_mapping1.i.i, align 8
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 6
  %43 = ptrtoint ptr %priority.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 7, ptr %priority.i, align 4
  %vif.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59
  %vif1.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 24
  %44 = ptrtoint ptr %vif1.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %vif.i, ptr %vif1.i, align 8
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 32
  %45 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags.i, align 8
  %or.i = or i32 %46, 64
  store i32 %or.i, ptr %flags.i, align 8
  tail call void @ieee80211_set_qos_hdr(ptr noundef %sdata, ptr noundef nonnull %call.i.i) #7
  tail call void @ieee80211_mps_set_frame_flags(ptr noundef %sdata, ptr noundef null, ptr noundef %36) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %dot11MeshHWMPperrMinInterval = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24, i32 14
  %48 = ptrtoint ptr %dot11MeshHWMPperrMinInterval to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %dot11MeshHWMPperrMinInterval, align 2
  %conv28 = zext i16 %49 to i32
  %mul = shl nuw nsw i32 %conv28, 10
  %call3.i = tail call i32 @__usecs_to_jiffies(i32 noundef %mul) #7
  %add30 = add i32 %call3.i, %47
  %50 = ptrtoint ptr %next_perr to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %add30, ptr %next_perr, align 8
  tail call void @ieee80211_add_pending_skb(ptr noundef %1, ptr noundef nonnull %call.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -11, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_add_pending_skb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211s_update_metric(ptr nocapture noundef readnone %local, ptr noundef %sta, ptr nocapture noundef readonly %st) local_unnamed_addr #0 align 64 {
entry:
  %rinfo = alloca %struct.rate_info, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.ieee80211_tx_status, ptr %st, i32 0, i32 1
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %rinfo) #7
  %2 = call ptr @memset(ptr %rinfo, i32 255, i32 10)
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %1, align 8
  %and = lshr i32 %4, 9
  %and.lobit = and i32 %and, 1
  %5 = xor i32 %and.lobit, 1
  %mesh = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 17
  %6 = ptrtoint ptr %mesh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mesh, align 8
  %fail_avg = getelementptr inbounds %struct.mesh_sta, ptr %7, i32 0, i32 18
  %8 = ptrtoint ptr %fail_avg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %fail_avg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  %sub.i = mul i32 %9, 7
  %shl19.i = mul nuw nsw i32 %5, 104857600
  %add.i = add i32 %shl19.i, %sub.i
  %shr.i = lshr i32 %add.i, 3
  %cond.i = select i1 %tobool.not.i, i32 %shl19.i, i32 %shr.i
  %10 = ptrtoint ptr %fail_avg to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 %cond.i, ptr %fail_avg, align 4
  %11 = ptrtoint ptr %mesh to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mesh, align 8
  %fail_avg2 = getelementptr inbounds %struct.mesh_sta, ptr %12, i32 0, i32 18
  %13 = ptrtoint ptr %fail_avg2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fail_avg2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100663295, i32 %14)
  %cmp = icmp ugt i32 %14, 100663295
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mesh_plink_broken(ptr noundef %sta) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %last_rate = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 36, i32 2
  call void @sta_set_rate_info_tx(ptr noundef %sta, ptr noundef %last_rate, ptr noundef nonnull %rinfo) #7
  %15 = ptrtoint ptr %mesh to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mesh, align 8
  %tx_rate_avg = getelementptr inbounds %struct.mesh_sta, ptr %16, i32 0, i32 19
  %call4 = call i32 @cfg80211_calculate_bitrate(ptr noundef nonnull %rinfo) #7
  %17 = ptrtoint ptr %tx_rate_avg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %tx_rate_avg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i11 = icmp eq i32 %18, 0
  %sub.i12 = mul i32 %18, 15
  %shl19.i13 = shl i32 %call4, 8
  %add.i14 = add i32 %sub.i12, %shl19.i13
  %shr.i15 = lshr i32 %add.i14, 4
  %cond.i16 = select i1 %tobool.not.i11, i32 %shl19.i13, i32 %shr.i15
  %19 = ptrtoint ptr %tx_rate_avg to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 %cond.i16, ptr %tx_rate_avg, align 4
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %rinfo) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mesh_plink_broken(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sta_set_rate_info_tx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_calculate_bitrate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @airtime_link_metric_get(ptr nocapture readnone %local, ptr noundef %sta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mesh = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 17
  %0 = ptrtoint ptr %mesh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mesh, align 8
  %fail_avg1 = getelementptr inbounds %struct.mesh_sta, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %fail_avg1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fail_avg1, align 4
  %plink_state = getelementptr inbounds %struct.mesh_sta, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %plink_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %plink_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp.not = icmp eq i32 %5, 4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @sta_get_expected_throughput(ptr noundef %sta) #7
  %sub = add i32 %call3, 99
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %sub)
  %6 = icmp ult i32 %sub, 100
  br i1 %6, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %div = udiv i32 %sub, 100
  br label %if.end37

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 100663295, i32 %3)
  %cmp5 = icmp ugt i32 %3, 100663295
  br i1 %cmp5, label %if.else.cleanup_crit_edge, label %if.end7

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.else
  %7 = ptrtoint ptr %mesh to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mesh, align 8
  %tx_rate_avg = getelementptr inbounds %struct.mesh_sta, ptr %8, i32 0, i32 19
  %9 = ptrtoint ptr %tx_rate_avg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_rate_avg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %10)
  %tobool10.not = icmp ult i32 %10, 256
  br i1 %tobool10.not, label %do.end, label %if.end35, !prof !60

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 348, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end35:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i60 = lshr i32 %10, 8
  %11 = lshr i32 %3, 12
  %12 = trunc i32 %11 to i16
  %div36.lhs.trunc = and i16 %12, -256
  %div3661 = udiv i16 %div36.lhs.trunc, 100
  %div36.zext = zext i16 %div3661 to i32
  %phi.bo = sub nuw nsw i32 256, %div36.zext
  br label %if.end37

if.end37:                                         ; preds = %if.end35, %if.then4
  %rate.0 = phi i32 [ %div, %if.then4 ], [ %shr.i60, %if.end35 ]
  %err.0 = phi i32 [ 256, %if.then4 ], [ %phi.bo, %if.end35 ]
  %div3862 = udiv i32 20971520, %rate.0
  %add39 = add nuw nsw i32 %div3862, 256
  %div4163 = udiv i32 65536, %err.0
  %conv = zext i32 %add39 to i64
  %conv42 = zext i32 %div4163 to i64
  %mul43 = mul nuw nsw i64 %conv, %conv42
  %shr = lshr i64 %mul43, 16
  %conv44 = trunc i64 %shr to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %do.end, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv44, %if.end37 ], [ -1, %do.end ], [ -1, %entry.cleanup_crit_edge ], [ -1, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sta_get_expected_throughput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mesh_rx_path_sel_frame(ptr noundef %sdata, ptr noundef %mgmt, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %len)
  %cmp = icmp ult i32 %len, 26
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !61
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %sa = getelementptr inbounds %struct.ieee80211_mgmt, ptr %mgmt, i32 0, i32 3
  %call = tail call ptr @sta_info_get(ptr noundef %sdata, ptr noundef %sa) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %rcu_read_lock.exit.if.then2_crit_edge, label %lor.lhs.false

rcu_read_lock.exit.if.then2_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2

lor.lhs.false:                                    ; preds = %rcu_read_lock.exit
  %mesh = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 17
  %4 = ptrtoint ptr %mesh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mesh, align 8
  %plink_state = getelementptr inbounds %struct.mesh_sta, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %plink_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %plink_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp1.not = icmp eq i32 %7, 4
  br i1 %cmp1.not, label %if.end3, label %lor.lhs.false.if.then2_crit_edge

lor.lhs.false.if.then2_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2

if.then2:                                         ; preds = %lor.lhs.false.if.then2_crit_edge, %rcu_read_lock.exit.if.then2_crit_edge
  %call.i96 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i96, label %if.then2.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i99

if.then2.rcu_read_unlock.exit_crit_edge:          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i99:                                ; preds = %if.then2
  %call1.i97 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i97)
  %tobool.not.i98 = icmp eq i32 %call1.i97, 0
  br i1 %tobool.not.i98, label %land.lhs.true.i99.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i101

land.lhs.true.i99.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i99
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i101:                              ; preds = %land.lhs.true.i99
  %.b4.i100 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i100, label %land.lhs.true2.i101.rcu_read_unlock.exit_crit_edge, label %if.then.i102

land.lhs.true2.i101.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i101
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i102:                                     ; preds = %land.lhs.true2.i101
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i102, %land.lhs.true2.i101.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i99.rcu_read_unlock.exit_crit_edge, %if.then2.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !62
  %8 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i.i.i.i.i103 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i103 to ptr
  %preempt_count.i.i.i.i104 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i104 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i104, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i104, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %cleanup

if.end3:                                          ; preds = %lor.lhs.false
  %call.i105 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i105, label %if.end3.rcu_read_unlock.exit115_crit_edge, label %land.lhs.true.i108

if.end3.rcu_read_unlock.exit115_crit_edge:        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit115

land.lhs.true.i108:                               ; preds = %if.end3
  %call1.i106 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i106)
  %tobool.not.i107 = icmp eq i32 %call1.i106, 0
  br i1 %tobool.not.i107, label %land.lhs.true.i108.rcu_read_unlock.exit115_crit_edge, label %land.lhs.true2.i110

land.lhs.true.i108.rcu_read_unlock.exit115_crit_edge: ; preds = %land.lhs.true.i108
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit115

land.lhs.true2.i110:                              ; preds = %land.lhs.true.i108
  %.b4.i109 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i109, label %land.lhs.true2.i110.rcu_read_unlock.exit115_crit_edge, label %if.then.i111

land.lhs.true2.i110.rcu_read_unlock.exit115_crit_edge: ; preds = %land.lhs.true2.i110
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit115

if.then.i111:                                     ; preds = %land.lhs.true2.i110
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #7
  br label %rcu_read_unlock.exit115

rcu_read_unlock.exit115:                          ; preds = %if.then.i111, %land.lhs.true2.i110.rcu_read_unlock.exit115_crit_edge, %land.lhs.true.i108.rcu_read_unlock.exit115_crit_edge, %if.end3.rcu_read_unlock.exit115_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !62
  %12 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i.i.i.i.i112 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i112 to ptr
  %preempt_count.i.i.i.i113 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i113 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i113, align 4
  %sub.i.i.i114 = add i32 %15, -1
  store volatile i32 %sub.i.i.i114, ptr %preempt_count.i.i.i.i113, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  %variable = getelementptr inbounds %struct.ieee80211_mgmt, ptr %mgmt, i32 0, i32 6, i32 0, i32 1
  %sub = add i32 %len, -26
  %bssid = getelementptr inbounds %struct.ieee80211_mgmt, ptr %mgmt, i32 0, i32 4
  %call.i116 = tail call ptr @ieee802_11_parse_elems_crc(ptr noundef %variable, i32 noundef %sub, i1 noundef zeroext false, i64 noundef 0, i32 noundef 0, ptr noundef %bssid, ptr noundef null) #7
  %tobool12.not = icmp eq ptr %call.i116, null
  br i1 %tobool12.not, label %rcu_read_unlock.exit115.cleanup_crit_edge, label %if.end14

rcu_read_unlock.exit115.cleanup_crit_edge:        ; preds = %rcu_read_unlock.exit115
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %rcu_read_unlock.exit115
  %preq = getelementptr inbounds %struct.ieee802_11_elems, ptr %call.i116, i32 0, i32 31
  %16 = ptrtoint ptr %preq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %preq, align 4
  %tobool15.not = icmp eq ptr %17, null
  br i1 %tobool15.not, label %if.end14.if.end27_crit_edge, label %if.then16

if.end14.if.end27_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then16:                                        ; preds = %if.end14
  %preq_len = getelementptr inbounds %struct.ieee802_11_elems, ptr %call.i116, i32 0, i32 69
  %18 = ptrtoint ptr %preq_len to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %preq_len, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 37, i8 %19)
  %cmp17.not = icmp eq i8 %19, 37
  br i1 %cmp17.not, label %if.end20, label %if.then16.free_crit_edge

if.then16.free_crit_edge:                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %free

if.end20:                                         ; preds = %if.then16
  %call22 = tail call fastcc i32 @hwmp_route_info_get(ptr noundef %sdata, ptr noundef %mgmt, ptr noundef nonnull %17, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end20.if.end27_crit_edge, label %if.then24

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %preq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %preq, align 4
  tail call fastcc void @hwmp_preq_frame_process(ptr noundef %sdata, ptr noundef %mgmt, ptr noundef %21, i32 noundef %call22)
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end20.if.end27_crit_edge, %if.end14.if.end27_crit_edge
  %prep = getelementptr inbounds %struct.ieee802_11_elems, ptr %call.i116, i32 0, i32 32
  %22 = ptrtoint ptr %prep to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prep, align 4
  %tobool28.not = icmp eq ptr %23, null
  br i1 %tobool28.not, label %if.end27.if.end41_crit_edge, label %if.then29

if.end27.if.end41_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then29:                                        ; preds = %if.end27
  %prep_len = getelementptr inbounds %struct.ieee802_11_elems, ptr %call.i116, i32 0, i32 70
  %24 = ptrtoint ptr %prep_len to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %prep_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %25)
  %cmp31.not = icmp eq i8 %25, 31
  br i1 %cmp31.not, label %if.end34, label %if.then29.free_crit_edge

if.then29.free_crit_edge:                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %free

if.end34:                                         ; preds = %if.then29
  %call36 = tail call fastcc i32 @hwmp_route_info_get(ptr noundef %sdata, ptr noundef %mgmt, ptr noundef nonnull %23, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end34.if.end41_crit_edge, label %if.then38

if.end34.if.end41_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %prep to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prep, align 4
  tail call fastcc void @hwmp_prep_frame_process(ptr noundef %sdata, ptr noundef %27, i32 noundef %call36)
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.end34.if.end41_crit_edge, %if.end27.if.end41_crit_edge
  %perr = getelementptr inbounds %struct.ieee802_11_elems, ptr %call.i116, i32 0, i32 33
  %28 = ptrtoint ptr %perr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %perr, align 4
  %tobool42.not = icmp eq ptr %29, null
  br i1 %tobool42.not, label %if.end41.if.end50_crit_edge, label %if.then43

if.end41.if.end50_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then43:                                        ; preds = %if.end41
  %perr_len = getelementptr inbounds %struct.ieee802_11_elems, ptr %call.i116, i32 0, i32 71
  %30 = ptrtoint ptr %perr_len to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %perr_len, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %31)
  %cmp45.not = icmp eq i8 %31, 15
  br i1 %cmp45.not, label %if.end48, label %if.then43.free_crit_edge

if.then43.free_crit_edge:                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  br label %free

if.end48:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @hwmp_perr_frame_process(ptr noundef %sdata, ptr noundef %mgmt, ptr noundef nonnull %29)
  br label %if.end50

if.end50:                                         ; preds = %if.end48, %if.end41.if.end50_crit_edge
  %rann = getelementptr inbounds %struct.ieee802_11_elems, ptr %call.i116, i32 0, i32 34
  %32 = ptrtoint ptr %rann to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rann, align 4
  %tobool51.not = icmp eq ptr %33, null
  br i1 %tobool51.not, label %if.end50.free_crit_edge, label %if.then52

if.end50.free_crit_edge:                          ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %free

if.then52:                                        ; preds = %if.end50
  %rann_ttl.i = getelementptr inbounds %struct.ieee80211_rann_ie, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %rann_ttl.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %rann_ttl.i, align 1
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %33, align 1
  %38 = and i8 %37, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i117 = icmp eq i8 %38, 0
  %rann_addr.i = getelementptr inbounds %struct.ieee80211_rann_ie, ptr %33, i32 0, i32 3
  %rann_seq.i = getelementptr inbounds %struct.ieee80211_rann_ie, ptr %33, i32 0, i32 4
  %39 = ptrtoint ptr %rann_seq.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %rann_seq.i, align 1
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #7
  %rann_interval.i = getelementptr inbounds %struct.ieee80211_rann_ie, ptr %33, i32 0, i32 5
  %42 = ptrtoint ptr %rann_interval.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %rann_interval.i, align 1
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #7
  %rann_hopcount.i = getelementptr inbounds %struct.ieee80211_rann_ie, ptr %33, i32 0, i32 1
  %45 = ptrtoint ptr %rann_hopcount.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %rann_hopcount.i, align 1
  %inc.i = add i8 %46, 1
  %rann_metric.i = getelementptr inbounds %struct.ieee80211_rann_ie, ptr %33, i32 0, i32 6
  %47 = ptrtoint ptr %rann_metric.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %rann_metric.i, align 1
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #7
  %addr.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 2
  %50 = ptrtoint ptr %rann_addr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rann_addr.i, align 4
  %52 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %addr.i, align 4
  %xor.i.i = xor i32 %53, %51
  %add.ptr.i.i = getelementptr %struct.ieee80211_rann_ie, ptr %33, i32 0, i32 3, i32 4
  %54 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 2, i32 4
  %56 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %57, %55
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.then52.free_crit_edge, label %if.end.i

if.then52.free_crit_edge:                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %free

if.end.i:                                         ; preds = %if.then52
  %name.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  %58 = zext i8 %38 to i32
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.13, ptr noundef %name.i, ptr noundef %rann_addr.i, ptr noundef %sa, i32 noundef %58) #7
  %59 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i.i.i.i.i.i = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %62, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !61
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i.i, label %if.end.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #7
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.i.rcu_read_lock.exit.i_crit_edge
  %call10.i = tail call ptr @sta_info_get(ptr noundef %sdata, ptr noundef %sa) #7
  %tobool11.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool11.not.i, label %if.then12.i, label %if.end13.i

if.then12.i:                                      ; preds = %rcu_read_lock.exit.i
  %call.i155.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i155.i, label %if.then12.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i158.i

if.then12.i.rcu_read_unlock.exit.i_crit_edge:     ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit.i

land.lhs.true.i158.i:                             ; preds = %if.then12.i
  %call1.i156.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i156.i)
  %tobool.not.i157.i = icmp eq i32 %call1.i156.i, 0
  br i1 %tobool.not.i157.i, label %land.lhs.true.i158.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i160.i

land.lhs.true.i158.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i158.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i160.i:                            ; preds = %land.lhs.true.i158.i
  %.b4.i159.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i159.i, label %land.lhs.true2.i160.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i161.i

land.lhs.true2.i160.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i160.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit.i

if.then.i161.i:                                   ; preds = %land.lhs.true2.i160.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #7
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i161.i, %land.lhs.true2.i160.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i158.i.rcu_read_unlock.exit.i_crit_edge, %if.then12.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !62
  %63 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i.i.i.i.i162.i = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i.i.i.i162.i to ptr
  %preempt_count.i.i.i.i163.i = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %preempt_count.i.i.i.i163.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %preempt_count.i.i.i.i163.i, align 4
  %sub.i.i.i.i = add i32 %66, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i163.i, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %free

if.end13.i:                                       ; preds = %rcu_read_lock.exit.i
  %mesh.i.i = getelementptr inbounds %struct.sta_info, ptr %call10.i, i32 0, i32 17
  %67 = ptrtoint ptr %mesh.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mesh.i.i, align 8
  %fail_avg1.i.i = getelementptr inbounds %struct.mesh_sta, ptr %68, i32 0, i32 18
  %69 = ptrtoint ptr %fail_avg1.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %fail_avg1.i.i, align 4
  %plink_state.i.i = getelementptr inbounds %struct.mesh_sta, ptr %68, i32 0, i32 13
  %71 = ptrtoint ptr %plink_state.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %plink_state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %72)
  %cmp.not.i.i = icmp eq i32 %72, 4
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.end13.i.airtime_link_metric_get.exit.i_crit_edge

if.end13.i.airtime_link_metric_get.exit.i_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %airtime_link_metric_get.exit.i

if.end.i.i:                                       ; preds = %if.end13.i
  %call3.i.i = tail call i32 @sta_get_expected_throughput(ptr noundef nonnull %call10.i) #7
  %sub.i.i = add i32 %call3.i.i, 99
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %sub.i.i)
  %73 = icmp ult i32 %sub.i.i, 100
  br i1 %73, label %if.else.i164.i, label %if.then4.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %div.i.i = udiv i32 %sub.i.i, 100
  br label %if.end37.i.i

if.else.i164.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100663295, i32 %70)
  %cmp5.i.i = icmp ugt i32 %70, 100663295
  br i1 %cmp5.i.i, label %if.else.i164.i.airtime_link_metric_get.exit.i_crit_edge, label %if.end7.i.i

if.else.i164.i.airtime_link_metric_get.exit.i_crit_edge: ; preds = %if.else.i164.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %airtime_link_metric_get.exit.i

if.end7.i.i:                                      ; preds = %if.else.i164.i
  %74 = ptrtoint ptr %mesh.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mesh.i.i, align 8
  %tx_rate_avg.i.i = getelementptr inbounds %struct.mesh_sta, ptr %75, i32 0, i32 19
  %76 = ptrtoint ptr %tx_rate_avg.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %tx_rate_avg.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %77)
  %tobool10.not.i.i = icmp ult i32 %77, 256
  br i1 %tobool10.not.i.i, label %do.end.i.i, label %if.end35.i.i, !prof !60

do.end.i.i:                                       ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 348, i32 noundef 9, ptr noundef null) #7
  br label %airtime_link_metric_get.exit.i

if.end35.i.i:                                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i60.i.i = lshr i32 %77, 8
  %78 = lshr i32 %70, 12
  %79 = trunc i32 %78 to i16
  %div36.lhs.trunc.i.i = and i16 %79, -256
  %div3661.i.i = udiv i16 %div36.lhs.trunc.i.i, 100
  %div36.zext.i.i = zext i16 %div3661.i.i to i32
  %phi.bo.i.i = sub nuw nsw i32 256, %div36.zext.i.i
  br label %if.end37.i.i

if.end37.i.i:                                     ; preds = %if.end35.i.i, %if.then4.i.i
  %rate.0.i.i = phi i32 [ %div.i.i, %if.then4.i.i ], [ %shr.i60.i.i, %if.end35.i.i ]
  %err.0.i.i = phi i32 [ 256, %if.then4.i.i ], [ %phi.bo.i.i, %if.end35.i.i ]
  %div3862.i.i = udiv i32 20971520, %rate.0.i.i
  %add39.i.i = add nuw nsw i32 %div3862.i.i, 256
  %div4163.i.i = udiv i32 65536, %err.0.i.i
  %conv.i.i = zext i32 %add39.i.i to i64
  %conv42.i.i = zext i32 %div4163.i.i to i64
  %mul43.i.i = mul nuw nsw i64 %conv.i.i, %conv42.i.i
  %shr.i.i = lshr i64 %mul43.i.i, 16
  %conv44.i.i = trunc i64 %shr.i.i to i32
  br label %airtime_link_metric_get.exit.i

airtime_link_metric_get.exit.i:                   ; preds = %if.end37.i.i, %do.end.i.i, %if.else.i164.i.airtime_link_metric_get.exit.i_crit_edge, %if.end13.i.airtime_link_metric_get.exit.i_crit_edge
  %retval.0.i165.i = phi i32 [ %conv44.i.i, %if.end37.i.i ], [ -1, %do.end.i.i ], [ -1, %if.end13.i.airtime_link_metric_get.exit.i_crit_edge ], [ -1, %if.else.i164.i.airtime_link_metric_get.exit.i_crit_edge ]
  %80 = tail call i32 @llvm.uadd.sat.i32(i32 %49, i32 %retval.0.i165.i) #7
  %call18.i = tail call ptr @mesh_path_lookup(ptr noundef %sdata, ptr noundef %rann_addr.i) #7
  %tobool19.not.i = icmp eq ptr %call18.i, null
  br i1 %tobool19.not.i, label %if.then20.i, label %airtime_link_metric_get.exit.i.if.end27.i_crit_edge

airtime_link_metric_get.exit.i.if.end27.i_crit_edge: ; preds = %airtime_link_metric_get.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i

if.then20.i:                                      ; preds = %airtime_link_metric_get.exit.i
  %call21.i = tail call ptr @mesh_path_add(ptr noundef %sdata, ptr noundef %rann_addr.i) #7
  %cmp.i166.i = icmp ugt ptr %call21.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i166.i, label %if.then23.i, label %if.then20.i.if.end27.i_crit_edge

if.then20.i.if.end27.i_crit_edge:                 ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i

if.then23.i:                                      ; preds = %if.then20.i
  %call.i167.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i167.i, label %if.then23.i.rcu_read_unlock.exit178.i_crit_edge, label %land.lhs.true.i170.i

if.then23.i.rcu_read_unlock.exit178.i_crit_edge:  ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit178.i

land.lhs.true.i170.i:                             ; preds = %if.then23.i
  %call1.i168.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i168.i)
  %tobool.not.i169.i = icmp eq i32 %call1.i168.i, 0
  br i1 %tobool.not.i169.i, label %land.lhs.true.i170.i.rcu_read_unlock.exit178.i_crit_edge, label %land.lhs.true2.i172.i

land.lhs.true.i170.i.rcu_read_unlock.exit178.i_crit_edge: ; preds = %land.lhs.true.i170.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit178.i

land.lhs.true2.i172.i:                            ; preds = %land.lhs.true.i170.i
  %.b4.i171.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i171.i, label %land.lhs.true2.i172.i.rcu_read_unlock.exit178.i_crit_edge, label %if.then.i173.i

land.lhs.true2.i172.i.rcu_read_unlock.exit178.i_crit_edge: ; preds = %land.lhs.true2.i172.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit178.i

if.then.i173.i:                                   ; preds = %land.lhs.true2.i172.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #7
  br label %rcu_read_unlock.exit178.i

rcu_read_unlock.exit178.i:                        ; preds = %if.then.i173.i, %land.lhs.true2.i172.i.rcu_read_unlock.exit178.i_crit_edge, %land.lhs.true.i170.i.rcu_read_unlock.exit178.i_crit_edge, %if.then23.i.rcu_read_unlock.exit178.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !62
  %81 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i.i.i.i.i174.i = and i32 %81, -16384
  %82 = inttoptr i32 %and.i.i.i.i.i174.i to ptr
  %preempt_count.i.i.i.i175.i = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %preempt_count.i.i.i.i175.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %preempt_count.i.i.i.i175.i, align 4
  %sub.i.i.i176.i = add i32 %84, -1
  store volatile i32 %sub.i.i.i176.i, ptr %preempt_count.i.i.i.i175.i, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  %dropped_frames_no_route.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 23, i32 4
  %85 = ptrtoint ptr %dropped_frames_no_route.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %dropped_frames_no_route.i, align 4
  %inc25.i = add i32 %86, 1
  store i32 %inc25.i, ptr %dropped_frames_no_route.i, align 4
  br label %free

if.end27.i:                                       ; preds = %if.then20.i.if.end27.i_crit_edge, %airtime_link_metric_get.exit.i.if.end27.i_crit_edge
  %mpath.0.i = phi ptr [ %call18.i, %airtime_link_metric_get.exit.i.if.end27.i_crit_edge ], [ %call21.i, %if.then20.i.if.end27.i_crit_edge ]
  %sn.i = getelementptr inbounds %struct.mesh_path, ptr %mpath.0.i, i32 0, i32 10
  %87 = ptrtoint ptr %sn.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %sn.i, align 4
  %sub.i = sub i32 %88, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp28.i = icmp slt i32 %sub.i, 0
  br i1 %cmp28.i, label %if.end27.i.if.end38.i_crit_edge, label %land.lhs.true.i118

if.end27.i.if.end38.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.i

land.lhs.true.i118:                               ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %41)
  %cmp31.i = icmp eq i32 %88, %41
  br i1 %cmp31.i, label %land.lhs.true33.i, label %land.lhs.true.i118.if.then37.i_crit_edge

land.lhs.true.i118.if.then37.i_crit_edge:         ; preds = %land.lhs.true.i118
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then37.i

land.lhs.true33.i:                                ; preds = %land.lhs.true.i118
  %rann_metric34.i = getelementptr inbounds %struct.mesh_path, ptr %mpath.0.i, i32 0, i32 19
  %89 = ptrtoint ptr %rann_metric34.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %rann_metric34.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %90)
  %cmp35.i = icmp ult i32 %80, %90
  br i1 %cmp35.i, label %land.lhs.true33.i.if.end38.i_crit_edge, label %land.lhs.true33.i.if.then37.i_crit_edge

land.lhs.true33.i.if.then37.i_crit_edge:          ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then37.i

land.lhs.true33.i.if.end38.i_crit_edge:           ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.i

if.then37.i:                                      ; preds = %land.lhs.true33.i.if.then37.i_crit_edge, %land.lhs.true.i118.if.then37.i_crit_edge
  %call.i179.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i179.i, label %if.then37.i.rcu_read_unlock.exit190.i_crit_edge, label %land.lhs.true.i182.i

if.then37.i.rcu_read_unlock.exit190.i_crit_edge:  ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit190.i

land.lhs.true.i182.i:                             ; preds = %if.then37.i
  %call1.i180.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i180.i)
  %tobool.not.i181.i = icmp eq i32 %call1.i180.i, 0
  br i1 %tobool.not.i181.i, label %land.lhs.true.i182.i.rcu_read_unlock.exit190.i_crit_edge, label %land.lhs.true2.i184.i

land.lhs.true.i182.i.rcu_read_unlock.exit190.i_crit_edge: ; preds = %land.lhs.true.i182.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit190.i

land.lhs.true2.i184.i:                            ; preds = %land.lhs.true.i182.i
  %.b4.i183.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i183.i, label %land.lhs.true2.i184.i.rcu_read_unlock.exit190.i_crit_edge, label %if.then.i185.i

land.lhs.true2.i184.i.rcu_read_unlock.exit190.i_crit_edge: ; preds = %land.lhs.true2.i184.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit190.i

if.then.i185.i:                                   ; preds = %land.lhs.true2.i184.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #7
  br label %rcu_read_unlock.exit190.i

rcu_read_unlock.exit190.i:                        ; preds = %if.then.i185.i, %land.lhs.true2.i184.i.rcu_read_unlock.exit190.i_crit_edge, %land.lhs.true.i182.i.rcu_read_unlock.exit190.i_crit_edge, %if.then37.i.rcu_read_unlock.exit190.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !62
  %91 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i.i.i.i.i186.i = and i32 %91, -16384
  %92 = inttoptr i32 %and.i.i.i.i.i186.i to ptr
  %preempt_count.i.i.i.i187.i = getelementptr inbounds %struct.thread_info, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %preempt_count.i.i.i.i187.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %preempt_count.i.i.i.i187.i, align 4
  %sub.i.i.i188.i = add i32 %94, -1
  store volatile i32 %sub.i.i.i188.i, ptr %preempt_count.i.i.i.i187.i, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %free

if.end38.i:                                       ; preds = %land.lhs.true33.i.if.end38.i_crit_edge, %if.end27.i.if.end38.i_crit_edge
  %flags39.i = getelementptr inbounds %struct.mesh_path, ptr %mpath.0.i, i32 0, i32 16
  %95 = ptrtoint ptr %flags39.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %flags39.i, align 4
  %and40.i = and i32 %96, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i)
  %tobool41.not.i = icmp eq i32 %and40.i, 0
  br i1 %tobool41.not.i, label %if.end38.i.land.lhs.true54.i_crit_edge, label %lor.lhs.false.i

if.end38.i.land.lhs.true54.i_crit_edge:           ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true54.i

lor.lhs.false.i:                                  ; preds = %if.end38.i
  %last_preq_to_root.i = getelementptr inbounds %struct.mesh_path, ptr %mpath.0.i, i32 0, i32 20
  %97 = ptrtoint ptr %last_preq_to_root.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %last_preq_to_root.i, align 4
  %dot11MeshHWMPconfirmationInterval.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24, i32 26
  %99 = ptrtoint ptr %dot11MeshHWMPconfirmationInterval.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %dot11MeshHWMPconfirmationInterval.i, align 2
  %conv43.i = zext i16 %100 to i32
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv43.i) #7
  %add45.i = add i32 %call2.i.i, %98
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %101 = load volatile i32, ptr @jiffies, align 128
  %sub46.i = sub i32 %add45.i, %101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub46.i)
  %cmp47.i = icmp slt i32 %sub46.i, 0
  br i1 %cmp47.i, label %lor.lhs.false.i.land.lhs.true54.i_crit_edge, label %lor.lhs.false49.i

lor.lhs.false.i.land.lhs.true54.i_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true54.i

lor.lhs.false49.i:                                ; preds = %lor.lhs.false.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %102 = load volatile i32, ptr @jiffies, align 128
  %103 = ptrtoint ptr %last_preq_to_root.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %last_preq_to_root.i, align 4
  %sub51.i = sub i32 %102, %104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub51.i)
  %cmp52.i = icmp slt i32 %sub51.i, 0
  br i1 %cmp52.i, label %lor.lhs.false49.i.land.lhs.true54.i_crit_edge, label %lor.lhs.false49.i.if.end66.i_crit_edge

lor.lhs.false49.i.if.end66.i_crit_edge:           ; preds = %lor.lhs.false49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66.i

lor.lhs.false49.i.land.lhs.true54.i_crit_edge:    ; preds = %lor.lhs.false49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true54.i

land.lhs.true54.i:                                ; preds = %lor.lhs.false49.i.land.lhs.true54.i_crit_edge, %lor.lhs.false.i.land.lhs.true54.i_crit_edge, %if.end38.i.land.lhs.true54.i_crit_edge
  %105 = ptrtoint ptr %flags39.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %flags39.i, align 4
  %and56.i = and i32 %106, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i)
  %tobool57.not.i = icmp ne i32 %and56.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp60.not.i = icmp eq i8 %35, 0
  %or.cond.i = select i1 %tobool57.not.i, i1 true, i1 %cmp60.not.i
  br i1 %or.cond.i, label %land.lhs.true54.i.if.end66.i_crit_edge, label %if.then62.i

land.lhs.true54.i.if.end66.i_crit_edge:           ; preds = %land.lhs.true54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66.i

if.then62.i:                                      ; preds = %land.lhs.true54.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.14, ptr noundef %name.i, ptr noundef %rann_addr.i) #7
  tail call fastcc void @mesh_queue_preq(ptr noundef %mpath.0.i, i8 noundef zeroext 3) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %107 = load volatile i32, ptr @jiffies, align 128
  %last_preq_to_root65.i = getelementptr inbounds %struct.mesh_path, ptr %mpath.0.i, i32 0, i32 20
  %108 = ptrtoint ptr %last_preq_to_root65.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %last_preq_to_root65.i, align 4
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.then62.i, %land.lhs.true54.i.if.end66.i_crit_edge, %lor.lhs.false49.i.if.end66.i_crit_edge
  %109 = ptrtoint ptr %sn.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %41, ptr %sn.i, align 4
  %rann_metric68.i = getelementptr inbounds %struct.mesh_path, ptr %mpath.0.i, i32 0, i32 19
  %110 = ptrtoint ptr %rann_metric68.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %80, ptr %rann_metric68.i, align 4
  %is_root.i = getelementptr inbounds %struct.mesh_path, ptr %mpath.0.i, i32 0, i32 21
  %111 = ptrtoint ptr %is_root.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 1, ptr %is_root.i, align 4
  %rann_snd_addr.i = getelementptr inbounds %struct.mesh_path, ptr %mpath.0.i, i32 0, i32 18
  %112 = call ptr @memcpy(ptr %rann_snd_addr.i, ptr %sa, i32 6)
  br i1 %tobool.not.i117, label %if.end66.i.if.end75.i_crit_edge, label %if.then73.i

if.end66.i.if.end75.i_crit_edge:                  ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75.i

if.then73.i:                                      ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #9
  %call74.i = tail call i32 @mesh_path_add_gate(ptr noundef %mpath.0.i) #7
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.then73.i, %if.end66.i.if.end75.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %35)
  %cmp77.i = icmp ult i8 %35, 2
  br i1 %cmp77.i, label %if.then79.i, label %if.end82.i

if.then79.i:                                      ; preds = %if.end75.i
  %dropped_frames_ttl.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 23, i32 3
  %113 = ptrtoint ptr %dropped_frames_ttl.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %dropped_frames_ttl.i, align 4
  %inc81.i = add i32 %114, 1
  store i32 %inc81.i, ptr %dropped_frames_ttl.i, align 4
  %call.i191.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i191.i, label %if.then79.i.rcu_read_unlock.exit202.i_crit_edge, label %land.lhs.true.i194.i

if.then79.i.rcu_read_unlock.exit202.i_crit_edge:  ; preds = %if.then79.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit202.i

land.lhs.true.i194.i:                             ; preds = %if.then79.i
  %call1.i192.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i192.i)
  %tobool.not.i193.i = icmp eq i32 %call1.i192.i, 0
  br i1 %tobool.not.i193.i, label %land.lhs.true.i194.i.rcu_read_unlock.exit202.i_crit_edge, label %land.lhs.true2.i196.i

land.lhs.true.i194.i.rcu_read_unlock.exit202.i_crit_edge: ; preds = %land.lhs.true.i194.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit202.i

land.lhs.true2.i196.i:                            ; preds = %land.lhs.true.i194.i
  %.b4.i195.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i195.i, label %land.lhs.true2.i196.i.rcu_read_unlock.exit202.i_crit_edge, label %if.then.i197.i

land.lhs.true2.i196.i.rcu_read_unlock.exit202.i_crit_edge: ; preds = %land.lhs.true2.i196.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit202.i

if.then.i197.i:                                   ; preds = %land.lhs.true2.i196.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #7
  br label %rcu_read_unlock.exit202.i

rcu_read_unlock.exit202.i:                        ; preds = %if.then.i197.i, %land.lhs.true2.i196.i.rcu_read_unlock.exit202.i_crit_edge, %land.lhs.true.i194.i.rcu_read_unlock.exit202.i_crit_edge, %if.then79.i.rcu_read_unlock.exit202.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !62
  %115 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i.i.i.i.i198.i = and i32 %115, -16384
  %116 = inttoptr i32 %and.i.i.i.i.i198.i to ptr
  %preempt_count.i.i.i.i199.i = getelementptr inbounds %struct.thread_info, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %preempt_count.i.i.i.i199.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile i32, ptr %preempt_count.i.i.i.i199.i, align 4
  %sub.i.i.i200.i = add i32 %118, -1
  store volatile i32 %sub.i.i.i200.i, ptr %preempt_count.i.i.i.i199.i, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %free

if.end82.i:                                       ; preds = %if.end75.i
  %dot11MeshForwarding.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24, i32 21
  %119 = ptrtoint ptr %dot11MeshForwarding.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %dot11MeshForwarding.i, align 1, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool84.not.i = icmp eq i8 %120, 0
  br i1 %tobool84.not.i, label %if.end82.i.if.end87.i_crit_edge, label %if.then85.i

if.end82.i.if.end87.i_crit_edge:                  ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end87.i

if.then85.i:                                      ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #9
  %dec.i = add i8 %35, -1
  tail call fastcc void @mesh_path_sel_frame_tx(i32 noundef 3, i8 noundef zeroext %37, ptr noundef %rann_addr.i, i32 noundef %41, i8 noundef zeroext 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull @broadcast_addr, i8 noundef zeroext %inc.i, i8 noundef zeroext %dec.i, i32 noundef %44, i32 noundef %80, i32 noundef 0, ptr noundef %sdata) #7
  br label %if.end87.i

if.end87.i:                                       ; preds = %if.then85.i, %if.end82.i.if.end87.i_crit_edge
  %call.i203.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i203.i, label %if.end87.i.rcu_read_unlock.exit214.i_crit_edge, label %land.lhs.true.i206.i

if.end87.i.rcu_read_unlock.exit214.i_crit_edge:   ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit214.i

land.lhs.true.i206.i:                             ; preds = %if.end87.i
  %call1.i204.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i204.i)
  %tobool.not.i205.i = icmp eq i32 %call1.i204.i, 0
  br i1 %tobool.not.i205.i, label %land.lhs.true.i206.i.rcu_read_unlock.exit214.i_crit_edge, label %land.lhs.true2.i208.i

land.lhs.true.i206.i.rcu_read_unlock.exit214.i_crit_edge: ; preds = %land.lhs.true.i206.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit214.i

land.lhs.true2.i208.i:                            ; preds = %land.lhs.true.i206.i
  %.b4.i207.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i207.i, label %land.lhs.true2.i208.i.rcu_read_unlock.exit214.i_crit_edge, label %if.then.i209.i

land.lhs.true2.i208.i.rcu_read_unlock.exit214.i_crit_edge: ; preds = %land.lhs.true2.i208.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit214.i

if.then.i209.i:                                   ; preds = %land.lhs.true2.i208.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #7
  br label %rcu_read_unlock.exit214.i

rcu_read_unlock.exit214.i:                        ; preds = %if.then.i209.i, %land.lhs.true2.i208.i.rcu_read_unlock.exit214.i_crit_edge, %land.lhs.true.i206.i.rcu_read_unlock.exit214.i_crit_edge, %if.end87.i.rcu_read_unlock.exit214.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !62
  %121 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i.i.i.i.i210.i = and i32 %121, -16384
  %122 = inttoptr i32 %and.i.i.i.i.i210.i to ptr
  %preempt_count.i.i.i.i211.i = getelementptr inbounds %struct.thread_info, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %preempt_count.i.i.i.i211.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load volatile i32, ptr %preempt_count.i.i.i.i211.i, align 4
  %sub.i.i.i212.i = add i32 %124, -1
  store volatile i32 %sub.i.i.i212.i, ptr %preempt_count.i.i.i.i211.i, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %free

free:                                             ; preds = %rcu_read_unlock.exit214.i, %rcu_read_unlock.exit202.i, %rcu_read_unlock.exit190.i, %rcu_read_unlock.exit178.i, %rcu_read_unlock.exit.i, %if.then52.free_crit_edge, %if.end50.free_crit_edge, %if.then43.free_crit_edge, %if.then29.free_crit_edge, %if.then16.free_crit_edge
  tail call void @kfree(ptr noundef nonnull %call.i116) #7
  br label %cleanup

cleanup:                                          ; preds = %free, %rcu_read_unlock.exit115.cleanup_crit_edge, %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sta_info_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hwmp_route_info_get(ptr noundef %sdata, ptr noundef %mgmt, ptr noundef %hwmp_ie, i32 noundef %action) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !61
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %sa = getelementptr inbounds %struct.ieee80211_mgmt, ptr %mgmt, i32 0, i32 3
  %call = tail call ptr @sta_info_get(ptr noundef %sdata, ptr noundef %sa) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %rcu_read_lock.exit
  %call.i361 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i361, label %if.then.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i364

if.then.rcu_read_unlock.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i364:                               ; preds = %if.then
  %call1.i362 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i362)
  %tobool.not.i363 = icmp eq i32 %call1.i362, 0
  br i1 %tobool.not.i363, label %land.lhs.true.i364.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i366

land.lhs.true.i364.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i364
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i366:                              ; preds = %land.lhs.true.i364
  %.b4.i365 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i365, label %land.lhs.true2.i366.rcu_read_unlock.exit_crit_edge, label %if.then.i367

land.lhs.true2.i366.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i366
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i367:                                     ; preds = %land.lhs.true2.i366
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i367, %land.lhs.true2.i366.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i364.rcu_read_unlock.exit_crit_edge, %if.then.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !62
  %4 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i.i.i.i.i368 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i368 to ptr
  %preempt_count.i.i.i.i369 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i369 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i369, align 4
  %sub.i.i.i = add i32 %7, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i369, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %cleanup

if.end:                                           ; preds = %rcu_read_lock.exit
  %mesh.i = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 17
  %8 = ptrtoint ptr %mesh.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mesh.i, align 8
  %fail_avg1.i = getelementptr inbounds %struct.mesh_sta, ptr %9, i32 0, i32 18
  %10 = ptrtoint ptr %fail_avg1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fail_avg1.i, align 4
  %plink_state.i = getelementptr inbounds %struct.mesh_sta, ptr %9, i32 0, i32 13
  %12 = ptrtoint ptr %plink_state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %plink_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp.not.i = icmp eq i32 %13, 4
  br i1 %cmp.not.i, label %if.end.i371, label %if.end.airtime_link_metric_get.exit_crit_edge

if.end.airtime_link_metric_get.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %airtime_link_metric_get.exit

if.end.i371:                                      ; preds = %if.end
  %call3.i370 = tail call i32 @sta_get_expected_throughput(ptr noundef nonnull %call) #7
  %sub.i = add i32 %call3.i370, 99
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %sub.i)
  %14 = icmp ult i32 %sub.i, 100
  br i1 %14, label %if.else.i372, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i371
  call void @__sanitizer_cov_trace_pc() #9
  %div.i = udiv i32 %sub.i, 100
  br label %if.end37.i

if.else.i372:                                     ; preds = %if.end.i371
  call void @__sanitizer_cov_trace_const_cmp4(i32 100663295, i32 %11)
  %cmp5.i = icmp ugt i32 %11, 100663295
  br i1 %cmp5.i, label %if.else.i372.airtime_link_metric_get.exit_crit_edge, label %if.end7.i

if.else.i372.airtime_link_metric_get.exit_crit_edge: ; preds = %if.else.i372
  call void @__sanitizer_cov_trace_pc() #9
  br label %airtime_link_metric_get.exit

if.end7.i:                                        ; preds = %if.else.i372
  %15 = ptrtoint ptr %mesh.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mesh.i, align 8
  %tx_rate_avg.i = getelementptr inbounds %struct.mesh_sta, ptr %16, i32 0, i32 19
  %17 = ptrtoint ptr %tx_rate_avg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_rate_avg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %18)
  %tobool10.not.i = icmp ult i32 %18, 256
  br i1 %tobool10.not.i, label %do.end.i, label %if.end35.i, !prof !60

do.end.i:                                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 348, i32 noundef 9, ptr noundef null) #7
  br label %airtime_link_metric_get.exit

if.end35.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i60.i = lshr i32 %18, 8
  %19 = lshr i32 %11, 12
  %20 = trunc i32 %19 to i16
  %div36.lhs.trunc.i = and i16 %20, -256
  %div3661.i = udiv i16 %div36.lhs.trunc.i, 100
  %div36.zext.i = zext i16 %div3661.i to i32
  %phi.bo.i = sub nuw nsw i32 256, %div36.zext.i
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.end35.i, %if.then4.i
  %rate.0.i = phi i32 [ %div.i, %if.then4.i ], [ %shr.i60.i, %if.end35.i ]
  %err.0.i = phi i32 [ 256, %if.then4.i ], [ %phi.bo.i, %if.end35.i ]
  %div3862.i = udiv i32 20971520, %rate.0.i
  %add39.i = add nuw nsw i32 %div3862.i, 256
  %div4163.i = udiv i32 65536, %err.0.i
  %conv.i = zext i32 %add39.i to i64
  %conv42.i = zext i32 %div4163.i to i64
  %mul43.i = mul nuw nsw i64 %conv.i, %conv42.i
  %shr.i = lshr i64 %mul43.i, 16
  %conv44.i = trunc i64 %shr.i to i32
  br label %airtime_link_metric_get.exit

airtime_link_metric_get.exit:                     ; preds = %if.end37.i, %do.end.i, %if.else.i372.airtime_link_metric_get.exit_crit_edge, %if.end.airtime_link_metric_get.exit_crit_edge
  %retval.0.i373 = phi i32 [ %conv44.i, %if.end37.i ], [ -1, %do.end.i ], [ -1, %if.end.airtime_link_metric_get.exit_crit_edge ], [ -1, %if.else.i372.airtime_link_metric_get.exit_crit_edge ]
  %21 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %action, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb13
  ]

sw.bb:                                            ; preds = %airtime_link_metric_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %hwmp_ie, i32 7
  %add.ptr.i = getelementptr i8, ptr %hwmp_ie, i32 13
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %add.ptr.i, align 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #7
  %25 = ptrtoint ptr %hwmp_ie to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %hwmp_ie, align 1
  %27 = and i8 %26, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool4.not = icmp eq i8 %27, 0
  %spec.select.i = select i1 %tobool4.not, i32 17, i32 23
  %add.ptr.i374 = getelementptr i8, ptr %hwmp_ie, i32 %spec.select.i
  %28 = ptrtoint ptr %add.ptr.i374 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %add.ptr.i374, align 1
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #7
  %spec.select.i375 = select i1 %tobool4.not, i32 21, i32 27
  br label %sw.epilog

sw.bb13:                                          ; preds = %airtime_link_metric_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr14 = getelementptr i8, ptr %hwmp_ie, i32 3
  %add.ptr.i377 = getelementptr i8, ptr %hwmp_ie, i32 9
  %31 = ptrtoint ptr %add.ptr.i377 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %add.ptr.i377, align 1
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #7
  %34 = ptrtoint ptr %hwmp_ie to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %hwmp_ie, align 1
  %36 = and i8 %35, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool18.not = icmp eq i8 %36, 0
  %spec.select.i378 = select i1 %tobool18.not, i32 13, i32 19
  %add.ptr.i379 = getelementptr i8, ptr %hwmp_ie, i32 %spec.select.i378
  %37 = ptrtoint ptr %add.ptr.i379 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %add.ptr.i379, align 1
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #7
  %spec.select.i380 = select i1 %tobool18.not, i32 17, i32 23
  br label %sw.epilog

sw.default:                                       ; preds = %airtime_link_metric_get.exit
  %call.i382 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i382, label %sw.default.rcu_read_unlock.exit393_crit_edge, label %land.lhs.true.i385

sw.default.rcu_read_unlock.exit393_crit_edge:     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit393

land.lhs.true.i385:                               ; preds = %sw.default
  %call1.i383 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i383)
  %tobool.not.i384 = icmp eq i32 %call1.i383, 0
  br i1 %tobool.not.i384, label %land.lhs.true.i385.rcu_read_unlock.exit393_crit_edge, label %land.lhs.true2.i387

land.lhs.true.i385.rcu_read_unlock.exit393_crit_edge: ; preds = %land.lhs.true.i385
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit393

land.lhs.true2.i387:                              ; preds = %land.lhs.true.i385
  %.b4.i386 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i386, label %land.lhs.true2.i387.rcu_read_unlock.exit393_crit_edge, label %if.then.i388

land.lhs.true2.i387.rcu_read_unlock.exit393_crit_edge: ; preds = %land.lhs.true2.i387
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit393

if.then.i388:                                     ; preds = %land.lhs.true2.i387
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #7
  br label %rcu_read_unlock.exit393

rcu_read_unlock.exit393:                          ; preds = %if.then.i388, %land.lhs.true2.i387.rcu_read_unlock.exit393_crit_edge, %land.lhs.true.i385.rcu_read_unlock.exit393_crit_edge, %sw.default.rcu_read_unlock.exit393_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !62
  %40 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i.i.i.i.i389 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i.i389 to ptr
  %preempt_count.i.i.i.i390 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i.i.i390 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i.i.i390, align 4
  %sub.i.i.i391 = add i32 %43, -1
  store volatile i32 %sub.i.i.i391, ptr %preempt_count.i.i.i.i390, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb13, %sw.bb
  %spec.select.i380.sink = phi i32 [ %spec.select.i380, %sw.bb13 ], [ %spec.select.i375, %sw.bb ]
  %orig_lifetime.0 = phi i32 [ %39, %sw.bb13 ], [ %30, %sw.bb ]
  %orig_sn.0 = phi i32 [ %33, %sw.bb13 ], [ %24, %sw.bb ]
  %orig_addr.0 = phi ptr [ %add.ptr14, %sw.bb13 ], [ %add.ptr, %sw.bb ]
  %add.ptr.i381 = getelementptr i8, ptr %hwmp_ie, i32 %spec.select.i380.sink
  %44 = ptrtoint ptr %add.ptr.i381 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %add.ptr.i381, align 1
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #7
  %hopcount.0.in.in = getelementptr i8, ptr %hwmp_ie, i32 1
  %47 = ptrtoint ptr %hopcount.0.in.in to i32
  call void @__asan_load1_noabort(i32 %47)
  %hopcount.0.in = load i8, ptr %hopcount.0.in.in, align 1
  %hopcount.0 = add i8 %hopcount.0.in, 1
  %48 = tail call i32 @llvm.uadd.sat.i32(i32 %46, i32 %retval.0.i373)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %49 = load volatile i32, ptr @jiffies, align 128
  %mul = shl i32 %orig_lifetime.0, 10
  %call3.i = tail call i32 @__usecs_to_jiffies(i32 noundef %mul) #7
  %add33 = add i32 %call3.i, %49
  %addr = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 2
  %50 = ptrtoint ptr %orig_addr.0 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %orig_addr.0, align 4
  %52 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %addr, align 4
  %xor.i = xor i32 %53, %51
  %add.ptr.i394 = getelementptr i8, ptr %orig_addr.0, i32 4
  %54 = ptrtoint ptr %add.ptr.i394 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %add.ptr.i394, align 2
  %add.ptr1.i = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 2, i32 4
  %56 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %57, %55
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i395 = icmp eq i32 %or.i, 0
  br i1 %cmp.i395, label %sw.epilog.if.end146_crit_edge, label %if.else

sw.epilog.if.end146_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end146

if.else:                                          ; preds = %sw.epilog
  %call37 = tail call ptr @mesh_path_lookup(ptr noundef %sdata, ptr noundef %orig_addr.0) #7
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %if.else108, label %if.then39

if.then39:                                        ; preds = %if.else
  %state_lock = getelementptr inbounds %struct.mesh_path, ptr %call37, i32 0, i32 17
  tail call void @_raw_spin_lock_bh(ptr noundef %state_lock) #7
  %flags = getelementptr inbounds %struct.mesh_path, ptr %call37, i32 0, i32 16
  %58 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %flags, align 4
  %and40 = and i32 %59, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.else43, label %if.then39.if.else143_crit_edge

if.then39.if.else143_crit_edge:                   ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else143

if.else43:                                        ; preds = %if.then39
  %60 = and i32 %59, 5
  %61 = zext i32 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %60, label %if.else43.if.then116_crit_edge [
    i32 5, label %if.then50
    i32 4, label %land.end92
  ]

if.else43.if.then116_crit_edge:                   ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then116

if.then50:                                        ; preds = %if.else43
  %sn = getelementptr inbounds %struct.mesh_path, ptr %call37, i32 0, i32 10
  %62 = ptrtoint ptr %sn to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %sn, align 4
  %sub = sub i32 %orig_sn.0, %63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp51 = icmp slt i32 %sub, 0
  br i1 %cmp51, label %if.then50.if.else143_crit_edge, label %lor.lhs.false

if.then50.if.else143_crit_edge:                   ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else143

lor.lhs.false:                                    ; preds = %if.then50
  call void @__sanitizer_cov_trace_cmp4(i32 %orig_sn.0, i32 %63)
  %cmp54 = icmp eq i32 %orig_sn.0, %63
  br i1 %cmp54, label %land.lhs.true56, label %lor.lhs.false.if.then116_crit_edge

lor.lhs.false.if.then116_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then116

land.lhs.true56:                                  ; preds = %lor.lhs.false
  %next_hop = getelementptr inbounds %struct.mesh_path, ptr %call37, i32 0, i32 6
  %64 = ptrtoint ptr %next_hop to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile ptr, ptr %next_hop, align 4
  %cmp58.not = icmp eq ptr %65, %call
  br i1 %cmp58.not, label %land.lhs.true56.cond.end_crit_edge, label %cond.true

land.lhs.true56.cond.end_crit_edge:               ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #9
  %.frozen = freeze i32 %48
  %div = udiv i32 %.frozen, 9
  %66 = mul i32 %div, 9
  %rem60.decomposed = sub i32 %.frozen, %66
  %mul62 = mul i32 %div, 10
  %67 = trunc i32 %rem60.decomposed to i8
  %div64.lhs.trunc = mul nuw nsw i8 %67, 10
  %div64474 = udiv i8 %div64.lhs.trunc, 9
  %div64.zext = zext i8 %div64474 to i32
  %add65 = add i32 %mul62, %div64.zext
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %land.lhs.true56.cond.end_crit_edge
  %cond = phi i32 [ %add65, %cond.true ], [ %48, %land.lhs.true56.cond.end_crit_edge ]
  %metric = getelementptr inbounds %struct.mesh_path, ptr %call37, i32 0, i32 11
  %68 = ptrtoint ptr %metric to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %metric, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %69)
  %cmp66.not = icmp ult i32 %cond, %69
  br i1 %cmp66.not, label %cond.end.if.then116_crit_edge, label %cond.end.if.else143_crit_edge

cond.end.if.else143_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else143

cond.end.if.then116_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then116

land.end92:                                       ; preds = %if.else43
  %sn80 = getelementptr inbounds %struct.mesh_path, ptr %call37, i32 0, i32 10
  %70 = ptrtoint ptr %sn80 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %sn80, align 4
  %sub81 = sub i32 %71, %orig_sn.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub81)
  %cmp82 = icmp slt i32 %sub81, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %orig_sn.0)
  %cmp.not.i396 = icmp ugt i32 %71, %orig_sn.0
  %sub.i397 = sub i32 %orig_sn.0, %71
  %cond.i = select i1 %cmp.not.i396, i32 %sub81, i32 %sub.i397
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %cond.i)
  %cmp90 = icmp ugt i32 %cond.i, 32
  %brmerge475 = select i1 %cmp82, i1 true, i1 %cmp90
  br i1 %brmerge475, label %land.end92.if.then116_crit_edge, label %land.end92.if.else143_crit_edge

land.end92.if.else143_crit_edge:                  ; preds = %land.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else143

land.end92.if.then116_crit_edge:                  ; preds = %land.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then116

if.else108:                                       ; preds = %if.else
  %call109 = tail call ptr @mesh_path_add(ptr noundef %sdata, ptr noundef %orig_addr.0) #7
  %cmp.i398 = icmp ugt ptr %call109, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i398, label %if.then111, label %if.end112

if.then111:                                       ; preds = %if.else108
  %call.i399 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i399, label %if.then111.rcu_read_unlock.exit410_crit_edge, label %land.lhs.true.i402

if.then111.rcu_read_unlock.exit410_crit_edge:     ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit410

land.lhs.true.i402:                               ; preds = %if.then111
  %call1.i400 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i400)
  %tobool.not.i401 = icmp eq i32 %call1.i400, 0
  br i1 %tobool.not.i401, label %land.lhs.true.i402.rcu_read_unlock.exit410_crit_edge, label %land.lhs.true2.i404

land.lhs.true.i402.rcu_read_unlock.exit410_crit_edge: ; preds = %land.lhs.true.i402
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit410

land.lhs.true2.i404:                              ; preds = %land.lhs.true.i402
  %.b4.i403 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i403, label %land.lhs.true2.i404.rcu_read_unlock.exit410_crit_edge, label %if.then.i405

land.lhs.true2.i404.rcu_read_unlock.exit410_crit_edge: ; preds = %land.lhs.true2.i404
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit410

if.then.i405:                                     ; preds = %land.lhs.true2.i404
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #7
  br label %rcu_read_unlock.exit410

rcu_read_unlock.exit410:                          ; preds = %if.then.i405, %land.lhs.true2.i404.rcu_read_unlock.exit410_crit_edge, %land.lhs.true.i402.rcu_read_unlock.exit410_crit_edge, %if.then111.rcu_read_unlock.exit410_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !62
  %72 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i.i.i.i.i406 = and i32 %72, -16384
  %73 = inttoptr i32 %and.i.i.i.i.i406 to ptr
  %preempt_count.i.i.i.i407 = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %preempt_count.i.i.i.i407 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %preempt_count.i.i.i.i407, align 4
  %sub.i.i.i408 = add i32 %75, -1
  store volatile i32 %sub.i.i.i408, ptr %preempt_count.i.i.i.i407, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %cleanup

if.end112:                                        ; preds = %if.else108
  call void @__sanitizer_cov_trace_pc() #9
  %state_lock113 = getelementptr inbounds %struct.mesh_path, ptr %call109, i32 0, i32 17
  tail call void @_raw_spin_lock_bh(ptr noundef %state_lock113) #7
  br label %if.then116

if.then116:                                       ; preds = %if.end112, %land.end92.if.then116_crit_edge, %cond.end.if.then116_crit_edge, %lor.lhs.false.if.then116_crit_edge, %if.else43.if.then116_crit_edge
  %mpath.0460 = phi ptr [ %call37, %land.end92.if.then116_crit_edge ], [ %call109, %if.end112 ], [ %call37, %lor.lhs.false.if.then116_crit_edge ], [ %call37, %cond.end.if.then116_crit_edge ], [ %call37, %if.else43.if.then116_crit_edge ]
  %next_hop121 = getelementptr inbounds %struct.mesh_path, ptr %mpath.0460, i32 0, i32 6
  %76 = ptrtoint ptr %next_hop121 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile ptr, ptr %next_hop121, align 4
  %cmp123.not = icmp eq ptr %77, %call
  br i1 %cmp123.not, label %if.then116.if.end126_crit_edge, label %if.then125

if.then116.if.end126_crit_edge:                   ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end126

if.then125:                                       ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #9
  %path_change_count = getelementptr inbounds %struct.mesh_path, ptr %mpath.0460, i32 0, i32 23
  %78 = ptrtoint ptr %path_change_count to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %path_change_count, align 4
  %inc = add i32 %79, 1
  store i32 %inc, ptr %path_change_count, align 4
  br label %if.end126

if.end126:                                        ; preds = %if.then125, %if.then116.if.end126_crit_edge
  tail call void @mesh_path_assign_nexthop(ptr noundef %mpath.0460, ptr noundef nonnull %call) #7
  %flags127 = getelementptr inbounds %struct.mesh_path, ptr %mpath.0460, i32 0, i32 16
  %80 = ptrtoint ptr %flags127 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %flags127, align 4
  %metric128 = getelementptr inbounds %struct.mesh_path, ptr %mpath.0460, i32 0, i32 11
  %82 = ptrtoint ptr %metric128 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %48, ptr %metric128, align 4
  %sn129 = getelementptr inbounds %struct.mesh_path, ptr %mpath.0460, i32 0, i32 10
  %83 = ptrtoint ptr %sn129 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %orig_sn.0, ptr %sn129, align 4
  %exp_time130 = getelementptr inbounds %struct.mesh_path, ptr %mpath.0460, i32 0, i32 13
  %84 = ptrtoint ptr %exp_time130 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %exp_time130, align 4
  %sub131 = sub i32 %add33, %85
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub131)
  %cmp132 = icmp slt i32 %sub131, 0
  %.add33 = select i1 %cmp132, i32 %85, i32 %add33
  %86 = ptrtoint ptr %exp_time130 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %.add33, ptr %exp_time130, align 4
  %hop_count = getelementptr inbounds %struct.mesh_path, ptr %mpath.0460, i32 0, i32 12
  %87 = ptrtoint ptr %hop_count to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %hopcount.0, ptr %hop_count, align 4
  %or.i411 = or i32 %81, 21
  %88 = ptrtoint ptr %flags127 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %or.i411, ptr %flags127, align 4
  %state_lock140 = getelementptr inbounds %struct.mesh_path, ptr %mpath.0460, i32 0, i32 17
  tail call void @_raw_spin_unlock_bh(ptr noundef %state_lock140) #7
  %89 = ptrtoint ptr %mesh.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %mesh.i, align 8
  %fail_avg = getelementptr inbounds %struct.mesh_sta, ptr %90, i32 0, i32 18
  %91 = ptrtoint ptr %fail_avg to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %fail_avg, align 4
  %92 = load ptr, ptr %mesh.i, align 8
  %fail_avg142 = getelementptr inbounds %struct.mesh_sta, ptr %92, i32 0, i32 18
  %93 = ptrtoint ptr %fail_avg142 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %fail_avg142, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool.not.i412 = icmp eq i32 %94, 0
  %sub.i413 = mul i32 %94, 7
  %add.i = add i32 %sub.i413, 1048576
  %shr.i414 = lshr i32 %add.i, 3
  %cond.i415 = select i1 %tobool.not.i412, i32 1048576, i32 %shr.i414
  %95 = ptrtoint ptr %fail_avg142 to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile i32 %cond.i415, ptr %fail_avg142, align 4
  tail call void @mesh_path_tx_pending(ptr noundef %mpath.0460) #7
  br label %if.end146

if.else143:                                       ; preds = %land.end92.if.else143_crit_edge, %cond.end.if.else143_crit_edge, %if.then50.if.else143_crit_edge, %if.then39.if.else143_crit_edge
  %96 = xor i1 %tobool41.not, true
  tail call void @_raw_spin_unlock_bh(ptr noundef %state_lock) #7
  br label %if.end146

if.end146:                                        ; preds = %if.else143, %if.end126, %sw.epilog.if.end146_crit_edge
  %process.2.off0 = phi i1 [ true, %if.end126 ], [ %96, %if.else143 ], [ false, %sw.epilog.if.end146_crit_edge ]
  %97 = ptrtoint ptr %orig_addr.0 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %orig_addr.0, align 4
  %99 = ptrtoint ptr %sa to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %sa, align 4
  %xor.i416 = xor i32 %100, %98
  %101 = ptrtoint ptr %add.ptr.i394 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %add.ptr.i394, align 2
  %add.ptr1.i418 = getelementptr %struct.ieee80211_mgmt, ptr %mgmt, i32 0, i32 3, i32 4
  %103 = ptrtoint ptr %add.ptr1.i418 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %add.ptr1.i418, align 2
  %xor37.i419 = xor i16 %104, %102
  %xor3.i420 = zext i16 %xor37.i419 to i32
  %or.i421 = or i32 %xor.i416, %xor3.i420
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i421)
  %cmp.i422 = icmp eq i32 %or.i421, 0
  br i1 %cmp.i422, label %if.end146.if.end231_crit_edge, label %if.else151

if.end146.if.end231_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end231

if.else151:                                       ; preds = %if.end146
  %call152 = tail call ptr @mesh_path_lookup(ptr noundef %sdata, ptr noundef %sa) #7
  %tobool153.not = icmp eq ptr %call152, null
  br i1 %tobool153.not, label %if.else190, label %if.then154

if.then154:                                       ; preds = %if.else151
  %state_lock155 = getelementptr inbounds %struct.mesh_path, ptr %call152, i32 0, i32 17
  tail call void @_raw_spin_lock_bh(ptr noundef %state_lock155) #7
  %flags156 = getelementptr inbounds %struct.mesh_path, ptr %call152, i32 0, i32 16
  %105 = ptrtoint ptr %flags156 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %flags156, align 4
  %and157 = and i32 %106, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and157)
  %tobool158.not = icmp eq i32 %and157, 0
  br i1 %tobool158.not, label %lor.lhs.false159, label %if.then154.if.else228_crit_edge

if.then154.if.else228_crit_edge:                  ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else228

lor.lhs.false159:                                 ; preds = %if.then154
  %and161 = and i32 %106, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161)
  %tobool162.not = icmp eq i32 %and161, 0
  br i1 %tobool162.not, label %lor.lhs.false159.if.then198_crit_edge, label %land.lhs.true163

lor.lhs.false159.if.then198_crit_edge:            ; preds = %lor.lhs.false159
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then198

land.lhs.true163:                                 ; preds = %lor.lhs.false159
  %next_hop168 = getelementptr inbounds %struct.mesh_path, ptr %call152, i32 0, i32 6
  %107 = ptrtoint ptr %next_hop168 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile ptr, ptr %next_hop168, align 4
  %cmp170.not = icmp eq ptr %108, %call
  br i1 %cmp170.not, label %land.lhs.true163.cond.end183_crit_edge, label %cond.true172

land.lhs.true163.cond.end183_crit_edge:           ; preds = %land.lhs.true163
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end183

cond.true172:                                     ; preds = %land.lhs.true163
  call void @__sanitizer_cov_trace_pc() #9
  %retval.0.i373.frozen = freeze i32 %retval.0.i373
  %div174 = udiv i32 %retval.0.i373.frozen, 9
  %109 = mul i32 %div174, 9
  %rem176.decomposed = sub i32 %retval.0.i373.frozen, %109
  %mul178 = mul i32 %div174, 10
  %110 = trunc i32 %rem176.decomposed to i8
  %div180.lhs.trunc = mul nuw nsw i8 %110, 10
  %div180473 = udiv i8 %div180.lhs.trunc, 9
  %div180.zext = zext i8 %div180473 to i32
  %add181 = add i32 %mul178, %div180.zext
  br label %cond.end183

cond.end183:                                      ; preds = %cond.true172, %land.lhs.true163.cond.end183_crit_edge
  %cond184 = phi i32 [ %add181, %cond.true172 ], [ %retval.0.i373, %land.lhs.true163.cond.end183_crit_edge ]
  %metric185 = getelementptr inbounds %struct.mesh_path, ptr %call152, i32 0, i32 11
  %111 = ptrtoint ptr %metric185 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %metric185, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond184, i32 %112)
  %cmp186 = icmp ugt i32 %cond184, %112
  br i1 %cmp186, label %cond.end183.if.else228_crit_edge, label %cond.end183.if.then198_crit_edge

cond.end183.if.then198_crit_edge:                 ; preds = %cond.end183
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then198

cond.end183.if.else228_crit_edge:                 ; preds = %cond.end183
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else228

if.else190:                                       ; preds = %if.else151
  %call191 = tail call ptr @mesh_path_add(ptr noundef %sdata, ptr noundef %sa) #7
  %cmp.i423 = icmp ugt ptr %call191, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i423, label %if.then193, label %if.end194

if.then193:                                       ; preds = %if.else190
  %call.i424 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i424, label %if.then193.rcu_read_unlock.exit435_crit_edge, label %land.lhs.true.i427

if.then193.rcu_read_unlock.exit435_crit_edge:     ; preds = %if.then193
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit435

land.lhs.true.i427:                               ; preds = %if.then193
  %call1.i425 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i425)
  %tobool.not.i426 = icmp eq i32 %call1.i425, 0
  br i1 %tobool.not.i426, label %land.lhs.true.i427.rcu_read_unlock.exit435_crit_edge, label %land.lhs.true2.i429

land.lhs.true.i427.rcu_read_unlock.exit435_crit_edge: ; preds = %land.lhs.true.i427
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit435

land.lhs.true2.i429:                              ; preds = %land.lhs.true.i427
  %.b4.i428 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i428, label %land.lhs.true2.i429.rcu_read_unlock.exit435_crit_edge, label %if.then.i430

land.lhs.true2.i429.rcu_read_unlock.exit435_crit_edge: ; preds = %land.lhs.true2.i429
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit435

if.then.i430:                                     ; preds = %land.lhs.true2.i429
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #7
  br label %rcu_read_unlock.exit435

rcu_read_unlock.exit435:                          ; preds = %if.then.i430, %land.lhs.true2.i429.rcu_read_unlock.exit435_crit_edge, %land.lhs.true.i427.rcu_read_unlock.exit435_crit_edge, %if.then193.rcu_read_unlock.exit435_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !62
  %113 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i.i.i.i.i431 = and i32 %113, -16384
  %114 = inttoptr i32 %and.i.i.i.i.i431 to ptr
  %preempt_count.i.i.i.i432 = getelementptr inbounds %struct.thread_info, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %preempt_count.i.i.i.i432 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %preempt_count.i.i.i.i432, align 4
  %sub.i.i.i433 = add i32 %116, -1
  store volatile i32 %sub.i.i.i433, ptr %preempt_count.i.i.i.i432, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %cleanup

if.end194:                                        ; preds = %if.else190
  call void @__sanitizer_cov_trace_pc() #9
  %state_lock195 = getelementptr inbounds %struct.mesh_path, ptr %call191, i32 0, i32 17
  tail call void @_raw_spin_lock_bh(ptr noundef %state_lock195) #7
  br label %if.then198

if.then198:                                       ; preds = %if.end194, %cond.end183.if.then198_crit_edge, %lor.lhs.false159.if.then198_crit_edge
  %mpath.1.ph = phi ptr [ %call191, %if.end194 ], [ %call152, %lor.lhs.false159.if.then198_crit_edge ], [ %call152, %cond.end183.if.then198_crit_edge ]
  %next_hop203 = getelementptr inbounds %struct.mesh_path, ptr %mpath.1.ph, i32 0, i32 6
  %117 = ptrtoint ptr %next_hop203 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile ptr, ptr %next_hop203, align 4
  %cmp205.not = icmp eq ptr %118, %call
  br i1 %cmp205.not, label %if.then198.if.end210_crit_edge, label %if.then207

if.then198.if.end210_crit_edge:                   ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end210

if.then207:                                       ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #9
  %path_change_count208 = getelementptr inbounds %struct.mesh_path, ptr %mpath.1.ph, i32 0, i32 23
  %119 = ptrtoint ptr %path_change_count208 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %path_change_count208, align 4
  %inc209 = add i32 %120, 1
  store i32 %inc209, ptr %path_change_count208, align 4
  br label %if.end210

if.end210:                                        ; preds = %if.then207, %if.then198.if.end210_crit_edge
  tail call void @mesh_path_assign_nexthop(ptr noundef %mpath.1.ph, ptr noundef nonnull %call) #7
  %metric211 = getelementptr inbounds %struct.mesh_path, ptr %mpath.1.ph, i32 0, i32 11
  %121 = ptrtoint ptr %metric211 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %retval.0.i373, ptr %metric211, align 4
  %exp_time212 = getelementptr inbounds %struct.mesh_path, ptr %mpath.1.ph, i32 0, i32 13
  %122 = ptrtoint ptr %exp_time212 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %exp_time212, align 4
  %sub213 = sub i32 %add33, %123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub213)
  %cmp214 = icmp slt i32 %sub213, 0
  %.add33357 = select i1 %cmp214, i32 %123, i32 %add33
  %124 = ptrtoint ptr %exp_time212 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %.add33357, ptr %exp_time212, align 4
  %hop_count222 = getelementptr inbounds %struct.mesh_path, ptr %mpath.1.ph, i32 0, i32 12
  %125 = ptrtoint ptr %hop_count222 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 1, ptr %hop_count222, align 4
  %flags.i436 = getelementptr inbounds %struct.mesh_path, ptr %mpath.1.ph, i32 0, i32 16
  %126 = ptrtoint ptr %flags.i436 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %flags.i436, align 4
  %or.i437 = or i32 %127, 17
  store i32 %or.i437, ptr %flags.i436, align 4
  %state_lock223 = getelementptr inbounds %struct.mesh_path, ptr %mpath.1.ph, i32 0, i32 17
  tail call void @_raw_spin_unlock_bh(ptr noundef %state_lock223) #7
  %128 = ptrtoint ptr %mesh.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %mesh.i, align 8
  %fail_avg225 = getelementptr inbounds %struct.mesh_sta, ptr %129, i32 0, i32 18
  %130 = ptrtoint ptr %fail_avg225 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 0, ptr %fail_avg225, align 4
  %131 = load ptr, ptr %mesh.i, align 8
  %fail_avg227 = getelementptr inbounds %struct.mesh_sta, ptr %131, i32 0, i32 18
  %132 = ptrtoint ptr %fail_avg227 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load volatile i32, ptr %fail_avg227, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool.not.i438 = icmp eq i32 %133, 0
  %sub.i439 = mul i32 %133, 7
  %add.i440 = add i32 %sub.i439, 1048576
  %shr.i441 = lshr i32 %add.i440, 3
  %cond.i442 = select i1 %tobool.not.i438, i32 1048576, i32 %shr.i441
  %134 = ptrtoint ptr %fail_avg227 to i32
  call void @__asan_store4_noabort(i32 %134)
  store volatile i32 %cond.i442, ptr %fail_avg227, align 4
  tail call void @mesh_path_tx_pending(ptr noundef %mpath.1.ph) #7
  br label %if.end231

if.else228:                                       ; preds = %cond.end183.if.else228_crit_edge, %if.then154.if.else228_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %state_lock155) #7
  br label %if.end231

if.end231:                                        ; preds = %if.else228, %if.end210, %if.end146.if.end231_crit_edge
  %call.i443 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i443, label %if.end231.rcu_read_unlock.exit454_crit_edge, label %land.lhs.true.i446

if.end231.rcu_read_unlock.exit454_crit_edge:      ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit454

land.lhs.true.i446:                               ; preds = %if.end231
  %call1.i444 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i444)
  %tobool.not.i445 = icmp eq i32 %call1.i444, 0
  br i1 %tobool.not.i445, label %land.lhs.true.i446.rcu_read_unlock.exit454_crit_edge, label %land.lhs.true2.i448

land.lhs.true.i446.rcu_read_unlock.exit454_crit_edge: ; preds = %land.lhs.true.i446
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit454

land.lhs.true2.i448:                              ; preds = %land.lhs.true.i446
  %.b4.i447 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i447, label %land.lhs.true2.i448.rcu_read_unlock.exit454_crit_edge, label %if.then.i449

land.lhs.true2.i448.rcu_read_unlock.exit454_crit_edge: ; preds = %land.lhs.true2.i448
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit454

if.then.i449:                                     ; preds = %land.lhs.true2.i448
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #7
  br label %rcu_read_unlock.exit454

rcu_read_unlock.exit454:                          ; preds = %if.then.i449, %land.lhs.true2.i448.rcu_read_unlock.exit454_crit_edge, %land.lhs.true.i446.rcu_read_unlock.exit454_crit_edge, %if.end231.rcu_read_unlock.exit454_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !62
  %135 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i.i.i.i.i450 = and i32 %135, -16384
  %136 = inttoptr i32 %and.i.i.i.i.i450 to ptr
  %preempt_count.i.i.i.i451 = getelementptr inbounds %struct.thread_info, ptr %136, i32 0, i32 1
  %137 = ptrtoint ptr %preempt_count.i.i.i.i451 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load volatile i32, ptr %preempt_count.i.i.i.i451, align 4
  %sub.i.i.i452 = add i32 %138, -1
  store volatile i32 %sub.i.i.i452, ptr %preempt_count.i.i.i.i451, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  %spec.select358 = select i1 %process.2.off0, i32 %48, i32 0
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit454, %rcu_read_unlock.exit435, %rcu_read_unlock.exit410, %rcu_read_unlock.exit393, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ 0, %rcu_read_unlock.exit393 ], [ %spec.select358, %rcu_read_unlock.exit454 ], [ 0, %rcu_read_unlock.exit435 ], [ 0, %rcu_read_unlock.exit410 ], [ 0, %rcu_read_unlock.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hwmp_preq_frame_process(ptr noundef %sdata, ptr nocapture noundef readonly %mgmt, ptr noundef %preq_elem, i32 noundef %orig_metric) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %preq_elem to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %preq_elem, align 1
  %2 = and i8 %1, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %add.ptr = getelementptr i8, ptr %preq_elem, i32 33
  %add.ptr1 = getelementptr i8, ptr %preq_elem, i32 27
  %cond = select i1 %tobool.not, ptr %add.ptr1, ptr %add.ptr
  %add.ptr2 = getelementptr i8, ptr %preq_elem, i32 7
  %spec.select.i = select i1 %tobool.not, i32 33, i32 39
  %add.ptr.i = getelementptr i8, ptr %preq_elem, i32 %spec.select.i
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %add.ptr.i, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  %add.ptr.i304 = getelementptr i8, ptr %preq_elem, i32 13
  %6 = ptrtoint ptr %add.ptr.i304 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %add.ptr.i304, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #7
  %cond15.v = select i1 %tobool.not, i32 26, i32 32
  %cond15 = getelementptr i8, ptr %preq_elem, i32 %cond15.v
  %9 = ptrtoint ptr %cond15 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cond15, align 1
  %conv16 = zext i8 %1 to i32
  %and17 = and i32 %conv16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %name = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.7, ptr noundef %name, ptr noundef %add.ptr2) #7
  %addr = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 2
  %11 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cond, align 4
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr, align 4
  %xor.i = xor i32 %14, %12
  %add.ptr.i305 = getelementptr i8, ptr %cond, i32 4
  %15 = ptrtoint ptr %add.ptr.i305 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr.i305, align 2
  %add.ptr1.i = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 2, i32 4
  %17 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %18, %16
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.8, ptr noundef %name) #7
  %sn = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 13
  %19 = ptrtoint ptr %sn to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sn, align 8
  %sub = sub i32 %20, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then25, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then25:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %sn to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %5, ptr %sn, align 8
  br label %if.end

if.end:                                           ; preds = %if.then25, %if.then.if.end_crit_edge
  %last_sn_update = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 16
  %22 = ptrtoint ptr %last_sn_update to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %last_sn_update, align 4
  %dot11MeshHWMPnetDiameterTraversalTime = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24, i32 15
  %24 = ptrtoint ptr %dot11MeshHWMPnetDiameterTraversalTime to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %dot11MeshHWMPnetDiameterTraversalTime, align 4
  %conv28 = zext i16 %25 to i32
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv28) #7
  %add = add i32 %call2.i, %23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %sub30 = sub i32 %add, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub30)
  %cmp31 = icmp slt i32 %sub30, 0
  br i1 %cmp31, label %if.end.if.then37_crit_edge, label %lor.lhs.false

if.end.if.then37_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then37

lor.lhs.false:                                    ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %28 = ptrtoint ptr %last_sn_update to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %last_sn_update, align 4
  %sub34 = sub i32 %27, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub34)
  %cmp35 = icmp slt i32 %sub34, 0
  br i1 %cmp35, label %lor.lhs.false.if.then37_crit_edge, label %lor.lhs.false.if.end99.thread_crit_edge

lor.lhs.false.if.end99.thread_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99.thread

lor.lhs.false.if.then37_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then37

if.then37:                                        ; preds = %lor.lhs.false.if.then37_crit_edge, %if.end.if.then37_crit_edge
  %30 = ptrtoint ptr %sn to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sn, align 8
  %inc = add i32 %31, 1
  store i32 %inc, ptr %sn, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %33 = ptrtoint ptr %last_sn_update to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %last_sn_update, align 4
  br label %if.end99.thread

if.end99.thread:                                  ; preds = %if.then37, %lor.lhs.false.if.end99.thread_crit_edge
  %34 = ptrtoint ptr %sn to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sn, align 8
  br label %if.then101

if.else:                                          ; preds = %entry
  %36 = ptrtoint ptr %cond to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %cond, align 2
  %add.ptr1.i306 = getelementptr i8, ptr %cond, i32 2
  %38 = ptrtoint ptr %add.ptr1.i306 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %add.ptr1.i306, align 2
  %and9.i = and i16 %37, %16
  %and510.i = and i16 %and9.i, %39
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i307 = icmp ne i16 %and510.i, -1
  %40 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool46.not = icmp eq i8 %40, 0
  %or.cond = select i1 %cmp.i307, i1 true, i1 %tobool46.not
  %41 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i.i.i.i.i293 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i293 to ptr
  %preempt_count.i.i.i.i294 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i.i294 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i.i294, align 4
  %add.i.i.i295 = add i32 %44, 1
  store volatile i32 %add.i.i.i295, ptr %preempt_count.i.i.i.i294, align 4
  tail call void asm sideeffect "", "~{memory}"() #7
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i296 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %or.cond, label %if.else67, label %if.then47

if.then47:                                        ; preds = %if.else
  br i1 %call.i296, label %if.then47.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then47.rcu_read_lock.exit_crit_edge:           ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then47
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i292

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i292:                                     ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i292, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then47.rcu_read_lock.exit_crit_edge
  %call48 = tail call ptr @mesh_path_lookup(ptr noundef %sdata, ptr noundef %add.ptr2) #7
  %tobool49.not = icmp eq ptr %call48, null
  br i1 %tobool49.not, label %rcu_read_lock.exit.if.end66_crit_edge, label %if.then50

rcu_read_lock.exit.if.end66_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

if.then50:                                        ; preds = %rcu_read_lock.exit
  %and52 = and i32 %conv16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.then50.if.end61_crit_edge, label %if.then54

if.then50.if.end61_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.then54:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #9
  %sn58 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 13
  %45 = ptrtoint ptr %sn58 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sn58, align 8
  %inc59 = add i32 %46, 1
  store i32 %inc59, ptr %sn58, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %last_sn_update60 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 16
  %48 = ptrtoint ptr %last_sn_update60 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %last_sn_update60, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then54, %if.then50.if.end61_crit_edge
  %target_addr.0 = phi ptr [ %addr, %if.then54 ], [ %cond, %if.then50.if.end61_crit_edge ]
  %target_sn.0 = phi i32 [ %inc59, %if.then54 ], [ %5, %if.then50.if.end61_crit_edge ]
  %reply.0 = phi i8 [ 1, %if.then54 ], [ 0, %if.then50.if.end61_crit_edge ]
  br i1 %tobool18.not, label %if.end61.if.end66_crit_edge, label %if.then63

if.end61.if.end66_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

if.then63:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  %call64 = tail call i32 @mesh_path_add_gate(ptr noundef nonnull %call48) #7
  br label %if.end66

if.end66:                                         ; preds = %if.then63, %if.end61.if.end66_crit_edge, %rcu_read_lock.exit.if.end66_crit_edge
  %target_addr.1 = phi ptr [ %target_addr.0, %if.then63 ], [ %target_addr.0, %if.end61.if.end66_crit_edge ], [ %cond, %rcu_read_lock.exit.if.end66_crit_edge ]
  %target_sn.1 = phi i32 [ %target_sn.0, %if.then63 ], [ %target_sn.0, %if.end61.if.end66_crit_edge ], [ %5, %rcu_read_lock.exit.if.end66_crit_edge ]
  %reply.1 = phi i8 [ %reply.0, %if.then63 ], [ %reply.0, %if.end61.if.end66_crit_edge ], [ 0, %rcu_read_lock.exit.if.end66_crit_edge ]
  %call.i308 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i308, label %if.end66.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i311

if.end66.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i311:                               ; preds = %if.end66
  %call1.i309 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i309)
  %tobool.not.i310 = icmp eq i32 %call1.i309, 0
  br i1 %tobool.not.i310, label %land.lhs.true.i311.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i313

land.lhs.true.i311.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i311
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i313:                              ; preds = %land.lhs.true.i311
  %.b4.i312 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i312, label %land.lhs.true2.i313.rcu_read_unlock.exit_crit_edge, label %if.then.i314

land.lhs.true2.i313.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i313
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i314:                                     ; preds = %land.lhs.true2.i313
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i314, %land.lhs.true2.i313.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i311.rcu_read_unlock.exit_crit_edge, %if.end66.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !62
  %49 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i.i.i.i.i315 = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i.i.i315 to ptr
  %preempt_count.i.i.i.i316 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %preempt_count.i.i.i.i316 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %preempt_count.i.i.i.i316, align 4
  %sub.i.i.i = add i32 %52, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i316, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %reply.1)
  %extract.t.not = icmp eq i8 %reply.1, 0
  br i1 %extract.t.not, label %rcu_read_unlock.exit.land.lhs.true121_crit_edge, label %rcu_read_unlock.exit.if.then101_crit_edge

rcu_read_unlock.exit.if.then101_crit_edge:        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then101

rcu_read_unlock.exit.land.lhs.true121_crit_edge:  ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true121

if.else67:                                        ; preds = %if.else
  br i1 %call.i296, label %if.else67.rcu_read_lock.exit303_crit_edge, label %land.lhs.true.i299

if.else67.rcu_read_lock.exit303_crit_edge:        ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit303

land.lhs.true.i299:                               ; preds = %if.else67
  %call1.i297 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i297)
  %tobool.not.i298 = icmp eq i32 %call1.i297, 0
  br i1 %tobool.not.i298, label %land.lhs.true.i299.rcu_read_lock.exit303_crit_edge, label %land.lhs.true2.i301

land.lhs.true.i299.rcu_read_lock.exit303_crit_edge: ; preds = %land.lhs.true.i299
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit303

land.lhs.true2.i301:                              ; preds = %land.lhs.true.i299
  %.b4.i300 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i300, label %land.lhs.true2.i301.rcu_read_lock.exit303_crit_edge, label %if.then.i302

land.lhs.true2.i301.rcu_read_lock.exit303_crit_edge: ; preds = %land.lhs.true2.i301
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit303

if.then.i302:                                     ; preds = %land.lhs.true2.i301
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #7
  br label %rcu_read_lock.exit303

rcu_read_lock.exit303:                            ; preds = %if.then.i302, %land.lhs.true2.i301.rcu_read_lock.exit303_crit_edge, %land.lhs.true.i299.rcu_read_lock.exit303_crit_edge, %if.else67.rcu_read_lock.exit303_crit_edge
  %call68 = tail call ptr @mesh_path_lookup(ptr noundef %sdata, ptr noundef %cond) #7
  %tobool69.not = icmp eq ptr %call68, null
  br i1 %tobool69.not, label %rcu_read_lock.exit303.if.end97_crit_edge, label %if.then70

rcu_read_lock.exit303.if.end97_crit_edge:         ; preds = %rcu_read_lock.exit303
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end97

if.then70:                                        ; preds = %rcu_read_lock.exit303
  %flags71 = getelementptr inbounds %struct.mesh_path, ptr %call68, i32 0, i32 16
  %53 = ptrtoint ptr %flags71 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %flags71, align 4
  %and72 = and i32 %54, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.then70.if.then79_crit_edge, label %lor.lhs.false74

if.then70.if.then79_crit_edge:                    ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then79

lor.lhs.false74:                                  ; preds = %if.then70
  %sn75 = getelementptr inbounds %struct.mesh_path, ptr %call68, i32 0, i32 10
  %55 = ptrtoint ptr %sn75 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %sn75, align 4
  %sub76 = sub i32 %56, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub76)
  %cmp77 = icmp slt i32 %sub76, 0
  br i1 %cmp77, label %lor.lhs.false74.if.then79_crit_edge, label %if.else82

lor.lhs.false74.if.then79_crit_edge:              ; preds = %lor.lhs.false74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then79

if.then79:                                        ; preds = %lor.lhs.false74.if.then79_crit_edge, %if.then70.if.then79_crit_edge
  %sn80 = getelementptr inbounds %struct.mesh_path, ptr %call68, i32 0, i32 10
  %57 = ptrtoint ptr %sn80 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %5, ptr %sn80, align 4
  %or = or i32 %54, 4
  %58 = ptrtoint ptr %flags71 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %or, ptr %flags71, align 4
  br label %if.end97

if.else82:                                        ; preds = %lor.lhs.false74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool85.not = icmp ne i8 %40, 0
  %and88 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  %or.cond291 = select i1 %tobool85.not, i1 true, i1 %tobool89.not
  br i1 %or.cond291, label %if.else82.if.end97_crit_edge, label %if.then90

if.else82.if.end97_crit_edge:                     ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end97

if.then90:                                        ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #9
  %metric = getelementptr inbounds %struct.mesh_path, ptr %call68, i32 0, i32 11
  %59 = ptrtoint ptr %metric to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %metric, align 4
  %or93 = or i8 %10, 1
  br label %if.end97

if.end97:                                         ; preds = %if.then90, %if.else82.if.end97_crit_edge, %if.then79, %rcu_read_lock.exit303.if.end97_crit_edge
  %target_flags.0 = phi i8 [ %10, %if.then79 ], [ %10, %if.else82.if.end97_crit_edge ], [ %or93, %if.then90 ], [ %10, %rcu_read_lock.exit303.if.end97_crit_edge ]
  %target_sn.2 = phi i32 [ %5, %if.then79 ], [ %5, %if.else82.if.end97_crit_edge ], [ %56, %if.then90 ], [ %5, %rcu_read_lock.exit303.if.end97_crit_edge ]
  %target_metric.2 = phi i32 [ 0, %if.then79 ], [ 0, %if.else82.if.end97_crit_edge ], [ %60, %if.then90 ], [ 0, %rcu_read_lock.exit303.if.end97_crit_edge ]
  %reply.2.off0 = phi i1 [ false, %if.then79 ], [ false, %if.else82.if.end97_crit_edge ], [ true, %if.then90 ], [ false, %rcu_read_lock.exit303.if.end97_crit_edge ]
  %call.i317 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i317, label %if.end97.if.end99_crit_edge, label %land.lhs.true.i320

if.end97.if.end99_crit_edge:                      ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99

land.lhs.true.i320:                               ; preds = %if.end97
  %call1.i318 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i318)
  %tobool.not.i319 = icmp eq i32 %call1.i318, 0
  br i1 %tobool.not.i319, label %land.lhs.true.i320.if.end99_crit_edge, label %land.lhs.true2.i322

land.lhs.true.i320.if.end99_crit_edge:            ; preds = %land.lhs.true.i320
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99

land.lhs.true2.i322:                              ; preds = %land.lhs.true.i320
  %.b4.i321 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i321, label %land.lhs.true2.i322.if.end99_crit_edge, label %if.then.i323

land.lhs.true2.i322.if.end99_crit_edge:           ; preds = %land.lhs.true2.i322
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99

if.then.i323:                                     ; preds = %land.lhs.true2.i322
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #7
  br label %if.end99

if.end99:                                         ; preds = %if.then.i323, %land.lhs.true2.i322.if.end99_crit_edge, %land.lhs.true.i320.if.end99_crit_edge, %if.end97.if.end99_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !62
  %61 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i.i.i.i.i324 = and i32 %61, -16384
  %62 = inttoptr i32 %and.i.i.i.i.i324 to ptr
  %preempt_count.i.i.i.i325 = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %preempt_count.i.i.i.i325 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %preempt_count.i.i.i.i325, align 4
  %sub.i.i.i326 = add i32 %64, -1
  store volatile i32 %sub.i.i.i326, ptr %preempt_count.i.i.i.i325, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br i1 %reply.2.off0, label %if.end99.if.then101_crit_edge, label %if.end99.land.lhs.true121_crit_edge

if.end99.land.lhs.true121_crit_edge:              ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true121

if.end99.if.then101_crit_edge:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then101

if.then101:                                       ; preds = %if.end99.if.then101_crit_edge, %rcu_read_unlock.exit.if.then101_crit_edge, %if.end99.thread
  %target_metric.3349 = phi i32 [ 0, %if.end99.thread ], [ %target_metric.2, %if.end99.if.then101_crit_edge ], [ 0, %rcu_read_unlock.exit.if.then101_crit_edge ]
  %target_sn.3348 = phi i32 [ %35, %if.end99.thread ], [ %target_sn.2, %if.end99.if.then101_crit_edge ], [ %target_sn.1, %rcu_read_unlock.exit.if.then101_crit_edge ]
  %target_flags.1346 = phi i8 [ %10, %if.end99.thread ], [ %target_flags.0, %if.end99.if.then101_crit_edge ], [ %10, %rcu_read_unlock.exit.if.then101_crit_edge ]
  %target_addr.2344 = phi ptr [ %cond, %if.end99.thread ], [ %cond, %if.end99.if.then101_crit_edge ], [ %target_addr.1, %rcu_read_unlock.exit.if.then101_crit_edge ]
  %mpath.0342 = phi ptr [ null, %if.end99.thread ], [ %call68, %if.end99.if.then101_crit_edge ], [ %call48, %rcu_read_unlock.exit.if.then101_crit_edge ]
  %element_ttl = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24, i32 6
  %65 = ptrtoint ptr %element_ttl to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %element_ttl, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %cmp108.not = icmp eq i8 %66, 0
  br i1 %cmp108.not, label %if.else115, label %if.then110

if.then110:                                       ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %preq_elem to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %preq_elem, align 1
  %69 = and i8 %68, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool104.not = icmp eq i8 %69, 0
  %spec.select.i328 = select i1 %tobool104.not, i32 17, i32 23
  %add.ptr.i329 = getelementptr i8, ptr %preq_elem, i32 %spec.select.i328
  %70 = ptrtoint ptr %add.ptr.i329 to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %add.ptr.i329, align 1
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #7
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.9, ptr noundef %name) #7
  %sa = getelementptr inbounds %struct.ieee80211_mgmt, ptr %mgmt, i32 0, i32 3
  tail call fastcc void @mesh_path_sel_frame_tx(i32 noundef 1, i8 noundef zeroext 0, ptr noundef %add.ptr2, i32 noundef %8, i8 noundef zeroext 0, ptr noundef %target_addr.2344, i32 noundef %target_sn.3348, ptr noundef %sa, i8 noundef zeroext 0, i8 noundef zeroext %66, i32 noundef %72, i32 noundef %target_metric.3349, i32 noundef 0, ptr noundef %sdata)
  br label %if.end118

if.else115:                                       ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #9
  %dropped_frames_ttl = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 23, i32 3
  %73 = ptrtoint ptr %dropped_frames_ttl to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %dropped_frames_ttl, align 4
  %inc116 = add i32 %74, 1
  store i32 %inc116, ptr %dropped_frames_ttl, align 4
  br label %if.end118

if.end118:                                        ; preds = %if.else115, %if.then110
  br i1 %cmp.i, label %if.end118.cleanup186_crit_edge, label %if.end118.land.lhs.true121_crit_edge

if.end118.land.lhs.true121_crit_edge:             ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true121

if.end118.cleanup186_crit_edge:                   ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup186

land.lhs.true121:                                 ; preds = %if.end118.land.lhs.true121_crit_edge, %if.end99.land.lhs.true121_crit_edge, %rcu_read_unlock.exit.land.lhs.true121_crit_edge
  %mpath.0341357 = phi ptr [ %mpath.0342, %if.end118.land.lhs.true121_crit_edge ], [ %call48, %rcu_read_unlock.exit.land.lhs.true121_crit_edge ], [ %call68, %if.end99.land.lhs.true121_crit_edge ]
  %target_addr.2343356 = phi ptr [ %target_addr.2344, %if.end118.land.lhs.true121_crit_edge ], [ %target_addr.1, %rcu_read_unlock.exit.land.lhs.true121_crit_edge ], [ %cond, %if.end99.land.lhs.true121_crit_edge ]
  %target_flags.1345355 = phi i8 [ %target_flags.1346, %if.end118.land.lhs.true121_crit_edge ], [ %10, %rcu_read_unlock.exit.land.lhs.true121_crit_edge ], [ %target_flags.0, %if.end99.land.lhs.true121_crit_edge ]
  %target_sn.3347354 = phi i32 [ %target_sn.3348, %if.end118.land.lhs.true121_crit_edge ], [ %target_sn.1, %rcu_read_unlock.exit.land.lhs.true121_crit_edge ], [ %target_sn.2, %if.end99.land.lhs.true121_crit_edge ]
  %dot11MeshForwarding = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24, i32 21
  %75 = ptrtoint ptr %dot11MeshForwarding to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %dot11MeshForwarding, align 1, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool123.not = icmp eq i8 %76, 0
  br i1 %tobool123.not, label %land.lhs.true121.cleanup186_crit_edge, label %if.then125

land.lhs.true121.cleanup186_crit_edge:            ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup186

if.then125:                                       ; preds = %land.lhs.true121
  %add.ptr126 = getelementptr i8, ptr %preq_elem, i32 2
  %77 = ptrtoint ptr %add.ptr126 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %add.ptr126, align 1
  %79 = ptrtoint ptr %preq_elem to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %preq_elem, align 1
  %81 = and i8 %80, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool129.not = icmp eq i8 %81, 0
  %spec.select.i330 = select i1 %tobool129.not, i32 17, i32 23
  %add.ptr.i331 = getelementptr i8, ptr %preq_elem, i32 %spec.select.i330
  %82 = ptrtoint ptr %add.ptr.i331 to i32
  call void @__asan_loadN_noabort(i32 %82, i32 4)
  %83 = load i32, ptr %add.ptr.i331, align 1
  %84 = tail call i32 @llvm.bswap.i32(i32 %83) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %78)
  %cmp132 = icmp ult i8 %78, 2
  br i1 %cmp132, label %if.then134, label %if.end138

if.then134:                                       ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #9
  %dropped_frames_ttl136 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 23, i32 3
  br label %cleanup186.sink.split

if.end138:                                        ; preds = %if.then125
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.10, ptr noundef %name, ptr noundef %add.ptr2) #7
  %dec = add i8 %78, -1
  %add.ptr.i332 = getelementptr i8, ptr %preq_elem, i32 3
  %85 = ptrtoint ptr %add.ptr.i332 to i32
  call void @__asan_loadN_noabort(i32 %85, i32 4)
  %86 = load i32, ptr %add.ptr.i332, align 1
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #7
  %add.ptr142 = getelementptr i8, ptr %preq_elem, i32 1
  %88 = ptrtoint ptr %add.ptr142 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %add.ptr142, align 1
  %add144 = add i8 %89, 1
  %tobool146.not = icmp eq ptr %mpath.0341357, null
  br i1 %tobool146.not, label %if.end138.cond.end153_crit_edge, label %land.lhs.true147

if.end138.cond.end153_crit_edge:                  ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end153

land.lhs.true147:                                 ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #9
  %is_root = getelementptr inbounds %struct.mesh_path, ptr %mpath.0341357, i32 0, i32 21
  %90 = ptrtoint ptr %is_root to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %is_root, align 4, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool148.not = icmp eq i8 %91, 0
  %rann_snd_addr = getelementptr inbounds %struct.mesh_path, ptr %mpath.0341357, i32 0, i32 18
  %spec.select = select i1 %tobool148.not, ptr @broadcast_addr, ptr %rann_snd_addr
  br label %cond.end153

cond.end153:                                      ; preds = %land.lhs.true147, %if.end138.cond.end153_crit_edge
  %cond154 = phi ptr [ @broadcast_addr, %if.end138.cond.end153_crit_edge ], [ %spec.select, %land.lhs.true147 ]
  %and156 = and i32 %conv16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and156)
  %tobool157.not = icmp eq i32 %and156, 0
  br i1 %tobool157.not, label %cond.end153.if.end172_crit_edge, label %if.then158

cond.end153.if.end172_crit_edge:                  ; preds = %cond.end153
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end172

if.then158:                                       ; preds = %cond.end153
  call void @__sanitizer_cov_trace_pc() #9
  %92 = ptrtoint ptr %preq_elem to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %preq_elem, align 1
  %94 = and i8 %93, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool161.not = icmp eq i8 %94, 0
  %cond167 = select i1 %tobool161.not, ptr %add.ptr1, ptr %add.ptr
  %spec.select.i333 = select i1 %tobool161.not, i32 33, i32 39
  %add.ptr.i334 = getelementptr i8, ptr %preq_elem, i32 %spec.select.i333
  %95 = ptrtoint ptr %add.ptr.i334 to i32
  call void @__asan_loadN_noabort(i32 %95, i32 4)
  %96 = load i32, ptr %add.ptr.i334, align 1
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #7
  br label %if.end172

if.end172:                                        ; preds = %if.then158, %cond.end153.if.end172_crit_edge
  %target_addr.3 = phi ptr [ %cond167, %if.then158 ], [ %target_addr.2343356, %cond.end153.if.end172_crit_edge ]
  %target_sn.4 = phi i32 [ %97, %if.then158 ], [ %target_sn.3347354, %cond.end153.if.end172_crit_edge ]
  tail call fastcc void @mesh_path_sel_frame_tx(i32 noundef 0, i8 noundef zeroext %1, ptr noundef %add.ptr2, i32 noundef %8, i8 noundef zeroext %target_flags.1345355, ptr noundef %target_addr.3, i32 noundef %target_sn.4, ptr noundef %cond154, i8 noundef zeroext %add144, i8 noundef zeroext %dec, i32 noundef %84, i32 noundef %orig_metric, i32 noundef %87, ptr noundef %sdata)
  %98 = ptrtoint ptr %cond154 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %cond154, align 4
  %100 = and i32 %99, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool.i.not = icmp eq i32 %100, 0
  %mshstats179 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 23
  %fwded_unicast = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 23, i32 1
  %mshstats179.sink358 = select i1 %tobool.i.not, ptr %fwded_unicast, ptr %mshstats179
  %101 = ptrtoint ptr %mshstats179.sink358 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %mshstats179.sink358, align 4
  %inc180 = add i32 %102, 1
  store i32 %inc180, ptr %mshstats179.sink358, align 4
  %fwded_frames = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 23, i32 2
  br label %cleanup186.sink.split

cleanup186.sink.split:                            ; preds = %if.end172, %if.then134
  %dropped_frames_ttl136.sink359 = phi ptr [ %dropped_frames_ttl136, %if.then134 ], [ %fwded_frames, %if.end172 ]
  %103 = ptrtoint ptr %dropped_frames_ttl136.sink359 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %dropped_frames_ttl136.sink359, align 4
  %inc137 = add i32 %104, 1
  store i32 %inc137, ptr %dropped_frames_ttl136.sink359, align 4
  br label %cleanup186

cleanup186:                                       ; preds = %cleanup186.sink.split, %land.lhs.true121.cleanup186_crit_edge, %if.end118.cleanup186_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hwmp_prep_frame_process(ptr noundef %sdata, ptr noundef %prep_elem, i32 noundef %metric) unnamed_addr #0 align 64 {
entry:
  %next_hop = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %next_hop) #7
  %name = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  %add.ptr = getelementptr i8, ptr %prep_elem, i32 3
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.11, ptr noundef %name, ptr noundef %add.ptr) #7
  %0 = ptrtoint ptr %prep_elem to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prep_elem, align 1
  %2 = and i8 %1, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %cond.v = select i1 %tobool.not, i32 21, i32 27
  %cond = getelementptr i8, ptr %prep_elem, i32 %cond.v
  %addr = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 2
  %3 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cond, align 4
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %addr, align 4
  %xor.i = xor i32 %6, %4
  %add.ptr.i = getelementptr i8, ptr %cond, i32 4
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 2, i32 4
  %9 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %10, %8
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dot11MeshForwarding = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24, i32 21
  %11 = ptrtoint ptr %dot11MeshForwarding to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %dot11MeshForwarding, align 1, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool4.not = icmp eq i8 %12, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %add.ptr7 = getelementptr i8, ptr %prep_elem, i32 2
  %13 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %add.ptr7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %14)
  %cmp = icmp ult i8 %14, 2
  br i1 %cmp, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %dropped_frames_ttl = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 23, i32 3
  br label %cleanup.sink.split

if.end12:                                         ; preds = %if.end6
  %15 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %18, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !61
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %if.end12.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end12.rcu_read_lock.exit_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end12
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end12.rcu_read_lock.exit_crit_edge
  %call13 = tail call ptr @mesh_path_lookup(ptr noundef %sdata, ptr noundef %cond) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %rcu_read_lock.exit.fail_crit_edge, label %if.then15

rcu_read_lock.exit.fail_crit_edge:                ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.then15:                                        ; preds = %rcu_read_lock.exit
  %state_lock = getelementptr inbounds %struct.mesh_path, ptr %call13, i32 0, i32 17
  tail call void @_raw_spin_lock_bh(ptr noundef %state_lock) #7
  %flags17 = getelementptr inbounds %struct.mesh_path, ptr %call13, i32 0, i32 16
  %19 = ptrtoint ptr %flags17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags17, align 4
  %and18 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %state_lock) #7
  br label %fail

if.end22:                                         ; preds = %if.then15
  %dep_map.i = getelementptr inbounds %struct.mesh_path, ptr %call13, i32 0, i32 17, i32 0, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i1 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i1, label %land.lhs.true.i3, label %if.end22.next_hop_deref_protected.exit_crit_edge

if.end22.next_hop_deref_protected.exit_crit_edge: ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %next_hop_deref_protected.exit

land.lhs.true.i3:                                 ; preds = %if.end22
  %call1.i2 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i2)
  %tobool2.not.i = icmp eq i32 %call1.i2, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i3.next_hop_deref_protected.exit_crit_edge, label %land.lhs.true3.i

land.lhs.true.i3.next_hop_deref_protected.exit_crit_edge: ; preds = %land.lhs.true.i3
  call void @__sanitizer_cov_trace_pc() #9
  br label %next_hop_deref_protected.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i3
  %.b6.i = load i1, ptr @next_hop_deref_protected.__warned, align 1
  br i1 %.b6.i, label %land.lhs.true3.i.next_hop_deref_protected.exit_crit_edge, label %if.then.i4

land.lhs.true3.i.next_hop_deref_protected.exit_crit_edge: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %next_hop_deref_protected.exit

if.then.i4:                                       ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @next_hop_deref_protected.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 691, ptr noundef nonnull @.str.12) #7
  br label %next_hop_deref_protected.exit

next_hop_deref_protected.exit:                    ; preds = %if.then.i4, %land.lhs.true3.i.next_hop_deref_protected.exit_crit_edge, %land.lhs.true.i3.next_hop_deref_protected.exit_crit_edge, %if.end22.next_hop_deref_protected.exit_crit_edge
  %next_hop.i = getelementptr inbounds %struct.mesh_path, ptr %call13, i32 0, i32 6
  %21 = ptrtoint ptr %next_hop.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %next_hop.i, align 4
  %addr25 = getelementptr inbounds %struct.sta_info, ptr %22, i32 0, i32 48, i32 1
  %23 = call ptr @memcpy(ptr %next_hop, ptr %addr25, i32 6)
  tail call void @_raw_spin_unlock_bh(ptr noundef %state_lock) #7
  %dec = add i8 %14, -1
  %24 = ptrtoint ptr %prep_elem to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %prep_elem, align 1
  %26 = and i8 %25, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool30.not = icmp eq i8 %26, 0
  %spec.select.i = select i1 %tobool30.not, i32 13, i32 19
  %add.ptr.i5 = getelementptr i8, ptr %prep_elem, i32 %spec.select.i
  %27 = ptrtoint ptr %add.ptr.i5 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %add.ptr.i5, align 1
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #7
  %add.ptr32 = getelementptr i8, ptr %prep_elem, i32 1
  %30 = ptrtoint ptr %add.ptr32 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %add.ptr32, align 1
  %add = add i8 %31, 1
  %add.ptr.i6 = getelementptr i8, ptr %prep_elem, i32 9
  %32 = ptrtoint ptr %add.ptr.i6 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %add.ptr.i6, align 1
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #7
  %spec.select.i7 = select i1 %tobool30.not, i32 27, i32 33
  %add.ptr.i8 = getelementptr i8, ptr %prep_elem, i32 %spec.select.i7
  %35 = ptrtoint ptr %add.ptr.i8 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %add.ptr.i8, align 1
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #7
  call fastcc void @mesh_path_sel_frame_tx(i32 noundef 1, i8 noundef zeroext %25, ptr noundef %cond, i32 noundef %37, i8 noundef zeroext 0, ptr noundef %add.ptr, i32 noundef %34, ptr noundef nonnull %next_hop, i8 noundef zeroext %add, i8 noundef zeroext %dec, i32 noundef %29, i32 noundef %metric, i32 noundef 0, ptr noundef %sdata)
  %call.i9 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i9, label %next_hop_deref_protected.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i12

next_hop_deref_protected.exit.rcu_read_unlock.exit_crit_edge: ; preds = %next_hop_deref_protected.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i12:                                ; preds = %next_hop_deref_protected.exit
  %call1.i10 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i10)
  %tobool.not.i11 = icmp eq i32 %call1.i10, 0
  br i1 %tobool.not.i11, label %land.lhs.true.i12.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i14

land.lhs.true.i12.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i12
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i14:                               ; preds = %land.lhs.true.i12
  %.b4.i13 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i13, label %land.lhs.true2.i14.rcu_read_unlock.exit_crit_edge, label %if.then.i15

land.lhs.true2.i14.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i14
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i15:                                      ; preds = %land.lhs.true2.i14
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i15, %land.lhs.true2.i14.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i12.rcu_read_unlock.exit_crit_edge, %next_hop_deref_protected.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !62
  %38 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i.i.i.i.i16 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i.i16 to ptr
  %preempt_count.i.i.i.i17 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i.i17 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i.i17, align 4
  %sub.i.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i17, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  %fwded_unicast = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 23, i32 1
  %42 = ptrtoint ptr %fwded_unicast to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %fwded_unicast, align 4
  %inc45 = add i32 %43, 1
  store i32 %inc45, ptr %fwded_unicast, align 4
  %fwded_frames = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 23, i32 2
  br label %cleanup.sink.split

fail:                                             ; preds = %if.then20, %rcu_read_lock.exit.fail_crit_edge
  %call.i18 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i18, label %fail.rcu_read_unlock.exit28_crit_edge, label %land.lhs.true.i21

fail.rcu_read_unlock.exit28_crit_edge:            ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit28

land.lhs.true.i21:                                ; preds = %fail
  %call1.i19 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i19)
  %tobool.not.i20 = icmp eq i32 %call1.i19, 0
  br i1 %tobool.not.i20, label %land.lhs.true.i21.rcu_read_unlock.exit28_crit_edge, label %land.lhs.true2.i23

land.lhs.true.i21.rcu_read_unlock.exit28_crit_edge: ; preds = %land.lhs.true.i21
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit28

land.lhs.true2.i23:                               ; preds = %land.lhs.true.i21
  %.b4.i22 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i22, label %land.lhs.true2.i23.rcu_read_unlock.exit28_crit_edge, label %if.then.i24

land.lhs.true2.i23.rcu_read_unlock.exit28_crit_edge: ; preds = %land.lhs.true2.i23
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit28

if.then.i24:                                      ; preds = %land.lhs.true2.i23
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #7
  br label %rcu_read_unlock.exit28

rcu_read_unlock.exit28:                           ; preds = %if.then.i24, %land.lhs.true2.i23.rcu_read_unlock.exit28_crit_edge, %land.lhs.true.i21.rcu_read_unlock.exit28_crit_edge, %fail.rcu_read_unlock.exit28_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !62
  %44 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i.i.i.i.i25 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i.i25 to ptr
  %preempt_count.i.i.i.i26 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i.i.i26, align 4
  %sub.i.i.i27 = add i32 %47, -1
  store volatile i32 %sub.i.i.i27, ptr %preempt_count.i.i.i.i26, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  %dropped_frames_no_route = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 23, i32 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %rcu_read_unlock.exit28, %rcu_read_unlock.exit, %if.then10
  %dropped_frames_no_route.sink29 = phi ptr [ %dropped_frames_no_route, %rcu_read_unlock.exit28 ], [ %fwded_frames, %rcu_read_unlock.exit ], [ %dropped_frames_ttl, %if.then10 ]
  %48 = ptrtoint ptr %dropped_frames_no_route.sink29 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dropped_frames_no_route.sink29, align 4
  %inc51 = add i32 %49, 1
  store i32 %inc51, ptr %dropped_frames_no_route.sink29, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %next_hop) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hwmp_perr_frame_process(ptr noundef %sdata, ptr nocapture noundef readonly %mgmt, ptr noundef %perr_elem) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sa = getelementptr inbounds %struct.ieee80211_mgmt, ptr %mgmt, i32 0, i32 3
  %0 = ptrtoint ptr %perr_elem to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %perr_elem, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp = icmp ult i8 %1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dropped_frames_ttl = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 23, i32 3
  %2 = ptrtoint ptr %dropped_frames_ttl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dropped_frames_ttl, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %dropped_frames_ttl, align 4
  br label %cleanup42

if.end:                                           ; preds = %entry
  %dec = add i8 %1, -1
  %add.ptr = getelementptr i8, ptr %perr_elem, i32 3
  %add.ptr.i = getelementptr i8, ptr %perr_elem, i32 9
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %add.ptr.i, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #7
  %add.ptr.i75 = getelementptr i8, ptr %perr_elem, i32 13
  %7 = ptrtoint ptr %add.ptr.i75 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %add.ptr.i75, align 1
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #7
  %10 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %13, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !61
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %call3 = tail call ptr @mesh_path_lookup(ptr noundef %sdata, ptr noundef %add.ptr) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %rcu_read_lock.exit.endperr_crit_edge, label %if.then4

rcu_read_lock.exit.endperr_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %endperr

if.then4:                                         ; preds = %rcu_read_lock.exit
  %state_lock = getelementptr inbounds %struct.mesh_path, ptr %call3, i32 0, i32 17
  tail call void @_raw_spin_lock_bh(ptr noundef %state_lock) #7
  %dep_map.i = getelementptr inbounds %struct.mesh_path, ptr %call3, i32 0, i32 17, i32 0, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i76 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i76, label %land.lhs.true.i78, label %if.then4.next_hop_deref_protected.exit_crit_edge

if.then4.next_hop_deref_protected.exit_crit_edge: ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %next_hop_deref_protected.exit

land.lhs.true.i78:                                ; preds = %if.then4
  %call1.i77 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i77)
  %tobool2.not.i = icmp eq i32 %call1.i77, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i78.next_hop_deref_protected.exit_crit_edge, label %land.lhs.true3.i

land.lhs.true.i78.next_hop_deref_protected.exit_crit_edge: ; preds = %land.lhs.true.i78
  call void @__sanitizer_cov_trace_pc() #9
  br label %next_hop_deref_protected.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i78
  %.b6.i = load i1, ptr @next_hop_deref_protected.__warned, align 1
  br i1 %.b6.i, label %land.lhs.true3.i.next_hop_deref_protected.exit_crit_edge, label %if.then.i79

land.lhs.true3.i.next_hop_deref_protected.exit_crit_edge: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %next_hop_deref_protected.exit

if.then.i79:                                      ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @next_hop_deref_protected.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 691, ptr noundef nonnull @.str.12) #7
  br label %next_hop_deref_protected.exit

next_hop_deref_protected.exit:                    ; preds = %if.then.i79, %land.lhs.true3.i.next_hop_deref_protected.exit_crit_edge, %land.lhs.true.i78.next_hop_deref_protected.exit_crit_edge, %if.then4.next_hop_deref_protected.exit_crit_edge
  %flags = getelementptr inbounds %struct.mesh_path, ptr %call3, i32 0, i32 16
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %and = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %next_hop_deref_protected.exit.if.else38_crit_edge, label %land.lhs.true

next_hop_deref_protected.exit.if.else38_crit_edge: ; preds = %next_hop_deref_protected.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else38

land.lhs.true:                                    ; preds = %next_hop_deref_protected.exit
  %next_hop.i = getelementptr inbounds %struct.mesh_path, ptr %call3, i32 0, i32 6
  %16 = ptrtoint ptr %next_hop.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %next_hop.i, align 4
  %addr = getelementptr inbounds %struct.sta_info, ptr %17, i32 0, i32 48, i32 1
  %18 = ptrtoint ptr %sa to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sa, align 4
  %20 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr, align 4
  %xor.i = xor i32 %21, %19
  %add.ptr.i80 = getelementptr %struct.ieee80211_mgmt, ptr %mgmt, i32 0, i32 3, i32 4
  %22 = ptrtoint ptr %add.ptr.i80 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %add.ptr.i80, align 2
  %add.ptr1.i = getelementptr %struct.sta_info, ptr %17, i32 0, i32 48, i32 1, i32 4
  %24 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %25, %23
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  %and13 = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %or.cond90 = select i1 %cmp.i, i1 %tobool14.not, i1 false
  br i1 %or.cond90, label %land.lhs.true15, label %land.lhs.true.if.else38_crit_edge

land.lhs.true.if.else38_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else38

land.lhs.true15:                                  ; preds = %land.lhs.true
  %and17 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %land.lhs.true15.if.then24_crit_edge, label %lor.lhs.false

land.lhs.true15.if.then24_crit_edge:              ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24

lor.lhs.false:                                    ; preds = %land.lhs.true15
  %sn = getelementptr inbounds %struct.mesh_path, ptr %call3, i32 0, i32 10
  %26 = ptrtoint ptr %sn to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sn, align 4
  %sub = sub i32 %27, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp19 = icmp slt i32 %sub, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp22 = icmp eq i32 %5, 0
  %or.cond = or i1 %cmp22, %cmp19
  br i1 %or.cond, label %lor.lhs.false.if.then24_crit_edge, label %lor.lhs.false.if.else38_crit_edge

lor.lhs.false.if.else38_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else38

lor.lhs.false.if.then24_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24

if.then24:                                        ; preds = %lor.lhs.false.if.then24_crit_edge, %land.lhs.true15.if.then24_crit_edge
  %and26 = and i32 %15, -2
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and26, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp27.not = icmp eq i32 %5, 0
  %sn31 = getelementptr inbounds %struct.mesh_path, ptr %call3, i32 0, i32 10
  br i1 %cmp27.not, label %if.else, label %if.then24.if.end32_crit_edge

if.then24.if.end32_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.else:                                          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %sn31 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sn31, align 4
  %add = add i32 %30, 1
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then24.if.end32_crit_edge
  %add.sink = phi i32 [ %add, %if.else ], [ %6, %if.then24.if.end32_crit_edge ]
  %31 = ptrtoint ptr %sn31 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add.sink, ptr %sn31, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %state_lock) #7
  %dot11MeshForwarding = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24, i32 21
  %32 = ptrtoint ptr %dot11MeshForwarding to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %dot11MeshForwarding, align 1, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool34.not = icmp eq i8 %33, 0
  br i1 %tobool34.not, label %if.end32.endperr_crit_edge, label %if.end36

if.end32.endperr_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %endperr

if.end36:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %call37 = tail call i32 @mesh_path_error_tx(ptr noundef %sdata, i8 noundef zeroext %dec, ptr noundef %add.ptr, i32 noundef %6, i16 noundef zeroext %9, ptr noundef nonnull @broadcast_addr)
  br label %endperr

if.else38:                                        ; preds = %lor.lhs.false.if.else38_crit_edge, %land.lhs.true.if.else38_crit_edge, %next_hop_deref_protected.exit.if.else38_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %state_lock) #7
  br label %endperr

endperr:                                          ; preds = %if.else38, %if.end36, %if.end32.endperr_crit_edge, %rcu_read_lock.exit.endperr_crit_edge
  %call.i81 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i81, label %endperr.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i84

endperr.rcu_read_unlock.exit_crit_edge:           ; preds = %endperr
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i84:                                ; preds = %endperr
  %call1.i82 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i82)
  %tobool.not.i83 = icmp eq i32 %call1.i82, 0
  br i1 %tobool.not.i83, label %land.lhs.true.i84.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i86

land.lhs.true.i84.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i84
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i86:                               ; preds = %land.lhs.true.i84
  %.b4.i85 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i85, label %land.lhs.true2.i86.rcu_read_unlock.exit_crit_edge, label %if.then.i87

land.lhs.true2.i86.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i86
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i87:                                      ; preds = %land.lhs.true2.i86
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i87, %land.lhs.true2.i86.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i84.rcu_read_unlock.exit_crit_edge, %endperr.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !62
  %34 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i.i.i.i.i88 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i.i88 to ptr
  %preempt_count.i.i.i.i89 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i.i.i89 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i.i.i89, align 4
  %sub.i.i.i = add i32 %37, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i89, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %cleanup42

cleanup42:                                        ; preds = %rcu_read_unlock.exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mesh_path_start_discovery(ptr noundef %sdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mesh_preq_queue_lock = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 20
  tail call void @_raw_spin_lock_bh(ptr noundef %mesh_preq_queue_lock) #7
  %preq_queue_len = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 22
  %0 = ptrtoint ptr %preq_queue_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %preq_queue_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %last_preq = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 18
  %3 = ptrtoint ptr %last_preq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %last_preq, align 4
  %dot11MeshHWMPpreqMinInterval = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24, i32 13
  %5 = ptrtoint ptr %dot11MeshHWMPpreqMinInterval to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %dot11MeshHWMPpreqMinInterval, align 4
  %conv = zext i16 %6 to i32
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv) #7
  %7 = add i32 %4, %call2.i
  %sub = sub i32 %2, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %mesh_preq_queue_lock) #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %preq_queue = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 21
  %8 = ptrtoint ptr %preq_queue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %preq_queue, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %9) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %9, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %18 = ptrtoint ptr %preq_queue_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %preq_queue_len, align 8
  %dec = add i32 %19, -1
  store i32 %dec, ptr %preq_queue_len, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %mesh_preq_queue_lock) #7
  %20 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i.i.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %23, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !61
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %list_del.exit.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

list_del.exit.rcu_read_lock.exit_crit_edge:       ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %list_del.exit
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i174

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i174:                                     ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i174, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %list_del.exit.rcu_read_lock.exit_crit_edge
  %dst = getelementptr inbounds %struct.mesh_preq_queue, ptr %9, i32 0, i32 1
  %call7 = tail call ptr @mesh_path_lookup(ptr noundef %sdata, ptr noundef %dst) #7
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %rcu_read_lock.exit.enddiscovery_crit_edge, label %if.end10

rcu_read_lock.exit.enddiscovery_crit_edge:        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %enddiscovery

if.end10:                                         ; preds = %rcu_read_lock.exit
  %state_lock = getelementptr inbounds %struct.mesh_path, ptr %call7, i32 0, i32 17
  tail call void @_raw_spin_lock_bh(ptr noundef %state_lock) #7
  %flags = getelementptr inbounds %struct.mesh_path, ptr %call7, i32 0, i32 16
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags, align 4
  %and = and i32 %25, 72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end14, label %if.end10.enddiscovery.sink.split_crit_edge

if.end10.enddiscovery.sink.split_crit_edge:       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %enddiscovery.sink.split

if.end14:                                         ; preds = %if.end10
  %and16 = and i32 %25, -33
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and16, ptr %flags, align 4
  %flags17 = getelementptr inbounds %struct.mesh_preq_queue, ptr %9, i32 0, i32 2
  %27 = ptrtoint ptr %flags17 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %flags17, align 2
  %29 = and i8 %28, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool20.not = icmp eq i8 %29, 0
  br i1 %tobool20.not, label %if.else35, label %if.then21

if.then21:                                        ; preds = %if.end14
  %and23 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.else, label %if.then21.enddiscovery.sink.split_crit_edge

if.then21.enddiscovery.sink.split_crit_edge:      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %enddiscovery.sink.split

if.else:                                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  %and28 = and i32 %25, -51
  %or = or i32 %and28, 2
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or, ptr %flags, align 4
  %discovery_retries = getelementptr inbounds %struct.mesh_path, ptr %call7, i32 0, i32 15
  %31 = ptrtoint ptr %discovery_retries to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %discovery_retries, align 4
  %min_discovery_timeout = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24, i32 11
  %32 = ptrtoint ptr %min_discovery_timeout to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %min_discovery_timeout, align 4
  %conv32 = zext i16 %33 to i32
  %call2.i178 = tail call i32 @__msecs_to_jiffies(i32 noundef %conv32) #7
  %discovery_timeout = getelementptr inbounds %struct.mesh_path, ptr %call7, i32 0, i32 14
  %34 = ptrtoint ptr %discovery_timeout to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call2.i178, ptr %discovery_timeout, align 4
  br label %if.end48

if.else35:                                        ; preds = %if.end14
  %35 = and i32 %25, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %if.else35.if.end48_crit_edge, label %if.then43

if.else35.if.end48_crit_edge:                     ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.then43:                                        ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #9
  %and45 = and i32 %25, -35
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and45, ptr %flags, align 4
  br label %enddiscovery.sink.split

if.end48:                                         ; preds = %if.else35.if.end48_crit_edge, %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %38 = load volatile i32, ptr @jiffies, align 128
  %39 = ptrtoint ptr %last_preq to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %last_preq, align 4
  %last_sn_update = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 16
  %40 = ptrtoint ptr %last_sn_update to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %last_sn_update, align 4
  %dot11MeshHWMPnetDiameterTraversalTime = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24, i32 15
  %42 = ptrtoint ptr %dot11MeshHWMPnetDiameterTraversalTime to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %dot11MeshHWMPnetDiameterTraversalTime, align 4
  %conv52 = zext i16 %43 to i32
  %call2.i185 = tail call i32 @__msecs_to_jiffies(i32 noundef %conv52) #7
  %add54 = add i32 %call2.i185, %41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %44 = load volatile i32, ptr @jiffies, align 128
  %sub55 = sub i32 %add54, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub55)
  %cmp56 = icmp slt i32 %sub55, 0
  br i1 %cmp56, label %if.end48.if.then63_crit_edge, label %lor.lhs.false58

if.end48.if.then63_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then63

lor.lhs.false58:                                  ; preds = %if.end48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %45 = load volatile i32, ptr @jiffies, align 128
  %46 = ptrtoint ptr %last_sn_update to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %last_sn_update, align 4
  %sub60 = sub i32 %45, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub60)
  %cmp61 = icmp slt i32 %sub60, 0
  br i1 %cmp61, label %lor.lhs.false58.if.then63_crit_edge, label %lor.lhs.false58.if.end66_crit_edge

lor.lhs.false58.if.end66_crit_edge:               ; preds = %lor.lhs.false58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

lor.lhs.false58.if.then63_crit_edge:              ; preds = %lor.lhs.false58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then63

if.then63:                                        ; preds = %lor.lhs.false58.if.then63_crit_edge, %if.end48.if.then63_crit_edge
  %sn = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 13
  %48 = ptrtoint ptr %sn to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sn, align 8
  %inc = add i32 %49, 1
  store i32 %inc, ptr %sn, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %50 = load volatile i32, ptr @jiffies, align 128
  %51 = ptrtoint ptr %last_sn_update to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %last_sn_update, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then63, %lor.lhs.false58.if.end66_crit_edge
  %element_ttl = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24, i32 6
  %52 = ptrtoint ptr %element_ttl to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %element_ttl, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp72 = icmp eq i8 %53, 0
  br i1 %cmp72, label %if.then74, label %if.end78

if.then74:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  %dropped_frames_ttl = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 23, i32 3
  %54 = ptrtoint ptr %dropped_frames_ttl to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dropped_frames_ttl, align 4
  %inc76 = add i32 %55, 1
  store i32 %inc76, ptr %dropped_frames_ttl, align 4
  br label %enddiscovery.sink.split

if.end78:                                         ; preds = %if.end66
  %dot11MeshHWMPactivePathTimeout = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24, i32 12
  %56 = ptrtoint ptr %dot11MeshHWMPactivePathTimeout to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dot11MeshHWMPactivePathTimeout, align 4
  %mul = mul i32 %57, 1000
  %div173 = lshr i32 %mul, 10
  %58 = ptrtoint ptr %flags17 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %flags17, align 2
  %60 = lshr i8 %59, 1
  %.lobit = and i8 %60, 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %state_lock) #7
  %is_root = getelementptr inbounds %struct.mesh_path, ptr %call7, i32 0, i32 21
  %61 = ptrtoint ptr %is_root to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %is_root, align 4, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool93.not = icmp eq i8 %62, 0
  %rann_snd_addr = getelementptr inbounds %struct.mesh_path, ptr %call7, i32 0, i32 18
  %cond = select i1 %tobool93.not, ptr @broadcast_addr, ptr %rann_snd_addr
  %addr = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 2
  %sn97 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 13
  %63 = ptrtoint ptr %sn97 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %sn97, align 8
  %sn100 = getelementptr inbounds %struct.mesh_path, ptr %call7, i32 0, i32 10
  %65 = ptrtoint ptr %sn100 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %sn100, align 4
  %preq_id = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 14
  %67 = ptrtoint ptr %preq_id to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %preq_id, align 4
  %inc101 = add i32 %68, 1
  store i32 %inc101, ptr %preq_id, align 4
  tail call fastcc void @mesh_path_sel_frame_tx(i32 noundef 0, i8 noundef zeroext 0, ptr noundef %addr, i32 noundef %64, i8 noundef zeroext %.lobit, ptr noundef nonnull %call7, i32 noundef %66, ptr noundef %cond, i8 noundef zeroext 0, i8 noundef zeroext %53, i32 noundef %div173, i32 noundef 0, i32 noundef %68, ptr noundef %sdata)
  tail call void @_raw_spin_lock_bh(ptr noundef %state_lock) #7
  %69 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %flags, align 4
  %and105 = and i32 %70, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %if.then107, label %if.end78.enddiscovery.sink.split_crit_edge

if.end78.enddiscovery.sink.split_crit_edge:       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %enddiscovery.sink.split

if.then107:                                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  %timer = getelementptr inbounds %struct.mesh_path, ptr %call7, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %71 = load volatile i32, ptr @jiffies, align 128
  %discovery_timeout108 = getelementptr inbounds %struct.mesh_path, ptr %call7, i32 0, i32 14
  %72 = ptrtoint ptr %discovery_timeout108 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %discovery_timeout108, align 4
  %add109 = add i32 %73, %71
  %call110 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add109) #7
  br label %enddiscovery.sink.split

enddiscovery.sink.split:                          ; preds = %if.then107, %if.end78.enddiscovery.sink.split_crit_edge, %if.then74, %if.then43, %if.then21.enddiscovery.sink.split_crit_edge, %if.end10.enddiscovery.sink.split_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %state_lock) #7
  br label %enddiscovery

enddiscovery:                                     ; preds = %enddiscovery.sink.split, %rcu_read_lock.exit.enddiscovery_crit_edge
  %call.i189 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i189, label %enddiscovery.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i192

enddiscovery.rcu_read_unlock.exit_crit_edge:      ; preds = %enddiscovery
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i192:                               ; preds = %enddiscovery
  %call1.i190 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i190)
  %tobool.not.i191 = icmp eq i32 %call1.i190, 0
  br i1 %tobool.not.i191, label %land.lhs.true.i192.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i194

land.lhs.true.i192.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i192
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i194:                              ; preds = %land.lhs.true.i192
  %.b4.i193 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i193, label %land.lhs.true2.i194.rcu_read_unlock.exit_crit_edge, label %if.then.i195

land.lhs.true2.i194.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i194
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i195:                                     ; preds = %land.lhs.true2.i194
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i195, %land.lhs.true2.i194.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i192.rcu_read_unlock.exit_crit_edge, %enddiscovery.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !62
  %74 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i.i.i.i.i196 = and i32 %74, -16384
  %75 = inttoptr i32 %and.i.i.i.i.i196 to ptr
  %preempt_count.i.i.i.i197 = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %preempt_count.i.i.i.i197 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %preempt_count.i.i.i.i197, align 4
  %sub.i.i.i = add i32 %77, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i197, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  tail call void @kfree(ptr noundef %9) #7
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mesh_path_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mesh_path_sel_frame_tx(i32 noundef %action, i8 noundef zeroext %flags, ptr noundef %orig_addr, i32 noundef %orig_sn, i8 noundef zeroext %target_flags, ptr noundef %target, i32 noundef %target_sn, ptr nocapture noundef readonly %da, i8 noundef zeroext %hop_count, i8 noundef zeroext %ttl, i32 noundef %lifetime, i32 noundef %metric, i32 noundef %preq_id, ptr noundef %sdata) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %tx_headroom = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 41
  %2 = ptrtoint ptr %tx_headroom to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_headroom, align 8
  %add3 = add i32 %3, 65
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add3, i32 noundef 2592) #7
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %tx_headroom to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_headroom, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %5
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %9, i32 %5
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 26) #7
  %10 = getelementptr inbounds i8, ptr %call.i, i32 2
  %11 = call ptr @memset(ptr %10, i32 0, i32 24)
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -12288, ptr %call.i, align 2
  %da6 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i, i32 0, i32 2
  %13 = call ptr @memcpy(ptr %da6, ptr %da, i32 6)
  %sa = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i, i32 0, i32 3
  %addr = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 2
  %14 = call ptr @memcpy(ptr %sa, ptr %addr, i32 6)
  %bssid = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i, i32 0, i32 4
  %15 = call ptr @memcpy(ptr %bssid, ptr %addr, i32 6)
  %u = getelementptr inbounds %struct.ieee80211_mgmt, ptr %call.i, i32 0, i32 6
  %16 = ptrtoint ptr %u to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 13, ptr %u, align 2
  %u14 = getelementptr inbounds %struct.anon.167, ptr %u, i32 0, i32 1
  %17 = ptrtoint ptr %u14 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %u14, align 1
  %18 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %action, label %sw.default [
    i32 0, label %if.then41
    i32 1, label %if.then37
    i32 3, label %if.else
  ]

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #7
  br label %cleanup

if.then37:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %name19 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.16, ptr noundef %name19, ptr noundef %orig_addr) #7
  %call23 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 33) #7
  %incdec.ptr24 = getelementptr i8, ptr %call23, i32 1
  %19 = ptrtoint ptr %call23 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -125, ptr %call23, align 1
  %incdec.ptr32 = getelementptr i8, ptr %call23, i32 2
  %20 = ptrtoint ptr %incdec.ptr24 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 31, ptr %incdec.ptr24, align 1
  %incdec.ptr33 = getelementptr i8, ptr %call23, i32 3
  %21 = ptrtoint ptr %incdec.ptr32 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %flags, ptr %incdec.ptr32, align 1
  %incdec.ptr34 = getelementptr i8, ptr %call23, i32 4
  %22 = ptrtoint ptr %incdec.ptr33 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %hop_count, ptr %incdec.ptr33, align 1
  %incdec.ptr35 = getelementptr i8, ptr %call23, i32 5
  %23 = ptrtoint ptr %incdec.ptr34 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %ttl, ptr %incdec.ptr34, align 1
  %24 = call ptr @memcpy(ptr %incdec.ptr35, ptr %target, i32 6)
  %add.ptr = getelementptr i8, ptr %call23, i32 11
  %25 = tail call i32 @llvm.bswap.i32(i32 %target_sn) #7
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %25, ptr %add.ptr, align 1
  %add.ptr38 = getelementptr i8, ptr %call23, i32 15
  br label %if.end46

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %name26 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.17, ptr noundef %name26, ptr noundef %orig_addr) #7
  %call30 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 23) #7
  %incdec.ptr31 = getelementptr i8, ptr %call30, i32 1
  %27 = ptrtoint ptr %call30 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 126, ptr %call30, align 1
  %incdec.ptr324 = getelementptr i8, ptr %call30, i32 2
  %28 = ptrtoint ptr %incdec.ptr31 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 21, ptr %incdec.ptr31, align 1
  %incdec.ptr335 = getelementptr i8, ptr %call30, i32 3
  %29 = ptrtoint ptr %incdec.ptr324 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %flags, ptr %incdec.ptr324, align 1
  %incdec.ptr346 = getelementptr i8, ptr %call30, i32 4
  %30 = ptrtoint ptr %incdec.ptr335 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %hop_count, ptr %incdec.ptr335, align 1
  %incdec.ptr357 = getelementptr i8, ptr %call30, i32 5
  %31 = ptrtoint ptr %incdec.ptr346 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %ttl, ptr %incdec.ptr346, align 1
  br label %if.end43

if.then41:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.15, ptr noundef %name, ptr noundef %target) #7
  %call17 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 39) #7
  %incdec.ptr = getelementptr i8, ptr %call17, i32 1
  %32 = ptrtoint ptr %call17 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -126, ptr %call17, align 1
  %incdec.ptr32415 = getelementptr i8, ptr %call17, i32 2
  %33 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 37, ptr %incdec.ptr, align 1
  %incdec.ptr33516 = getelementptr i8, ptr %call17, i32 3
  %34 = ptrtoint ptr %incdec.ptr32415 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %flags, ptr %incdec.ptr32415, align 1
  %incdec.ptr34617 = getelementptr i8, ptr %call17, i32 4
  %35 = ptrtoint ptr %incdec.ptr33516 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %hop_count, ptr %incdec.ptr33516, align 1
  %incdec.ptr35718 = getelementptr i8, ptr %call17, i32 5
  %36 = ptrtoint ptr %incdec.ptr34617 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %ttl, ptr %incdec.ptr34617, align 1
  %37 = tail call i32 @llvm.bswap.i32(i32 %preq_id) #7
  %38 = ptrtoint ptr %incdec.ptr35718 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %37, ptr %incdec.ptr35718, align 1
  %add.ptr42 = getelementptr i8, ptr %call17, i32 9
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.else
  %pos.1 = phi ptr [ %add.ptr42, %if.then41 ], [ %incdec.ptr357, %if.else ]
  %39 = call ptr @memcpy(ptr %pos.1, ptr %orig_addr, i32 6)
  %add.ptr44 = getelementptr i8, ptr %pos.1, i32 6
  %40 = tail call i32 @llvm.bswap.i32(i32 %orig_sn) #7
  %41 = ptrtoint ptr %add.ptr44 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %40, ptr %add.ptr44, align 1
  %add.ptr45 = getelementptr i8, ptr %pos.1, i32 10
  br label %if.end46

if.end46:                                         ; preds = %if.end43, %if.then37
  %cmp11 = phi i1 [ true, %if.then37 ], [ false, %if.end43 ]
  %pos.2 = phi ptr [ %add.ptr38, %if.then37 ], [ %add.ptr45, %if.end43 ]
  %42 = tail call i32 @llvm.bswap.i32(i32 %lifetime) #7
  %43 = ptrtoint ptr %pos.2 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %42, ptr %pos.2, align 1
  %add.ptr47 = getelementptr i8, ptr %pos.2, i32 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %metric) #7
  %45 = ptrtoint ptr %add.ptr47 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 %44, ptr %add.ptr47, align 1
  %add.ptr48 = getelementptr i8, ptr %pos.2, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %action)
  %cmp49 = icmp eq i32 %action, 0
  br i1 %cmp49, label %if.then51, label %if.else56

if.then51:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr52 = getelementptr i8, ptr %pos.2, i32 9
  %46 = ptrtoint ptr %add.ptr48 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %add.ptr48, align 1
  %incdec.ptr53 = getelementptr i8, ptr %pos.2, i32 10
  %47 = ptrtoint ptr %incdec.ptr52 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %target_flags, ptr %incdec.ptr52, align 1
  %48 = call ptr @memcpy(ptr %incdec.ptr53, ptr %target, i32 6)
  br label %if.end63.sink.split

if.else56:                                        ; preds = %if.end46
  br i1 %cmp11, label %if.then59, label %if.else56.if.end63_crit_edge

if.else56.if.end63_crit_edge:                     ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

if.then59:                                        ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #9
  %49 = call ptr @memcpy(ptr %add.ptr48, ptr %orig_addr, i32 6)
  br label %if.end63.sink.split

if.end63.sink.split:                              ; preds = %if.then59, %if.then51
  %.sink = phi i32 [ 14, %if.then59 ], [ 16, %if.then51 ]
  %orig_sn.sink = phi i32 [ %orig_sn, %if.then59 ], [ %target_sn, %if.then51 ]
  %add.ptr60 = getelementptr i8, ptr %pos.2, i32 %.sink
  %50 = tail call i32 @llvm.bswap.i32(i32 %orig_sn.sink) #7
  %51 = ptrtoint ptr %add.ptr60 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 %50, ptr %add.ptr60, align 1
  br label %if.end63

if.end63:                                         ; preds = %if.end63.sink.split, %if.else56.if.end63_crit_edge
  %52 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i.i.i.i.i.i.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %55, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !61
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i.i.i, label %if.end63.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end63.rcu_read_lock.exit.i.i_crit_edge:        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end63
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #7
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.end63.rcu_read_lock.exit.i.i_crit_edge
  %chanctx_conf1.i.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 9
  %56 = ptrtoint ptr %chanctx_conf1.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile ptr, ptr %chanctx_conf1.i.i, align 4
  %call.i.i1 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1)
  %tobool.not.i.i = icmp eq i32 %call.i.i1, 0
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 2199, ptr noundef nonnull @.str.1) #7
  br label %do.end8.i.i

do.end8.i.i:                                      ; preds = %if.then.i.i, %land.lhs.true5.i.i.do.end8.i.i_crit_edge, %land.lhs.true.i.i.do.end8.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end8.i.i_crit_edge
  %tobool10.not.i.i = icmp eq ptr %57, null
  br i1 %tobool10.not.i.i, label %do.end23.i.i, label %if.end39.i.i, !prof !60

do.end23.i.i:                                     ; preds = %do.end8.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 2200, i32 noundef 9, ptr noundef null) #7
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #7
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i4.i, %land.lhs.true2.i.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i3.i.rcu_read_unlock.exit.i_crit_edge, %do.end23.i.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !62
  %58 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i.i.i.i.i.i = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %61, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #7
  br label %cleanup

if.end39.i.i:                                     ; preds = %do.end8.i.i
  %62 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %57, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 4
  tail call void @__ieee80211_tx_skb_tid_band(ptr noundef %sdata, ptr noundef nonnull %call.i.i, i32 noundef 7, i32 noundef %65) #7
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #7
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i8.i.i, %land.lhs.true2.i7.i.i.rcu_read_unlock.exit.i.i_crit_edge, %land.lhs.true.i5.i.i.rcu_read_unlock.exit.i.i_crit_edge, %if.end39.i.i.rcu_read_unlock.exit.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !62
  %66 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i.i.i.i.i9.i.i = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i.i.i.i9.i.i to ptr
  %preempt_count.i.i.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %preempt_count.i.i.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %preempt_count.i.i.i.i10.i.i, align 4
  %sub.i.i.i.i.i = add i32 %69, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i10.i.i, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit.i.i, %rcu_read_unlock.exit.i, %sw.default, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mesh_nexthop_resolve(ptr noundef %sdata, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %addr3 = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  %4 = and i16 %3, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -14336, i16 %4)
  %cmp.i = icmp eq i16 %4, -14336
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 8
  %and = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @mesh_nexthop_lookup(ptr noundef %sdata, ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %call8 = tail call ptr @mesh_path_lookup(ptr noundef %sdata, ptr noundef %addr3) #7
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.then10, label %if.end7.if.end16_crit_edge

if.end7.if.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then10:                                        ; preds = %if.end7
  %call11 = tail call ptr @mesh_path_add(ptr noundef %sdata, ptr noundef %addr3) #7
  %cmp.i59 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i59, label %if.then13, label %if.then10.if.end16_crit_edge

if.then10.if.end16_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mesh_path_discard_frame(ptr noundef %sdata, ptr noundef %skb) #7
  %7 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.then10.if.end16_crit_edge, %if.end7.if.end16_crit_edge
  %mpath.0 = phi ptr [ %call8, %if.end7.if.end16_crit_edge ], [ %call11, %if.then10.if.end16_crit_edge ]
  %flags17 = getelementptr inbounds %struct.mesh_path, ptr %mpath.0, i32 0, i32 16
  %8 = ptrtoint ptr %flags17 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags17, align 4
  %and18 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %land.lhs.true, label %if.end16.if.end22_crit_edge

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

land.lhs.true:                                    ; preds = %if.end16
  %mesh_pp_id.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 8
  %10 = ptrtoint ptr %mesh_pp_id.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mesh_pp_id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp.i60 = icmp eq i8 %11, 1
  br i1 %cmp.i60, label %if.then21, label %land.lhs.true.if.end22_crit_edge

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @mesh_queue_preq(ptr noundef %mpath.0, i8 noundef zeroext 1)
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %land.lhs.true.if.end22_crit_edge, %if.end16.if.end22_crit_edge
  %frame_queue = getelementptr inbounds %struct.mesh_path, ptr %mpath.0, i32 0, i32 8
  %qlen.i = getelementptr inbounds %struct.mesh_path, ptr %mpath.0, i32 0, i32 8, i32 1
  %12 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %13)
  %cmp = icmp ugt i32 %13, 9
  br i1 %cmp, label %if.then24, label %if.end22.if.end27_crit_edge

if.end22.if.end27_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %call26 = tail call ptr @skb_dequeue(ptr noundef %frame_queue) #7
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end22.if.end27_crit_edge
  %skb_to_free.0 = phi ptr [ %call26, %if.then24 ], [ null, %if.end22.if.end27_crit_edge ]
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 8
  %or = or i32 %15, 64
  store i32 %or, ptr %flags, align 8
  tail call void @ieee80211_set_qos_hdr(ptr noundef %sdata, ptr noundef %skb) #7
  tail call void @skb_queue_tail(ptr noundef %frame_queue, ptr noundef %skb) #7
  %tobool30.not = icmp eq ptr %skb_to_free.0, null
  br i1 %tobool30.not, label %if.end27.cleanup_crit_edge, label %if.then31

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mesh_path_discard_frame(ptr noundef %sdata, ptr noundef nonnull %skb_to_free.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %if.end27.cleanup_crit_edge, %if.then13, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then13 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ], [ -2, %if.then31 ], [ -2, %if.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mesh_nexthop_lookup(ptr noundef %sdata, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %addr3 = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 4
  %dot11MeshNolearn = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24, i32 30
  %2 = ptrtoint ptr %dot11MeshNolearn to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dot11MeshNolearn, align 4, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %addr1.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr1.i, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not.i = icmp eq i32 %6, 0
  br i1 %tobool.i.not.i, label %if.end.i73, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i73:                                       ; preds = %land.lhs.true
  %7 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !61
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i.i, label %if.end.i73.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i73.rcu_read_lock.exit.i_crit_edge:        ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i73
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #7
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.i73.rcu_read_lock.exit.i_crit_edge
  %call2.i74 = tail call ptr @sta_info_get(ptr noundef %sdata, ptr noundef %addr3) #7
  %tobool.not.i = icmp eq ptr %call2.i74, null
  br i1 %tobool.not.i, label %rcu_read_lock.exit.i.if.then3.i_crit_edge, label %lor.lhs.false.i

rcu_read_lock.exit.i.if.then3.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3.i

lor.lhs.false.i:                                  ; preds = %rcu_read_lock.exit.i
  %mesh.i = getelementptr inbounds %struct.sta_info, ptr %call2.i74, i32 0, i32 17
  %11 = ptrtoint ptr %mesh.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mesh.i, align 8
  %plink_state.i = getelementptr inbounds %struct.mesh_sta, ptr %12, i32 0, i32 13
  %13 = ptrtoint ptr %plink_state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %plink_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %cmp.not.i = icmp eq i32 %14, 4
  br i1 %cmp.not.i, label %if.end4.i, label %lor.lhs.false.i.if.then3.i_crit_edge

lor.lhs.false.i.if.then3.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3.i

if.then3.i:                                       ; preds = %lor.lhs.false.i.if.then3.i_crit_edge, %rcu_read_lock.exit.i.if.then3.i_crit_edge
  %call.i18.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i18.i, label %if.then3.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i21.i

if.then3.i.rcu_read_unlock.exit.i_crit_edge:      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit.i

land.lhs.true.i21.i:                              ; preds = %if.then3.i
  %call1.i19.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i19.i)
  %tobool.not.i20.i = icmp eq i32 %call1.i19.i, 0
  br i1 %tobool.not.i20.i, label %land.lhs.true.i21.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i23.i

land.lhs.true.i21.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i23.i:                             ; preds = %land.lhs.true.i21.i
  %.b4.i22.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i22.i, label %land.lhs.true2.i23.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i24.i

land.lhs.true2.i23.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit.i

if.then.i24.i:                                    ; preds = %land.lhs.true2.i23.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #7
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i24.i, %land.lhs.true2.i23.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i21.i.rcu_read_unlock.exit.i_crit_edge, %if.then3.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !62
  %15 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i.i.i.i.i25.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i25.i to ptr
  %preempt_count.i.i.i.i26.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i26.i, align 4
  %sub.i.i.i.i = add i32 %18, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i26.i, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %if.end

if.end4.i:                                        ; preds = %lor.lhs.false.i
  %call.i27.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i27.i, label %if.end4.i.mesh_nexthop_lookup_nolearn.exit_crit_edge, label %land.lhs.true.i30.i

if.end4.i.mesh_nexthop_lookup_nolearn.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mesh_nexthop_lookup_nolearn.exit

land.lhs.true.i30.i:                              ; preds = %if.end4.i
  %call1.i28.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i28.i)
  %tobool.not.i29.i = icmp eq i32 %call1.i28.i, 0
  br i1 %tobool.not.i29.i, label %land.lhs.true.i30.i.mesh_nexthop_lookup_nolearn.exit_crit_edge, label %land.lhs.true2.i32.i

land.lhs.true.i30.i.mesh_nexthop_lookup_nolearn.exit_crit_edge: ; preds = %land.lhs.true.i30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mesh_nexthop_lookup_nolearn.exit

land.lhs.true2.i32.i:                             ; preds = %land.lhs.true.i30.i
  %.b4.i31.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i31.i, label %land.lhs.true2.i32.i.mesh_nexthop_lookup_nolearn.exit_crit_edge, label %if.then.i33.i

land.lhs.true2.i32.i.mesh_nexthop_lookup_nolearn.exit_crit_edge: ; preds = %land.lhs.true2.i32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mesh_nexthop_lookup_nolearn.exit

if.then.i33.i:                                    ; preds = %land.lhs.true2.i32.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #7
  br label %mesh_nexthop_lookup_nolearn.exit

mesh_nexthop_lookup_nolearn.exit:                 ; preds = %if.then.i33.i, %land.lhs.true2.i32.i.mesh_nexthop_lookup_nolearn.exit_crit_edge, %land.lhs.true.i30.i.mesh_nexthop_lookup_nolearn.exit_crit_edge, %if.end4.i.mesh_nexthop_lookup_nolearn.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !62
  %19 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i.i.i.i.i34.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i34.i to ptr
  %preempt_count.i.i.i.i35.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i35.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i35.i, align 4
  %sub.i.i.i36.i = add i32 %22, -1
  store volatile i32 %sub.i.i.i36.i, ptr %preempt_count.i.i.i.i35.i, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  %23 = call ptr @memcpy(ptr %addr1.i, ptr %addr3, i32 6)
  %addr2.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 3
  %addr.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 2
  %24 = call ptr @memcpy(ptr %addr2.i, ptr %addr.i, i32 6)
  br label %cleanup

if.end:                                           ; preds = %rcu_read_unlock.exit.i, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call2 = tail call ptr @mesh_path_lookup(ptr noundef %sdata, ptr noundef %addr3) #7
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %flags = getelementptr inbounds %struct.mesh_path, ptr %call2, i32 0, i32 16
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags, align 4
  %and = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end6

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  %exp_time = getelementptr inbounds %struct.mesh_path, ptr %call2, i32 0, i32 13
  %27 = ptrtoint ptr %exp_time to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %exp_time, align 4
  %path_refresh_time = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24, i32 10
  %29 = ptrtoint ptr %path_refresh_time to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %path_refresh_time, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %30) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %32 = add i32 %call2.i, %31
  %sub10 = sub i32 %28, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub10)
  %cmp = icmp slt i32 %sub10, 0
  br i1 %cmp, label %land.lhs.true11, label %if.end6.if.end24_crit_edge

if.end6.if.end24_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

land.lhs.true11:                                  ; preds = %if.end6
  %addr = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 2
  %addr4 = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 6
  %33 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %addr, align 4
  %35 = ptrtoint ptr %addr4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %addr4, align 4
  %xor.i = xor i32 %36, %34
  %add.ptr.i = getelementptr %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 2, i32 4
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.ieee80211_hdr, ptr %1, i32 0, i32 6, i32 4
  %39 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %40, %38
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i76 = icmp eq i32 %or.i, 0
  br i1 %cmp.i76, label %land.lhs.true15, label %land.lhs.true11.if.end24_crit_edge

land.lhs.true11.if.end24_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

land.lhs.true15:                                  ; preds = %land.lhs.true11
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags, align 4
  %43 = and i32 %42, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %if.then23, label %land.lhs.true15.if.end24_crit_edge

land.lhs.true15.if.end24_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then23:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @mesh_queue_preq(ptr noundef nonnull %call2, i8 noundef zeroext 3)
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %land.lhs.true15.if.end24_crit_edge, %land.lhs.true11.if.end24_crit_edge, %if.end6.if.end24_crit_edge
  %next_hop25 = getelementptr inbounds %struct.mesh_path, ptr %call2, i32 0, i32 6
  %45 = ptrtoint ptr %next_hop25 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %next_hop25, align 4
  %call27 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.lhs.true29, label %if.end24.do.end37_crit_edge

if.end24.do.end37_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end37

land.lhs.true29:                                  ; preds = %if.end24
  %call30 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %land.lhs.true29.do.end37_crit_edge, label %land.lhs.true32

land.lhs.true29.do.end37_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end37

land.lhs.true32:                                  ; preds = %land.lhs.true29
  %.b72 = load i1, ptr @mesh_nexthop_lookup.__warned, align 1
  br i1 %.b72, label %land.lhs.true32.do.end37_crit_edge, label %if.then34

land.lhs.true32.do.end37_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end37

if.then34:                                        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @mesh_nexthop_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1248, ptr noundef nonnull @.str.1) #7
  br label %do.end37

do.end37:                                         ; preds = %if.then34, %land.lhs.true32.do.end37_crit_edge, %land.lhs.true29.do.end37_crit_edge, %if.end24.do.end37_crit_edge
  %tobool39.not = icmp eq ptr %46, null
  br i1 %tobool39.not, label %do.end37.cleanup_crit_edge, label %if.then40

do.end37.cleanup_crit_edge:                       ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then40:                                        ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #9
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 2
  %addr42 = getelementptr inbounds %struct.sta_info, ptr %46, i32 0, i32 48, i32 1
  %47 = call ptr @memcpy(ptr %addr1, ptr %addr42, i32 6)
  %addr2 = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 3
  %addr46 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 2
  %48 = call ptr @memcpy(ptr %addr2, ptr %addr46, i32 6)
  tail call void @ieee80211_mps_set_frame_flags(ptr noundef %sdata, ptr noundef nonnull %46, ptr noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %do.end37.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %mesh_nexthop_lookup_nolearn.exit
  %retval.0 = phi i32 [ 0, %if.then40 ], [ 0, %mesh_nexthop_lookup_nolearn.exit ], [ -2, %lor.lhs.false.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ -2, %do.end37.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mesh_path_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mesh_path_discard_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mesh_queue_preq(ptr noundef %mpath, i8 noundef zeroext %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sdata1 = getelementptr inbounds %struct.mesh_path, ptr %mpath, i32 0, i32 5
  %0 = ptrtoint ptr %sdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdata1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2592, i32 noundef 16) #10
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 10
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.19, ptr noundef %name) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %mesh_preq_queue_lock = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 20
  tail call void @_raw_spin_lock_bh(ptr noundef %mesh_preq_queue_lock) #7
  %preq_queue_len = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 22
  %3 = ptrtoint ptr %preq_queue_len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %preq_queue_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %4)
  %cmp = icmp eq i32 %4, 64
  br i1 %cmp, label %if.then2, label %if.end10

if.then2:                                         ; preds = %if.end
  tail call void @_raw_spin_unlock_bh(ptr noundef %mesh_preq_queue_lock) #7
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  %call4 = tail call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.mesh_queue_preq) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then2.cleanup_crit_edge, label %if.then6

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %name7 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 10
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.20, ptr noundef %name7) #7
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %state_lock = getelementptr inbounds %struct.mesh_path, ptr %mpath, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %state_lock) #7
  %flags11 = getelementptr inbounds %struct.mesh_path, ptr %mpath, i32 0, i32 16
  %5 = ptrtoint ptr %flags11 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags11, align 4
  %and = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end16, label %if.then13

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock(ptr noundef %state_lock) #7
  tail call void @_raw_spin_unlock_bh(ptr noundef %mesh_preq_queue_lock) #7
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  %dst = getelementptr inbounds %struct.mesh_preq_queue, ptr %call7.i, i32 0, i32 1
  %7 = call ptr @memcpy(ptr %dst, ptr %mpath, i32 6)
  %flags20 = getelementptr inbounds %struct.mesh_preq_queue, ptr %call7.i, i32 0, i32 2
  %8 = ptrtoint ptr %flags20 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %flags, ptr %flags20, align 2
  %or = or i32 %6, 32
  %9 = ptrtoint ptr %flags11 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or, ptr %flags11, align 4
  tail call void @_raw_spin_unlock(ptr noundef %state_lock) #7
  %preq_queue = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 21
  %prev.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 21, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %11, ptr noundef %preq_queue) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end16.list_add_tail.exit_crit_edge

if.end16.list_add_tail.exit_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i, ptr %prev.i, align 4
  %13 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %preq_queue, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %call7.i, ptr %11, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end16.list_add_tail.exit_crit_edge
  %16 = ptrtoint ptr %preq_queue_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %preq_queue_len, align 8
  %inc = add i32 %17, 1
  store i32 %inc, ptr %preq_queue_len, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %mesh_preq_queue_lock) #7
  %last_preq = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 18
  %18 = ptrtoint ptr %last_preq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %last_preq, align 4
  %dot11MeshHWMPpreqMinInterval = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 24, i32 13
  %20 = ptrtoint ptr %dot11MeshHWMPpreqMinInterval to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %dot11MeshHWMPpreqMinInterval, align 4
  %conv = zext i16 %21 to i32
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv) #7
  %add = add i32 %call2.i, %19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp28 = icmp slt i32 %sub, 0
  br i1 %cmp28, label %if.then30, label %if.else

if.then30:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  %local = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 7
  %23 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %local, align 4
  %work = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 40
  tail call void @ieee80211_queue_work(ptr noundef %24, ptr noundef %work) #7
  br label %cleanup

if.else:                                          ; preds = %list_add_tail.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %26 = ptrtoint ptr %last_preq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %last_preq, align 4
  %sub32 = sub i32 %25, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub32)
  %cmp33 = icmp slt i32 %sub32, 0
  br i1 %cmp33, label %if.then35, label %if.else47

if.then35:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %29 = ptrtoint ptr %dot11MeshHWMPpreqMinInterval to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %dot11MeshHWMPpreqMinInterval, align 4
  %conv39 = zext i16 %30 to i32
  %call2.i94 = tail call i32 @__msecs_to_jiffies(i32 noundef %conv39) #7
  %31 = xor i32 %call2.i94, -1
  %sub42 = add i32 %28, %31
  %32 = ptrtoint ptr %last_preq to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %sub42, ptr %last_preq, align 4
  %local44 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 7
  %33 = ptrtoint ptr %local44 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %local44, align 4
  %work46 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 40
  tail call void @ieee80211_queue_work(ptr noundef %34, ptr noundef %work46) #7
  br label %cleanup

if.else47:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %mesh_path_timer = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 1
  %35 = ptrtoint ptr %dot11MeshHWMPpreqMinInterval to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %dot11MeshHWMPpreqMinInterval, align 4
  %conv52 = zext i16 %36 to i32
  %call2.i101 = tail call i32 @__msecs_to_jiffies(i32 noundef %conv52) #7
  %add54 = add i32 %call2.i101, %27
  %call55 = tail call i32 @mod_timer(ptr noundef %mesh_path_timer, i32 noundef %add54) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else47, %if.then35, %if.then30, %if.then13, %if.then6, %if.then2.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_set_qos_hdr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_mps_set_frame_flags(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mesh_path_timer(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -40
  %sdata1 = getelementptr i8, ptr %t, i32 -8
  %0 = ptrtoint ptr %sdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdata1, align 4
  %local = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %local, align 4
  %quiescing = getelementptr inbounds %struct.ieee80211_local, ptr %3, i32 0, i32 34
  %4 = ptrtoint ptr %quiescing to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %quiescing, align 4, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %state_lock = getelementptr i8, ptr %t, i32 140
  tail call void @_raw_spin_lock_bh(ptr noundef %state_lock) #7
  %flags = getelementptr i8, ptr %t, i32 136
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %8 = and i32 %7, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %.not = icmp eq i32 %8, 2
  br i1 %.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %and8 = and i32 %7, -19
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and8, ptr %flags, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %state_lock) #7
  br label %cleanup

if.else:                                          ; preds = %if.end
  %discovery_retries = getelementptr i8, ptr %t, i32 132
  %10 = ptrtoint ptr %discovery_retries to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %discovery_retries, align 4
  %dot11MeshHWMPmaxPREQretries = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 57, i32 0, i32 24, i32 9
  %12 = ptrtoint ptr %dot11MeshHWMPmaxPREQretries to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dot11MeshHWMPmaxPREQretries, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %13)
  %cmp = icmp ult i8 %11, %13
  br i1 %cmp, label %if.then12, label %if.else17

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %inc = add nuw i8 %11, 1
  %14 = ptrtoint ptr %discovery_retries to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %inc, ptr %discovery_retries, align 4
  %discovery_timeout = getelementptr i8, ptr %t, i32 128
  %15 = ptrtoint ptr %discovery_timeout to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %discovery_timeout, align 4
  %mul = shl i32 %16, 1
  store i32 %mul, ptr %discovery_timeout, align 4
  %and15 = and i32 %7, -33
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and15, ptr %flags, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %state_lock) #7
  tail call fastcc void @mesh_queue_preq(ptr noundef %add.ptr, i8 noundef zeroext 0)
  br label %cleanup

if.else17:                                        ; preds = %if.else
  %and19 = and i32 %7, -51
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and19, ptr %flags, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %exp_time = getelementptr i8, ptr %t, i32 124
  %20 = ptrtoint ptr %exp_time to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %exp_time, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %state_lock) #7
  %is_gate = getelementptr i8, ptr %t, i32 201
  %21 = ptrtoint ptr %is_gate to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %is_gate, align 1, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool21.not = icmp eq i8 %22, 0
  br i1 %tobool21.not, label %land.lhs.true, label %if.else17.if.else29_crit_edge

if.else17.if.else29_crit_edge:                    ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else29

land.lhs.true:                                    ; preds = %if.else17
  %call = tail call i32 @mesh_gate_num(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp22 = icmp sgt i32 %call, 0
  br i1 %cmp22, label %if.then24, label %land.lhs.true.if.else29_crit_edge

land.lhs.true.if.else29_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else29

if.then24:                                        ; preds = %land.lhs.true
  %call25 = tail call i32 @mesh_path_send_to_gates(ptr noundef %add.ptr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then24.cleanup_crit_edge, label %if.then27

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then27:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %1, i32 0, i32 10
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.2, ptr noundef %name) #7
  br label %cleanup

if.else29:                                        ; preds = %land.lhs.true.if.else29_crit_edge, %if.else17.if.else29_crit_edge
  tail call void @mesh_path_flush_pending(ptr noundef %add.ptr) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else29, %if.then27, %if.then24.cleanup_crit_edge, %if.then12, %if.then6, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mesh_gate_num(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mesh_path_send_to_gates(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sdata_dbg(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mesh_path_flush_pending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mesh_path_tx_root_frame(ptr noundef %sdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dot11MeshGateAnnouncementProtocol = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24, i32 20
  %0 = ptrtoint ptr %dot11MeshGateAnnouncementProtocol to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dot11MeshGateAnnouncementProtocol, align 4, !range !63
  %dot11MeshHWMPRootMode = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24, i32 16
  %2 = ptrtoint ptr %dot11MeshHWMPRootMode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dot11MeshHWMPRootMode, align 2
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %3, label %sw.default [
    i8 4, label %sw.bb
    i8 3, label %sw.bb7
    i8 2, label %entry.sw.bb10_crit_edge
  ]

entry.sw.bb10_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb10

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dot11MeshHWMPRannInterval = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24, i32 19
  %5 = ptrtoint ptr %dot11MeshHWMPRannInterval to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %dot11MeshHWMPRannInterval, align 2
  %conv = zext i16 %6 to i32
  %addr = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 2
  %sn = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 13
  %7 = ptrtoint ptr %sn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sn, align 8
  %inc = add i32 %8, 1
  store i32 %inc, ptr %sn, align 8
  %element_ttl = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24, i32 6
  %9 = ptrtoint ptr %element_ttl to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %element_ttl, align 2
  tail call fastcc void @mesh_path_sel_frame_tx(i32 noundef 3, i8 noundef zeroext %1, ptr noundef %addr, i32 noundef %inc, i8 noundef zeroext 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull @broadcast_addr, i8 noundef zeroext 0, i8 noundef zeroext %10, i32 noundef %conv, i32 noundef 0, i32 noundef 0, ptr noundef %sdata)
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %11 = or i8 %1, 4
  br label %sw.bb10

sw.bb10:                                          ; preds = %sw.bb7, %entry.sw.bb10_crit_edge
  %flags.0 = phi i8 [ %1, %entry.sw.bb10_crit_edge ], [ %11, %sw.bb7 ]
  %dot11MeshHWMPactivePathToRootTimeout = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24, i32 24
  %12 = ptrtoint ptr %dot11MeshHWMPactivePathToRootTimeout to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dot11MeshHWMPactivePathToRootTimeout, align 4
  %addr16 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59, i32 2
  %sn18 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 13
  %14 = ptrtoint ptr %sn18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sn18, align 8
  %inc19 = add i32 %15, 1
  store i32 %inc19, ptr %sn18, align 8
  %element_ttl21 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 24, i32 6
  %16 = ptrtoint ptr %element_ttl21 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %element_ttl21, align 2
  %preq_id = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 14
  %18 = ptrtoint ptr %preq_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %preq_id, align 4
  %inc22 = add i32 %19, 1
  store i32 %inc22, ptr %preq_id, align 4
  tail call fastcc void @mesh_path_sel_frame_tx(i32 noundef 0, i8 noundef zeroext %flags.0, ptr noundef %addr16, i32 noundef %inc19, i8 noundef zeroext 5, ptr noundef nonnull @broadcast_addr, i32 noundef 0, ptr noundef nonnull @broadcast_addr, i8 noundef zeroext 0, i8 noundef zeroext %17, i32 noundef %13, i32 noundef 0, i32 noundef %19, ptr noundef %sdata)
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 10
  tail call void (i1, ptr, ...) @__sdata_dbg(i1 noundef zeroext true, ptr noundef nonnull @.str.3, ptr noundef %name) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb10, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
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

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee802_11_parse_elems_crc(ptr noundef, i32 noundef, i1 noundef zeroext, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mesh_path_assign_nexthop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mesh_path_tx_pending(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mesh_path_add_gate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ieee80211_tx_skb_tid_band(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__printk_ratelimit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !13, !15, !16, !18, !20, !22, !24, !26, !28, !29, !31, !33, !35, !37, !39, !41, !43, !44, !46, !48}
!llvm.named.register.sp = !{!50}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/mac80211/mesh_hwmp.c", i32 348, i32 7}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../net/mac80211/mesh_hwmp.c", i32 1248, i32 13}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../net/mac80211/mesh_hwmp.c", i32 1288, i32 5}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../net/mac80211/mesh_hwmp.c", i32 1324, i32 3}
!9 = distinct !{null, !10, !"__warned", i1 false, i1 false}
!10 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!11 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/mac80211/mesh_hwmp.c", i32 583, i32 2}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/mac80211/mesh_hwmp.c", i32 586, i32 3}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/mac80211/mesh_hwmp.c", i32 641, i32 4}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/mac80211/mesh_hwmp.c", i32 662, i32 3}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/mac80211/mesh_hwmp.c", i32 706, i32 2}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../net/mac80211/mesh_hwmp.c", i32 690, i32 9}
!28 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/mac80211/mesh_hwmp.c", i32 836, i32 2}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/mac80211/mesh_hwmp.c", i32 873, i32 3}
!33 = !{ptr @broadcast_addr, !34, !"broadcast_addr", i1 false, i1 false}
!34 = !{!"../net/mac80211/mesh_hwmp.c", i32 98, i32 17}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/mac80211/mesh_hwmp.c", i32 135, i32 3}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/mac80211/mesh_hwmp.c", i32 141, i32 3}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/mac80211/mesh_hwmp.c", i32 147, i32 3}
!41 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!42 = !{!"../net/mac80211/ieee80211_i.h", i32 2199, i32 17}
!43 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/mac80211/mesh_hwmp.c", i32 983, i32 3}
!46 = !{ptr @__func__.mesh_queue_preq, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../net/mac80211/mesh_hwmp.c", i32 991, i32 7}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/mac80211/mesh_hwmp.c", i32 992, i32 4}
!50 = !{!"sp"}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{!"branch_weights", i32 1, i32 2000}
!61 = !{i64 2149954018}
!62 = !{i64 2149954284}
!63 = !{i8 0, i8 2}
