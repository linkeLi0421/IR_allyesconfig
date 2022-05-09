; ModuleID = '/llk/IR_all_yes/net/mac80211/wme.c_pt.bc'
source_filename = "../net/mac80211/wme.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sk_buff = type { %union.anon.48, %union.anon.51, %union.anon.52, [48 x i8], %union.anon.53, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.55, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { ptr, ptr, %union.anon.50 }
%union.anon.50 = type { ptr }
%union.anon.51 = type { ptr }
%union.anon.52 = type { i64 }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { i32, ptr }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.57, i32, i32, i32, i16, i16, %union.anon.59, i32, %union.anon.60, %union.anon.61, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.57 = type { i32 }
%union.anon.59 = type { i32 }
%union.anon.60 = type { i32 }
%union.anon.61 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ieee80211_sub_if_data = type { %struct.list_head, %struct.wireless_dev, %struct.list_head, i32, i32, %struct.delayed_work, ptr, ptr, i32, i32, [16 x i8], %struct.ieee80211_fragment_cache, i16, i8, [8 x ptr], ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8, i32, %struct.atomic_t, [4 x %struct.ieee80211_tx_queue_params], ptr, [4 x %struct.airtime_info], %struct.work_struct, i8, %struct.cfg80211_chan_def, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.cfg80211_chan_def, i8, i8, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, i8, i32, i32, i32, i8, %struct.delayed_work, ptr, [6 x i32], [6 x i8], [6 x [10 x i8]], [6 x i8], [6 x [8 x i16]], [6 x i32], i8, %union.anon.183, %struct.anon.217, %struct.ieee80211_vif }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.156, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.156 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.cfg80211_bss_selection = type { i32, %union.anon.157 }
%union.anon.157 = type { %struct.cfg80211_bss_select_adjust }
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
%struct.sk_buff_head = type { %union.anon.76, i32, %struct.spinlock }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.183 = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i32, i8, [32 x i8], i32, i8, i8, i8, i8, i8, i32, i32, %struct.atomic_t, i32, i32, i32, ptr, %struct.spinlock, %struct.mesh_preq_queue, i32, %struct.mesh_stats, %struct.mesh_config, %struct.atomic_t, i32, i8, i32, ptr, ptr, i8, i32, i8, ptr, i64, %struct.spinlock, i32, i32, i32, %struct.ps_data, ptr, i32, i8, i16, i32, %struct.mesh_table, %struct.mesh_table, i32, i32 }
%struct.mesh_preq_queue = type { %struct.list_head, [6 x i8], i8 }
%struct.mesh_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.mesh_config = type { i16, i16, i16, i16, i8, i8, i8, i8, i32, i8, i32, i16, i32, i16, i16, i16, i8, i8, i8, i16, i8, i8, i32, i16, i32, i16, i16, i32, i16, i32, i8 }
%struct.ps_data = type { [252 x i8], %struct.sk_buff_head, %struct.atomic_t, i32, i8 }
%struct.mesh_table = type { %struct.hlist_head, %struct.spinlock, %struct.rhashtable, %struct.hlist_head, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.anon.217 = type { ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.160, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.160 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.161] }
%struct.anon.161 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.158, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.158 = type { i32, i16 }
%struct.ieee80211_sta_tx_tspec = type { i32, i32, i8, i8, i32, i32, i8 }
%struct.sta_info = type { %struct.list_head, %struct.list_head, %struct.callback_head, %struct.rhlist_head, [6 x i8], ptr, ptr, [8 x ptr], [4 x ptr], i8, ptr, ptr, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.work_struct, i16, i8, i8, i8, i32, i32, %struct.spinlock, [4 x %struct.sk_buff_head], [4 x %struct.sk_buff_head], i32, i32, i64, i32, %struct.ieee80211_sta_rx_stats, %struct.anon.171, [17 x i16], %struct.anon.172, %struct.anon.173, [16 x i16], [4 x %struct.airtime_info], %struct.sta_ampdu_mlme, ptr, i32, i32, ptr, %struct.codel_params, i8, %struct.cfg80211_chan_def, %struct.ieee80211_fragment_cache, %struct.ieee80211_sta }
%struct.callback_head = type { ptr, ptr }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.ieee80211_sta_rx_stats = type { i32, i32, i32, i32, i32, i32, i8, [4 x i8], i32, %struct.u64_stats_sync, i64, [17 x i64] }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.anon.171 = type { %struct.ewma_signal, [4 x %struct.ewma_signal] }
%struct.ewma_signal = type { i32 }
%struct.anon.172 = type { i32, i32, i32, i32, i32, [17 x i64], [17 x i64], i32, i8, i8, %struct.ewma_avg_signal }
%struct.ewma_avg_signal = type { i32 }
%struct.anon.173 = type { [4 x i64], [4 x i64], %struct.ieee80211_tx_rate, %struct.rate_info, [17 x i64] }
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
%struct.ieee80211_local = type { %struct.ieee80211_hw, %struct.fq, ptr, %struct.codel_params, [4 x %struct.airtime_sched_info], i16, i32, %struct.atomic_t, ptr, ptr, [16 x i32], [16 x [11 x i32]], %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i8, i8, %struct.spinlock, %struct.work_struct, %struct.netdev_hw_addr_list, i8, i8, i8, i8, i8, i8, i8, i8, %struct.work_struct, i8, i8, i32, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.mutex, %struct.spinlock, i32, %struct.list_head, %struct.rhltable, %struct.timer_list, i32, [16 x %struct.sk_buff_head], %struct.tasklet_struct, %struct.tasklet_struct, [16 x %struct.atomic_t], %struct.atomic_t, ptr, %struct.arc4_ctx, %struct.arc4_ctx, i32, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.mutex, i32, %struct.cfg80211_ssid, ptr, ptr, ptr, %struct.cfg80211_chan_def, i32, i32, i32, i32, %struct.cfg80211_scan_info, %struct.work_struct, ptr, ptr, [6 x i8], i32, i32, %struct.delayed_work, ptr, %struct.cfg80211_chan_def, ptr, %struct.list_head, %struct.mutex, %struct.led_trigger, %struct.led_trigger, %struct.led_trigger, %struct.led_trigger, %struct.led_trigger, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, %struct.work_struct, %struct.work_struct, %struct.timer_list, %struct.notifier_block, %struct.notifier_block, i32, i32, i32, %struct.work_struct, %struct.local_debugfsdentries, i8, %struct.delayed_work, %struct.list_head, %struct.work_struct, %struct.work_struct, i32, i64, %struct.idr, %struct.spinlock, ptr, ptr, %struct.cfg80211_chan_def, [8 x i8] }
%struct.fq = type { ptr, ptr, %struct.list_head, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.airtime_sched_info = type { %struct.spinlock, %struct.rb_root_cached, ptr, %struct.list_head, i64, i64, i64, i64, i64, i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rhltable = type { %struct.rhashtable }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.170, i32 }
%union.anon.170 = type { ptr }
%struct.arc4_ctx = type { [256 x i32], i32, i32 }
%struct.cfg80211_ssid = type { [32 x i8], i8 }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.led_trigger = type { ptr, ptr, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.local_debugfsdentries = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }

@ieee802_1d_to_ac = dso_local constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 2, i32 3, i32 3, i32 2, i32 1, i32 1, i32 0, i32 0], [32 x i8] zeroinitializer }, align 32
@__ieee80211_select_queue.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/mac80211/wme.c\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@ieee80211_select_queue.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@switch.table.ieee80211_select_queue_80211 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 2, i32 5, i32 5, i32 2, i32 3, i32 3, i32 5, i32 5], [32 x i8] zeroinitializer }, align 32
@switch.table.__ieee80211_select_queue = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 2, i32 5, i32 5, i32 2, i32 3, i32 3, i32 5, i32 5], [32 x i8] zeroinitializer }, align 32
@switch.table.__ieee80211_select_queue.5 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 3, i32 2, i32 1, i32 0, i32 5, i32 4, i32 7, i32 6], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 11]
@__sancov_gen_cov_switch_values.6 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"ieee802_1d_to_ac\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 22, i32 11 }
@___asan_gen_.14 = private constant [22 x i8] c"../net/mac80211/wme.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 170, i32 12 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 695, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 723, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant [42 x i8] c"switch.table.ieee80211_select_queue_80211\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [38 x i8] c"switch.table.__ieee80211_select_queue\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [40 x i8] c"switch.table.__ieee80211_select_queue.5\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @ieee802_1d_to_ac, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @switch.table.ieee80211_select_queue_80211, ptr @switch.table.__ieee80211_select_queue, ptr @switch.table.__ieee80211_select_queue.5], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ieee802_1d_to_ac to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ieee80211_select_queue_80211 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.__ieee80211_select_queue to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.__ieee80211_select_queue.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @ieee80211_select_queue_80211(ptr nocapture noundef readonly %sdata, ptr nocapture noundef %skb, ptr nocapture noundef readonly %hdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %local1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %2 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %local1, align 4
  %queues = getelementptr inbounds %struct.ieee80211_hw, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %queues to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %queues, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %5)
  %cmp = icmp ult i16 %5, 4
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %hdr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %hdr, align 2
  %8 = and i16 %7, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %8)
  %cmp.i = icmp eq i16 %8, 2048
  br i1 %cmp.i, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %9 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 7, ptr %priority, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %10 = and i16 %7, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %10)
  %cmp.i32 = icmp eq i16 %10, -30720
  br i1 %cmp.i32, label %if.end15, label %if.then10

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %priority11 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %11 = ptrtoint ptr %priority11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %priority11, align 4
  br label %cleanup

if.end15:                                         ; preds = %if.end7
  %12 = and i16 %7, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %12)
  %cmp.i.i = icmp eq i16 %12, 3
  %retval.0.v.i = select i1 %cmp.i.i, i32 30, i32 24
  %retval.0.i = getelementptr i8, ptr %hdr, i32 %retval.0.v.i
  %13 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %retval.0.i, align 1
  %15 = and i8 %14, 7
  %and18 = zext i8 %15 to i32
  %priority19 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %16 = ptrtoint ptr %priority19 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and18, ptr %priority19, align 4
  %wmm_acm.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 13
  %17 = ptrtoint ptr %wmm_acm.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %wmm_acm.i, align 2
  %conv54.i = zext i8 %18 to i32
  %shl55.i = shl nuw nsw i32 1, %and18
  %and56.i = and i32 %shl55.i, %conv54.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i)
  %tobool.not57.i = icmp eq i32 %and56.i, 0
  br i1 %tobool.not57.i, label %if.end15.while.end.i_crit_edge, label %while.body.lr.ph.i

if.end15.while.end.i_crit_edge:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.end15
  %tx_tspec.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 40, i32 1, i32 2, i32 0, i32 0, i32 4, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %switch.lookup.while.body.i_crit_edge, %while.body.lr.ph.i
  %19 = phi i32 [ %and18, %while.body.lr.ph.i ], [ %switch.load, %switch.lookup.while.body.i_crit_edge ]
  %arrayidx.i = getelementptr [8 x i32], ptr @ieee802_1d_to_ac, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i, align 4
  %admitted_time.i = getelementptr [4 x %struct.ieee80211_sta_tx_tspec], ptr %tx_tspec.i, i32 0, i32 %21, i32 1
  %22 = ptrtoint ptr %admitted_time.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %admitted_time.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool3.not.i = icmp eq i32 %23, 0
  br i1 %tobool3.not.i, label %while.body.i.if.end.i_crit_edge, label %land.lhs.true.i

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %up.i = getelementptr [4 x %struct.ieee80211_sta_tx_tspec], ptr %tx_tspec.i, i32 0, i32 %21, i32 3
  %24 = ptrtoint ptr %up.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %up.i, align 1
  %conv7.i = sext i8 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv7.i)
  %cmp.i33 = icmp eq i32 %19, %conv7.i
  br i1 %cmp.i33, label %land.lhs.true.i.ieee80211_downgrade_queue.exit_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i.ieee80211_downgrade_queue.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ieee80211_downgrade_queue.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %while.body.i.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %19)
  %26 = icmp ult i32 %19, 8
  br i1 %26, label %switch.hole_check, label %if.end.i.while.end.i_crit_edge

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

switch.hole_check:                                ; preds = %if.end.i
  %switch.maskindex = trunc i32 %19 to i8
  %switch.shifted = lshr i8 -7, %switch.maskindex
  %27 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %switch.lobit.not = icmp eq i8 %27, 0
  br i1 %switch.lobit.not, label %switch.hole_check.while.end.i_crit_edge, label %switch.lookup

switch.hole_check.while.end.i_crit_edge:          ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.ieee80211_select_queue_80211, i32 0, i32 %19
  %28 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %28)
  %switch.load = load i32, ptr %switch.gep, align 4
  %29 = ptrtoint ptr %priority19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %switch.load, ptr %priority19, align 4
  %30 = ptrtoint ptr %wmm_acm.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %wmm_acm.i, align 2
  %conv.i = zext i8 %31 to i32
  %shl.i = shl nuw nsw i32 1, %switch.load
  %and.i = and i32 %shl.i, %conv.i
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %switch.lookup.while.end.i_crit_edge, label %switch.lookup.while.body.i_crit_edge

switch.lookup.while.body.i_crit_edge:             ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

switch.lookup.while.end.i_crit_edge:              ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.end.i:                                      ; preds = %switch.lookup.while.end.i_crit_edge, %switch.hole_check.while.end.i_crit_edge, %if.end.i.while.end.i_crit_edge, %if.end15.while.end.i_crit_edge
  %32 = ptrtoint ptr %priority19 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %priority19, align 4
  %arrayidx27.i = getelementptr [8 x i32], ptr @ieee802_1d_to_ac, i32 0, i32 %33
  %34 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx27.i, align 4
  br label %ieee80211_downgrade_queue.exit

ieee80211_downgrade_queue.exit:                   ; preds = %while.end.i, %land.lhs.true.i.ieee80211_downgrade_queue.exit_crit_edge
  %retval.2.in.i = phi i32 [ %35, %while.end.i ], [ %21, %land.lhs.true.i.ieee80211_downgrade_queue.exit_crit_edge ]
  %retval.2.i = trunc i32 %retval.2.in.i to i16
  br label %cleanup

cleanup:                                          ; preds = %ieee80211_downgrade_queue.exit, %if.then10, %if.then4, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %retval.2.i, %ieee80211_downgrade_queue.exit ], [ 2, %if.then10 ], [ 0, %if.then4 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @__ieee80211_select_queue(ptr noundef %sdata, ptr noundef readonly %sta, ptr noundef %skb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vif = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59
  %0 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vif, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %if.else [
    i32 7, label %entry.if.end11_crit_edge
    i32 11, label %entry.if.end11_crit_edge59
  ]

entry.if.end11_crit_edge59:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.else:                                          ; preds = %entry
  %tobool.not = icmp eq ptr %sta, null
  br i1 %tobool.not, label %if.else.if.then10_crit_edge, label %if.then4

if.else.if.then10_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10

if.then4:                                         ; preds = %if.else
  %wme = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 48, i32 10
  %3 = ptrtoint ptr %wme to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %wme, align 4, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool6.not = icmp eq i8 %4, 0
  br i1 %tobool6.not, label %if.then4.if.then10_crit_edge, label %if.then4.if.end11_crit_edge

if.then4.if.end11_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then4.if.then10_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10

if.then10:                                        ; preds = %if.then4.if.then10_crit_edge, %if.else.if.then10_crit_edge
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %5 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %priority, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.then4.if.end11_crit_edge, %entry.if.end11_crit_edge, %entry.if.end11_crit_edge59
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %6 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %protocol, align 8
  %control_port_protocol = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 20
  %8 = ptrtoint ptr %control_port_protocol to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %control_port_protocol, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %9)
  %cmp13 = icmp eq i16 %7, %9
  br i1 %cmp13, label %if.end11.downgrade_crit_edge, label %if.end17

if.end11.downgrade_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %downgrade

if.end17:                                         ; preds = %if.end11
  %qos_map18 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 27
  %10 = ptrtoint ptr %qos_map18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %qos_map18, align 8
  %call = tail call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool20.not = icmp eq i32 %call, 0
  br i1 %tobool20.not, label %land.lhs.true, label %if.end17.do.end28_crit_edge

if.end17.do.end28_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end28

land.lhs.true:                                    ; preds = %if.end17
  %call21 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true.do.end28_crit_edge, label %land.lhs.true23

land.lhs.true.do.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end28

land.lhs.true23:                                  ; preds = %land.lhs.true
  %.b49 = load i1, ptr @__ieee80211_select_queue.__warned, align 1
  br i1 %.b49, label %land.lhs.true23.do.end28_crit_edge, label %if.then25

land.lhs.true23.do.end28_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end28

if.then25:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @__ieee80211_select_queue.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 170, ptr noundef nonnull @.str.1) #6
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %land.lhs.true23.do.end28_crit_edge, %land.lhs.true.do.end28_crit_edge, %if.end17.do.end28_crit_edge
  %call32 = tail call i32 @cfg80211_classify8021d(ptr noundef %skb, ptr noundef %11) #6
  br label %downgrade

downgrade:                                        ; preds = %do.end28, %if.end11.downgrade_crit_edge
  %call32.sink = phi i32 [ %call32, %do.end28 ], [ 7, %if.end11.downgrade_crit_edge ]
  %priority33 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %12 = ptrtoint ptr %priority33 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call32.sink, ptr %priority33, align 4
  %wmm_acm.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 13
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %13 = ptrtoint ptr %wmm_acm.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %wmm_acm.i, align 2
  %conv54.i = zext i8 %14 to i32
  %shl55.i = shl nuw i32 1, %call32.sink
  %and56.i = and i32 %shl55.i, %conv54.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i)
  %tobool.not57.i = icmp eq i32 %and56.i, 0
  br i1 %tobool.not57.i, label %downgrade.while.end.i_crit_edge, label %while.body.lr.ph.i

downgrade.while.end.i_crit_edge:                  ; preds = %downgrade
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %downgrade
  %tx_tspec.i = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 40, i32 1, i32 2, i32 0, i32 0, i32 4, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %switch.lookup.while.body.i_crit_edge, %while.body.lr.ph.i
  %15 = phi i32 [ %call32.sink, %while.body.lr.ph.i ], [ %switch.load, %switch.lookup.while.body.i_crit_edge ]
  %arrayidx.i = getelementptr [8 x i32], ptr @ieee802_1d_to_ac, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %admitted_time.i = getelementptr [4 x %struct.ieee80211_sta_tx_tspec], ptr %tx_tspec.i, i32 0, i32 %17, i32 1
  %18 = ptrtoint ptr %admitted_time.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %admitted_time.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool3.not.i = icmp eq i32 %19, 0
  br i1 %tobool3.not.i, label %while.body.i.if.end.i_crit_edge, label %land.lhs.true.i

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %up.i = getelementptr [4 x %struct.ieee80211_sta_tx_tspec], ptr %tx_tspec.i, i32 0, i32 %17, i32 3
  %20 = ptrtoint ptr %up.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %up.i, align 1
  %conv7.i = sext i8 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv7.i)
  %cmp.i = icmp eq i32 %15, %conv7.i
  br i1 %cmp.i, label %land.lhs.true.i.ieee80211_downgrade_queue.exit_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i.ieee80211_downgrade_queue.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ieee80211_downgrade_queue.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %while.body.i.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %15)
  %22 = icmp ult i32 %15, 8
  br i1 %22, label %switch.hole_check, label %if.end.i.while.end.i_crit_edge

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

switch.hole_check:                                ; preds = %if.end.i
  %switch.maskindex = trunc i32 %15 to i8
  %switch.shifted = lshr i8 -7, %switch.maskindex
  %23 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %switch.lobit.not = icmp eq i8 %23, 0
  br i1 %switch.lobit.not, label %switch.hole_check.while.end.i_crit_edge, label %switch.lookup

switch.hole_check.while.end.i_crit_edge:          ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.__ieee80211_select_queue, i32 0, i32 %15
  %24 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %24)
  %switch.load = load i32, ptr %switch.gep, align 4
  %25 = ptrtoint ptr %priority.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %switch.load, ptr %priority.i, align 4
  %26 = ptrtoint ptr %wmm_acm.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %wmm_acm.i, align 2
  %conv.i = zext i8 %27 to i32
  %shl.i = shl nuw nsw i32 1, %switch.load
  %and.i = and i32 %shl.i, %conv.i
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %switch.lookup.while.end.i_crit_edge, label %switch.lookup.while.body.i_crit_edge

switch.lookup.while.body.i_crit_edge:             ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

switch.lookup.while.end.i_crit_edge:              ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.end.i:                                      ; preds = %switch.lookup.while.end.i_crit_edge, %switch.hole_check.while.end.i_crit_edge, %if.end.i.while.end.i_crit_edge, %downgrade.while.end.i_crit_edge
  %tobool13.not.i = icmp eq ptr %sta, null
  br i1 %tobool13.not.i, label %while.end.i.if.end25.i_crit_edge, label %land.lhs.true14.i

while.end.i.if.end25.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25.i

land.lhs.true14.i:                                ; preds = %while.end.i
  %reserved_tid.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 45
  %28 = ptrtoint ptr %reserved_tid.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %reserved_tid.i, align 4
  %conv15.i = zext i8 %29 to i32
  %30 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %priority.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %conv15.i)
  %cmp17.i = icmp eq i32 %31, %conv15.i
  br i1 %cmp17.i, label %if.then19.i, label %land.lhs.true14.i.if.end25.i_crit_edge

land.lhs.true14.i.if.end25.i_crit_edge:           ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25.i

if.then19.i:                                      ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %29)
  %32 = icmp ult i8 %29, 8
  br i1 %32, label %switch.lookup54, label %if.then19.i.ieee80211_fix_reserved_tid.exit.i_crit_edge

if.then19.i.ieee80211_fix_reserved_tid.exit.i_crit_edge: ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ieee80211_fix_reserved_tid.exit.i

switch.lookup54:                                  ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #8
  %33 = sext i8 %29 to i32
  %switch.gep55 = getelementptr inbounds [8 x i32], ptr @switch.table.__ieee80211_select_queue.5, i32 0, i32 %33
  %34 = ptrtoint ptr %switch.gep55 to i32
  call void @__asan_load4_noabort(i32 %34)
  %switch.load56 = load i32, ptr %switch.gep55, align 4
  br label %ieee80211_fix_reserved_tid.exit.i

ieee80211_fix_reserved_tid.exit.i:                ; preds = %switch.lookup54, %if.then19.i.ieee80211_fix_reserved_tid.exit.i_crit_edge
  %retval.0.i44.i = phi i32 [ %switch.load56, %switch.lookup54 ], [ 0, %if.then19.i.ieee80211_fix_reserved_tid.exit.i_crit_edge ]
  %35 = ptrtoint ptr %priority.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %retval.0.i44.i, ptr %priority.i, align 4
  br label %if.end25.i

if.end25.i:                                       ; preds = %ieee80211_fix_reserved_tid.exit.i, %land.lhs.true14.i.if.end25.i_crit_edge, %while.end.i.if.end25.i_crit_edge
  %36 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %priority.i, align 4
  %arrayidx27.i = getelementptr [8 x i32], ptr @ieee802_1d_to_ac, i32 0, i32 %37
  %38 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx27.i, align 4
  br label %ieee80211_downgrade_queue.exit

ieee80211_downgrade_queue.exit:                   ; preds = %if.end25.i, %land.lhs.true.i.ieee80211_downgrade_queue.exit_crit_edge
  %retval.2.in.i = phi i32 [ %39, %if.end25.i ], [ %17, %land.lhs.true.i.ieee80211_downgrade_queue.exit_crit_edge ]
  %retval.2.i = trunc i32 %retval.2.in.i to i16
  br label %cleanup

cleanup:                                          ; preds = %ieee80211_downgrade_queue.exit, %if.then10
  %retval.0 = phi i16 [ %retval.2.i, %ieee80211_downgrade_queue.exit ], [ 2, %if.then10 ]
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_classify8021d(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @ieee80211_select_queue(ptr noundef %sdata, ptr noundef %skb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 7
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %ops = getelementptr inbounds %struct.ieee80211_local, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %wake_tx_queue = getelementptr inbounds %struct.ieee80211_ops, ptr %3, i32 0, i32 92
  %4 = ptrtoint ptr %wake_tx_queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wake_tx_queue, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %queues = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %queues to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %queues, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %7)
  %cmp = icmp ult i16 %7, 4
  br i1 %cmp, label %if.end.if.then5_crit_edge, label %lor.lhs.false

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then5

lor.lhs.false:                                    ; preds = %if.end
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %9)
  %cmp3 = icmp ult i32 %9, 6
  br i1 %cmp3, label %lor.lhs.false.if.then5_crit_edge, label %if.end6

lor.lhs.false.if.then5_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then5

if.then5:                                         ; preds = %lor.lhs.false.if.then5_crit_edge, %if.end.if.then5_crit_edge
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %10 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %priority, align 4
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  %11 = tail call i32 @llvm.read_register.i32(metadata !15) #6
  %and.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %14, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !26
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i, label %if.end6.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end6.rcu_read_lock.exit_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end6
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #6
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end6.rcu_read_lock.exit_crit_edge
  %vif = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59
  %15 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vif, align 8
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %16, label %rcu_read_lock.exit.if.end39_crit_edge [
    i32 4, label %sw.bb
    i32 3, label %rcu_read_lock.exit.land.lhs.true33.sink.split_crit_edge
    i32 2, label %sw.epilog
    i32 1, label %rcu_read_lock.exit.land.lhs.true33.sink.split_crit_edge82
  ]

rcu_read_lock.exit.land.lhs.true33.sink.split_crit_edge82: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true33.sink.split

rcu_read_lock.exit.land.lhs.true33.sink.split_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true33.sink.split

rcu_read_lock.exit.if.end39_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

sw.bb:                                            ; preds = %rcu_read_lock.exit
  %sta7 = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 0, i32 1
  %18 = ptrtoint ptr %sta7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %sta7, align 8
  %call = tail call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %land.lhs.true, label %sw.bb.do.end17_crit_edge

sw.bb.do.end17_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17

land.lhs.true:                                    ; preds = %sw.bb
  %call10 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true.do.end17_crit_edge, label %land.lhs.true12

land.lhs.true.do.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17

land.lhs.true12:                                  ; preds = %land.lhs.true
  %.b61 = load i1, ptr @ieee80211_select_queue.__warned, align 1
  br i1 %.b61, label %land.lhs.true12.do.end17_crit_edge, label %if.then14

land.lhs.true12.do.end17_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17

if.then14:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @ieee80211_select_queue.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 200, ptr noundef nonnull @.str.1) #6
  br label %do.end17

do.end17:                                         ; preds = %if.then14, %land.lhs.true12.do.end17_crit_edge, %land.lhs.true.do.end17_crit_edge, %sw.bb.do.end17_crit_edge
  %tobool19.not = icmp eq ptr %19, null
  br i1 %tobool19.not, label %do.end17.land.lhs.true33.sink.split_crit_edge, label %do.end17.if.end39_crit_edge

do.end17.if.end39_crit_edge:                      ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

do.end17.land.lhs.true33.sink.split_crit_edge:    ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true33.sink.split

sw.epilog:                                        ; preds = %rcu_read_lock.exit
  %data24 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %20 = ptrtoint ptr %data24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data24, align 4
  %call25 = tail call ptr @sta_info_get(ptr noundef %sdata, ptr noundef %21) #6
  %tobool26.not = icmp eq ptr %call25, null
  %bssid = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 57, i32 0, i32 25
  br i1 %tobool26.not, label %sw.epilog.land.lhs.true33_crit_edge, label %sw.epilog.if.end39_crit_edge

sw.epilog.if.end39_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

sw.epilog.land.lhs.true33_crit_edge:              ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true33

land.lhs.true33.sink.split:                       ; preds = %do.end17.land.lhs.true33.sink.split_crit_edge, %rcu_read_lock.exit.land.lhs.true33.sink.split_crit_edge, %rcu_read_lock.exit.land.lhs.true33.sink.split_crit_edge82
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  br label %land.lhs.true33

land.lhs.true33:                                  ; preds = %land.lhs.true33.sink.split, %sw.epilog.land.lhs.true33_crit_edge
  %ra.075 = phi ptr [ %bssid, %sw.epilog.land.lhs.true33_crit_edge ], [ %23, %land.lhs.true33.sink.split ]
  %tobool34.not = icmp eq ptr %ra.075, null
  br i1 %tobool34.not, label %land.lhs.true33.if.end39_crit_edge, label %land.lhs.true35

land.lhs.true33.if.end39_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

land.lhs.true35:                                  ; preds = %land.lhs.true33
  %24 = ptrtoint ptr %ra.075 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ra.075, align 4
  %26 = and i32 %25, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.i.not = icmp eq i32 %26, 0
  br i1 %tobool.i.not, label %if.then37, label %land.lhs.true35.if.end39_crit_edge

land.lhs.true35.if.end39_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then37:                                        ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #8
  %call38 = tail call ptr @sta_info_get(ptr noundef %sdata, ptr noundef nonnull %ra.075) #6
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %land.lhs.true35.if.end39_crit_edge, %land.lhs.true33.if.end39_crit_edge, %sw.epilog.if.end39_crit_edge, %do.end17.if.end39_crit_edge, %rcu_read_lock.exit.if.end39_crit_edge
  %sta.2 = phi ptr [ %call25, %sw.epilog.if.end39_crit_edge ], [ null, %land.lhs.true35.if.end39_crit_edge ], [ %call38, %if.then37 ], [ null, %land.lhs.true33.if.end39_crit_edge ], [ %19, %do.end17.if.end39_crit_edge ], [ null, %rcu_read_lock.exit.if.end39_crit_edge ]
  %call40 = tail call zeroext i16 @__ieee80211_select_queue(ptr noundef %sdata, ptr noundef %sta.2, ptr noundef %skb)
  %call.i63 = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i63, label %if.end39.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i66

if.end39.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true.i66:                                ; preds = %if.end39
  %call1.i64 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i64)
  %tobool.not.i65 = icmp eq i32 %call1.i64, 0
  br i1 %tobool.not.i65, label %land.lhs.true.i66.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i68

land.lhs.true.i66.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i66
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true2.i68:                               ; preds = %land.lhs.true.i66
  %.b4.i67 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i67, label %land.lhs.true2.i68.rcu_read_unlock.exit_crit_edge, label %if.then.i69

land.lhs.true2.i68.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i68
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

if.then.i69:                                      ; preds = %land.lhs.true2.i68
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #6
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i69, %land.lhs.true2.i68.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i66.rcu_read_unlock.exit_crit_edge, %if.end39.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !27
  %27 = tail call i32 @llvm.read_register.i32(metadata !15) #6
  %and.i.i.i.i.i70 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i70 to ptr
  %preempt_count.i.i.i.i71 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i71 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i71, align 4
  %sub.i.i.i = add i32 %30, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i71, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ 0, %if.then5 ], [ %call40, %rcu_read_unlock.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sta_info_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ieee80211_set_qos_hdr(ptr nocapture noundef readonly %sdata, ptr nocapture noundef %skb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %2 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %priority, align 4
  %4 = trunc i32 %3 to i8
  %conv = and i8 %4, 7
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %1, align 2
  %7 = and i16 %6, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %7)
  %cmp.i = icmp eq i16 %7, -30720
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = and i16 %6, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %8)
  %cmp.i.i = icmp eq i16 %8, 3
  %retval.0.v.i = select i1 %cmp.i.i, i32 30, i32 24
  %retval.0.i = getelementptr i8, ptr %1, i32 %retval.0.v.i
  %9 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cb.i, align 8
  %and4 = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  %11 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %retval.0.i, align 1
  br i1 %tobool.not, label %if.end12, label %if.then5

if.then5:                                         ; preds = %if.end
  %13 = and i8 %12, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool8.not = icmp eq i8 %13, 0
  br i1 %tobool8.not, label %if.then5.cleanup_crit_edge, label %if.then9

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then9:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %10, 4
  %14 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or, ptr %cb.i, align 8
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %15 = and i8 %12, -112
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr1, align 4
  %18 = and i32 %17, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.i.not = icmp eq i32 %18, 0
  br i1 %tobool.i.not, label %lor.lhs.false, label %if.end12.if.then22_crit_edge

if.end12.if.then22_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then22

lor.lhs.false:                                    ; preds = %if.end12
  %noack_map = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 12
  %19 = ptrtoint ptr %noack_map to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %noack_map, align 4
  %conv18 = zext i16 %20 to i32
  %conv19 = zext i8 %conv to i32
  %shl = shl nuw nsw i32 1, %conv19
  %and20 = and i32 %shl, %conv18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %lor.lhs.false.if.end28_crit_edge, label %lor.lhs.false.if.then22_crit_edge

lor.lhs.false.if.then22_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then22

lor.lhs.false.if.end28_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then22:                                        ; preds = %lor.lhs.false.if.then22_crit_edge, %if.end12.if.then22_crit_edge
  %21 = or i8 %15, 32
  %or27 = or i32 %10, 4
  %22 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or27, ptr %cb.i, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then22, %lor.lhs.false.if.end28_crit_edge
  %flags.0 = phi i8 [ %21, %if.then22 ], [ %15, %lor.lhs.false.if.end28_crit_edge ]
  %or3166 = or i8 %flags.0, %conv
  %23 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %or3166, ptr %retval.0.i, align 1
  %incdec.ptr = getelementptr i8, ptr %retval.0.i, i32 1
  %vif = getelementptr inbounds %struct.ieee80211_sub_if_data, ptr %sdata, i32 0, i32 59
  %24 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %25)
  %cmp.i67 = icmp eq i32 %25, 7
  br i1 %cmp.i67, label %if.then34, label %if.else

if.then34:                                        ; preds = %if.end28
  %26 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %incdec.ptr, align 1
  %28 = and i8 %27, 6
  store i8 %28, ptr %incdec.ptr, align 1
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %1, align 2
  %31 = and i16 %30, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -14336, i16 %31)
  %cmp.i68 = icmp eq i16 %31, -14336
  br i1 %cmp.i68, label %if.then34.cleanup_crit_edge, label %if.then40

if.then34.cleanup_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then40:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  %32 = or i8 %28, 1
  %33 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %incdec.ptr, align 1
  br label %cleanup

if.else:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %incdec.ptr, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then40, %if.then34.cleanup_crit_edge, %if.then9, %if.then5.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
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
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
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

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !11, !12, !14}
!llvm.named.register.sp = !{!15}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @ieee802_1d_to_ac, !1, !"ieee802_1d_to_ac", i1 false, i1 false}
!1 = !{!"../net/mac80211/wme.c", i32 22, i32 11}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../net/mac80211/wme.c", i32 170, i32 12}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../net/mac80211/wme.c", i32 200, i32 9}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = !{!"sp"}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{i8 0, i8 2}
!26 = !{i64 2149592878}
!27 = !{i64 2149593144}
